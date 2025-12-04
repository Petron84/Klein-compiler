0 : LDC  5, 1(0) ;  Set DMEM pointer to main stack frame
1 : LDA  6, 2(7) ;  Calculate return address for main function
2 : ST   6, 0(5) ;  Store return address in main stack frame
3 : LDA  7, 9(0) ;  Load address of main IMEM block - branch to function
4 : OUT  1, 0, 0 ;  Return result
5 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
6 : OUT  1, 0, 0 ;  Hardcoded print function
7 : LD   6, 0(5) ;  Load return addess from stack frame.
8 : LDA  7, 0(6) ;  Jump to return address.
9 : LD   1, 1(5) ;  Load parameter 'm' into R1
10 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
11 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
12 : SUB  1, 2, 1 ;  left - right for equality check
13 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
14 : LDC  1, 0(0) ;  false
15 : LDA  7, 1(7) ;  skip setting true
16 : LDC  1, 1(0) ;  true
17 : JEQ  1, 21(0) ;  If condition is false, jump to ELSE
18 : LD   1, 2(5) ;  Load parameter 'n' into R1
19 : ST   1, 4(0) ;  Store identifier value into current frame's return slot
20 : LDA  7, 64(0) ;  Skip ELSE block
21 : LD   1, 2(5) ;  Load parameter 'n' into R1
22 : ST   1, 0(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=7)
23 : LD   1, 1(5) ;  Load parameter 'm' into R1
24 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='m',line=7)
25 : LDC  5, 5(0) ;  Set DMEM pointer to callee frame 'MOD'
26 : LDA  6, 2(7) ;  Compute return address
27 : ST   6, 0(5) ;  Store return address in frame
28 : LDA  7, -1(0) ;  Call MOD
29 : LD   1, 3(5) ;  Load return value into R1
30 : LDC  5, 1(0) ;  Restore DMEM pointer to caller frame
31 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
32 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
33 : SUB  1, 2, 1 ;  left - right for equality check
34 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
35 : LDC  1, 0(0) ;  false
36 : LDA  7, 1(7) ;  skip setting true
37 : LDC  1, 1(0) ;  true
38 : JEQ  1, 45(0) ;  If condition is false, jump to ELSE
39 : LD   1, 2(5) ;  Load parameter 'n' into R1
40 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
41 : LD   1, 1(5) ;  Load parameter 'm' into R1
42 : DIV  1, 2, 1 ;  R1 = left / right
43 : ST   1, 4(0) ;  Store binary result into return slot
44 : LDA  7, 64(0) ;  Skip ELSE block
45 : LD   1, 1(5) ;  Load parameter 'm' into R1
46 : ST   1, 0(5) ;  Store argument Tree Node('IDENTIFIER', value='m',line=9)
47 : LD   1, 2(5) ;  Load parameter 'n' into R1
48 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=9)
49 : LD   1, 2(5) ;  Load parameter 'n' into R1
50 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
51 : LD   1, 1(5) ;  Load parameter 'm' into R1
52 : DIV  1, 2, 1 ;  R1 = left / right
53 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
54 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
55 : ADD  1, 2, 1 ;  R1 = left + right
56 : ST   1, 2(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('BINARY-EXPRESSION', value='/', children=[Tree Node('IDENTIFIER', value='n',line=9), Tree Node('IDENTIFIER', value='m',line=9)],line=9), Tree Node('INTEGER-LITERAL', value='1',line=9)],line=9)
57 : LDC  5, 5(0) ;  Set DMEM pointer to callee frame 'print_and_continue'
58 : LDA  6, 2(7) ;  Compute return address
59 : ST   6, 0(5) ;  Store return address in frame
60 : LDA  7, -1(0) ;  Call print_and_continue
61 : LD   1, 4(5) ;  Load return value into R1
62 : LDC  5, 1(0) ;  Restore DMEM pointer to caller frame
63 : ST   1, 4(0) ;  Store function-call result into caller's return slot
64 : LD   1, 4(0) ;  Load return value into register 1
65 : LD  6, 1(0) ;  Load return address for main function into register 6
66 : LDA  7, 0(6) ;  Jump to return address of main function
