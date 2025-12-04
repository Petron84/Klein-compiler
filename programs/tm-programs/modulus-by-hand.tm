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
16 : LDA  6, 29(0) ;  Load return address into R6
17 : ST   6, 0(5) ;  Store current return address into DMEM
18 : LDC   3, 1022(0) ;  Load offset for parameter m into register 3
19 : LD  1, 0(3) ;  Load parameter m value into register 1
20 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
21 : SUB  5, 5, 4 ;  Decrement memory offset
22 : ST   1, 0(5) ;  Store left expression value into memory
23 : LDC   3, 1021(0) ;  Load offset for parameter n into register 3
24 : LD  1, 0(3) ;  Load parameter n value into register 1
25 : LD   2, 0(5) ;  Load left expression value from memory into register 2
26 : ADD  5, 5, 4 ;  Increment memory offset
27 : DIV  1, 2, 1 ;  Divide left expression by right expression value
28 : LDA  7, 13(0) ;  Load address of print IMEM block - branch to function
29 : LDC  5, 1020(0) ;  Store the memory location of main return value
30 : ST   1, 0(5) ;  Store return value of into DMEM
31 : LDA  6, 48(0) ;  Load return address into R6
32 : ST   6, 0(5) ;  Store current return address into DMEM
33 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
34 : SUB  5, 5, 4 ;  Decrement memory offset
35 : LDC   3, 1022(0) ;  Load offset for parameter m into register 3
36 : LD  1, 0(3) ;  Load parameter m value into register 1
37 : ST   1, 0(5) ;  Store parameter into memory
38 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
39 : SUB  5, 5, 4 ;  Decrement memory offset
40 : LDC   3, 1021(0) ;  Load offset for parameter n into register 3
41 : LD  1, 0(3) ;  Load parameter n value into register 1
42 : ST   1, 0(5) ;  Store parameter into memory
43 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
44 : SUB  5, 5, 4 ;  Decrement memory offset
45 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
46 : SUB  5, 5, 4 ;  Decrement memory offset
47 : LDA  7, 53(0) ;  Load address of mod IMEM block - branch to function
48 : LD   1, 0(5) ;  Load return value from DMEM into register 1
49 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
50 : ADD  5, 5, 4 ;  Increment memory offset
51 : LDC  5, 1020(0) ;  Store the memory location of main return value
52 : ST   1, 0(5) ;  Store return value of into DMEM
53 : LDC   3, 1019(0) ;  Load offset for parameter m into register 3
54 : LD  1, 0(3) ;  Load parameter m value into register 1
55 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
56 : SUB  5, 5, 4 ;  Decrement memory offset
57 : ST   1, 0(5) ;  Store left expression value into memory
58 : LDC   3, 1018(0) ;  Load offset for parameter n into register 3
59 : LD  1, 0(3) ;  Load parameter n value into register 1
60 : LD   2, 0(5) ;  Load left expression value from memory into register 2
61 : ADD  5, 5, 4 ;  Increment memory offset
62 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for less-than check
63 : JLT  1, 2(7) ;  If Register 1 is negative, then jump to true handling
64 : LDC  1, 0(0) ;  Load false (0) into register 1
65 : LDA  7, 1(7) ;  Jump to end of less-than handling
66 : LDC  1, 1(0) ;  Load true (1) into register 1
67 : JEQ  1, 71(0) ;  If condition is false, skip to ELSE block
68 : LDC   3, 1019(0) ;  Load offset for parameter m into register 3
69 : LD  1, 0(3) ;  Load parameter m value into register 1
70 : LDA  7, 99(0) ;  Skip the ELSE block
71 : LDA  6, 96(0) ;  Load return address into R6
72 : ST   6, 0(5) ;  Store current return address into DMEM
73 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
74 : SUB  5, 5, 4 ;  Decrement memory offset
75 : LDC   3, 1019(0) ;  Load offset for parameter m into register 3
76 : LD  1, 0(3) ;  Load parameter m value into register 1
77 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
78 : SUB  5, 5, 4 ;  Decrement memory offset
79 : ST   1, 0(5) ;  Store left expression value into memory
80 : LDC   3, 1018(0) ;  Load offset for parameter n into register 3
81 : LD  1, 0(3) ;  Load parameter n value into register 1
82 : LD   2, 0(5) ;  Load left expression value from memory into register 2
83 : ADD  5, 5, 4 ;  Increment memory offset
84 : SUB  1, 2, 1 ;  Subtract left expression from right expression value
85 : ST   1, 0(5) ;  Store parameter into memory
86 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
87 : SUB  5, 5, 4 ;  Decrement memory offset
88 : LDC   3, 1018(0) ;  Load offset for parameter n into register 3
89 : LD  1, 0(3) ;  Load parameter n value into register 1
90 : ST   1, 0(5) ;  Store parameter into memory
91 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
92 : SUB  5, 5, 4 ;  Decrement memory offset
93 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
94 : SUB  5, 5, 4 ;  Decrement memory offset
95 : LDA  7, 53(0) ;  Load address of mod IMEM block - branch to function
96 : LD   1, 0(5) ;  Load return value from DMEM into register 1
97 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
98 : ADD  5, 5, 4 ;  Increment memory offset
99 : LDC  5, 1017(0) ;  Store the memory location of mod return value
100 : ST   1, 0(5) ;  Store return value of into DMEM
101 : LDC  3, 1020(0) ;  Load return address for function mod into register 3
102 : LD   6, 0(3) ;  Load return address into register 6
103 : LDA  7, 0(6) ;  Load return address back into register 7
104 : LDC  5, 1020(0) ;  Store the memory location of main return value
105 : ST   1, 0(5) ;  Store return value of into DMEM
106 : LD   1, 0(5) ;  Load Return Value from DMEM
107 : OUT  1, 0, 0 ;  Output value from register 1.
108 : HALT 0, 0, 0 ;  Terminate program execution.
