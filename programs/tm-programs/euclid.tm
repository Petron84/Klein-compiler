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
22 : LDA 7, 30(0) ; Call gcd
23 : LD 1, 3(5) ;  Load function result
24 : LDC 2, 4(0) ;  Caller frame size
25 : SUB 5, 5, 2 ;  Pop back to caller
26 : ST 1, 3(5) ; Store result into caller’s frame
27 : LD 1, 3(5) ;  Load return value into register 1
28 : LD 6, 0(5) ;  Load return address for main function into register 6
29 : LDA 7, 0(6) ;  Jump to return address of main function
30 : LDC 1, 0(0) ;  Load integer-literal value into register 1
31 : ADD 3, 1, 0 ;  Stash right operand in R3
32 : LD 1, 2(5) ;  Load parameter 'b' into R1
33 : ADD 2, 1, 0 ;  Move left operand to register 2
34 : ADD 1, 3, 0 ;  Restore right operand from R3
35 : SUB 1, 2, 1 ;  left - right for equality check
36 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
37 : LDC 1, 0(0) ;  false
38 : LDA 7, 1(7) ;  skip setting true
39 : LDC 1, 1(0) ;  true
40 : JEQ 1, 43(0) ;  If condition is false, jump to ELSE
41 : LD 1, 1(5) ;  Load parameter 'a' into R1
42 : LDA 7, 66(0) ;  Skip ELSE block
43 : LDA 3, 4(5) ; Base of callee frame (stable)
44 : LD 1, 2(5) ;  Load parameter 'b' into R1
45 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
46 : LDA 3, 4(5) ; Base of callee frame (stable)
47 : LD 1, 1(5) ;  Load parameter 'a' into R1
48 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
49 : LD 1, 2(5) ;  Load parameter 'b' into R1
50 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
51 : LDA 6, 55(0) ; Return address
52 : ST 6, 0(3) ; Store return in callee frame (via R3)
53 : ADD 5, 3, 0 ; Push callee frame
54 : LDA 7, 69(0) ; Call remainder
55 : LD 1, 3(5) ;  Load function result
56 : LDC 2, 4(0) ;  Caller frame size
57 : SUB 5, 5, 2 ;  Pop back to caller
58 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
59 : LDA 6, 63(0) ; Return address
60 : ST 6, 0(3) ; Store return in callee frame (via R3)
61 : ADD 5, 3, 0 ; Push callee frame
62 : LDA 7, 30(0) ; Call gcd
63 : LD 1, 3(5) ;  Load function result
64 : LDC 2, 4(0) ;  Caller frame size
65 : SUB 5, 5, 2 ;  Pop back to caller
66 : ST 1, 3(5) ;  Store function result into stack frame
67 : LD 6, 0(5) ;  Load return address
68 : LDA 7, 0(6) ;  Return to caller
69 : LD 1, 2(5) ;  Load parameter 'b' into R1
70 : ADD 3, 1, 0 ;  Stash right operand in R3
71 : LD 1, 1(5) ;  Load parameter 'a' into R1
72 : ADD 2, 1, 0 ;  Move left operand to register 2
73 : ADD 1, 3, 0 ;  Restore right operand from R3
74 : SUB 1, 2, 1 ;  left - right for less-than check
75 : JLT 1, 2(7) ;  If R1 < 0, jump to true
76 : LDC 1, 0(0) ;  false
77 : LDA 7, 1(7) ;  skip setting true
78 : LDC 1, 1(0) ;  true
79 : JEQ 1, 82(0) ;  If condition is false, jump to ELSE
80 : LD 1, 1(5) ;  Load parameter 'a' into R1
81 : LDA 7, 99(0) ;  Skip ELSE block
82 : LDA 3, 4(5) ; Base of callee frame (stable)
83 : LD 1, 2(5) ;  Load parameter 'b' into R1
84 : ADD 3, 1, 0 ;  Stash right operand in R3
85 : LD 1, 1(5) ;  Load parameter 'a' into R1
86 : ADD 2, 1, 0 ;  Move left operand to register 2
87 : ADD 1, 3, 0 ;  Restore right operand from R3
88 : SUB 1, 2, 1 ;  R1 = left - right
89 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
90 : LD 1, 2(5) ;  Load parameter 'b' into R1
91 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
92 : LDA 6, 96(0) ; Return address
93 : ST 6, 0(3) ; Store return in callee frame (via R3)
94 : ADD 5, 3, 0 ; Push callee frame
95 : LDA 7, 69(0) ; Call remainder
96 : LD 1, 3(5) ;  Load function result
97 : LDC 2, 4(0) ;  Caller frame size
98 : SUB 5, 5, 2 ;  Pop back to caller
99 : ST 1, 3(5) ;  Store function result into stack frame
100 : LD 6, 0(5) ;  Load return address
101 : LDA 7, 0(6) ;  Return to caller
