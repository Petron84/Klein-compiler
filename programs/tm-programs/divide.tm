0 : LDC  5, 4(0) ;  Set DMEM pointer to main stack frame
1 : LD   2, 1(0) ;  Load CLI arg 1 into register
2 : ST   2, 1(5) ;  Store the argument into stack frame
3 : LD   2, 2(0) ;  Load CLI arg 2 into register
4 : ST   2, 2(5) ;  Store the argument into stack frame
5 : LD   2, 3(0) ;  Load CLI arg 3 into register
6 : ST   2, 3(5) ;  Store the argument into stack frame
7 : LDA  6, 2(7) ;  Calculate return address
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
20 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
21 : LDC  1, 0(0) ;  false
22 : LDA  7, 1(7) ;  skip setting true
23 : LDC  1, 1(0) ;  true
24 : JEQ  1, 28(0) ;  If condition is false, jump to ELSE
25 : LD   1, 1(5) ;  Load parameter 'a' into R1
26 : ST 1, 4(5) ;  Store result into current frame's return slot
27 : LDA  7, 43(0) ;  Skip ELSE block
28 : LDA 4, 5(5) ; Base of callee frame
29 : LD   1, 1(5) ;  Load parameter 'a' into R1
30 : ST 1, 1(4) ; Argument 0
31 : LD   1, 2(5) ;  Load parameter 'b' into R1
32 : ST 1, 2(4) ; Argument 1
33 : LD   1, 3(5) ;  Load parameter 'n' into R1
34 : ST 1, 3(4) ; Argument 2
35 : LDA 6, 39(0) ; Return address
36 : ST 6, 0(4) ; Store return in callee frame
37 : ADD 5, 4, 0 ; Push callee frame
38 : LDA 7, 62(0) ; Call printAndDivide
39 : LD 1, 4(5) ; Load function result
40 : LDC 2, 5(0) ; Caller frame size
41 : SUB 5, 5, 2 ; Pop back to caller
42 : ST 1, 4(5) ; Store result into caller’s frame
43 : LD   1, 4(5) ;  Load return value into register 1
44 : LD  6, 0(5) ;  Load return address for main function into register 6
45 : LDA  7, 0(6) ;  Jump to return address of main function
46 : LD   1, 1(5) ;  Load parameter 'm' into R1
47 : ADD  3, 1, 0 ;  Store left operand into temporary register
48 : LD   1, 1(5) ;  Load parameter 'm' into R1
49 : ADD  3, 1, 0 ;  Store left operand into temporary register
50 : LD   1, 2(5) ;  Load parameter 'n' into R1
51 : ADD  2, 3, 0 ;  Restore left operand
52 : DIV  1, 2, 1 ;  R1 = left / right
53 : ADD  3, 1, 0 ;  Store left operand into temporary register
54 : LD   1, 2(5) ;  Load parameter 'n' into R1
55 : ADD  2, 3, 0 ;  Restore left operand
56 : MUL  1, 2, 1 ;  R1 = left * right
57 : ADD  2, 3, 0 ;  Restore left operand
58 : SUB  1, 2, 1 ;  R1 = left - right
59 : ST   1, 3(5) ;  Store function result into stack frame
60 : LD   6, 0(5) ;  Load return address
61 : LDA  7, 0(6) ;  Return to caller
62 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
63 : ADD  3, 1, 0 ;  Store left operand into temporary register
64 : LD   1, 1(5) ;  Load parameter 'a' into R1
65 : ADD  2, 3, 0 ;  Restore left operand
66 : MUL  1, 2, 1 ;  R1 = left * right
67 : ADD  3, 1, 0 ;  Store left operand into temporary register
68 : LD   1, 2(5) ;  Load parameter 'b' into R1
69 : ADD  2, 3, 0 ;  Restore left operand
70 : DIV  1, 2, 1 ;  R1 = left / right
71 : LDA 4, 5(5) ; Base of callee frame
72 : LDA 6, 76(0) ; Return address
73 : ST 6, 0(4) ; Store return addr in callee frame
74 : ADD 5, 4, 0 ; Push new frame
75 : LDA 7, 12(0) ; Call print
76 : LDC 2, 5(0) ; Caller frame size
77 : SUB 5, 5, 2 ; Pop frame
78 : ST   1, 4(5) ;  Store function result into stack frame
79 : LDA 4, 5(5) ; Base of callee frame
80 : LDA  4, 5(4) ;  Push additional call frame for nested function calls
81 : LDA 4, 5(5) ; Base of callee frame
82 : LD   1, 1(5) ;  Load parameter 'a' into R1
83 : ADD  3, 1, 0 ;  Store left operand into temporary register
84 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
85 : ADD  2, 3, 0 ;  Restore left operand
86 : MUL  1, 2, 1 ;  R1 = left * right
87 : ST 1, 1(4) ; Argument 0
88 : LD   1, 2(5) ;  Load parameter 'b' into R1
89 : ST 1, 2(4) ; Argument 1
90 : LDA 6, 94(0) ; Return address
91 : ST 6, 0(4) ; Store return in callee frame
92 : ADD 5, 4, 0 ; Push callee frame
93 : LDA 7, 46(0) ; Call MOD
94 : LD 1, 3(5) ; Load function result
95 : LDC 2, 5(0) ; Caller frame size
96 : SUB 5, 5, 2 ; Pop back to caller
97 : ST 1, 1(4) ; Argument 0
98 : LD   1, 2(5) ;  Load parameter 'b' into R1
99 : ST 1, 2(4) ; Argument 1
100 : LD   1, 3(5) ;  Load parameter 'n' into R1
101 : ADD  3, 1, 0 ;  Store left operand into temporary register
102 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
103 : ADD  2, 3, 0 ;  Restore left operand
104 : SUB  1, 2, 1 ;  R1 = left - right
105 : ST 1, 3(4) ; Argument 2
106 : LDA 6, 110(0) ; Return address
107 : ST 6, 0(4) ; Store return in callee frame
108 : ADD 5, 4, 0 ; Push callee frame
109 : LDA 7, 15(0) ; Call main
110 : LD 1, 4(5) ; Load function result
111 : LDC 2, 5(0) ; Caller frame size
112 : SUB 5, 5, 2 ; Pop back to caller
113 : ST   1, 4(5) ;  Store function result into stack frame
114 : LD   6, 0(5) ;  Load return address
115 : LDA  7, 0(6) ;  Return to caller
