0 : LDC  3, 1(0) ;  Load target memory location for command line argument {index}
1 : LD   1, 0(3) ;  Load command line argument 1 into register 1
2 : ST   0, 0(3) ;  Replace DMEM[1] with 0
3 : ST   1, 0(5) ;  Store command line argument into MAIN stack frame
4 : LDC  4, 2(0) ;  Load value 2 in temp register 4
5 : SUB  5, 5, 4 ;  Decrement memory offset
6 : LDA  7, 10(0) ;  Load address of main IMEM block - branch to function
7 :  OUT  1, 0, 0 ;  Hardcoded print function
8 :  LD   6, 0(5) ;  Load return addess from previous function call/stack frame.
9 :  LDA  7, 0(6) ;  Load address of previous function call into register 7.
10 : LDC   3, 1022(0) ;  Load offset for parameter elementWanted into register 3
11 : LD  1, 0(3) ;  Load parameter elementWanted value into register 1
12 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
13 : SUB  5, 5, 4 ;  Decrement memory offset
14 : ST   1, 0(5) ;  Store left expression value into memory
15 : LDC  1, 1(0) ;  Load integer-literal value into register 1
16 : LD   2, 0(5) ;  Load left expression value from memory into register 2
17 : ADD  5, 5, 4 ;  Increment memory offset
18 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for less-than check
19 : JLT  1, 2(7) ;  If Register 1 is negative, then jump to true handling
20 : LDC  1, 0(0) ;  Load false (0) into register 1
21 : LDA  7, 1(7) ;  Jump to end of less-than handling
22 : LDC  1, 1(0) ;  Load true (1) into register 1
23 : JEQ  1, 26(0) ;  If condition is false, skip to ELSE block
24 : LDC  1, 0(0) ;  Load integer-literal value into register 1
25 : LDA  7, 53(0) ;  Skip the ELSE block
26 : LDA  6, 50(0) ;  Load return address into R6
27 : ST   6, 0(5) ;  Store current return address into DMEM
28 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
29 : SUB  5, 5, 4 ;  Decrement memory offset
30 : LDC  1, 1(0) ;  Load integer-literal value into register 1
31 : ST   1, 0(5) ;  Store parameter into memory
32 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
33 : SUB  5, 5, 4 ;  Decrement memory offset
34 : LDC   3, 1022(0) ;  Load offset for parameter elementWanted into register 3
35 : LD  1, 0(3) ;  Load parameter elementWanted value into register 1
36 : ST   1, 0(5) ;  Store parameter into memory
37 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
38 : SUB  5, 5, 4 ;  Decrement memory offset
39 : LDC  1, 0(0) ;  Load integer-literal value into register 1
40 : ST   1, 0(5) ;  Store parameter into memory
41 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
42 : SUB  5, 5, 4 ;  Decrement memory offset
43 : LDC  1, 1(0) ;  Load integer-literal value into register 1
44 : ST   1, 0(5) ;  Store parameter into memory
45 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
46 : SUB  5, 5, 4 ;  Decrement memory offset
47 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
48 : SUB  5, 5, 4 ;  Decrement memory offset
49 : LDA  7, 55(0) ;  Load address of addNext IMEM block - branch to function
50 : LD   1, 0(5) ;  Load return value from DMEM into register 1
51 : LDC  4, 6(0) ;  Load value of parameters + return value into temporary register 4
52 : ADD  5, 5, 4 ;  Increment memory offset
53 : LDC  5, 1021(0) ;  Store the memory location of main return value
54 : ST   1, 0(5) ;  Store return value of into DMEM
55 : LDC   3, 1019(0) ;  Load offset for parameter elementWanted into register 3
56 : LD  1, 0(3) ;  Load parameter elementWanted value into register 1
57 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
58 : SUB  5, 5, 4 ;  Decrement memory offset
59 : ST   1, 0(5) ;  Store left expression value into memory
60 : LDC   3, 1020(0) ;  Load offset for parameter currentElement into register 3
61 : LD  1, 0(3) ;  Load parameter currentElement value into register 1
62 : LD   2, 0(5) ;  Load left expression value from memory into register 2
63 : ADD  5, 5, 4 ;  Increment memory offset
64 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for equality check
65 : JEQ  1, 2(7) ;  If Register 1 is 0, then jump to true handling
66 : LDC  1, 0(0) ;  Load false (0) into register 1
67 : LDA  7, 1(7) ;  Jump to end of equality handling
68 : LDC  1, 1(0) ;  Load true (1) into register 1
69 : JEQ  1, 73(0) ;  If condition is false, skip to ELSE block
70 : LDC   3, 1017(0) ;  Load offset for parameter currentSum into register 3
71 : LD  1, 0(3) ;  Load parameter currentSum value into register 1
72 : LDA  7, 118(0) ;  Skip the ELSE block
73 : LDA  6, 115(0) ;  Load return address into R6
74 : ST   6, 0(5) ;  Store current return address into DMEM
75 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
76 : SUB  5, 5, 4 ;  Decrement memory offset
77 : LDC   3, 1020(0) ;  Load offset for parameter currentElement into register 3
78 : LD  1, 0(3) ;  Load parameter currentElement value into register 1
79 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
80 : SUB  5, 5, 4 ;  Decrement memory offset
81 : ST   1, 0(5) ;  Store left expression value into memory
82 : LDC  1, 1(0) ;  Load integer-literal value into register 1
83 : LD   2, 0(5) ;  Load left expression value from memory into register 2
84 : ADD  5, 5, 4 ;  Increment memory offset
85 : ADD  1, 2, 1 ;  Add left and right expression values
86 : ST   1, 0(5) ;  Store parameter into memory
87 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
88 : SUB  5, 5, 4 ;  Decrement memory offset
89 : LDC   3, 1019(0) ;  Load offset for parameter elementWanted into register 3
90 : LD  1, 0(3) ;  Load parameter elementWanted value into register 1
91 : ST   1, 0(5) ;  Store parameter into memory
92 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
93 : SUB  5, 5, 4 ;  Decrement memory offset
94 : LDC   3, 1017(0) ;  Load offset for parameter currentSum into register 3
95 : LD  1, 0(3) ;  Load parameter currentSum value into register 1
96 : ST   1, 0(5) ;  Store parameter into memory
97 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
98 : SUB  5, 5, 4 ;  Decrement memory offset
99 : LDC   3, 1018(0) ;  Load offset for parameter previousSum into register 3
100 : LD  1, 0(3) ;  Load parameter previousSum value into register 1
101 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
102 : SUB  5, 5, 4 ;  Decrement memory offset
103 : ST   1, 0(5) ;  Store left expression value into memory
104 : LDC   3, 1017(0) ;  Load offset for parameter currentSum into register 3
105 : LD  1, 0(3) ;  Load parameter currentSum value into register 1
106 : LD   2, 0(5) ;  Load left expression value from memory into register 2
107 : ADD  5, 5, 4 ;  Increment memory offset
108 : ADD  1, 2, 1 ;  Add left and right expression values
109 : ST   1, 0(5) ;  Store parameter into memory
110 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
111 : SUB  5, 5, 4 ;  Decrement memory offset
112 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
113 : SUB  5, 5, 4 ;  Decrement memory offset
114 : LDA  7, 55(0) ;  Load address of addNext IMEM block - branch to function
115 : LD   1, 0(5) ;  Load return value from DMEM into register 1
116 : LDC  4, 6(0) ;  Load value of parameters + return value into temporary register 4
117 : ADD  5, 5, 4 ;  Increment memory offset
118 : LDC  5, 1016(0) ;  Store the memory location of addNext return value
119 : ST   1, 0(5) ;  Store return value of into DMEM
120 : LDC  3, 1021(0) ;  Load return address for function addNext into register 3
121 : LD   6, 0(3) ;  Load return address into register 6
122 : LDA  7, 0(6) ;  Load return address back into register 7
123 : LDC  5, 1021(0) ;  Store the memory location of main return value
124 : ST   1, 0(5) ;  Store return value of into DMEM
125 : LD   1, 0(5) ;  Load Return Value from DMEM
126 : OUT  1, 0, 0 ;  Output value from register 1.
127 : HALT 0, 0, 0 ;  Terminate program execution.
