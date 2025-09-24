Team Name: Kleithon
Team Members: Phat Nguyen, Efrata Tesfaye, Ziad Ouro-Kuora, Dylan Bock

Project Description:
- kleins.py: main program to run the Klein compiler
- scanner.py : Component of the Klein compiler, scans tokens of the Klein program
- token_lister.py: Component of scanner.py. Allows scanner to return a stream of tokens for the parser

- Bugs: Not found yet

- Features not implemented: Parser, Semantic Analyzer.

- Optimizations: token_lister.py as scanner.py extra component.

Description of how to build compiler:
- Create a scanner that reads through a Klein program and return a token, with the functions of peek() and next() to read tokens.
The scanner will identify specific tokens allowed in the Klein grammar specification, and ignores/rejects certain illegal characters.
- Create token_lister.py to help the scanner go through a Klein program and return a stream of tokens, this will be used for the parser.
