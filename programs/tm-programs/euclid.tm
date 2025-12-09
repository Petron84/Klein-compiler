0 : LDC  5, 3(0) ;  Set DMEM pointer to main stack frame
1 : LD   2, 1(0) ;  Load CLI arg 1 into register
2 : ST   2, 1(5) ;  Store the argument into stack frame
3 : LD   2, 2(0) ;  Load CLI arg 2 into register
4 : ST   2, 2(5) ;  Store the argument into stack frame
5 : LDA  6, 4(7) ;  Calculate return address
6 : ST   6, 0(5) ;  Store return address in main stack frame
7 : LDC  4, 4(0) ;  Load size of main stack frame
8 : ADD  5, 5, 4 ;  Advance R5 to next frame
9 : LDA  7, 15(0) ;  Load address of main IMEM block - branch to function
10 : OUT  1, 0, 0 ;  Return result
11 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
12 : OUT  1, 0, 0 ;  Hardcoded print function
13 : LD   6, 0(5) ;  Load return addess from stack frame.
14 : LDA  7, 0(6) ;  Jump to return address.
15 : LDA  4, 0(5) ;  Save callee frame base
16 : LD   1, 1(5) ;  Load parameter 'a' into R1
17 : ST 1, 1(4) ;  Store argument 0 into callee frame
18 : LD   1, 2(5) ;  Load parameter 'b' into R1
19 : ST 1, 2(4) ;  Store argument 1 into callee frame
20 : LDA 6, 25(0) ;  Compute return address
21 : ST 6, 0(4) ;  Store return address in callee frame
22 : LDA  2, 4(4) ;  Compute end of frame
23 : ADD  5, 2, 0 ;  Advance pointer to end of frame
24 : LDA 7, 32(0) ;  Call gcd
25 : LD 1, 3(5) ;  Load callee return value into R1
26 : LDC  4, 4(0) ;  Load frame size
27 : SUB  5, 5, 4 ;  Restore pointer
28 : ST 1, 3(5) ;  Store result into current frame's return slot
29 : LD   1, 3(5) ;  Load return value into register 1
30 : LD  6, 0(5) ;  Load return address for main function into register 6
31 : LDA  7, 0(6) ;  Jump to return address of main function
32 : LD   1, 2(5) ;  Load parameter 'b' into R1
33 : ADD  3, 1, 0 ;  Store left operand into temporary register
34 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
35 : ADD  2, 3, 0 ;  Restore left operand
36 : SUB  1, 2, 1 ;  left - right for equality check
37 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
38 : LDC  1, 0(0) ;  false
39 : LDA  7, 1(7) ;  skip setting true
40 : LDC  1, 1(0) ;  true
41 : JEQ  1, 44(0) ;  If condition is false, jump to ELSE
42 : LD   1, 1(5) ;  Load parameter 'a' into R1
43 : LDA  7, 71(0) ;  Skip ELSE block
44 : LDA  4, 0(5) ;  Save callee frame base
45 : LD   1, 2(5) ;  Load parameter 'b' into R1
46 : ST 1, 1(4) ;  Store argument 0 into callee frame
47 : LDA  4, 0(5) ;  Save callee frame base
48 : LD   1, 1(5) ;  Load parameter 'a' into R1
49 : ST 1, 1(4) ;  Store argument 0 into callee frame
50 : LD   1, 2(5) ;  Load parameter 'b' into R1
51 : ST 1, 2(4) ;  Store argument 1 into callee frame
52 : LDA 6, 57(0) ;  Compute return address
53 : ST 6, 0(4) ;  Store return address in callee frame
54 : LDA  2, 4(4) ;  Compute end of frame
55 : ADD  5, 2, 0 ;  Advance pointer to end of frame
56 : LDA 7, 74(0) ;  Call remainder
57 : LD 1, 3(5) ;  Load callee return value into R1
58 : LDC  4, 4(0) ;  Load frame size
59 : SUB  5, 5, 4 ;  Restore pointer
60 : LDC  2, 4(0) ;  Stores arg frame size
61 : SUB  5, 5, 2 ;  Pop frame
62 : ST 1, 2(4) ;  Store argument 1 into callee frame
63 : LDA 6, 68(0) ;  Compute return address
64 : ST 6, 0(4) ;  Store return address in callee frame
65 : LDA  2, 4(4) ;  Compute end of frame
66 : ADD  5, 2, 0 ;  Advance pointer to end of frame
67 : LDA 7, 32(0) ;  Call gcd
68 : LD 1, 3(5) ;  Load callee return value into R1
69 : LDC  4, 4(0) ;  Load frame size
70 : SUB  5, 5, 4 ;  Restore pointer
71 : ST   1, 3(5) ;  Store function result into stack frame
72 : LD   6, 0(5) ;  Load return address
73 : LDA  7, 0(6) ;  Return to caller
74 : LD   1, 1(5) ;  Load parameter 'a' into R1
75 : ADD  3, 1, 0 ;  Store left operand into temporary register
76 : LD   1, 2(5) ;  Load parameter 'b' into R1
77 : ADD  2, 3, 0 ;  Restore left operand
78 : SUB  1, 2, 1 ;  left - right for less-than check
79 : JLT  1, 2(7) ;  If R1 < 0, jump to true
80 : LDC  1, 0(0) ;  false
81 : LDA  7, 1(7) ;  skip setting true
82 : LDC  1, 1(0) ;  true
83 : JEQ  1, 86(0) ;  If condition is false, jump to ELSE
84 : LD   1, 1(5) ;  Load parameter 'a' into R1
85 : LDA  7, 103(0) ;  Skip ELSE block
86 : LDA  4, 0(5) ;  Save callee frame base
87 : LD   1, 1(5) ;  Load parameter 'a' into R1
88 : ADD  3, 1, 0 ;  Store left operand into temporary register
89 : LD   1, 2(5) ;  Load parameter 'b' into R1
90 : ADD  2, 3, 0 ;  Restore left operand
91 : SUB  1, 2, 1 ;  R1 = left - right
92 : ST 1, 1(4) ;  Store argument 0 into callee frame
93 : LD   1, 2(5) ;  Load parameter 'b' into R1
94 : ST 1, 2(4) ;  Store argument 1 into callee frame
95 : LDA 6, 100(0) ;  Compute return address
96 : ST 6, 0(4) ;  Store return address in callee frame
97 : LDA  2, 4(4) ;  Compute end of frame
98 : ADD  5, 2, 0 ;  Advance pointer to end of frame
99 : LDA 7, 74(0) ;  Call remainder
100 : LD 1, 3(5) ;  Load callee return value into R1
101 : LDC  4, 4(0) ;  Load frame size
102 : SUB  5, 5, 4 ;  Restore pointer
103 : ST   1, 3(5) ;  Store function result into stack frame
104 : LD   6, 0(5) ;  Load return address
105 : LDA  7, 0(6) ;  Return to caller
