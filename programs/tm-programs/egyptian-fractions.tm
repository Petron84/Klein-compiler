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
13 : LD   1, 1(5) ;  Load parameter 'm' into R1
14 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
15 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
16 : SUB  1, 2, 1 ;  left - right for equality check
17 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
18 : LDC  1, 0(0) ;  false
19 : LDA  7, 1(7) ;  skip setting true
20 : LDC  1, 1(0) ;  true
21 : JEQ  1, 25(0) ;  If condition is false, jump to ELSE
22 : LD   1, 2(5) ;  Load parameter 'n' into R1
23 : ST   1, 6(0) ;  Store identifier value into current frame's return slot
24 : LDA  7, 77(0) ;  Skip ELSE block
25 : LD   1, 2(5) ;  Load parameter 'n' into R1
26 : LDA  3, 4(5) ; Restore Callee frame base
27 : ST 1, 1(3) ;  Store argument 0 into callee frame
28 : LD   1, 1(5) ;  Load parameter 'm' into R1
29 : LDA  3, 4(5) ; Restore Callee frame base
30 : ST 1, 2(3) ;  Store argument 1 into callee frame
31 : LDA  3, 4(5) ; Restore Call frame base
32 : LDA 6, 36(0)) ;  Compute return address
33 : ST 6, 0(3) ;  Store return address in callee frame
34 : ADD  5, 3, 0 ;  Update pointer
35 : LDA 7, 80(0) ;  Call MOD
36 : LD 1, 3(5) ;  Load callee return value into R1
37 : LDC  4, 4(0) ;  Load frame size
38 : SUB  5, 5, 4 ;  Restore pointer
39 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
40 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
41 : SUB  1, 2, 1 ;  left - right for equality check
42 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
43 : LDC  1, 0(0) ;  false
44 : LDA  7, 1(7) ;  skip setting true
45 : LDC  1, 1(0) ;  true
46 : JEQ  1, 53(0) ;  If condition is false, jump to ELSE
47 : LD   1, 2(5) ;  Load parameter 'n' into R1
48 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
49 : LD   1, 1(5) ;  Load parameter 'm' into R1
50 : DIV  1, 2, 1 ;  R1 = left / right
51 : ST   1, 6(0) ;  Store binary result into return slot
52 : LDA  7, 77(0) ;  Skip ELSE block
53 : LD   1, 1(5) ;  Load parameter 'm' into R1
54 : LDA  3, 4(5) ; Restore Callee frame base
55 : ST 1, 1(3) ;  Store argument 0 into callee frame
56 : LD   1, 2(5) ;  Load parameter 'n' into R1
57 : LDA  3, 4(5) ; Restore Callee frame base
58 : ST 1, 2(3) ;  Store argument 1 into callee frame
59 : LD   1, 2(5) ;  Load parameter 'n' into R1
60 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
61 : LD   1, 1(5) ;  Load parameter 'm' into R1
62 : DIV  1, 2, 1 ;  R1 = left / right
63 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
64 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
65 : ADD  1, 2, 1 ;  R1 = left + right
66 : LDA  3, 4(5) ; Restore Callee frame base
67 : ST 1, 3(3) ;  Store argument 2 into callee frame
68 : LDA  3, 4(5) ; Restore Call frame base
69 : LDA 6, 73(0)) ;  Compute return address
70 : ST 6, 0(3) ;  Store return address in callee frame
71 : ADD  5, 3, 0 ;  Update pointer
72 : LDA 7, 93(0) ;  Call print_and_continue
73 : LD 1, 4(5) ;  Load callee return value into R1
74 : LDC  4, 4(0) ;  Load frame size
75 : SUB  5, 5, 4 ;  Restore pointer
76 : ST 1, 6(0) ;  Store function-call result into caller's return slot
77 : LD   1, 6(0) ;  Load return value into register 1
78 : LD  6, 3(0) ;  Load return address for main function into register 6
79 : LDA  7, 0(6) ;  Jump to return address of main function
80 : LD   1, 1(5) ;  Load parameter 'm' into R1
81 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
82 : LD   1, 1(5) ;  Load parameter 'm' into R1
83 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
84 : LD   1, 2(5) ;  Load parameter 'n' into R1
85 : DIV  1, 2, 1 ;  R1 = left / right
86 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
87 : LD   1, 2(5) ;  Load parameter 'n' into R1
88 : MUL  1, 2, 1 ;  R1 = left * right
89 : SUB  1, 2, 1 ;  R1 = left - right
90 : ST   1, 3(5) ;  Store function result into stack frame
91 : LD   6, 0(5) ;  Load return address
92 : LDA  7, 0(6) ;  Return to caller
93 : LD   1, 3(5) ;  Load parameter 'unit' into R1
94 : LDA  3, 5(5) ;  Update DMEM pointer
95 : LDA 6, 99(0) ;  Compute return address
96 : ST   6, 0(3) ;  Store return address
97 : ADD  5, 3, 0 ;  Updated Pointer
98 : LDA  7, 10(0) ; Call print
99 : LDC  4, 5(0) ;  Load frame size
100 : SUB  5, 5, 4 ;  Restore pointer
101 : ST   1, 4(5) ;  Store function result into stack frame
102 : LD   1, 3(5) ;  Load parameter 'unit' into R1
103 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
104 : LD   1, 1(5) ;  Load parameter 'm' into R1
105 : MUL  1, 2, 1 ;  R1 = left * right
106 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
107 : LD   1, 2(5) ;  Load parameter 'n' into R1
108 : SUB  1, 2, 1 ;  R1 = left - right
109 : LDA  3, 5(5) ; Restore Callee frame base
110 : ST 1, 1(3) ;  Store argument 0 into callee frame
111 : LD   1, 2(5) ;  Load parameter 'n' into R1
112 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
113 : LD   1, 3(5) ;  Load parameter 'unit' into R1
114 : MUL  1, 2, 1 ;  R1 = left * right
115 : LDA  3, 5(5) ; Restore Callee frame base
116 : ST 1, 2(3) ;  Store argument 1 into callee frame
117 : LDA  3, 5(5) ; Restore Call frame base
118 : LDA 6, 122(0)) ;  Compute return address
119 : ST 6, 0(3) ;  Store return address in callee frame
120 : ADD  5, 3, 0 ;  Update pointer
121 : LDA 7, 13(0) ;  Call main
122 : LD 1, 3(5) ;  Load callee return value into R1
123 : LDC  4, 5(0) ;  Load frame size
124 : SUB  5, 5, 4 ;  Restore pointer
125 : ST   1, 4(5) ;  Store function result into stack frame
126 : LD   6, 0(5) ;  Load return address
127 : LDA  7, 0(6) ;  Return to caller
