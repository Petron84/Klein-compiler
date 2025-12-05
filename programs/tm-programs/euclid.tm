1 : LDC 5, 3(0) ;  Set DMEM pointer to main stack frame
2 : LD  2, 1(0) ;  Load CLI arg 1 into R2
3 : ST  2, 1(5) ;  Store the argument 1 into main frame
4 : LD  2, 2(0) ;  Load CLI arg 2 into R2
5 : ST  2, 2(5) ;  Store the argument 2 into main frame
6 : LDA 6, 2(7) ;  Calculate return address
7 : ST  6, 0(5) ;  Store return address in main stack frame
8 : LDA 7, 16(0) ;  Load address of main IMEM block - branch to function
9 : OUT 1, 0, 0 ;  Return result
10 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
12 : OUT 1, 0, 0 ;  Hardcoded print function
13 : LD  6, 0(5) ;  Load return addess from stack frame.
14 : LDA 7, 0(6) ;  Jump to return address.
16 : LD  1, 1(5) ;  Load parameter 'a' into R1
17 : LDA 4, 4(5) ;  Base of callee frame
18 : ST  1, 1(4) ;  Store argument 0 into callee frame
19 : LD  1, 2(5) ;  Load parameter 'b' into R1
20 : LDA 4, 4(5) ;  Base of callee frame
21 : ST  1, 2(4) ;  Store argument 1 into callee frame
22 : LDA 4, 4(5) ;  Base of callee frame
23 : LDA 6, 27(0) ;  Compute return address
24 : ST  6, 0(4) ;  Store RA in callee frame
25 : ADD 5, 4, 0 ;  Update pointer (enter callee)
26 : LDA 7, 35(0) ;  Call gcd
27 : LD  1, 3(5) ;  Load callee return value into R1
28 : LDC 3, 4(0) ;  Load callee frame size
29 : SUB 5, 5, 3 ;  Restore pointer
30 : ST  1, 3(5) ;  Store result into current frame's return slot
31 : LD  1, 3(5) ;  Load return value into R1
32 : LD  6, 0(5) ;  Load return address for main function into R6
33 : LDA 7, 0(6) ;  Jump to return address of main function
36 : LD  1, 2(5) ;  Load parameter 'b' into R1
37 : ADD 2, 1, 0 ;  R2 = left operand
38 : LDC 1, 0(0) ;  Load integer-literal into R1
39 : SUB 3, 2, 1 ;  delta = left - right
40 : JEQ 3, 2(7) ;  If delta == 0 jump to TRUE
41 : LDC 1, 0(0) ;  FALSE
42 : LDA 7, 1(7) ;  Skip TRUE
43 : LDC 1, 1(0) ;  TRUE
44 : JEQ 1, 49(0) ;  If condition is false, jump to ELSE
46 : LD  1, 1(5) ;  Load parameter 'a' into R1
47 : LDA 7, 76(0) ;  Skip ELSE block
49 : LD  1, 2(5) ;  Load parameter 'b' into R1
50 : LDA 4, 4(5) ;  Base of callee frame
51 : ST  1, 1(4) ;  Store argument 0 into callee frame
52 : LD  1, 1(5) ;  Load parameter 'a' into R1
53 : LDA 4, 4(5) ;  Base of callee frame
54 : ST  1, 1(4) ;  Store argument 0 into callee frame
55 : LD  1, 2(5) ;  Load parameter 'b' into R1
56 : LDA 4, 4(5) ;  Base of callee frame
57 : ST  1, 2(4) ;  Store argument 1 into callee frame
58 : LDA 4, 4(5) ;  Base of callee frame
59 : LDA 6, 63(0) ;  Compute return address
60 : ST  6, 0(4) ;  Store RA in callee frame
61 : ADD 5, 4, 0 ;  Update pointer (enter callee)
62 : LDA 7, 80(0) ;  Call remainder
63 : LD  1, 3(5) ;  Load callee return value into R1
64 : LDC 3, 4(0) ;  Load callee frame size
65 : SUB 5, 5, 3 ;  Restore pointer
66 : LDA 4, 4(5) ;  Base of callee frame
67 : ST  1, 2(4) ;  Store argument 1 into callee frame
68 : LDA 4, 4(5) ;  Base of callee frame
69 : LDA 6, 73(0) ;  Compute return address
70 : ST  6, 0(4) ;  Store RA in callee frame
71 : ADD 5, 4, 0 ;  Update pointer (enter callee)
72 : LDA 7, 35(0) ;  Call gcd
73 : LD  1, 3(5) ;  Load callee return value into R1
74 : LDC 3, 4(0) ;  Load callee frame size
75 : SUB 5, 5, 3 ;  Restore pointer
76 : ST  1, 3(5) ;  Store function result into stack frame
77 : LD  6, 0(5) ;  Load return address
78 : LDA 7, 0(6) ;  Return to caller
81 : LD  1, 1(5) ;  Load parameter 'a' into R1
82 : ADD 2, 1, 0 ;  R2 = left operand
83 : LD  1, 2(5) ;  Load parameter 'b' into R1
84 : SUB 3, 2, 1 ;  delta = left - right
85 : JLT 3, 2(7) ;  If delta < 0 jump to TRUE
86 : LDC 1, 0(0) ;  FALSE
87 : LDA 7, 1(7) ;  Skip TRUE
88 : LDC 1, 1(0) ;  TRUE
89 : JEQ 1, 94(0) ;  If condition is false, jump to ELSE
91 : LD  1, 1(5) ;  Load parameter 'a' into R1
92 : LDA 7, 112(0) ;  Skip ELSE block
94 : LD  1, 1(5) ;  Load parameter 'a' into R1
95 : ADD 2, 1, 0 ;  R2 = left operand
96 : LD  1, 2(5) ;  Load parameter 'b' into R1
97 : SUB 3, 2, 1 ;  R3 = left - right
98 : ADD 1, 3, 0 ;  R1 = R3
99 : LDA 4, 4(5) ;  Base of callee frame
100 : ST  1, 1(4) ;  Store argument 0 into callee frame
101 : LD  1, 2(5) ;  Load parameter 'b' into R1
102 : LDA 4, 4(5) ;  Base of callee frame
103 : ST  1, 2(4) ;  Store argument 1 into callee frame
104 : LDA 4, 4(5) ;  Base of callee frame
105 : LDA 6, 109(0) ;  Compute return address
106 : ST  6, 0(4) ;  Store RA in callee frame
107 : ADD 5, 4, 0 ;  Update pointer (enter callee)
108 : LDA 7, 80(0) ;  Call remainder
109 : LD  1, 3(5) ;  Load callee return value into R1
110 : LDC 3, 4(0) ;  Load callee frame size
111 : SUB 5, 5, 3 ;  Restore pointer
112 : ST  1, 3(5) ;  Store function result into stack frame
113 : LD  6, 0(5) ;  Load return address
114 : LDA 7, 0(6) ;  Return to caller
