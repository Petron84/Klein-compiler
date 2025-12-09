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
15 : ST 1, 1(4) ; Argument 1
16 : LD   1, 2(5) ;  Load parameter 'b' into R1
17 : ST 1, 2(4) ; Argument 2
18 : LDA 6, 22(0) ; Return address
19 : ST 6, 0(4) ; Store return in callee frame
20 : ADD 5, 4, 0 ; Push callee frame
21 : LDA 7, 45(0) ; Call multiply_and_square
22 : LD 1, 3(5) ; Load function result
23 : LDC 2, 4(0) ; Caller frame size
24 : SUB 5, 5, 2 ; Pop back to caller
25 : ST 1, 3(5) ; Store result into caller’s frame
26 : LD   1, 3(5) ;  Load return value into register 1
27 : LD  6, 0(5) ;  Load return address for main function into register 6
28 : LDA  7, 0(6) ;  Jump to return address of main function
29 : LD   1, 1(5) ;  Load parameter 'a' into R1
30 : ADD  3, 1, 0 ;  Store left operand into temporary register
31 : LD   1, 1(5) ;  Load parameter 'a' into R1
32 : ADD  2, 3, 0 ;  Restore left operand
33 : MUL  1, 2, 1 ;  R1 = left * right
34 : ST   1, 2(5) ;  Store function result into stack frame
35 : LD   6, 0(5) ;  Load return address
36 : LDA  7, 0(6) ;  Return to caller
37 : LD   1, 1(5) ;  Load parameter 'a' into R1
38 : ADD  3, 1, 0 ;  Store left operand into temporary register
39 : LD   1, 2(5) ;  Load parameter 'b' into R1
40 : ADD  2, 3, 0 ;  Restore left operand
41 : MUL  1, 2, 1 ;  R1 = left * right
42 : ST   1, 3(5) ;  Store function result into stack frame
43 : LD   6, 0(5) ;  Load return address
44 : LDA  7, 0(6) ;  Return to caller
45 : LDA 4, 4(5) ; Base of callee frame
46 : LDA 4, 4(5) ; Base of callee frame
47 : LD   1, 1(5) ;  Load parameter 'a' into R1
48 : ST 1, 1(4) ; Argument 1
49 : LDA 6, 53(0) ; Return address
50 : ST 6, 0(4) ; Store return in callee frame
51 : ADD 5, 4, 0 ; Push callee frame
52 : LDA 7, 29(0) ; Call square
53 : LD 1, 2(5) ; Load function result
54 : LDC 2, 4(0) ; Caller frame size
55 : SUB 5, 5, 2 ; Pop back to caller
56 : LDA  4, 3(4) ;  If a function call occurred, push additional callee frame
57 : ST 1, 1(4) ; Argument 1
58 : LDA 4, 4(5) ; Base of callee frame
59 : ST 1, 1(4) ; Argument 1
60 : LDA 6, 64(0) ; Return address
61 : ST 6, 0(4) ; Store return in callee frame
62 : ADD 5, 4, 0 ; Push callee frame
63 : LDA 7, 29(0) ; Call square
64 : LD 1, 2(5) ; Load function result
65 : LDC 2, 4(0) ; Caller frame size
66 : SUB 5, 5, 2 ; Pop back to caller
67 : LDA  4, 3(4) ;  If a function call occurred, push additional callee frame
68 : ST 1, 2(4) ; Argument 2
69 : LDA 6, 73(0) ; Return address
70 : ST 6, 0(4) ; Store return in callee frame
71 : ADD 5, 4, 0 ; Push callee frame
72 : LDA 7, 37(0) ; Call multiply
73 : LD 1, 3(5) ; Load function result
74 : LDC 2, 4(0) ; Caller frame size
75 : SUB 5, 5, 2 ; Pop back to caller
76 : ST   1, 3(5) ;  Store function result into stack frame
77 : LD   6, 0(5) ;  Load return address
78 : LDA  7, 0(6) ;  Return to caller
