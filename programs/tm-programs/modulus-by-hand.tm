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
14 : ADD  3, 1, 0 ;  Store left operand into temporary register
15 : LD   1, 2(5) ;  Load parameter 'n' into R1
16 : ADD  2, 3, 0 ;  Restore left operand
17 : DIV  1, 2, 1 ;  R1 = left / right
18 : LDA 4, 3(5) ; Base of callee frame
19 : LDA 6, 23(0) ; Return address
20 : ST 6, 0(4) ; Store return addr in callee frame
21 : ADD 5, 4, 0 ; Push new frame
22 : LDA 7, 10(0) ; Call print
23 : LDC 2, 3(0) ; Caller frame size
24 : SUB 5, 5, 2 ; Pop frame
25 : LD   1, 1(5) ;  Load parameter 'm' into R1
26 : LDA 4, 4(5) ; Base of callee frame
27 : ST 1, 1(4) ; Store argument 0 in callee
28 : LD   1, 2(5) ;  Load parameter 'n' into R1
29 : LDA 4, 4(5) ; Base of callee frame
30 : ST 1, 2(4) ; Store argument 1 in callee
31 : LDA 4, 4(5) ; Base of callee frame
32 : LDA 6, 36(0) ; Return address
33 : ST 6, 0(4) ; Store return in callee frame
34 : ADD 5, 4, 0 ; Push callee frame
35 : LDA 7, 44(0) ; Call mod
36 : LD   1, 3(5) ;  Load function result
37 : LDC   2, 4(0) ;  Caller frame size
38 : SUB   5, 5, 2 ;  Pop back to caller
39 : SUB   4, 4, 2 ;  Pop back to caller
40 : ST 1, 3(5) ; Store result into caller’s frame
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
55 : LDA  7, 75(0) ;  Skip ELSE block
56 : LD   1, 1(5) ;  Load parameter 'm' into R1
57 : ADD  3, 1, 0 ;  Store left operand into temporary register
58 : LD   1, 2(5) ;  Load parameter 'n' into R1
59 : ADD  2, 3, 0 ;  Restore left operand
60 : SUB  1, 2, 1 ;  R1 = left - right
61 : LDA 4, 4(5) ; Base of callee frame
62 : ST 1, 1(4) ; Store argument 0 in callee
63 : LD   1, 2(5) ;  Load parameter 'n' into R1
64 : LDA 4, 4(5) ; Base of callee frame
65 : ST 1, 2(4) ; Store argument 1 in callee
66 : LDA 4, 4(5) ; Base of callee frame
67 : LDA 6, 71(0) ; Return address
68 : ST 6, 0(4) ; Store return in callee frame
69 : ADD 5, 4, 0 ; Push callee frame
70 : LDA 7, 44(0) ; Call mod
71 : LD   1, 3(5) ;  Load function result
72 : LDC   2, 4(0) ;  Caller frame size
73 : SUB   5, 5, 2 ;  Pop back to caller
74 : SUB   4, 4, 2 ;  Pop back to caller
75 : ST   1, 3(5) ;  Store function result into stack frame
76 : LD   6, 0(5) ;  Load return address
77 : LDA  7, 0(6) ;  Return to caller
