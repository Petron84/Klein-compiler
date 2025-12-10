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
13 : LD   1, 2(5) ;  Load parameter 'n' into R1
14 : ST   1, 3(4) ;  Store right operand result into return value slot
15 : LD   1, 1(5) ;  Load parameter 'm' into R1
16 : ADD  2, 1, 0 ;  Move left operand to register 2
17 : LD   1, 3(4) ;  Return right operand back into register 1
18 : DIV  1, 2, 1 ;  R1 = left / right
19 : LDA 4, 3(5) ; Base of callee frame
20 : LDA 6, 24(0) ; Return address
21 : ST 6, 0(4) ; Store return addr in callee frame
22 : ADD 5, 4, 0 ; Push new frame
23 : LDA 7, 10(0) ; Call print
24 : LDC 2, 3(0) ; Caller frame size
25 : SUB 5, 5, 2 ; Pop frame
26 : LDA 4, 4(5) ; Base of callee frame
27 : LD   1, 1(5) ;  Load parameter 'm' into R1
28 : ST 1, 1(4) ; Store argument 0 in callee
29 : LD   1, 2(5) ;  Load parameter 'n' into R1
30 : ST 1, 2(4) ; Store argument 1 in callee
31 : LDA 6, 35(0) ; Return address
32 : ST 6, 0(4) ; Store return in callee frame
33 : ADD 5, 4, 0 ; Push callee frame
34 : LDA 7, 43(0) ; Call mod
35 : LD   1, 3(5) ;  Load function result
36 : LDC   2, 4(0) ;  Caller frame size
37 : SUB   5, 5, 2 ;  Pop back to caller
38 : SUB   4, 4, 2 ;  Pop back to caller
39 : ST 1, 3(5) ; Store result into caller’s frame
40 : LD   1, 3(5) ;  Load return value into register 1
41 : LD  6, 0(5) ;  Load return address for main function into register 6
42 : LDA  7, 0(6) ;  Jump to return address of main function
43 : LD   1, 2(5) ;  Load parameter 'n' into R1
44 : ST   1, 3(4) ;  Store right operand result into return value slot
45 : LD   1, 1(5) ;  Load parameter 'm' into R1
46 : ADD  2, 1, 0 ;  Move left operand to register 2
47 : LD   1, 3(4) ;  Return right operand back into register 1
48 : SUB  1, 2, 1 ;  left - right for less-than check
49 : JLT  1, 2(7) ;  If R1 < 0, jump to true
50 : LDC  1, 0(0) ;  false
51 : LDA  7, 1(7) ;  skip setting true
52 : LDC  1, 1(0) ;  true
53 : JEQ  1, 56(0) ;  If condition is false, jump to ELSE
54 : LD   1, 1(5) ;  Load parameter 'm' into R1
55 : LDA  7, 74(0) ;  Skip ELSE block
56 : LDA 4, 4(5) ; Base of callee frame
57 : LD   1, 2(5) ;  Load parameter 'n' into R1
58 : ST   1, 3(4) ;  Store right operand result into return value slot
59 : LD   1, 1(5) ;  Load parameter 'm' into R1
60 : ADD  2, 1, 0 ;  Move left operand to register 2
61 : LD   1, 3(4) ;  Return right operand back into register 1
62 : SUB  1, 2, 1 ;  R1 = left - right
63 : ST 1, 1(4) ; Store argument 0 in callee
64 : LD   1, 2(5) ;  Load parameter 'n' into R1
65 : ST 1, 2(4) ; Store argument 1 in callee
66 : LDA 6, 70(0) ; Return address
67 : ST 6, 0(4) ; Store return in callee frame
68 : ADD 5, 4, 0 ; Push callee frame
69 : LDA 7, 43(0) ; Call mod
70 : LD   1, 3(5) ;  Load function result
71 : LDC   2, 4(0) ;  Caller frame size
72 : SUB   5, 5, 2 ;  Pop back to caller
73 : SUB   4, 4, 2 ;  Pop back to caller
74 : ST   1, 3(5) ;  Store function result into stack frame
75 : LD   6, 0(5) ;  Load return address
76 : LDA  7, 0(6) ;  Return to caller
