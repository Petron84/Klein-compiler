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
18 : LDA 4, 4(5) ; Base of callee frame
19 : LDA 6, 23(0) ; Return address
20 : ST 6, 0(4) ; Store return addr in callee frame
21 : ADD 5, 4, 0 ; Push new frame
22 : LDA 7, 10(0) ; Call print
23 : LDC 2, 4(0) ; Caller frame size
24 : SUB 5, 5, 2 ; Pop frame
25 : LDA 4, 4(5) ; Base of callee frame
26 : LD   1, 1(5) ;  Load parameter 'm' into R1
27 : ST 1, 1(4) ; Argument 0
28 : LD   1, 2(5) ;  Load parameter 'n' into R1
29 : ST 1, 2(4) ; Argument 1
30 : LDA 6, 34(0) ; Return address
31 : ST 6, 0(4) ; Store return in callee frame
32 : ADD 5, 4, 0 ; Push callee frame
33 : LDA 7, 41(0) ; Call mod
34 : LD 1, 3(5) ; Load function result
35 : LDC 2, 4(0) ; Caller frame size
36 : SUB 5, 5, 2 ; Pop back to caller
37 : ST 1, 3(5) ; Store result into caller’s frame
38 : LD   1, 3(5) ;  Load return value into register 1
39 : LD  6, 0(5) ;  Load return address for main function into register 6
40 : LDA  7, 0(6) ;  Jump to return address of main function
41 : LD   1, 1(5) ;  Load parameter 'm' into R1
42 : ADD  3, 1, 0 ;  Store left operand into temporary register
43 : LD   1, 2(5) ;  Load parameter 'n' into R1
44 : ADD  2, 3, 0 ;  Restore left operand
45 : SUB  1, 2, 1 ;  left - right for less-than check
46 : JLT  1, 2(7) ;  If R1 < 0, jump to true
47 : LDC  1, 0(0) ;  false
48 : LDA  7, 1(7) ;  skip setting true
49 : LDC  1, 1(0) ;  true
50 : JEQ  1, 53(0) ;  If condition is false, jump to ELSE
51 : LD   1, 1(5) ;  Load parameter 'm' into R1
52 : LDA  7, 69(0) ;  Skip ELSE block
53 : LDA 4, 4(5) ; Base of callee frame
54 : LD   1, 1(5) ;  Load parameter 'm' into R1
55 : ADD  3, 1, 0 ;  Store left operand into temporary register
56 : LD   1, 2(5) ;  Load parameter 'n' into R1
57 : ADD  2, 3, 0 ;  Restore left operand
58 : SUB  1, 2, 1 ;  R1 = left - right
59 : ST 1, 1(4) ; Argument 0
60 : LD   1, 2(5) ;  Load parameter 'n' into R1
61 : ST 1, 2(4) ; Argument 1
62 : LDA 6, 66(0) ; Return address
63 : ST 6, 0(4) ; Store return in callee frame
64 : ADD 5, 4, 0 ; Push callee frame
65 : LDA 7, 41(0) ; Call mod
66 : LD 1, 3(5) ; Load function result
67 : LDC 2, 4(0) ; Caller frame size
68 : SUB 5, 5, 2 ; Pop back to caller
69 : ST   1, 3(5) ;  Store function result into stack frame
70 : LD   6, 0(5) ;  Load return address
71 : LDA  7, 0(6) ;  Return to caller
