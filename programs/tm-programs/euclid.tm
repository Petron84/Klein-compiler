0 : LDC  5, 3(0) ;  Set DMEM pointer to main stack frame
1 : LD   2, 1(0) ;  Load CLI arg 1 into register
2 : ST   2, 1(5) ;  Store the argument into stack frame
3 : LD   2, 2(0) ;  Load CLI arg 2 into register
4 : ST   2, 2(5) ;  Store the argument into stack frame
5 : LDA  6, 2(7) ;  Calculate return address
6 : ST   6, 0(5) ;  Store return address in main stack frame
7 : LDA  7, 13(0) ;  Load address of main IMEM block - branch to function
8 : OUT  1, 0, 0 ;  Return result
9 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
10 : OUT  1, 0, 0 ;  Hardcoded print function
11 : LD   6, 0(5) ;  Load return addess from stack frame.
12 : LDA  7, 0(6) ;  Jump to return address.
13 : LDA 5, 4(5) ;  Advance DMEM pointer to callee frame 'gcd'
14 : LD   1, 1(5) ;  Load parameter 'a' into R1
15 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='a',line=18) into callee frame
16 : LD   1, 2(5) ;  Load parameter 'b' into R1
17 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='b',line=18) into callee frame
18 : LDA 6, 2(7) ;  Compute return address
19 : ST 6, 0(5) ;  Store return address in callee frame
20 : LDA 7, 27(0) ;  Call gcd
21 : LD 1, 3(5) ;  Load callee return value into R1
22 : LDA 5, -4(5) ;  Restore DMEM pointer to caller frame
23 : ST 1, 6(0) ;  Store function-call result into caller's return slot
24 : LD   1, 6(0) ;  Load return value into register 1
25 : LD  6, 3(0) ;  Load return address for main function into register 6
26 : LDA  7, 0(6) ;  Jump to return address of main function
27 : LD   1, 2(5) ;  Load parameter 'b' into R1
28 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
29 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
30 : SUB  1, 2, 1 ;  left - right for equality check
31 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
32 : LDC  1, 0(0) ;  false
33 : LDA  7, 1(7) ;  skip setting true
34 : LDC  1, 1(0) ;  true
35 : JEQ  1, 38(0) ;  If condition is false, jump to ELSE
36 : LD   1, 1(5) ;  Load parameter 'a' into R1
37 : LDA  7, 57(0) ;  Skip ELSE block
38 : LDA 5, 4(5) ;  Advance DMEM pointer to callee frame 'gcd'
39 : LD   1, 2(5) ;  Load parameter 'b' into R1
40 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='b',line=15) into callee frame
41 : LDA 5, 4(5) ;  Advance DMEM pointer to callee frame 'remainder'
42 : LD   1, 1(5) ;  Load parameter 'a' into R1
43 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='a',line=15) into callee frame
44 : LD   1, 2(5) ;  Load parameter 'b' into R1
45 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='b',line=15) into callee frame
46 : LDA 6, 2(7) ;  Compute return address
47 : ST 6, 0(5) ;  Store return address in callee frame
48 : LDA 7, 60(0) ;  Call remainder
49 : LD 1, 3(5) ;  Load callee return value into R1
50 : LDA 5, -4(5) ;  Restore DMEM pointer to caller frame
51 : ST 1, 2(5) ;  Store argument Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='remainder',line=15), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='a',line=15), Tree Node('IDENTIFIER', value='b',line=15)],line=15)],line=15) into callee frame
52 : LDA 6, 2(7) ;  Compute return address
53 : ST 6, 0(5) ;  Store return address in callee frame
54 : LDA 7, 27(0) ;  Call gcd
55 : LD 1, 3(5) ;  Load callee return value into R1
56 : LDA 5, -4(5) ;  Restore DMEM pointer to caller frame
57 : ST   1, 3(5) ;  Store function result into stack frame
58 : LD   6, 0(5) ;  Load return address
59 : LDA  7, 0(6) ;  Return to caller
60 : LD   1, 1(5) ;  Load parameter 'a' into R1
61 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
62 : LD   1, 2(5) ;  Load parameter 'b' into R1
63 : SUB  1, 2, 1 ;  left - right for less-than check
64 : JLT  1, 2(7) ;  If R1 < 0, jump to true
65 : LDC  1, 0(0) ;  false
66 : LDA  7, 1(7) ;  skip setting true
67 : LDC  1, 1(0) ;  true
68 : JEQ  1, 71(0) ;  If condition is false, jump to ELSE
69 : LD   1, 1(5) ;  Load parameter 'a' into R1
70 : LDA  7, 84(0) ;  Skip ELSE block
71 : LDA 5, 4(5) ;  Advance DMEM pointer to callee frame 'remainder'
72 : LD   1, 1(5) ;  Load parameter 'a' into R1
73 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
74 : LD   1, 2(5) ;  Load parameter 'b' into R1
75 : SUB  1, 2, 1 ;  R1 = left - right
76 : ST 1, 1(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='-', children=[Tree Node('IDENTIFIER', value='a',line=8), Tree Node('IDENTIFIER', value='b',line=8)],line=8) into callee frame
77 : LD   1, 2(5) ;  Load parameter 'b' into R1
78 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='b',line=8) into callee frame
79 : LDA 6, 2(7) ;  Compute return address
80 : ST 6, 0(5) ;  Store return address in callee frame
81 : LDA 7, 60(0) ;  Call remainder
82 : LD 1, 3(5) ;  Load callee return value into R1
83 : LDA 5, -4(5) ;  Restore DMEM pointer to caller frame
84 : ST   1, 3(5) ;  Store function result into stack frame
85 : LD   6, 0(5) ;  Load return address
86 : LDA  7, 0(6) ;  Return to caller
