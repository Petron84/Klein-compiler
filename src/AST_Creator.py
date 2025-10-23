from scanner import KleinError

class AstAction:
	def __init__(self):
		self.valid_actions = ["MakeProgram","MakeDefList",'MakeDef','MakeParmList','MakeIDType','MakeType','MakeExpList','MakeArgList',
					'MakeNotExp','MakeNegExp','MakeEqualExp','MakeLessExp','MakeOrExp','MakeAddExp','MakeMinusExp','MakeMultExp','MakeDivExp','MakeAndExp',
					'MakeIntLit','MakeBoolLit','MakeFunCall','MakeIfExp','MakeIdentifier','MakeFunID']

	def ApplySemantic(action, semantic_stack):
		node = MakeNode(semantic_stack)

		match action:
			case "MakeProgram":
				node, ast_stack = node.make_program_node()
			case "MakeDefList":
				node, ast_stack = node.make_defList_node()
			case "MakeDef":
				node, ast_stack = node.make_def_node()
			case "MakeParmList":
				node, ast_stack = node.make_parmList_node()
			case "MakeIDType":
				node, ast_stack = node.make_IDtype_node()
			case "MakeType":
				node, ast_stack = node.make_type_node()
			case "MakeArgList":
				node, ast_stack = node.make_argList_node()
			case "MakeNotExp":
				node.operator = "not"
				node, ast_stack = node.make_unExp_node()
			case "MakeNegExp":
				node.operator = "-"
				node, ast_stack = node.make_unExp_node()
			case "MakeEqualExp":
				node.operator = "="
				node, ast_stack = node.make_binExp_node()
			case "MakeLessExp":
				node.operator = "<"
				node, ast_stack = node.make_binExp_node()
			case "MakeOrExp":
				node.operator = "or"
				node, ast_stack = node.make_binExp_node()
			case "MakeAddExp":
				node.operator = "+"
				node, ast_stack = node.make_binExp_node()
			case "MakeMinusExp":
				node.operator = "-"
				node, ast_stack = node.make_binExp_node()
			case "MakeMultExp":
				node.operator = "*"
				node, ast_stack = node.make_binExp_node()
			case "MakeDivExp":
				node.operator = "/"
				node, ast_stack = node.make_binExp_node()
			case "MakeAndExp":
				node.operator = "and"
				node, ast_stack = node.make_binExp_node()
			case "MakeIntLit":
				node, ast_stack = node.make_intLit_node()
			case "MakeBoolLit":
				node, ast_stack = node.make_boolLit_node()
			case "MakeFunCall":
				node, ast_stack = node.make_funCall_node()
			case "MakeIfExp":
				node, ast_stack = node.make_ifExp_node()
			case "MakeIdentifier":
				node, ast_stack = node.make_ID_node()
			case "MakeFunID":
				node, ast_stack = node.make_FunID_node()

		ast_stack.append(node)
		return ast_stack

class ExpressionNodeTypes:
	# List of valid subclasses of Expression. Useful for collecting argument/expression lists.
	def __init__(self):
		self.types = ["UNARY-EXPRESSION","BINARY-EXPRESSION","INTEGER-LITERAL","BOOLEAN-LITERAL","IDENTIFIER","FUNCTION-CALL","IF-EXPRESSION"]

class MakeNode:

	def __init__(self,ast_stack=None,operator=None):
		self.ast_stack = ast_stack
		self.operator = operator

	def safe_pop(self,node_name,attempted_node):
		try:
			return self.wrap_terminals(obj=self.ast_stack.pop(),label=node_name)
		except:
			KleinError(f'Parse Failed: No valid {attempted_node} child node for the parent {node_name}.')

	def collect_list(self,valid,invalid):

		expressions = []
		while True:
			try:
				expression = self.ast_stack[-1]
			except:
				break
			else:
				expression = self.wrap_terminals(expression)
				if expression.label in invalid:
					break
				elif expression.type in valid:
					expressions.append(self.ast_stack.pop())
				else:
					break
		return expressions

	def wrap_terminals(self, obj,type_hint="TERMINAL",label=None):
		if isinstance(obj,TreeNode):
			return obj
		else:
			return TreeNode(type=type_hint,value=obj,label=label)
		
	def make_program_node(self):
		deflist = self.safe_pop("PROGRAM","DEFINITION-LIST")
		return TreeNode("PROGRAM",children=[deflist]), self.ast_stack

	def make_defList_node(self):
		definitions = []
		while len(self.ast_stack) > 0:
			definition = self.safe_pop("DEFINITION-LIST","DEFINITION")
			definitions.append(definition)
		return TreeNode("DEFINITION-LIST",children=definitions), self.ast_stack

	def make_expList_node(self):
		ValidNodes = ExpressionNodeTypes()
		expressions = self.collect_list(ValidNodes.types,[])
		return TreeNode("EXPRESSION-LIST",children=expressions,label="body"), self.ast_stack

	def make_def_node(self):
		node, _ = self.make_expList_node()
		body = node
		t = self.safe_pop("DEFINITION","TYPE")
		parmlist = self.safe_pop("DEFINITION","PARAMETER-LIST")
		id = self.safe_pop("DEFINITION","IDENTIFIER")

		return TreeNode("DEFINITION",children=[id,parmlist,t,body]), self.ast_stack

	def make_parmList_node(self):
		parameters = self.collect_list(["ID-TYPE"],["function","print"])
		# Parameters could be the empty list []. This is fine. This node is only the child of Definition. Function definitions do not require parameters. For instance: function main():integer
		#																					print("EMPTY FUNCTION")
		#																					0
		return TreeNode("PARAMETER-LIST",children=parameters), self.ast_stack

	def make_IDtype_node(self):
		right = self.safe_pop("ID-TYPE","TYPE")
		left = self.safe_pop("ID-TYPE","ID")
		left.label = "id"
		right.label = "type"
		return TreeNode("ID-TYPE",children=[left,right]), self.ast_stack

	def make_type_node(self):
		terminal = self.safe_pop("TYPE","TERMINAL")
		return TreeNode("TYPE",value=terminal.value), self.ast_stack

	def make_argList_node(self):
		ValidNodes = ExpressionNodeTypes()
		arguments = self.collect_list(ValidNodes.types,["function","print"])

		# Arguments could be the empty list []. This is fine. This node is only the child of Function Call. Function can be called with empty parameters, i.e. main() or print().
		return TreeNode("ARGUMENT-LIST",children=arguments,label="argument"), self.ast_stack

	def make_unExp_node(self):
		exp = self.safe_pop("UNARY-EXPRESSION","EXPRESSION")
		return TreeNode("UNARY-EXPRESSION",value=self.operator,children=[exp]), self.ast_stack

	def make_binExp_node(self):
		right = self.safe_pop("BINARY EXPRESSION", "RIGHT-EXPRESSION")
		left = self.safe_pop("BINARY EXPRESSION", "LEFT-EXPRESSION")
		left.label = "left"
		right.label = "right"
		return TreeNode("BINARY-EXPRESSION",value=self.operator,children=[left,right]), self.ast_stack

	def make_intLit_node(self):
		terminal = self.safe_pop("INTEGER-LITERAL","TERMINAL")
		return TreeNode("INTEGER-LITERAL",value=terminal.value), self.ast_stack

	def make_boolLit_node(self):
		terminal = self.safe_pop("BOOLEAN-LITERAL","TERMINAL")
		return TreeNode("BOOLEAN-LITERAL",value=terminal.value), self.ast_stack

	def make_funCall_node(self):
		right = self.safe_pop("FUNCTION-CALL","ARGUMENT LIST")
		left = self.safe_pop("FUNCTION-CALL","IDENTIFIER")
		left.label = "function"
		right.label = "arguments"
		return TreeNode("FUNCTION-CALL",children=[left, right]), self.ast_stack

	def make_ifExp_node(self):
		exception = self.safe_pop("IF-EXPRESSION","ELSE EXPRESSION")
		then = self.safe_pop("IF-EXPRESSION", "THEN EXPRESSION")
		test = self.safe_pop("IF-EXPRESSION", "TEST EXPRESSION")
		test.label = "if"
		then.label = "else"
		exception.label = "then"
		return TreeNode("IF-EXPRESSION",children=[test,then,exception]), self.ast_stack

	def make_ID_node(self):
		terminal = self.safe_pop("IDENTIFIER","TERMINAL")
		if terminal.value == "print":
			return TreeNode("IDENTIFIER",value="print",label='function'), self.ast_stack
		else:
			return TreeNode("IDENTIFIER",value=terminal.value), self.ast_stack

	def make_FunID_node(self):
		terminal = self.safe_pop("FUNCTION","TERMINAL")
		return TreeNode("IDENTIFIER",value=terminal.value,label="function"), self.ast_stack

class TreeNode:
	def __init__(self, type, value=None, children=[], label=None):
		self.type = type
		self.value = value
		self.children = children
		self.label = label

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