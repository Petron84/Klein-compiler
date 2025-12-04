0 : LDC  5, 1(0) ;  Set DMEM pointer to main stack frame
1 : LDA  6, 2(7) ;  Calculate return address for main function
2 : ST   6, 0(5) ;  Store return address in main stack frame
3 : LDA  7, 9(0) ;  Load address of main IMEM block - branch to function
4 : OUT  1, 0, 0 ;  Return result
5 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
6 : OUT  1, 0, 0 ;  Hardcoded print function
7 : LD   6, 0(5) ;  Load return addess from stack frame.
8 : LDA  7, 0(6) ;  Jump to return address.
9 : LD   1, 1(5) ;  Load parameter 'elementWanted' into R1
10 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
11 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
12 : SUB  1, 2, 1 ;  left - right for less-than check
13 : JLT  1, 2(7) ;  If R1 < 0, jump to true
14 : LDC  1, 0(0) ;  false
15 : LDA  7, 1(7) ;  skip setting true
16 : LDC  1, 1(0) ;  true
17 : JEQ  1, 21(0) ;  If condition is false, jump to ELSE
18 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
19 : ST   1, 3(0) ;  Store value into return value in stack frame
20 : LDA  7, 36(0) ;  Skip ELSE block
21 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
22 : ST   1, 0(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='1',line=7)
23 : LD   1, 1(5) ;  Load parameter 'elementWanted' into R1
24 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='elementWanted',line=7)
25 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
26 : ST   1, 2(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='0',line=7)
27 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
28 : ST   1, 3(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='1',line=7)
29 : LDC  5, 4(0) ;  Set DMEM pointer to callee frame 'addNext'
30 : LDA  6, 2(7) ;  Compute return address
31 : ST   6, 0(5) ;  Store return address in frame
32 : LDA  7, -1(0) ;  Call addNext
33 : LD   1, 5(5) ;  Load return value into R1
34 : LDC  5, 1(0) ;  Restore DMEM pointer to caller frame
35 : ST   1, 3(0) ;  Store function-call result into caller's return slot
36 : LD   1, 3(0) ;  Load return value into register 1
37 : LD  6, 1(0) ;  Load return address for main function into register 6
38 : LDA  7, 0(6) ;  Jump to return address of main function
