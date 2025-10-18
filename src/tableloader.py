def parsetable():
    import sys
    sys.stdout.reconfigure(encoding='utf-8')
    rulemap = {
        "1": "program := deflist MakeProgram",
        "2": "deflist := MakeDefList",
        "3": "deflist := def deflist",
        "4": "def := function identifier MakeFunID ( parmlist ) : type MakeType body MakeDef",
        "5": "parmlist := MakeParmList",
        "6": "parmlist := FP",
        "7": "FP := idtype MakeIDType FP'",
        "8": "FP' := MakeParmList",
        "9": "FP' := , idtype MakeIDType FP'",
        "10": "idtype := identifier MakeIdentifier : type",
        "11": "type := integer",
        "12": "type := boolean",
        "13": "body := printexp body",
        "14": "body := exp",
        "15": "printexp := print ( exp ) MakeFunCall",
        "16": "exp := simexp exp'",
        "17": "exp' := ε",
        "18": "exp' := = simexp MakeEqualExp exp'",
        "19": "exp' := < simexp MakeLessExp exp'",
        "20": "simexp := term simexp'",
        "21": "simexp' := ε",
        "22": "simexp' := or term MakeOrExp simexp'",
        "23": "simexp' := + term MakeAddExp simexp'",
        "24": "simexp' := - term MakeMinusExp simexp'",
        "25": "term := factor term'",
        "26": "term' := ε",
        "27": "term' := * factor MakeMultExp term'",
        "28": "term' := / factor MakeDivExp term'",
        "29": "term' := and factor MakeAndExp term'",
        "30": "factor := literal",
        "31": "factor := not MakeNotExp factor",
        "32": "factor := - MakeNegExp factor",
        "33": "factor := identifier MakeFunID factor'",
        "34": "factor := if simexp exp' then simexp exp' else simexp exp' MakeIfExp",
        "35": "factor := ( simexp exp' )",
        "36": "factor' := ε",
        "37": "factor' := ( arglist ) MakeFunCall",
        "38": "arglist := ε",
        "39": "arglist := FA",
        "40": "FA := simexp exp' FA'",
        "41": "FA' := MakeArgList",
        "42": "FA' := , simexp exp' FA'",
        "43": "literal := int-lit MakeIntLit",
        "44": "literal := bool-lit MakeBoolLit"}

    parsemap = {"PROGRAM": {"function": 1,"$":1},
                  "DEFLIST": {"function": 3, "$":2},
                  "DEF": {"function": 4},
                  "PARMLIST": {"identifier": 6, ")": 5,},
                  "FP": {"identifier": 7},
                  "FP'": {")": 8, ",": 9},
                  "IDTYPE": {"identifier": 10},
                  "TYPE": {"integer": 11, "boolean": 12},
                  "BODY": {"identifier": 14, "int-lit": 14, "bool-lit": 14, "print": 13, "if": 14, "not": 14, "(": 14, "-": 14},
                  "PRINTEXP": {"print": 15},
                  "EXP": {"identifier": 16, "int-lit": 16, "bool-lit": 16, "if": 16, "not": 16, "(": 16, "-": 16},
                  "EXP'": {"function": 17, "then": 17, "else": 17, "and": 17, "or": 17, ")": 17, "+": 17, "-": 17, "*": 17, "/": 17, "=": 18, "<": 19, ",": 17, "$": 17},
                  "SIMEXP": {"identifier": 20, "int-lit": 20, "bool-lit": 20, "if": 20, "not": 20, "(": 20, "-": 20},
                  "SIMEXP'": {"function": 21, "then": 21, "else": 21, "and": 21, "or": 22, ")": 21, "+": 23, "-": 24, "*": 21, "/": 21, "=": 18, "<": 19, ",": 21, "$": 21},
                  "TERM": {"identifier": 25, "int-lit": 25, "bool-lit": 25, "if": 25, "not": 25, "(": 25, "-": 25},
                  "TERM'": {"function": 26, "then": 26, "else": 26, "and": 29, "or": 26, ")": 26, "+": 26, "-": 26, "*": 27, "/": 28, "=": 26, "<": 26, ",": 26, "$": 26},
                  "FACTOR": {"identifier": 33, "int-lit": 30, "bool-lit": 30, "if": 34, "not": 31, "(": 35, "-": 32},
                  "FACTOR'": {"function": 36, "then": 36, "else": 36, "and": 36, "or": 36, "(": 37, ")": 36, "+": 36, "-": 36, "*": 36, "/": 36, "=": 36, "<": 36, ",": 36, "$": 36},
                  "ARGLIST": {"identifier": 39, "int-lit": 39, "bool-lit": 39, "if": 39, "not": 39, "(": 39, ")": 38, "-": 39},
                  "FA": {"identifier": 40, "int-lit": 40, "bool-lit": 40, "if": 40, "not": 40, "(": 40, "-": 40},
                  "FA'": {")": 41, ",": 42},
                  "LITERAL": {"int-lit": 43, "bool-lit": 44}}

    fulltable = {}

    for grammar, rules in parsemap.items():
        ruleset = {}
        for token, rule in rules.items():
            ruleset[token] = rulemap[str(rule)]
        fulltable[grammar] = ruleset
    return fulltable


