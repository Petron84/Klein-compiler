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
40 : LDA  7, 65(0) ;  Skip ELSE block
41 : LDA 4, 4(5) ; Base of callee frame
42 : LD   1, 2(5) ;  Load parameter 'b' into R1
43 : ST 1, 1(4) ; Argument 0
44 : LDA  4, 4(4) ;  Push additional call frame for nested function calls
45 : LDA 4, 4(5) ; Base of callee frame
46 : LD   1, 1(5) ;  Load parameter 'a' into R1
47 : ST 1, 1(4) ; Argument 0
48 : LD   1, 2(5) ;  Load parameter 'b' into R1
49 : ST 1, 2(4) ; Argument 1
50 : LDA 6, 54(0) ; Return address
51 : ST 6, 0(4) ; Store return in callee frame
52 : ADD 5, 4, 0 ; Push callee frame
53 : LDA 7, 68(0) ; Call remainder
54 : LD 1, 3(5) ; Load function result
55 : LDC 2, 4(0) ; Caller frame size
56 : SUB 5, 5, 2 ; Pop back to caller
57 : ST 1, 2(4) ; Argument 1
58 : LDA 6, 62(0) ; Return address
59 : ST 6, 0(4) ; Store return in callee frame
60 : ADD 5, 4, 0 ; Push callee frame
61 : LDA 7, 29(0) ; Call gcd
62 : LD 1, 3(5) ; Load function result
63 : LDC 2, 4(0) ; Caller frame size
64 : SUB 5, 5, 2 ; Pop back to caller
65 : ST   1, 3(5) ;  Store function result into stack frame
66 : LD   6, 0(5) ;  Load return address
67 : LDA  7, 0(6) ;  Return to caller
68 : LD   1, 1(5) ;  Load parameter 'a' into R1
69 : ADD  3, 1, 0 ;  Store left operand into temporary register
70 : LD   1, 2(5) ;  Load parameter 'b' into R1
71 : ADD  2, 3, 0 ;  Restore left operand
72 : SUB  1, 2, 1 ;  left - right for less-than check
73 : JLT  1, 2(7) ;  If R1 < 0, jump to true
74 : LDC  1, 0(0) ;  false
75 : LDA  7, 1(7) ;  skip setting true
76 : LDC  1, 1(0) ;  true
77 : JEQ  1, 80(0) ;  If condition is false, jump to ELSE
78 : LD   1, 1(5) ;  Load parameter 'a' into R1
79 : LDA  7, 96(0) ;  Skip ELSE block
80 : LDA 4, 4(5) ; Base of callee frame
81 : LD   1, 1(5) ;  Load parameter 'a' into R1
82 : ADD  3, 1, 0 ;  Store left operand into temporary register
83 : LD   1, 2(5) ;  Load parameter 'b' into R1
84 : ADD  2, 3, 0 ;  Restore left operand
85 : SUB  1, 2, 1 ;  R1 = left - right
86 : ST 1, 1(4) ; Argument 0
87 : LD   1, 2(5) ;  Load parameter 'b' into R1
88 : ST 1, 2(4) ; Argument 1
89 : LDA 6, 93(0) ; Return address
90 : ST 6, 0(4) ; Store return in callee frame
91 : ADD 5, 4, 0 ; Push callee frame
92 : LDA 7, 68(0) ; Call remainder
93 : LD 1, 3(5) ; Load function result
94 : LDC 2, 4(0) ; Caller frame size
95 : SUB 5, 5, 2 ; Pop back to caller
96 : ST   1, 3(5) ;  Store function result into stack frame
97 : LD   6, 0(5) ;  Load return address
98 : LDA  7, 0(6) ;  Return to caller
