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
11 : LDC  1, 1(0) ;  Load integer-literal value into register 1
12 : ST   1, 3(4) ;  Store right operand result into return value slot
13 : LD   1, 1(5) ;  Load parameter 'elementWanted' into R1
14 : ADD  2, 1, 0 ;  Move left operand to register 2
15 : LD   1, 3(4) ;  Return right operand back into register 1
16 : SUB  1, 2, 1 ;  left - right for less-than check
17 : JLT  1, 2(7) ;  If R1 < 0, jump to true
18 : LDC  1, 0(0) ;  false
19 : LDA  7, 1(7) ;  skip setting true
20 : LDC  1, 1(0) ;  true
21 : JEQ  1, 25(0) ;  If condition is false, jump to ELSE
22 : LDC  1, 0(0) ;  Load integer-literal value into register 1
23 : ST 1, 2(5) ;  Store result into current frame's return slot
24 : LDA  7, 43(0) ;  Skip ELSE block
25 : LDA 4, 6(5) ; Base of callee frame
26 : LDC  1, 1(0) ;  Load integer-literal value into register 1
27 : ST 1, 1(4) ; Store argument 0 in callee
28 : LD   1, 1(5) ;  Load parameter 'elementWanted' into R1
29 : ST 1, 2(4) ; Store argument 1 in callee
30 : LDC  1, 0(0) ;  Load integer-literal value into register 1
31 : ST 1, 3(4) ; Store argument 2 in callee
32 : LDC  1, 1(0) ;  Load integer-literal value into register 1
33 : ST 1, 4(4) ; Store argument 3 in callee
34 : LDA 6, 38(0) ; Return address
35 : ST 6, 0(4) ; Store return in callee frame
36 : ADD 5, 4, 0 ; Push callee frame
37 : LDA 7, 46(0) ; Call addNext
38 : LD   1, 5(5) ;  Load function result
39 : LDC   2, 6(0) ;  Caller frame size
40 : SUB   5, 5, 2 ;  Pop back to caller
41 : SUB   4, 4, 2 ;  Pop back to caller
42 : ST 1, 2(5) ; Store result into caller’s frame
43 : LD   1, 2(5) ;  Load return value into register 1
44 : LD  6, 0(5) ;  Load return address for main function into register 6
45 : LDA  7, 0(6) ;  Jump to return address of main function
46 : LD   1, 1(5) ;  Load parameter 'currentElement' into R1
47 : ST   1, 3(4) ;  Store right operand result into return value slot
48 : LD   1, 2(5) ;  Load parameter 'elementWanted' into R1
49 : ADD  2, 1, 0 ;  Move left operand to register 2
50 : LD   1, 3(4) ;  Return right operand back into register 1
51 : SUB  1, 2, 1 ;  left - right for equality check
52 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
53 : LDC  1, 0(0) ;  false
54 : LDA  7, 1(7) ;  skip setting true
55 : LDC  1, 1(0) ;  true
56 : JEQ  1, 59(0) ;  If condition is false, jump to ELSE
57 : LD   1, 4(5) ;  Load parameter 'currentSum' into R1
58 : LDA  7, 86(0) ;  Skip ELSE block
59 : LDA 4, 6(5) ; Base of callee frame
60 : LDC  1, 1(0) ;  Load integer-literal value into register 1
61 : ST   1, 3(4) ;  Store right operand result into return value slot
62 : LD   1, 1(5) ;  Load parameter 'currentElement' into R1
63 : ADD  2, 1, 0 ;  Move left operand to register 2
64 : LD   1, 3(4) ;  Return right operand back into register 1
65 : ADD  1, 2, 1 ;  R1 = left + right
66 : ST 1, 1(4) ; Store argument 0 in callee
67 : LD   1, 2(5) ;  Load parameter 'elementWanted' into R1
68 : ST 1, 2(4) ; Store argument 1 in callee
69 : LD   1, 4(5) ;  Load parameter 'currentSum' into R1
70 : ST 1, 3(4) ; Store argument 2 in callee
71 : LD   1, 4(5) ;  Load parameter 'currentSum' into R1
72 : ST   1, 3(4) ;  Store right operand result into return value slot
73 : LD   1, 3(5) ;  Load parameter 'previousSum' into R1
74 : ADD  2, 1, 0 ;  Move left operand to register 2
75 : LD   1, 3(4) ;  Return right operand back into register 1
76 : ADD  1, 2, 1 ;  R1 = left + right
77 : ST 1, 4(4) ; Store argument 3 in callee
78 : LDA 6, 82(0) ; Return address
79 : ST 6, 0(4) ; Store return in callee frame
80 : ADD 5, 4, 0 ; Push callee frame
81 : LDA 7, 46(0) ; Call addNext
82 : LD   1, 5(5) ;  Load function result
83 : LDC   2, 6(0) ;  Caller frame size
84 : SUB   5, 5, 2 ;  Pop back to caller
85 : SUB   4, 4, 2 ;  Pop back to caller
86 : ST   1, 5(5) ;  Store function result into stack frame
87 : LD   6, 0(5) ;  Load return address
88 : LDA  7, 0(6) ;  Return to caller
