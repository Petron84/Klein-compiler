0 : LDC  5, 1(0) ;  Set DMEM pointer to main stack frame
1 : LDA  6, 2(7) ;  Calculate return address
2 : ST   6, 0(5) ;  Store return address in main stack frame
3 : LDA  7, 9(0) ;  Load address of main IMEM block - branch to function
4 : OUT  1, 0, 0 ;  Return result
5 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
6 : OUT  1, 0, 0 ;  Hardcoded print function
7 : LD   6, 0(5) ;  Load return addess from stack frame.
8 : LDA  7, 0(6) ;  Jump to return address.
9 : LDA 4, 4(5) ; Base of callee frame
10 : LDC  1, 2(0) ;  Load integer-literal value into register 1
11 : ST 1, 1(4) ; Store argument 0 in callee
12 : LDC  1, 2(0) ;  Load integer-literal value into register 1
13 : ST 1, 2(4) ; Store argument 1 in callee
14 : LDA 6, 18(0) ; Return address
15 : ST 6, 0(4) ; Store return in callee frame
16 : ADD 5, 4, 0 ; Push callee frame
17 : LDA 7, 68(0) ; Call MOD
18 : LD   1, 3(5) ;  Load function result
19 : LDC   2, 4(0) ;  Caller frame size
20 : SUB   5, 5, 2 ;  Pop back to caller
21 : SUB   4, 4, 2 ;  Pop back to caller
22 : ADD  3, 1, 0 ;  Store left operand into temporary register
23 : LDC  1, 3(0) ;  Load integer-literal value into register 1
24 : ADD  2, 3, 0 ;  Restore left operand
25 : MUL  1, 2, 1 ;  R1 = left * right
26 : ADD  3, 1, 0 ;  Store left operand into temporary register
27 : LDC  1, 4(0) ;  Load integer-literal value into register 1
28 : ADD  2, 3, 0 ;  Restore left operand
29 : SUB  1, 2, 1 ;  left - right for less-than check
30 : JLT  1, 2(7) ;  If R1 < 0, jump to true
31 : LDC  1, 0(0) ;  false
32 : LDA  7, 1(7) ;  skip setting true
33 : LDC  1, 1(0) ;  true
34 : ADD  3, 1, 0 ;  Store left operand into temporary register
35 : LDA 4, 4(5) ; Base of callee frame
36 : LDC  1, 5(0) ;  Load integer-literal value into register 1
37 : ST 1, 1(4) ; Store argument 0 in callee
38 : LDC  1, 3(0) ;  Load integer-literal value into register 1
39 : ST 1, 2(4) ; Store argument 1 in callee
40 : LDA 6, 44(0) ; Return address
41 : ST 6, 0(4) ; Store return in callee frame
42 : ADD 5, 4, 0 ; Push callee frame
43 : LDA 7, 68(0) ; Call MOD
44 : LD   1, 3(5) ;  Load function result
45 : LDC   2, 4(0) ;  Caller frame size
46 : SUB   5, 5, 2 ;  Pop back to caller
47 : SUB   4, 4, 2 ;  Pop back to caller
48 : ADD  3, 1, 0 ;  Store left operand into temporary register
49 : LDC  1, 2(0) ;  Load integer-literal value into register 1
50 : ADD  2, 3, 0 ;  Restore left operand
51 : MUL  1, 2, 1 ;  R1 = left * right
52 : ADD  3, 1, 0 ;  Store left operand into temporary register
53 : LDC  1, 5(0) ;  Load integer-literal value into register 1
54 : ADD  2, 3, 0 ;  Restore left operand
55 : SUB  1, 2, 1 ;  left - right for less-than check
56 : JLT  1, 2(7) ;  If R1 < 0, jump to true
57 : LDC  1, 0(0) ;  false
58 : LDA  7, 1(7) ;  skip setting true
59 : LDC  1, 1(0) ;  true
60 : LDC  2, 1(0) ;  Load 1 into R2
61 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
62 : ADD  2, 3, 0 ;  Restore left operand
63 : ADD  1, 2, 1 ;  R1 = left OR right
64 : ST 1, 1(5) ;  Store result into current frame's return slot
65 : LD   1, 1(5) ;  Load return value into register 1
66 : LD  6, 0(5) ;  Load return address for main function into register 6
67 : LDA  7, 0(6) ;  Jump to return address of main function
68 : LD   1, 1(5) ;  Load parameter 'm' into R1
69 : ADD  3, 1, 0 ;  Store left operand into temporary register
70 : LD   1, 1(5) ;  Load parameter 'm' into R1
71 : ADD  3, 1, 0 ;  Store left operand into temporary register
72 : LD   1, 2(5) ;  Load parameter 'n' into R1
73 : ADD  2, 3, 0 ;  Restore left operand
74 : DIV  1, 2, 1 ;  R1 = left / right
75 : ADD  3, 1, 0 ;  Store left operand into temporary register
76 : LD   1, 2(5) ;  Load parameter 'n' into R1
77 : ADD  2, 3, 0 ;  Restore left operand
78 : MUL  1, 2, 1 ;  R1 = left * right
79 : ADD  2, 3, 0 ;  Restore left operand
80 : SUB  1, 2, 1 ;  R1 = left - right
81 : ST   1, 3(5) ;  Store function result into stack frame
82 : LD   6, 0(5) ;  Load return address
83 : LDA  7, 0(6) ;  Return to caller
