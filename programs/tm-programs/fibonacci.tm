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
12 : ADD  3, 1, 0 ;  Store left operand into temporary register
13 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
14 : ADD  2, 3, 0 ;  Restore left operand
15 : SUB  1, 2, 1 ;  left - right for less-than check
16 : JLT  1, 2(7) ;  If R1 < 0, jump to true
17 : LDC  1, 0(0) ;  false
18 : LDA  7, 1(7) ;  skip setting true
19 : LDC  1, 1(0) ;  true
20 : JEQ  1, 24(0) ;  If condition is false, jump to ELSE
21 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
22 : ST 1, 2(5) ;  Store result into current frame's return slot
23 : LDA  7, 45(0) ;  Skip ELSE block
24 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
25 : LDA 4, 6(5) ; Base of callee frame
26 : ST 1, 1(4) ; Store argument 0 in callee
27 : LD   1, 1(5) ;  Load parameter 'elementWanted' into R1
28 : LDA 4, 6(5) ; Base of callee frame
29 : ST 1, 2(4) ; Store argument 1 in callee
30 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
31 : LDA 4, 6(5) ; Base of callee frame
32 : ST 1, 3(4) ; Store argument 2 in callee
33 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
34 : LDA 4, 6(5) ; Base of callee frame
35 : ST 1, 4(4) ; Store argument 3 in callee
36 : LDA 4, 6(5) ; Base of callee frame
37 : LDA 6, 41(0) ; Return address
38 : ST 6, 0(4) ; Store return in callee frame
39 : ADD 5, 4, 0 ; Push callee frame
40 : LDA 7, 48(0) ; Call addNext
41 : LD   1, 5(5) ;  Load function result
42 : LDC   2, 6(0) ;  Caller frame size
43 : SUB   5, 5, 2 ;  Pop back to caller
44 : ST 1, 2(5) ; Store result into caller’s frame
45 : LD   1, 2(5) ;  Load return value into register 1
46 : LD  6, 0(5) ;  Load return address for main function into register 6
47 : LDA  7, 0(6) ;  Jump to return address of main function
48 : LD   1, 2(5) ;  Load parameter 'elementWanted' into R1
49 : ADD  3, 1, 0 ;  Store left operand into temporary register
50 : LD   1, 1(5) ;  Load parameter 'currentElement' into R1
51 : ADD  2, 3, 0 ;  Restore left operand
52 : SUB  1, 2, 1 ;  left - right for equality check
53 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
54 : LDC  1, 0(0) ;  false
55 : LDA  7, 1(7) ;  skip setting true
56 : LDC  1, 1(0) ;  true
57 : JEQ  1, 60(0) ;  If condition is false, jump to ELSE
58 : LD   1, 4(5) ;  Load parameter 'currentSum' into R1
59 : LDA  7, 88(0) ;  Skip ELSE block
60 : LD   1, 1(5) ;  Load parameter 'currentElement' into R1
61 : ADD  3, 1, 0 ;  Store left operand into temporary register
62 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
63 : ADD  2, 3, 0 ;  Restore left operand
64 : ADD  1, 2, 1 ;  R1 = left + right
65 : LDA 4, 6(5) ; Base of callee frame
66 : ST 1, 1(4) ; Store argument 0 in callee
67 : LD   1, 2(5) ;  Load parameter 'elementWanted' into R1
68 : LDA 4, 6(5) ; Base of callee frame
69 : ST 1, 2(4) ; Store argument 1 in callee
70 : LD   1, 4(5) ;  Load parameter 'currentSum' into R1
71 : LDA 4, 6(5) ; Base of callee frame
72 : ST 1, 3(4) ; Store argument 2 in callee
73 : LD   1, 3(5) ;  Load parameter 'previousSum' into R1
74 : ADD  3, 1, 0 ;  Store left operand into temporary register
75 : LD   1, 4(5) ;  Load parameter 'currentSum' into R1
76 : ADD  2, 3, 0 ;  Restore left operand
77 : ADD  1, 2, 1 ;  R1 = left + right
78 : LDA 4, 6(5) ; Base of callee frame
79 : ST 1, 4(4) ; Store argument 3 in callee
80 : LDA 4, 6(5) ; Base of callee frame
81 : LDA 6, 85(0) ; Return address
82 : ST 6, 0(4) ; Store return in callee frame
83 : ADD 5, 4, 0 ; Push callee frame
84 : LDA 7, 48(0) ; Call addNext
85 : LD   1, 5(5) ;  Load function result
86 : LDC   2, 6(0) ;  Caller frame size
87 : SUB   5, 5, 2 ;  Pop back to caller
88 : ST   1, 5(5) ;  Store function result into stack frame
89 : LD   6, 0(5) ;  Load return address
90 : LDA  7, 0(6) ;  Return to caller
