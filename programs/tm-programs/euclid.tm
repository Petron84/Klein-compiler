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
32 : LDA  7, 38(0) ;  Load address of gcd IMEM block - branch to function
33 : LD   1, 0(5) ;  Load return value from DMEM into register 1
34 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
35 : ADD  5, 5, 4 ;  Increment memory offset
36 : LDC  5, 1020(0) ;  Store the memory location of main return value
37 : ST   1, 0(5) ;  Store return value of into DMEM
38 : LDC   3, 1018(0) ;  Load offset for parameter b into register 3
39 : LD  1, 0(3) ;  Load parameter b value into register 1
40 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
41 : SUB  5, 5, 4 ;  Decrement memory offset
42 : ST   1, 0(5) ;  Store left expression value into memory
43 : LDC  1, 0(0) ;  Load integer-literal value into register 1
44 : LD   2, 0(5) ;  Load left expression value from memory into register 2
45 : ADD  5, 5, 4 ;  Increment memory offset
46 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for equality check
47 : JEQ  1, 2(7) ;  If Register 1 is 0, then jump to true handling
48 : LDC  1, 0(0) ;  Load false (0) into register 1
49 : LDA  7, 1(7) ;  Jump to end of equality handling
50 : LDC  1, 1(0) ;  Load true (1) into register 1
51 : JEQ  1, 55(0) ;  If condition is false, skip to ELSE block
52 : LDC   3, 1019(0) ;  Load offset for parameter a into register 3
53 : LD  1, 0(3) ;  Load parameter a value into register 1
54 : LDA  7, 93(0) ;  Skip the ELSE block
55 : LDA  6, 90(0) ;  Load return address into R6
56 : ST   6, 0(5) ;  Store current return address into DMEM
57 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
58 : SUB  5, 5, 4 ;  Decrement memory offset
59 : LDC   3, 1018(0) ;  Load offset for parameter b into register 3
60 : LD  1, 0(3) ;  Load parameter b value into register 1
61 : ST   1, 0(5) ;  Store parameter into memory
62 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
63 : SUB  5, 5, 4 ;  Decrement memory offset
64 : LDA  6, 81(0) ;  Load return address into R6
65 : ST   6, 0(5) ;  Store current return address into DMEM
66 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
67 : SUB  5, 5, 4 ;  Decrement memory offset
68 : LDC   3, 1019(0) ;  Load offset for parameter a into register 3
69 : LD  1, 0(3) ;  Load parameter a value into register 1
70 : ST   1, 0(5) ;  Store parameter into memory
71 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
72 : SUB  5, 5, 4 ;  Decrement memory offset
73 : LDC   3, 1018(0) ;  Load offset for parameter b into register 3
74 : LD  1, 0(3) ;  Load parameter b value into register 1
75 : ST   1, 0(5) ;  Store parameter into memory
76 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
77 : SUB  5, 5, 4 ;  Decrement memory offset
78 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
79 : SUB  5, 5, 4 ;  Decrement memory offset
80 : LDA  7, 98(0) ;  Load address of remainder IMEM block - branch to function
81 : LD   1, 0(5) ;  Load return value from DMEM into register 1
82 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
83 : ADD  5, 5, 4 ;  Increment memory offset
84 : ST   1, 0(5) ;  Store parameter into memory
85 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
86 : SUB  5, 5, 4 ;  Decrement memory offset
87 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
88 : SUB  5, 5, 4 ;  Decrement memory offset
89 : LDA  7, 38(0) ;  Load address of gcd IMEM block - branch to function
90 : LD   1, 0(5) ;  Load return value from DMEM into register 1
91 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
92 : ADD  5, 5, 4 ;  Increment memory offset
93 : LDC  5, 1017(0) ;  Store the memory location of gcd return value
94 : ST   1, 0(5) ;  Store return value of into DMEM
95 : LDC  3, 1020(0) ;  Load return address for function gcd into register 3
96 : LD   6, 0(3) ;  Load return address into register 6
97 : LDA  7, 0(6) ;  Load return address back into register 7
98 : LDC   3, 1019(0) ;  Load offset for parameter a into register 3
99 : LD  1, 0(3) ;  Load parameter a value into register 1
100 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
101 : SUB  5, 5, 4 ;  Decrement memory offset
102 : ST   1, 0(5) ;  Store left expression value into memory
103 : LDC   3, 1018(0) ;  Load offset for parameter b into register 3
104 : LD  1, 0(3) ;  Load parameter b value into register 1
105 : LD   2, 0(5) ;  Load left expression value from memory into register 2
106 : ADD  5, 5, 4 ;  Increment memory offset
107 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for less-than check
108 : JLT  1, 2(7) ;  If Register 1 is negative, then jump to true handling
109 : LDC  1, 0(0) ;  Load false (0) into register 1
110 : LDA  7, 1(7) ;  Jump to end of less-than handling
111 : LDC  1, 1(0) ;  Load true (1) into register 1
112 : JEQ  1, 116(0) ;  If condition is false, skip to ELSE block
113 : LDC   3, 1019(0) ;  Load offset for parameter a into register 3
114 : LD  1, 0(3) ;  Load parameter a value into register 1
115 : LDA  7, 144(0) ;  Skip the ELSE block
116 : LDA  6, 141(0) ;  Load return address into R6
117 : ST   6, 0(5) ;  Store current return address into DMEM
118 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
119 : SUB  5, 5, 4 ;  Decrement memory offset
120 : LDC   3, 1019(0) ;  Load offset for parameter a into register 3
121 : LD  1, 0(3) ;  Load parameter a value into register 1
122 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
123 : SUB  5, 5, 4 ;  Decrement memory offset
124 : ST   1, 0(5) ;  Store left expression value into memory
125 : LDC   3, 1018(0) ;  Load offset for parameter b into register 3
126 : LD  1, 0(3) ;  Load parameter b value into register 1
127 : LD   2, 0(5) ;  Load left expression value from memory into register 2
128 : ADD  5, 5, 4 ;  Increment memory offset
129 : SUB  1, 2, 1 ;  Subtract left expression from right expression value
130 : ST   1, 0(5) ;  Store parameter into memory
131 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
132 : SUB  5, 5, 4 ;  Decrement memory offset
133 : LDC   3, 1018(0) ;  Load offset for parameter b into register 3
134 : LD  1, 0(3) ;  Load parameter b value into register 1
135 : ST   1, 0(5) ;  Store parameter into memory
136 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
137 : SUB  5, 5, 4 ;  Decrement memory offset
138 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
139 : SUB  5, 5, 4 ;  Decrement memory offset
140 : LDA  7, 98(0) ;  Load address of remainder IMEM block - branch to function
141 : LD   1, 0(5) ;  Load return value from DMEM into register 1
142 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
143 : ADD  5, 5, 4 ;  Increment memory offset
144 : LDC  5, 1017(0) ;  Store the memory location of remainder return value
145 : ST   1, 0(5) ;  Store return value of into DMEM
146 : LDC  3, 1020(0) ;  Load return address for function remainder into register 3
147 : LD   6, 0(3) ;  Load return address into register 6
148 : LDA  7, 0(6) ;  Load return address back into register 7
149 : LDC  5, 1020(0) ;  Store the memory location of main return value
150 : ST   1, 0(5) ;  Store return value of into DMEM
151 : LD   1, 0(5) ;  Load Return Value from DMEM
152 : OUT  1, 0, 0 ;  Output value from register 1.
153 : HALT 0, 0, 0 ;  Terminate program execution.
