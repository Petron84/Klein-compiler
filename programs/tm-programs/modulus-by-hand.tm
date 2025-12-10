0 : LDC 5, 3(0) ;  Set DMEM pointer to main stack frame
1 : ADD 4, 5, 0 ;  Set top of caller frame (scratch)
2 : LD 2, 1(0) ;  Load CLI arg 1 into register
3 : ST 2, 1(5) ;  Store the argument into stack frame
4 : LD 2, 2(0) ;  Load CLI arg 2 into register
5 : ST 2, 2(5) ;  Store the argument into stack frame
6 : LDA 6, 2(7) ;  Calculate return address (two lines ahead)
7 : ST 6, 0(5) ;  Store return address in main stack frame
8 : LDA 7, 14(0) ;  Load address of main IMEM block - branch to function
9 : OUT 1, 0, 0 ;  Return result
10 : HALT 0, 0, 0 ;  Terminate program execution
11 : OUT 1, 0, 0 ;  Hardcoded print function
12 : LD 6, 0(5) ;  Load return address from stack frame
13 : LDA 7, 0(6) ;  Jump to return address
14 : LD 1, 2(5) ;  Load parameter 'n' into R1
15 : ADD 3, 1, 0 ;  Move right operand to R3
16 : LD 1, 1(5) ;  Load parameter 'm' into R1
17 : ADD 2, 1, 0 ;  Move left operand to R2
18 : ADD 1, 3, 0 ;  Restore right operand into R1
19 : DIV 1, 2, 1 ;  R1 = left / right
20 : LDA 4, 3(5) ;  Base of callee frame
21 : LDA 6, 25(0) ;  Return address
22 : ST 6, 0(4) ;  Store return addr in callee frame
23 : ADD 5, 4, 0 ;  Push new frame
24 : LDA 7, 11(0) ;  Call print
25 : LDC 2, 3(0) ;  Caller frame size
26 : SUB 5, 5, 2 ;  Pop frame
27 : LDA 4, 4(5) ;  Base of callee frame
28 : LD 1, 1(5) ;  Load parameter 'm' into R1
29 : ST 1, 1(4) ;  Store argument 0 in callee
30 : LD 1, 2(5) ;  Load parameter 'n' into R1
31 : ST 1, 2(4) ;  Store argument 1 in callee
32 : LDA 6, 36(0) ;  Return address
33 : ST 6, 0(4) ;  Store return in callee frame
34 : ADD 5, 4, 0 ;  Push callee frame
35 : LDA 7, 43(0) ;  Call mod
36 : LD 1, 3(5) ;  Load function result
37 : LDC 2, 4(0) ;  Caller frame size
38 : SUB 5, 5, 2 ;  Pop back to caller
39 : ST 1, 3(5) ;  Store result into caller’s frame
40 : LD 1, 3(5) ;  Load return value into register 1
41 : LD 6, 0(5) ;  Load return address for main function into register 6
42 : LDA 7, 0(6) ;  Jump to runtime continuation
43 : LD 1, 2(5) ;  Load parameter 'n' into R1
44 : ADD 3, 1, 0 ;  Move right operand to R3
45 : LD 1, 1(5) ;  Load parameter 'm' into R1
46 : ADD 2, 1, 0 ;  Move left operand to R2
47 : ADD 1, 3, 0 ;  Restore right operand into R1
48 : SUB 1, 2, 1 ;  left - right for less-than check
49 : JLT 1, 2(7) ;  If R1 < 0, jump to true
50 : LDC 1, 0(0) ;  false
51 : LDA 7, 1(7) ;  skip setting true
52 : LDC 1, 1(0) ;  true
53 : JEQ 1, 57(0) ;  If condition is false, jump to ELSE
54 : LD 1, 1(5) ;  Load parameter 'm' into R1
55 : ST 1, 3(5) ;  Store result into current frame's return slot
56 : LDA 7, 75(0) ;  Skip ELSE block
57 : LDA 4, 4(5) ;  Base of callee frame
58 : LD 1, 2(5) ;  Load parameter 'n' into R1
59 : ADD 3, 1, 0 ;  Move right operand to R3
60 : LD 1, 1(5) ;  Load parameter 'm' into R1
61 : ADD 2, 1, 0 ;  Move left operand to R2
62 : ADD 1, 3, 0 ;  Restore right operand into R1
63 : SUB 1, 2, 1 ;  R1 = left - right
64 : ST 1, 1(4) ;  Store argument 0 in callee
65 : LD 1, 2(5) ;  Load parameter 'n' into R1
66 : ST 1, 2(4) ;  Store argument 1 in callee
67 : LDA 6, 71(0) ;  Return address
68 : ST 6, 0(4) ;  Store return in callee frame
69 : ADD 5, 4, 0 ;  Push callee frame
70 : LDA 7, 43(0) ;  Call mod
71 : LD 1, 3(5) ;  Load function result
72 : LDC 2, 4(0) ;  Caller frame size
73 : SUB 5, 5, 2 ;  Pop back to caller
74 : ST 1, 3(5) ;  Store result into caller’s frame
75 : ST 1, 3(5) ;  Store function result into stack frame
76 : LD 6, 0(5) ;  Load return address
77 : LDA 7, 0(6) ;  Return to caller
