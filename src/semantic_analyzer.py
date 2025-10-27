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
        return f"Function Name: {self.name}, Type: {self.type}, Parameters: {self.parameters}, Function Calls: {self.function_calls}, Called By: {self.called_by}"

class Analyzer():
    def __init__(self, ast):
        self.AST = ast.pop().children.pop().children
        self.primitive = Symbol("print", type=None, parameters={"expression": ["integer","boolean"]})
        self.symbol_table = {"print": self.primitive}
        
    def analyze(self):
        for f_node in self.AST:
            f_def = f_node.children
            f_name = f_def[0].value
            self.symbol_table[f_name] = Symbol(f_name)

            num_params = len(f_def[1].children)
            param_list = {}
            for idtype in f_def[1].children:
                params = idtype.children
                param_list[params[0].value] = params[1].value
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
        self.type = type

    def traverse(self, children):
        match self.type:
            case "IF-EXPRESSION":
                node_type = self.children[0].type
                if node_type == "INTEGER-LITERAL":
                    KleinError(f"Semantic Error: Condition in if-expression cannot be integer literal", children[0].linenumber)
                if_returntype = self.traverse(self, children[0].children, children[0].type)
                if if_returntype != "boolean":
                    KleinError(f"Semantic Error: If-clause in if-expression is not a boolean",children[0].linenumber)
                then_returntype = self.traverse(self, children[1].children, children[1].type)
                if then_returntype != self.symbol_table[self.f_name].type:
                    KleinError(f"Semantic Error: Then-clause in if-expression has an invalid return type.\nExpected {self.symbol_table[self.f_name].type} but got {then_returntype}", children[0].linenumber)
                else_returntype = self.traverse(self, children[2].children, children[2].type)
                if else_returntype != self.symbol_table[self.f_name].type:
                    KleinError(f"Semantic Error: Else-clause in if-expression has an invalid return type.\nExpected {self.symbol_table[self.f_name].type} but got {else_returntype}", children[0].linenumber)
               
            case "IDENTIFIER":
                if self.children[0].value not in self.symbol_table[self.f_name].parameters[1]:
                    KleinError(f"Semantic Error: Undeclared identifier '{children[0].value}' used in if-expression condition", children[0].linenumber)
                return self.symbol_table[self.f_name].parameters[1][self.children[0].value]