FIRST SETS



* FIRST(LITERAL) = {integer-literal, boolean-literal}
* FIRST(FA') = { "," , ε}
* FIRST(FA) = {integer-literal, boolean-literal, "not", "-", identifier, "if", "("}
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
* FIRST(FP') = {",",ε}
* FIRST(FP) = {identifier}
* FIRST(PARMLIST) = {identifier,ε}
* FIRST(DEF) = {"function"}
* FIRST(DEFLIST) = {"function", ε}
* FIRST(PROGRAM) = {"function", ε}



FOLLOW SETS

* FOLLOW(PROGRAM) = {$}
* FOLLOW(DEFLIST) = {$}
* FOLLOW(DEF) = {"function",$}
* FOLLOW(PARMLIST) = {")"}
* FOLLOW(FP) = {")"}
* FOLLOW(FP') = {")"}
* FOLLOW(IDTYPE) = {")",","}
* FOLLOW(TYPE) = {"print",integer-literal, boolean-literal, "not", "-", identifier, "if", "(",")",","}
* FOLLOW(BODY) = {"function",$}
* FOLLOW(PRINTEXP) = {"print",integer-literal, boolean-literal, "not", "-", identifier, "if", "("} 
* FOLLOW(EXP) = {"function",$,"then","else",")",",","or","+","-","=","<","\*","/","and"}
* FOLLOW(EXP') = {"function",$,"then","else",")",",","or","+","-","=","<","\*","/","and"}
* FOLLOW(SIMPEXP) = {"=","<","function" $,"then","else",")",",","or","+","-","=","<","\*","/","and"}
* FOLLOW(SIMPEXP') = {"=","<","function" $,"then","else",")",",","or","+","-","=","<","\*","/","and"}
* FOLLOW(TERM) = {"or","+","-","=","<","function",$,"then","else",")",",","\*","/","and"}
* FOLLOW(TERM') = {"or","+","-","=","<","function",$,"then","else",")",",","\*","/","and"}
* FOLLOW(FACTOR) = {"or","+","-","=","<","function",$,"then","else",")",",","\*","/","and"}
* FOLLOW(FACTOR') = {"or","+","-","=","<","function",$,"then","else",")",",","\*","/","and"}
* FOLLOW(ARGLIST) = {")"}
* FOLLOW(FA) = {")"}
* FOLLOW(FA') = {")"}
* FOLLOW(LITERAL) = {"or","+","-","=","<","function",$","then","else",")",",","\*","/","and"}



