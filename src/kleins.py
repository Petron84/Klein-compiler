import sys
from token_lister import list_tokens

klein_file = open(sys.argv[1])
content = klein_file.read()

# Scan the content
list_tokens(content)

# PLACE HOLDER FOR PARSER
# PLACE HOLDER FOR SEMANTIC CHECKER
# PLACE HOLDER FOR CODE GENERATOR
