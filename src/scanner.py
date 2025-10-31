import sys
def KleinError(message,linenumber=-1,terminate=True):
    print(f'\n\tKlein Error at line number {linenumber}: \n\t\t{message}')
    if terminate:
        sys.exit()    
        
class Scanner:
    try:
        def __init__(self, text: str):
            self.keywords = ["integer", "boolean", "if", "then", "else", "and", "or", "not", "function"]
            self.operators = ["+","-","*","/","<","="]
            self.punctuation = ["(",")",",",":"]
            self.skips = ["\n", "\t", "\r", " "]
            self.linenumber = 1
            self.integer_literals = "0 1 2 3 4 5 6 7 8 9".split()
            self.boolean_literals = ["true","false"]
            self.text = text
            self.pos = 0
            self.current_token = None
    except:
        print("Klein Error: Scanner failed to initialize")
        sys.exit()

    def _skip_whitespace(self):
        try:
            while self.pos < len(self.text) and self.text[self.pos] in self.skips:
                if self.text[self.pos] == "\n":
                    self.linenumber += 1
                self.pos += 1
        except:
            print("Klein Error: Error occured while skipping whitespace at line number",self.linenumber)
            sys.exit()

    def _get_next_token(self):
        try:
            self._skip_whitespace()

            if self.pos >= len(self.text):
                return ("EOF", "$")

            ch = self.text[self.pos]
            accumulate = ""

            # Identifier, keyword, or boolean literal
            if ch.isalpha():
                while self.pos < len(self.text) and (self.text[self.pos].isalnum() or self.text[self.pos] == "_"):
                    accumulate += self.text[self.pos]
                    self.pos += 1
                if accumulate in self.keywords:
                    return ("KEYWORD", accumulate)
                elif accumulate in self.boolean_literals:
                    return ("BOOL-LIT",accumulate)
                else:
                    # length limit of 256
                    if len(accumulate) > 256:
                        KleinError(f"Identifier exceeded length limit of 256: {accumulate}",self.linenumber)
                    return ("IDENTIFIER", accumulate)

            # Integer literal
            elif ch in self.integer_literals:
                while self.pos < len(self.text) and self.text[self.pos].isdigit():
                    accumulate += self.text[self.pos]
                    self.pos += 1

                # Reject character following integer
                if self.text[self.pos].isalpha():
                    KleinError(f"Illegal text following int: {self.text[self.pos]}",self.linenumber)
                
                # accounting in illegal floats (3.14, 20.)
                if self.pos < len(self.text):
                    if self.text[self.pos] == ".":
                        accumulate += self.text[self.pos]
                        self.pos += 1
                        while self.pos < len(self.text) and self.text[self.pos].isdigit():
                            accumulate += self.text[self.pos]
                            self.pos += 1
                        KleinError(f"Illegal float: {accumulate}",self.linenumber)
                    
                # Reject leading zero integers
                if accumulate[0] == '0' and len(accumulate) > 1:
                    KleinError(f"Illegal leading zero int: {accumulate}",self.linenumber)

                else:
                    # Reject numbers greater than 2^31 - 1
                    if int(accumulate) >= 2**31:
                        KleinError(f"Integer greater than 2^31 - 1: {accumulate}",self.linenumber)
                    
                    # Passed all cases, return
                    return ("INT-LIT", accumulate)

            # Punctuation    
            elif ch in self.punctuation:
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
                        return ("PUNCTUATION", ch)

                # All other cases
                else:
                    self.pos += 1
                    return ("PUNCTUATION", ch)

            elif ch in self.operators:
                self.pos += 1
                return ("OPERATOR",ch)
            
            # Unknown character
            else:
                self.pos += 1
                KleinError(f"Unknown token: {ch}",self.linenumber)
        except:
            print("Klein Error: Scanner failed to get next token at line number",self.linenumber)
            sys.exit()

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