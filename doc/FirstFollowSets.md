FIRST SETS



* FIRST(LITERAL) = {integer-literal, boolean-literal}
* FIRST(FORMARG') = { "," , ε}
* FIRST(FORMARG) = {integer-literal, boolean-literal, "not", "-", identifier, "if", "("}
* FIRST(ARGLIST) = {integer-literal, boolean-literal, "not", "-", identifier, "if", "(", ε}
* FIRST(FACTOR') = {"(", ε}
* FIRST(FACTOR) = {integer-literal, boolean-literal, "not", "-", identifier, "if", "("}
* FIRST(TERM') = {"\*","/","and",ε}
* FIRST(TERM) = {integer-literal, boolean-literal, "not", "-", identifier, "if", "("}
* FIRST(SIMEXP') = {"or","+","-",ε}
* FIRST(SIMEXP) = {integer-literal, boolean-literal, "not", "-", identifier, "if", "("}
* FIRST(EXP') = {"=","<",ε}
* FIRST(EXP) = {integer-literal, boolean-literal, "not", "-", identifier, "if", "("}
* FIRST(PRINTEXP) = {"print"}
* FIRST(BODY) = {"print",integer-literal, boolean-literal, "not", "-", identifier, "if", "("}
* FIRST(TYPE) = {"integer","boolean"}
* FIRST(IDTYPE) = {identifier}
* FIRST(FORMPARM') = {",",ε}
* FIRST(FORMPARM) = {identifier}
* FIRST(PARMLIST) = {identifier,ε}
* FIRST(DEF) = {"function"}
* FIRST(DEFLIST) = {"function", ε}
* FIRST(PROGRAM) = {"function", ε}



FOLLOW SETS

* FOLLOW(PROGRAM) = {$}
* FOLLOW(DEFLIST) = {$}
* FOLLOW(DEF) = {"function",$}
* FOLLOW(PARMLIST) = {")"}
* FOLLOW(FORMPARM) = {")"}
* FOLLOW(FORMPARM') = {")"}
* FOLLOW(IDTYPE) = {","}
* FOLLOW(TYPE) = {"print",integer-literal, boolean-literal, "not", "-", identifier, "if", "(",","}
* FOLLOW(BODY) = {"function",$}
* FOLLOW(PRINTEXP) = {"print"}
* FOLLOW(EXP) = {',',')',"then","else"}
* FOLLOW(EXP') = {',',')',"then","else"}
* FOLLOW(SIMPEXP) = {',',')',"then","else","=","<"}
* FOLLOW(SIMPEXP') = {',',')',"then","else","=","<"}
* FOLLOW(TERM) = {"or","+","-",',',')',"then","else","=","<"}
* FOLLOW(TERM') = {"or","+","-",',',')',"then","else","=","<"}
* FOLLOW(FACTOR) = {"\*","/","and","or","+","-",',',')',"then","else","=","<"}
* FOLLOW(FACTOR') = {"\*","/","and","or","+","-",',',')',"then","else","=","<"}
* FOLLOW(ARGLIST) = {")"}
* FOLLOW(FORMARG) = {")"}
* FOLLOW(FORMARG') = {")"}
* FOLLOW(LITERAL) = {"\*","/","and","or","+","-",',',')',"then","else","=","<"}



