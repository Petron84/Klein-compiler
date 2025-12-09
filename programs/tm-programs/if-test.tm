0 : LDC  5, 2(0) ;  Set DMEM pointer to main stack frame
1 : LD   2, 1(0) ;  Load CLI arg 1 into register
2 : ST   2, 1(5) ;  Store the argument into stack frame
3 : LDA  6, 4(7) ;  Calculate return address
4 : ST   6, 0(5) ;  Store return address in main stack frame
5 : LDC  4, 3(0) ;  Load size of main stack frame
6 : ADD  5, 5, 4 ;  Advance R5 to next frame
7 : LDA  7, 13(0) ;  Load address of main IMEM block - branch to function
8 : OUT  1, 0, 0 ;  Return result
9 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
10 : OUT  1, 0, 0 ;  Hardcoded print function
11 : LD   6, 0(5) ;  Load return addess from stack frame.
12 : LDA  7, 0(6) ;  Jump to return address.
13 : LD   1, 1(5) ;  Load parameter 'n' into R1
14 : LDA  4, 3(5) ;  Update DMEM pointer
15 : LDA 6, 19(0) ;  Compute return address
16 : ST   6, 0(4) ;  Store return address
17 : ADD  5, 4, 0 ;  Updated Pointer
18 : LDA  7, 10(0) ; Call print
19 : LDC  4, 3(0) ;  Load frame size
20 : SUB  5, 5, 4 ;  Restore pointer
21 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
22 : ADD  3, 1, 0 ;  Store left operand into temporary register
23 : LD   1, 1(5) ;  Load parameter 'n' into R1
24 : ADD  2, 3, 0 ;  Restore left operand
25 : SUB  1, 2, 1 ;  left - right for less-than check
26 : JLT  1, 2(7) ;  If R1 < 0, jump to true
27 : LDC  1, 0(0) ;  false
28 : LDA  7, 1(7) ;  skip setting true
29 : LDC  1, 1(0) ;  true
30 : JEQ  1, 38(0) ;  If condition is false, jump to ELSE
31 : LD   1, 1(5) ;  Load parameter 'n' into R1
32 : ADD  3, 1, 0 ;  Store left operand into temporary register
33 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
34 : ADD  2, 3, 0 ;  Restore left operand
35 : MUL  1, 2, 1 ;  R1 = left * right
36 : ST 1, 2(5) ;  Store result into current frame's return slot
37 : LDA  7, 40(0) ;  Skip ELSE block
38 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
39 : ST 1, 2(5) ;  Store result into current frame's return slot
40 : LD   1, 2(5) ;  Load return value into register 1
41 : LD  6, 0(5) ;  Load return address for main function into register 6
42 : LDA  7, 0(6) ;  Jump to return address of main function
