0 : LDC  5, 4(0) ;  Set DMEM pointer to main stack frame
1 : LD   2, 1(0) ;  Load CLI arg 1 into register
2 : ST   2, 1(5) ;  Store the argument into stack frame
3 : LD   2, 2(0) ;  Load CLI arg 2 into register
4 : ST   2, 2(5) ;  Store the argument into stack frame
5 : LD   2, 3(0) ;  Load CLI arg 3 into register
6 : ST   2, 3(5) ;  Store the argument into stack frame
7 : LDA  6, 3(7) ;  Calculate return address
8 : ST   6, 0(5) ;  Store return address in main stack frame
9 : LDA  7, 15(0) ;  Load address of main IMEM block - branch to function
10 : OUT  1, 0, 0 ;  Return result
11 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
12 : OUT  1, 0, 0 ;  Hardcoded print function
13 : LD   6, 0(5) ;  Load return addess from stack frame.
14 : LDA  7, 0(6) ;  Jump to return address.
15 : LD   1, 3(5) ;  Load parameter 'n' into R1
16 : ADD  3, 1, 0 ;  Store left operand into temporary register
17 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
18 : ADD  2, 3, 0 ;  Restore left operand
19 : SUB  1, 2, 1 ;  left - right for equality check
20 : JEQ  1, 3(7) ;  If R1 == 0, jump to true
21 : LDC  1, 0(0) ;  false
22 : LDA  7, 1(7) ;  skip setting true
23 : LDC  1, 1(0) ;  true
24 : JEQ  1, 28(0) ;  If condition is false, jump to ELSE
25 : LD   1, 1(5) ;  Load parameter 'a' into R1
26 : ST 1, 4(5) ;  Store result into current frame's return slot
27 : LDA  7, 44(0) ;  Skip ELSE block
28 : LDA 4, 5(5) ; Base of callee frame
29 : LD   1, 1(5) ;  Load parameter 'a' into R1
30 : ST 1, 1(4) ; Store argument 0 in callee
31 : LD   1, 2(5) ;  Load parameter 'b' into R1
32 : ST 1, 2(4) ; Store argument 1 in callee
33 : LD   1, 3(5) ;  Load parameter 'n' into R1
34 : ST 1, 3(4) ; Store argument 2 in callee
35 : LDA 6, 39(0) ; Return address
36 : ST 6, 0(4) ; Store return in callee frame
37 : ADD 5, 4, 0 ; Push callee frame
38 : LDA 7, 63(0) ; Call printAndDivide
39 : LD   1, 4(5) ;  Load function result
40 : LDC   2, 5(0) ;  Caller frame size
41 : SUB   5, 5, 2 ;  Pop back to caller
42 : SUB   4, 4, 2 ;  Pop back to caller
43 : ST 1, 4(5) ; Store result into caller’s frame
44 : LD   1, 4(5) ;  Load return value into register 1
45 : LD  6, 0(5) ;  Load return address for main function into register 6
46 : LDA  7, 0(6) ;  Jump to return address of main function
47 : LD   1, 1(5) ;  Load parameter 'm' into R1
48 : ADD  3, 1, 0 ;  Store left operand into temporary register
49 : LD   1, 1(5) ;  Load parameter 'm' into R1
50 : ADD  3, 1, 0 ;  Store left operand into temporary register
51 : LD   1, 2(5) ;  Load parameter 'n' into R1
52 : ADD  2, 3, 0 ;  Restore left operand
53 : DIV  1, 2, 1 ;  R1 = left / right
54 : ADD  3, 1, 0 ;  Store left operand into temporary register
55 : LD   1, 2(5) ;  Load parameter 'n' into R1
56 : ADD  2, 3, 0 ;  Restore left operand
57 : MUL  1, 2, 1 ;  R1 = left * right
58 : ADD  2, 3, 0 ;  Restore left operand
59 : SUB  1, 2, 1 ;  R1 = left - right
60 : ST   1, 3(5) ;  Store function result into stack frame
61 : LD   6, 0(5) ;  Load return address
62 : LDA  7, 0(6) ;  Return to caller
63 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
64 : ADD  3, 1, 0 ;  Store left operand into temporary register
65 : LD   1, 1(5) ;  Load parameter 'a' into R1
66 : ADD  2, 3, 0 ;  Restore left operand
67 : MUL  1, 2, 1 ;  R1 = left * right
68 : ADD  3, 1, 0 ;  Store left operand into temporary register
69 : LD   1, 2(5) ;  Load parameter 'b' into R1
70 : ADD  2, 3, 0 ;  Restore left operand
71 : DIV  1, 2, 1 ;  R1 = left / right
72 : LDA 4, 5(5) ; Base of callee frame
73 : LDA 6, 77(0) ; Return address
74 : ST 6, 0(4) ; Store return addr in callee frame
75 : ADD 5, 4, 0 ; Push new frame
76 : LDA 7, 12(0) ; Call print
77 : LDC 2, 5(0) ; Caller frame size
78 : SUB 5, 5, 2 ; Pop frame
79 : ST   1, 4(5) ;  Store function result into stack frame
80 : LDA 4, 5(5) ; Base of callee frame
81 : LDA 4, 5(5) ; Base of callee frame
82 : LD   1, 1(5) ;  Load parameter 'a' into R1
83 : ADD  3, 1, 0 ;  Store left operand into temporary register
84 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
85 : ADD  2, 3, 0 ;  Restore left operand
86 : MUL  1, 2, 1 ;  R1 = left * right
87 : ST 1, 1(4) ; Store argument 0 in callee
88 : LD   1, 2(5) ;  Load parameter 'b' into R1
89 : ST 1, 2(4) ; Store argument 1 in callee
90 : LDA 6, 94(0) ; Return address
91 : ST 6, 0(4) ; Store return in callee frame
92 : ADD 5, 4, 0 ; Push callee frame
93 : LDA 7, 47(0) ; Call MOD
94 : LD   1, 3(5) ;  Load function result
95 : LDC   2, 5(0) ;  Caller frame size
96 : SUB   5, 5, 2 ;  Pop back to caller
97 : SUB   4, 4, 2 ;  Pop back to caller
98 : ST 1, 1(4) ; Store argument 0 in callee
99 : LD   1, 2(5) ;  Load parameter 'b' into R1
100 : ST 1, 2(4) ; Store argument 1 in callee
101 : LD   1, 3(5) ;  Load parameter 'n' into R1
102 : ADD  3, 1, 0 ;  Store left operand into temporary register
103 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
104 : ADD  2, 3, 0 ;  Restore left operand
105 : SUB  1, 2, 1 ;  R1 = left - right
106 : ST 1, 3(4) ; Store argument 2 in callee
107 : LDA 6, 111(0) ; Return address
108 : ST 6, 0(4) ; Store return in callee frame
109 : ADD 5, 4, 0 ; Push callee frame
110 : LDA 7, 15(0) ; Call main
111 : LD   1, 4(5) ;  Load function result
112 : LDC   2, 5(0) ;  Caller frame size
113 : SUB   5, 5, 2 ;  Pop back to caller
114 : SUB   4, 4, 2 ;  Pop back to caller
115 : ST   1, 4(5) ;  Store function result into stack frame
116 : LD   6, 0(5) ;  Load return address
117 : LDA  7, 0(6) ;  Return to caller
