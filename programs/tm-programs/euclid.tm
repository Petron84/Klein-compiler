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
13 : LDA 4, 4(5) ; Base of callee frame
14 : LD   1, 1(5) ;  Load parameter 'a' into R1
15 : ST 1, 1(4) ; Argument 0
16 : LD   1, 2(5) ;  Load parameter 'b' into R1
17 : ST 1, 2(4) ; Argument 1
18 : LDA 6, 22(0) ; Return address
19 : ST 6, 0(4) ; Store return in callee frame
20 : ADD 5, 4, 0 ; Push callee frame
21 : LDA 7, 29(0) ; Call gcd
22 : LD 1, 3(5) ; Load function result
23 : LDC 2, 4(0) ; Caller frame size
24 : SUB 5, 5, 2 ; Pop back to caller
25 : ST 1, 3(5) ; Store result into caller’s frame
26 : LD   1, 3(5) ;  Load return value into register 1
27 : LD  6, 0(5) ;  Load return address for main function into register 6
28 : LDA  7, 0(6) ;  Jump to return address of main function
29 : LD   1, 2(5) ;  Load parameter 'b' into R1
30 : ADD  3, 1, 0 ;  Store left operand into temporary register
31 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
32 : ADD  2, 3, 0 ;  Restore left operand
33 : SUB  1, 2, 1 ;  left - right for equality check
34 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
35 : LDC  1, 0(0) ;  false
36 : LDA  7, 1(7) ;  skip setting true
37 : LDC  1, 1(0) ;  true
38 : JEQ  1, 41(0) ;  If condition is false, jump to ELSE
39 : LD   1, 1(5) ;  Load parameter 'a' into R1
40 : LDA  7, 64(0) ;  Skip ELSE block
41 : LDA 4, 4(5) ; Base of callee frame
42 : LD   1, 2(5) ;  Load parameter 'b' into R1
43 : ST 1, 1(4) ; Argument 0
44 : LDA 4, 4(5) ; Base of callee frame
45 : LD   1, 1(5) ;  Load parameter 'a' into R1
46 : ST 1, 1(4) ; Argument 0
47 : LD   1, 2(5) ;  Load parameter 'b' into R1
48 : ST 1, 2(4) ; Argument 1
49 : LDA 6, 53(0) ; Return address
50 : ST 6, 0(4) ; Store return in callee frame
51 : ADD 5, 4, 0 ; Push callee frame
52 : LDA 7, 67(0) ; Call remainder
53 : LD 1, 3(5) ; Load function result
54 : LDC 2, 4(0) ; Caller frame size
55 : SUB 5, 5, 2 ; Pop back to caller
56 : ST 1, 2(4) ; Argument 1
57 : LDA 6, 61(0) ; Return address
58 : ST 6, 0(4) ; Store return in callee frame
59 : ADD 5, 4, 0 ; Push callee frame
60 : LDA 7, 29(0) ; Call gcd
61 : LD 1, 3(5) ; Load function result
62 : LDC 2, 4(0) ; Caller frame size
63 : SUB 5, 5, 2 ; Pop back to caller
64 : ST   1, 3(5) ;  Store function result into stack frame
65 : LD   6, 0(5) ;  Load return address
66 : LDA  7, 0(6) ;  Return to caller
67 : LD   1, 1(5) ;  Load parameter 'a' into R1
68 : ADD  3, 1, 0 ;  Store left operand into temporary register
69 : LD   1, 2(5) ;  Load parameter 'b' into R1
70 : ADD  2, 3, 0 ;  Restore left operand
71 : SUB  1, 2, 1 ;  left - right for less-than check
72 : JLT  1, 2(7) ;  If R1 < 0, jump to true
73 : LDC  1, 0(0) ;  false
74 : LDA  7, 1(7) ;  skip setting true
75 : LDC  1, 1(0) ;  true
76 : JEQ  1, 79(0) ;  If condition is false, jump to ELSE
77 : LD   1, 1(5) ;  Load parameter 'a' into R1
78 : LDA  7, 95(0) ;  Skip ELSE block
79 : LDA 4, 4(5) ; Base of callee frame
80 : LD   1, 1(5) ;  Load parameter 'a' into R1
81 : ADD  3, 1, 0 ;  Store left operand into temporary register
82 : LD   1, 2(5) ;  Load parameter 'b' into R1
83 : ADD  2, 3, 0 ;  Restore left operand
84 : SUB  1, 2, 1 ;  R1 = left - right
85 : ST 1, 1(4) ; Argument 0
86 : LD   1, 2(5) ;  Load parameter 'b' into R1
87 : ST 1, 2(4) ; Argument 1
88 : LDA 6, 92(0) ; Return address
89 : ST 6, 0(4) ; Store return in callee frame
90 : ADD 5, 4, 0 ; Push callee frame
91 : LDA 7, 67(0) ; Call remainder
92 : LD 1, 3(5) ; Load function result
93 : LDC 2, 4(0) ; Caller frame size
94 : SUB 5, 5, 2 ; Pop back to caller
95 : ST   1, 3(5) ;  Store function result into stack frame
96 : LD   6, 0(5) ;  Load return address
97 : LDA  7, 0(6) ;  Return to caller
