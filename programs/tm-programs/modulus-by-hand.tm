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
17 : LDA  5, 4(5) ;  Update DMEM pointer
18 : LDA  6, 2(7) ;  Compute return address
19 : ST   6, 0(5) ;  Store return address
20 : LDA  7, 10(0) ; Call print
21 : LDC  5, -4(5) ;  Move pointer to previous stack frame
22 : LDA 5, 4(5) ;  Advance DMEM pointer to callee frame 'mod'
23 : LD   1, 1(5) ;  Load parameter 'm' into R1
24 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='m',line=9) into callee frame
25 : LD   1, 2(5) ;  Load parameter 'n' into R1
26 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=9) into callee frame
27 : LDA 6, 2(7) ;  Compute return address
28 : ST 6, 0(5) ;  Store return address in callee frame
29 : LDA 7, 36(0) ;  Call mod
30 : LD 1, 3(5) ;  Load callee return value into R1
31 : LDA 5, -4(5) ;  Restore DMEM pointer to caller frame
32 : ST 1, 6(0) ;  Store function-call result into caller's return slot
33 : LD   1, 6(0) ;  Load return value into register 1
34 : LD  6, 3(0) ;  Load return address for main function into register 6
35 : LDA  7, 0(6) ;  Jump to return address of main function
36 : LD   1, 1(5) ;  Load parameter 'm' into R1
37 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
38 : LD   1, 2(5) ;  Load parameter 'n' into R1
39 : SUB  1, 2, 1 ;  left - right for less-than check
40 : JLT  1, 2(7) ;  If R1 < 0, jump to true
41 : LDC  1, 0(0) ;  false
42 : LDA  7, 1(7) ;  skip setting true
43 : LDC  1, 1(0) ;  true
44 : JEQ  1, 47(0) ;  If condition is false, jump to ELSE
45 : LD   1, 1(5) ;  Load parameter 'm' into R1
46 : LDA  7, 60(0) ;  Skip ELSE block
47 : LDA 5, 4(5) ;  Advance DMEM pointer to callee frame 'mod'
48 : LD   1, 1(5) ;  Load parameter 'm' into R1
49 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
50 : LD   1, 2(5) ;  Load parameter 'n' into R1
51 : SUB  1, 2, 1 ;  R1 = left - right
52 : ST 1, 1(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='-', children=[Tree Node('IDENTIFIER', value='m',line=5), Tree Node('IDENTIFIER', value='n',line=5)],line=5) into callee frame
53 : LD   1, 2(5) ;  Load parameter 'n' into R1
54 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=5) into callee frame
55 : LDA 6, 2(7) ;  Compute return address
56 : ST 6, 0(5) ;  Store return address in callee frame
57 : LDA 7, 36(0) ;  Call mod
58 : LD 1, 3(5) ;  Load callee return value into R1
59 : LDA 5, -4(5) ;  Restore DMEM pointer to caller frame
60 : ST   1, 3(5) ;  Store function result into stack frame
61 : LD   6, 0(5) ;  Load return address
62 : LDA  7, 0(6) ;  Return to caller
