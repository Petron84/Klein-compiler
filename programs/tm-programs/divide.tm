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
25 : ST   1, 8(0) ;  Store identifier value into current frame's return slot
26 : LDA  7, 42(0) ;  Skip ELSE block
27 : LDA 3, 5(5) ;  Advance DMEM pointer to callee frame 'printAndDivide'
28 : LD   1, 1(5) ;  Load parameter 'a' into R1
29 : ST 1, 1(3) ;  Store argument 0 into callee frame
30 : LD   1, 2(5) ;  Load parameter 'b' into R1
31 : ST 1, 2(3) ;  Store argument 1 into callee frame
32 : LD   1, 3(5) ;  Load parameter 'n' into R1
33 : ST 1, 3(3) ;  Store argument 2 into callee frame
34 : LDA 6, 38(0)) ;  Compute return address
35 : ST 6, 0(3) ;  Store return address in callee frame
36 : ADD  5, 3, 0 ;  Update pointer
37 : LDA 7, 58(0) ;  Call printAndDivide
38 : LD 1, 4(5) ;  Load callee return value into R1
39 : LDC  4, 5(0) ;  Load frame size
40 : SUB  5, 5, 4 ;  Restore pointer
41 : ST 1, 8(0) ;  Store function-call result into caller's return slot
42 : LD   1, 8(0) ;  Load return value into register 1
43 : LD  6, 4(0) ;  Load return address for main function into register 6
44 : LDA  7, 0(6) ;  Jump to return address of main function
45 : LD   1, 1(5) ;  Load parameter 'm' into R1
46 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
47 : LD   1, 1(5) ;  Load parameter 'm' into R1
48 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
49 : LD   1, 2(5) ;  Load parameter 'n' into R1
50 : DIV  1, 2, 1 ;  R1 = left / right
51 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
52 : LD   1, 2(5) ;  Load parameter 'n' into R1
53 : MUL  1, 2, 1 ;  R1 = left * right
54 : SUB  1, 2, 1 ;  R1 = left - right
55 : ST   1, 3(5) ;  Store function result into stack frame
56 : LD   6, 0(5) ;  Load return address
57 : LDA  7, 0(6) ;  Return to caller
58 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
59 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
60 : LD   1, 1(5) ;  Load parameter 'a' into R1
61 : MUL  1, 2, 1 ;  R1 = left * right
62 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
63 : LD   1, 2(5) ;  Load parameter 'b' into R1
64 : DIV  1, 2, 1 ;  R1 = left / right
65 : LDA  3, 3(5) ;  Update DMEM pointer
66 : LDA 6, 70(0) ;  Compute return address
67 : ST   6, 0(3) ;  Store return address
68 : ADD  5, 3, 0 ;  Updated Pointer
69 : LDA  7, 12(0) ; Call print
70 : LDC  4, 3(0) ;  Load frame size
71 : SUB  5, 5, 4 ;  Restore pointer
72 : ST   1, 4(5) ;  Store function result into stack frame
73 : LDA 3, 5(5) ;  Advance DMEM pointer to callee frame 'main'
74 : LDA 3, 4(5) ;  Advance DMEM pointer to callee frame 'MOD'
75 : LD   1, 1(5) ;  Load parameter 'a' into R1
76 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
77 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
78 : MUL  1, 2, 1 ;  R1 = left * right
79 : ST 1, 1(3) ;  Store argument 0 into callee frame
80 : LD   1, 2(5) ;  Load parameter 'b' into R1
81 : ST 1, 2(3) ;  Store argument 1 into callee frame
82 : LDA 6, 86(0)) ;  Compute return address
83 : ST 6, 0(3) ;  Store return address in callee frame
84 : ADD  5, 3, 0 ;  Update pointer
85 : LDA 7, 45(0) ;  Call MOD
86 : LD 1, 3(5) ;  Load callee return value into R1
87 : LDC  4, 4(0) ;  Load frame size
88 : SUB  5, 5, 4 ;  Restore pointer
89 : ST 1, 1(3) ;  Store argument 0 into callee frame
90 : LD   1, 2(5) ;  Load parameter 'b' into R1
91 : ST 1, 2(3) ;  Store argument 1 into callee frame
92 : LD   1, 3(5) ;  Load parameter 'n' into R1
93 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
94 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
95 : SUB  1, 2, 1 ;  R1 = left - right
96 : ST 1, 3(3) ;  Store argument 2 into callee frame
97 : LDA 6, 101(0)) ;  Compute return address
98 : ST 6, 0(3) ;  Store return address in callee frame
99 : ADD  5, 3, 0 ;  Update pointer
100 : LDA 7, 15(0) ;  Call main
101 : LD 1, 4(5) ;  Load callee return value into R1
102 : LDC  4, 5(0) ;  Load frame size
103 : SUB  5, 5, 4 ;  Restore pointer
104 : ST   1, 4(5) ;  Store function result into stack frame
105 : LD   6, 0(5) ;  Load return address
106 : LDA  7, 0(6) ;  Return to caller
