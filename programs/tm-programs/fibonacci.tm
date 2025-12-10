0 : LDC 5, 2(0) ;  Set DMEM pointer to main stack frame
1 : ADD 4, 5, 0 ;  Set top of caller frame
2 : LD 2, 1(0) ;  Load CLI arg 1 into register
3 : ST 2, 1(5) ;  Store the argument into stack frame
4 : LDA 6, 2(7) ;  Calculate return address
5 : ST 6, 0(5) ;  Store return address in main stack frame
6 : LDA 7, 12(0) ;  Load address of main IMEM block - branch to function
7 : OUT 1, 0, 0 ;  Return result
8 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
9 : OUT 1, 0, 0 ;  Hardcoded print function
10 : LD 6, 0(5) ;  Load return addess from stack frame.
11 : LDA 7, 0(6) ;  Jump to return address.
12 : LDC 1, 1(0) ;  Load integer-literal value into register 1
13 : ADD 3, 1, 0 ;  Stash right operand in R3
14 : LD 1, 1(5) ;  Load parameter 'elementWanted' into R1
15 : ADD 2, 1, 0 ;  Move left operand to register 2
16 : ADD 1, 3, 0 ;  Restore right operand from R3
17 : SUB 1, 2, 1 ;  left - right for less-than check
18 : JLT 1, 2(7) ;  If R1 < 0, jump to true
19 : LDC 1, 0(0) ;  false
20 : LDA 7, 1(7) ;  skip setting true
21 : LDC 1, 1(0) ;  true
22 : JEQ 1, 26(0) ;  If condition is false, jump to ELSE
23 : LDC 1, 0(0) ;  Load integer-literal value into register 1
24 : ST 1, 2(5) ;  Store result into current frame's return slot
25 : LDA 7, 43(0) ;  Skip ELSE block
26 : LDA 3, 6(5) ; Base of callee frame (stable)
27 : LDC 1, 1(0) ;  Load integer-literal value into register 1
28 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
29 : LD 1, 1(5) ;  Load parameter 'elementWanted' into R1
30 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
31 : LDC 1, 0(0) ;  Load integer-literal value into register 1
32 : ST 1, 3(3) ; Store argument 2 in callee (via R3)
33 : LDC 1, 1(0) ;  Load integer-literal value into register 1
34 : ST 1, 4(3) ; Store argument 3 in callee (via R3)
35 : LDA 6, 39(0) ; Return address
36 : ST 6, 0(3) ; Store return in callee frame (via R3)
37 : ADD 5, 3, 0 ; Push callee frame
38 : LDA 7, 46(0) ; Call addNext
39 : LD 1, 5(5) ;  Load function result
40 : LDC 2, 6(0) ;  Caller frame size
41 : SUB 5, 5, 2 ;  Pop back to caller
42 : ST 1, 2(5) ; Store result into caller’s frame
43 : LD 1, 2(5) ;  Load return value into register 1
44 : LD 6, 0(5) ;  Load return address for main function into register 6
45 : LDA 7, 0(6) ;  Jump to return address of main function
46 : LD 1, 1(5) ;  Load parameter 'currentElement' into R1
47 : ADD 3, 1, 0 ;  Stash right operand in R3
48 : LD 1, 2(5) ;  Load parameter 'elementWanted' into R1
49 : ADD 2, 1, 0 ;  Move left operand to register 2
50 : ADD 1, 3, 0 ;  Restore right operand from R3
51 : SUB 1, 2, 1 ;  left - right for equality check
52 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
53 : LDC 1, 0(0) ;  false
54 : LDA 7, 1(7) ;  skip setting true
55 : LDC 1, 1(0) ;  true
56 : JEQ 1, 59(0) ;  If condition is false, jump to ELSE
57 : LD 1, 4(5) ;  Load parameter 'currentSum' into R1
58 : LDA 7, 85(0) ;  Skip ELSE block
59 : LDA 3, 6(5) ; Base of callee frame (stable)
60 : LDC 1, 1(0) ;  Load integer-literal value into register 1
61 : ADD 3, 1, 0 ;  Stash right operand in R3
62 : LD 1, 1(5) ;  Load parameter 'currentElement' into R1
63 : ADD 2, 1, 0 ;  Move left operand to register 2
64 : ADD 1, 3, 0 ;  Restore right operand from R3
65 : ADD 1, 2, 1 ;  R1 = left + right
66 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
67 : LD 1, 2(5) ;  Load parameter 'elementWanted' into R1
68 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
69 : LD 1, 4(5) ;  Load parameter 'currentSum' into R1
70 : ST 1, 3(3) ; Store argument 2 in callee (via R3)
71 : LD 1, 4(5) ;  Load parameter 'currentSum' into R1
72 : ADD 3, 1, 0 ;  Stash right operand in R3
73 : LD 1, 3(5) ;  Load parameter 'previousSum' into R1
74 : ADD 2, 1, 0 ;  Move left operand to register 2
75 : ADD 1, 3, 0 ;  Restore right operand from R3
76 : ADD 1, 2, 1 ;  R1 = left + right
77 : ST 1, 4(3) ; Store argument 3 in callee (via R3)
78 : LDA 6, 82(0) ; Return address
79 : ST 6, 0(3) ; Store return in callee frame (via R3)
80 : ADD 5, 3, 0 ; Push callee frame
81 : LDA 7, 46(0) ; Call addNext
82 : LD 1, 5(5) ;  Load function result
83 : LDC 2, 6(0) ;  Caller frame size
84 : SUB 5, 5, 2 ;  Pop back to caller
85 : ST 1, 5(5) ;  Store function result into stack frame
86 : LD 6, 0(5) ;  Load return address
87 : LDA 7, 0(6) ;  Return to caller
