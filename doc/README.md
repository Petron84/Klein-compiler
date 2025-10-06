Team Name: Kleithon
Team Members: Phat Nguyen, Efrata Tesfaye, Ziad Ouro-Kuora, Dylan Bock

Project Description:
- kleins: script to run the Klein scanner
- scanner.py : Component of the Klein compiler, scans tokens of the Klein program
- token_lister.py: Component of scanner.py. Allows scanner to return a stream of tokens for the parser
- kleinf: script to run the Klein parser
- parser.py: Component of the Klein compiler, parses tokens of Klein programs
- parse_validator.py: Component of parser.py. Checks to see if parser executes successfully
- Bugs: FIXED - Parsetable errors leading to parse fails with production rules involving the term' non-terminal. 
-	NEEDS FIXED - Divide-by-seven.kln is causing a token mismatch
- Features not implemented: Semantic Analyzer.

- Optimizations: token_lister.py as scanner.py extra component.
-		 parse_validator.py as parser.py extra component.
Description of how to build compiler:
- Create a scanner that reads through a Klein program and return a token, with the functions of peek() and next() to read tokens.
The scanner will identify specific tokens allowed in the Klein grammar specification, and ignores/rejects certain illegal characters.
- Create token_lister.py to help the scanner go through a Klein program and return a stream of tokens, this will be used for the parser.
