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
23 : LDA  7, 41(0) ;  Skip ELSE block
24 : LDA 4, 3(5) ; Base of callee frame
25 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
26 : ST 1, 1(4) ; Argument 0
27 : LD   1, 1(5) ;  Load parameter 'elementWanted' into R1
28 : ST 1, 2(4) ; Argument 1
29 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
30 : ST 1, 3(4) ; Argument 2
31 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
32 : ST 1, 4(4) ; Argument 3
33 : LDA 6, 37(0) ; Return address
34 : ST 6, 0(4) ; Store return in callee frame
35 : ADD 5, 4, 0 ; Push callee frame
36 : LDA 7, 44(0) ; Call addNext
37 : LD 1, 5(5) ; Load function result
38 : LDC 2, 3(0) ; Caller frame size
39 : SUB 5, 5, 2 ; Pop back to caller
40 : ST 1, 2(5) ; Store result into caller’s frame
41 : LD   1, 2(5) ;  Load return value into register 1
42 : LD  6, 0(5) ;  Load return address for main function into register 6
43 : LDA  7, 0(6) ;  Jump to return address of main function
44 : LD   1, 2(5) ;  Load parameter 'elementWanted' into R1
45 : ADD  3, 1, 0 ;  Store left operand into temporary register
46 : LD   1, 1(5) ;  Load parameter 'currentElement' into R1
47 : ADD  2, 3, 0 ;  Restore left operand
48 : SUB  1, 2, 1 ;  left - right for equality check
49 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
50 : LDC  1, 0(0) ;  false
51 : LDA  7, 1(7) ;  skip setting true
52 : LDC  1, 1(0) ;  true
53 : JEQ  1, 56(0) ;  If condition is false, jump to ELSE
54 : LD   1, 4(5) ;  Load parameter 'currentSum' into R1
55 : LDA  7, 80(0) ;  Skip ELSE block
56 : LDA 4, 6(5) ; Base of callee frame
57 : LD   1, 1(5) ;  Load parameter 'currentElement' into R1
58 : ADD  3, 1, 0 ;  Store left operand into temporary register
59 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
60 : ADD  2, 3, 0 ;  Restore left operand
61 : ADD  1, 2, 1 ;  R1 = left + right
62 : ST 1, 1(4) ; Argument 0
63 : LD   1, 2(5) ;  Load parameter 'elementWanted' into R1
64 : ST 1, 2(4) ; Argument 1
65 : LD   1, 4(5) ;  Load parameter 'currentSum' into R1
66 : ST 1, 3(4) ; Argument 2
67 : LD   1, 3(5) ;  Load parameter 'previousSum' into R1
68 : ADD  3, 1, 0 ;  Store left operand into temporary register
69 : LD   1, 4(5) ;  Load parameter 'currentSum' into R1
70 : ADD  2, 3, 0 ;  Restore left operand
71 : ADD  1, 2, 1 ;  R1 = left + right
72 : ST 1, 4(4) ; Argument 3
73 : LDA 6, 77(0) ; Return address
74 : ST 6, 0(4) ; Store return in callee frame
75 : ADD 5, 4, 0 ; Push callee frame
76 : LDA 7, 44(0) ; Call addNext
77 : LD 1, 5(5) ; Load function result
78 : LDC 2, 6(0) ; Caller frame size
79 : SUB 5, 5, 2 ; Pop back to caller
80 : ST   1, 5(5) ;  Store function result into stack frame
81 : LD   6, 0(5) ;  Load return address
82 : LDA  7, 0(6) ;  Return to caller
