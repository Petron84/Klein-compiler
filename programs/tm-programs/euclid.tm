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
13 : LD   1, 1(5) ;  Load parameter 'a' into R1
14 : LDA  4, 4(5) ; Restore Callee frame base
15 : ST 1, 1(4) ;  Store argument 0 into callee frame
16 : LD   1, 2(5) ;  Load parameter 'b' into R1
17 : LDA  4, 4(5) ; Restore Callee frame base
18 : ST 1, 2(4) ;  Store argument 1 into callee frame
19 : LDA  4, 4(5) ; Restore Call frame base
20 : LDA 6, 24(0) ;  Compute return address
21 : ST 6, 0(4) ;  Store return address in callee frame
22 : ADD  5, 4, 0 ;  Update pointer
23 : LDA 7, 31(0) ;  Call gcd
24 : LD 1, 3(5) ;  Load callee return value into R1
25 : LDC  4, 4(0) ;  Load frame size
26 : SUB  5, 5, 4 ;  Restore pointer
27 : ST 1, 3(5) ;  Store result into current frame's return slot
28 : LD   1, 3(5) ;  Load return value into register 1
29 : LD  6, 0(5) ;  Load return address for main function into register 6
30 : LDA  7, 0(6) ;  Jump to return address of main function
31 : LD   1, 2(5) ;  Load parameter 'b' into R1
32 : LDC  3, 1(0) ;  Store left operand into temporary register
33 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
34 : LDC  2, 3(0) ;  Restore left operand
35 : SUB  1, 2, 1 ;  left - right for equality check
36 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
37 : LDC  1, 0(0) ;  false
38 : LDA  7, 1(7) ;  skip setting true
39 : LDC  1, 1(0) ;  true
40 : JEQ  1, 43(0) ;  If condition is false, jump to ELSE
41 : LD   1, 1(5) ;  Load parameter 'a' into R1
42 : LDA  7, 70(0) ;  Skip ELSE block
43 : LD   1, 2(5) ;  Load parameter 'b' into R1
44 : LDA  4, 4(5) ; Restore Callee frame base
45 : ST 1, 1(4) ;  Store argument 0 into callee frame
46 : LD   1, 1(5) ;  Load parameter 'a' into R1
47 : LDA  4, 4(5) ; Restore Callee frame base
48 : ST 1, 1(4) ;  Store argument 0 into callee frame
49 : LD   1, 2(5) ;  Load parameter 'b' into R1
50 : LDA  4, 4(5) ; Restore Callee frame base
51 : ST 1, 2(4) ;  Store argument 1 into callee frame
52 : LDA  4, 4(5) ; Restore Call frame base
53 : LDA 6, 57(0) ;  Compute return address
54 : ST 6, 0(4) ;  Store return address in callee frame
55 : ADD  5, 4, 0 ;  Update pointer
56 : LDA 7, 73(0) ;  Call remainder
57 : LD 1, 3(5) ;  Load callee return value into R1
58 : LDC  4, 4(0) ;  Load frame size
59 : SUB  5, 5, 4 ;  Restore pointer
60 : LDA  4, 4(5) ; Restore Callee frame base
61 : ST 1, 2(4) ;  Store argument 1 into callee frame
62 : LDA  4, 4(5) ; Restore Call frame base
63 : LDA 6, 67(0) ;  Compute return address
64 : ST 6, 0(4) ;  Store return address in callee frame
65 : ADD  5, 4, 0 ;  Update pointer
66 : LDA 7, 31(0) ;  Call gcd
67 : LD 1, 3(5) ;  Load callee return value into R1
68 : LDC  4, 4(0) ;  Load frame size
69 : SUB  5, 5, 4 ;  Restore pointer
70 : ST   1, 3(5) ;  Store function result into stack frame
71 : LD   6, 0(5) ;  Load return address
72 : LDA  7, 0(6) ;  Return to caller
73 : LD   1, 1(5) ;  Load parameter 'a' into R1
74 : LDC  3, 1(0) ;  Store left operand into temporary register
75 : LD   1, 2(5) ;  Load parameter 'b' into R1
76 : LDC  2, 3(0) ;  Restore left operand
77 : SUB  1, 2, 1 ;  left - right for less-than check
78 : JLT  1, 2(7) ;  If R1 < 0, jump to true
79 : LDC  1, 0(0) ;  false
80 : LDA  7, 1(7) ;  skip setting true
81 : LDC  1, 1(0) ;  true
82 : JEQ  1, 85(0) ;  If condition is false, jump to ELSE
83 : LD   1, 1(5) ;  Load parameter 'a' into R1
84 : LDA  7, 103(0) ;  Skip ELSE block
85 : LD   1, 1(5) ;  Load parameter 'a' into R1
86 : LDC  3, 1(0) ;  Store left operand into temporary register
87 : LD   1, 2(5) ;  Load parameter 'b' into R1
88 : LDC  2, 3(0) ;  Restore left operand
89 : SUB  1, 2, 1 ;  R1 = left - right
90 : LDA  4, 4(5) ; Restore Callee frame base
91 : ST 1, 1(4) ;  Store argument 0 into callee frame
92 : LD   1, 2(5) ;  Load parameter 'b' into R1
93 : LDA  4, 4(5) ; Restore Callee frame base
94 : ST 1, 2(4) ;  Store argument 1 into callee frame
95 : LDA  4, 4(5) ; Restore Call frame base
96 : LDA 6, 100(0) ;  Compute return address
97 : ST 6, 0(4) ;  Store return address in callee frame
98 : ADD  5, 4, 0 ;  Update pointer
99 : LDA 7, 73(0) ;  Call remainder
100 : LD 1, 3(5) ;  Load callee return value into R1
101 : LDC  4, 4(0) ;  Load frame size
102 : SUB  5, 5, 4 ;  Restore pointer
103 : ST   1, 3(5) ;  Store function result into stack frame
104 : LD   6, 0(5) ;  Load return address
105 : LDA  7, 0(6) ;  Return to caller
