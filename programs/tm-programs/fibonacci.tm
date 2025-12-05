0 : LDC  5, 2(0) ;  Set DMEM pointer to main stack frame
1 : LD   2, 1(0) ;  Load CLI arg 1 into register
2 : ST   2, 1(5) ;  Store the argument into stack frame
3 : LDA  6, 2(7) ;  Calculate return address
4 : ST   6, 0(5) ;  Store return address in main stack frame
5 : LDA  7, 11(0) ;  Load address of main IMEM block - branch to function
6 : OUT  1, 0, 0 ;  Return result
7 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
8 : OUT  1, 0, 0 ;  Hardcoded print function
9 : LD   6, 0(5) ;  Load return addess from stack frame.
10 : LDA  7, 0(6) ;  Jump to return address.
11 : LD   1, 1(5) ;  Load parameter 'elementWanted' into R1
12 : ADD  3, 1, 0 ;  Save left operand
13 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
14 : ADD  2, 3, 0 ;  restore left operand
15 : SUB  1, 2, 1 ;  left - right for less-than check
16 : JLT  1, 2(7) ;  If R1 < 0, jump to true
17 : LDC  1, 0(0) ;  false
18 : LDA  7, 1(7) ;  skip setting true
19 : LDC  1, 1(0) ;  true
20 : JEQ  1, 24(0) ;  If condition is false, jump to ELSE
21 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
22 : ST 1, 2(5) ;  Store result into current frame's return slot
23 : LDA  7, 50(0) ;  Skip ELSE block
24 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
25 : ST   1, 3(5) ;  Spill Temporary
26 : LD   1, 1(5) ;  Load parameter 'elementWanted' into R1
27 : ST   1, 4(5) ;  Spill Temporary
28 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
29 : ST   1, 5(5) ;  Spill Temporary
30 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
31 : ST   1, 6(5) ;  Spill Temporary
32 : LDA 4, 6(5) ; Restore Callee frame base
33 : LD   1, 6(5) ;  Restore Temporary
34 : ST 1, 4(4) ;  Store argument 3 into callee frame
35 : LD   1, 5(5) ;  Restore Temporary
36 : ST 1, 3(4) ;  Store argument 2 into callee frame
37 : LD   1, 4(5) ;  Restore Temporary
38 : ST 1, 2(4) ;  Store argument 1 into callee frame
39 : LD   1, 3(5) ;  Restore Temporary
40 : ST 1, 1(4) ;  Store argument 0 into callee frame
41 : LDA 4, 6(5) ; Restore Call frame base
42 : LDA 6, 46(0) ;  Compute return address
43 : ST 6, 0(4) ;  Store return address in callee frame
44 : ADD 5, 4, 0 ;  Update pointer
45 : LDA 7, 53(0) ;  Call addNext
46 : LD 1, 5(5) ;  Load callee return value into R1
47 : LDC 4, 6(0) ;  Load frame size
48 : SUB 5, 5, 4 ;  Restore pointer
49 : ST 1, 2(5) ;  Store result into current frame's return slot
50 : LD   1, 2(5) ;  Load return value into register 1
51 : LD  6, 0(5) ;  Load return address for main function into register 6
52 : LDA  7, 0(6) ;  Jump to return address of main function
53 : LD   1, 2(5) ;  Load parameter 'elementWanted' into R1
54 : ADD  3, 1, 0 ;  Save left operand
55 : LD   1, 1(5) ;  Load parameter 'currentElement' into R1
56 : ADD  2, 3, 0 ;  restore left operand
57 : SUB  1, 2, 1 ;  left - right for equality check
58 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
59 : LDC  1, 0(0) ;  false
60 : LDA  7, 1(7) ;  skip setting true
61 : LDC  1, 1(0) ;  true
62 : JEQ  1, 65(0) ;  If condition is false, jump to ELSE
63 : LD   1, 4(5) ;  Load parameter 'currentSum' into R1
64 : LDA  7, 98(0) ;  Skip ELSE block
65 : LD   1, 1(5) ;  Load parameter 'currentElement' into R1
66 : ADD  3, 1, 0 ;  Save left operand
67 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
68 : ADD  2, 3, 0 ;  restore left operand
69 : ADD  1, 2, 1 ;  R1 = left + right
70 : ST   1, 6(5) ;  Spill Temporary
71 : LD   1, 2(5) ;  Load parameter 'elementWanted' into R1
72 : ST   1, 7(5) ;  Spill Temporary
73 : LD   1, 4(5) ;  Load parameter 'currentSum' into R1
74 : ST   1, 8(5) ;  Spill Temporary
75 : LD   1, 3(5) ;  Load parameter 'previousSum' into R1
76 : ADD  3, 1, 0 ;  Save left operand
77 : LD   1, 4(5) ;  Load parameter 'currentSum' into R1
78 : ADD  2, 3, 0 ;  restore left operand
79 : ADD  1, 2, 1 ;  R1 = left + right
80 : ST   1, 9(5) ;  Spill Temporary
81 : LDA 4, 6(5) ; Restore Callee frame base
82 : LD   1, 9(5) ;  Restore Temporary
83 : ST 1, 4(4) ;  Store argument 3 into callee frame
84 : LD   1, 8(5) ;  Restore Temporary
85 : ST 1, 3(4) ;  Store argument 2 into callee frame
86 : LD   1, 7(5) ;  Restore Temporary
87 : ST 1, 2(4) ;  Store argument 1 into callee frame
88 : LD   1, 6(5) ;  Restore Temporary
89 : ST 1, 1(4) ;  Store argument 0 into callee frame
90 : LDA 4, 6(5) ; Restore Call frame base
91 : LDA 6, 95(0) ;  Compute return address
92 : ST 6, 0(4) ;  Store return address in callee frame
93 : ADD 5, 4, 0 ;  Update pointer
94 : LDA 7, 53(0) ;  Call addNext
95 : LD 1, 5(5) ;  Load callee return value into R1
96 : LDC 4, 6(0) ;  Load frame size
97 : SUB 5, 5, 4 ;  Restore pointer
98 : ST   1, 5(5) ;  Store function result into stack frame
99 : LD   6, 0(5) ;  Load return address
100 : LDA  7, 0(6) ;  Return to caller
