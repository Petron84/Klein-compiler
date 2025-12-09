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
13 : LDA 4, 4(5) ; Base of callee frame
14 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
15 : ST 1, 1(4) ; Store argument 0 in callee
16 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
17 : ST 1, 2(4) ; Store argument 1 in callee
18 : LDA 6, 22(0) ; Return address
19 : ST 6, 0(4) ; Store return in callee frame
20 : ADD 5, 4, 0 ; Push callee frame
21 : LDA 7, 72(0) ; Call MOD
22 : LD   1, 3(5) ;  Load function result
23 : LDC   2, 4(0) ;  Caller frame size
24 : SUB   5, 5, 2 ;  Pop back to caller
25 : SUB   4, 4, 2 ;  Pop back to caller
26 : ADD  3, 1, 0 ;  Store left operand into temporary register
27 : LDC  1, 3(0) ;  Load boolean-literal value into register 1
28 : ADD  2, 3, 0 ;  Restore left operand
29 : MUL  1, 2, 1 ;  R1 = left * right
30 : ADD  3, 1, 0 ;  Store left operand into temporary register
31 : LDC  1, 4(0) ;  Load boolean-literal value into register 1
32 : ADD  2, 3, 0 ;  Restore left operand
33 : SUB  1, 2, 1 ;  left - right for less-than check
34 : JLT  1, 2(7) ;  If R1 < 0, jump to true
35 : LDC  1, 0(0) ;  false
36 : LDA  7, 1(7) ;  skip setting true
37 : LDC  1, 1(0) ;  true
38 : ADD  3, 1, 0 ;  Store left operand into temporary register
39 : LDA 4, 4(5) ; Base of callee frame
40 : LDC  1, 5(0) ;  Load boolean-literal value into register 1
41 : ST 1, 1(4) ; Store argument 0 in callee
42 : LDC  1, 3(0) ;  Load boolean-literal value into register 1
43 : ST 1, 2(4) ; Store argument 1 in callee
44 : LDA 6, 48(0) ; Return address
45 : ST 6, 0(4) ; Store return in callee frame
46 : ADD 5, 4, 0 ; Push callee frame
47 : LDA 7, 72(0) ; Call MOD
48 : LD   1, 3(5) ;  Load function result
49 : LDC   2, 4(0) ;  Caller frame size
50 : SUB   5, 5, 2 ;  Pop back to caller
51 : SUB   4, 4, 2 ;  Pop back to caller
52 : ADD  3, 1, 0 ;  Store left operand into temporary register
53 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
54 : ADD  2, 3, 0 ;  Restore left operand
55 : MUL  1, 2, 1 ;  R1 = left * right
56 : ADD  3, 1, 0 ;  Store left operand into temporary register
57 : LDC  1, 5(0) ;  Load boolean-literal value into register 1
58 : ADD  2, 3, 0 ;  Restore left operand
59 : SUB  1, 2, 1 ;  left - right for less-than check
60 : JLT  1, 2(7) ;  If R1 < 0, jump to true
61 : LDC  1, 0(0) ;  false
62 : LDA  7, 1(7) ;  skip setting true
63 : LDC  1, 1(0) ;  true
64 : LDC  2, 1(0) ;  Load 1 into R2
65 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
66 : ADD  2, 3, 0 ;  Restore left operand
67 : ADD  1, 2, 1 ;  R1 = left OR right
68 : ST 1, 3(5) ;  Store result into current frame's return slot
69 : LD   1, 3(5) ;  Load return value into register 1
70 : LD  6, 0(5) ;  Load return address for main function into register 6
71 : LDA  7, 0(6) ;  Jump to return address of main function
72 : LD   1, 1(5) ;  Load parameter 'm' into R1
73 : ADD  3, 1, 0 ;  Store left operand into temporary register
74 : LD   1, 1(5) ;  Load parameter 'm' into R1
75 : ADD  3, 1, 0 ;  Store left operand into temporary register
76 : LD   1, 2(5) ;  Load parameter 'n' into R1
77 : ADD  2, 3, 0 ;  Restore left operand
78 : DIV  1, 2, 1 ;  R1 = left / right
79 : ADD  3, 1, 0 ;  Store left operand into temporary register
80 : LD   1, 2(5) ;  Load parameter 'n' into R1
81 : ADD  2, 3, 0 ;  Restore left operand
82 : MUL  1, 2, 1 ;  R1 = left * right
83 : ADD  2, 3, 0 ;  Restore left operand
84 : SUB  1, 2, 1 ;  R1 = left - right
85 : ST   1, 3(5) ;  Store function result into stack frame
86 : LD   6, 0(5) ;  Load return address
87 : LDA  7, 0(6) ;  Return to caller
