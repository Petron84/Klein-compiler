class Scanner:
    def __init__(self, text: str):
        self.keywords = ["integer", "boolean", "if", "then", "else", "and", "or", "not",
            "true", "false", "function", "print"]
        self.symbols = symbols = ["+", "-", "*", "/", "=", "<", "(", ")", ":", ",", "(*", "*)"]
        self.skips = ["\n", "\t", "\r", " "]
        self.integer_literals = "0 1 2 3 4 5 6 7 8 9".split()
        self.text = text
        self.pos = 0
        self.current_token = None

    def _skip_whitespace(self):
        while self.pos < len(self.text) and self.text[self.pos] in self.skips:
            self.pos += 1

    def _get_next_token(self):

        self._skip_whitespace()

        if self.pos >= len(self.text):
            return ("EOF", "")

        ch = self.text[self.pos]
        accumulate = ""

        # Identifier or keyword
        if ch.isalpha():
            while self.pos < len(self.text) and (self.text[self.pos].isalnum() or self.text[self.pos] == "_"):
                accumulate += self.text[self.pos]
                self.pos += 1
            if accumulate in self.keywords:
                return ("KEYWORD", accumulate)
            else:
                # length limit of 256
                if len(accumulate) > 256:
                    return ("REJECT", accumulate)
                return ("IDENTIFIER", accumulate)

        # Integer literal
        elif ch in self.integer_literals:
            while self.pos < len(self.text) and self.text[self.pos].isdigit():
                accumulate += self.text[self.pos]
                self.pos += 1

            # accounting in illegal floats (3.14, 20.)
            if self.pos < len(self.text):
                if self.text[self.pos] == ".":
                    accumulate += self.text[self.pos]
                    self.pos += 1
                    while self.pos < len(self.text) and self.text[self.pos].isdigit():
                        accumulate += self.text[self.pos]
                        self.pos += 1
                    return ("REJECT", accumulate)
                
            # Reject leading zero integers
            if accumulate[0] == '0' and len(accumulate) > 1:
                return ("REJECT", accumulate)
            
            else:
                # Reject numbers greater than 2^31 - 1
                if int(accumulate) >= 2**31:
                    return ("REJECT", accumulate)
                
                # Passed all cases, return
                return ("INTEGER_LITERAL", accumulate)

        # Symbol    
        elif ch in self.symbols:
            # Case of '(' or '(*'
            if ch == "(":

                # '(*' case
                if ((self.pos + 1) < len(self.text)) and (self.text[self.pos + 1] == "*"):
                    while self.pos < len(self.text) and not(self.text[self.pos] == "*" and self.text[self.pos + 1] == ")"):
                        self.pos += 1
                    self.pos += 2
                
                # '(' case
                else:
                    self.pos += 1
                    return ("SYMBOL", ch)
            
            # All other cases
            else:
                self.pos += 1
                return ("SYMBOL", ch)

        # Unknown character
        else:
            self.pos += 1
            return ("REJECT", ch)

    def peek(self):
        # Return next token without consuming it.
        if self.current_token is None:
            self.current_token = self._get_next_token()
        return self.current_token

    def next(self):
        # Consume and return next token.
        if self.current_token is not None:
            tok = self.current_token
            self.current_token = None
            return tok
        else:
            return self._get_next_token()

