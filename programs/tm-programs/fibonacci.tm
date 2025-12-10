0 : LDC 5, 2(0) ;  Set DMEM pointer to main stack frame
1 : ADD 4, 5, 0 ;  Set top of caller frame (scratch)
2 : LD 2, 1(0) ;  Load CLI arg 1 into register
3 : ST 2, 1(5) ;  Store the argument into stack frame
4 : LDA 6, 2(7) ;  Calculate return address (two lines ahead)
5 : ST 6, 0(5) ;  Store return address in main stack frame
6 : LDA 7, 12(0) ;  Load address of main IMEM block - branch to function
7 : OUT 1, 0, 0 ;  Return result
8 : HALT 0, 0, 0 ;  Terminate program execution
9 : OUT 1, 0, 0 ;  Hardcoded print function
10 : LD 6, 0(5) ;  Load return address from stack frame
11 : LDA 7, 0(6) ;  Jump to return address
12 : LDC 1, 1(0) ;  Load integer-literal value into R1
13 : ADD 3, 1, 0 ;  Move right operand to R3
14 : LD 1, 1(5) ;  Load parameter 'elementWanted' into R1
15 : ADD 2, 1, 0 ;  Move left operand to R2
16 : ADD 1, 3, 0 ;  Restore right operand into R1
17 : SUB 1, 2, 1 ;  left - right for less-than check
18 : JLT 1, 2(7) ;  If R1 < 0, jump to true
19 : LDC 1, 0(0) ;  false
20 : LDA 7, 1(7) ;  skip setting true
21 : LDC 1, 1(0) ;  true
22 : JEQ 1, 26(0) ;  If condition is false, jump to ELSE
23 : LDC 1, 0(0) ;  Load integer-literal value into R1
24 : ST 1, 2(5) ;  Store result into current frame's return slot
25 : LDA 7, 43(0) ;  Skip ELSE block
26 : LDA 4, 6(5) ;  Base of callee frame
27 : LDC 1, 1(0) ;  Load integer-literal value into R1
28 : ST 1, 1(4) ;  Store argument 0 in callee
29 : LD 1, 1(5) ;  Load parameter 'elementWanted' into R1
30 : ST 1, 2(4) ;  Store argument 1 in callee
31 : LDC 1, 0(0) ;  Load integer-literal value into R1
32 : ST 1, 3(4) ;  Store argument 2 in callee
33 : LDC 1, 1(0) ;  Load integer-literal value into R1
34 : ST 1, 4(4) ;  Store argument 3 in callee
35 : LDA 6, 39(0) ;  Return address
36 : ST 6, 0(4) ;  Store return in callee frame
37 : ADD 5, 4, 0 ;  Push callee frame
38 : LDA 7, 46(0) ;  Call addNext
39 : LD 1, 5(5) ;  Load function result
40 : LDC 2, 6(0) ;  Caller frame size
41 : SUB 5, 5, 2 ;  Pop back to caller
42 : ST 1, 2(5) ;  Store result into caller’s frame
43 : LD 1, 2(5) ;  Load return value into register 1
44 : LD 6, 0(5) ;  Load return address for main function into register 6
45 : LDA 7, 0(6) ;  Jump to runtime continuation
46 : LD 1, 1(5) ;  Load parameter 'currentElement' into R1
47 : ADD 3, 1, 0 ;  Move right operand to R3
48 : LD 1, 2(5) ;  Load parameter 'elementWanted' into R1
49 : ADD 2, 1, 0 ;  Move left operand to R2
50 : ADD 1, 3, 0 ;  Restore right operand into R1
51 : SUB 1, 2, 1 ;  left - right for equality check
52 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
53 : LDC 1, 0(0) ;  false
54 : LDA 7, 1(7) ;  skip setting true
55 : LDC 1, 1(0) ;  true
56 : JEQ 1, 60(0) ;  If condition is false, jump to ELSE
57 : LD 1, 4(5) ;  Load parameter 'currentSum' into R1
58 : ST 1, 5(5) ;  Store result into current frame's return slot
59 : LDA 7, 87(0) ;  Skip ELSE block
60 : LDA 4, 6(5) ;  Base of callee frame
61 : LDC 1, 1(0) ;  Load integer-literal value into R1
62 : ADD 3, 1, 0 ;  Move right operand to R3
63 : LD 1, 1(5) ;  Load parameter 'currentElement' into R1
64 : ADD 2, 1, 0 ;  Move left operand to R2
65 : ADD 1, 3, 0 ;  Restore right operand into R1
66 : ADD 1, 2, 1 ;  R1 = left + right
67 : ST 1, 1(4) ;  Store argument 0 in callee
68 : LD 1, 2(5) ;  Load parameter 'elementWanted' into R1
69 : ST 1, 2(4) ;  Store argument 1 in callee
70 : LD 1, 4(5) ;  Load parameter 'currentSum' into R1
71 : ST 1, 3(4) ;  Store argument 2 in callee
72 : LD 1, 4(5) ;  Load parameter 'currentSum' into R1
73 : ADD 3, 1, 0 ;  Move right operand to R3
74 : LD 1, 3(5) ;  Load parameter 'previousSum' into R1
75 : ADD 2, 1, 0 ;  Move left operand to R2
76 : ADD 1, 3, 0 ;  Restore right operand into R1
77 : ADD 1, 2, 1 ;  R1 = left + right
78 : ST 1, 4(4) ;  Store argument 3 in callee
79 : LDA 6, 83(0) ;  Return address
80 : ST 6, 0(4) ;  Store return in callee frame
81 : ADD 5, 4, 0 ;  Push callee frame
82 : LDA 7, 46(0) ;  Call addNext
83 : LD 1, 5(5) ;  Load function result
84 : LDC 2, 6(0) ;  Caller frame size
85 : SUB 5, 5, 2 ;  Pop back to caller
86 : ST 1, 5(5) ;  Store result into caller’s frame
87 : ST 1, 5(5) ;  Store function result into stack frame
88 : LD 6, 0(5) ;  Load return address
89 : LDA 7, 0(6) ;  Return to caller
