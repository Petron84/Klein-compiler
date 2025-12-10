0 : LDC 5, 2(0) ;  Set DMEM pointer to main stack frame
1 : ADD 4, 5, 0 ;  Set top of caller frame (scratch)
2 : LD 2, 1(0) ;  Load CLI arg 1 into register
3 : ST 2, 1(5) ;  Store the argument into stack frame
4 : LDA 6, 2(7) ;  Calculate return address (two lines ahead)
5 : ST 6, 0(5) ;  Store return address in main stack frame
6 : LDA 7, 12(0) ;  Load address of main IMEM block - branch to function
7 : OUT 1, 0, 0 ;  Return result
8 : HALT 0, 0, 0 ;  Terminate program execution
9 : OUT 1, 0, 0 ;  Hardcoded print function
10 : LD 6, 0(5) ;  Load return address from stack frame
11 : LDA 7, 0(6) ;  Jump to return address
12 : LDC 1, 10(0) ;  Load integer-literal value into R1
13 : ADD 3, 1, 0 ;  Move right operand to R3
14 : LD 1, 1(5) ;  Load parameter 'n' into R1
15 : ADD 2, 1, 0 ;  Move left operand to R2
16 : ADD 1, 3, 0 ;  Restore right operand into R1
17 : SUB 1, 2, 1 ;  left - right for less-than check
18 : JLT 1, 2(7) ;  If R1 < 0, jump to true
19 : LDC 1, 0(0) ;  false
20 : LDA 7, 1(7) ;  skip setting true
21 : LDC 1, 1(0) ;  true
22 : JEQ 1, 50(0) ;  If condition is false, jump to ELSE
23 : LDC 1, 5(0) ;  Load integer-literal value into R1
24 : ADD 3, 1, 0 ;  Move right operand to R3
25 : LD 1, 1(5) ;  Load parameter 'n' into R1
26 : ADD 2, 1, 0 ;  Move left operand to R2
27 : ADD 1, 3, 0 ;  Restore right operand into R1
28 : SUB 1, 2, 1 ;  left - right for less-than check
29 : JLT 1, 2(7) ;  If R1 < 0, jump to true
30 : LDC 1, 0(0) ;  false
31 : LDA 7, 1(7) ;  skip setting true
32 : LDC 1, 1(0) ;  true
33 : JEQ 1, 42(0) ;  If condition is false, jump to ELSE
34 : LDC 1, 2(0) ;  Load integer-literal value into R1
35 : ADD 3, 1, 0 ;  Move right operand to R3
36 : LD 1, 1(5) ;  Load parameter 'n' into R1
37 : ADD 2, 1, 0 ;  Move left operand to R2
38 : ADD 1, 3, 0 ;  Restore right operand into R1
39 : MUL 1, 2, 1 ;  R1 = left * right
40 : ST 1, 2(5) ;  Store result into current frame's return slot
41 : LDA 7, 49(0) ;  Skip ELSE block
42 : LDC 1, 1(0) ;  Load integer-literal value into R1
43 : ADD 3, 1, 0 ;  Move right operand to R3
44 : LD 1, 1(5) ;  Load parameter 'n' into R1
45 : ADD 2, 1, 0 ;  Move left operand to R2
46 : ADD 1, 3, 0 ;  Restore right operand into R1
47 : SUB 1, 2, 1 ;  R1 = left - right
48 : ST 1, 2(5) ;  Store result into current frame's return slot
49 : LDA 7, 52(0) ;  Skip ELSE block
50 : LDC 1, 1(0) ;  Load integer-literal value into R1
51 : ST 1, 2(5) ;  Store result into current frame's return slot
52 : LD 1, 2(5) ;  Load return value into register 1
53 : LD 6, 0(5) ;  Load return address for main function into register 6
54 : LDA 7, 0(6) ;  Jump to runtime continuation
