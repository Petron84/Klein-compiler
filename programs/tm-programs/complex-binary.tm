0 : LDC  5, 1(0) ;  Set DMEM pointer to main stack frame
1 : LDA  6, 2(7) ;  Calculate return address
2 : ST   6, 0(5) ;  Store return address in main stack frame
3 : LDA  7, 9(0) ;  Load address of main IMEM block - branch to function
4 : OUT  1, 0, 0 ;  Return result
5 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
6 : OUT  1, 0, 0 ;  Hardcoded print function
7 : LD   6, 0(5) ;  Load return addess from stack frame.
8 : LDA  7, 0(6) ;  Jump to return address.
9 : LDA 4, 4(5) ; Base of callee frame
10 : LDC  1, 2(0) ;  Load integer-literal value into register 1
11 : ST 1, 1(4) ; Store argument 0 in callee
12 : LDC  1, 2(0) ;  Load integer-literal value into register 1
13 : ST 1, 2(4) ; Store argument 1 in callee
14 : LDA 6, 18(0) ; Return address
15 : ST 6, 0(4) ; Store return in callee frame
16 : ADD 5, 4, 0 ; Push callee frame
17 : LDA 7, 63(0) ; Call MOD
18 : LD   1, 3(5) ;  Load function result
19 : LDC   2, 4(0) ;  Caller frame size
20 : SUB   5, 5, 2 ;  Pop back to caller
21 : SUB   4, 4, 2 ;  Pop back to caller
22 : ADD  2, 1, 0 ;  Move left operand to register 2
23 : LDC  1, 3(0) ;  Load integer-literal value into register 1
24 : MUL  1, 2, 1 ;  R1 = left * right
25 : ADD  2, 1, 0 ;  Move left operand to register 2
26 : LDC  1, 4(0) ;  Load integer-literal value into register 1
27 : SUB  1, 2, 1 ;  left - right for less-than check
28 : JLT  1, 2(7) ;  If R1 < 0, jump to true
29 : LDC  1, 0(0) ;  false
30 : LDA  7, 1(7) ;  skip setting true
31 : LDC  1, 1(0) ;  true
32 : ADD  2, 1, 0 ;  Move left operand to register 2
33 : LDA 4, 4(5) ; Base of callee frame
34 : LDC  1, 5(0) ;  Load integer-literal value into register 1
35 : ST 1, 1(4) ; Store argument 0 in callee
36 : LDC  1, 3(0) ;  Load integer-literal value into register 1
37 : ST 1, 2(4) ; Store argument 1 in callee
38 : LDA 6, 42(0) ; Return address
39 : ST 6, 0(4) ; Store return in callee frame
40 : ADD 5, 4, 0 ; Push callee frame
41 : LDA 7, 63(0) ; Call MOD
42 : LD   1, 3(5) ;  Load function result
43 : LDC   2, 4(0) ;  Caller frame size
44 : SUB   5, 5, 2 ;  Pop back to caller
45 : SUB   4, 4, 2 ;  Pop back to caller
46 : ADD  2, 1, 0 ;  Move left operand to register 2
47 : LDC  1, 2(0) ;  Load integer-literal value into register 1
48 : MUL  1, 2, 1 ;  R1 = left * right
49 : ADD  2, 1, 0 ;  Move left operand to register 2
50 : LDC  1, 5(0) ;  Load integer-literal value into register 1
51 : SUB  1, 2, 1 ;  left - right for less-than check
52 : JLT  1, 2(7) ;  If R1 < 0, jump to true
53 : LDC  1, 0(0) ;  false
54 : LDA  7, 1(7) ;  skip setting true
55 : LDC  1, 1(0) ;  true
56 : LDC  2, 1(0) ;  Load 1 into R2
57 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
58 : ADD  1, 2, 1 ;  R1 = left OR right
59 : ST 1, 1(5) ;  Store result into current frame's return slot
60 : LD   1, 1(5) ;  Load return value into register 1
61 : LD  6, 0(5) ;  Load return address for main function into register 6
62 : LDA  7, 0(6) ;  Jump to return address of main function
63 : LD   1, 2(5) ;  Load parameter 'n' into R1
64 : ST   1, 3(4) ;  Store right operand result into return value slot
65 : LD   1, 1(5) ;  Load parameter 'm' into R1
66 : ADD  2, 1, 0 ;  Move left operand to register 2
67 : LD   1, 3(4) ;  Return right operand back into register 1
68 : DIV  1, 2, 1 ;  R1 = left / right
69 : ADD  2, 1, 0 ;  Move left operand to register 2
70 : LD   1, 2(5) ;  Load parameter 'n' into R1
71 : MUL  1, 2, 1 ;  R1 = left * right
72 : ADD  3, 1, 0 ;  Move right operand to register 3
73 : LD   1, 1(5) ;  Load parameter 'm' into R1
74 : ADD  2, 1, 0 ;  Move left operand to register 2
75 : ADD  1, 3, 0 ;  Move right operand to register 1
76 : SUB  1, 2, 1 ;  R1 = left - right
77 : ST   1, 3(5) ;  Store function result into stack frame
78 : LD   6, 0(5) ;  Load return address
79 : LDA  7, 0(6) ;  Return to caller
