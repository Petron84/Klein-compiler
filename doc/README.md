Team Name: Kleithon

Team Members: Phat Nguyen, Efrata Tesfaye, Ziad Ouro-Kuora, Dylan Bock

Project Description:
This project implements a compiler for Klein programs. It is designed to process source code from the Klein language by scanning it into tokens, parsing it against grammar rules, and preparing it for execution or further compilation.

Implemented Files
- kleins.py: main program to run the Klein compiler.
- scanner.py : Component of the Klein compiler, reads source code and produces tokens.
- token_lister.py: Component of scanner.py. Iterates through entire program and allows scanner to return a stream of tokens for the parser.
- parser.py : implements the initial stages of a table-driven parser. Loads the grammar's parsing table and checks token sequences for correct syntax.
- tableloader.py : Loads the parse table from doc/parsetable.xlsx and prepares it for use by the parser.
- tests/ – contains test programs separated into legal-cases (programs expected to pass) and fail-cases (programs expected to fail).
- submission/project01.zip – This zip file includes all the files submitted for the project: kleins.py, scanner.py, token_lister.py, klein_recursive_factorial.kln, and test_cases.kln.

Bugs
- No critial bugs found yet at this stage

Features not implemented:
- Full parser: framework exists, but full logic has not yet been fully implemented.
- Semantic Analyzer

Optimizations
- token_lister.py as scanner.py extra component.


Description of how to build compiler:

- Implement the Scanner
     - Create a scanner that reads through a Klein program and return a token, 
     - Function peek() views the next token without consuming it, and function next() coext token. 
     - The scanner will identify specific tokens allowed in the Klein grammar specification, including keywords, identifiers, integer literals, operators, symbols, and comments, and ignores/rejects certain illegal characters.
     - Skip whitespace and other skippable characters (\n, \t, \r, spaces, (\*comments*)).
     - Raise errors for illegal characters, invalid floats, leading zeros in integers, identifiers exceeding 256 characters, negative integers, or integers exceeding the maximum range (2^31 - 1).

- Create token_lister.py 
     - This will help the scanner go through a Klein program and return a stream of tokens. - Token stream will be used as input for the parser.

- Implement parser.py framework
     - Start with the initial stages of a table-driven parser. Use a parse table to check token sequences against Klein grammar rules and identify any syntax errors.

- Implement tableloader.py
     - Load the parse table from doc/parsetable.xlsx and set up rules so the parser can correctly follow the grammar description.

- Testing the compiler
     - Make sure legal Klein programs (tests/legal-cases/)are scanned and parsed correctly.
     - Confirm that illegal Klein programs (tests/fail-cases/) raise the appropriate errors.
