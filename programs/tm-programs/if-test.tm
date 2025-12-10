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
12 : LDA 4, 3(5) ; Base of callee frame
13 : LDA 6, 17(0) ; Return address
14 : ST 6, 0(4) ; Store return addr in callee frame
15 : ADD 5, 4, 0 ; Push new frame
16 : LDA 7, 8(0) ; Call print
17 : LDC 2, 3(0) ; Caller frame size
18 : SUB 5, 5, 2 ; Pop frame
19 : LD   1, 1(5) ;  Load parameter 'n' into R1
20 : ST   1, 3(4) ;  Store right operand result into return value slot
21 : LDC  1, 10(0) ;  Load integer-literal value into register 1
22 : ADD  2, 1, 0 ;  Move left operand to register 2
23 : LD   1, 3(4) ;  Return right operand back into register 1
24 : SUB  1, 2, 1 ;  left - right for less-than check
25 : JLT  1, 2(7) ;  If R1 < 0, jump to true
26 : LDC  1, 0(0) ;  false
27 : LDA  7, 1(7) ;  skip setting true
28 : LDC  1, 1(0) ;  true
29 : JEQ  1, 38(0) ;  If condition is false, jump to ELSE
30 : LDC  1, 2(0) ;  Load integer-literal value into register 1
31 : ST   1, 3(4) ;  Store right operand result into return value slot
32 : LD   1, 1(5) ;  Load parameter 'n' into R1
33 : ADD  2, 1, 0 ;  Move left operand to register 2
34 : LD   1, 3(4) ;  Return right operand back into register 1
35 : MUL  1, 2, 1 ;  R1 = left * right
36 : ST 1, 2(5) ;  Store result into current frame's return slot
37 : LDA  7, 40(0) ;  Skip ELSE block
38 : LDC  1, 1(0) ;  Load integer-literal value into register 1
39 : ST 1, 2(5) ;  Store result into current frame's return slot
40 : LD   1, 2(5) ;  Load return value into register 1
41 : LD  6, 0(5) ;  Load return address for main function into register 6
42 : LDA  7, 0(6) ;  Jump to return address of main function
