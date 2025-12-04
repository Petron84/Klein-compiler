0 : LDA  7, 4(0) ;  Load address of main IMEM block - branch to function
1 :  OUT  1, 0, 0 ;  Hardcoded print function
2 :  LD   6, 0(5) ;  Load return addess from previous function call/stack frame.
3 :  LDA  7, 0(6) ;  Load address of previous function call into register 7.
4 : LDA  6, 19(0) ;  Load return address into R6
5 : ST   6, 0(5) ;  Store current return address into DMEM
6 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
7 : SUB  5, 5, 4 ;  Decrement memory offset
8 : LDC  1, 2(0) ;  Load integer-literal value into register 1
9 : ST   1, 0(5) ;  Store parameter into memory
10 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
11 : SUB  5, 5, 4 ;  Decrement memory offset
12 : LDC  1, 20(0) ;  Load integer-literal value into register 1
13 : ST   1, 0(5) ;  Store parameter into memory
14 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
15 : SUB  5, 5, 4 ;  Decrement memory offset
16 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
17 : SUB  5, 5, 4 ;  Decrement memory offset
18 : LDA  7, 24(0) ;  Load address of sumPrimes IMEM block - branch to function
19 : LD   1, 0(5) ;  Load return value from DMEM into register 1
20 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
21 : ADD  5, 5, 4 ;  Increment memory offset
22 : LDC  5, 1022(0) ;  Store the memory location of main return value
23 : ST   1, 0(5) ;  Store return value of into DMEM
24 : LDC   3, 1021(0) ;  Load offset for parameter b into register 3
25 : LD  1, 0(3) ;  Load parameter b value into register 1
26 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
27 : SUB  5, 5, 4 ;  Decrement memory offset
28 : ST   1, 0(5) ;  Store left expression value into memory
29 : LDC   3, 1022(0) ;  Load offset for parameter a into register 3
30 : LD  1, 0(3) ;  Load parameter a value into register 1
31 : LD   2, 0(5) ;  Load left expression value from memory into register 2
32 : ADD  5, 5, 4 ;  Increment memory offset
33 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for less-than check
34 : JLT  1, 2(7) ;  If Register 1 is negative, then jump to true handling
35 : LDC  1, 0(0) ;  Load false (0) into register 1
36 : LDA  7, 1(7) ;  Jump to end of less-than handling
37 : LDC  1, 1(0) ;  Load true (1) into register 1
38 : JEQ  1, 41(0) ;  If condition is false, skip to ELSE block
39 : LDC  1, 0(0) ;  Load integer-literal value into register 1
40 : LDA  7, 120(0) ;  Skip the ELSE block
41 : LDA  6, 53(0) ;  Load return address into R6
42 : ST   6, 0(5) ;  Store current return address into DMEM
43 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
44 : SUB  5, 5, 4 ;  Decrement memory offset
45 : LDC   3, 1022(0) ;  Load offset for parameter a into register 3
46 : LD  1, 0(3) ;  Load parameter a value into register 1
47 : ST   1, 0(5) ;  Store parameter into memory
48 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
49 : SUB  5, 5, 4 ;  Decrement memory offset
50 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
51 : SUB  5, 5, 4 ;  Decrement memory offset
52 : LDA  7, 125(0) ;  Load address of isPrime IMEM block - branch to function
53 : LD   1, 0(5) ;  Load return value from DMEM into register 1
54 : LDC  4, 3(0) ;  Load value of parameters + return value into temporary register 4
55 : ADD  5, 5, 4 ;  Increment memory offset
56 : JEQ  1, 93(0) ;  If condition is false, skip to ELSE block
57 : LDC   3, 1022(0) ;  Load offset for parameter a into register 3
58 : LD  1, 0(3) ;  Load parameter a value into register 1
59 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
60 : SUB  5, 5, 4 ;  Decrement memory offset
61 : ST   1, 0(5) ;  Store left expression value into memory
62 : LDA  6, 86(0) ;  Load return address into R6
63 : ST   6, 0(5) ;  Store current return address into DMEM
64 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
65 : SUB  5, 5, 4 ;  Decrement memory offset
66 : LDC   3, 1021(0) ;  Load offset for parameter a into register 3
67 : LD  1, 0(3) ;  Load parameter a value into register 1
68 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
69 : SUB  5, 5, 4 ;  Decrement memory offset
70 : ST   1, 0(5) ;  Store left expression value into memory
71 : LDC  1, 1(0) ;  Load integer-literal value into register 1
72 : LD   2, 0(5) ;  Load left expression value from memory into register 2
73 : ADD  5, 5, 4 ;  Increment memory offset
74 : ADD  1, 2, 1 ;  Add left and right expression values
75 : ST   1, 0(5) ;  Store parameter into memory
76 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
77 : SUB  5, 5, 4 ;  Decrement memory offset
78 : LDC   3, 1020(0) ;  Load offset for parameter b into register 3
79 : LD  1, 0(3) ;  Load parameter b value into register 1
80 : ST   1, 0(5) ;  Store parameter into memory
81 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
82 : SUB  5, 5, 4 ;  Decrement memory offset
83 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
84 : SUB  5, 5, 4 ;  Decrement memory offset
85 : LDA  7, 24(0) ;  Load address of sumPrimes IMEM block - branch to function
86 : LD   1, 0(5) ;  Load return value from DMEM into register 1
87 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
88 : ADD  5, 5, 4 ;  Increment memory offset
89 : LD   2, 0(5) ;  Load left expression value from memory into register 2
90 : ADD  5, 5, 4 ;  Increment memory offset
91 : ADD  1, 2, 1 ;  Add left and right expression values
92 : LDA  7, 120(0) ;  Skip the ELSE block
93 : LDA  6, 117(0) ;  Load return address into R6
94 : ST   6, 0(5) ;  Store current return address into DMEM
95 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
96 : SUB  5, 5, 4 ;  Decrement memory offset
97 : LDC   3, 1022(0) ;  Load offset for parameter a into register 3
98 : LD  1, 0(3) ;  Load parameter a value into register 1
99 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
100 : SUB  5, 5, 4 ;  Decrement memory offset
101 : ST   1, 0(5) ;  Store left expression value into memory
102 : LDC  1, 1(0) ;  Load integer-literal value into register 1
103 : LD   2, 0(5) ;  Load left expression value from memory into register 2
104 : ADD  5, 5, 4 ;  Increment memory offset
105 : ADD  1, 2, 1 ;  Add left and right expression values
106 : ST   1, 0(5) ;  Store parameter into memory
107 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
108 : SUB  5, 5, 4 ;  Decrement memory offset
109 : LDC   3, 1021(0) ;  Load offset for parameter b into register 3
110 : LD  1, 0(3) ;  Load parameter b value into register 1
111 : ST   1, 0(5) ;  Store parameter into memory
112 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
113 : SUB  5, 5, 4 ;  Decrement memory offset
114 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
115 : SUB  5, 5, 4 ;  Decrement memory offset
116 : LDA  7, 24(0) ;  Load address of sumPrimes IMEM block - branch to function
117 : LD   1, 0(5) ;  Load return value from DMEM into register 1
118 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
119 : ADD  5, 5, 4 ;  Increment memory offset
120 : LDC  5, 1020(0) ;  Store the memory location of sumPrimes return value
121 : ST   1, 0(5) ;  Store return value of into DMEM
122 : LDC  3, 1023(0) ;  Load return address for function sumPrimes into register 3
123 : LD   6, 0(3) ;  Load return address into register 6
124 : LDA  7, 0(6) ;  Load return address back into register 7
125 : LDC   3, 1022(0) ;  Load offset for parameter n into register 3
126 : LD  1, 0(3) ;  Load parameter n value into register 1
127 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
128 : SUB  5, 5, 4 ;  Decrement memory offset
129 : ST   1, 0(5) ;  Store left expression value into memory
130 : LDC  1, 2(0) ;  Load integer-literal value into register 1
131 : LD   2, 0(5) ;  Load left expression value from memory into register 2
132 : ADD  5, 5, 4 ;  Increment memory offset
133 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for less-than check
134 : JLT  1, 2(7) ;  If Register 1 is negative, then jump to true handling
135 : LDC  1, 0(0) ;  Load false (0) into register 1
136 : LDA  7, 1(7) ;  Jump to end of less-than handling
137 : LDC  1, 1(0) ;  Load true (1) into register 1
138 : JEQ  1, 141(0) ;  If condition is false, skip to ELSE block
139 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
140 : LDA  7, 230(0) ;  Skip the ELSE block
141 : LDC   3, 1022(0) ;  Load offset for parameter n into register 3
142 : LD  1, 0(3) ;  Load parameter n value into register 1
143 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
144 : SUB  5, 5, 4 ;  Decrement memory offset
145 : ST   1, 0(5) ;  Store left expression value into memory
146 : LDC  1, 2(0) ;  Load integer-literal value into register 1
147 : LD   2, 0(5) ;  Load left expression value from memory into register 2
148 : ADD  5, 5, 4 ;  Increment memory offset
149 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for equality check
150 : JEQ  1, 2(7) ;  If Register 1 is 0, then jump to true handling
151 : LDC  1, 0(0) ;  Load false (0) into register 1
152 : LDA  7, 1(7) ;  Jump to end of equality handling
153 : LDC  1, 1(0) ;  Load true (1) into register 1
154 : JEQ  1, 157(0) ;  If condition is false, skip to ELSE block
155 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
156 : LDA  7, 230(0) ;  Skip the ELSE block
157 : LDA  6, 173(0) ;  Load return address into R6
158 : ST   6, 0(5) ;  Store current return address into DMEM
159 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
160 : SUB  5, 5, 4 ;  Decrement memory offset
161 : LDC   3, 1022(0) ;  Load offset for parameter n into register 3
162 : LD  1, 0(3) ;  Load parameter n value into register 1
163 : ST   1, 0(5) ;  Store parameter into memory
164 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
165 : SUB  5, 5, 4 ;  Decrement memory offset
166 : LDC  1, 2(0) ;  Load integer-literal value into register 1
167 : ST   1, 0(5) ;  Store parameter into memory
168 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
169 : SUB  5, 5, 4 ;  Decrement memory offset
170 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
171 : SUB  5, 5, 4 ;  Decrement memory offset
172 : LDA  7, 235(0) ;  Load address of divisible IMEM block - branch to function
173 : LD   1, 0(5) ;  Load return value from DMEM into register 1
174 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
175 : ADD  5, 5, 4 ;  Increment memory offset
176 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
177 : SUB  5, 5, 4 ;  Decrement memory offset
178 : ST   1, 0(5) ;  Store left expression value into memory
179 : LDA  6, 195(0) ;  Load return address into R6
180 : ST   6, 0(5) ;  Store current return address into DMEM
181 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
182 : SUB  5, 5, 4 ;  Decrement memory offset
183 : LDC   3, 1022(0) ;  Load offset for parameter n into register 3
184 : LD  1, 0(3) ;  Load parameter n value into register 1
185 : ST   1, 0(5) ;  Store parameter into memory
186 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
187 : SUB  5, 5, 4 ;  Decrement memory offset
188 : LDC  1, 3(0) ;  Load integer-literal value into register 1
189 : ST   1, 0(5) ;  Store parameter into memory
190 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
191 : SUB  5, 5, 4 ;  Decrement memory offset
192 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
193 : SUB  5, 5, 4 ;  Decrement memory offset
194 : LDA  7, 235(0) ;  Load address of divisible IMEM block - branch to function
195 : LD   1, 0(5) ;  Load return value from DMEM into register 1
196 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
197 : ADD  5, 5, 4 ;  Increment memory offset
198 : LD   2, 0(5) ;  Load left expression value from memory into register 2
199 : ADD  5, 5, 4 ;  Increment memory offset
200 : ADD  1, 2, 1 ;  Compute logical OR for left and right expression values
201 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
202 : SUB  5, 5, 4 ;  Decrement memory offset
203 : ST   1, 0(5) ;  Store left expression value into memory
204 : LDA  6, 220(0) ;  Load return address into R6
205 : ST   6, 0(5) ;  Store current return address into DMEM
206 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
207 : SUB  5, 5, 4 ;  Decrement memory offset
208 : LDC   3, 1022(0) ;  Load offset for parameter n into register 3
209 : LD  1, 0(3) ;  Load parameter n value into register 1
210 : ST   1, 0(5) ;  Store parameter into memory
211 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
212 : SUB  5, 5, 4 ;  Decrement memory offset
213 : LDC  1, 5(0) ;  Load integer-literal value into register 1
214 : ST   1, 0(5) ;  Store parameter into memory
215 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
216 : SUB  5, 5, 4 ;  Decrement memory offset
217 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
218 : SUB  5, 5, 4 ;  Decrement memory offset
219 : LDA  7, 235(0) ;  Load address of divisible IMEM block - branch to function
220 : LD   1, 0(5) ;  Load return value from DMEM into register 1
221 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
222 : ADD  5, 5, 4 ;  Increment memory offset
223 : LD   2, 0(5) ;  Load left expression value from memory into register 2
224 : ADD  5, 5, 4 ;  Increment memory offset
225 : ADD  1, 2, 1 ;  Compute logical OR for left and right expression values
226 : JEQ  1, 229(0) ;  If condition is false, skip to ELSE block
227 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
228 : LDA  7, 230(0) ;  Skip the ELSE block
229 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
230 : LDC  5, 1021(0) ;  Store the memory location of isPrime return value
231 : ST   1, 0(5) ;  Store return value of into DMEM
232 : LDC  3, 1023(0) ;  Load return address for function isPrime into register 3
233 : LD   6, 0(3) ;  Load return address into register 6
234 : LDA  7, 0(6) ;  Load return address back into register 7
235 : LDC   3, 1022(0) ;  Load offset for parameter x into register 3
236 : LD  1, 0(3) ;  Load parameter x value into register 1
237 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
238 : SUB  5, 5, 4 ;  Decrement memory offset
239 : ST   1, 0(5) ;  Store left expression value into memory
240 : LDC   3, 1021(0) ;  Load offset for parameter y into register 3
241 : LD  1, 0(3) ;  Load parameter y value into register 1
242 : LD   2, 0(5) ;  Load left expression value from memory into register 2
243 : ADD  5, 5, 4 ;  Increment memory offset
244 : DIV  1, 2, 1 ;  Divide left expression by right expression value
245 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
246 : SUB  5, 5, 4 ;  Decrement memory offset
247 : ST   1, 0(5) ;  Store left expression value into memory
248 : LDC   3, 1021(0) ;  Load offset for parameter y into register 3
249 : LD  1, 0(3) ;  Load parameter y value into register 1
250 : LD   2, 0(5) ;  Load left expression value from memory into register 2
251 : ADD  5, 5, 4 ;  Increment memory offset
252 : MUL  1, 2, 1 ;  Multiply left and right expression values
253 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
254 : SUB  5, 5, 4 ;  Decrement memory offset
255 : ST   1, 0(5) ;  Store left expression value into memory
256 : LDC   3, 1022(0) ;  Load offset for parameter x into register 3
257 : LD  1, 0(3) ;  Load parameter x value into register 1
258 : LD   2, 0(5) ;  Load left expression value from memory into register 2
259 : ADD  5, 5, 4 ;  Increment memory offset
260 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for equality check
261 : JEQ  1, 2(7) ;  If Register 1 is 0, then jump to true handling
262 : LDC  1, 0(0) ;  Load false (0) into register 1
263 : LDA  7, 1(7) ;  Jump to end of equality handling
264 : LDC  1, 1(0) ;  Load true (1) into register 1
265 : JEQ  1, 268(0) ;  If condition is false, skip to ELSE block
266 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
267 : LDA  7, 269(0) ;  Skip the ELSE block
268 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
269 : LDC  5, 1020(0) ;  Store the memory location of divisible return value
270 : ST   1, 0(5) ;  Store return value of into DMEM
271 : LDC  3, 1023(0) ;  Load return address for function divisible into register 3
272 : LD   6, 0(3) ;  Load return address into register 6
273 : LDA  7, 0(6) ;  Load return address back into register 7
274 : LDC  5, 1022(0) ;  Store the memory location of main return value
275 : ST   1, 0(5) ;  Store return value of into DMEM
276 : LD   1, 0(5) ;  Load Return Value from DMEM
277 : OUT  1, 0, 0 ;  Output value from register 1.
278 : HALT 0, 0, 0 ;  Terminate program execution.
