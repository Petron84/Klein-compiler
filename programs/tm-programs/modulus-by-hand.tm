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
14 : ST  1, 3(5) ;  Store left operand into return slot. Safeguard for recursion
15 : LD   1, 2(5) ;  Load parameter 'n' into R1
16 : LD  2, 3(5) ;  Restore left operand
17 : DIV  1, 2, 1 ;  R1 = left / right
18 : LDA  3, 4(5) ;  Update DMEM pointer
19 : LDA 6, 23(0) ;  Compute return address
20 : ST   6, 0(3) ;  Store return address
21 : ADD  5, 3, 0 ;  Updated Pointer
22 : LDA  7, 10(0) ; Call print
23 : LDC  4, 4(0) ;  Load frame size
24 : SUB  5, 5, 4 ;  Restore pointer
25 : LD   1, 1(5) ;  Load parameter 'm' into R1
26 : LDA  3, 4(5) ; Restore Callee frame base
27 : ST 1, 1(3) ;  Store argument 0 into callee frame
28 : LD   1, 2(5) ;  Load parameter 'n' into R1
29 : LDA  3, 4(5) ; Restore Callee frame base
30 : ST 1, 2(3) ;  Store argument 1 into callee frame
31 : LDA  3, 4(5) ; Restore Call frame base
32 : LDA 6, 36(0) ;  Compute return address
33 : ST 6, 0(3) ;  Store return address in callee frame
34 : ADD  5, 3, 0 ;  Update pointer
35 : LDA 7, 43(0) ;  Call mod
36 : LD 1, 3(5) ;  Load callee return value into R1
37 : LDC  4, 4(0) ;  Load frame size
38 : SUB  5, 5, 4 ;  Restore pointer
39 : ST 1, 3(5) ;  Store result into current frame's return slot
40 : LD   1, 3(5) ;  Load return value into register 1
41 : LD  6, 0(5) ;  Load return address for main function into register 6
42 : LDA  7, 0(6) ;  Jump to return address of main function
43 : LD   1, 1(5) ;  Load parameter 'm' into R1
44 : ST  1, 3(5) ;  Store left operand into return slot. Safeguard for recursion
45 : LD   1, 2(5) ;  Load parameter 'n' into R1
46 : LD  2, 3(5) ;  Restore left operand
47 : SUB  1, 2, 1 ;  left - right for less-than check
48 : JLT  1, 2(7) ;  If R1 < 0, jump to true
49 : LDC  1, 0(0) ;  false
50 : LDA  7, 1(7) ;  skip setting true
51 : LDC  1, 1(0) ;  true
52 : JEQ  1, 55(0) ;  If condition is false, jump to ELSE
53 : LD   1, 1(5) ;  Load parameter 'm' into R1
54 : LDA  7, 73(0) ;  Skip ELSE block
55 : LD   1, 1(5) ;  Load parameter 'm' into R1
56 : ST  1, 3(5) ;  Store left operand into return slot. Safeguard for recursion
57 : LD   1, 2(5) ;  Load parameter 'n' into R1
58 : LD  2, 3(5) ;  Restore left operand
59 : SUB  1, 2, 1 ;  R1 = left - right
60 : LDA  3, 4(5) ; Restore Callee frame base
61 : ST 1, 1(3) ;  Store argument 0 into callee frame
62 : LD   1, 2(5) ;  Load parameter 'n' into R1
63 : LDA  3, 4(5) ; Restore Callee frame base
64 : ST 1, 2(3) ;  Store argument 1 into callee frame
65 : LDA  3, 4(5) ; Restore Call frame base
66 : LDA 6, 70(0) ;  Compute return address
67 : ST 6, 0(3) ;  Store return address in callee frame
68 : ADD  5, 3, 0 ;  Update pointer
69 : LDA 7, 43(0) ;  Call mod
70 : LD 1, 3(5) ;  Load callee return value into R1
71 : LDC  4, 4(0) ;  Load frame size
72 : SUB  5, 5, 4 ;  Restore pointer
73 : ST   1, 3(5) ;  Store function result into stack frame
74 : LD   6, 0(5) ;  Load return address
75 : LDA  7, 0(6) ;  Return to caller
