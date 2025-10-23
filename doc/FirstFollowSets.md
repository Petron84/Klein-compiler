FIRST SETS

FIRST(LITERAL) = {int-lit,bool-lit}
FIRST(FA') = {ε, ","}
FIRST(FA) = {"not", "-", "if", "(", int-lit, bool-lit, identifier}
FIRST(ARGLIST) = {ε,"not", "-", "if", "(", int-lit, bool-lit, identifier}
FIRST(FACTOR') = {ε, "("}
FIRST(FACTOR) = {int-lit, bool-lit, "not", "-", identifier, "if", "("}
FIRST(TERM') = {ε, "\*", "/", "and"}
FIRST(TERM) = {int-lit, bool-lit, "not", "-", identifier, "if", "("}
FIRST(SIMEXP') = {ε, "or", "+", "-"}
FIRST(SIMEXP) = {int-lit, bool-lit, "not", "-", identifier, "if", "("}
FIRST(EXP') = {ε, "=", "<"}
FIRST(EXP) = {int-lit, bool-lit, "not", "-", identifier, "if", "("}
FIRST(PRINTEXP) = {"print"}
FIRST(BODY) = {"print", int-lit, bool-lit, "not", "-", identifier, "if", "("}
FIRST(TYPE) = {integer, boolean}
FIRST(IDTYPE) = {identifier}
FIRST(FP') = {ε, ","}
FIRST(FP) = {identifier}
FIRST(PARMLIST) = {ε, identifier}
FIRST(DEF) = {function}
FIRST(DEFLIST) = {ε, function}
FIRST(PROGRAM) = {ε, function}



FOLLOW SETS

FOLLOW(PROGRAM) = {$}
FOLLOW(DEFLIST) = {$}
FOLLOW(DEF) = {function, $}
FOLLOW(PARMLIST) = { ")" }
FOLLOW(FP) = { ")"}
FOLLOW(FP') = { ")"}
FOLLOW(IDTYPE) = {",", ")"}
FOLLOW(TYPE) = {"print", int-lit, bool-lit, "not", "-", identifier, "if", "(", ")", ","}
FOLLOW(BODY) = {function, $}
FOLLOW(PRINTEXP) = {"print", int-lit, bool-lit, "not", "-", identifier, "if", "("}
FOLLOW(EXP) = {function, $, ")", "then", "else", ",", "\*", "/", "and", "or", "+", "-", "=", "<"}
FOLLOW(EXP') = {function, $, ")", "then", "else", ",", "\*", "/", "and", "or", "+", "-", "=", "<"}



FOLLOW(SIMEXP) = {function, $, ")", "then", "else", ",", "\*", "/", "and", "or", "+", "-", "=", "<"}
FOLLOW(SIMEXP') = {function, $, ")", "then", "else", ",", "\*", "/", "and", "or", "+", "-", "=", "<"}
FOLLOW(TERM) = {function, $, ")", "then", "else", ",", "\*", "/", "and", "or", "+", "-", "=", "<"}
FOLLOW(TERM') = {function, $, ")", "then", "else", ",", "or", "+", "-", "=", "<"}
FOLLOW(FACTOR) = {function, $, ")", "then", "else", ",", "\*", "/", "and", "or", "+", "-", "=", "<"}
FOLLOW(FACTOR') = {function, $, ")", "then", "else", ",", "\*", "/", "and", "or", "+", "-", "=", "<"}
FOLLOW(ARGLIST) = {")"}
FOLOW(FA) = {")"}
FOLLOW(FA') = {")"}
FOLLOW(LITERAL) = {function, $, ")", "then", "else", ",", "\*", "/", "and", "or", "+", "-", "=", "<"}

