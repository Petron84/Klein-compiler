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
39 : LD   1, 1(5) ;  Load parameter 'a' into R1
40 : ADD  3, 1, 0 ;  Store left operand into temporary register
41 : LD   1, 2(5) ;  Load parameter 'b' into R1
42 : ADD  2, 3, 0 ;  Restore left operand
43 : SUB  1, 2, 1 ;  left - right for equality check
44 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
45 : LDC  1, 0(0) ;  false
46 : LDA  7, 1(7) ;  skip setting true
47 : LDC  1, 1(0) ;  true
48 : JEQ  1, 51(0) ;  If condition is false, jump to ELSE
49 : LD   1, 1(5) ;  Load parameter 'a' into R1
50 : LDA  7, 68(0) ;  Skip ELSE block
51 : LDA 4, 4(5) ; Base of callee frame
52 : LD   1, 1(5) ;  Load parameter 'a' into R1
53 : ADD  3, 1, 0 ;  Store left operand into temporary register
54 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
55 : ADD  2, 3, 0 ;  Restore left operand
56 : ADD  1, 2, 1 ;  R1 = left + right
57 : ST 1, 1(4) ; Store argument 0 in callee
58 : LD   1, 2(5) ;  Load parameter 'b' into R1
59 : ST 1, 2(4) ; Store argument 1 in callee
60 : LDA 6, 64(0) ; Return address
61 : ST 6, 0(4) ; Store return in callee frame
62 : ADD 5, 4, 0 ; Push callee frame
63 : LDA 7, 30(0) ; Call add_till_n
64 : LD   1, 3(5) ;  Load function result
65 : LDC   2, 4(0) ;  Caller frame size
66 : SUB   5, 5, 2 ;  Pop back to caller
67 : SUB   4, 4, 2 ;  Pop back to caller
68 : ST   1, 3(5) ;  Store function result into stack frame
69 : LD   6, 0(5) ;  Load return address
70 : LDA  7, 0(6) ;  Return to caller
