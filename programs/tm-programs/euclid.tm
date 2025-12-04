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
13 : LDA 3, 4(5) ;  Advance DMEM pointer to callee frame 'gcd'
14 : LD   1, 1(5) ;  Load parameter 'a' into R1
15 : ST 1, 1(3) ;  Store argument 0 into callee frame
16 : LD   1, 2(5) ;  Load parameter 'b' into R1
17 : ST 1, 2(3) ;  Store argument 1 into callee frame
18 : LDA 6, 22(0)) ;  Compute return address
19 : ST 6, 0(3) ;  Store return address in callee frame
20 : ADD  5, 3, 0 ;  Update pointer
21 : LDA 7, 29(0) ;  Call gcd
22 : LD 1, 3(5) ;  Load callee return value into R1
23 : LDC  4, 4(0) ;  Load frame size
24 : SUB  5, 5, 4 ;  Restore pointer
25 : ST 1, 6(0) ;  Store function-call result into caller's return slot
26 : LD   1, 6(0) ;  Load return value into register 1
27 : LD  6, 3(0) ;  Load return address for main function into register 6
28 : LDA  7, 0(6) ;  Jump to return address of main function
29 : LD   1, 2(5) ;  Load parameter 'b' into R1
30 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
31 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
32 : SUB  1, 2, 1 ;  left - right for equality check
33 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
34 : LDC  1, 0(0) ;  false
35 : LDA  7, 1(7) ;  skip setting true
36 : LDC  1, 1(0) ;  true
37 : JEQ  1, 40(0) ;  If condition is false, jump to ELSE
38 : LD   1, 1(5) ;  Load parameter 'a' into R1
39 : LDA  7, 63(0) ;  Skip ELSE block
40 : LDA 3, 4(5) ;  Advance DMEM pointer to callee frame 'gcd'
41 : LD   1, 2(5) ;  Load parameter 'b' into R1
42 : ST 1, 1(3) ;  Store argument 0 into callee frame
43 : LDA 3, 4(5) ;  Advance DMEM pointer to callee frame 'remainder'
44 : LD   1, 1(5) ;  Load parameter 'a' into R1
45 : ST 1, 1(3) ;  Store argument 0 into callee frame
46 : LD   1, 2(5) ;  Load parameter 'b' into R1
47 : ST 1, 2(3) ;  Store argument 1 into callee frame
48 : LDA 6, 52(0)) ;  Compute return address
49 : ST 6, 0(3) ;  Store return address in callee frame
50 : ADD  5, 3, 0 ;  Update pointer
51 : LDA 7, 66(0) ;  Call remainder
52 : LD 1, 3(5) ;  Load callee return value into R1
53 : LDC  4, 4(0) ;  Load frame size
54 : SUB  5, 5, 4 ;  Restore pointer
55 : ST 1, 2(3) ;  Store argument 1 into callee frame
56 : LDA 6, 60(0)) ;  Compute return address
57 : ST 6, 0(3) ;  Store return address in callee frame
58 : ADD  5, 3, 0 ;  Update pointer
59 : LDA 7, 29(0) ;  Call gcd
60 : LD 1, 3(5) ;  Load callee return value into R1
61 : LDC  4, 4(0) ;  Load frame size
62 : SUB  5, 5, 4 ;  Restore pointer
63 : ST   1, 3(5) ;  Store function result into stack frame
64 : LD   6, 0(5) ;  Load return address
65 : LDA  7, 0(6) ;  Return to caller
66 : LD   1, 1(5) ;  Load parameter 'a' into R1
67 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
68 : LD   1, 2(5) ;  Load parameter 'b' into R1
69 : SUB  1, 2, 1 ;  left - right for less-than check
70 : JLT  1, 2(7) ;  If R1 < 0, jump to true
71 : LDC  1, 0(0) ;  false
72 : LDA  7, 1(7) ;  skip setting true
73 : LDC  1, 1(0) ;  true
74 : JEQ  1, 77(0) ;  If condition is false, jump to ELSE
75 : LD   1, 1(5) ;  Load parameter 'a' into R1
76 : LDA  7, 92(0) ;  Skip ELSE block
77 : LDA 3, 4(5) ;  Advance DMEM pointer to callee frame 'remainder'
78 : LD   1, 1(5) ;  Load parameter 'a' into R1
79 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
80 : LD   1, 2(5) ;  Load parameter 'b' into R1
81 : SUB  1, 2, 1 ;  R1 = left - right
82 : ST 1, 1(3) ;  Store argument 0 into callee frame
83 : LD   1, 2(5) ;  Load parameter 'b' into R1
84 : ST 1, 2(3) ;  Store argument 1 into callee frame
85 : LDA 6, 89(0)) ;  Compute return address
86 : ST 6, 0(3) ;  Store return address in callee frame
87 : ADD  5, 3, 0 ;  Update pointer
88 : LDA 7, 66(0) ;  Call remainder
89 : LD 1, 3(5) ;  Load callee return value into R1
90 : LDC  4, 4(0) ;  Load frame size
91 : SUB  5, 5, 4 ;  Restore pointer
92 : ST   1, 3(5) ;  Store function result into stack frame
93 : LD   6, 0(5) ;  Load return address
94 : LDA  7, 0(6) ;  Return to caller
