<PROGRAM> ::=     <DEFINITION-LIST> ***make-program***



&nbsp;   <DEFINITION-LIST> ::= ***make-definitionlist***

&nbsp;                       | <DEFINITION> <DEFINITION-LIST>



&nbsp;        <DEFINITION> ::= "function" <IDENTIFIER> ***make-identifier*** "(" <PARAMETER-LIST>  ")" ":" <TYPE> <BODY> ***make-definition***



&nbsp;    <PARAMETER-LIST> ::= ***make-parameterlist***

&nbsp;                       | <FORMAL-PARAMETERS>



&nbsp; <FORMAL-PARAMETERS> ::= <ID-WITH-TYPE> ***make-IDType*** <FORMAL-PARAMETERS'>



&nbsp;<FORMAL-PARAMETERS'> ::= ε

&nbsp;			| "," <FORMAL-PARAMETERS>



&nbsp;      <ID-WITH-TYPE> ::= <IDENTIFIER> ***make-identifier*** ":" <TYPE> ***make-type***



&nbsp;              <TYPE> ::= "integer" ***make-integertype***

&nbsp;                       | "boolean" ***make-booleantype***



&nbsp;              <BODY> ::= <PRINT-EXPRESSION> <BODY>

&nbsp;                       | <EXPRESSION>



&nbsp;  <PRINT-EXPRESSION> ::= "print" "(" <EXPRESSION> ")" ***make-functioncall***



&nbsp;	 <EXPRESSION> ::= <SIMPLE-EXPRESSION> <EXPRESSION'> ***make-expression***



&nbsp;	<EXPRESSION'> ::= ε

&nbsp;			| "=" ***make-binaryespression*** <SIMPLE-EXPRESSION>

&nbsp;			| "<" ***make-binaryespression*** <SIMPLE-EXPRESSION>



&nbsp; <SIMPLE-EXPRESSION> ::= <TERM> <SIMPLE-EXPRESSION'>



&nbsp;<SIMPLE-EXPRESSION'> ::= ε

&nbsp;			| "or" ***make-binaryexpression*** <TERM> 

&nbsp;			| "+" ***make-binaryexpression*** <TERM> 

&nbsp;			| "-" ***make-binaryexpression*** <TERM>





&nbsp;              <TERM> ::= <FACTOR> <TERM'>



&nbsp;	      <TERM'> ::= ε

&nbsp;			| "\*"  ***make-binaryexpression*** <FACTOR>

&nbsp;			| "/" ***make-binaryexpression*** <FACTOR> 

&nbsp;			| "and" ***make-binaryexpression*** <FACTOR> 



&nbsp;            <FACTOR> ::= <LITERAL> ***make-literalexpression***

&nbsp;                       | "not" ***make-unaryexpression*** <FACTOR> 

&nbsp;                       | "-" ***make-unaryexpression*** <FACTOR> 

&nbsp;                       | <IDENTIFIER> ***make-identifier*** <FACTOR'> ***make-functioncall***

&nbsp;                       | "if" <EXPRESSION> "then" <EXPRESSION> "else" <EXPRESSION> ***make-ifexpression***

&nbsp;                       | "(" <EXPRESSION> ")" 

&nbsp;	    <FACTOR'> ::= ***make-expressionlist***

&nbsp;			| "(" <ARGUMENT-LIST> ")"



&nbsp;     <ARGUMENT-LIST> ::= ε

&nbsp;                       | <FORMAL-ARGUMENTS>



&nbsp;  <FORMAL-ARGUMENTS> ::= <EXPRESSION> <FORMAL-ARGUMENTS'>



&nbsp; <FORMAL-ARGUMENTS'> ::= ε

&nbsp;			| "," <FORMAL-ARGUMENTS>



&nbsp;           <LITERAL> ::= <INTEGER-LITERAL> ***make-integerliteral***

&nbsp;                       | <BOOLEAN-LITERAL> ***make-booleanliteral***

