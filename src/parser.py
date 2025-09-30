from tableloader import parsetable

class parse:
        def __init__(self,tokens):
                self.table = parsetable().generate()
                self.in_stream = tokens
                self.stack = []

        # Table Driven Algorithm
        def TDA(self):
                self.stack.append("$")
                self.stack.append("PROGRAM")
                A = self.stack[-1]


test_content = [('KEYWORD', 'function'), ('IDENTIFIER', 'main'), ('PUNCTUATION', '('), ('IDENTIFIER', >
