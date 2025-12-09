0 : LDC  5, 2(0) ;  Set DMEM pointer to main stack frame
1 : LD   2, 1(0) ;  Load CLI arg 1 into register
2 : ST   2, 1(5) ;  Store the argument into stack frame
3 : LDA  6, 4(7) ;  Calculate return address
4 : ST   6, 0(5) ;  Store return address in main stack frame
5 : LDC  4, 3(0) ;  Load size of main stack frame
6 : ADD  5, 5, 4 ;  Advance R5 to next frame
7 : LDA  7, 13(0) ;  Load address of main IMEM block - branch to function
8 : OUT  1, 0, 0 ;  Return result
9 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
10 : OUT  1, 0, 0 ;  Hardcoded print function
11 : LD   6, 0(5) ;  Load return addess from stack frame.
12 : LDA  7, 0(6) ;  Jump to return address.
13 : LD   1, 1(5) ;  Load parameter 'elementWanted' into R1
14 : ADD  3, 1, 0 ;  Store left operand into temporary register
15 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
16 : ADD  2, 3, 0 ;  Restore left operand
17 : SUB  1, 2, 1 ;  left - right for less-than check
18 : JLT  1, 2(7) ;  If R1 < 0, jump to true
19 : LDC  1, 0(0) ;  false
20 : LDA  7, 1(7) ;  skip setting true
21 : LDC  1, 1(0) ;  true
22 : JEQ  1, 26(0) ;  If condition is false, jump to ELSE
23 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
24 : ST 1, 2(5) ;  Store result into current frame's return slot
25 : LDA  7, 44(0) ;  Skip ELSE block
26 : LDA  4, 0(5) ;  Save callee frame base
27 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
28 : ST 1, 1(4) ;  Store argument 0 into callee frame
29 : LD   1, 1(5) ;  Load parameter 'elementWanted' into R1
30 : ST 1, 2(4) ;  Store argument 1 into callee frame
31 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
32 : ST 1, 3(4) ;  Store argument 2 into callee frame
33 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
34 : ST 1, 4(4) ;  Store argument 3 into callee frame
35 : LDA 6, 40(0) ;  Compute return address
36 : ST 6, 0(4) ;  Store return address in callee frame
37 : LDA  2, 6(4) ;  Compute end of frame
38 : ADD  5, 2, 0 ;  Advance pointer to end of frame
39 : LDA 7, 47(0) ;  Call addNext
40 : LD 1, 5(5) ;  Load callee return value into R1
41 : LDC  4, 6(0) ;  Load frame size
42 : SUB  5, 5, 4 ;  Restore pointer
43 : ST 1, 2(5) ;  Store result into current frame's return slot
44 : LD   1, 2(5) ;  Load return value into register 1
45 : LD  6, 0(5) ;  Load return address for main function into register 6
46 : LDA  7, 0(6) ;  Jump to return address of main function
47 : LD   1, 2(5) ;  Load parameter 'elementWanted' into R1
48 : ADD  3, 1, 0 ;  Store left operand into temporary register
49 : LD   1, 1(5) ;  Load parameter 'currentElement' into R1
50 : ADD  2, 3, 0 ;  Restore left operand
51 : SUB  1, 2, 1 ;  left - right for equality check
52 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
53 : LDC  1, 0(0) ;  false
54 : LDA  7, 1(7) ;  skip setting true
55 : LDC  1, 1(0) ;  true
56 : JEQ  1, 59(0) ;  If condition is false, jump to ELSE
57 : LD   1, 4(5) ;  Load parameter 'currentSum' into R1
58 : LDA  7, 84(0) ;  Skip ELSE block
59 : LDA  4, 0(5) ;  Save callee frame base
60 : LD   1, 1(5) ;  Load parameter 'currentElement' into R1
61 : ADD  3, 1, 0 ;  Store left operand into temporary register
62 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
63 : ADD  2, 3, 0 ;  Restore left operand
64 : ADD  1, 2, 1 ;  R1 = left + right
65 : ST 1, 1(4) ;  Store argument 0 into callee frame
66 : LD   1, 2(5) ;  Load parameter 'elementWanted' into R1
67 : ST 1, 2(4) ;  Store argument 1 into callee frame
68 : LD   1, 4(5) ;  Load parameter 'currentSum' into R1
69 : ST 1, 3(4) ;  Store argument 2 into callee frame
70 : LD   1, 3(5) ;  Load parameter 'previousSum' into R1
71 : ADD  3, 1, 0 ;  Store left operand into temporary register
72 : LD   1, 4(5) ;  Load parameter 'currentSum' into R1
73 : ADD  2, 3, 0 ;  Restore left operand
74 : ADD  1, 2, 1 ;  R1 = left + right
75 : ST 1, 4(4) ;  Store argument 3 into callee frame
76 : LDA 6, 81(0) ;  Compute return address
77 : ST 6, 0(4) ;  Store return address in callee frame
78 : LDA  2, 6(4) ;  Compute end of frame
79 : ADD  5, 2, 0 ;  Advance pointer to end of frame
80 : LDA 7, 47(0) ;  Call addNext
81 : LD 1, 5(5) ;  Load callee return value into R1
82 : LDC  4, 6(0) ;  Load frame size
83 : SUB  5, 5, 4 ;  Restore pointer
84 : ST   1, 5(5) ;  Store function result into stack frame
85 : LD   6, 0(5) ;  Load return address
86 : LDA  7, 0(6) ;  Return to caller
