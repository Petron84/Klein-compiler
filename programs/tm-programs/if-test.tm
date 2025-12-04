0 : LDC  5, 1(0) ;  Set DMEM pointer to main stack frame
1 : LDA  6, 2(7) ;  Calculate return address for main function
2 : ST   6, 0(5) ;  Store return address in main stack frame
3 : LDA  7, 9(0) ;  Load address of main IMEM block - branch to function
4 : OUT  1, 0, 0 ;  Return result
5 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
6 : OUT  1, 0, 0 ;  Hardcoded print function
7 : LD   6, 0(5) ;  Load return addess from stack frame.
8 : LDA  7, 0(6) ;  Jump to return address.
9 : LD   1, 1(5) ;  Load parameter 'n' into R1
10 : LDC  5, 4(0) ;  Update DMEM pointer
11 : LDA  6, 2(7) ;  Compute return address
12 : ST   6, 0(5) ;  Store return address
13 : LDA  7, 6(0) ; Call print
14 : LDC  5, 1(0) ;  zMove pointer to previous stack frame
15 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
16 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
17 : LD   1, 1(5) ;  Load parameter 'n' into R1
18 : SUB  1, 2, 1 ;  left - right for less-than check
19 : JLT  1, 2(7) ;  If R1 < 0, jump to true
20 : LDC  1, 0(0) ;  false
21 : LDA  7, 1(7) ;  skip setting true
22 : LDC  1, 1(0) ;  true
23 : JEQ  1, 30(0) ;  If condition is false, jump to ELSE
24 : LD   1, 1(5) ;  Load parameter 'n' into R1
25 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
26 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
27 : MUL  1, 2, 1 ;  R1 = left * right
28 : ST   1, 3(0) ;  Store binary result into return slot
29 : LDA  7, 32(0) ;  Skip ELSE block
30 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
31 : ST   1, 3(0) ;  Store value into return value in stack frame
32 : LD   1, 3(0) ;  Load return value into register 1
33 : LD  6, 1(0) ;  Load return address for main function into register 6
34 : LDA  7, 0(6) ;  Jump to return address of main function
