0 : LDC  5, 1(0) ;  Set DMEM pointer to main stack frame
1 : ADD  4, 5, 0 ;  Set top of caller frame
2 : LDA  6, 2(7) ;  Calculate return address
3 : ST   6, 0(5) ;  Store return address in main stack frame
4 : LDA  7, 10(0) ;  Load address of main IMEM block - branch to function
5 : OUT  1, 0, 0 ;  Return result
6 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
7 : OUT  1, 0, 0 ;  Hardcoded print function
8 : LD   6, 0(5) ;  Load return addess from stack frame.
9 : LDA  7, 0(6) ;  Jump to return address.
10 : LDA 4, 4(5) ; Base of callee frame
11 : LDC  1, 2(0) ;  Load integer-literal value into register 1
12 : ST 1, 1(4) ; Store argument 0 in callee
13 : LDC  1, 2(0) ;  Load integer-literal value into register 1
14 : ST 1, 2(4) ; Store argument 1 in callee
15 : LDA 6, 19(0) ; Return address
16 : ST 6, 0(4) ; Store return in callee frame
17 : ADD 5, 4, 0 ; Push callee frame
18 : LDA 7, 64(0) ; Call MOD
19 : LD   1, 3(5) ;  Load function result
20 : LDC   2, 4(0) ;  Caller frame size
21 : SUB   5, 5, 2 ;  Pop back to caller
22 : SUB   4, 4, 2 ;  Pop back to caller
23 : ADD  2, 1, 0 ;  Move left operand to register 2
24 : LDC  1, 3(0) ;  Load integer-literal value into register 1
25 : MUL  1, 2, 1 ;  R1 = left * right
26 : ADD  2, 1, 0 ;  Move left operand to register 2
27 : LDC  1, 4(0) ;  Load integer-literal value into register 1
28 : SUB  1, 2, 1 ;  left - right for less-than check
29 : JLT  1, 2(7) ;  If R1 < 0, jump to true
30 : LDC  1, 0(0) ;  false
31 : LDA  7, 1(7) ;  skip setting true
32 : LDC  1, 1(0) ;  true
33 : ADD  2, 1, 0 ;  Move left operand to register 2
34 : LDA 4, 4(5) ; Base of callee frame
35 : LDC  1, 5(0) ;  Load integer-literal value into register 1
36 : ST 1, 1(4) ; Store argument 0 in callee
37 : LDC  1, 3(0) ;  Load integer-literal value into register 1
38 : ST 1, 2(4) ; Store argument 1 in callee
39 : LDA 6, 43(0) ; Return address
40 : ST 6, 0(4) ; Store return in callee frame
41 : ADD 5, 4, 0 ; Push callee frame
42 : LDA 7, 64(0) ; Call MOD
43 : LD   1, 3(5) ;  Load function result
44 : LDC   2, 4(0) ;  Caller frame size
45 : SUB   5, 5, 2 ;  Pop back to caller
46 : SUB   4, 4, 2 ;  Pop back to caller
47 : ADD  2, 1, 0 ;  Move left operand to register 2
48 : LDC  1, 2(0) ;  Load integer-literal value into register 1
49 : MUL  1, 2, 1 ;  R1 = left * right
50 : ADD  2, 1, 0 ;  Move left operand to register 2
51 : LDC  1, 5(0) ;  Load integer-literal value into register 1
52 : SUB  1, 2, 1 ;  left - right for less-than check
53 : JLT  1, 2(7) ;  If R1 < 0, jump to true
54 : LDC  1, 0(0) ;  false
55 : LDA  7, 1(7) ;  skip setting true
56 : LDC  1, 1(0) ;  true
57 : LDC  2, 1(0) ;  Load 1 into R2
58 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
59 : ADD  1, 2, 1 ;  R1 = left OR right
60 : ST 1, 1(5) ;  Store result into current frame's return slot
61 : LD   1, 1(5) ;  Load return value into register 1
62 : LD  6, 0(5) ;  Load return address for main function into register 6
63 : LDA  7, 0(6) ;  Jump to return address of main function
64 : LD   1, 2(5) ;  Load parameter 'n' into R1
65 : ST   1, 3(4) ;  Store right operand result into return value slot
66 : LD   1, 1(5) ;  Load parameter 'm' into R1
67 : ADD  2, 1, 0 ;  Move left operand to register 2
68 : LD   1, 3(4) ;  Return right operand back into register 1
69 : DIV  1, 2, 1 ;  R1 = left / right
70 : ADD  2, 1, 0 ;  Move left operand to register 2
71 : LD   1, 2(5) ;  Load parameter 'n' into R1
72 : MUL  1, 2, 1 ;  R1 = left * right
73 : ADD  3, 1, 0 ;  Move right operand to register 3
74 : LD   1, 1(5) ;  Load parameter 'm' into R1
75 : ADD  2, 1, 0 ;  Move left operand to register 2
76 : ADD  1, 3, 0 ;  Move right operand to register 1
77 : SUB  1, 2, 1 ;  R1 = left - right
78 : ST   1, 3(5) ;  Store function result into stack frame
79 : LD   6, 0(5) ;  Load return address
80 : LDA  7, 0(6) ;  Return to caller
