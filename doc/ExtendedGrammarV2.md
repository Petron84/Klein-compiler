<PROGRAM> ::= <DEFINITION-LIST> ***\*\*\*make-program\*\*\****



&nbsp;   <DEFINITION-LIST> ::= ***\*\*\*make-definitionlist\*\*\****

&nbsp;			| <DEFINITION> <DEFINITION-LIST>



&nbsp;        <DEFINITION> ::= "function" <IDENTIFIER> ***\*\*\*make-identifier\*\*\**** "(" <PARAMETER-LIST> ")" ":" <TYPE>

&nbsp;                            <BODY> ***\*\*\*make-definition\*\*\****



&nbsp;    <PARAMETER-LIST> ::= ***\*\*\*make-parameterlist\*\*\****

&nbsp;			| <FORMAL-PARAMETERS>





&nbsp; <FORMAL-PARAMETERS> ::= <ID-WITH-TYPE> ***\*\*\*make-IDType\*\*\**** <FORMAL-PARAMETERS'>



&nbsp;<FORMAL-PARAMETERS'> ::= ε

&nbsp;			| "," <ID-WITH-TYPE> <FORMAL-PARAMETERS'>



&nbsp;      <ID-WITH-TYPE> ::= <IDENTIFIER> ***\*\*\*make-identifier\*\*\**** ":" <TYPE> ***\*\*\*make-type\*\*\****



&nbsp;              <TYPE> ::= "integer" ***\*\*\*make-integertype\*\*\****

&nbsp;                       | "boolean" ***\*\*\*make-booleantype\*\*\****



&nbsp;              <BODY> ::= <PRINT-EXPRESSION> <BODY>

&nbsp;                       | <EXPR>



&nbsp;  <PRINT-EXPRESSION> ::= "print" "(" <EXPR> ")" ***\*\*\*make-functioncall\*\*\****



&nbsp;        <EXPRESSION> ::= <SIMPLE-EXPRESSION> <EXPRESSION'> ***\*\*\*make-expression\*\*\****



&nbsp;	<EXPRESSION'> ::= ε

&nbsp;			| "=" ***\*\*\*make-binaryespression\*\*\**** <SIMPLE-EXPRESSION>

&nbsp;                       | "<" ***\*\*\*make-binaryespression\*\*\**** <SIMPLE-EXPRESSION>



&nbsp; <SIMPLE-EXPRESSION> ::= <TERM> <SIMPLE-EXPRESSION'>



&nbsp;<SIMPLE-EXPRESSION'> ::= ε

&nbsp;			| "or" ***\*\*\*make-binaryexpression\*\*\**** <TERM>

&nbsp;                       | "+" ***\*\*\*make-binaryexpression\*\*\**** <TERM>

&nbsp;                       | "-" ***\*\*\*make-binaryexpression\*\*\**** <TERM>



&nbsp;              <TERM> ::= <FACTOR> <TERM'>



&nbsp;	      <TERM'> ::= ε

&nbsp;			| "\*" ***\*\*\*make-binaryexpression\*\*\**** <FACTOR>

&nbsp;                       | "/" ***\*\*\*make-binaryexpression\*\*\**** <FACTOR>

&nbsp;                       | "and" ***\*\*\*make-binaryexpression\*\*\**** <FACTOR>



&nbsp;            <FACTOR> ::= <LITERAL> ***\*\*\*make-literalexpression\*\*\****

&nbsp;                       | "not" ***\*\*\*make-unaryexpression\*\*\**** <FACTOR>

&nbsp;                       | "-" ***\*\*\*make-unaryexpression\*\*\**** <FACTOR>

&nbsp;                       | <IDENTIFIER> ***\*\*\*make-identifier\*\*\**** <FACTOR'> ***\*\*\*make-functioncall\*\*\****

&nbsp;                       | "if" <SIMPLE-EXPRESSION> <EXPRESSION'> "then" <SIMPLE-EXPRESSION> <EXPRESSION'> "else" <SIMPLE-EXPRESSION> <EXPRESSION'> ***\*\*\*make-ifexpression\*\*\****

&nbsp;                       | "(" <SIMPLE-EXPRESSION> <EXPRESSION'> ")"



&nbsp;	    <FACTOR'> ::= ***\*\*\*make-expressionlist\*\*\****

&nbsp;			| "(" <ARGUMENT-LIST> ")"



&nbsp;     <ARGUMENT-LIST> ::= ε

&nbsp;			| <FORMAL-ARGUMENTS>



&nbsp;  <FORMAL-ARGUMENTS> ::= <SIMPLE-EXPRESSION> <EXPRESSION'> <FORMAL-ARGUMENTS'>



&nbsp; <FORMAL-ARGUMENTS'> ::= ε

&nbsp;			| "," <SIMPLE-EXPRESSION> <EXPRESSION'> <FORMAL-ARGUMENTS'>



&nbsp;           <LITERAL> ::= <INTEGER-LITERAL> ***\*\*\*make-integerliteral\*\*\****

&nbsp;                       | <BOOLEAN-LITERAL> ***\*\*\*make-booleanliteral\*\*\****

