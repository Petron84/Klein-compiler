0 : LDC  5, 1(0) ;  Set DMEM pointer to main stack frame
1 : LDA  6, 2(7) ;  Calculate return address for main function
2 : ST   6, 0(5) ;  Store return address in main stack frame
3 : LDA  7, 9(0) ;  Load address of main IMEM block - branch to function
4 : OUT  1, 0, 0 ;  Return result
5 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
6 : OUT  1, 0, 0 ;  Hardcoded print function
7 : LD   6, 0(5) ;  Load return addess from stack frame.
8 : LDA  7, 0(6) ;  Jump to return address.
9 : LD   1, 1(5) ;  Load parameter 'publicKey' into R1
10 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
11 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
12 : SUB  1, 2, 1 ;  left - right for equality check
13 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
14 : LDC  1, 0(0) ;  false
15 : LDA  7, 1(7) ;  skip setting true
16 : LDC  1, 1(0) ;  true
17 : JEQ  1, 30(0) ;  If condition is false, jump to ELSE
18 : LDC  1, 2147481647(0) ;  Load boolean-literal value into register 1
19 : ST   1, 0(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='2147481647',line=6)
20 : LDC  1, 2047483747(0) ;  Load boolean-literal value into register 1
21 : ST   1, 1(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='2047483747',line=6)
22 : LDC  5, 5(0) ;  Set DMEM pointer to callee frame 'factor'
23 : LDA  6, 2(7) ;  Compute return address
24 : ST   6, 0(5) ;  Store return address in frame
25 : LDA  7, -1(0) ;  Call factor
26 : LD   1, 3(5) ;  Load return value into R1
27 : LDC  5, 1(0) ;  Restore DMEM pointer to caller frame
28 : ST   1, 4(0) ;  Store function-call result into caller's return slot
29 : LDA  7, 41(0) ;  Skip ELSE block
30 : LD   1, 1(5) ;  Load parameter 'publicKey' into R1
31 : ST   1, 0(5) ;  Store argument Tree Node('IDENTIFIER', value='publicKey',line=8)
32 : LD   1, 2(5) ;  Load parameter 'privateKey' into R1
33 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='privateKey',line=8)
34 : LDC  5, 5(0) ;  Set DMEM pointer to callee frame 'factor'
35 : LDA  6, 2(7) ;  Compute return address
36 : ST   6, 0(5) ;  Store return address in frame
37 : LDA  7, -1(0) ;  Call factor
38 : LD   1, 3(5) ;  Load return value into R1
39 : LDC  5, 1(0) ;  Restore DMEM pointer to caller frame
40 : ST   1, 4(0) ;  Store function-call result into caller's return slot
41 : LD   1, 4(0) ;  Load return value into register 1
42 : LD  6, 1(0) ;  Load return address for main function into register 6
43 : LDA  7, 0(6) ;  Jump to return address of main function
