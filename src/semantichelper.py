from enum import Enum

class AstAction(Enum):
	MakeProgram = 0
	MakeDefList = 1
	MakeDef = 2
	MakeParmlist = 3
	MakeIDType = 4
	MakeIntType = 5
	MakeBoolType = 6
	MakeExpLIst = 7
	MakeUnExp = 8
	MakeBinExp = 9
	MakeIntLit = 10
	MakeBoolLit = 11
	MakeFunCall = 12
	MakeIfExp = 13
	MakeIdentifier = 14


def ApplySemantic(action, token, ast_stack):

	node = MakeNode(token)

	match action:
		case AstAction.MakeProgram:
			node.make_program_node()
		case...

	ast_stack.append(node)
	return ast_stack

class MakeNode:

	def __init__(value=None,ast_stack=[]):
		self.value = value
		self.stack = ast_stack

	def make_program_node():
		deflist = ast_stack.pop()
		return Node("PROGRAM",children=deflist)

	def make_deflist_node(ast_stack):
		definitions = []
		return Node("DEFINITION-LIST",children=definitions)

	def make_def_node(ast_stack):
		pass

	def make_parmlist_node(ast_stack):
		pass

	def make_IDtype_node(ast_stack):
		pass

	def make_intType_node(ast_stack):
		pass

	def make_boolType_node(ast_stack):
		pass

	def make_expList_node(ast_stack):
		pass

	def make_unExp_node(ast_stack):
		pass

	def make_binExp_node(ast_stack):
		pass

	def make_intLit_node(ast_stack):
		return Node("INTEGER-LITERAL",value=self.value)

	def make_boolLit_node(ast_stack):
		pass

	def make_funCall_node(ast_stack):
		pass

	def make_ifExp_node(ast_stack):
		pass

	def make_ID_node(token, ast_stack):


class TreeNode:
	def __init__(self, type, value=None, children=[]):
		self.type = type
		self.value = value
		self.children = children

	def __repr__(self):
		if self.children:
			return f"Node({self.type!r}, {self.value!r},children={self.children})"
		else:
			return f"Node({self.type!r}, {self.value!r})"
