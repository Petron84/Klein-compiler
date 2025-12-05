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
13 : LD   1, 1(5) ;  Load parameter 'm' into R1
14 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
15 : LD   1, 2(5) ;  Load parameter 'n' into R1
16 : DIV  1, 2, 1 ;  R1 = left / right
17 : LDA  3, 4(5) ;  Update DMEM pointer
18 : LDA 6, 22(0) ;  Compute return address
19 : ST   6, 0(3) ;  Store return address
20 : ADD  5, 3, 0 ;  Updated Pointer
21 : LDA  7, 10(0) ; Call print
22 : LDC  4, 4(0) ;  Load frame size
23 : SUB  5, 5, 4 ;  Restore pointer
24 : LD   1, 1(5) ;  Load parameter 'm' into R1
25 : LDA  3, 4(5) ; Restore Callee frame base
26 : ST 1, 1(3) ;  Store argument 0 into callee frame
27 : LD   1, 2(5) ;  Load parameter 'n' into R1
28 : LDA  3, 4(5) ; Restore Callee frame base
29 : ST 1, 2(3) ;  Store argument 1 into callee frame
30 : LDA  3, 4(5) ; Restore Call frame base
31 : LDA 6, 35(0) ;  Compute return address
32 : ST 6, 0(3) ;  Store return address in callee frame
33 : ADD  5, 3, 0 ;  Update pointer
34 : LDA 7, 42(0) ;  Call mod
35 : LD 1, 3(5) ;  Load callee return value into R1
36 : LDC  4, 4(0) ;  Load frame size
37 : SUB  5, 5, 4 ;  Restore pointer
38 : ST 1, 3(5) ;  Store result into current frame's return slot
39 : LD   1, 3(5) ;  Load return value into register 1
40 : LD  6, 0(5) ;  Load return address for main function into register 6
41 : LDA  7, 0(6) ;  Jump to return address of main function
42 : LD   1, 1(5) ;  Load parameter 'm' into R1
43 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
44 : LD   1, 2(5) ;  Load parameter 'n' into R1
45 : SUB  1, 2, 1 ;  left - right for less-than check
46 : JLT  1, 2(7) ;  If R1 < 0, jump to true
47 : LDC  1, 0(0) ;  false
48 : LDA  7, 1(7) ;  skip setting true
49 : LDC  1, 1(0) ;  true
50 : JEQ  1, 53(0) ;  If condition is false, jump to ELSE
51 : LD   1, 1(5) ;  Load parameter 'm' into R1
52 : LDA  7, 70(0) ;  Skip ELSE block
53 : LD   1, 1(5) ;  Load parameter 'm' into R1
54 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
55 : LD   1, 2(5) ;  Load parameter 'n' into R1
56 : SUB  1, 2, 1 ;  R1 = left - right
57 : LDA  3, 4(5) ; Restore Callee frame base
58 : ST 1, 1(3) ;  Store argument 0 into callee frame
59 : LD   1, 2(5) ;  Load parameter 'n' into R1
60 : LDA  3, 4(5) ; Restore Callee frame base
61 : ST 1, 2(3) ;  Store argument 1 into callee frame
62 : LDA  3, 4(5) ; Restore Call frame base
63 : LDA 6, 67(0) ;  Compute return address
64 : ST 6, 0(3) ;  Store return address in callee frame
65 : ADD  5, 3, 0 ;  Update pointer
66 : LDA 7, 42(0) ;  Call mod
67 : LD 1, 3(5) ;  Load callee return value into R1
68 : LDC  4, 4(0) ;  Load frame size
69 : SUB  5, 5, 4 ;  Restore pointer
70 : ST   1, 3(5) ;  Store function result into stack frame
71 : LD   6, 0(5) ;  Load return address
72 : LDA  7, 0(6) ;  Return to caller
