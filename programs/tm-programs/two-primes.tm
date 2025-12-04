0 : LDC  5, 3(0) ;  Set DMEM pointer to main stack frame
1 : LD   2, 1(0) ;  Load CLI arg 1 into register
2 : ST   2, 1(5) ;  Store the argument into stack frame
3 : LD   2, 2(0) ;  Load CLI arg 2 into register
4 : ST   2, 2(5) ;  Store the argument into stack frame
5 : LDA  6, 2(7) ;  Calculate return address
6 : ST   6, 0(5) ;  Store return address in main stack frame
7 : LDA  7, 13(0) ;  Load address of main IMEM block - branch to function
8 : OUT  1, 0, 0 ;  Return result
9 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
10 : OUT  1, 0, 0 ;  Hardcoded print function
11 : LD   6, 0(5) ;  Load return addess from stack frame.
12 : LDA  7, 0(6) ;  Jump to return address.
13 : LD   1, 2(5) ;  Load parameter 'selector' into R1
14 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
15 : LDC  1, 3(0) ;  Load boolean-literal value into register 1
16 : SUB  1, 2, 1 ;  left - right for equality check
17 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
18 : LDC  1, 0(0) ;  false
19 : LDA  7, 1(7) ;  skip setting true
20 : LDC  1, 1(0) ;  true
21 : JEQ  1, 32(0) ;  If condition is false, jump to ELSE
22 : LD   1, 1(5) ;  Load parameter 'n' into R1
23 : ST   1, 0(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=19)
24 : LDC  5, 7(0) ;  Set DMEM pointer to callee frame 'emirp'
25 : LDA  6, 2(7) ;  Compute return address
26 : ST   6, 0(5) ;  Store return address in frame
27 : LDA  7, -1(0) ;  Call emirp
28 : LD   1, 2(5) ;  Load return value into R1
29 : LDC  5, 3(0) ;  Restore DMEM pointer to caller frame
30 : ST   1, 6(0) ;  Store function-call result into caller's return slot
31 : LDA  7, 72(0) ;  Skip ELSE block
32 : LD   1, 2(5) ;  Load parameter 'selector' into R1
33 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
34 : LDC  1, 5(0) ;  Load boolean-literal value into register 1
35 : SUB  1, 2, 1 ;  left - right for equality check
36 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
37 : LDC  1, 0(0) ;  false
38 : LDA  7, 1(7) ;  skip setting true
39 : LDC  1, 1(0) ;  true
40 : JEQ  1, 51(0) ;  If condition is false, jump to ELSE
41 : LD   1, 1(5) ;  Load parameter 'n' into R1
42 : ST   1, 0(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=21)
43 : LDC  5, 7(0) ;  Set DMEM pointer to callee frame 'snowball'
44 : LDA  6, 2(7) ;  Compute return address
45 : ST   6, 0(5) ;  Store return address in frame
46 : LDA  7, -1(0) ;  Call snowball
47 : LD   1, 2(5) ;  Load return value into R1
48 : LDC  5, 3(0) ;  Restore DMEM pointer to caller frame
49 : ST   1, 6(0) ;  Store function-call result into caller's return slot
50 : LDA  7, 72(0) ;  Skip ELSE block
51 : LD   1, 2(5) ;  Load parameter 'selector' into R1
52 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
53 : LDC  1, 8(0) ;  Load boolean-literal value into register 1
54 : SUB  1, 2, 1 ;  left - right for equality check
55 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
56 : LDC  1, 0(0) ;  false
57 : LDA  7, 1(7) ;  skip setting true
58 : LDC  1, 1(0) ;  true
59 : JEQ  1, 70(0) ;  If condition is false, jump to ELSE
60 : LD   1, 1(5) ;  Load parameter 'n' into R1
61 : ST   1, 0(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=23)
62 : LDC  5, 7(0) ;  Set DMEM pointer to callee frame 'doBoth'
63 : LDA  6, 2(7) ;  Compute return address
64 : ST   6, 0(5) ;  Store return address in frame
65 : LDA  7, -1(0) ;  Call doBoth
66 : LD   1, 2(5) ;  Load return value into R1
67 : LDC  5, 3(0) ;  Restore DMEM pointer to caller frame
68 : ST   1, 6(0) ;  Store function-call result into caller's return slot
69 : LDA  7, 72(0) ;  Skip ELSE block
70 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
71 : ST   1, 6(0) ;  Store value into return value in stack frame
72 : LD   1, 6(0) ;  Load return value into register 1
73 : LD  6, 3(0) ;  Load return address for main function into register 6
74 : LDA  7, 0(6) ;  Jump to return address of main function
