0 : LDC 5, 3(0) ;  Set DMEM pointer to main stack frame
1 : ADD 4, 5, 0 ;  Set top of caller frame
2 : LD 2, 1(0) ;  Load CLI arg 1 into register
3 : ST 2, 1(5) ;  Store the argument into stack frame
4 : LD 2, 2(0) ;  Load CLI arg 2 into register
5 : ST 2, 2(5) ;  Store the argument into stack frame
6 : LDA 6, 2(7) ;  Calculate return address
7 : ST 6, 0(5) ;  Store return address in main stack frame
8 : LDA 7, 14(0) ;  Load address of main IMEM block - branch to function
9 : OUT 1, 0, 0 ;  Return result
10 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
11 : OUT 1, 0, 0 ;  Hardcoded print function
12 : LD 6, 0(5) ;  Load return addess from stack frame.
13 : LDA 7, 0(6) ;  Jump to return address.
14 : LD 1, 2(5) ;  Load parameter 'n' into R1
15 : ADD 3, 1, 0 ;  Stash right operand in R3
16 : LD 1, 1(5) ;  Load parameter 'm' into R1
17 : ADD 2, 1, 0 ;  Move left operand to register 2
18 : ADD 1, 3, 0 ;  Restore right operand from R3
19 : DIV 1, 2, 1 ;  R1 = left / right
20 : LDA 3, 3(5) ; Base of callee frame (stable)
21 : LDA 6, 25(0) ; Return address
22 : ST 6, 0(3) ; Store return addr in callee frame
23 : ADD 5, 3, 0 ; Push new frame
24 : LDA 7, 11(0) ; Call print
25 : LDC 2, 3(0) ; Caller frame size
26 : SUB 5, 5, 2 ; Pop frame
27 : LDA 3, 4(5) ; Base of callee frame (stable)
28 : LD 1, 1(5) ;  Load parameter 'm' into R1
29 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
30 : LD 1, 2(5) ;  Load parameter 'n' into R1
31 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
32 : LDA 6, 36(0) ; Return address
33 : ST 6, 0(3) ; Store return in callee frame (via R3)
34 : ADD 5, 3, 0 ; Push callee frame
35 : LDA 7, 43(0) ; Call mod
36 : LD 1, 3(5) ;  Load function result
37 : LDC 2, 4(0) ;  Caller frame size
38 : SUB 5, 5, 2 ;  Pop back to caller
39 : ST 1, 3(5) ; Store result into caller’s frame
40 : LD 1, 3(5) ;  Load return value into register 1
41 : LD 6, 0(5) ;  Load return address for main function into register 6
42 : LDA 7, 0(6) ;  Jump to return address of main function
43 : LD 1, 2(5) ;  Load parameter 'n' into R1
44 : ADD 3, 1, 0 ;  Stash right operand in R3
45 : LD 1, 1(5) ;  Load parameter 'm' into R1
46 : ADD 2, 1, 0 ;  Move left operand to register 2
47 : ADD 1, 3, 0 ;  Restore right operand from R3
48 : SUB 1, 2, 1 ;  left - right for less-than check
49 : JLT 1, 2(7) ;  If R1 < 0, jump to true
50 : LDC 1, 0(0) ;  false
51 : LDA 7, 1(7) ;  skip setting true
52 : LDC 1, 1(0) ;  true
53 : JEQ 1, 56(0) ;  If condition is false, jump to ELSE
54 : LD 1, 1(5) ;  Load parameter 'm' into R1
55 : LDA 7, 73(0) ;  Skip ELSE block
56 : LDA 3, 4(5) ; Base of callee frame (stable)
57 : LD 1, 2(5) ;  Load parameter 'n' into R1
58 : ADD 3, 1, 0 ;  Stash right operand in R3
59 : LD 1, 1(5) ;  Load parameter 'm' into R1
60 : ADD 2, 1, 0 ;  Move left operand to register 2
61 : ADD 1, 3, 0 ;  Restore right operand from R3
62 : SUB 1, 2, 1 ;  R1 = left - right
63 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
64 : LD 1, 2(5) ;  Load parameter 'n' into R1
65 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
66 : LDA 6, 70(0) ; Return address
67 : ST 6, 0(3) ; Store return in callee frame (via R3)
68 : ADD 5, 3, 0 ; Push callee frame
69 : LDA 7, 43(0) ; Call mod
70 : LD 1, 3(5) ;  Load function result
71 : LDC 2, 4(0) ;  Caller frame size
72 : SUB 5, 5, 2 ;  Pop back to caller
73 : ST 1, 3(5) ;  Store function result into stack frame
74 : LD 6, 0(5) ;  Load return address
75 : LDA 7, 0(6) ;  Return to caller
