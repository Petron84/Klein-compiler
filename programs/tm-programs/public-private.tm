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
13 : LD   1, 1(5) ;  Load parameter 'publicKey' into R1
14 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
15 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
16 : SUB  1, 2, 1 ;  left - right for equality check
17 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
18 : LDC  1, 0(0) ;  false
19 : LDA  7, 1(7) ;  skip setting true
20 : LDC  1, 1(0) ;  true
21 : JEQ  1, 34(0) ;  If condition is false, jump to ELSE
22 : LDC  1, 2147481647(0) ;  Load boolean-literal value into register 1
23 : ST   1, 0(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='2147481647',line=6)
24 : LDC  1, 2047483747(0) ;  Load boolean-literal value into register 1
25 : ST   1, 1(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='2047483747',line=6)
26 : LDC  5, 7(0) ;  Set DMEM pointer to callee frame 'factor'
27 : LDA  6, 2(7) ;  Compute return address
28 : ST   6, 0(5) ;  Store return address in frame
29 : LDA  7, -1(0) ;  Call factor
30 : LD   1, 3(5) ;  Load return value into R1
31 : LDC  5, 3(0) ;  Restore DMEM pointer to caller frame
32 : ST   1, 6(0) ;  Store function-call result into caller's return slot
33 : LDA  7, 45(0) ;  Skip ELSE block
34 : LD   1, 1(5) ;  Load parameter 'publicKey' into R1
35 : ST   1, 0(5) ;  Store argument Tree Node('IDENTIFIER', value='publicKey',line=8)
36 : LD   1, 2(5) ;  Load parameter 'privateKey' into R1
37 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='privateKey',line=8)
38 : LDC  5, 7(0) ;  Set DMEM pointer to callee frame 'factor'
39 : LDA  6, 2(7) ;  Compute return address
40 : ST   6, 0(5) ;  Store return address in frame
41 : LDA  7, -1(0) ;  Call factor
42 : LD   1, 3(5) ;  Load return value into R1
43 : LDC  5, 3(0) ;  Restore DMEM pointer to caller frame
44 : ST   1, 6(0) ;  Store function-call result into caller's return slot
45 : LD   1, 6(0) ;  Load return value into register 1
46 : LD  6, 3(0) ;  Load return address for main function into register 6
47 : LDA  7, 0(6) ;  Jump to return address of main function
