0 : LDC  5, 4(0) ;  Set DMEM pointer to main stack frame
1 : LD   2, 1(0) ;  Load CLI arg 1 into register
2 : ST   2, 1(5) ;  Store the argument into stack frame
3 : LD   2, 2(0) ;  Load CLI arg 2 into register
4 : ST   2, 2(5) ;  Store the argument into stack frame
5 : LD   2, 3(0) ;  Load CLI arg 3 into register
6 : ST   2, 3(5) ;  Store the argument into stack frame
7 : LDA  6, 2(7) ;  Calculate return address
8 : ST   6, 0(5) ;  Store return address in main stack frame
9 : LDA  7, 15(0) ;  Load address of main IMEM block - branch to function
10 : OUT  1, 0, 0 ;  Return result
11 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
12 : OUT  1, 0, 0 ;  Hardcoded print function
13 : LD   6, 0(5) ;  Load return addess from stack frame.
14 : LDA  7, 0(6) ;  Jump to return address.
15 : LD   1, 3(5) ;  Load parameter 'n' into R1
16 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
17 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
18 : SUB  1, 2, 1 ;  left - right for equality check
19 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
20 : LDC  1, 0(0) ;  false
21 : LDA  7, 1(7) ;  skip setting true
22 : LDC  1, 1(0) ;  true
23 : JEQ  1, 27(0) ;  If condition is false, jump to ELSE
24 : LD   1, 1(5) ;  Load parameter 'a' into R1
25 : ST   1, 8(0) ;  Store identifier value into current frame's return slot
26 : LDA  7, 40(0) ;  Skip ELSE block
27 : LD   1, 1(5) ;  Load parameter 'a' into R1
28 : ST   1, 0(5) ;  Store argument Tree Node('IDENTIFIER', value='a',line=6)
29 : LD   1, 2(5) ;  Load parameter 'b' into R1
30 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='b',line=6)
31 : LD   1, 3(5) ;  Load parameter 'n' into R1
32 : ST   1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=6)
33 : LDC  5, 9(0) ;  Set DMEM pointer to callee frame 'printAndDivide'
34 : LDA  6, 2(7) ;  Compute return address
35 : ST   6, 0(5) ;  Store return address in frame
36 : LDA  7, -1(0) ;  Call printAndDivide
37 : LD   1, 4(5) ;  Load return value into R1
38 : LDC  5, 4(0) ;  Restore DMEM pointer to caller frame
39 : ST   1, 8(0) ;  Store function-call result into caller's return slot
40 : LD   1, 8(0) ;  Load return value into register 1
41 : LD  6, 4(0) ;  Load return address for main function into register 6
42 : LDA  7, 0(6) ;  Jump to return address of main function
