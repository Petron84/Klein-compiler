from enum import Enum, auto

class KleinError(Exception):

    def __init__(self,message):
        self.message = message
        super().__init__(self.message)

    def __str__(self):
        return self.message

class AstAction(Enum):
	MakeProgram = auto()
	MakeDefList = auto()
	MakeDef = auto()
	MakeParmlist = auto()
	MakeIDType = auto()
	MakeType = auto()
	MakeExpList = auto()
	MakeArgList = auto()
	MakeNotExp = auto()
	MakeNegExp = auto()
	MakeEqualExp = auto()
	MakeLessExp = auto()
	MakeOrExp = auto()
	MakeAddExp = auto()
	MakeMinusExp = auto()
	MakeMultExp = auto()
	MakeDivExp = auto()
	MakeAndExp = auto()
	MakeIntLit = auto()
	MakeBoolLit = auto()
	MakeFunCall = auto()
	MakeIfExp = auto()
	MakeIdentifier = auto()


def ApplySemantic(action, semantic_stack, token=None):

	node = MakeNode(token,semantic_stack)

	match action:
		case AstAction.MakeProgram:
			node, ast_stack = node.make_program_node()
		case AstAction.MakeDefList:
			node, ast_stack = node.make_defList_node()
		case AstAction.MakeDef:
			node, ast_stack = node.make_def_node()
		case AstAction.MakeParmlist:
			node, ast_stack = node.make_parmList()
		case AstAction.MakeIDType:
			node, ast_stack = node.make_IDtype_node()
		case AstAction.MakeExpList:
			node, ast_stack = node.make_expList_node()
		case AstAction.MakeType:
			node, ast_stack = node.make_type_node()
		case AstAction.MakeArgList:
			node, ast_stack = node.make_argList_node()
		case AstAction.MakeNotExp:
			node.value = "not"
			node, ast_stack = node.make_unExp_node()
		case AstAction.MakeNegExp:
			node.value = "-"
			node, ast_stack = node.make_unExp_node()
		case AstAction.MakeEqualExp:
			node.value = "="
			node, ast_stack = node.make_binExp_node()
		case AstAction.MakeLessExp:
			node.value = "<"
			node, ast_stack = node.make_binExp_node()
		case AstAction.MakeOrExp:
			node.value = "or"
			node, ast_stack = node.make_binExp_node()
		case AstAction.MakeAddExp:
			node.value = "+"
			node, ast_stack = node.make_binExp_node()
		case AstAction.MakeMinusExp:
			node.value = "-"
			node, ast_stack = node.make_binExp_node()
		case AstAction.MakeMultExp:
			node.value = "*"
			node, ast_stack = node.make_binExp_node()
		case AstAction.MakeDivExp:
			node.value = "/"
			node, ast_stack = node.make_binExp_node()
		case AstAction.MakeAndExp:
			node.value = "and"
			node, ast_stack = node.make_binExp_node()
		case AstAction.MakeIntLit:
			node, ast_stack = node.make_intLit_node()
		case AstAction.MakeBoolLit:
			node, ast_stack = node.make_boolLit_node()
		case AstAction.MakeFunCall:
			node, ast_stack = node.make_funCall_node()
		case AstAction.MakeIfExp:
			node, ast_stack = node.make_ifExp_node()
		case AstAction.MakeIdentifier:
			node, ast_stack = node.make_ID_node()

	ast_stack.append(node)
	return ast_stack

class ExpressionNodeTypes:
	# List of valid subclasses of Expression. Useful for collecting argument/expression lists.
	def __init__(self):
		self.types = ["UNARY-EXPRESSION","BINARY-EXPRESSION","INTEGER-LITERAL","BOOLEAN-LITERAL","IDENTIFIER","FUNCTION-CALL","IF-EXPRESSION"]

class MakeNode:

	def __init__(self,value=None,ast_stack=None):
		self.value = value
		self.ast_stack = ast_stack

	def safe_pop(self,node_name,attempted_node):
		try:
			return self.ast_stack.pop()
		except:
			raise KleinError(f'Parse Failed: No valid {attempted_node} child node for the parent {node_name}.')

	def collect_list(self,valid,label):

		expression = []

		while True:
			try:
				expressoin = self.ast_stack[-1].type
			except:
				break
			else:
				# List of valid child nodes
				if expression in valid:
					expressions.append((label,self.ast_stack.pop())) # This does not require a safe pop. Loop would terminate if the top of stack was empty or contained invalid node.
				else:
					break
		return expressions

	def make_program_node(self):
		deflist = self.safe_pop("PROGRAM","DEFINITION-LIST")
		return TreeNode("PROGRAM",children=deflist), self.ast_stack

	def make_defList_node(self):
		definitions = self.safe_pop("DEFINITION-LIST","DEFINITION")
		return TreeNode("DEFINITION-LIST",children=definitions), self.ast_stack

	def make_def_node(self):
		id = self.safe_pop("DEFINITION","IDENTIFIER")
		parmlist = self.safe_pop("DEFINITION","PARAMETER-LIST")
		t = self.safe_pop("DEFINITION","TYPE")
		body = self.safe_pop("DEFINITION","EXPRESSION-LIST")
		return TreeNode("DEFINITION",children=[id,parmlist,t,body]), self.ast_stack

	def make_parmList_node(self):
		parameters = self.collect_list(["ID-TYPE"],"parameter")

		# Parameters could be the empty list []. This is fine. This node is only the child of Definition. Function definitions do not require parameters. For instance: function main():integer
		#																					print("EMPTY FUNCTION")
		#																					0
		return TreeNode("PARAMETER-LIST",children=parameters), self.ast_stack

	def make_IDtype_node(self):
		left = self.safe_pop("ID-TYPE","ID")
		right = self.safe_pop("ID-TYPE","TYPE")
		return TreeNode("ID-TYPE",children=[("id",left),("type",right)]), self.ast_stack

	def make_type_node(self):
		return TreeNode("TYPE",value=self.value), self.ast_stack

	def make_expList_node(self):
		expressions = self.collect_list(ExpressionNodeTypes.types,"body")
		if expressions:
			return TreeNode("EXPRESSION-LIST",children=expressions), self.ast_stack
		else:
			raise KleinError("Parse Failed: The body of a function can not be empty.")

	def make_argList_node(self):
		arguments = self.collect_list(ExpressionNodeTypes.types,"argument")

		# Arguments could be the empty list []. This is fine. This node is only the child of Function Call. Function can be called with empty parameters, i.e. main() or print().
		return TreeNode("ARGUMENT-LIST",children=arguments), self.ast_stack

	def make_unExp_node(self):
		exp = self.safe_pop("UNARY-EXPRESSION","EXPRESSION")
		return TreeNode("UNARY-EXPRESSION",value=self.value,children=[exp]), self.ast_stack

	def make_binExp_node(self):
		left = self.safe_pop("BINARY EXPRESSION", "LEFT-EXPRESSION")
		right = self.safe_pop("BINARY EXPRESSION", "RIGHT-EXPRESSION")
		return TreeNode("BINARY-EXPRESSION",value=self.value,children=[('left',left),("right",right)]), self.ast_stack

	def make_intLit_node(self):
		return TreeNode("INTEGER-LITERAL",value=self.value), self.ast_stack

	def make_boolLit_node(self):
		return TreeNode("BOOLEAN-LITERAL",value=self.value), self.ast_stack

	def make_funCall_node(self):
		left = self.safe_pop("FUNCTION-CALL","IDENTIFIER")
		right = self.safe_pop("FUNCTION-CALL","ARGUMENT LIST")
		return TreeNode("FUNCTION-CALL",children=[("identifier",left),("arguments",right)]), self.ast_stack

	def make_ifExp_node(self):
		test = self.safe_pop("IF-EXPRESSION", "TEST EXPRESSION")
		then = self.safe_pop("IF-EXPRESSION", "THEN EXPRESSION")
		exception = self.safe_pop("IF-EXPRESSION","ELSE EXPRESSION")
		return TreeNode("IF-EXPRESSION",children=[('if',test),('then',then),('else',exception)]), self.ast_stack

	def make_ID_node(self):
		return TreeNode("IDENTIFIER",value=self.value), self.ast_stack


class TreeNode:
	def __init__(self, type, value=None, children=[]):
		self.type = type
		self.value = value
		self.children = children

	def __repr__(self):

		# If node is a parent node, then list the children
		if self.children:

			# If node has children and a value (i.e. binary expression and unary expression), then add the value to the node
			if self.value:
				return f"Tree Node({self.type!r}, {self.value!r}, children={self.children})"

			# If node has children and no values (i.e. expression lists or function calls), then don't include a value in the node
			else:
				return f"Tree Node({self.type!r}, children={self.children})"

		#  If node is singular (i.e. integer literals), then don't create children
		else:
			return f"Tree Node({self.type!r}, {self.value!r})"

