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
15 : ST 1, 1(4) ; Store argument 0 in callee
16 : LD   1, 2(5) ;  Load parameter 'b' into R1
17 : ST 1, 2(4) ; Store argument 1 in callee
18 : LDA 6, 21(0) ; Return address
19 : ST 6, 0(4) ; Store return in callee frame
20 : LDA 7, 44(0) ; Call multiply_and_square
21 : LD 1, 3(5) ; Load function result
22 : LDC 2, 4(0) ; Caller frame size
23 : SUB 5, 5, 2 ; Pop back to caller
24 : ST 1, 3(5) ; Store result into caller’s frame
25 : LD   1, 3(5) ;  Load return value into register 1
26 : LD  6, 0(5) ;  Load return address for main function into register 6
27 : LDA  7, 0(6) ;  Jump to return address of main function
28 : LD   1, 1(5) ;  Load parameter 'a' into R1
29 : ADD  3, 1, 0 ;  Store left operand into temporary register
30 : LD   1, 1(5) ;  Load parameter 'a' into R1
31 : ADD  2, 3, 0 ;  Restore left operand
32 : MUL  1, 2, 1 ;  R1 = left * right
33 : ST   1, 2(5) ;  Store function result into stack frame
34 : LD   6, 0(5) ;  Load return address
35 : LDA  7, 0(6) ;  Return to caller
36 : LD   1, 1(5) ;  Load parameter 'a' into R1
37 : ADD  3, 1, 0 ;  Store left operand into temporary register
38 : LD   1, 2(5) ;  Load parameter 'b' into R1
39 : ADD  2, 3, 0 ;  Restore left operand
40 : MUL  1, 2, 1 ;  R1 = left * right
41 : ST   1, 3(5) ;  Store function result into stack frame
42 : LD   6, 0(5) ;  Load return address
43 : LDA  7, 0(6) ;  Return to caller
44 : LDA 4, 4(5) ; Base of callee frame
45 : LDA 4, 4(5) ; Base of callee frame
46 : LD   1, 1(5) ;  Load parameter 'a' into R1
47 : ST 1, 1(4) ; Store argument 0 in callee
48 : LDA 6, 51(0) ; Return address
49 : ST 6, 0(4) ; Store return in callee frame
50 : LDA 7, 28(0) ; Call square
51 : LD 1, 2(5) ; Load function result
52 : LDC 2, 4(0) ; Caller frame size
53 : SUB 5, 5, 2 ; Pop back to caller
54 : ST 1, 1(4) ; Store argument 0 in callee
55 : LDA 4, 4(5) ; Base of callee frame
56 : LD   1, 2(5) ;  Load parameter 'b' into R1
57 : ST 1, 1(4) ; Store argument 0 in callee
58 : LDA 6, 61(0) ; Return address
59 : ST 6, 0(4) ; Store return in callee frame
60 : LDA 7, 28(0) ; Call square
61 : LD 1, 2(5) ; Load function result
62 : LDC 2, 4(0) ; Caller frame size
63 : SUB 5, 5, 2 ; Pop back to caller
64 : ST 1, 2(4) ; Store argument 1 in callee
65 : LDA 6, 68(0) ; Return address
66 : ST 6, 0(4) ; Store return in callee frame
67 : LDA 7, 36(0) ; Call multiply
68 : LD 1, 3(5) ; Load function result
69 : LDC 2, 4(0) ; Caller frame size
70 : SUB 5, 5, 2 ; Pop back to caller
71 : ST   1, 3(5) ;  Store function result into stack frame
72 : LD   6, 0(5) ;  Load return address
73 : LDA  7, 0(6) ;  Return to caller
