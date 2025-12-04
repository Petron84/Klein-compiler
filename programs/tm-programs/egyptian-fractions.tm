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
16 : LDC   3, 1022(0) ;  Load offset for parameter m into register 3
17 : LD  1, 0(3) ;  Load parameter m value into register 1
18 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
19 : SUB  5, 5, 4 ;  Decrement memory offset
20 : ST   1, 0(5) ;  Store left expression value into memory
21 : LDC  1, 1(0) ;  Load integer-literal value into register 1
22 : LD   2, 0(5) ;  Load left expression value from memory into register 2
23 : ADD  5, 5, 4 ;  Increment memory offset
24 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for equality check
25 : JEQ  1, 2(7) ;  If Register 1 is 0, then jump to true handling
26 : LDC  1, 0(0) ;  Load false (0) into register 1
27 : LDA  7, 1(7) ;  Jump to end of equality handling
28 : LDC  1, 1(0) ;  Load true (1) into register 1
29 : JEQ  1, 33(0) ;  If condition is false, skip to ELSE block
30 : LDC   3, 1021(0) ;  Load offset for parameter n into register 3
31 : LD  1, 0(3) ;  Load parameter n value into register 1
32 : LDA  7, 116(0) ;  Skip the ELSE block
33 : LDA  6, 50(0) ;  Load return address into R6
34 : ST   6, 0(5) ;  Store current return address into DMEM
35 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
36 : SUB  5, 5, 4 ;  Decrement memory offset
37 : LDC   3, 1021(0) ;  Load offset for parameter n into register 3
38 : LD  1, 0(3) ;  Load parameter n value into register 1
39 : ST   1, 0(5) ;  Store parameter into memory
40 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
41 : SUB  5, 5, 4 ;  Decrement memory offset
42 : LDC   3, 1022(0) ;  Load offset for parameter m into register 3
43 : LD  1, 0(3) ;  Load parameter m value into register 1
44 : ST   1, 0(5) ;  Store parameter into memory
45 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
46 : SUB  5, 5, 4 ;  Decrement memory offset
47 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
48 : SUB  5, 5, 4 ;  Decrement memory offset
49 : LDA  7, 118(0) ;  Load address of MOD IMEM block - branch to function
50 : LD   1, 0(5) ;  Load return value from DMEM into register 1
51 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
52 : ADD  5, 5, 4 ;  Increment memory offset
53 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
54 : SUB  5, 5, 4 ;  Decrement memory offset
55 : ST   1, 0(5) ;  Store left expression value into memory
56 : LDC  1, 0(0) ;  Load integer-literal value into register 1
57 : LD   2, 0(5) ;  Load left expression value from memory into register 2
58 : ADD  5, 5, 4 ;  Increment memory offset
59 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for equality check
60 : JEQ  1, 2(7) ;  If Register 1 is 0, then jump to true handling
61 : LDC  1, 0(0) ;  Load false (0) into register 1
62 : LDA  7, 1(7) ;  Jump to end of equality handling
63 : LDC  1, 1(0) ;  Load true (1) into register 1
64 : JEQ  1, 76(0) ;  If condition is false, skip to ELSE block
65 : LDC   3, 1021(0) ;  Load offset for parameter n into register 3
66 : LD  1, 0(3) ;  Load parameter n value into register 1
67 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
68 : SUB  5, 5, 4 ;  Decrement memory offset
69 : ST   1, 0(5) ;  Store left expression value into memory
70 : LDC   3, 1022(0) ;  Load offset for parameter m into register 3
71 : LD  1, 0(3) ;  Load parameter m value into register 1
72 : LD   2, 0(5) ;  Load left expression value from memory into register 2
73 : ADD  5, 5, 4 ;  Increment memory offset
74 : DIV  1, 2, 1 ;  Divide left expression by right expression value
75 : LDA  7, 116(0) ;  Skip the ELSE block
76 : LDA  6, 113(0) ;  Load return address into R6
77 : ST   6, 0(5) ;  Store current return address into DMEM
78 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
79 : SUB  5, 5, 4 ;  Decrement memory offset
80 : LDC   3, 1022(0) ;  Load offset for parameter m into register 3
81 : LD  1, 0(3) ;  Load parameter m value into register 1
82 : ST   1, 0(5) ;  Store parameter into memory
83 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
84 : SUB  5, 5, 4 ;  Decrement memory offset
85 : LDC   3, 1021(0) ;  Load offset for parameter n into register 3
86 : LD  1, 0(3) ;  Load parameter n value into register 1
87 : ST   1, 0(5) ;  Store parameter into memory
88 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
89 : SUB  5, 5, 4 ;  Decrement memory offset
90 : LDC   3, 1021(0) ;  Load offset for parameter n into register 3
91 : LD  1, 0(3) ;  Load parameter n value into register 1
92 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
93 : SUB  5, 5, 4 ;  Decrement memory offset
94 : ST   1, 0(5) ;  Store left expression value into memory
95 : LDC   3, 1022(0) ;  Load offset for parameter m into register 3
96 : LD  1, 0(3) ;  Load parameter m value into register 1
97 : LD   2, 0(5) ;  Load left expression value from memory into register 2
98 : ADD  5, 5, 4 ;  Increment memory offset
99 : DIV  1, 2, 1 ;  Divide left expression by right expression value
100 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
101 : SUB  5, 5, 4 ;  Decrement memory offset
102 : ST   1, 0(5) ;  Store left expression value into memory
103 : LDC  1, 1(0) ;  Load integer-literal value into register 1
104 : LD   2, 0(5) ;  Load left expression value from memory into register 2
105 : ADD  5, 5, 4 ;  Increment memory offset
106 : ADD  1, 2, 1 ;  Add left and right expression values
107 : ST   1, 0(5) ;  Store parameter into memory
108 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
109 : SUB  5, 5, 4 ;  Decrement memory offset
110 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
111 : SUB  5, 5, 4 ;  Decrement memory offset
112 : LDA  7, 149(0) ;  Load address of print_and_continue IMEM block - branch to function
113 : LD   1, 0(5) ;  Load return value from DMEM into register 1
114 : LDC  4, 5(0) ;  Load value of parameters + return value into temporary register 4
115 : ADD  5, 5, 4 ;  Increment memory offset
116 : LDC  5, 1020(0) ;  Store the memory location of main return value
117 : ST   1, 0(5) ;  Store return value of into DMEM
118 : LDC   3, 1019(0) ;  Load offset for parameter m into register 3
119 : LD  1, 0(3) ;  Load parameter m value into register 1
120 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
121 : SUB  5, 5, 4 ;  Decrement memory offset
122 : ST   1, 0(5) ;  Store left expression value into memory
123 : LDC   3, 1019(0) ;  Load offset for parameter m into register 3
124 : LD  1, 0(3) ;  Load parameter m value into register 1
125 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
126 : SUB  5, 5, 4 ;  Decrement memory offset
127 : ST   1, 0(5) ;  Store left expression value into memory
128 : LDC   3, 1018(0) ;  Load offset for parameter n into register 3
129 : LD  1, 0(3) ;  Load parameter n value into register 1
130 : LD   2, 0(5) ;  Load left expression value from memory into register 2
131 : ADD  5, 5, 4 ;  Increment memory offset
132 : DIV  1, 2, 1 ;  Divide left expression by right expression value
133 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
134 : SUB  5, 5, 4 ;  Decrement memory offset
135 : ST   1, 0(5) ;  Store left expression value into memory
136 : LDC   3, 1018(0) ;  Load offset for parameter n into register 3
137 : LD  1, 0(3) ;  Load parameter n value into register 1
138 : LD   2, 0(5) ;  Load left expression value from memory into register 2
139 : ADD  5, 5, 4 ;  Increment memory offset
140 : MUL  1, 2, 1 ;  Multiply left and right expression values
141 : LD   2, 0(5) ;  Load left expression value from memory into register 2
142 : ADD  5, 5, 4 ;  Increment memory offset
143 : SUB  1, 2, 1 ;  Subtract left expression from right expression value
144 : LDC  5, 1017(0) ;  Store the memory location of MOD return value
145 : ST   1, 0(5) ;  Store return value of into DMEM
146 : LDC  3, 1020(0) ;  Load return address for function MOD into register 3
147 : LD   6, 0(3) ;  Load return address into register 6
148 : LDA  7, 0(6) ;  Load return address back into register 7
149 : LDA  6, 154(0) ;  Load return address into R6
150 : ST   6, 0(5) ;  Store current return address into DMEM
151 : LDC   3, 1017(0) ;  Load offset for parameter unit into register 3
152 : LD  1, 0(3) ;  Load parameter unit value into register 1
153 : LDA  7, 13(0) ;  Load address of print IMEM block - branch to function
154 : LDC  5, 1016(0) ;  Store the memory location of print_and_continue return value
155 : ST   1, 0(5) ;  Store return value of into DMEM
156 : LDC  3, 1020(0) ;  Load return address for function print_and_continue into register 3
157 : LD   6, 0(3) ;  Load return address into register 6
158 : LDA  7, 0(6) ;  Load return address back into register 7
159 : LDA  6, 200(0) ;  Load return address into R6
160 : ST   6, 0(5) ;  Store current return address into DMEM
161 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
162 : SUB  5, 5, 4 ;  Decrement memory offset
163 : LDC   3, 1017(0) ;  Load offset for parameter unit into register 3
164 : LD  1, 0(3) ;  Load parameter unit value into register 1
165 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
166 : SUB  5, 5, 4 ;  Decrement memory offset
167 : ST   1, 0(5) ;  Store left expression value into memory
168 : LDC   3, 1019(0) ;  Load offset for parameter m into register 3
169 : LD  1, 0(3) ;  Load parameter m value into register 1
170 : LD   2, 0(5) ;  Load left expression value from memory into register 2
171 : ADD  5, 5, 4 ;  Increment memory offset
172 : MUL  1, 2, 1 ;  Multiply left and right expression values
173 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
174 : SUB  5, 5, 4 ;  Decrement memory offset
175 : ST   1, 0(5) ;  Store left expression value into memory
176 : LDC   3, 1018(0) ;  Load offset for parameter n into register 3
177 : LD  1, 0(3) ;  Load parameter n value into register 1
178 : LD   2, 0(5) ;  Load left expression value from memory into register 2
179 : ADD  5, 5, 4 ;  Increment memory offset
180 : SUB  1, 2, 1 ;  Subtract left expression from right expression value
181 : ST   1, 0(5) ;  Store parameter into memory
182 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
183 : SUB  5, 5, 4 ;  Decrement memory offset
184 : LDC   3, 1018(0) ;  Load offset for parameter n into register 3
185 : LD  1, 0(3) ;  Load parameter n value into register 1
186 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
187 : SUB  5, 5, 4 ;  Decrement memory offset
188 : ST   1, 0(5) ;  Store left expression value into memory
189 : LDC   3, 1017(0) ;  Load offset for parameter unit into register 3
190 : LD  1, 0(3) ;  Load parameter unit value into register 1
191 : LD   2, 0(5) ;  Load left expression value from memory into register 2
192 : ADD  5, 5, 4 ;  Increment memory offset
193 : MUL  1, 2, 1 ;  Multiply left and right expression values
194 : ST   1, 0(5) ;  Store parameter into memory
195 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
196 : SUB  5, 5, 4 ;  Decrement memory offset
197 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
198 : SUB  5, 5, 4 ;  Decrement memory offset
199 : LDA  7, 16(0) ;  Load address of main IMEM block - branch to function
200 : LD   1, 0(5) ;  Load return value from DMEM into register 1
201 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
202 : ADD  5, 5, 4 ;  Increment memory offset
203 : LDC  5, 1016(0) ;  Store the memory location of print_and_continue return value
204 : ST   1, 0(5) ;  Store return value of into DMEM
205 : LDC  3, 1020(0) ;  Load return address for function print_and_continue into register 3
206 : LD   6, 0(3) ;  Load return address into register 6
207 : LDA  7, 0(6) ;  Load return address back into register 7
208 : LDC  5, 1017(0) ;  Store the memory location of main return value
209 : ST   1, 0(5) ;  Store return value of into DMEM
210 : LD   1, 0(5) ;  Load Return Value from DMEM
211 : OUT  1, 0, 0 ;  Output value from register 1.
212 : HALT 0, 0, 0 ;  Terminate program execution.
