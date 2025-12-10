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
18 : LDA 6, 22(0) ; Return address
19 : ST 6, 0(4) ; Store return in callee frame
20 : ADD 5, 4, 0 ; Push callee frame
21 : LDA 7, 30(0) ; Call add_till_n
22 : LD   1, 3(5) ;  Load function result
23 : LDC   2, 4(0) ;  Caller frame size
24 : SUB   5, 5, 2 ;  Pop back to caller
25 : SUB   4, 4, 2 ;  Pop back to caller
26 : ST 1, 3(5) ; Store result into caller’s frame
27 : LD   1, 3(5) ;  Load return value into register 1
28 : LD  6, 0(5) ;  Load return address for main function into register 6
29 : LDA  7, 0(6) ;  Jump to return address of main function
30 : LD   1, 1(5) ;  Load parameter 'a' into R1
31 : LDA 4, 3(5) ; Base of callee frame
32 : LDA 6, 36(0) ; Return address
33 : ST 6, 0(4) ; Store return addr in callee frame
34 : ADD 5, 4, 0 ; Push new frame
35 : LDA 7, 10(0) ; Call print
36 : LDC 2, 3(0) ; Caller frame size
37 : SUB 5, 5, 2 ; Pop frame
38 : ST   1, 3(5) ;  Store function result into stack frame
39 : LD   1, 2(5) ;  Load parameter 'b' into R1
40 : ST   1, 3(4) ;  Store right operand result into return value slot
41 : LD   1, 1(5) ;  Load parameter 'a' into R1
42 : ADD  2, 1, 0 ;  Move left operand to register 2
43 : LD   1, 3(4) ;  Return right operand back into register 1
44 : SUB  1, 2, 1 ;  left - right for equality check
45 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
46 : LDC  1, 0(0) ;  false
47 : LDA  7, 1(7) ;  skip setting true
48 : LDC  1, 1(0) ;  true
49 : JEQ  1, 52(0) ;  If condition is false, jump to ELSE
50 : LD   1, 1(5) ;  Load parameter 'a' into R1
51 : LDA  7, 70(0) ;  Skip ELSE block
52 : LDA 4, 4(5) ; Base of callee frame
53 : LDC  1, 1(0) ;  Load integer-literal value into register 1
54 : ST   1, 3(4) ;  Store right operand result into return value slot
55 : LD   1, 1(5) ;  Load parameter 'a' into R1
56 : ADD  2, 1, 0 ;  Move left operand to register 2
57 : LD   1, 3(4) ;  Return right operand back into register 1
58 : ADD  1, 2, 1 ;  R1 = left + right
59 : ST 1, 1(4) ; Store argument 0 in callee
60 : LD   1, 2(5) ;  Load parameter 'b' into R1
61 : ST 1, 2(4) ; Store argument 1 in callee
62 : LDA 6, 66(0) ; Return address
63 : ST 6, 0(4) ; Store return in callee frame
64 : ADD 5, 4, 0 ; Push callee frame
65 : LDA 7, 30(0) ; Call add_till_n
66 : LD   1, 3(5) ;  Load function result
67 : LDC   2, 4(0) ;  Caller frame size
68 : SUB   5, 5, 2 ;  Pop back to caller
69 : SUB   4, 4, 2 ;  Pop back to caller
70 : ST   1, 3(5) ;  Store function result into stack frame
71 : LD   6, 0(5) ;  Load return address
72 : LDA  7, 0(6) ;  Return to caller
