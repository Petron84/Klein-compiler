from parser import Parser
from scanner import KleinError
import sys

class Symbol():
    def __init__(self, name, type = None, parameters=None, function_calls=None, called_by=None):
        self.name = name
        self.type = type if type is not None else []
        self.parameters = parameters if parameters is not None else []
        self.function_calls = function_calls if function_calls is not None else []
        self.called_by = called_by if called_by is not None else []
    def __repr__(self):
        return f"\n\tFunction Name: {self.name}, \n\t\tType: {self.type}, \n\t\tParameters: {self.parameters}, \n\t\tFunction Calls: {self.function_calls}, \n\t\tCalled By: {self.called_by}\n"

class Analyzer():
    def __init__(self, ast):
        self.AST = ast[-1].children[-1].children
        self.primitive = Symbol("print", type=None, parameters=[1,("expression",["integer,boolean"],True)])
        self.symbol_table = {"print": self.primitive}
        self.reject = False
        
    def load_functions(self):
        # Scan top-most layer to retrieve function names and prepare symbol table
        body_nodes = {}
        for f_node in self.AST:
            f_def = f_node.children
            f_name = f_def[0].value

            # Illegal case for two functions with same name
            if f_name in self.symbol_table:
                if f_name == "print":
                    self.reject = True
                    KleinError(f"Semantic Error: The function 'print' has been defined, but this function name is reserved.",f_def[0].linenumber,terminate=False)
                else:
                    self.reject = True
                    KleinError(f"Semantic Error: Two or more functions have been defined with the name {f_name}.",f_def[0].linenumber,terminate=False)

            self.symbol_table[f_name] = Symbol(f_name)
        
        # Illegal case for missing main function
        if "main" not in self.symbol_table.keys():
            self.reject = True
            KleinError(f"Semantic Error: Missing function 'main'", -1, terminate=False)

        function_names = self.symbol_table.keys()
        # Scan top-most layer to populate symbol table parameters and types
        for f_node in self.AST:
            f_def = f_node.children
            f_name = f_def[0].value
            num_params = len(f_def[1].children)
            param_list = []
            p_list = []
            for idtype in f_def[1].children:
                params = idtype.children
                p_name = params[0].value

                # Illegal case for two parameters with same name
                if p_name in p_list:
                    self.reject = True
                    KleinError(f"Semantic Error: The function {f_name} has two or more parameters named {p_name}",f_def[0].linenumber,terminate=False)
                p_list.append(p_name)
                param_list.append((p_name,params[1].value,False))

            self.symbol_table[f_name].parameters = [num_params,param_list]
            self.symbol_table[f_name].type = f_def[2].value
            body_nodes[f_name] = f_def[3].children
        return body_nodes

    def analyze(self):
        body = self.load_functions()
        for f_name, expressionlist in body.items():
            returntype = None
            maxdepth = 0
            contains_print = False
            for expression in expressionlist:
                traverser = Traverser(f_name, self.symbol_table)
                returntype = traverser.traverse(expression,self.symbol_table[f_name].type)
                if expression.type == "FUNCTION-CALL":
                    contains_print = True
                maxdepth = max(traverser.depth,maxdepth)

            if not contains_print and maxdepth <= 2:
                KleinError(f"Semantic Warning: The function {f_name} is redundant.",terminate=False)

            if returntype != self.symbol_table[f_name].type:
                self.reject = True
                KleinError(f'Semantic Error: The function {f_name} returns {returntype}, but expected {self.symbol_table[f_name].type}',terminate=False)
        for f_name, symboldata in self.symbol_table.items():
            
            # Warning for unused function
            if symboldata.called_by == [] and f_name != "main" and f_name != "print":
                KleinError(f'Semantic Warning: The function {f_name} was never called.', terminate=False)

            if symboldata.parameters == []:
                continue
            else:
                # Warning for unused parameter
                if symboldata.parameters[0] == 1:
                    if not symboldata.parameters[1][0][2]:
                         KleinError(f"Semantic Warning: The function {f_name} contains the parameter {p[0]}, but it was never used",terminate=False)
                else:
                    for p in symboldata.parameters[1]:
                        if not p[2]:
                            self.reject = True
                            KleinError(f"Semantic Warning: The function {f_name} contains the parameter {p[0]}, but it was never used",terminate=False)
        if self.reject:
            return "REJECTED: Semantic Analyzer caught 1 or more semantic errors in the program."
        else:
            return self.symbol_table
            
    
class Traverser():
    def __init__(self, f_name, symbol_table):
        self.f_name = f_name
        self.symbol_table = symbol_table
        self.depth = 0

    def check_params(self,param,paramlist):
        for i, p in enumerate(paramlist):
            if param in p:
                temp_params = self.symbol_table[self.f_name].parameters[1][i]
                self.symbol_table[self.f_name].parameters[1][i] = (temp_params[0],temp_params[1],True)
                return p[1]
        return False
    
    def check_only_literal(self,exp):
        # Recursive check to see if binary/unary expressions contain only integer/boolean literals.
        if exp.type in ['INTEGER-LITERAL','BOOLEAN-LITERAL']:
            return True
        if exp.type in ['BINARY-EXPRESSION','UNARY-EXPRESSION']:
            for child in exp.children:
                if not self.check_only_literal(child):
                    return False
            return True
        return False

    def traverse(self, expression, returntype, current_depth = 0):
        self.depth = max(self.depth, current_depth)
        children = expression.children
        curr_line = expression.linenumber
        curr_value = expression.value
        match expression.type:
            case "IF-EXPRESSION":

                # Illegal case for integer used as boolean check
                if children[0].type == "INTEGER-LITERAL":
                    self.reject = True
                    KleinError(f"Semantic Error: Condition in if-expression cannot be an integer literal", curr_line,terminate=False)
                
                elif children[0].type == "BOOLEAN-LITERAL":
                    # Warnings for if expressions that can't reach one of the clauses
                    if curr_value == "true":
                        KleinError(f"Semantic Warning: The function {self.f_name} contains an if expression that will never reach an else clause",curr_line,terminate=False)
                    else:
                        KleinError(f"Semantic Warning: The function{self.f_name} contains an if expression that will never reach the then clause",curr_line,terminate=False)
                
                elif children[0].type == "BINARY-EXPRESSION":
                    onlyliteral = self.check_only_literal(children[0])
                    if onlyliteral:
                        # Warnings for if expressions that one of the clauses won't be reached due to hardcoded values
                        KleinError(f"Semantic Warning: The function {self.f_name} contains an if expression containing no parameters or function calls.\n\t\t\t\tWatch out for hardcoded values. The then-clause or else-clause may never be reached.",curr_line,terminate=False)
                        
                if_returntype = self.traverse(children[0],"boolean",current_depth + 1)

                # Illegal case for boolean expression returning an integer
                if if_returntype != "boolean":
                    self.reject = True
                    KleinError(f"Semantic Error: If-clause in if-expression doesn't return a boolean",curr_line,terminate=False)
                then_returntype = self.traverse(children[1],returntype,current_depth+1)

                # Illegal case for the then clause containing an invalid return type
                if isinstance(returntype,list):
                    if then_returntype not in returntype:
                        self.reject = True
                        KleinError(f"Semantic Error: Then-clause in if-expression has an invalid return type.\n\t\t\t\tExpected {returntype} but got {then_returntype}", curr_line, terminate=False)
                elif then_returntype != returntype:
                    self.reject = True
                    KleinError(f"Semantic Error: Then-clause in if-expression has an invalid return type.\n\t\t\t\tExpected {returntype} but got {then_returntype}", curr_line, terminate=False)

                else_returntype = self.traverse(children[2],returntype,current_depth+1)
                
                # Illegal case for the else clause containing an invalid return type
                if isinstance(returntype,list):
                    if else_returntype not in returntype:
                        self.reject = True
                        KleinError(f"Semantic Error: Then-clause in if-expression has an invalid return type.\n\t\t\t\tExpected {returntype} but got {else_returntype}", curr_line, terminate=False)
                elif else_returntype != returntype:
                    self.reject = True
                    KleinError(f"Semantic Error: Else-clause in if-expression has an invalid return type.\n\t\t\t\tExpected {returntype} but got {else_returntype}", curr_line,terminate=False)
                
                return else_returntype
               
            case "IDENTIFIER":
                # Illegal case for when an identifier exists outside scope of the function and is not a function name.
                found_type = self.check_params(curr_value,self.symbol_table[self.f_name].parameters[1])
                found_function = curr_value in self.symbol_table.keys()

                if not found_type and found_function:
                    return curr_value
                elif found_type and not found_function:
                    return found_type
                elif found_type and found_function:
                    if expression.label == "function": # Additional check: If the identifier is both a parameter and a valid function, check to see if it is a function identifier or terminal identifier
                        return curr_value
                    else:
                        return found_type
                else:
                    # Illegal case for parameter being used that has not been defined as a function or as a parameter of the parent function
                    self.reject = True
                    KleinError(f"Semantic Error: The identifier {curr_value} exists outside the scope of the current function {self.f_name} and is not a valid function name",curr_line,terminate=False)

            case "INTEGER-LITERAL":
                return "integer"
            
            case "BOOLEAN-LITERAL":
                return "boolean"
            
            case "UNARY-EXPRESSION":
                exp_returntype = self.traverse(children[0],returntype,current_depth+1)

                # Illegal case for mismatched unary expressions. I.E. '-' used on a boolean operand, or "not" used on an integer operand.
                if exp_returntype == "integer" and curr_value == "-":
                    return "integer"
                elif exp_returntype == "boolean" and curr_value == "not":
                    return "boolean"
                else:
                    self.reject = True
                    KleinError(f"Semantic  Error: operand of unary expression returned an {exp_returntype} type, but operator was {curr_value}",curr_line, terminate=False)
                return exp_returntype
            
            case "BINARY-EXPRESSION":
                left_returntype = self.traverse(children[0],returntype,current_depth+1)
                right_returntype = self.traverse(children[1],returntype,current_depth+1)
                boolean_legal = ["and","or"]
                int_comparisons = ['<','=']
                # Illegal case for operands having mismatched return types
                if left_returntype == right_returntype:
                    # Illegal cases for illegal operators for the operands
                    if left_returntype == "integer":
                        if curr_value in boolean_legal:
                            self.reject = True
                            KleinError(f"Semantic Error: Operands of binary expression returned integer types, but operator was {curr_value}", curr_line, terminate=False)
                        elif curr_value in int_comparisons:
                            return "boolean"
                        else:
                            return "integer"
                    elif left_returntype == "boolean":
                        if curr_value not in boolean_legal:
                            self.reject = True
                            KleinError(f"Semantic Error: Operands of binary expression returned boolean types, but operator was {curr_value}", curr_line, terminate=False)
                        else:
                            return "boolean"
                else:
                    self.reject = True
                    KleinError(f"Semantic Error: Operands returned different types. Operands must be both boolean or both integer.", curr_line, terminate=False)

            case "FUNCTION-CALL":
                nested_function = self.traverse(children[0],returntype,current_depth+1)

                if nested_function in self.symbol_table.keys():
                    self.symbol_table[self.f_name].function_calls.append(nested_function)
                    self.symbol_table[nested_function].called_by.append(self.f_name)

                # Illegal case function missing an argument list - exception for print, which does not have an argument list
                if children[1].type != "ARGUMENT-LIST" and nested_function != "print":
                    self.reject = True
                    KleinError(f"Semantic Error: Function call expected Argument List but got {children[1].type}",curr_line,terminate=False)

                if nested_function == "print":
                    nested_body = [self.traverse(children[1], ['integer','boolean'],current_depth+1)]
                else:
                     # Check if function is recursive
                    if nested_function == self.f_name:
                        recursive = True
                    else:
                        recursive = False
                    nested_body = self.traverse(children[1],returntype,current_depth+1)

                if nested_function in self.symbol_table.keys():
                    f_params = self.symbol_table[nested_function].parameters

                    recursive_match = []
                    # Warning for possible infinite recursion
                    if nested_function != "print" and recursive:
                        for arg in children[1].children:
                            match_found = False
                            for p in f_params[1]:
                                if arg.value in p:
                                    match_found = True
                            if match_found:
                                recursive_match.append(True)
                            else:
                                recursive_match.append(False)
                        if all(recursive_match):
                            KleinError(f"Semantic Warning: Possible infinite recursion detected. The function {nested_function} called {self.f_name} without any parameter changes",curr_line,terminate=False)

                    # Illegal case for function call passing more parameters than defined
                    if len(nested_body) != f_params[0]:
                        self.reject = True
                        KleinError(f"Semantic Error: The function {nested_function} requires {f_params[0]} parameters, but was called by {self.f_name} with {len(nested_body)} parameters", curr_line, terminate=False)
                    else:
                        expected = f_params[1]
                        for i, p in enumerate(nested_body):
                            if nested_function == "print":
                                # Illegal case for print functions containing an expression that doesn't return an integer or boolean
                                if p not in ["integer","boolean"]:
                                    self.reject = True
                                    KleinError(f"Semantic Error: Print function requires a single expression that returns either an integer or boolean, but got {p}",curr_line,terminate=False)
                            # Illegal case for functions passing parameters with the wrong types
                            elif expected[i][1] != p:
                                self.reject = True
                                KleinError(f"Semantic Error: The function {nested_function} was given {p} for the parameter {expected[i][0]}.\n\t\t\t\tExpected {expected[i][1]}",curr_line,terminate=False)
                    return self.symbol_table[nested_function].type
                else:
                    return returntype
                
            case "ARGUMENT-LIST":
                arguments = []
                allowed = ['integer','boolean']
                for arg in children:
                    arg_type = self.traverse(arg,returntype,current_depth+1)
                    # Illegal case for arguments that are not integer or boolean (primarily used to raise errors when given Nonetypes)
                    if arg_type not in allowed:
                        self.reject = True
                        KleinError(f"Semantic Error: Argument list expects integer or boolean values, but got {arg_type}",curr_line,terminate=False)
                    arguments.append(arg_type)
                return arguments
                

