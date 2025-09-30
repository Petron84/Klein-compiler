from scanner import Scanner

def list_tokens(content):
    scanner = Scanner(content)
    token_list = []
    while scanner.peek() != ("EOF","$"):
        token_list.append(scanner.next())
    token_list.append(("EOF","$"))
    return token_list

