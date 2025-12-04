0 : LDC  5, 2(0) ;  Set DMEM pointer to main stack frame
1 : LDA  6, 2(7) ;  Calculate return address for main function
2 : ST   6, 0(5) ;  Store return address in main stack frame
3 : LD   2, 1(0) ;  Load CLI arg 1 into register
4 : ST   2, 1(5) ;  Store the argument into stack frame
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
22 : LDA  7, 38(0) ;  Skip ELSE block
23 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
24 : ST   1, 0(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='1',line=7)
25 : LD   1, 1(5) ;  Load parameter 'elementWanted' into R1
26 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='elementWanted',line=7)
27 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
28 : ST   1, 2(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='0',line=7)
29 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
30 : ST   1, 3(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='1',line=7)
31 : LDC  5, 5(0) ;  Set DMEM pointer to callee frame 'addNext'
32 : LDA  6, 2(7) ;  Compute return address
33 : ST   6, 0(5) ;  Store return address in frame
34 : LDA  7, -1(0) ;  Call addNext
35 : LD   1, 5(5) ;  Load return value into R1
36 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
37 : ST   1, 4(0) ;  Store function-call result into caller's return slot
38 : LD   1, 4(0) ;  Load return value into register 1
39 : LD  6, 3(0) ;  Load return address for main function into register 6
40 : LDA  7, 0(6) ;  Jump to return address of main function
