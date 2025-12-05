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
13 : LD   1, 1(5) ;  Load parameter 'm' into R1
14 : ADD  3, 1, 0 ;  Save left operand
15 : LD   1, 2(5) ;  Load parameter 'n' into R1
16 : ADD  2, 3, 0 ;  restore left operand
17 : DIV  1, 2, 1 ;  R1 = left / right
18 : LDA  4, 3(5) ;  Update DMEM pointer
19 : LDA 6, 23(0) ;  Compute return address
20 : ST   6, 0(4) ;  Store return address
21 : ADD  5, 4, 0 ;  Updated Pointer
22 : LDA  7, 10(0) ; Call print
23 : LDC  4, 3(0) ;  Load frame size
24 : SUB  5, 5, 4 ;  Restore pointer
25 : LD   1, 1(5) ;  Load parameter 'm' into R1
26 : ST   1, 4(5) ;  Spill Temporary
27 : LD   1, 2(5) ;  Load parameter 'n' into R1
28 : ST   1, 5(5) ;  Spill Temporary
29 : LDA 4, 4(5) ; Restore Callee frame base
30 : LD   1, 5(5) ;  Restore Temporary
31 : ST 1, 2(4) ;  Store argument 1 into callee frame
32 : LD   1, 4(5) ;  Restore Temporary
33 : ST 1, 1(4) ;  Store argument 0 into callee frame
34 : LDA 4, 4(5) ; Restore Call frame base
35 : LDA 6, 39(0) ;  Compute return address
36 : ST 6, 0(4) ;  Store return address in callee frame
37 : ADD 5, 4, 0 ;  Update pointer
38 : LDA 7, 46(0) ;  Call mod
39 : LD 1, 3(5) ;  Load callee return value into R1
40 : LDC 4, 4(0) ;  Load frame size
41 : SUB 5, 5, 4 ;  Restore pointer
42 : ST 1, 3(5) ;  Store result into current frame's return slot
43 : LD   1, 3(5) ;  Load return value into register 1
44 : LD  6, 0(5) ;  Load return address for main function into register 6
45 : LDA  7, 0(6) ;  Jump to return address of main function
46 : LD   1, 1(5) ;  Load parameter 'm' into R1
47 : ADD  3, 1, 0 ;  Save left operand
48 : LD   1, 2(5) ;  Load parameter 'n' into R1
49 : ADD  2, 3, 0 ;  restore left operand
50 : SUB  1, 2, 1 ;  left - right for less-than check
51 : JLT  1, 2(7) ;  If R1 < 0, jump to true
52 : LDC  1, 0(0) ;  false
53 : LDA  7, 1(7) ;  skip setting true
54 : LDC  1, 1(0) ;  true
55 : JEQ  1, 58(0) ;  If condition is false, jump to ELSE
56 : LD   1, 1(5) ;  Load parameter 'm' into R1
57 : LDA  7, 79(0) ;  Skip ELSE block
58 : LD   1, 1(5) ;  Load parameter 'm' into R1
59 : ADD  3, 1, 0 ;  Save left operand
60 : LD   1, 2(5) ;  Load parameter 'n' into R1
61 : ADD  2, 3, 0 ;  restore left operand
62 : SUB  1, 2, 1 ;  R1 = left - right
63 : ST   1, 4(5) ;  Spill Temporary
64 : LD   1, 2(5) ;  Load parameter 'n' into R1
65 : ST   1, 5(5) ;  Spill Temporary
66 : LDA 4, 4(5) ; Restore Callee frame base
67 : LD   1, 5(5) ;  Restore Temporary
68 : ST 1, 2(4) ;  Store argument 1 into callee frame
69 : LD   1, 4(5) ;  Restore Temporary
70 : ST 1, 1(4) ;  Store argument 0 into callee frame
71 : LDA 4, 4(5) ; Restore Call frame base
72 : LDA 6, 76(0) ;  Compute return address
73 : ST 6, 0(4) ;  Store return address in callee frame
74 : ADD 5, 4, 0 ;  Update pointer
75 : LDA 7, 46(0) ;  Call mod
76 : LD 1, 3(5) ;  Load callee return value into R1
77 : LDC 4, 4(0) ;  Load frame size
78 : SUB 5, 5, 4 ;  Restore pointer
79 : ST   1, 3(5) ;  Store function result into stack frame
80 : LD   6, 0(5) ;  Load return address
81 : LDA  7, 0(6) ;  Return to caller
