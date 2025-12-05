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
16 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
17 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
18 : SUB  1, 2, 1 ;  left - right for equality check
19 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
20 : LDC  1, 0(0) ;  false
21 : LDA  7, 1(7) ;  skip setting true
22 : LDC  1, 1(0) ;  true
23 : JEQ  1, 27(0) ;  If condition is false, jump to ELSE
24 : LD   1, 1(5) ;  Load parameter 'a' into R1
25 : ST 1, 4(5) ;  Store result into current frame's return slot
26 : LDA  7, 45(0) ;  Skip ELSE block
27 : LD   1, 1(5) ;  Load parameter 'a' into R1
28 : LDA  3, 5(5) ; Restore Callee frame base
29 : ST 1, 1(3) ;  Store argument 0 into callee frame
30 : LD   1, 2(5) ;  Load parameter 'b' into R1
31 : LDA  3, 5(5) ; Restore Callee frame base
32 : ST 1, 2(3) ;  Store argument 1 into callee frame
33 : LD   1, 3(5) ;  Load parameter 'n' into R1
34 : LDA  3, 5(5) ; Restore Callee frame base
35 : ST 1, 3(3) ;  Store argument 2 into callee frame
36 : LDA  3, 5(5) ; Restore Call frame base
37 : LDA 6, 41(0) ;  Compute return address
38 : ST 6, 0(3) ;  Store return address in callee frame
39 : ADD  5, 3, 0 ;  Update pointer
40 : LDA 7, 61(0) ;  Call printAndDivide
41 : LD 1, 4(5) ;  Load callee return value into R1
42 : LDC  4, 5(0) ;  Load frame size
43 : SUB  5, 5, 4 ;  Restore pointer
44 : ST 1, 4(5) ;  Store result into current frame's return slot
45 : LD   1, 4(5) ;  Load return value into register 1
46 : LD  6, 0(5) ;  Load return address for main function into register 6
47 : LDA  7, 0(6) ;  Jump to return address of main function
48 : LD   1, 1(5) ;  Load parameter 'm' into R1
49 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
50 : LD   1, 1(5) ;  Load parameter 'm' into R1
51 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
52 : LD   1, 2(5) ;  Load parameter 'n' into R1
53 : DIV  1, 2, 1 ;  R1 = left / right
54 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
55 : LD   1, 2(5) ;  Load parameter 'n' into R1
56 : MUL  1, 2, 1 ;  R1 = left * right
57 : SUB  1, 2, 1 ;  R1 = left - right
58 : ST   1, 3(5) ;  Store function result into stack frame
59 : LD   6, 0(5) ;  Load return address
60 : LDA  7, 0(6) ;  Return to caller
61 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
62 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
63 : LD   1, 1(5) ;  Load parameter 'a' into R1
64 : MUL  1, 2, 1 ;  R1 = left * right
65 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
66 : LD   1, 2(5) ;  Load parameter 'b' into R1
67 : DIV  1, 2, 1 ;  R1 = left / right
68 : LDA  3, 5(5) ;  Update DMEM pointer
69 : LDA 6, 73(0) ;  Compute return address
70 : ST   6, 0(3) ;  Store return address
71 : ADD  5, 3, 0 ;  Updated Pointer
72 : LDA  7, 12(0) ; Call print
73 : LDC  4, 5(0) ;  Load frame size
74 : SUB  5, 5, 4 ;  Restore pointer
75 : ST   1, 4(5) ;  Store function result into stack frame
76 : LD   1, 1(5) ;  Load parameter 'a' into R1
77 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
78 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
79 : MUL  1, 2, 1 ;  R1 = left * right
80 : LDA  3, 5(5) ; Restore Callee frame base
81 : ST 1, 1(3) ;  Store argument 0 into callee frame
82 : LD   1, 2(5) ;  Load parameter 'b' into R1
83 : LDA  3, 5(5) ; Restore Callee frame base
84 : ST 1, 2(3) ;  Store argument 1 into callee frame
85 : LDA  3, 5(5) ; Restore Call frame base
86 : LDA 6, 90(0) ;  Compute return address
87 : ST 6, 0(3) ;  Store return address in callee frame
88 : ADD  5, 3, 0 ;  Update pointer
89 : LDA 7, 48(0) ;  Call MOD
90 : LD 1, 3(5) ;  Load callee return value into R1
91 : LDC  4, 5(0) ;  Load frame size
92 : SUB  5, 5, 4 ;  Restore pointer
93 : LDA  3, 5(5) ; Restore Callee frame base
94 : ST 1, 1(3) ;  Store argument 0 into callee frame
95 : LD   1, 2(5) ;  Load parameter 'b' into R1
96 : LDA  3, 5(5) ; Restore Callee frame base
97 : ST 1, 2(3) ;  Store argument 1 into callee frame
98 : LD   1, 3(5) ;  Load parameter 'n' into R1
99 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
100 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
101 : SUB  1, 2, 1 ;  R1 = left - right
102 : LDA  3, 5(5) ; Restore Callee frame base
103 : ST 1, 3(3) ;  Store argument 2 into callee frame
104 : LDA  3, 5(5) ; Restore Call frame base
105 : LDA 6, 109(0) ;  Compute return address
106 : ST 6, 0(3) ;  Store return address in callee frame
107 : ADD  5, 3, 0 ;  Update pointer
108 : LDA 7, 15(0) ;  Call main
109 : LD 1, 4(5) ;  Load callee return value into R1
110 : LDC  4, 5(0) ;  Load frame size
111 : SUB  5, 5, 4 ;  Restore pointer
112 : ST   1, 4(5) ;  Store function result into stack frame
113 : LD   6, 0(5) ;  Load return address
114 : LDA  7, 0(6) ;  Return to caller
