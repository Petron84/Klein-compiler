from parser import Parser

def validate(program):
	p = Parser(program)
	if p.parse() == None:
		print("Valid Program")
