0 : LDC  5, 1(0) ;  Set DMEM pointer to main stack frame
1 : LDA  6, 2(7) ;  Calculate return address for main function
2 : ST   6, 0(5) ;  Store return address in main stack frame
3 : LDA  7, 9(0) ;  Load address of main IMEM block - branch to function
4 : OUT  1, 0, 0 ;  Return result
5 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
6 : OUT  1, 0, 0 ;  Hardcoded print function
7 : LD   6, 0(5) ;  Load return addess from stack frame.
8 : LDA  7, 0(6) ;  Jump to return address.
9 : LD   1, 3(5) ;  Load parameter 'n' into R1
10 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
11 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
12 : SUB  1, 2, 1 ;  left - right for equality check
13 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
14 : LDC  1, 0(0) ;  false
15 : LDA  7, 1(7) ;  skip setting true
16 : LDC  1, 1(0) ;  true
17 : JEQ  1, 21(0) ;  If condition is false, jump to ELSE
18 : LD   1, 1(5) ;  Load parameter 'a' into R1
19 : ST   1, 5(0) ;  Store identifier value into current frame's return slot
20 : LDA  7, 34(0) ;  Skip ELSE block
21 : LD   1, 1(5) ;  Load parameter 'a' into R1
22 : ST   1, 0(5) ;  Store argument Tree Node('IDENTIFIER', value='a',line=6)
23 : LD   1, 2(5) ;  Load parameter 'b' into R1
24 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='b',line=6)
25 : LD   1, 3(5) ;  Load parameter 'n' into R1
26 : ST   1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=6)
27 : LDC  5, 6(0) ;  Set DMEM pointer to callee frame 'printAndDivide'
28 : LDA  6, 2(7) ;  Compute return address
29 : ST   6, 0(5) ;  Store return address in frame
30 : LDA  7, -1(0) ;  Call printAndDivide
31 : LD   1, 4(5) ;  Load return value into R1
32 : LDC  5, 1(0) ;  Restore DMEM pointer to caller frame
33 : ST   1, 5(0) ;  Store function-call result into caller's return slot
34 : LD   1, 5(0) ;  Load return value into register 1
35 : LD  6, 1(0) ;  Load return address for main function into register 6
36 : LDA  7, 0(6) ;  Jump to return address of main function
