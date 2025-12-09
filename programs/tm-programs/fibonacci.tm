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
23 : LDA  7, 42(0) ;  Skip ELSE block
24 : LDA 4, 6(5) ; Base of callee frame
25 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
26 : ST 1, 1(4) ; Store argument 0 in callee
27 : LD   1, 1(5) ;  Load parameter 'elementWanted' into R1
28 : ST 1, 2(4) ; Store argument 1 in callee
29 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
30 : ST 1, 3(4) ; Store argument 2 in callee
31 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
32 : ST 1, 4(4) ; Store argument 3 in callee
33 : LDA 6, 37(0) ; Return address
34 : ST 6, 0(4) ; Store return in callee frame
35 : ADD 5, 4, 0 ; Push callee frame
36 : LDA 7, 45(0) ; Call addNext
37 : LD   1, 5(5) ;  Load function result
38 : LDC   2, 6(0) ;  Caller frame size
39 : SUB   5, 5, 2 ;  Pop back to caller
40 : SUB   4, 4, 2 ;  Pop back to caller
41 : ST 1, 2(5) ; Store result into caller’s frame
42 : LD   1, 2(5) ;  Load return value into register 1
43 : LD  6, 0(5) ;  Load return address for main function into register 6
44 : LDA  7, 0(6) ;  Jump to return address of main function
45 : LD   1, 2(5) ;  Load parameter 'elementWanted' into R1
46 : ADD  3, 1, 0 ;  Store left operand into temporary register
47 : LD   1, 1(5) ;  Load parameter 'currentElement' into R1
48 : ADD  2, 3, 0 ;  Restore left operand
49 : SUB  1, 2, 1 ;  left - right for equality check
50 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
51 : LDC  1, 0(0) ;  false
52 : LDA  7, 1(7) ;  skip setting true
53 : LDC  1, 1(0) ;  true
54 : JEQ  1, 57(0) ;  If condition is false, jump to ELSE
55 : LD   1, 4(5) ;  Load parameter 'currentSum' into R1
56 : LDA  7, 82(0) ;  Skip ELSE block
57 : LDA 4, 6(5) ; Base of callee frame
58 : LD   1, 1(5) ;  Load parameter 'currentElement' into R1
59 : ADD  3, 1, 0 ;  Store left operand into temporary register
60 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
61 : ADD  2, 3, 0 ;  Restore left operand
62 : ADD  1, 2, 1 ;  R1 = left + right
63 : ST 1, 1(4) ; Store argument 0 in callee
64 : LD   1, 2(5) ;  Load parameter 'elementWanted' into R1
65 : ST 1, 2(4) ; Store argument 1 in callee
66 : LD   1, 4(5) ;  Load parameter 'currentSum' into R1
67 : ST 1, 3(4) ; Store argument 2 in callee
68 : LD   1, 3(5) ;  Load parameter 'previousSum' into R1
69 : ADD  3, 1, 0 ;  Store left operand into temporary register
70 : LD   1, 4(5) ;  Load parameter 'currentSum' into R1
71 : ADD  2, 3, 0 ;  Restore left operand
72 : ADD  1, 2, 1 ;  R1 = left + right
73 : ST 1, 4(4) ; Store argument 3 in callee
74 : LDA 6, 78(0) ; Return address
75 : ST 6, 0(4) ; Store return in callee frame
76 : ADD 5, 4, 0 ; Push callee frame
77 : LDA 7, 45(0) ; Call addNext
78 : LD   1, 5(5) ;  Load function result
79 : LDC   2, 6(0) ;  Caller frame size
80 : SUB   5, 5, 2 ;  Pop back to caller
81 : SUB   4, 4, 2 ;  Pop back to caller
82 : ST   1, 5(5) ;  Store function result into stack frame
83 : LD   6, 0(5) ;  Load return address
84 : LDA  7, 0(6) ;  Return to caller
