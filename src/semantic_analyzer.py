from parser import Parser
from scanner import KleinError
import sys

class Symbol():
    def __init__(self, name, type = [], parameters=[], function_calls=[], called_by=[]):
        self.name = name
        self.type = type
        self.parameters = parameters
        self.function_calls = function_calls
        self.called_by = called_by
    def __repr__(self):
        return f"\n\tFunction Name: {self.name}, \n\t\tType: {self.type}, \n\t\tParameters: {self.parameters}, \n\t\tFunction Calls: {self.function_calls}, \n\t\tCalled By: {self.called_by}"

class Analyzer():
    def __init__(self, ast):
        self.AST = ast.pop().children.pop().children
        self.primitive = Symbol("print", type=None, parameters={"expression": ["integer","boolean"]})
        self.symbol_table = {"print": self.primitive}
        
    def analyze(self):
        for f_node in self.AST:
            f_def = f_node.children
            f_name = f_def[0].value

            # Illegal case for two functions with same name
            if f_name in self.symbol_table:
                KleinError(f"Semantic Error: Two or more functions have been defined with the name {f_name}.",f_def[0].linenumber)

            self.symbol_table[f_name] = Symbol(f_name)

            num_params = len(f_def[1].children)
            param_list = {}
            for idtype in f_def[1].children:
                params = idtype.children
                p_name = params[0].value

                # Illegal case for two parameters with same name
                if p_name in param_list:
                    KleinError(f"Semantic Error: The function {f_name} has two or more parameters named {p_name}",f_def[0].linenumber)

                param_list[p_name] = params[1].value

            self.symbol_table[f_name].parameters = [num_params,param_list]
            self.symbol_table[f_name].type = f_def[2].value
            body = f_def[3].children
            for expression in body:
                traverser = Traverser(f_name, self.symbol_table, expression.type)
                traverser.traverse(expression.children)
    
class Traverser():
    def __init__(self, f_name, symbol_table, type):
        self.f_name = f_name
        self.symbol_table = symbol_table
        self.exp_type = type

    def traverse(self, children):
        curr_value = children[0].value
        curr_line = children[0].linenumber
        next_children = children[0].children
        
        match self.exp_type:
            case "IF-EXPRESSION":
                node_type = self.children[0].type

                # Illegal case for integer used as boolean check
                if node_type == "INTEGER-LITERAL":
                    KleinError(f"Semantic Error: Condition in if-expression cannot be integer literal", curr_line)

                if_returntype = self.traverse(self, next_children, children[0].type)

                # Illegal case for boolean expression returning an integer
                if if_returntype != "boolean":
                    KleinError(f"Semantic Error: If-clause in if-expression is not a boolean",curr_line)

                then_returntype = self.traverse(self, children[1].children, children[1].type)

                # Illegal case for the then clause containing an invalid return type
                if then_returntype != self.symbol_table[self.f_name].type:
                    KleinError(f"Semantic Error: Then-clause in if-expression has an invalid return type.\nExpected {self.symbol_table[self.f_name].type} but got {then_returntype}", curr_line)
                
                else_returntype = self.traverse(self, children[2].children, children[2].type)

                # Illegal case for the else clause containing an invalid return type
                if else_returntype != self.symbol_table[self.f_name].type:
                    KleinError(f"Semantic Error: Else-clause in if-expression has an invalid return type.\nExpected {self.symbol_table[self.f_name].type} but got {else_returntype}", curr_line)
               
            case "IDENTIFIER":

                # Illegal case where an identifier doesn't exist within the scope of the function

                if self.curr_value not in self.symbol_table[self.f_name].parameters[1]:
                    KleinError(f"Semantic Error: Undeclared identifier '{curr_value}' used in if-expression condition", curr_line)
                return self.symbol_table[self.f_name].parameters[1][curr_value]
            
            case "INTEGER-LITERAL":
                return "integer"
            
            case "BOOLEAN-LITERAL":
                return "boolean"
            
            case "UNARY-EXP":
                exp_returntype = self.traverse(self,next_children,children[0].type)

                # Illegal case for mismatched unary expressions. I.E. '-' used on a boolean operand, or "not" used on an integer operand.
                if (exp_returntype == "integer" and curr_value != "-") or (exp_returntype == "boolean" and curr_value != "not"):
                    KleinError(f"Semantic  Error: operand of unary expression returned an {exp_returntype} type, but operator was {curr_value}",curr_line)
                return exp_returntype
            
            case "BINARY-EXP":
                pass

            case "FUNCTION-CALL":
                pass 
                # Make sure this case adds to symbol table. 
                # If current function is Main() and it calls print()
                # DO: symbol_table[f_name].function_calls.append(print)
                # DO: symbol_table[print].called_by.append(f_name)
        