from parser import Parser
from AST_Creator import TreeNode
from DOTGenerator import generate_dot

def validate(program):
	p = Parser(program)
	AST = p.parse()
	print("Valid Program")
	generate_dot(AST)

