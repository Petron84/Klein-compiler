0 : LDC 5, 1(0) ;  Set DMEM pointer to main stack frame
1 : ADD 4, 5, 0 ;  Set top of caller frame (scratch)
2 : LDA 6, 2(7) ;  Calculate return address (two lines ahead)
3 : ST 6, 0(5) ;  Store return address in main stack frame
4 : LDA 7, 10(0) ;  Load address of main IMEM block - branch to function
5 : OUT 1, 0, 0 ;  Return result
6 : HALT 0, 0, 0 ;  Terminate program execution
7 : OUT 1, 0, 0 ;  Hardcoded print function
8 : LD 6, 0(5) ;  Load return address from stack frame
9 : LDA 7, 0(6) ;  Jump to return address
10 : LDA 4, 4(5) ;  Base of callee frame
11 : LDC 1, 2(0) ;  Load integer-literal value into R1
12 : ST 1, 1(4) ;  Store argument 0 in callee
13 : LDC 1, 2(0) ;  Load integer-literal value into R1
14 : ST 1, 2(4) ;  Store argument 1 in callee
15 : LDA 6, 19(0) ;  Return address
16 : ST 6, 0(4) ;  Store return in callee frame
17 : ADD 5, 4, 0 ;  Push callee frame
18 : LDA 7, 62(0) ;  Call MOD
19 : LD 1, 3(5) ;  Load function result
20 : LDC 2, 4(0) ;  Caller frame size
21 : SUB 5, 5, 2 ;  Pop back to caller
22 : ADD 2, 1, 0 ;  Move left operand to R2
23 : LDC 1, 3(0) ;  Load integer-literal value into R1
24 : MUL 1, 2, 1 ;  R1 = left * right
25 : ADD 2, 1, 0 ;  Move left operand to R2
26 : LDC 1, 4(0) ;  Load integer-literal value into R1
27 : SUB 1, 2, 1 ;  left - right for less-than check
28 : JLT 1, 2(7) ;  If R1 < 0, jump to true
29 : LDC 1, 0(0) ;  false
30 : LDA 7, 1(7) ;  skip setting true
31 : LDC 1, 1(0) ;  true
32 : ADD 2, 1, 0 ;  Move left operand to R2
33 : LDA 4, 4(5) ;  Base of callee frame
34 : LDC 1, 5(0) ;  Load integer-literal value into R1
35 : ST 1, 1(4) ;  Store argument 0 in callee
36 : LDC 1, 3(0) ;  Load integer-literal value into R1
37 : ST 1, 2(4) ;  Store argument 1 in callee
38 : LDA 6, 42(0) ;  Return address
39 : ST 6, 0(4) ;  Store return in callee frame
40 : ADD 5, 4, 0 ;  Push callee frame
41 : LDA 7, 62(0) ;  Call MOD
42 : LD 1, 3(5) ;  Load function result
43 : LDC 2, 4(0) ;  Caller frame size
44 : SUB 5, 5, 2 ;  Pop back to caller
45 : ADD 2, 1, 0 ;  Move left operand to R2
46 : LDC 1, 2(0) ;  Load integer-literal value into R1
47 : MUL 1, 2, 1 ;  R1 = left * right
48 : ADD 2, 1, 0 ;  Move left operand to R2
49 : LDC 1, 5(0) ;  Load integer-literal value into R1
50 : SUB 1, 2, 1 ;  left - right for less-than check
51 : JLT 1, 2(7) ;  If R1 < 0, jump to true
52 : LDC 1, 0(0) ;  false
53 : LDA 7, 1(7) ;  skip setting true
54 : LDC 1, 1(0) ;  true
55 : LDC 2, 1(0) ;  Load 1 into R2
56 : SUB 1, 2, 1 ;  Logical NOT: 1 - R1
57 : ADD 1, 2, 1 ;  R1 = left OR right
58 : ST 1, 1(5) ;  Store result into current frame's return slot
59 : LD 1, 1(5) ;  Load return value into register 1
60 : LD 6, 0(5) ;  Load return address for main function into register 6
61 : LDA 7, 0(6) ;  Jump to runtime continuation
62 : LD 1, 2(5) ;  Load parameter 'n' into R1
63 : ADD 3, 1, 0 ;  Move right operand to R3
64 : LD 1, 1(5) ;  Load parameter 'm' into R1
65 : ADD 2, 1, 0 ;  Move left operand to R2
66 : ADD 1, 3, 0 ;  Restore right operand into R1
67 : DIV 1, 2, 1 ;  R1 = left / right
68 : ADD 2, 1, 0 ;  Move left operand to R2
69 : LD 1, 2(5) ;  Load parameter 'n' into R1
70 : MUL 1, 2, 1 ;  R1 = left * right
71 : ADD 3, 1, 0 ;  Move right operand to R3 (scratch)
72 : LD 1, 1(5) ;  Load parameter 'm' into R1
73 : ADD 2, 1, 0 ;  Move left operand to R2
74 : ADD 1, 3, 0 ;  Restore right operand into R1
75 : SUB 1, 2, 1 ;  R1 = left - right
76 : ST 1, 3(5) ;  Store result into current frame's return slot
77 : ST 1, 3(5) ;  Store function result into stack frame
78 : LD 6, 0(5) ;  Load return address
79 : LDA 7, 0(6) ;  Return to caller
