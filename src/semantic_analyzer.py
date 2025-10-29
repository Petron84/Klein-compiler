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
        self.AST = ast.pop().children.pop().children
        self.primitive = Symbol("print", type=None, parameters={"expression": ["integer","boolean"]})
        self.symbol_table = {"print": self.primitive}
        
    def load_functions(self):
        # Scan top-most layer to retrieve function names and prepare symbol table
        body_nodes = {}
        for f_node in self.AST:
            f_def = f_node.children
            f_name = f_def[0].value

            # Illegal case for two functions with same name
            if f_name in self.symbol_table:
                KleinError(f"Semantic Error: Two or more functions have been defined with the name {f_name}.",f_def[0].linenumber,terminate=False)

            self.symbol_table[f_name] = Symbol(f_name)

        function_names = self.symbol_table.keys()
        # Scan top-most layer to populate symbol table parameters and types
        for f_node in self.AST:
            f_def = f_node.children
            f_name = f_def[0].value
            num_params = len(f_def[1].children)
            param_list = {}
            for idtype in f_def[1].children:
                params = idtype.children
                p_name = params[0].value

                # Illegal case for two parameters with same name
                if p_name in param_list:
                    KleinError(f"Semantic Error: The function {f_name} has two or more parameters named {p_name}",f_def[0].linenumber,terminate=False)

                # Illegal case for a parameter sharing a name with a function
                elif p_name in function_names:
                    KleinError(f"Semantic Error: The function {f_name} contains a parameter {p_name} that shares a name with an existing function.", f_def[0].linenumber,terminate=False)

                param_list[p_name] = params[1].value

            self.symbol_table[f_name].parameters = [num_params,param_list]
            self.symbol_table[f_name].type = f_def[2].value
            body_nodes[f_name] = f_def[3].children
        return body_nodes

    def analyze(self):
        body = self.load_functions()
        for f_name, expression in body.items():
            traverser = Traverser(f_name, self.symbol_table)
            traverser.traverse(expression.pop())
    
class Traverser():
    def __init__(self, f_name, symbol_table):
        self.f_name = f_name
        self.symbol_table = symbol_table

    def traverse(self, expression):
        print("NEXT CASE\n")
        print(expression)
        children = expression.children
        curr_line = expression.linenumber
        curr_value = expression.value
        print()
        print('children',children)
        print('value',curr_value)
        match expression.type:
            case "IF-EXPRESSION":

                # Illegal case for integer used as boolean check
                if expression.type == "INTEGER-LITERAL":
                    KleinError(f"Semantic Error: Condition in if-expression cannot be an integer literal", curr_line,terminate=False)

                if_returntype = self.traverse(children[0])

                # Illegal case for boolean expression returning an integer
                if if_returntype != "boolean":
                    KleinError(f"Semantic Error: If-clause in if-expression doesn't return a boolean",curr_line,terminate=False)
                then_returntype = self.traverse(children[1])

                # Illegal case for the then clause containing an invalid return type
                if then_returntype != self.symbol_table[self.f_name].type:
                    KleinError(f"Semantic Error: Then-clause in if-expression has an invalid return type.\n\t\tExpected {self.symbol_table[self.f_name].type} but got {then_returntype}", curr_line, terminate=False)

                else_returntype = self.traverse(children[2])

                # Illegal case for the else clause containing an invalid return type
                if else_returntype != self.symbol_table[self.f_name].type:
                    KleinError(f"Semantic Error: Else-clause in if-expression has an invalid return type.\n\t\tExpected {self.symbol_table[self.f_name].type} but got {else_returntype}", curr_line,terminate=False)
               
            case "IDENTIFIER":

                # If identifier is function name
                if curr_value in self.symbol_table.keys():
                    return curr_value
                
                # Illegal case where an identifier doesn't exist within the scope of the function
                elif curr_value in self.symbol_table[self.f_name].parameters[1]:
                    return self.symbol_table[self.f_name].parameters[1][curr_value]
                else:
                    KleinError(f"Semantic Error: Undeclared identifier '{curr_value}' used in if-expression condition", curr_line,terminate=False)
            
            case "INTEGER-LITERAL":
                return "integer"
            
            case "BOOLEAN-LITERAL":
                return "boolean"
            
            case "UNARY-EXPRESSION":
                exp_returntype = self.traverse(children[0])

                # Illegal case for mismatched unary expressions. I.E. '-' used on a boolean operand, or "not" used on an integer operand.
                if exp_returntype == "integer" and curr_value == "-":
                    return "integer"
                elif exp_returntype == "boolean" and curr_value == "not":
                    return "boolean"
                else:
                    KleinError(f"Semantic  Error: operand of unary expression returned an {exp_returntype} type, but operator was {curr_value}",curr_line, terminate=False)
                return exp_returntype
            
            case "BINARY-EXPRESSION":
                left_returntype = self.traverse(children[0])
                right_returntype = self.traverse(children[1])
                boolean_legal = ["and","or"]
                int_comparisons = ['<','=']

                # Illegal cases
                if left_returntype == right_returntype:

                    # Illegal cases for illegal operators for the operands
                    if left_returntype == "integer" and curr_value in int_comparisons:
                        if curr_value in boolean_legal:
                            KleinError(f"Semantic Error: Operands of binary expression returned integer types, but operator was {curr_value}", curr_line, terminate=False)
                        elif curr_value in int_comparisons:
                            return "boolean"
                        else:
                            return "integer"
                    elif left_returntype == "boolean":
                        if curr_value not in boolean_legal:
                            KleinError(f"Semantic Error: Operands of binary expression returned boolean types, but operator was {curr_value}", curr_line, terminate=False)
                        else:
                            return "boolean"
                else:
                    KleinError(f"Semantic Error: Operands returned different types. Operands must be both boolean or both integer.", curr_line, terminate=False)

            case "FUNCTION-CALL":
                nested_function = self.traverse(children[0])
                self.symbol_table[self.f_name].function_calls.append(nested_function)
                self.symbol_table[nested_function].called_by.append(self.f_name)
                nested_body = self.traverse(children[1])
        