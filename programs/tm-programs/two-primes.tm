0 : LDC  5, 1(0) ;  Set DMEM pointer to main stack frame
1 : LDA  6, 2(7) ;  Calculate return address for main function
2 : ST   6, 0(5) ;  Store return address in main stack frame
3 : LDA  7, 9(0) ;  Load address of main IMEM block - branch to function
4 : OUT  1, 0, 0 ;  Return result
5 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
6 : OUT  1, 0, 0 ;  Hardcoded print function
7 : LD   6, 0(5) ;  Load return addess from stack frame.
8 : LDA  7, 0(6) ;  Jump to return address.
9 : LD   1, 2(5) ;  Load parameter 'selector' into R1
10 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
11 : LDC  1, 3(0) ;  Load boolean-literal value into register 1
12 : SUB  1, 2, 1 ;  left - right for equality check
13 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
14 : LDC  1, 0(0) ;  false
15 : LDA  7, 1(7) ;  skip setting true
16 : LDC  1, 1(0) ;  true
17 : JEQ  1, 28(0) ;  If condition is false, jump to ELSE
18 : LD   1, 1(5) ;  Load parameter 'n' into R1
19 : ST   1, 0(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=19)
20 : LDC  5, 5(0) ;  Set DMEM pointer to callee frame 'emirp'
21 : LDA  6, 2(7) ;  Compute return address
22 : ST   6, 0(5) ;  Store return address in frame
23 : LDA  7, -1(0) ;  Call emirp
24 : LD   1, 2(5) ;  Load return value into R1
25 : LDC  5, 1(0) ;  Restore DMEM pointer to caller frame
26 : ST   1, 4(0) ;  Store function-call result into caller's return slot
27 : LDA  7, 68(0) ;  Skip ELSE block
28 : LD   1, 2(5) ;  Load parameter 'selector' into R1
29 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
30 : LDC  1, 5(0) ;  Load boolean-literal value into register 1
31 : SUB  1, 2, 1 ;  left - right for equality check
32 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
33 : LDC  1, 0(0) ;  false
34 : LDA  7, 1(7) ;  skip setting true
35 : LDC  1, 1(0) ;  true
36 : JEQ  1, 47(0) ;  If condition is false, jump to ELSE
37 : LD   1, 1(5) ;  Load parameter 'n' into R1
38 : ST   1, 0(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=21)
39 : LDC  5, 5(0) ;  Set DMEM pointer to callee frame 'snowball'
40 : LDA  6, 2(7) ;  Compute return address
41 : ST   6, 0(5) ;  Store return address in frame
42 : LDA  7, -1(0) ;  Call snowball
43 : LD   1, 2(5) ;  Load return value into R1
44 : LDC  5, 1(0) ;  Restore DMEM pointer to caller frame
45 : ST   1, 4(0) ;  Store function-call result into caller's return slot
46 : LDA  7, 68(0) ;  Skip ELSE block
47 : LD   1, 2(5) ;  Load parameter 'selector' into R1
48 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
49 : LDC  1, 8(0) ;  Load boolean-literal value into register 1
50 : SUB  1, 2, 1 ;  left - right for equality check
51 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
52 : LDC  1, 0(0) ;  false
53 : LDA  7, 1(7) ;  skip setting true
54 : LDC  1, 1(0) ;  true
55 : JEQ  1, 66(0) ;  If condition is false, jump to ELSE
56 : LD   1, 1(5) ;  Load parameter 'n' into R1
57 : ST   1, 0(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=23)
58 : LDC  5, 5(0) ;  Set DMEM pointer to callee frame 'doBoth'
59 : LDA  6, 2(7) ;  Compute return address
60 : ST   6, 0(5) ;  Store return address in frame
61 : LDA  7, -1(0) ;  Call doBoth
62 : LD   1, 2(5) ;  Load return value into R1
63 : LDC  5, 1(0) ;  Restore DMEM pointer to caller frame
64 : ST   1, 4(0) ;  Store function-call result into caller's return slot
65 : LDA  7, 68(0) ;  Skip ELSE block
66 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
67 : ST   1, 4(0) ;  Store value into return value in stack frame
68 : LD   1, 4(0) ;  Load return value into register 1
69 : LD  6, 1(0) ;  Load return address for main function into register 6
70 : LDA  7, 0(6) ;  Jump to return address of main function
