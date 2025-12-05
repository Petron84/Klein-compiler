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
14 : LDA  3, 4(5) ; Restore Callee frame base
15 : ST 1, 1(3) ;  Store argument 0 into callee frame
16 : LD   1, 2(5) ;  Load parameter 'b' into R1
17 : LDA  3, 4(5) ; Restore Callee frame base
18 : ST 1, 2(3) ;  Store argument 1 into callee frame
19 : LDA  3, 4(5) ; Restore Call frame base
20 : LDA 6, 24(0)) ;  Compute return address
21 : ST 6, 0(3) ;  Store return address in callee frame
22 : ADD  5, 3, 0 ;  Update pointer
23 : LDA 7, 31(0) ;  Call gcd
24 : LD 1, 3(5) ;  Load callee return value into R1
25 : LDC  4, 4(0) ;  Load frame size
26 : SUB  5, 5, 4 ;  Restore pointer
27 : ST 1, 6(0) ;  Store function-call result into caller's return slot
28 : LD   1, 6(0) ;  Load return value into register 1
29 : LD  6, 3(0) ;  Load return address for main function into register 6
30 : LDA  7, 0(6) ;  Jump to return address of main function
31 : LD   1, 2(5) ;  Load parameter 'b' into R1
32 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
33 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
34 : SUB  1, 2, 1 ;  left - right for equality check
35 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
36 : LDC  1, 0(0) ;  false
37 : LDA  7, 1(7) ;  skip setting true
38 : LDC  1, 1(0) ;  true
39 : JEQ  1, 42(0) ;  If condition is false, jump to ELSE
40 : LD   1, 1(5) ;  Load parameter 'a' into R1
41 : LDA  7, 69(0) ;  Skip ELSE block
42 : LD   1, 2(5) ;  Load parameter 'b' into R1
43 : LDA  3, 4(5) ; Restore Callee frame base
44 : ST 1, 1(3) ;  Store argument 0 into callee frame
45 : LD   1, 1(5) ;  Load parameter 'a' into R1
46 : LDA  3, 4(5) ; Restore Callee frame base
47 : ST 1, 1(3) ;  Store argument 0 into callee frame
48 : LD   1, 2(5) ;  Load parameter 'b' into R1
49 : LDA  3, 4(5) ; Restore Callee frame base
50 : ST 1, 2(3) ;  Store argument 1 into callee frame
51 : LDA  3, 4(5) ; Restore Call frame base
52 : LDA 6, 56(0)) ;  Compute return address
53 : ST 6, 0(3) ;  Store return address in callee frame
54 : ADD  5, 3, 0 ;  Update pointer
55 : LDA 7, 72(0) ;  Call remainder
56 : LD 1, 3(5) ;  Load callee return value into R1
57 : LDC  4, 4(0) ;  Load frame size
58 : SUB  5, 5, 4 ;  Restore pointer
59 : LDA  3, 4(5) ; Restore Callee frame base
60 : ST 1, 2(3) ;  Store argument 1 into callee frame
61 : LDA  3, 4(5) ; Restore Call frame base
62 : LDA 6, 66(0)) ;  Compute return address
63 : ST 6, 0(3) ;  Store return address in callee frame
64 : ADD  5, 3, 0 ;  Update pointer
65 : LDA 7, 31(0) ;  Call gcd
66 : LD 1, 3(5) ;  Load callee return value into R1
67 : LDC  4, 4(0) ;  Load frame size
68 : SUB  5, 5, 4 ;  Restore pointer
69 : ST   1, 3(5) ;  Store function result into stack frame
70 : LD   6, 0(5) ;  Load return address
71 : LDA  7, 0(6) ;  Return to caller
72 : LD   1, 1(5) ;  Load parameter 'a' into R1
73 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
74 : LD   1, 2(5) ;  Load parameter 'b' into R1
75 : SUB  1, 2, 1 ;  left - right for less-than check
76 : JLT  1, 2(7) ;  If R1 < 0, jump to true
77 : LDC  1, 0(0) ;  false
78 : LDA  7, 1(7) ;  skip setting true
79 : LDC  1, 1(0) ;  true
80 : JEQ  1, 83(0) ;  If condition is false, jump to ELSE
81 : LD   1, 1(5) ;  Load parameter 'a' into R1
82 : LDA  7, 100(0) ;  Skip ELSE block
83 : LD   1, 1(5) ;  Load parameter 'a' into R1
84 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
85 : LD   1, 2(5) ;  Load parameter 'b' into R1
86 : SUB  1, 2, 1 ;  R1 = left - right
87 : LDA  3, 4(5) ; Restore Callee frame base
88 : ST 1, 1(3) ;  Store argument 0 into callee frame
89 : LD   1, 2(5) ;  Load parameter 'b' into R1
90 : LDA  3, 4(5) ; Restore Callee frame base
91 : ST 1, 2(3) ;  Store argument 1 into callee frame
92 : LDA  3, 4(5) ; Restore Call frame base
93 : LDA 6, 97(0)) ;  Compute return address
94 : ST 6, 0(3) ;  Store return address in callee frame
95 : ADD  5, 3, 0 ;  Update pointer
96 : LDA 7, 72(0) ;  Call remainder
97 : LD 1, 3(5) ;  Load callee return value into R1
98 : LDC  4, 4(0) ;  Load frame size
99 : SUB  5, 5, 4 ;  Restore pointer
100 : ST   1, 3(5) ;  Store function result into stack frame
101 : LD   6, 0(5) ;  Load return address
102 : LDA  7, 0(6) ;  Return to caller
