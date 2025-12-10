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
14 : LDA 3, 4(5) ; Base of callee frame (stable)
15 : LD 1, 1(5) ;  Load parameter 'a' into R1
16 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
17 : LD 1, 2(5) ;  Load parameter 'b' into R1
18 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
19 : LDA 6, 23(0) ; Return address
20 : ST 6, 0(3) ; Store return in callee frame (via R3)
21 : ADD 5, 3, 0 ; Push callee frame
22 : LDA 7, 30(0) ; Call add_till_n
23 : LD 1, 3(5) ;  Load function result
24 : LDC 2, 4(0) ;  Caller frame size
25 : SUB 5, 5, 2 ;  Pop back to caller
26 : ST 1, 3(5) ; Store result into caller’s frame
27 : LD 1, 3(5) ;  Load return value into register 1
28 : LD 6, 0(5) ;  Load return address for main function into register 6
29 : LDA 7, 0(6) ;  Jump to return address of main function
30 : LD 1, 1(5) ;  Load parameter 'a' into R1
31 : LDA 3, 3(5) ; Base of callee frame (stable)
32 : LDA 6, 36(0) ; Return address
33 : ST 6, 0(3) ; Store return addr in callee frame
34 : ADD 5, 3, 0 ; Push new frame
35 : LDA 7, 11(0) ; Call print
36 : LDC 2, 3(0) ; Caller frame size
37 : SUB 5, 5, 2 ; Pop frame
38 : LD 1, 2(5) ;  Load parameter 'b' into R1
39 : ADD 3, 1, 0 ;  Stash right operand in R3
40 : LD 1, 1(5) ;  Load parameter 'a' into R1
41 : ADD 2, 1, 0 ;  Move left operand to register 2
42 : ADD 1, 3, 0 ;  Restore right operand from R3
43 : SUB 1, 2, 1 ;  left - right for equality check
44 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
45 : LDC 1, 0(0) ;  false
46 : LDA 7, 1(7) ;  skip setting true
47 : LDC 1, 1(0) ;  true
48 : JEQ 1, 51(0) ;  If condition is false, jump to ELSE
49 : LD 1, 1(5) ;  Load parameter 'a' into R1
50 : LDA 7, 68(0) ;  Skip ELSE block
51 : LDA 3, 4(5) ; Base of callee frame (stable)
52 : LDC 1, 1(0) ;  Load integer-literal value into register 1
53 : ADD 3, 1, 0 ;  Stash right operand in R3
54 : LD 1, 1(5) ;  Load parameter 'a' into R1
55 : ADD 2, 1, 0 ;  Move left operand to register 2
56 : ADD 1, 3, 0 ;  Restore right operand from R3
57 : ADD 1, 2, 1 ;  R1 = left + right
58 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
59 : LD 1, 2(5) ;  Load parameter 'b' into R1
60 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
61 : LDA 6, 65(0) ; Return address
62 : ST 6, 0(3) ; Store return in callee frame (via R3)
63 : ADD 5, 3, 0 ; Push callee frame
64 : LDA 7, 30(0) ; Call add_till_n
65 : LD 1, 3(5) ;  Load function result
66 : LDC 2, 4(0) ;  Caller frame size
67 : SUB 5, 5, 2 ;  Pop back to caller
68 : ST 1, 3(5) ;  Store function result into stack frame
69 : LD 6, 0(5) ;  Load return address
70 : LDA 7, 0(6) ;  Return to caller
