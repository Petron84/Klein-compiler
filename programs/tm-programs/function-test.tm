0 : LDC  3, 1(0) ;  Load target memory location for command line argument {index}
1 : LD   1, 0(3) ;  Load command line argument 1 into register 1
2 : ST   0, 0(3) ;  Replace DMEM[1] with 0
3 : ST   1, 0(5) ;  Store command line argument into MAIN stack frame
4 : LDC  4, 1(0) ;  Load value 1 in temp register 4
5 : SUB  5, 5, 4 ;  Decrement memory offset
6 : LDC  3, 2(0) ;  Load target memory location for command line argument {index}
7 : LD   1, 0(3) ;  Load command line argument 2 into register 1
8 : ST   0, 0(3) ;  Replace DMEM[2] with 0
9 : ST   1, 0(5) ;  Store command line argument into MAIN stack frame
10 : LDC  4, 2(0) ;  Load value 2 in temp register 4
11 : SUB  5, 5, 4 ;  Decrement memory offset
12 : LDA  7, 16(0) ;  Load address of main IMEM block - branch to function
13 :  OUT  1, 0, 0 ;  Hardcoded print function
14 :  LD   6, 0(5) ;  Load return addess from previous function call/stack frame.
15 :  LDA  7, 0(6) ;  Load address of previous function call into register 7.
16 : LDA  6, 33(0) ;  Load return address into R6
17 : ST   6, 0(5) ;  Store current return address into DMEM
18 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
19 : SUB  5, 5, 4 ;  Decrement memory offset
20 : LDC   3, 1022(0) ;  Load offset for parameter a into register 3
21 : LD  1, 0(3) ;  Load parameter a value into register 1
22 : ST   1, 0(5) ;  Store parameter into memory
23 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
24 : SUB  5, 5, 4 ;  Decrement memory offset
25 : LDC   3, 1021(0) ;  Load offset for parameter b into register 3
26 : LD  1, 0(3) ;  Load parameter b value into register 1
27 : ST   1, 0(5) ;  Store parameter into memory
28 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
29 : SUB  5, 5, 4 ;  Decrement memory offset
30 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
31 : SUB  5, 5, 4 ;  Decrement memory offset
32 : LDA  7, 38(0) ;  Load address of eval_and_print IMEM block - branch to function
33 : LD   1, 0(5) ;  Load return value from DMEM into register 1
34 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
35 : ADD  5, 5, 4 ;  Increment memory offset
36 : LDC  5, 1020(0) ;  Store the memory location of main return value
37 : ST   1, 0(5) ;  Store return value of into DMEM
38 : LDA  6, 51(0) ;  Load return address into R6
39 : ST   6, 0(5) ;  Store current return address into DMEM
40 : LDC   3, 1019(0) ;  Load offset for parameter a into register 3
41 : LD  1, 0(3) ;  Load parameter a value into register 1
42 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
43 : SUB  5, 5, 4 ;  Decrement memory offset
44 : ST   1, 0(5) ;  Store left expression value into memory
45 : LDC   3, 1018(0) ;  Load offset for parameter b into register 3
46 : LD  1, 0(3) ;  Load parameter b value into register 1
47 : LD   2, 0(5) ;  Load left expression value from memory into register 2
48 : ADD  5, 5, 4 ;  Increment memory offset
49 : MUL  1, 2, 1 ;  Multiply left and right expression values
50 : LDA  7, 13(0) ;  Load address of print IMEM block - branch to function
51 : LDC  5, 1017(0) ;  Store the memory location of eval_and_print return value
52 : ST   1, 0(5) ;  Store return value of into DMEM
53 : LDC  3, 1020(0) ;  Load return address for function eval_and_print into register 3
54 : LD   6, 0(3) ;  Load return address into register 6
55 : LDA  7, 0(6) ;  Load return address back into register 7
56 : LDC   3, 1019(0) ;  Load offset for parameter a into register 3
57 : LD  1, 0(3) ;  Load parameter a value into register 1
58 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
59 : SUB  5, 5, 4 ;  Decrement memory offset
60 : ST   1, 0(5) ;  Store left expression value into memory
61 : LDC   3, 1018(0) ;  Load offset for parameter b into register 3
62 : LD  1, 0(3) ;  Load parameter b value into register 1
63 : LD   2, 0(5) ;  Load left expression value from memory into register 2
64 : ADD  5, 5, 4 ;  Increment memory offset
65 : MUL  1, 2, 1 ;  Multiply left and right expression values
66 : LDC  5, 1017(0) ;  Store the memory location of eval_and_print return value
67 : ST   1, 0(5) ;  Store return value of into DMEM
68 : LDC  3, 1020(0) ;  Load return address for function eval_and_print into register 3
69 : LD   6, 0(3) ;  Load return address into register 6
70 : LDA  7, 0(6) ;  Load return address back into register 7
71 : LDC  5, 1020(0) ;  Store the memory location of main return value
72 : ST   1, 0(5) ;  Store return value of into DMEM
73 : LD   1, 0(5) ;  Load Return Value from DMEM
74 : OUT  1, 0, 0 ;  Output value from register 1.
75 : HALT 0, 0, 0 ;  Terminate program execution.
