
from tableloader import parsetable
from scanner import KleinError
from token_lister import list_tokens

class KleinError(Exception):

    def __init__(self,message):
        self.message = message
        super().__init__(self.message)

    def __str__(self):
        return self.message


class Parser:
	def __init__(self,text):

		# Parse Table is initiated as M
		self.M = parsetable().generate()

		# Input stream from scanner
		self.in_stream = list_tokens(text)

		# Initialize stack
		self.stack = []

		# Nonterminals
		self.nonterminals = self.M.index.tolist()

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
		token_type, token = self.in_stream[0]

		while A != "$":
			# If nonterminal
			if A.upper() in self.nonterminals:
				tablerow = self.M.loc[A.upper()]

				# If token is an unique type, then look for rules matching this type rather than the identifier token value.
				# I.E. Map the entry M[A,"BOOL-LIT"] instead of M[A,"true"].

				if token_type in self.special_cases:
					rule = tablerow.loc[token_type.lower()]

				else:
					rule = tablerow.loc[token]

				# If no production rule is found
				if rule == 0:
					raise KleinError(f'Parsing failed: No production rule found for token "{token}" and the non-terminal "{A}".\n Next token in queue is: {self.in_stream[1]}.')

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
					token_type, token = self.in_stream[0]
				else:
					raise KleinError(f'Token mismatch: Parser found "{A}" but "{token}" was next in stream.\n Next token in queue is: {self.in_stream[1]}.')

			# Assign A as top of current stack
			A = self.stack[-1]

