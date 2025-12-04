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
10 : LDA  6, 51(0) ;  Load return address into R6
11 : ST   6, 0(5) ;  Store current return address into DMEM
12 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
13 : SUB  5, 5, 4 ;  Decrement memory offset
14 : LDC   3, 1022(0) ;  Load offset for parameter n into register 3
15 : LD  1, 0(3) ;  Load parameter n value into register 1
16 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
17 : SUB  5, 5, 4 ;  Decrement memory offset
18 : ST   1, 0(5) ;  Store left expression value into memory
19 : LDC  1, 10(0) ;  Load integer-literal value into register 1
20 : LD   2, 0(5) ;  Load left expression value from memory into register 2
21 : ADD  5, 5, 4 ;  Increment memory offset
22 : DIV  1, 2, 1 ;  Divide left expression by right expression value
23 : ST   1, 0(5) ;  Store parameter into memory
24 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
25 : SUB  5, 5, 4 ;  Decrement memory offset
26 : LDA  6, 42(0) ;  Load return address into R6
27 : ST   6, 0(5) ;  Store current return address into DMEM
28 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
29 : SUB  5, 5, 4 ;  Decrement memory offset
30 : LDC   3, 1022(0) ;  Load offset for parameter n into register 3
31 : LD  1, 0(3) ;  Load parameter n value into register 1
32 : ST   1, 0(5) ;  Store parameter into memory
33 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
34 : SUB  5, 5, 4 ;  Decrement memory offset
35 : LDC  1, 10(0) ;  Load integer-literal value into register 1
36 : ST   1, 0(5) ;  Store parameter into memory
37 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
38 : SUB  5, 5, 4 ;  Decrement memory offset
39 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
40 : SUB  5, 5, 4 ;  Decrement memory offset
41 : LDA  7, 56(0) ;  Load address of MOD IMEM block - branch to function
42 : LD   1, 0(5) ;  Load return value from DMEM into register 1
43 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
44 : ADD  5, 5, 4 ;  Increment memory offset
45 : ST   1, 0(5) ;  Store parameter into memory
46 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
47 : SUB  5, 5, 4 ;  Decrement memory offset
48 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
49 : SUB  5, 5, 4 ;  Decrement memory offset
50 : LDA  7, 198(0) ;  Load address of divisibleByParts IMEM block - branch to function
51 : LD   1, 0(5) ;  Load return value from DMEM into register 1
52 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
53 : ADD  5, 5, 4 ;  Increment memory offset
54 : LDC  5, 1021(0) ;  Store the memory location of main return value
55 : ST   1, 0(5) ;  Store return value of into DMEM
56 : LDC   3, 1020(0) ;  Load offset for parameter m into register 3
57 : LD  1, 0(3) ;  Load parameter m value into register 1
58 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
59 : SUB  5, 5, 4 ;  Decrement memory offset
60 : ST   1, 0(5) ;  Store left expression value into memory
61 : LDC   3, 1020(0) ;  Load offset for parameter m into register 3
62 : LD  1, 0(3) ;  Load parameter m value into register 1
63 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
64 : SUB  5, 5, 4 ;  Decrement memory offset
65 : ST   1, 0(5) ;  Store left expression value into memory
66 : LDC   3, 1019(0) ;  Load offset for parameter n into register 3
67 : LD  1, 0(3) ;  Load parameter n value into register 1
68 : LD   2, 0(5) ;  Load left expression value from memory into register 2
69 : ADD  5, 5, 4 ;  Increment memory offset
70 : DIV  1, 2, 1 ;  Divide left expression by right expression value
71 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
72 : SUB  5, 5, 4 ;  Decrement memory offset
73 : ST   1, 0(5) ;  Store left expression value into memory
74 : LDC   3, 1019(0) ;  Load offset for parameter n into register 3
75 : LD  1, 0(3) ;  Load parameter n value into register 1
76 : LD   2, 0(5) ;  Load left expression value from memory into register 2
77 : ADD  5, 5, 4 ;  Increment memory offset
78 : MUL  1, 2, 1 ;  Multiply left and right expression values
79 : LD   2, 0(5) ;  Load left expression value from memory into register 2
80 : ADD  5, 5, 4 ;  Increment memory offset
81 : SUB  1, 2, 1 ;  Subtract left expression from right expression value
82 : LDC  5, 1018(0) ;  Store the memory location of MOD return value
83 : ST   1, 0(5) ;  Store return value of into DMEM
84 : LDC  3, 1021(0) ;  Load return address for function MOD into register 3
85 : LD   6, 0(3) ;  Load return address into register 6
86 : LDA  7, 0(6) ;  Load return address back into register 7
87 : LDC   3, 1020(0) ;  Load offset for parameter diff into register 3
88 : LD  1, 0(3) ;  Load parameter diff value into register 1
89 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
90 : SUB  5, 5, 4 ;  Decrement memory offset
91 : ST   1, 0(5) ;  Store left expression value into memory
92 : LDC  1, 7(0) ;  Load integer-literal value into register 1
93 : LD   2, 0(5) ;  Load left expression value from memory into register 2
94 : ADD  5, 5, 4 ;  Increment memory offset
95 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for equality check
96 : JEQ  1, 2(7) ;  If Register 1 is 0, then jump to true handling
97 : LDC  1, 0(0) ;  Load false (0) into register 1
98 : LDA  7, 1(7) ;  Jump to end of equality handling
99 : LDC  1, 1(0) ;  Load true (1) into register 1
100 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
101 : SUB  5, 5, 4 ;  Decrement memory offset
102 : ST   1, 0(5) ;  Store left expression value into memory
103 : LDC   3, 1020(0) ;  Load offset for parameter diff into register 3
104 : LD  1, 0(3) ;  Load parameter diff value into register 1
105 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
106 : SUB  5, 5, 4 ;  Decrement memory offset
107 : ST   1, 0(5) ;  Store left expression value into memory
108 : LDC  1, 0(0) ;  Load integer-literal value into register 1
109 : LD   2, 0(5) ;  Load left expression value from memory into register 2
110 : ADD  5, 5, 4 ;  Increment memory offset
111 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for equality check
112 : JEQ  1, 2(7) ;  If Register 1 is 0, then jump to true handling
113 : LDC  1, 0(0) ;  Load false (0) into register 1
114 : LDA  7, 1(7) ;  Jump to end of equality handling
115 : LDC  1, 1(0) ;  Load true (1) into register 1
116 : LD   2, 0(5) ;  Load left expression value from memory into register 2
117 : ADD  5, 5, 4 ;  Increment memory offset
118 : ADD  1, 2, 1 ;  Compute logical OR for left and right expression values
119 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
120 : SUB  5, 5, 4 ;  Decrement memory offset
121 : ST   1, 0(5) ;  Store left expression value into memory
122 : LDC   3, 1020(0) ;  Load offset for parameter diff into register 3
123 : LD  1, 0(3) ;  Load parameter diff value into register 1
124 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
125 : SUB  5, 5, 4 ;  Decrement memory offset
126 : ST   1, 0(5) ;  Store left expression value into memory
127 : LDC  1, 7(0) ;  Load integer-literal value into register 1
128 : SUB  1, 0, 1 ;  Switch sign of value
129 : LD   2, 0(5) ;  Load left expression value from memory into register 2
130 : ADD  5, 5, 4 ;  Increment memory offset
131 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for equality check
132 : JEQ  1, 2(7) ;  If Register 1 is 0, then jump to true handling
133 : LDC  1, 0(0) ;  Load false (0) into register 1
134 : LDA  7, 1(7) ;  Jump to end of equality handling
135 : LDC  1, 1(0) ;  Load true (1) into register 1
136 : LD   2, 0(5) ;  Load left expression value from memory into register 2
137 : ADD  5, 5, 4 ;  Increment memory offset
138 : ADD  1, 2, 1 ;  Compute logical OR for left and right expression values
139 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
140 : SUB  5, 5, 4 ;  Decrement memory offset
141 : ST   1, 0(5) ;  Store left expression value into memory
142 : LDC   3, 1020(0) ;  Load offset for parameter diff into register 3
143 : LD  1, 0(3) ;  Load parameter diff value into register 1
144 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
145 : SUB  5, 5, 4 ;  Decrement memory offset
146 : ST   1, 0(5) ;  Store left expression value into memory
147 : LDC  1, 14(0) ;  Load integer-literal value into register 1
148 : SUB  1, 0, 1 ;  Switch sign of value
149 : LD   2, 0(5) ;  Load left expression value from memory into register 2
150 : ADD  5, 5, 4 ;  Increment memory offset
151 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for equality check
152 : JEQ  1, 2(7) ;  If Register 1 is 0, then jump to true handling
153 : LDC  1, 0(0) ;  Load false (0) into register 1
154 : LDA  7, 1(7) ;  Jump to end of equality handling
155 : LDC  1, 1(0) ;  Load true (1) into register 1
156 : LD   2, 0(5) ;  Load left expression value from memory into register 2
157 : ADD  5, 5, 4 ;  Increment memory offset
158 : ADD  1, 2, 1 ;  Compute logical OR for left and right expression values
159 : JEQ  1, 162(0) ;  If condition is false, skip to ELSE block
160 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
161 : LDA  7, 193(0) ;  Skip the ELSE block
162 : LDC   3, 1020(0) ;  Load offset for parameter diff into register 3
163 : LD  1, 0(3) ;  Load parameter diff value into register 1
164 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
165 : SUB  5, 5, 4 ;  Decrement memory offset
166 : ST   1, 0(5) ;  Store left expression value into memory
167 : LDC  1, 14(0) ;  Load integer-literal value into register 1
168 : LD   2, 0(5) ;  Load left expression value from memory into register 2
169 : ADD  5, 5, 4 ;  Increment memory offset
170 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for less-than check
171 : JLT  1, 2(7) ;  If Register 1 is negative, then jump to true handling
172 : LDC  1, 0(0) ;  Load false (0) into register 1
173 : LDA  7, 1(7) ;  Jump to end of less-than handling
174 : LDC  1, 1(0) ;  Load true (1) into register 1
175 : JEQ  1, 178(0) ;  If condition is false, skip to ELSE block
176 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
177 : LDA  7, 193(0) ;  Skip the ELSE block
178 : LDA  6, 190(0) ;  Load return address into R6
179 : ST   6, 0(5) ;  Store current return address into DMEM
180 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
181 : SUB  5, 5, 4 ;  Decrement memory offset
182 : LDC   3, 1020(0) ;  Load offset for parameter diff into register 3
183 : LD  1, 0(3) ;  Load parameter diff value into register 1
184 : ST   1, 0(5) ;  Store parameter into memory
185 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
186 : SUB  5, 5, 4 ;  Decrement memory offset
187 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
188 : SUB  5, 5, 4 ;  Decrement memory offset
189 : LDA  7, 10(0) ;  Load address of main IMEM block - branch to function
190 : LD   1, 0(5) ;  Load return value from DMEM into register 1
191 : LDC  4, 3(0) ;  Load value of parameters + return value into temporary register 4
192 : ADD  5, 5, 4 ;  Increment memory offset
193 : LDC  5, 1019(0) ;  Store the memory location of divisibleByDifference return value
194 : ST   1, 0(5) ;  Store return value of into DMEM
195 : LDC  3, 1021(0) ;  Load return address for function divisibleByDifference into register 3
196 : LD   6, 0(3) ;  Load return address into register 6
197 : LDA  7, 0(6) ;  Load return address back into register 7
198 : LDA  6, 225(0) ;  Load return address into R6
199 : ST   6, 0(5) ;  Store current return address into DMEM
200 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
201 : SUB  5, 5, 4 ;  Decrement memory offset
202 : LDC   3, 1020(0) ;  Load offset for parameter left into register 3
203 : LD  1, 0(3) ;  Load parameter left value into register 1
204 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
205 : SUB  5, 5, 4 ;  Decrement memory offset
206 : ST   1, 0(5) ;  Store left expression value into memory
207 : LDC   3, 1019(0) ;  Load offset for parameter right into register 3
208 : LD  1, 0(3) ;  Load parameter right value into register 1
209 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
210 : SUB  5, 5, 4 ;  Decrement memory offset
211 : ST   1, 0(5) ;  Store left expression value into memory
212 : LDC  1, 2(0) ;  Load integer-literal value into register 1
213 : LD   2, 0(5) ;  Load left expression value from memory into register 2
214 : ADD  5, 5, 4 ;  Increment memory offset
215 : MUL  1, 2, 1 ;  Multiply left and right expression values
216 : LD   2, 0(5) ;  Load left expression value from memory into register 2
217 : ADD  5, 5, 4 ;  Increment memory offset
218 : SUB  1, 2, 1 ;  Subtract left expression from right expression value
219 : ST   1, 0(5) ;  Store parameter into memory
220 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
221 : SUB  5, 5, 4 ;  Decrement memory offset
222 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
223 : SUB  5, 5, 4 ;  Decrement memory offset
224 : LDA  7, 87(0) ;  Load address of divisibleByDifference IMEM block - branch to function
225 : LD   1, 0(5) ;  Load return value from DMEM into register 1
226 : LDC  4, 3(0) ;  Load value of parameters + return value into temporary register 4
227 : ADD  5, 5, 4 ;  Increment memory offset
228 : LDC  5, 1018(0) ;  Store the memory location of divisibleByParts return value
229 : ST   1, 0(5) ;  Store return value of into DMEM
230 : LDC  3, 1021(0) ;  Load return address for function divisibleByParts into register 3
231 : LD   6, 0(3) ;  Load return address into register 6
232 : LDA  7, 0(6) ;  Load return address back into register 7
233 : LDC  5, 1019(0) ;  Store the memory location of main return value
234 : ST   1, 0(5) ;  Store return value of into DMEM
235 : LD   1, 0(5) ;  Load Return Value from DMEM
236 : OUT  1, 0, 0 ;  Output value from register 1.
237 : HALT 0, 0, 0 ;  Terminate program execution.
