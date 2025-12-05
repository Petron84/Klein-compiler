0 : LDC  5, 2(0) ;  Set DMEM pointer to main stack frame
1 : LD   2, 1(0) ;  Load CLI arg 1 into register
2 : ST   2, 1(5) ;  Store the argument into stack frame
3 : LDA  6, 2(7) ;  Calculate return address
4 : ST   6, 0(5) ;  Store return address in main stack frame
5 : LDA  7, 11(0) ;  Load address of main IMEM block - branch to function
6 : OUT  1, 0, 0 ;  Return result
7 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
8 : OUT  1, 0, 0 ;  Hardcoded print function
9 : LD   6, 0(5) ;  Load return addess from stack frame.
10 : LDA  7, 0(6) ;  Jump to return address.
11 : LD   1, 1(5) ;  Load parameter 'elementWanted' into R1
12 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
13 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
14 : SUB  1, 2, 1 ;  left - right for less-than check
15 : JLT  1, 2(7) ;  If R1 < 0, jump to true
16 : LDC  1, 0(0) ;  false
17 : LDA  7, 1(7) ;  skip setting true
18 : LDC  1, 1(0) ;  true
19 : JEQ  1, 23(0) ;  If condition is false, jump to ELSE
20 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
21 : ST   1, 4(0) ;  Store value into return value in stack frame
22 : LDA  7, 44(0) ;  Skip ELSE block
23 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
24 : LDA  3, 3(5) ; Restore Callee frame base
25 : ST 1, 1(3) ;  Store argument 0 into callee frame
26 : LD   1, 1(5) ;  Load parameter 'elementWanted' into R1
27 : LDA  3, 3(5) ; Restore Callee frame base
28 : ST 1, 2(3) ;  Store argument 1 into callee frame
29 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
30 : LDA  3, 3(5) ; Restore Callee frame base
31 : ST 1, 3(3) ;  Store argument 2 into callee frame
32 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
33 : LDA  3, 3(5) ; Restore Callee frame base
34 : ST 1, 4(3) ;  Store argument 3 into callee frame
35 : LDA  3, 3(5) ; Restore Call frame base
36 : LDA 6, 40(0)) ;  Compute return address
37 : ST 6, 0(3) ;  Store return address in callee frame
38 : ADD  5, 3, 0 ;  Update pointer
39 : LDA 7, 47(0) ;  Call addNext
40 : LD 1, 5(5) ;  Load callee return value into R1
41 : LDC  4, 3(0) ;  Load frame size
42 : SUB  5, 5, 4 ;  Restore pointer
43 : ST 1, 4(0) ;  Store function-call result into caller's return slot
44 : LD   1, 4(0) ;  Load return value into register 1
45 : LD  6, 2(0) ;  Load return address for main function into register 6
46 : LDA  7, 0(6) ;  Jump to return address of main function
47 : LD   1, 2(5) ;  Load parameter 'elementWanted' into R1
48 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
49 : LD   1, 1(5) ;  Load parameter 'currentElement' into R1
50 : SUB  1, 2, 1 ;  left - right for equality check
51 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
52 : LDC  1, 0(0) ;  false
53 : LDA  7, 1(7) ;  skip setting true
54 : LDC  1, 1(0) ;  true
55 : JEQ  1, 58(0) ;  If condition is false, jump to ELSE
56 : LD   1, 4(5) ;  Load parameter 'currentSum' into R1
57 : LDA  7, 84(0) ;  Skip ELSE block
58 : LD   1, 1(5) ;  Load parameter 'currentElement' into R1
59 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
60 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
61 : ADD  1, 2, 1 ;  R1 = left + right
62 : LDA  3, 6(5) ; Restore Callee frame base
63 : ST 1, 1(3) ;  Store argument 0 into callee frame
64 : LD   1, 2(5) ;  Load parameter 'elementWanted' into R1
65 : LDA  3, 6(5) ; Restore Callee frame base
66 : ST 1, 2(3) ;  Store argument 1 into callee frame
67 : LD   1, 4(5) ;  Load parameter 'currentSum' into R1
68 : LDA  3, 6(5) ; Restore Callee frame base
69 : ST 1, 3(3) ;  Store argument 2 into callee frame
70 : LD   1, 3(5) ;  Load parameter 'previousSum' into R1
71 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
72 : LD   1, 4(5) ;  Load parameter 'currentSum' into R1
73 : ADD  1, 2, 1 ;  R1 = left + right
74 : LDA  3, 6(5) ; Restore Callee frame base
75 : ST 1, 4(3) ;  Store argument 3 into callee frame
76 : LDA  3, 6(5) ; Restore Call frame base
77 : LDA 6, 81(0)) ;  Compute return address
78 : ST 6, 0(3) ;  Store return address in callee frame
79 : ADD  5, 3, 0 ;  Update pointer
80 : LDA 7, 47(0) ;  Call addNext
81 : LD 1, 5(5) ;  Load callee return value into R1
82 : LDC  4, 6(0) ;  Load frame size
83 : SUB  5, 5, 4 ;  Restore pointer
84 : ST   1, 5(5) ;  Store function result into stack frame
85 : LD   6, 0(5) ;  Load return address
86 : LDA  7, 0(6) ;  Return to caller
