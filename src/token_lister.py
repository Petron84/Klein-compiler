from scanner import Scanner

def list_tokens(content):
    scanner = Scanner(content)
    while scanner.peek() != ("EOF",""):
        print(scanner.next())

    print(scanner.next())


