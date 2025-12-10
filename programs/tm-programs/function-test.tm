0 : LDC 5, 3(0) ;  Set DMEM pointer to main stack frame
1 : ADD 4, 5, 0 ;  Set top of caller frame (scratch)
2 : LD 2, 1(0) ;  Load CLI arg 1 into register
3 : ST 2, 1(5) ;  Store the argument into stack frame
4 : LD 2, 2(0) ;  Load CLI arg 2 into register
5 : ST 2, 2(5) ;  Store the argument into stack frame
6 : LDA 6, 2(7) ;  Calculate return address (two lines ahead)
7 : ST 6, 0(5) ;  Store return address in main stack frame
8 : LDA 7, 14(0) ;  Load address of main IMEM block - branch to function
9 : OUT 1, 0, 0 ;  Return result
10 : HALT 0, 0, 0 ;  Terminate program execution
11 : OUT 1, 0, 0 ;  Hardcoded print function
12 : LD 6, 0(5) ;  Load return address from stack frame
13 : LDA 7, 0(6) ;  Jump to return address
14 : LD 1, 2(5) ;  Load parameter 'b' into R1
15 : ADD 3, 1, 0 ;  Move right operand to R3
16 : LD 1, 1(5) ;  Load parameter 'a' into R1
17 : ADD 2, 1, 0 ;  Move left operand to R2
18 : ADD 1, 3, 0 ;  Restore right operand into R1
19 : ADD 1, 2, 1 ;  R1 = left + right
20 : ADD 2, 1, 0 ;  Move left operand to R2
21 : LDA 4, 4(5) ;  Base of callee frame
22 : LD 1, 2(5) ;  Load parameter 'b' into R1
23 : ST 1, 1(4) ;  Store argument 0 in callee
24 : LD 1, 1(5) ;  Load parameter 'a' into R1
25 : ST 1, 2(4) ;  Store argument 1 in callee
26 : LDA 6, 30(0) ;  Return address
27 : ST 6, 0(4) ;  Store return in callee frame
28 : ADD 5, 4, 0 ;  Push callee frame
29 : LDA 7, 38(0) ;  Call sub
30 : LD 1, 3(5) ;  Load function result
31 : LDC 2, 4(0) ;  Caller frame size
32 : SUB 5, 5, 2 ;  Pop back to caller
33 : SUB 1, 2, 1 ;  R1 = left - right
34 : ST 1, 3(5) ;  Store result into current frame's return slot
35 : LD 1, 3(5) ;  Load return value into register 1
36 : LD 6, 0(5) ;  Load return address for main function into register 6
37 : LDA 7, 0(6) ;  Jump to runtime continuation
38 : LD 1, 2(5) ;  Load parameter 'n' into R1
39 : ADD 3, 1, 0 ;  Move right operand to R3
40 : LD 1, 1(5) ;  Load parameter 'm' into R1
41 : ADD 2, 1, 0 ;  Move left operand to R2
42 : ADD 1, 3, 0 ;  Restore right operand into R1
43 : SUB 1, 2, 1 ;  R1 = left - right
44 : ST 1, 3(5) ;  Store result into current frame's return slot
45 : ST 1, 3(5) ;  Store function result into stack frame
46 : LD 6, 0(5) ;  Load return address
47 : LDA 7, 0(6) ;  Return to caller
