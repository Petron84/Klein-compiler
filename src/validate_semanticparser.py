from parser import Parser
from DOTGenerator import generate_dot

def validate(program,filename="input.kln"):
	filename = filename + ".dot"
	p = Parser(program)
	AST = p.parse()
	print("Valid Program")
	generate_dot(AST,filename=filename)