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
22 : LDA  7, 38(0) ;  Skip ELSE block
23 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
24 : ST   1, 1(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='1',line=7)
25 : LD   1, 1(5) ;  Load parameter 'elementWanted' into R1
26 : ST   1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='elementWanted',line=7)
27 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
28 : ST   1, 3(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='0',line=7)
29 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
30 : ST   1, 4(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='1',line=7)
31 : LDC  5, 5(0) ;  Set DMEM pointer to callee frame 'addNext'
32 : LDA  6, 2(7) ;  Compute return address
33 : ST   6, 0(5) ;  Store return address in frame
34 : LDA  7, 41(0) ;  Call addNext
35 : LD   1, 5(5) ;  Load return value into R1
36 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
37 : ST   1, 4(0) ;  Store function-call result into caller's return slot
38 : LD   1, 4(0) ;  Load return value into register 1
39 : LD  6, 2(0) ;  Load return address for main function into register 6
40 : LDA  7, 0(6) ;  Jump to return address of main function
41 : LD   1, 2(5) ;  Load parameter 'elementWanted' into R1
42 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
43 : LD   1, 1(5) ;  Load parameter 'currentElement' into R1
44 : SUB  1, 2, 1 ;  left - right for equality check
45 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
46 : LDC  1, 0(0) ;  false
47 : LDA  7, 1(7) ;  skip setting true
48 : LDC  1, 1(0) ;  true
49 : JEQ  1, 52(0) ;  If condition is false, jump to ELSE
50 : LD   1, 4(5) ;  Load parameter 'currentSum' into R1
51 : LDA  7, 72(0) ;  Skip ELSE block
52 : LD   1, 1(5) ;  Load parameter 'currentElement' into R1
53 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
54 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
55 : ADD  1, 2, 1 ;  R1 = left + right
56 : ST   1, 1(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='currentElement',line=16), Tree Node('INTEGER-LITERAL', value='1',line=16)],line=16)
57 : LD   1, 2(5) ;  Load parameter 'elementWanted' into R1
58 : ST   1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='elementWanted',line=16)
59 : LD   1, 4(5) ;  Load parameter 'currentSum' into R1
60 : ST   1, 3(5) ;  Store argument Tree Node('IDENTIFIER', value='currentSum',line=17)
61 : LD   1, 3(5) ;  Load parameter 'previousSum' into R1
62 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
63 : LD   1, 4(5) ;  Load parameter 'currentSum' into R1
64 : ADD  1, 2, 1 ;  R1 = left + right
65 : ST   1, 4(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='previousSum',line=18), Tree Node('IDENTIFIER', value='currentSum',line=19)],line=19)
66 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'addNext'
67 : LDA  6, 2(7) ;  Compute return address
68 : ST   6, 0(5) ;  Store return address in frame
69 : LDA  7, 41(0) ;  Call addNext
70 : LD   1, 5(5) ;  Load return value into R1
71 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
72 : ST   1, 5(5) ;  Store function result into stack frame
73 : LD   6, 0(5) ;  Load return address
74 : LDA  7, 0(6) ;  Return to caller
