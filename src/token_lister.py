from scanner import Scanner

def list_tokens(content):
	scanner = Scanner(content)
	token_list = []
	while scanner.peek() != ("EOF","$"):
		token = scanner.next()

		if token == None:
			continue
		# Statement to end loops if an additional EOF token is produced. Fixes a bug in the scanner.
		if token == ("EOF","$"):
			break
		else:
			token_list.append(token)
	token_list.append(("EOF","$"))
	return token_list

