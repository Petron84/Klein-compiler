0 : LDC 5, 4(0) ;  Set DMEM pointer to main stack frame
1 : ADD 4, 5, 0 ;  Set top of caller frame (scratch)
2 : LD 2, 1(0) ;  Load CLI arg 1 into register
3 : ST 2, 1(5) ;  Store the argument into stack frame
4 : LD 2, 2(0) ;  Load CLI arg 2 into register
5 : ST 2, 2(5) ;  Store the argument into stack frame
6 : LD 2, 3(0) ;  Load CLI arg 3 into register
7 : ST 2, 3(5) ;  Store the argument into stack frame
8 : LDA 6, 2(7) ;  Calculate return address (two lines ahead)
9 : ST 6, 0(5) ;  Store return address in main stack frame
10 : LDA 7, 16(0) ;  Load address of main IMEM block - branch to function
11 : OUT 1, 0, 0 ;  Return result
12 : HALT 0, 0, 0 ;  Terminate program execution
13 : OUT 1, 0, 0 ;  Hardcoded print function
14 : LD 6, 0(5) ;  Load return address from stack frame
15 : LDA 7, 0(6) ;  Jump to return address
16 : LDC 1, 0(0) ;  Load integer-literal value into R1
17 : ADD 3, 1, 0 ;  Move right operand to R3
18 : LD 1, 3(5) ;  Load parameter 'n' into R1
19 : ADD 2, 1, 0 ;  Move left operand to R2
20 : ADD 1, 3, 0 ;  Restore right operand into R1
21 : SUB 1, 2, 1 ;  left - right for equality check
22 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
23 : LDC 1, 0(0) ;  false
24 : LDA 7, 1(7) ;  skip setting true
25 : LDC 1, 1(0) ;  true
26 : JEQ 1, 30(0) ;  If condition is false, jump to ELSE
27 : LD 1, 1(5) ;  Load parameter 'a' into R1
28 : ST 1, 4(5) ;  Store result into current frame's return slot
29 : LDA 7, 45(0) ;  Skip ELSE block
30 : LDA 4, 5(5) ;  Base of callee frame
31 : LD 1, 1(5) ;  Load parameter 'a' into R1
32 : ST 1, 1(4) ;  Store argument 0 in callee
33 : LD 1, 2(5) ;  Load parameter 'b' into R1
34 : ST 1, 2(4) ;  Store argument 1 in callee
35 : LD 1, 3(5) ;  Load parameter 'n' into R1
36 : ST 1, 3(4) ;  Store argument 2 in callee
37 : LDA 6, 41(0) ;  Return address
38 : ST 6, 0(4) ;  Store return in callee frame
39 : ADD 5, 4, 0 ;  Push callee frame
40 : LDA 7, 66(0) ;  Call printAndDivide
41 : LD 1, 4(5) ;  Load function result
42 : LDC 2, 5(0) ;  Caller frame size
43 : SUB 5, 5, 2 ;  Pop back to caller
44 : ST 1, 4(5) ;  Store result into caller’s frame
45 : LD 1, 4(5) ;  Load return value into register 1
46 : LD 6, 0(5) ;  Load return address for main function into register 6
47 : LDA 7, 0(6) ;  Jump to runtime continuation
48 : LD 1, 2(5) ;  Load parameter 'n' into R1
49 : ADD 3, 1, 0 ;  Move right operand to R3
50 : LD 1, 1(5) ;  Load parameter 'm' into R1
51 : ADD 2, 1, 0 ;  Move left operand to R2
52 : ADD 1, 3, 0 ;  Restore right operand into R1
53 : DIV 1, 2, 1 ;  R1 = left / right
54 : ADD 2, 1, 0 ;  Move left operand to R2
55 : LD 1, 2(5) ;  Load parameter 'n' into R1
56 : MUL 1, 2, 1 ;  R1 = left * right
57 : ADD 3, 1, 0 ;  Move right operand to R3 (scratch)
58 : LD 1, 1(5) ;  Load parameter 'm' into R1
59 : ADD 2, 1, 0 ;  Move left operand to R2
60 : ADD 1, 3, 0 ;  Restore right operand into R1
61 : SUB 1, 2, 1 ;  R1 = left - right
62 : ST 1, 3(5) ;  Store result into current frame's return slot
63 : ST 1, 3(5) ;  Store function result into stack frame
64 : LD 6, 0(5) ;  Load return address
65 : LDA 7, 0(6) ;  Return to caller
66 : LD 1, 1(5) ;  Load parameter 'a' into R1
67 : ADD 3, 1, 0 ;  Move right operand to R3
68 : LDC 1, 10(0) ;  Load integer-literal value into R1
69 : ADD 2, 1, 0 ;  Move left operand to R2
70 : ADD 1, 3, 0 ;  Restore right operand into R1
71 : MUL 1, 2, 1 ;  R1 = left * right
72 : ADD 2, 1, 0 ;  Move left operand to R2
73 : LD 1, 2(5) ;  Load parameter 'b' into R1
74 : DIV 1, 2, 1 ;  R1 = left / right
75 : LDA 4, 3(5) ;  Base of callee frame
76 : LDA 6, 80(0) ;  Return address
77 : ST 6, 0(4) ;  Store return addr in callee frame
78 : ADD 5, 4, 0 ;  Push new frame
79 : LDA 7, 13(0) ;  Call print
80 : LDC 2, 3(0) ;  Caller frame size
81 : SUB 5, 5, 2 ;  Pop frame
82 : LDA 4, 5(5) ;  Base of callee frame
83 : LDA 4, 4(5) ;  Base of callee frame
84 : LDC 1, 10(0) ;  Load integer-literal value into R1
85 : ADD 3, 1, 0 ;  Move right operand to R3
86 : LD 1, 1(5) ;  Load parameter 'a' into R1
87 : ADD 2, 1, 0 ;  Move left operand to R2
88 : ADD 1, 3, 0 ;  Restore right operand into R1
89 : MUL 1, 2, 1 ;  R1 = left * right
90 : ST 1, 1(4) ;  Store argument 0 in callee
91 : LD 1, 2(5) ;  Load parameter 'b' into R1
92 : ST 1, 2(4) ;  Store argument 1 in callee
93 : LDA 6, 97(0) ;  Return address
94 : ST 6, 0(4) ;  Store return in callee frame
95 : ADD 5, 4, 0 ;  Push callee frame
96 : LDA 7, 48(0) ;  Call MOD
97 : LD 1, 3(5) ;  Load function result
98 : LDC 2, 4(0) ;  Caller frame size
99 : SUB 5, 5, 2 ;  Pop back to caller
100 : ST 1, 1(4) ;  Store argument 0 in callee
101 : LD 1, 2(5) ;  Load parameter 'b' into R1
102 : ST 1, 2(4) ;  Store argument 1 in callee
103 : LDC 1, 1(0) ;  Load integer-literal value into R1
104 : ADD 3, 1, 0 ;  Move right operand to R3
105 : LD 1, 3(5) ;  Load parameter 'n' into R1
106 : ADD 2, 1, 0 ;  Move left operand to R2
107 : ADD 1, 3, 0 ;  Restore right operand into R1
108 : SUB 1, 2, 1 ;  R1 = left - right
109 : ST 1, 3(4) ;  Store argument 2 in callee
110 : LDA 6, 114(0) ;  Return address
111 : ST 6, 0(4) ;  Store return in callee frame
112 : ADD 5, 4, 0 ;  Push callee frame
113 : LDA 7, 16(0) ;  Call main
114 : LD 1, 4(5) ;  Load function result
115 : LDC 2, 5(0) ;  Caller frame size
116 : SUB 5, 5, 2 ;  Pop back to caller
117 : ST 1, 4(5) ;  Store result into caller’s frame
118 : ST 1, 4(5) ;  Store function result into stack frame
119 : LD 6, 0(5) ;  Load return address
120 : LDA 7, 0(6) ;  Return to caller
