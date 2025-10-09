<PROGRAM> ::=     *make-definition-list* <DEFINITION-LIST>



&nbsp;   <DEFINITION-LIST> ::= ε

&nbsp;                       | <DEFINITION> <DEFINITION-LIST>



&nbsp;        <DEFINITION> ::= "function" *make-identifier* <IDENTIFIER> *make-idtypelist* "(" <PARAMETER-LIST> ")" ":" *make-type* <TYPE> *make-expressionlist* <BODY>



&nbsp;    <PARAMETER-LIST> ::= ε

&nbsp;                       | <FORMAL-PARAMETERS>



&nbsp; <FORMAL-PARAMETERS> ::= <ID-WITH-TYPE> <FORMAL-PARAMETERS'>



&nbsp;<FORMAL-PARAMETERS'> ::= ε

&nbsp;			| "," <FORMAL-PARAMETERS>



&nbsp;      <ID-WITH-TYPE> ::= <IDENTIFIER> ":" <TYPE>



&nbsp;              <TYPE> ::= "integer"

&nbsp;                       | "boolean"



&nbsp;              <BODY> ::= <PRINT-EXPRESSION> <BODY>

&nbsp;                       | <EXPRESSION>



&nbsp;  <PRINT-EXPRESSION> ::= "print" "(" <EXPRESSION> ")"



&nbsp;	 <EXPRESSION> ::= <SIMPLE-EXPRESSION> <EXPRESSION'>



&nbsp;	<EXPRESSION'> ::= ε

&nbsp;			| "=" <SIMPLE-EXPRESSION>

&nbsp;			| "<" <SIMPLE-EXPRESSION>



&nbsp; <SIMPLE-EXPRESSION> ::= <TERM> <SIMPLE-EXPRESSION'>



&nbsp;<SIMPLE-EXPRESSION'> ::= ε

&nbsp;			| "or" <TERM>

&nbsp;			| "+" <TERM>

&nbsp;			| "-" <TERM>





&nbsp;              <TERM> ::= <FACTOR> <TERM'>



&nbsp;	      <TERM'> ::= ε

&nbsp;			| "\*" <FACTOR>

&nbsp;			| "/" <FACTOR>

&nbsp;			| "and" <FACTOR>



&nbsp;            <FACTOR> ::= <LITERAL>

&nbsp;                       | "not" <FACTOR>

&nbsp;                       | "-" <FACTOR>

&nbsp;                       | <IDENTIFIER> <FACTOR'>

&nbsp;                       | "if" <EXPRESSION> "then" <EXPRESSION> "else" <EXPRESSION>

&nbsp;                       | "(" <EXPRESSION> ")"



&nbsp;	    <FACTOR'> ::= ε

&nbsp;			| "(" <ARGUMENT-LIST> ")"



&nbsp;     <ARGUMENT-LIST> ::= ε

&nbsp;                       | <FORMAL-ARGUMENTS>



&nbsp;  <FORMAL-ARGUMENTS> ::= <EXPRESSION> <FORMAL-ARGUMENTS'>



&nbsp; <FORMAL-ARGUMENTS'> ::= ε

&nbsp;			| "," <FORMAL-ARGUMENTS>



&nbsp;           <LITERAL> ::= <INTEGER-LITERAL>

&nbsp;                       | <BOOLEAN-LITERAL>

