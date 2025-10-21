from parser_without_semantics import Parser

def validate(program):
	p = Parser(program)
	if p.parse() == None:
		print("Valid Program")
