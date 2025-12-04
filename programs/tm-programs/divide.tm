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
10 : LDC  4, 1(0) ;  Load value 1 in temp register 4
11 : SUB  5, 5, 4 ;  Decrement memory offset
12 : LDC  3, 3(0) ;  Load target memory location for command line argument {index}
13 : LD   1, 0(3) ;  Load command line argument 3 into register 1
14 : ST   0, 0(3) ;  Replace DMEM[3] with 0
15 : ST   1, 0(5) ;  Store command line argument into MAIN stack frame
16 : LDC  4, 2(0) ;  Load value 2 in temp register 4
17 : SUB  5, 5, 4 ;  Decrement memory offset
18 : LDA  7, 22(0) ;  Load address of main IMEM block - branch to function
19 :  OUT  1, 0, 0 ;  Hardcoded print function
20 :  LD   6, 0(5) ;  Load return addess from previous function call/stack frame.
21 :  LDA  7, 0(6) ;  Load address of previous function call into register 7.
22 : LDC   3, 1020(0) ;  Load offset for parameter n into register 3
23 : LD  1, 0(3) ;  Load parameter n value into register 1
24 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
25 : SUB  5, 5, 4 ;  Decrement memory offset
26 : ST   1, 0(5) ;  Store left expression value into memory
27 : LDC  1, 0(0) ;  Load integer-literal value into register 1
28 : LD   2, 0(5) ;  Load left expression value from memory into register 2
29 : ADD  5, 5, 4 ;  Increment memory offset
30 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for equality check
31 : JEQ  1, 2(7) ;  If Register 1 is 0, then jump to true handling
32 : LDC  1, 0(0) ;  Load false (0) into register 1
33 : LDA  7, 1(7) ;  Jump to end of equality handling
34 : LDC  1, 1(0) ;  Load true (1) into register 1
35 : JEQ  1, 39(0) ;  If condition is false, skip to ELSE block
36 : LDC   3, 1022(0) ;  Load offset for parameter a into register 3
37 : LD  1, 0(3) ;  Load parameter a value into register 1
38 : LDA  7, 64(0) ;  Skip the ELSE block
39 : LDA  6, 61(0) ;  Load return address into R6
40 : ST   6, 0(5) ;  Store current return address into DMEM
41 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
42 : SUB  5, 5, 4 ;  Decrement memory offset
43 : LDC   3, 1022(0) ;  Load offset for parameter a into register 3
44 : LD  1, 0(3) ;  Load parameter a value into register 1
45 : ST   1, 0(5) ;  Store parameter into memory
46 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
47 : SUB  5, 5, 4 ;  Decrement memory offset
48 : LDC   3, 1021(0) ;  Load offset for parameter b into register 3
49 : LD  1, 0(3) ;  Load parameter b value into register 1
50 : ST   1, 0(5) ;  Store parameter into memory
51 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
52 : SUB  5, 5, 4 ;  Decrement memory offset
53 : LDC   3, 1020(0) ;  Load offset for parameter n into register 3
54 : LD  1, 0(3) ;  Load parameter n value into register 1
55 : ST   1, 0(5) ;  Store parameter into memory
56 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
57 : SUB  5, 5, 4 ;  Decrement memory offset
58 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
59 : SUB  5, 5, 4 ;  Decrement memory offset
60 : LDA  7, 97(0) ;  Load address of printAndDivide IMEM block - branch to function
61 : LD   1, 0(5) ;  Load return value from DMEM into register 1
62 : LDC  4, 5(0) ;  Load value of parameters + return value into temporary register 4
63 : ADD  5, 5, 4 ;  Increment memory offset
64 : LDC  5, 1019(0) ;  Store the memory location of main return value
65 : ST   1, 0(5) ;  Store return value of into DMEM
66 : LDC   3, 1018(0) ;  Load offset for parameter m into register 3
67 : LD  1, 0(3) ;  Load parameter m value into register 1
68 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
69 : SUB  5, 5, 4 ;  Decrement memory offset
70 : ST   1, 0(5) ;  Store left expression value into memory
71 : LDC   3, 1018(0) ;  Load offset for parameter m into register 3
72 : LD  1, 0(3) ;  Load parameter m value into register 1
73 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
74 : SUB  5, 5, 4 ;  Decrement memory offset
75 : ST   1, 0(5) ;  Store left expression value into memory
76 : LDC   3, 1017(0) ;  Load offset for parameter n into register 3
77 : LD  1, 0(3) ;  Load parameter n value into register 1
78 : LD   2, 0(5) ;  Load left expression value from memory into register 2
79 : ADD  5, 5, 4 ;  Increment memory offset
80 : DIV  1, 2, 1 ;  Divide left expression by right expression value
81 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
82 : SUB  5, 5, 4 ;  Decrement memory offset
83 : ST   1, 0(5) ;  Store left expression value into memory
84 : LDC   3, 1017(0) ;  Load offset for parameter n into register 3
85 : LD  1, 0(3) ;  Load parameter n value into register 1
86 : LD   2, 0(5) ;  Load left expression value from memory into register 2
87 : ADD  5, 5, 4 ;  Increment memory offset
88 : MUL  1, 2, 1 ;  Multiply left and right expression values
89 : LD   2, 0(5) ;  Load left expression value from memory into register 2
90 : ADD  5, 5, 4 ;  Increment memory offset
91 : SUB  1, 2, 1 ;  Subtract left expression from right expression value
92 : LDC  5, 1016(0) ;  Store the memory location of MOD return value
93 : ST   1, 0(5) ;  Store return value of into DMEM
94 : LDC  3, 1019(0) ;  Load return address for function MOD into register 3
95 : LD   6, 0(3) ;  Load return address into register 6
96 : LDA  7, 0(6) ;  Load return address back into register 7
97 : LDA  6, 117(0) ;  Load return address into R6
98 : ST   6, 0(5) ;  Store current return address into DMEM
99 : LDC  1, 10(0) ;  Load integer-literal value into register 1
100 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
101 : SUB  5, 5, 4 ;  Decrement memory offset
102 : ST   1, 0(5) ;  Store left expression value into memory
103 : LDC   3, 1018(0) ;  Load offset for parameter a into register 3
104 : LD  1, 0(3) ;  Load parameter a value into register 1
105 : LD   2, 0(5) ;  Load left expression value from memory into register 2
106 : ADD  5, 5, 4 ;  Increment memory offset
107 : MUL  1, 2, 1 ;  Multiply left and right expression values
108 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
109 : SUB  5, 5, 4 ;  Decrement memory offset
110 : ST   1, 0(5) ;  Store left expression value into memory
111 : LDC   3, 1017(0) ;  Load offset for parameter b into register 3
112 : LD  1, 0(3) ;  Load parameter b value into register 1
113 : LD   2, 0(5) ;  Load left expression value from memory into register 2
114 : ADD  5, 5, 4 ;  Increment memory offset
115 : DIV  1, 2, 1 ;  Divide left expression by right expression value
116 : LDA  7, 19(0) ;  Load address of print IMEM block - branch to function
117 : LDC  5, 1015(0) ;  Store the memory location of printAndDivide return value
118 : ST   1, 0(5) ;  Store return value of into DMEM
119 : LDC  3, 1019(0) ;  Load return address for function printAndDivide into register 3
120 : LD   6, 0(3) ;  Load return address into register 6
121 : LDA  7, 0(6) ;  Load return address back into register 7
122 : LDA  6, 176(0) ;  Load return address into R6
123 : ST   6, 0(5) ;  Store current return address into DMEM
124 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
125 : SUB  5, 5, 4 ;  Decrement memory offset
126 : LDA  6, 150(0) ;  Load return address into R6
127 : ST   6, 0(5) ;  Store current return address into DMEM
128 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
129 : SUB  5, 5, 4 ;  Decrement memory offset
130 : LDC   3, 1018(0) ;  Load offset for parameter a into register 3
131 : LD  1, 0(3) ;  Load parameter a value into register 1
132 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
133 : SUB  5, 5, 4 ;  Decrement memory offset
134 : ST   1, 0(5) ;  Store left expression value into memory
135 : LDC  1, 10(0) ;  Load integer-literal value into register 1
136 : LD   2, 0(5) ;  Load left expression value from memory into register 2
137 : ADD  5, 5, 4 ;  Increment memory offset
138 : MUL  1, 2, 1 ;  Multiply left and right expression values
139 : ST   1, 0(5) ;  Store parameter into memory
140 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
141 : SUB  5, 5, 4 ;  Decrement memory offset
142 : LDC   3, 1017(0) ;  Load offset for parameter b into register 3
143 : LD  1, 0(3) ;  Load parameter b value into register 1
144 : ST   1, 0(5) ;  Store parameter into memory
145 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
146 : SUB  5, 5, 4 ;  Decrement memory offset
147 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
148 : SUB  5, 5, 4 ;  Decrement memory offset
149 : LDA  7, 66(0) ;  Load address of MOD IMEM block - branch to function
150 : LD   1, 0(5) ;  Load return value from DMEM into register 1
151 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
152 : ADD  5, 5, 4 ;  Increment memory offset
153 : ST   1, 0(5) ;  Store parameter into memory
154 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
155 : SUB  5, 5, 4 ;  Decrement memory offset
156 : LDC   3, 1017(0) ;  Load offset for parameter b into register 3
157 : LD  1, 0(3) ;  Load parameter b value into register 1
158 : ST   1, 0(5) ;  Store parameter into memory
159 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
160 : SUB  5, 5, 4 ;  Decrement memory offset
161 : LDC   3, 1016(0) ;  Load offset for parameter n into register 3
162 : LD  1, 0(3) ;  Load parameter n value into register 1
163 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
164 : SUB  5, 5, 4 ;  Decrement memory offset
165 : ST   1, 0(5) ;  Store left expression value into memory
166 : LDC  1, 1(0) ;  Load integer-literal value into register 1
167 : LD   2, 0(5) ;  Load left expression value from memory into register 2
168 : ADD  5, 5, 4 ;  Increment memory offset
169 : SUB  1, 2, 1 ;  Subtract left expression from right expression value
170 : ST   1, 0(5) ;  Store parameter into memory
171 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
172 : SUB  5, 5, 4 ;  Decrement memory offset
173 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
174 : SUB  5, 5, 4 ;  Decrement memory offset
175 : LDA  7, 22(0) ;  Load address of main IMEM block - branch to function
176 : LD   1, 0(5) ;  Load return value from DMEM into register 1
177 : LDC  4, 5(0) ;  Load value of parameters + return value into temporary register 4
178 : ADD  5, 5, 4 ;  Increment memory offset
179 : LDC  5, 1015(0) ;  Store the memory location of printAndDivide return value
180 : ST   1, 0(5) ;  Store return value of into DMEM
181 : LDC  3, 1019(0) ;  Load return address for function printAndDivide into register 3
182 : LD   6, 0(3) ;  Load return address into register 6
183 : LDA  7, 0(6) ;  Load return address back into register 7
184 : LDC  5, 1015(0) ;  Store the memory location of main return value
185 : ST   1, 0(5) ;  Store return value of into DMEM
186 : LD   1, 0(5) ;  Load Return Value from DMEM
187 : OUT  1, 0, 0 ;  Output value from register 1.
188 : HALT 0, 0, 0 ;  Terminate program execution.
