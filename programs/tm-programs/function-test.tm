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
13 : LD   1, 1(5) ;  Load parameter 'a' into R1
14 : LDA  4, 4(5) ; Restore Callee frame base
15 : ST 1, 1(5) ;  Store argument 0 into callee frame
16 : LD   1, 2(5) ;  Load parameter 'b' into R1
17 : LDA  4, 4(5) ; Restore Callee frame base
18 : ST 1, 2(5) ;  Store argument 1 into callee frame
19 : LDA  4, 4(5) ; Restore Call frame base
20 : LDA 6, 24(0) ;  Compute return address
21 : ST 6, 0(4) ;  Store return address in callee frame
22 : ADD  5, 4, 0 ;  Update pointer
23 : LDA 7, 47(0) ;  Call multiply_and_square
24 : LD 1, 3(5) ;  Load callee return value into R1
25 : LDC  4, 4(0) ;  Load frame size
26 : SUB  5, 5, 4 ;  Restore pointer
27 : ST 1, 3(5) ;  Store result into current frame's return slot
28 : LD   1, 3(5) ;  Load return value into register 1
29 : LD  6, 0(5) ;  Load return address for main function into register 6
30 : LDA  7, 0(6) ;  Jump to return address of main function
31 : LD   1, 1(5) ;  Load parameter 'a' into R1
32 : ADD  3, 1, 0 ;  Store left operand into temporary register
33 : LD   1, 1(5) ;  Load parameter 'a' into R1
34 : ADD  2, 3, 0 ;  Restore left operand
35 : MUL  1, 2, 1 ;  R1 = left * right
36 : ST   1, 2(5) ;  Store function result into stack frame
37 : LD   6, 0(5) ;  Load return address
38 : LDA  7, 0(6) ;  Return to caller
39 : LD   1, 1(5) ;  Load parameter 'a' into R1
40 : ADD  3, 1, 0 ;  Store left operand into temporary register
41 : LD   1, 2(5) ;  Load parameter 'b' into R1
42 : ADD  2, 3, 0 ;  Restore left operand
43 : MUL  1, 2, 1 ;  R1 = left * right
44 : ST   1, 3(5) ;  Store function result into stack frame
45 : LD   6, 0(5) ;  Load return address
46 : LDA  7, 0(6) ;  Return to caller
47 : LD   1, 1(5) ;  Load parameter 'a' into R1
48 : LDA  4, 4(5) ; Restore Callee frame base
49 : ST 1, 1(5) ;  Store argument 0 into callee frame
50 : LDA  4, 4(5) ; Restore Call frame base
51 : LDA 6, 55(0) ;  Compute return address
52 : ST 6, 0(4) ;  Store return address in callee frame
53 : ADD  5, 4, 0 ;  Update pointer
54 : LDA 7, 31(0) ;  Call square
55 : LD 1, 2(5) ;  Load callee return value into R1
56 : LDC  4, 4(0) ;  Load frame size
57 : SUB  5, 5, 4 ;  Restore pointer
58 : LDA  4, 4(5) ; Restore Callee frame base
59 : ST 1, 1(5) ;  Store argument 0 into callee frame
60 : LD   1, 2(5) ;  Load parameter 'b' into R1
61 : LDA  4, 4(5) ; Restore Callee frame base
62 : ST 1, 1(5) ;  Store argument 0 into callee frame
63 : LDA  4, 4(5) ; Restore Call frame base
64 : LDA 6, 68(0) ;  Compute return address
65 : ST 6, 0(4) ;  Store return address in callee frame
66 : ADD  5, 4, 0 ;  Update pointer
67 : LDA 7, 31(0) ;  Call square
68 : LD 1, 2(5) ;  Load callee return value into R1
69 : LDC  4, 4(0) ;  Load frame size
70 : SUB  5, 5, 4 ;  Restore pointer
71 : LDA  4, 4(5) ; Restore Callee frame base
72 : ST 1, 2(5) ;  Store argument 1 into callee frame
73 : LDA  4, 4(5) ; Restore Call frame base
74 : LDA 6, 78(0) ;  Compute return address
75 : ST 6, 0(4) ;  Store return address in callee frame
76 : ADD  5, 4, 0 ;  Update pointer
77 : LDA 7, 39(0) ;  Call multiply
78 : LD 1, 3(5) ;  Load callee return value into R1
79 : LDC  4, 4(0) ;  Load frame size
80 : SUB  5, 5, 4 ;  Restore pointer
81 : ST   1, 3(5) ;  Store function result into stack frame
82 : LD   6, 0(5) ;  Load return address
83 : LDA  7, 0(6) ;  Return to caller
