from table_without_semantics import parsetable
from token_lister import list_tokens
from scanner import KleinError

class Parser:
	def __init__(self,text):

		# Parse Table is initiated as M
		self.M = parsetable()

		# Input stream from scanner (token, line_number))
		self.in_stream = list_tokens(text)

		# Initialize stack
		self.stack = []

		# Nonterminals
		self.nonterminals = self.M.keys()

		# Special cases
		self.special_cases = ["IDENTIFIER","INT-LIT","BOOL-LIT"]

	# Table Driven Algorithm
	def parse(self):
		# End of stream token
		self.stack.append("$")

		# Start token
		self.stack.append("program")

		# Top of stack
		A = self.stack[-1]

		# Current token in input stream
		token_type, token = self.in_stream[0][0]
		linenumber = self.in_stream[0][1]

		while A != "$":

			if A.upper() in self.nonterminals:
				tablerow = self.M[A.upper()]

				# If token is an unique type, then look for rules matching this type rather than the identifier token value.
				# I.E. Map the entry M[A,"BOOL-LIT"] instead of M[A,"true"].

				if token_type in self.special_cases:
					token_key = token_type.lower()
				else:
					token_key = token
				try:
					if token == "print":
						rule = tablerow['print']
					else:
						rule = tablerow[token_key]

				# If no production rule is found
				except:
					if token_key not in tablerow:
						if any("ε" in r for r in tablerow.values()):
							self.stack.pop()
						else:
							KleinError(f'Parsing failed: No production rule found for token "{token}" and the non-terminal "{A}".\n\t\t Next token in queue is: {self.in_stream[1][0][1]}.',linenumber)
					else:
						KleinError(f'Parsing failed: No production rule found for token "{token}" and the non-terminal "{A}".\n\t\t Next token in queue is: {self.in_stream[1][0][1]}.',linenumber)

				# If production rule is found
				else:
					self.stack.pop()

					# Remove the assignment from the rule
					production = rule.split(':=',1)[1].strip().split()

					# Push production rule onto stack, in reverse
					for p in reversed(production):
						symbol = p.strip()
						if symbol != "ε":
							self.stack.append(symbol)

			# If terminal: Remove top of stack, consume the token, iterate to next token
			else:
				# Check is tokens match. If the current production is an identifier, then make sure both tokens are identifiers instead.
				if (token_type.upper() == A.upper()) or (A == token):
					self.stack.pop()
					self.in_stream.pop(0)
					token_type, token = self.in_stream[0][0]
					linenumber = self.in_stream[0][1]
				else:
					KleinError(f'Token mismatch: Parser found "{A}" but "{token}" was next in stream.\n\t\t Next token in queue is: {self.in_stream[1][0][1]}.',linenumber)

			# Assign A as top of current stack
			A = self.stack[-1]
