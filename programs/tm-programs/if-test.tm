0 : LDC  5, 2(0) ;  Set DMEM pointer to main stack frame
1 : LD   2, 1(0) ;  Load CLI arg 1 into register
2 : ST   2, 1(5) ;  Store the argument into stack frame
3 : LDA  6, 2(7) ;  Calculate return address
4 : ST   6, 0(5) ;  Store return address in main stack frame
5 : LDA  7, 11(0) ;  Load address of main IMEM block - branch to function
6 : OUT  1, 0, 0 ;  Return result
7 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
8 : OUT  1, 0, 0 ;  Hardcoded print function
9 : LD   6, 0(5) ;  Load return addess from stack frame.
10 : LDA  7, 0(6) ;  Jump to return address.
11 : LD   1, 1(5) ;  Load parameter 'n' into R1
12 : LDC  5, 5(0) ;  Update DMEM pointer
13 : LDA  6, 2(7) ;  Compute return address
14 : ST   6, 0(5) ;  Store return address
15 : LDA  7, 8(0) ; Call print
16 : LDC  5, 2(0) ;  zMove pointer to previous stack frame
17 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
18 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
19 : LD   1, 1(5) ;  Load parameter 'n' into R1
20 : SUB  1, 2, 1 ;  left - right for less-than check
21 : JLT  1, 2(7) ;  If R1 < 0, jump to true
22 : LDC  1, 0(0) ;  false
23 : LDA  7, 1(7) ;  skip setting true
24 : LDC  1, 1(0) ;  true
25 : JEQ  1, 32(0) ;  If condition is false, jump to ELSE
26 : LD   1, 1(5) ;  Load parameter 'n' into R1
27 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
28 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
29 : MUL  1, 2, 1 ;  R1 = left * right
30 : ST   1, 4(0) ;  Store binary result into return slot
31 : LDA  7, 34(0) ;  Skip ELSE block
32 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
33 : ST   1, 4(0) ;  Store value into return value in stack frame
34 : LD   1, 4(0) ;  Load return value into register 1
35 : LD  6, 3(0) ;  Load return address for main function into register 6
36 : LDA  7, 0(6) ;  Jump to return address of main function
