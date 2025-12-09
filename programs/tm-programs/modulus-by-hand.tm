0 : LDC  5, 3(0) ;  Set DMEM pointer to main stack frame
1 : LD   2, 1(0) ;  Load CLI arg 1 into register
2 : ST   2, 1(5) ;  Store the argument into stack frame
3 : LD   2, 2(0) ;  Load CLI arg 2 into register
4 : ST   2, 2(5) ;  Store the argument into stack frame
5 : LDA  6, 4(7) ;  Calculate return address
6 : ST   6, 0(5) ;  Store return address in main stack frame
7 : LDC  4, 4(0) ;  Load size of main stack frame
8 : ADD  5, 5, 4 ;  Advance R5 to next frame
9 : LDA  7, 15(0) ;  Load address of main IMEM block - branch to function
10 : OUT  1, 0, 0 ;  Return result
11 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
12 : OUT  1, 0, 0 ;  Hardcoded print function
13 : LD   6, 0(5) ;  Load return addess from stack frame.
14 : LDA  7, 0(6) ;  Jump to return address.
15 : LD   1, 1(5) ;  Load parameter 'm' into R1
16 : ADD  3, 1, 0 ;  Store left operand into temporary register
17 : LD   1, 2(5) ;  Load parameter 'n' into R1
18 : ADD  2, 3, 0 ;  Restore left operand
19 : DIV  1, 2, 1 ;  R1 = left / right
20 : LDA  4, 3(5) ;  Update DMEM pointer
21 : LDA 6, 25(0) ;  Compute return address
22 : ST   6, 0(4) ;  Store return address
23 : ADD  5, 4, 0 ;  Updated Pointer
24 : LDA  7, 12(0) ; Call print
25 : LDC  4, 3(0) ;  Load frame size
26 : SUB  5, 5, 4 ;  Restore pointer
27 : LDA  4, 0(5) ;  Save callee frame base
28 : LD   1, 1(5) ;  Load parameter 'm' into R1
29 : ST 1, 1(4) ;  Store argument 0 into callee frame
30 : LD   1, 2(5) ;  Load parameter 'n' into R1
31 : ST 1, 2(4) ;  Store argument 1 into callee frame
32 : LDA 6, 37(0) ;  Compute return address
33 : ST 6, 0(4) ;  Store return address in callee frame
34 : LDA  2, 4(4) ;  Compute end of frame
35 : ADD  5, 2, 0 ;  Advance pointer to end of frame
36 : LDA 7, 44(0) ;  Call mod
37 : LD 1, 3(5) ;  Load callee return value into R1
38 : LDC  4, 4(0) ;  Load frame size
39 : SUB  5, 5, 4 ;  Restore pointer
40 : ST 1, 3(5) ;  Store result into current frame's return slot
41 : LD   1, 3(5) ;  Load return value into register 1
42 : LD  6, 0(5) ;  Load return address for main function into register 6
43 : LDA  7, 0(6) ;  Jump to return address of main function
44 : LD   1, 1(5) ;  Load parameter 'm' into R1
45 : ADD  3, 1, 0 ;  Store left operand into temporary register
46 : LD   1, 2(5) ;  Load parameter 'n' into R1
47 : ADD  2, 3, 0 ;  Restore left operand
48 : SUB  1, 2, 1 ;  left - right for less-than check
49 : JLT  1, 2(7) ;  If R1 < 0, jump to true
50 : LDC  1, 0(0) ;  false
51 : LDA  7, 1(7) ;  skip setting true
52 : LDC  1, 1(0) ;  true
53 : JEQ  1, 56(0) ;  If condition is false, jump to ELSE
54 : LD   1, 1(5) ;  Load parameter 'm' into R1
55 : LDA  7, 73(0) ;  Skip ELSE block
56 : LDA  4, 0(5) ;  Save callee frame base
57 : LD   1, 1(5) ;  Load parameter 'm' into R1
58 : ADD  3, 1, 0 ;  Store left operand into temporary register
59 : LD   1, 2(5) ;  Load parameter 'n' into R1
60 : ADD  2, 3, 0 ;  Restore left operand
61 : SUB  1, 2, 1 ;  R1 = left - right
62 : ST 1, 1(4) ;  Store argument 0 into callee frame
63 : LD   1, 2(5) ;  Load parameter 'n' into R1
64 : ST 1, 2(4) ;  Store argument 1 into callee frame
65 : LDA 6, 70(0) ;  Compute return address
66 : ST 6, 0(4) ;  Store return address in callee frame
67 : LDA  2, 4(4) ;  Compute end of frame
68 : ADD  5, 2, 0 ;  Advance pointer to end of frame
69 : LDA 7, 44(0) ;  Call mod
70 : LD 1, 3(5) ;  Load callee return value into R1
71 : LDC  4, 4(0) ;  Load frame size
72 : SUB  5, 5, 4 ;  Restore pointer
73 : ST   1, 3(5) ;  Store function result into stack frame
74 : LD   6, 0(5) ;  Load return address
75 : LDA  7, 0(6) ;  Return to caller
