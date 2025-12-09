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
15 : ST 1, 1(4) ;  Store argument 0 into callee frame
16 : LD   1, 2(5) ;  Load parameter 'b' into R1
17 : LDA  4, 4(5) ; Restore Callee frame base
18 : ST 1, 2(4) ;  Store argument 1 into callee frame
19 : LDA  4, 4(5) ; Restore Call frame base
20 : LDA 6, 24(0) ;  Compute return address
21 : ST 6, 0(4) ;  Store return address in callee frame
22 : ADD  5, 4, 0 ;  Update pointer
23 : LDA 7, 46(0) ;  Call multiply_and_square
24 : LD 1, 3(5) ;  Load callee return value into R1
25 : LDC  4, 4(0) ;  Load frame size
26 : ST 1, 3(5) ;  Store result into current frame's return slot
27 : LD   1, 3(5) ;  Load return value into register 1
28 : LD  6, 0(5) ;  Load return address for main function into register 6
29 : LDA  7, 0(6) ;  Jump to return address of main function
30 : LD   1, 1(5) ;  Load parameter 'a' into R1
31 : ADD  3, 1, 0 ;  Store left operand into temporary register
32 : LD   1, 1(5) ;  Load parameter 'a' into R1
33 : ADD  2, 3, 0 ;  Restore left operand
34 : MUL  1, 2, 1 ;  R1 = left * right
35 : ST   1, 2(5) ;  Store function result into stack frame
36 : LD   6, 0(5) ;  Load return address
37 : LDA  7, 0(6) ;  Return to caller
38 : LD   1, 1(5) ;  Load parameter 'a' into R1
39 : ADD  3, 1, 0 ;  Store left operand into temporary register
40 : LD   1, 2(5) ;  Load parameter 'b' into R1
41 : ADD  2, 3, 0 ;  Restore left operand
42 : MUL  1, 2, 1 ;  R1 = left * right
43 : ST   1, 3(5) ;  Store function result into stack frame
44 : LD   6, 0(5) ;  Load return address
45 : LDA  7, 0(6) ;  Return to caller
46 : LD   1, 1(5) ;  Load parameter 'a' into R1
47 : LDA  4, 4(5) ; Restore Callee frame base
48 : ST 1, 1(4) ;  Store argument 0 into callee frame
49 : LDA  4, 4(5) ; Restore Call frame base
50 : LDA 6, 54(0) ;  Compute return address
51 : ST 6, 0(4) ;  Store return address in callee frame
52 : ADD  5, 4, 0 ;  Update pointer
53 : LDA 7, 30(0) ;  Call square
54 : LD 1, 2(5) ;  Load callee return value into R1
55 : LDC  4, 4(0) ;  Load frame size
56 : LDA  4, 4(5) ; Restore Callee frame base
57 : ST 1, 1(4) ;  Store argument 0 into callee frame
58 : LD   1, 2(5) ;  Load parameter 'b' into R1
59 : LDA  4, 4(5) ; Restore Callee frame base
60 : ST 1, 1(4) ;  Store argument 0 into callee frame
61 : LDA  4, 4(5) ; Restore Call frame base
62 : LDA 6, 66(0) ;  Compute return address
63 : ST 6, 0(4) ;  Store return address in callee frame
64 : ADD  5, 4, 0 ;  Update pointer
65 : LDA 7, 30(0) ;  Call square
66 : LD 1, 2(5) ;  Load callee return value into R1
67 : LDC  4, 4(0) ;  Load frame size
68 : LDA  4, 4(5) ; Restore Callee frame base
69 : ST 1, 2(4) ;  Store argument 1 into callee frame
70 : LDA  4, 4(5) ; Restore Call frame base
71 : LDA 6, 75(0) ;  Compute return address
72 : ST 6, 0(4) ;  Store return address in callee frame
73 : ADD  5, 4, 0 ;  Update pointer
74 : LDA 7, 38(0) ;  Call multiply
75 : LD 1, 3(5) ;  Load callee return value into R1
76 : LDC  4, 4(0) ;  Load frame size
77 : ST   1, 3(5) ;  Store function result into stack frame
78 : LD   6, 0(5) ;  Load return address
79 : LDA  7, 0(6) ;  Return to caller
