0 : LDC  5, 2(0) ;  Set DMEM pointer to main stack frame
1 : LD   2, 1(0) ;  Load CLI arg 1 into register
2 : ST   2, 1(5) ;  Store the argument into stack frame
3 : LDA  6, 2(7) ;  Calculate return address
4 : ST   6, 0(5) ;  Store return address in main stack frame
5 : LDA  7, 11(0) ;  Load address of main IMEM block - branch to function
6 : OUT  1, 0, 0 ;  Return result
7 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
8 : OUT  1, 0, 0 ;  Hardcoded print function
9 : LD   6, 0(5) ;  Load return addess from stack frame.
10 : LDA  7, 0(6) ;  Jump to return address.
11 : LD   1, 1(5) ;  Load parameter 'elementWanted' into R1
12 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
13 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
14 : SUB  1, 2, 1 ;  left - right for less-than check
15 : JLT  1, 2(7) ;  If R1 < 0, jump to true
16 : LDC  1, 0(0) ;  false
17 : LDA  7, 1(7) ;  skip setting true
18 : LDC  1, 1(0) ;  true
19 : JEQ  1, 23(0) ;  If condition is false, jump to ELSE
20 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
21 : ST   1, 4(0) ;  Store value into return value in stack frame
22 : LDA  7, 40(0) ;  Skip ELSE block
23 : LDA 3, 3(5) ;  Advance DMEM pointer to callee frame 'addNext'
24 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
25 : ST 1, 1(3) ;  Store argument Tree Node('INTEGER-LITERAL', value='1',line=7) into callee frame
26 : LD   1, 1(5) ;  Load parameter 'elementWanted' into R1
27 : ST 1, 2(3) ;  Store argument Tree Node('IDENTIFIER', value='elementWanted',line=7) into callee frame
28 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
29 : ST 1, 3(3) ;  Store argument Tree Node('INTEGER-LITERAL', value='0',line=7) into callee frame
30 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
31 : ST 1, 4(3) ;  Store argument Tree Node('INTEGER-LITERAL', value='1',line=7) into callee frame
32 : LDA 6, 2(7) ;  Compute return address
33 : ST 6, 0(3) ;  Store return address in callee frame
34 : ADD  5, 3, 0 ;  Update pointer
35 : LDA 7, 43(0) ;  Call addNext
36 : LD 1, 5(5) ;  Load callee return value into R1
37 : LDC  4, 3(0) ;  Load frame size
38 : SUB  5, 5, 4 ;  Restore pointer
39 : ST 1, 4(0) ;  Store function-call result into caller's return slot
40 : LD   1, 4(0) ;  Load return value into register 1
41 : LD  6, 2(0) ;  Load return address for main function into register 6
42 : LDA  7, 0(6) ;  Jump to return address of main function
43 : LD   1, 2(5) ;  Load parameter 'elementWanted' into R1
44 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
45 : LD   1, 1(5) ;  Load parameter 'currentElement' into R1
46 : SUB  1, 2, 1 ;  left - right for equality check
47 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
48 : LDC  1, 0(0) ;  false
49 : LDA  7, 1(7) ;  skip setting true
50 : LDC  1, 1(0) ;  true
51 : JEQ  1, 54(0) ;  If condition is false, jump to ELSE
52 : LD   1, 4(5) ;  Load parameter 'currentSum' into R1
53 : LDA  7, 76(0) ;  Skip ELSE block
54 : LDA 3, 6(5) ;  Advance DMEM pointer to callee frame 'addNext'
55 : LD   1, 1(5) ;  Load parameter 'currentElement' into R1
56 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
57 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
58 : ADD  1, 2, 1 ;  R1 = left + right
59 : ST 1, 1(3) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='currentElement',line=16), Tree Node('INTEGER-LITERAL', value='1',line=16)],line=16) into callee frame
60 : LD   1, 2(5) ;  Load parameter 'elementWanted' into R1
61 : ST 1, 2(3) ;  Store argument Tree Node('IDENTIFIER', value='elementWanted',line=16) into callee frame
62 : LD   1, 4(5) ;  Load parameter 'currentSum' into R1
63 : ST 1, 3(3) ;  Store argument Tree Node('IDENTIFIER', value='currentSum',line=17) into callee frame
64 : LD   1, 3(5) ;  Load parameter 'previousSum' into R1
65 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
66 : LD   1, 4(5) ;  Load parameter 'currentSum' into R1
67 : ADD  1, 2, 1 ;  R1 = left + right
68 : ST 1, 4(3) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='previousSum',line=18), Tree Node('IDENTIFIER', value='currentSum',line=19)],line=19) into callee frame
69 : LDA 6, 2(7) ;  Compute return address
70 : ST 6, 0(3) ;  Store return address in callee frame
71 : ADD  5, 3, 0 ;  Update pointer
72 : LDA 7, 43(0) ;  Call addNext
73 : LD 1, 5(5) ;  Load callee return value into R1
74 : LDC  4, 6(0) ;  Load frame size
75 : SUB  5, 5, 4 ;  Restore pointer
76 : ST   1, 5(5) ;  Store function result into stack frame
77 : LD   6, 0(5) ;  Load return address
78 : LDA  7, 0(6) ;  Return to caller
