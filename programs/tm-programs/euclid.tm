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
14 : ST   1, 4(5) ;  Spill Temporary
15 : LD   1, 2(5) ;  Load parameter 'b' into R1
16 : ST   1, 5(5) ;  Spill Temporary
17 : LDA 4, 4(5) ; Restore Callee frame base
18 : LD   1, 5(5) ;  Restore Temporary
19 : ST 1, 2(4) ;  Store argument 1 into callee frame
20 : LD   1, 4(5) ;  Restore Temporary
21 : ST 1, 1(4) ;  Store argument 0 into callee frame
22 : LDA 4, 4(5) ; Restore Call frame base
23 : LDA 6, 27(0) ;  Compute return address
24 : ST 6, 0(4) ;  Store return address in callee frame
25 : ADD 5, 4, 0 ;  Update pointer
26 : LDA 7, 34(0) ;  Call gcd
27 : LD 1, 3(5) ;  Load callee return value into R1
28 : LDC 4, 4(0) ;  Load frame size
29 : SUB 5, 5, 4 ;  Restore pointer
30 : ST 1, 3(5) ;  Store result into current frame's return slot
31 : LD   1, 3(5) ;  Load return value into register 1
32 : LD  6, 0(5) ;  Load return address for main function into register 6
33 : LDA  7, 0(6) ;  Jump to return address of main function
34 : LD   1, 2(5) ;  Load parameter 'b' into R1
35 : ADD  3, 1, 0 ;  Save left operand
36 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
37 : ADD  2, 3, 0 ;  restore left operand
38 : SUB  1, 2, 1 ;  left - right for equality check
39 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
40 : LDC  1, 0(0) ;  false
41 : LDA  7, 1(7) ;  skip setting true
42 : LDC  1, 1(0) ;  true
43 : JEQ  1, 46(0) ;  If condition is false, jump to ELSE
44 : LD   1, 1(5) ;  Load parameter 'a' into R1
45 : LDA  7, 79(0) ;  Skip ELSE block
46 : LD   1, 2(5) ;  Load parameter 'b' into R1
47 : ST   1, 4(5) ;  Spill Temporary
48 : LD   1, 1(5) ;  Load parameter 'a' into R1
49 : ST   1, 5(5) ;  Spill Temporary
50 : LD   1, 2(5) ;  Load parameter 'b' into R1
51 : ST   1, 6(5) ;  Spill Temporary
52 : LDA 4, 4(5) ; Restore Callee frame base
53 : LD   1, 6(5) ;  Restore Temporary
54 : ST 1, 2(4) ;  Store argument 1 into callee frame
55 : LD   1, 5(5) ;  Restore Temporary
56 : ST 1, 1(4) ;  Store argument 0 into callee frame
57 : LDA 4, 4(5) ; Restore Call frame base
58 : LDA 6, 62(0) ;  Compute return address
59 : ST 6, 0(4) ;  Store return address in callee frame
60 : ADD 5, 4, 0 ;  Update pointer
61 : LDA 7, 82(0) ;  Call remainder
62 : LD 1, 3(5) ;  Load callee return value into R1
63 : LDC 4, 4(0) ;  Load frame size
64 : SUB 5, 5, 4 ;  Restore pointer
65 : ST   1, 5(5) ;  Spill Temporary
66 : LDA 4, 4(5) ; Restore Callee frame base
67 : LD   1, 5(5) ;  Restore Temporary
68 : ST 1, 2(4) ;  Store argument 1 into callee frame
69 : LD   1, 4(5) ;  Restore Temporary
70 : ST 1, 1(4) ;  Store argument 0 into callee frame
71 : LDA 4, 4(5) ; Restore Call frame base
72 : LDA 6, 76(0) ;  Compute return address
73 : ST 6, 0(4) ;  Store return address in callee frame
74 : ADD 5, 4, 0 ;  Update pointer
75 : LDA 7, 34(0) ;  Call gcd
76 : LD 1, 3(5) ;  Load callee return value into R1
77 : LDC 4, 4(0) ;  Load frame size
78 : SUB 5, 5, 4 ;  Restore pointer
79 : ST   1, 3(5) ;  Store function result into stack frame
80 : LD   6, 0(5) ;  Load return address
81 : LDA  7, 0(6) ;  Return to caller
82 : LD   1, 1(5) ;  Load parameter 'a' into R1
83 : ADD  3, 1, 0 ;  Save left operand
84 : LD   1, 2(5) ;  Load parameter 'b' into R1
85 : ADD  2, 3, 0 ;  restore left operand
86 : SUB  1, 2, 1 ;  left - right for less-than check
87 : JLT  1, 2(7) ;  If R1 < 0, jump to true
88 : LDC  1, 0(0) ;  false
89 : LDA  7, 1(7) ;  skip setting true
90 : LDC  1, 1(0) ;  true
91 : JEQ  1, 94(0) ;  If condition is false, jump to ELSE
92 : LD   1, 1(5) ;  Load parameter 'a' into R1
93 : LDA  7, 115(0) ;  Skip ELSE block
94 : LD   1, 1(5) ;  Load parameter 'a' into R1
95 : ADD  3, 1, 0 ;  Save left operand
96 : LD   1, 2(5) ;  Load parameter 'b' into R1
97 : ADD  2, 3, 0 ;  restore left operand
98 : SUB  1, 2, 1 ;  R1 = left - right
99 : ST   1, 4(5) ;  Spill Temporary
100 : LD   1, 2(5) ;  Load parameter 'b' into R1
101 : ST   1, 5(5) ;  Spill Temporary
102 : LDA 4, 4(5) ; Restore Callee frame base
103 : LD   1, 5(5) ;  Restore Temporary
104 : ST 1, 2(4) ;  Store argument 1 into callee frame
105 : LD   1, 4(5) ;  Restore Temporary
106 : ST 1, 1(4) ;  Store argument 0 into callee frame
107 : LDA 4, 4(5) ; Restore Call frame base
108 : LDA 6, 112(0) ;  Compute return address
109 : ST 6, 0(4) ;  Store return address in callee frame
110 : ADD 5, 4, 0 ;  Update pointer
111 : LDA 7, 82(0) ;  Call remainder
112 : LD 1, 3(5) ;  Load callee return value into R1
113 : LDC 4, 4(0) ;  Load frame size
114 : SUB 5, 5, 4 ;  Restore pointer
115 : ST   1, 3(5) ;  Store function result into stack frame
116 : LD   6, 0(5) ;  Load return address
117 : LDA  7, 0(6) ;  Return to caller
