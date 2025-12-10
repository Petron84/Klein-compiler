0 : LDC  5, 3(0) ;  Set DMEM pointer to main stack frame
1 : LDC  4, 0(5) ;  Set top of caller frame
2 : LD   2, 1(0) ;  Load CLI arg 1 into register
3 : ST   2, 1(5) ;  Store the argument into stack frame
4 : LD   2, 2(0) ;  Load CLI arg 2 into register
5 : ST   2, 2(5) ;  Store the argument into stack frame
6 : LDA  6, 2(7) ;  Calculate return address
7 : ST   6, 0(5) ;  Store return address in main stack frame
8 : LDA  7, 14(0) ;  Load address of main IMEM block - branch to function
9 : OUT  1, 0, 0 ;  Return result
10 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
11 : OUT  1, 0, 0 ;  Hardcoded print function
12 : LD   6, 0(5) ;  Load return addess from stack frame.
13 : LDA  7, 0(6) ;  Jump to return address.
14 : LDA 4, 4(5) ; Base of callee frame
15 : LD   1, 1(5) ;  Load parameter 'a' into R1
16 : ST 1, 1(4) ; Store argument 0 in callee
17 : LD   1, 2(5) ;  Load parameter 'b' into R1
18 : ST 1, 2(4) ; Store argument 1 in callee
19 : LDA 6, 23(0) ; Return address
20 : ST 6, 0(4) ; Store return in callee frame
21 : ADD 5, 4, 0 ; Push callee frame
22 : LDA 7, 31(0) ; Call add_till_n
23 : LD   1, 3(5) ;  Load function result
24 : LDC   2, 4(0) ;  Caller frame size
25 : SUB   5, 5, 2 ;  Pop back to caller
26 : SUB   4, 4, 2 ;  Pop back to caller
27 : ST 1, 3(5) ; Store result into caller’s frame
28 : LD   1, 3(5) ;  Load return value into register 1
29 : LD  6, 0(5) ;  Load return address for main function into register 6
30 : LDA  7, 0(6) ;  Jump to return address of main function
31 : LD   1, 1(5) ;  Load parameter 'a' into R1
32 : LDA 4, 3(5) ; Base of callee frame
33 : LDA 6, 37(0) ; Return address
34 : ST 6, 0(4) ; Store return addr in callee frame
35 : ADD 5, 4, 0 ; Push new frame
36 : LDA 7, 11(0) ; Call print
37 : LDC 2, 3(0) ; Caller frame size
38 : SUB 5, 5, 2 ; Pop frame
39 : ST   1, 3(5) ;  Store function result into stack frame
40 : LD   1, 2(5) ;  Load parameter 'b' into R1
41 : ST   1, 3(4) ;  Store right operand result into return value slot
42 : LD   1, 1(5) ;  Load parameter 'a' into R1
43 : ADD  2, 1, 0 ;  Move left operand to register 2
44 : LD   1, 3(4) ;  Return right operand back into register 1
45 : SUB  1, 2, 1 ;  left - right for equality check
46 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
47 : LDC  1, 0(0) ;  false
48 : LDA  7, 1(7) ;  skip setting true
49 : LDC  1, 1(0) ;  true
50 : JEQ  1, 53(0) ;  If condition is false, jump to ELSE
51 : LD   1, 1(5) ;  Load parameter 'a' into R1
52 : LDA  7, 71(0) ;  Skip ELSE block
53 : LDA 4, 4(5) ; Base of callee frame
54 : LDC  1, 1(0) ;  Load integer-literal value into register 1
55 : ST   1, 3(4) ;  Store right operand result into return value slot
56 : LD   1, 1(5) ;  Load parameter 'a' into R1
57 : ADD  2, 1, 0 ;  Move left operand to register 2
58 : LD   1, 3(4) ;  Return right operand back into register 1
59 : ADD  1, 2, 1 ;  R1 = left + right
60 : ST 1, 1(4) ; Store argument 0 in callee
61 : LD   1, 2(5) ;  Load parameter 'b' into R1
62 : ST 1, 2(4) ; Store argument 1 in callee
63 : LDA 6, 67(0) ; Return address
64 : ST 6, 0(4) ; Store return in callee frame
65 : ADD 5, 4, 0 ; Push callee frame
66 : LDA 7, 31(0) ; Call add_till_n
67 : LD   1, 3(5) ;  Load function result
68 : LDC   2, 4(0) ;  Caller frame size
69 : SUB   5, 5, 2 ;  Pop back to caller
70 : SUB   4, 4, 2 ;  Pop back to caller
71 : ST   1, 3(5) ;  Store function result into stack frame
72 : LD   6, 0(5) ;  Load return address
73 : LDA  7, 0(6) ;  Return to caller
