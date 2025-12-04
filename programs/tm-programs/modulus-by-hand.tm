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
18 : LDA  6, 2(7) ;  Compute return address
19 : ST   6, 0(3) ;  Store return address
20 : ADD  5, 3, 0 ;  Updated Pointer
21 : LDA  7, 10(0) ; Call print
22 : LDC  4, 4)0) ;  Load frame size
23 : SUB  5, 5, 4 ;  Restore pointer
24 : LDA 3, 4(5) ;  Advance DMEM pointer to callee frame 'mod'
25 : LD   1, 1(5) ;  Load parameter 'm' into R1
26 : ST 1, 1(3) ;  Store argument Tree Node('IDENTIFIER', value='m',line=9) into callee frame
27 : LD   1, 2(5) ;  Load parameter 'n' into R1
28 : ST 1, 2(3) ;  Store argument Tree Node('IDENTIFIER', value='n',line=9) into callee frame
29 : LDA 6, 2(7) ;  Compute return address
30 : ST 6, 0(3) ;  Store return address in callee frame
31 : ADD  5, 3, 0 ;  Update pointer
32 : LDA 7, 40(0) ;  Call mod
33 : LD 1, 3(5) ;  Load callee return value into R1
34 : LDC  4, 4(0) ;  Load frame size
35 : SUB  5, 5, 4 ;  Restore pointer
36 : ST 1, 6(0) ;  Store function-call result into caller's return slot
37 : LD   1, 6(0) ;  Load return value into register 1
38 : LD  6, 3(0) ;  Load return address for main function into register 6
39 : LDA  7, 0(6) ;  Jump to return address of main function
40 : LD   1, 1(5) ;  Load parameter 'm' into R1
41 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
42 : LD   1, 2(5) ;  Load parameter 'n' into R1
43 : SUB  1, 2, 1 ;  left - right for less-than check
44 : JLT  1, 2(7) ;  If R1 < 0, jump to true
45 : LDC  1, 0(0) ;  false
46 : LDA  7, 1(7) ;  skip setting true
47 : LDC  1, 1(0) ;  true
48 : JEQ  1, 51(0) ;  If condition is false, jump to ELSE
49 : LD   1, 1(5) ;  Load parameter 'm' into R1
50 : LDA  7, 66(0) ;  Skip ELSE block
51 : LDA 3, 4(5) ;  Advance DMEM pointer to callee frame 'mod'
52 : LD   1, 1(5) ;  Load parameter 'm' into R1
53 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
54 : LD   1, 2(5) ;  Load parameter 'n' into R1
55 : SUB  1, 2, 1 ;  R1 = left - right
56 : ST 1, 1(3) ;  Store argument Tree Node('BINARY-EXPRESSION', value='-', children=[Tree Node('IDENTIFIER', value='m',line=5), Tree Node('IDENTIFIER', value='n',line=5)],line=5) into callee frame
57 : LD   1, 2(5) ;  Load parameter 'n' into R1
58 : ST 1, 2(3) ;  Store argument Tree Node('IDENTIFIER', value='n',line=5) into callee frame
59 : LDA 6, 2(7) ;  Compute return address
60 : ST 6, 0(3) ;  Store return address in callee frame
61 : ADD  5, 3, 0 ;  Update pointer
62 : LDA 7, 40(0) ;  Call mod
63 : LD 1, 3(5) ;  Load callee return value into R1
64 : LDC  4, 4(0) ;  Load frame size
65 : SUB  5, 5, 4 ;  Restore pointer
66 : ST   1, 3(5) ;  Store function result into stack frame
67 : LD   6, 0(5) ;  Load return address
68 : LDA  7, 0(6) ;  Return to caller
