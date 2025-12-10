0 : LDC 5, 4(0) ;  Set DMEM pointer to main stack frame
1 : ADD 4, 5, 0 ;  Set top of caller frame
2 : LD 2, 1(0) ;  Load CLI arg 1 into register
3 : ST 2, 1(5) ;  Store the argument into stack frame
4 : LD 2, 2(0) ;  Load CLI arg 2 into register
5 : ST 2, 2(5) ;  Store the argument into stack frame
6 : LD 2, 3(0) ;  Load CLI arg 3 into register
7 : ST 2, 3(5) ;  Store the argument into stack frame
8 : LDA 6, 2(7) ;  Calculate return address
9 : ST 6, 0(5) ;  Store return address in main stack frame
10 : LDA 7, 16(0) ;  Load address of main IMEM block - branch to function
11 : OUT 1, 0, 0 ;  Return result
12 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
13 : OUT 1, 0, 0 ;  Hardcoded print function
14 : LD 6, 0(5) ;  Load return addess from stack frame.
15 : LDA 7, 0(6) ;  Jump to return address.
16 : LDC 1, 0(0) ;  Load integer-literal value into register 1
17 : ADD 3, 1, 0 ;  Stash right operand in R3
18 : LD 1, 3(5) ;  Load parameter 'n' into R1
19 : ADD 2, 1, 0 ;  Move left operand to register 2
20 : ADD 1, 3, 0 ;  Restore right operand from R3
21 : SUB 1, 2, 1 ;  left - right for equality check
22 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
23 : LDC 1, 0(0) ;  false
24 : LDA 7, 1(7) ;  skip setting true
25 : LDC 1, 1(0) ;  true
26 : JEQ 1, 30(0) ;  If condition is false, jump to ELSE
27 : LD 1, 1(5) ;  Load parameter 'a' into R1
28 : ST 1, 4(5) ;  Store result into current frame's return slot
29 : LDA 7, 45(0) ;  Skip ELSE block
30 : LDA 3, 5(5) ; Base of callee frame (stable)
31 : LD 1, 1(5) ;  Load parameter 'a' into R1
32 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
33 : LD 1, 2(5) ;  Load parameter 'b' into R1
34 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
35 : LD 1, 3(5) ;  Load parameter 'n' into R1
36 : ST 1, 3(3) ; Store argument 2 in callee (via R3)
37 : LDA 6, 41(0) ; Return address
38 : ST 6, 0(3) ; Store return in callee frame (via R3)
39 : ADD 5, 3, 0 ; Push callee frame
40 : LDA 7, 65(0) ; Call printAndDivide
41 : LD 1, 4(5) ;  Load function result
42 : LDC 2, 5(0) ;  Caller frame size
43 : SUB 5, 5, 2 ;  Pop back to caller
44 : ST 1, 4(5) ; Store result into caller’s frame
45 : LD 1, 4(5) ;  Load return value into register 1
46 : LD 6, 0(5) ;  Load return address for main function into register 6
47 : LDA 7, 0(6) ;  Jump to return address of main function
48 : LD 1, 2(5) ;  Load parameter 'n' into R1
49 : ADD 3, 1, 0 ;  Stash right operand in R3
50 : LD 1, 1(5) ;  Load parameter 'm' into R1
51 : ADD 2, 1, 0 ;  Move left operand to register 2
52 : ADD 1, 3, 0 ;  Restore right operand from R3
53 : DIV 1, 2, 1 ;  R1 = left / right
54 : ADD 2, 1, 0 ;  Move left operand to register 2
55 : LD 1, 2(5) ;  Load parameter 'n' into R1
56 : MUL 1, 2, 1 ;  R1 = left * right
57 : ADD 3, 1, 0 ;  Move right operand to register 3
58 : LD 1, 1(5) ;  Load parameter 'm' into R1
59 : ADD 2, 1, 0 ;  Move left operand to register 2
60 : ADD 1, 3, 0 ;  Move right operand to register 1
61 : SUB 1, 2, 1 ;  R1 = left - right
62 : ST 1, 3(5) ;  Store function result into stack frame
63 : LD 6, 0(5) ;  Load return address
64 : LDA 7, 0(6) ;  Return to caller
65 : LD 1, 1(5) ;  Load parameter 'a' into R1
66 : ADD 3, 1, 0 ;  Stash right operand in R3
67 : LDC 1, 10(0) ;  Load integer-literal value into register 1
68 : ADD 2, 1, 0 ;  Move left operand to register 2
69 : ADD 1, 3, 0 ;  Restore right operand from R3
70 : MUL 1, 2, 1 ;  R1 = left * right
71 : ADD 2, 1, 0 ;  Move left operand to register 2
72 : LD 1, 2(5) ;  Load parameter 'b' into R1
73 : DIV 1, 2, 1 ;  R1 = left / right
74 : LDA 3, 3(5) ; Base of callee frame (stable)
75 : LDA 6, 79(0) ; Return address
76 : ST 6, 0(3) ; Store return addr in callee frame
77 : ADD 5, 3, 0 ; Push new frame
78 : LDA 7, 13(0) ; Call print
79 : LDC 2, 3(0) ; Caller frame size
80 : SUB 5, 5, 2 ; Pop frame
81 : LDA 3, 5(5) ; Base of callee frame (stable)
82 : LDA 3, 4(5) ; Base of callee frame (stable)
83 : LDC 1, 10(0) ;  Load integer-literal value into register 1
84 : ADD 3, 1, 0 ;  Stash right operand in R3
85 : LD 1, 1(5) ;  Load parameter 'a' into R1
86 : ADD 2, 1, 0 ;  Move left operand to register 2
87 : ADD 1, 3, 0 ;  Restore right operand from R3
88 : MUL 1, 2, 1 ;  R1 = left * right
89 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
90 : LD 1, 2(5) ;  Load parameter 'b' into R1
91 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
92 : LDA 6, 96(0) ; Return address
93 : ST 6, 0(3) ; Store return in callee frame (via R3)
94 : ADD 5, 3, 0 ; Push callee frame
95 : LDA 7, 48(0) ; Call MOD
96 : LD 1, 3(5) ;  Load function result
97 : LDC 2, 4(0) ;  Caller frame size
98 : SUB 5, 5, 2 ;  Pop back to caller
99 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
100 : LD 1, 2(5) ;  Load parameter 'b' into R1
101 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
102 : LDC 1, 1(0) ;  Load integer-literal value into register 1
103 : ADD 3, 1, 0 ;  Stash right operand in R3
104 : LD 1, 3(5) ;  Load parameter 'n' into R1
105 : ADD 2, 1, 0 ;  Move left operand to register 2
106 : ADD 1, 3, 0 ;  Restore right operand from R3
107 : SUB 1, 2, 1 ;  R1 = left - right
108 : ST 1, 3(3) ; Store argument 2 in callee (via R3)
109 : LDA 6, 113(0) ; Return address
110 : ST 6, 0(3) ; Store return in callee frame (via R3)
111 : ADD 5, 3, 0 ; Push callee frame
112 : LDA 7, 16(0) ; Call main
113 : LD 1, 4(5) ;  Load function result
114 : LDC 2, 5(0) ;  Caller frame size
115 : SUB 5, 5, 2 ;  Pop back to caller
116 : ST 1, 4(5) ;  Store function result into stack frame
117 : LD 6, 0(5) ;  Load return address
118 : LDA 7, 0(6) ;  Return to caller
