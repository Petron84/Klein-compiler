0 : LDC  5, 2(0) ;  Set DMEM pointer to main stack frame
1 : LDC  4, 0(5) ;  Set top of caller frame
2 : LD   2, 1(0) ;  Load CLI arg 1 into register
3 : ST   2, 1(5) ;  Store the argument into stack frame
4 : LDA  6, 2(7) ;  Calculate return address
5 : ST   6, 0(5) ;  Store return address in main stack frame
6 : LDA  7, 12(0) ;  Load address of main IMEM block - branch to function
7 : OUT  1, 0, 0 ;  Return result
8 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
9 : OUT  1, 0, 0 ;  Hardcoded print function
10 : LD   6, 0(5) ;  Load return addess from stack frame.
11 : LDA  7, 0(6) ;  Jump to return address.
12 : LD   1, 1(5) ;  Load parameter 'n' into R1
13 : LDA 4, 3(5) ; Base of callee frame
14 : LDA 6, 18(0) ; Return address
15 : ST 6, 0(4) ; Store return addr in callee frame
16 : ADD 5, 4, 0 ; Push new frame
17 : LDA 7, 9(0) ; Call print
18 : LDC 2, 3(0) ; Caller frame size
19 : SUB 5, 5, 2 ; Pop frame
20 : LD   1, 1(5) ;  Load parameter 'n' into R1
21 : ST   1, 3(4) ;  Store right operand result into return value slot
22 : LDC  1, 10(0) ;  Load integer-literal value into register 1
23 : ADD  2, 1, 0 ;  Move left operand to register 2
24 : LD   1, 3(4) ;  Return right operand back into register 1
25 : SUB  1, 2, 1 ;  left - right for less-than check
26 : JLT  1, 2(7) ;  If R1 < 0, jump to true
27 : LDC  1, 0(0) ;  false
28 : LDA  7, 1(7) ;  skip setting true
29 : LDC  1, 1(0) ;  true
30 : JEQ  1, 39(0) ;  If condition is false, jump to ELSE
31 : LDC  1, 2(0) ;  Load integer-literal value into register 1
32 : ST   1, 3(4) ;  Store right operand result into return value slot
33 : LD   1, 1(5) ;  Load parameter 'n' into R1
34 : ADD  2, 1, 0 ;  Move left operand to register 2
35 : LD   1, 3(4) ;  Return right operand back into register 1
36 : MUL  1, 2, 1 ;  R1 = left * right
37 : ST 1, 2(5) ;  Store result into current frame's return slot
38 : LDA  7, 41(0) ;  Skip ELSE block
39 : LDC  1, 1(0) ;  Load integer-literal value into register 1
40 : ST 1, 2(5) ;  Store result into current frame's return slot
41 : LD   1, 2(5) ;  Load return value into register 1
42 : LD  6, 0(5) ;  Load return address for main function into register 6
43 : LDA  7, 0(6) ;  Jump to return address of main function
