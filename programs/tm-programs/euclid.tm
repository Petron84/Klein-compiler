0 : LDC 5, 3(0) ;  Set DMEM pointer to main stack frame
1 : ADD 4, 5, 0 ;  Set top of caller frame (scratch)
2 : LD 2, 1(0) ;  Load CLI arg 1 into register
3 : ST 2, 1(5) ;  Store the argument into stack frame
4 : LD 2, 2(0) ;  Load CLI arg 2 into register
5 : ST 2, 2(5) ;  Store the argument into stack frame
6 : LDA 6, 2(7) ;  Calculate return address (two lines ahead)
7 : ST 6, 0(5) ;  Store return address in main stack frame
8 : LDA 7, 14(0) ;  Load address of main IMEM block - branch to function
9 : OUT 1, 0, 0 ;  Return result
10 : HALT 0, 0, 0 ;  Terminate program execution
11 : OUT 1, 0, 0 ;  Hardcoded print function
12 : LD 6, 0(5) ;  Load return address from stack frame
13 : LDA 7, 0(6) ;  Jump to return address
14 : LDA 4, 4(5) ;  Base of callee frame
15 : LD 1, 1(5) ;  Load parameter 'a' into R1
16 : ST 1, 1(4) ;  Store argument 0 in callee
17 : LD 1, 2(5) ;  Load parameter 'b' into R1
18 : ST 1, 2(4) ;  Store argument 1 in callee
19 : LDA 6, 23(0) ;  Return address
20 : ST 6, 0(4) ;  Store return in callee frame
21 : ADD 5, 4, 0 ;  Push callee frame
22 : LDA 7, 30(0) ;  Call gcd
23 : LD 1, 3(5) ;  Load function result
24 : LDC 2, 4(0) ;  Caller frame size
25 : SUB 5, 5, 2 ;  Pop back to caller
26 : ST 1, 3(5) ;  Store result into caller’s frame
27 : LD 1, 3(5) ;  Load return value into register 1
28 : LD 6, 0(5) ;  Load return address for main function into register 6
29 : LDA 7, 0(6) ;  Jump to runtime continuation
30 : LDC 1, 0(0) ;  Load integer-literal value into R1
31 : ADD 3, 1, 0 ;  Move right operand to R3
32 : LD 1, 2(5) ;  Load parameter 'b' into R1
33 : ADD 2, 1, 0 ;  Move left operand to R2
34 : ADD 1, 3, 0 ;  Restore right operand into R1
35 : SUB 1, 2, 1 ;  left - right for equality check
36 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
37 : LDC 1, 0(0) ;  false
38 : LDA 7, 1(7) ;  skip setting true
39 : LDC 1, 1(0) ;  true
40 : JEQ 1, 44(0) ;  If condition is false, jump to ELSE
41 : LD 1, 1(5) ;  Load parameter 'a' into R1
42 : ST 1, 3(5) ;  Store result into current frame's return slot
43 : LDA 7, 68(0) ;  Skip ELSE block
44 : LDA 4, 4(5) ;  Base of callee frame
45 : LD 1, 2(5) ;  Load parameter 'b' into R1
46 : ST 1, 1(4) ;  Store argument 0 in callee
47 : LDA 4, 4(5) ;  Base of callee frame
48 : LD 1, 1(5) ;  Load parameter 'a' into R1
49 : ST 1, 1(4) ;  Store argument 0 in callee
50 : LD 1, 2(5) ;  Load parameter 'b' into R1
51 : ST 1, 2(4) ;  Store argument 1 in callee
52 : LDA 6, 56(0) ;  Return address
53 : ST 6, 0(4) ;  Store return in callee frame
54 : ADD 5, 4, 0 ;  Push callee frame
55 : LDA 7, 71(0) ;  Call remainder
56 : LD 1, 3(5) ;  Load function result
57 : LDC 2, 4(0) ;  Caller frame size
58 : SUB 5, 5, 2 ;  Pop back to caller
59 : ST 1, 2(4) ;  Store argument 1 in callee
60 : LDA 6, 64(0) ;  Return address
61 : ST 6, 0(4) ;  Store return in callee frame
62 : ADD 5, 4, 0 ;  Push callee frame
63 : LDA 7, 30(0) ;  Call gcd
64 : LD 1, 3(5) ;  Load function result
65 : LDC 2, 4(0) ;  Caller frame size
66 : SUB 5, 5, 2 ;  Pop back to caller
67 : ST 1, 3(5) ;  Store result into caller’s frame
68 : ST 1, 3(5) ;  Store function result into stack frame
69 : LD 6, 0(5) ;  Load return address
70 : LDA 7, 0(6) ;  Return to caller
71 : LD 1, 2(5) ;  Load parameter 'b' into R1
72 : ADD 3, 1, 0 ;  Move right operand to R3
73 : LD 1, 1(5) ;  Load parameter 'a' into R1
74 : ADD 2, 1, 0 ;  Move left operand to R2
75 : ADD 1, 3, 0 ;  Restore right operand into R1
76 : SUB 1, 2, 1 ;  left - right for less-than check
77 : JLT 1, 2(7) ;  If R1 < 0, jump to true
78 : LDC 1, 0(0) ;  false
79 : LDA 7, 1(7) ;  skip setting true
80 : LDC 1, 1(0) ;  true
81 : JEQ 1, 85(0) ;  If condition is false, jump to ELSE
82 : LD 1, 1(5) ;  Load parameter 'a' into R1
83 : ST 1, 3(5) ;  Store result into current frame's return slot
84 : LDA 7, 103(0) ;  Skip ELSE block
85 : LDA 4, 4(5) ;  Base of callee frame
86 : LD 1, 2(5) ;  Load parameter 'b' into R1
87 : ADD 3, 1, 0 ;  Move right operand to R3
88 : LD 1, 1(5) ;  Load parameter 'a' into R1
89 : ADD 2, 1, 0 ;  Move left operand to R2
90 : ADD 1, 3, 0 ;  Restore right operand into R1
91 : SUB 1, 2, 1 ;  R1 = left - right
92 : ST 1, 1(4) ;  Store argument 0 in callee
93 : LD 1, 2(5) ;  Load parameter 'b' into R1
94 : ST 1, 2(4) ;  Store argument 1 in callee
95 : LDA 6, 99(0) ;  Return address
96 : ST 6, 0(4) ;  Store return in callee frame
97 : ADD 5, 4, 0 ;  Push callee frame
98 : LDA 7, 71(0) ;  Call remainder
99 : LD 1, 3(5) ;  Load function result
100 : LDC 2, 4(0) ;  Caller frame size
101 : SUB 5, 5, 2 ;  Pop back to caller
102 : ST 1, 3(5) ;  Store result into caller’s frame
103 : ST 1, 3(5) ;  Store function result into stack frame
104 : LD 6, 0(5) ;  Load return address
105 : LDA 7, 0(6) ;  Return to caller
