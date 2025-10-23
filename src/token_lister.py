from scanner import Scanner

def list_tokens(content):
	scanner = Scanner(content)
	token_list = []
	while scanner.peek() != ("EOF","$"):
		token = scanner.next()
		line_number = scanner.linenumber
		if token == None:
			continue
		# Statement to end loops if an additional EOF token is produced. Fixes a bug in the scanner.
		if token == ("EOF","$"):
			break
		else:
			token_list.append((token,line_number))
	token_list.append([("EOF","$"),-1])
	return token_list