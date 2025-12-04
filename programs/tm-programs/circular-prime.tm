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
10 : LDA  6, 22(0) ;  Load return address into R6
11 : ST   6, 0(5) ;  Store current return address into DMEM
12 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
13 : SUB  5, 5, 4 ;  Decrement memory offset
14 : LDC   3, 1022(0) ;  Load offset for parameter x into register 3
15 : LD  1, 0(3) ;  Load parameter x value into register 1
16 : ST   1, 0(5) ;  Store parameter into memory
17 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
18 : SUB  5, 5, 4 ;  Decrement memory offset
19 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
20 : SUB  5, 5, 4 ;  Decrement memory offset
21 : LDA  7, 759(0) ;  Load address of circularPrimesTo IMEM block - branch to function
22 : LD   1, 0(5) ;  Load return value from DMEM into register 1
23 : LDC  4, 3(0) ;  Load value of parameters + return value into temporary register 4
24 : ADD  5, 5, 4 ;  Increment memory offset
25 : LDC  5, 1021(0) ;  Store the memory location of main return value
26 : ST   1, 0(5) ;  Store return value of into DMEM
27 : LDC   3, 1020(0) ;  Load offset for parameter num into register 3
28 : LD  1, 0(3) ;  Load parameter num value into register 1
29 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
30 : SUB  5, 5, 4 ;  Decrement memory offset
31 : ST   1, 0(5) ;  Store left expression value into memory
32 : LDC   3, 1019(0) ;  Load offset for parameter den into register 3
33 : LD  1, 0(3) ;  Load parameter den value into register 1
34 : LD   2, 0(5) ;  Load left expression value from memory into register 2
35 : ADD  5, 5, 4 ;  Increment memory offset
36 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for less-than check
37 : JLT  1, 2(7) ;  If Register 1 is negative, then jump to true handling
38 : LDC  1, 0(0) ;  Load false (0) into register 1
39 : LDA  7, 1(7) ;  Jump to end of less-than handling
40 : LDC  1, 1(0) ;  Load true (1) into register 1
41 : JEQ  1, 45(0) ;  If condition is false, skip to ELSE block
42 : LDC   3, 1020(0) ;  Load offset for parameter num into register 3
43 : LD  1, 0(3) ;  Load parameter num value into register 1
44 : LDA  7, 73(0) ;  Skip the ELSE block
45 : LDA  6, 70(0) ;  Load return address into R6
46 : ST   6, 0(5) ;  Store current return address into DMEM
47 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
48 : SUB  5, 5, 4 ;  Decrement memory offset
49 : LDC   3, 1020(0) ;  Load offset for parameter num into register 3
50 : LD  1, 0(3) ;  Load parameter num value into register 1
51 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
52 : SUB  5, 5, 4 ;  Decrement memory offset
53 : ST   1, 0(5) ;  Store left expression value into memory
54 : LDC   3, 1019(0) ;  Load offset for parameter den into register 3
55 : LD  1, 0(3) ;  Load parameter den value into register 1
56 : LD   2, 0(5) ;  Load left expression value from memory into register 2
57 : ADD  5, 5, 4 ;  Increment memory offset
58 : SUB  1, 2, 1 ;  Subtract left expression from right expression value
59 : ST   1, 0(5) ;  Store parameter into memory
60 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
61 : SUB  5, 5, 4 ;  Decrement memory offset
62 : LDC   3, 1019(0) ;  Load offset for parameter den into register 3
63 : LD  1, 0(3) ;  Load parameter den value into register 1
64 : ST   1, 0(5) ;  Store parameter into memory
65 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
66 : SUB  5, 5, 4 ;  Decrement memory offset
67 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
68 : SUB  5, 5, 4 ;  Decrement memory offset
69 : LDA  7, 27(0) ;  Load address of mod IMEM block - branch to function
70 : LD   1, 0(5) ;  Load return value from DMEM into register 1
71 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
72 : ADD  5, 5, 4 ;  Increment memory offset
73 : LDC  5, 1018(0) ;  Store the memory location of mod return value
74 : ST   1, 0(5) ;  Store return value of into DMEM
75 : LDC  3, 1021(0) ;  Load return address for function mod into register 3
76 : LD   6, 0(3) ;  Load return address into register 6
77 : LDA  7, 0(6) ;  Load return address back into register 7
78 : LDA  6, 95(0) ;  Load return address into R6
79 : ST   6, 0(5) ;  Store current return address into DMEM
80 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
81 : SUB  5, 5, 4 ;  Decrement memory offset
82 : LDC   3, 1019(0) ;  Load offset for parameter b into register 3
83 : LD  1, 0(3) ;  Load parameter b value into register 1
84 : ST   1, 0(5) ;  Store parameter into memory
85 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
86 : SUB  5, 5, 4 ;  Decrement memory offset
87 : LDC   3, 1020(0) ;  Load offset for parameter a into register 3
88 : LD  1, 0(3) ;  Load parameter a value into register 1
89 : ST   1, 0(5) ;  Store parameter into memory
90 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
91 : SUB  5, 5, 4 ;  Decrement memory offset
92 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
93 : SUB  5, 5, 4 ;  Decrement memory offset
94 : LDA  7, 27(0) ;  Load address of mod IMEM block - branch to function
95 : LD   1, 0(5) ;  Load return value from DMEM into register 1
96 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
97 : ADD  5, 5, 4 ;  Increment memory offset
98 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
99 : SUB  5, 5, 4 ;  Decrement memory offset
100 : ST   1, 0(5) ;  Store left expression value into memory
101 : LDC  1, 0(0) ;  Load integer-literal value into register 1
102 : LD   2, 0(5) ;  Load left expression value from memory into register 2
103 : ADD  5, 5, 4 ;  Increment memory offset
104 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for equality check
105 : JEQ  1, 2(7) ;  If Register 1 is 0, then jump to true handling
106 : LDC  1, 0(0) ;  Load false (0) into register 1
107 : LDA  7, 1(7) ;  Jump to end of equality handling
108 : LDC  1, 1(0) ;  Load true (1) into register 1
109 : LDC  5, 1018(0) ;  Store the memory location of divides return value
110 : ST   1, 0(5) ;  Store return value of into DMEM
111 : LDC  3, 1021(0) ;  Load return address for function divides into register 3
112 : LD   6, 0(3) ;  Load return address into register 6
113 : LDA  7, 0(6) ;  Load return address back into register 7
114 : LDC   3, 1020(0) ;  Load offset for parameter i into register 3
115 : LD  1, 0(3) ;  Load parameter i value into register 1
116 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
117 : SUB  5, 5, 4 ;  Decrement memory offset
118 : ST   1, 0(5) ;  Store left expression value into memory
119 : LDC   3, 1019(0) ;  Load offset for parameter n into register 3
120 : LD  1, 0(3) ;  Load parameter n value into register 1
121 : LD   2, 0(5) ;  Load left expression value from memory into register 2
122 : ADD  5, 5, 4 ;  Increment memory offset
123 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for less-than check
124 : JLT  1, 2(7) ;  If Register 1 is negative, then jump to true handling
125 : LDC  1, 0(0) ;  Load false (0) into register 1
126 : LDA  7, 1(7) ;  Jump to end of less-than handling
127 : LDC  1, 1(0) ;  Load true (1) into register 1
128 : JEQ  1, 183(0) ;  If condition is false, skip to ELSE block
129 : LDA  6, 146(0) ;  Load return address into R6
130 : ST   6, 0(5) ;  Store current return address into DMEM
131 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
132 : SUB  5, 5, 4 ;  Decrement memory offset
133 : LDC   3, 1020(0) ;  Load offset for parameter i into register 3
134 : LD  1, 0(3) ;  Load parameter i value into register 1
135 : ST   1, 0(5) ;  Store parameter into memory
136 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
137 : SUB  5, 5, 4 ;  Decrement memory offset
138 : LDC   3, 1019(0) ;  Load offset for parameter n into register 3
139 : LD  1, 0(3) ;  Load parameter n value into register 1
140 : ST   1, 0(5) ;  Store parameter into memory
141 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
142 : SUB  5, 5, 4 ;  Decrement memory offset
143 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
144 : SUB  5, 5, 4 ;  Decrement memory offset
145 : LDA  7, 78(0) ;  Load address of divides IMEM block - branch to function
146 : LD   1, 0(5) ;  Load return value from DMEM into register 1
147 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
148 : ADD  5, 5, 4 ;  Increment memory offset
149 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
150 : SUB  5, 5, 4 ;  Decrement memory offset
151 : ST   1, 0(5) ;  Store left expression value into memory
152 : LDA  6, 176(0) ;  Load return address into R6
153 : ST   6, 0(5) ;  Store current return address into DMEM
154 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
155 : SUB  5, 5, 4 ;  Decrement memory offset
156 : LDC   3, 1019(0) ;  Load offset for parameter i into register 3
157 : LD  1, 0(3) ;  Load parameter i value into register 1
158 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
159 : SUB  5, 5, 4 ;  Decrement memory offset
160 : ST   1, 0(5) ;  Store left expression value into memory
161 : LDC  1, 1(0) ;  Load integer-literal value into register 1
162 : LD   2, 0(5) ;  Load left expression value from memory into register 2
163 : ADD  5, 5, 4 ;  Increment memory offset
164 : ADD  1, 2, 1 ;  Add left and right expression values
165 : ST   1, 0(5) ;  Store parameter into memory
166 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
167 : SUB  5, 5, 4 ;  Decrement memory offset
168 : LDC   3, 1018(0) ;  Load offset for parameter n into register 3
169 : LD  1, 0(3) ;  Load parameter n value into register 1
170 : ST   1, 0(5) ;  Store parameter into memory
171 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
172 : SUB  5, 5, 4 ;  Decrement memory offset
173 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
174 : SUB  5, 5, 4 ;  Decrement memory offset
175 : LDA  7, 114(0) ;  Load address of hasDivisorFrom IMEM block - branch to function
176 : LD   1, 0(5) ;  Load return value from DMEM into register 1
177 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
178 : ADD  5, 5, 4 ;  Increment memory offset
179 : LD   2, 0(5) ;  Load left expression value from memory into register 2
180 : ADD  5, 5, 4 ;  Increment memory offset
181 : ADD  1, 2, 1 ;  Compute logical OR for left and right expression values
182 : LDA  7, 184(0) ;  Skip the ELSE block
183 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
184 : LDC  5, 1017(0) ;  Store the memory location of hasDivisorFrom return value
185 : ST   1, 0(5) ;  Store return value of into DMEM
186 : LDC  3, 1020(0) ;  Load return address for function hasDivisorFrom into register 3
187 : LD   6, 0(3) ;  Load return address into register 6
188 : LDA  7, 0(6) ;  Load return address back into register 7
189 : LDA  6, 205(0) ;  Load return address into R6
190 : ST   6, 0(5) ;  Store current return address into DMEM
191 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
192 : SUB  5, 5, 4 ;  Decrement memory offset
193 : LDC  1, 2(0) ;  Load integer-literal value into register 1
194 : ST   1, 0(5) ;  Store parameter into memory
195 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
196 : SUB  5, 5, 4 ;  Decrement memory offset
197 : LDC   3, 1020(0) ;  Load offset for parameter n into register 3
198 : LD  1, 0(3) ;  Load parameter n value into register 1
199 : ST   1, 0(5) ;  Store parameter into memory
200 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
201 : SUB  5, 5, 4 ;  Decrement memory offset
202 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
203 : SUB  5, 5, 4 ;  Decrement memory offset
204 : LDA  7, 114(0) ;  Load address of hasDivisorFrom IMEM block - branch to function
205 : LD   1, 0(5) ;  Load return value from DMEM into register 1
206 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
207 : ADD  5, 5, 4 ;  Increment memory offset
208 : LDC  2, 1(0) ;  Load value 1 into register 2
209 : SUB  1, 2, 1 ;  Flip boolean value
210 : LDC  5, 1019(0) ;  Store the memory location of isPrime return value
211 : ST   1, 0(5) ;  Store return value of into DMEM
212 : LDC  3, 1021(0) ;  Load return address for function isPrime into register 3
213 : LD   6, 0(3) ;  Load return address into register 6
214 : LDA  7, 0(6) ;  Load return address back into register 7
215 : LDC   3, 1020(0) ;  Load offset for parameter x into register 3
216 : LD  1, 0(3) ;  Load parameter x value into register 1
217 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
218 : SUB  5, 5, 4 ;  Decrement memory offset
219 : ST   1, 0(5) ;  Store left expression value into memory
220 : LDC  1, 10(0) ;  Load integer-literal value into register 1
221 : LD   2, 0(5) ;  Load left expression value from memory into register 2
222 : ADD  5, 5, 4 ;  Increment memory offset
223 : DIV  1, 2, 1 ;  Divide left expression by right expression value
224 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
225 : SUB  5, 5, 4 ;  Decrement memory offset
226 : ST   1, 0(5) ;  Store left expression value into memory
227 : LDC  1, 0(0) ;  Load integer-literal value into register 1
228 : LD   2, 0(5) ;  Load left expression value from memory into register 2
229 : ADD  5, 5, 4 ;  Increment memory offset
230 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for equality check
231 : JEQ  1, 2(7) ;  If Register 1 is 0, then jump to true handling
232 : LDC  1, 0(0) ;  Load false (0) into register 1
233 : LDA  7, 1(7) ;  Jump to end of equality handling
234 : LDC  1, 1(0) ;  Load true (1) into register 1
235 : JEQ  1, 239(0) ;  If condition is false, skip to ELSE block
236 : LDC   3, 1019(0) ;  Load offset for parameter y into register 3
237 : LD  1, 0(3) ;  Load parameter y value into register 1
238 : LDA  7, 273(0) ;  Skip the ELSE block
239 : LDA  6, 270(0) ;  Load return address into R6
240 : ST   6, 0(5) ;  Store current return address into DMEM
241 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
242 : SUB  5, 5, 4 ;  Decrement memory offset
243 : LDC   3, 1020(0) ;  Load offset for parameter x into register 3
244 : LD  1, 0(3) ;  Load parameter x value into register 1
245 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
246 : SUB  5, 5, 4 ;  Decrement memory offset
247 : ST   1, 0(5) ;  Store left expression value into memory
248 : LDC  1, 10(0) ;  Load integer-literal value into register 1
249 : LD   2, 0(5) ;  Load left expression value from memory into register 2
250 : ADD  5, 5, 4 ;  Increment memory offset
251 : DIV  1, 2, 1 ;  Divide left expression by right expression value
252 : ST   1, 0(5) ;  Store parameter into memory
253 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
254 : SUB  5, 5, 4 ;  Decrement memory offset
255 : LDC   3, 1019(0) ;  Load offset for parameter y into register 3
256 : LD  1, 0(3) ;  Load parameter y value into register 1
257 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
258 : SUB  5, 5, 4 ;  Decrement memory offset
259 : ST   1, 0(5) ;  Store left expression value into memory
260 : LDC  1, 1(0) ;  Load integer-literal value into register 1
261 : LD   2, 0(5) ;  Load left expression value from memory into register 2
262 : ADD  5, 5, 4 ;  Increment memory offset
263 : ADD  1, 2, 1 ;  Add left and right expression values
264 : ST   1, 0(5) ;  Store parameter into memory
265 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
266 : SUB  5, 5, 4 ;  Decrement memory offset
267 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
268 : SUB  5, 5, 4 ;  Decrement memory offset
269 : LDA  7, 215(0) ;  Load address of log10Helper IMEM block - branch to function
270 : LD   1, 0(5) ;  Load return value from DMEM into register 1
271 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
272 : ADD  5, 5, 4 ;  Increment memory offset
273 : LDC  5, 1018(0) ;  Store the memory location of log10Helper return value
274 : ST   1, 0(5) ;  Store return value of into DMEM
275 : LDC  3, 1021(0) ;  Load return address for function log10Helper into register 3
276 : LD   6, 0(3) ;  Load return address into register 6
277 : LDA  7, 0(6) ;  Load return address back into register 7
278 : LDA  6, 294(0) ;  Load return address into R6
279 : ST   6, 0(5) ;  Store current return address into DMEM
280 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
281 : SUB  5, 5, 4 ;  Decrement memory offset
282 : LDC   3, 1020(0) ;  Load offset for parameter x into register 3
283 : LD  1, 0(3) ;  Load parameter x value into register 1
284 : ST   1, 0(5) ;  Store parameter into memory
285 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
286 : SUB  5, 5, 4 ;  Decrement memory offset
287 : LDC  1, 0(0) ;  Load integer-literal value into register 1
288 : ST   1, 0(5) ;  Store parameter into memory
289 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
290 : SUB  5, 5, 4 ;  Decrement memory offset
291 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
292 : SUB  5, 5, 4 ;  Decrement memory offset
293 : LDA  7, 215(0) ;  Load address of log10Helper IMEM block - branch to function
294 : LD   1, 0(5) ;  Load return value from DMEM into register 1
295 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
296 : ADD  5, 5, 4 ;  Increment memory offset
297 : LDC  5, 1019(0) ;  Store the memory location of log10 return value
298 : ST   1, 0(5) ;  Store return value of into DMEM
299 : LDC  3, 1021(0) ;  Load return address for function log10 into register 3
300 : LD   6, 0(3) ;  Load return address into register 6
301 : LDA  7, 0(6) ;  Load return address back into register 7
302 : LDC   3, 1019(0) ;  Load offset for parameter power into register 3
303 : LD  1, 0(3) ;  Load parameter power value into register 1
304 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
305 : SUB  5, 5, 4 ;  Decrement memory offset
306 : ST   1, 0(5) ;  Store left expression value into memory
307 : LDC  1, 0(0) ;  Load integer-literal value into register 1
308 : LD   2, 0(5) ;  Load left expression value from memory into register 2
309 : ADD  5, 5, 4 ;  Increment memory offset
310 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for equality check
311 : JEQ  1, 2(7) ;  If Register 1 is 0, then jump to true handling
312 : LDC  1, 0(0) ;  Load false (0) into register 1
313 : LDA  7, 1(7) ;  Jump to end of equality handling
314 : LDC  1, 1(0) ;  Load true (1) into register 1
315 : JEQ  1, 318(0) ;  If condition is false, skip to ELSE block
316 : LDC  1, 1(0) ;  Load integer-literal value into register 1
317 : LDA  7, 375(0) ;  Skip the ELSE block
318 : LDC   3, 1019(0) ;  Load offset for parameter power into register 3
319 : LD  1, 0(3) ;  Load parameter power value into register 1
320 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
321 : SUB  5, 5, 4 ;  Decrement memory offset
322 : ST   1, 0(5) ;  Store left expression value into memory
323 : LDC  1, 1(0) ;  Load integer-literal value into register 1
324 : LD   2, 0(5) ;  Load left expression value from memory into register 2
325 : ADD  5, 5, 4 ;  Increment memory offset
326 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for equality check
327 : JEQ  1, 2(7) ;  If Register 1 is 0, then jump to true handling
328 : LDC  1, 0(0) ;  Load false (0) into register 1
329 : LDA  7, 1(7) ;  Jump to end of equality handling
330 : LDC  1, 1(0) ;  Load true (1) into register 1
331 : JEQ  1, 335(0) ;  If condition is false, skip to ELSE block
332 : LDC   3, 1018(0) ;  Load offset for parameter total into register 3
333 : LD  1, 0(3) ;  Load parameter total value into register 1
334 : LDA  7, 375(0) ;  Skip the ELSE block
335 : LDA  6, 372(0) ;  Load return address into R6
336 : ST   6, 0(5) ;  Store current return address into DMEM
337 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
338 : SUB  5, 5, 4 ;  Decrement memory offset
339 : LDC   3, 1020(0) ;  Load offset for parameter base into register 3
340 : LD  1, 0(3) ;  Load parameter base value into register 1
341 : ST   1, 0(5) ;  Store parameter into memory
342 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
343 : SUB  5, 5, 4 ;  Decrement memory offset
344 : LDC   3, 1019(0) ;  Load offset for parameter power into register 3
345 : LD  1, 0(3) ;  Load parameter power value into register 1
346 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
347 : SUB  5, 5, 4 ;  Decrement memory offset
348 : ST   1, 0(5) ;  Store left expression value into memory
349 : LDC  1, 1(0) ;  Load integer-literal value into register 1
350 : LD   2, 0(5) ;  Load left expression value from memory into register 2
351 : ADD  5, 5, 4 ;  Increment memory offset
352 : SUB  1, 2, 1 ;  Subtract left expression from right expression value
353 : ST   1, 0(5) ;  Store parameter into memory
354 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
355 : SUB  5, 5, 4 ;  Decrement memory offset
356 : LDC   3, 1020(0) ;  Load offset for parameter base into register 3
357 : LD  1, 0(3) ;  Load parameter base value into register 1
358 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
359 : SUB  5, 5, 4 ;  Decrement memory offset
360 : ST   1, 0(5) ;  Store left expression value into memory
361 : LDC   3, 1018(0) ;  Load offset for parameter total into register 3
362 : LD  1, 0(3) ;  Load parameter total value into register 1
363 : LD   2, 0(5) ;  Load left expression value from memory into register 2
364 : ADD  5, 5, 4 ;  Increment memory offset
365 : MUL  1, 2, 1 ;  Multiply left and right expression values
366 : ST   1, 0(5) ;  Store parameter into memory
367 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
368 : SUB  5, 5, 4 ;  Decrement memory offset
369 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
370 : SUB  5, 5, 4 ;  Decrement memory offset
371 : LDA  7, 302(0) ;  Load address of powHelper IMEM block - branch to function
372 : LD   1, 0(5) ;  Load return value from DMEM into register 1
373 : LDC  4, 5(0) ;  Load value of parameters + return value into temporary register 4
374 : ADD  5, 5, 4 ;  Increment memory offset
375 : LDC  5, 1017(0) ;  Store the memory location of powHelper return value
376 : ST   1, 0(5) ;  Store return value of into DMEM
377 : LDC  3, 1021(0) ;  Load return address for function powHelper into register 3
378 : LD   6, 0(3) ;  Load return address into register 6
379 : LDA  7, 0(6) ;  Load return address back into register 7
380 : LDA  6, 402(0) ;  Load return address into R6
381 : ST   6, 0(5) ;  Store current return address into DMEM
382 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
383 : SUB  5, 5, 4 ;  Decrement memory offset
384 : LDC   3, 1020(0) ;  Load offset for parameter x into register 3
385 : LD  1, 0(3) ;  Load parameter x value into register 1
386 : ST   1, 0(5) ;  Store parameter into memory
387 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
388 : SUB  5, 5, 4 ;  Decrement memory offset
389 : LDC   3, 1019(0) ;  Load offset for parameter y into register 3
390 : LD  1, 0(3) ;  Load parameter y value into register 1
391 : ST   1, 0(5) ;  Store parameter into memory
392 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
393 : SUB  5, 5, 4 ;  Decrement memory offset
394 : LDC   3, 1020(0) ;  Load offset for parameter x into register 3
395 : LD  1, 0(3) ;  Load parameter x value into register 1
396 : ST   1, 0(5) ;  Store parameter into memory
397 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
398 : SUB  5, 5, 4 ;  Decrement memory offset
399 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
400 : SUB  5, 5, 4 ;  Decrement memory offset
401 : LDA  7, 302(0) ;  Load address of powHelper IMEM block - branch to function
402 : LD   1, 0(5) ;  Load return value from DMEM into register 1
403 : LDC  4, 5(0) ;  Load value of parameters + return value into temporary register 4
404 : ADD  5, 5, 4 ;  Increment memory offset
405 : LDC  5, 1018(0) ;  Store the memory location of pow return value
406 : ST   1, 0(5) ;  Store return value of into DMEM
407 : LDC  3, 1021(0) ;  Load return address for function pow into register 3
408 : LD   6, 0(3) ;  Load return address into register 6
409 : LDA  7, 0(6) ;  Load return address back into register 7
410 : LDC   3, 1020(0) ;  Load offset for parameter x into register 3
411 : LD  1, 0(3) ;  Load parameter x value into register 1
412 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
413 : SUB  5, 5, 4 ;  Decrement memory offset
414 : ST   1, 0(5) ;  Store left expression value into memory
415 : LDC  1, 10(0) ;  Load integer-literal value into register 1
416 : LD   2, 0(5) ;  Load left expression value from memory into register 2
417 : ADD  5, 5, 4 ;  Increment memory offset
418 : DIV  1, 2, 1 ;  Divide left expression by right expression value
419 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
420 : SUB  5, 5, 4 ;  Decrement memory offset
421 : ST   1, 0(5) ;  Store left expression value into memory
422 : LDA  6, 438(0) ;  Load return address into R6
423 : ST   6, 0(5) ;  Store current return address into DMEM
424 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
425 : SUB  5, 5, 4 ;  Decrement memory offset
426 : LDC   3, 1020(0) ;  Load offset for parameter x into register 3
427 : LD  1, 0(3) ;  Load parameter x value into register 1
428 : ST   1, 0(5) ;  Store parameter into memory
429 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
430 : SUB  5, 5, 4 ;  Decrement memory offset
431 : LDC  1, 10(0) ;  Load integer-literal value into register 1
432 : ST   1, 0(5) ;  Store parameter into memory
433 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
434 : SUB  5, 5, 4 ;  Decrement memory offset
435 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
436 : SUB  5, 5, 4 ;  Decrement memory offset
437 : LDA  7, 27(0) ;  Load address of mod IMEM block - branch to function
438 : LD   1, 0(5) ;  Load return value from DMEM into register 1
439 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
440 : ADD  5, 5, 4 ;  Increment memory offset
441 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
442 : SUB  5, 5, 4 ;  Decrement memory offset
443 : ST   1, 0(5) ;  Store left expression value into memory
444 : LDA  6, 473(0) ;  Load return address into R6
445 : ST   6, 0(5) ;  Store current return address into DMEM
446 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
447 : SUB  5, 5, 4 ;  Decrement memory offset
448 : LDC  1, 10(0) ;  Load integer-literal value into register 1
449 : ST   1, 0(5) ;  Store parameter into memory
450 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
451 : SUB  5, 5, 4 ;  Decrement memory offset
452 : LDA  6, 464(0) ;  Load return address into R6
453 : ST   6, 0(5) ;  Store current return address into DMEM
454 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
455 : SUB  5, 5, 4 ;  Decrement memory offset
456 : LDC   3, 1020(0) ;  Load offset for parameter x into register 3
457 : LD  1, 0(3) ;  Load parameter x value into register 1
458 : ST   1, 0(5) ;  Store parameter into memory
459 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
460 : SUB  5, 5, 4 ;  Decrement memory offset
461 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
462 : SUB  5, 5, 4 ;  Decrement memory offset
463 : LDA  7, 278(0) ;  Load address of log10 IMEM block - branch to function
464 : LD   1, 0(5) ;  Load return value from DMEM into register 1
465 : LDC  4, 3(0) ;  Load value of parameters + return value into temporary register 4
466 : ADD  5, 5, 4 ;  Increment memory offset
467 : ST   1, 0(5) ;  Store parameter into memory
468 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
469 : SUB  5, 5, 4 ;  Decrement memory offset
470 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
471 : SUB  5, 5, 4 ;  Decrement memory offset
472 : LDA  7, 380(0) ;  Load address of pow IMEM block - branch to function
473 : LD   1, 0(5) ;  Load return value from DMEM into register 1
474 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
475 : ADD  5, 5, 4 ;  Increment memory offset
476 : LD   2, 0(5) ;  Load left expression value from memory into register 2
477 : ADD  5, 5, 4 ;  Increment memory offset
478 : MUL  1, 2, 1 ;  Multiply left and right expression values
479 : LD   2, 0(5) ;  Load left expression value from memory into register 2
480 : ADD  5, 5, 4 ;  Increment memory offset
481 : ADD  1, 2, 1 ;  Add left and right expression values
482 : LDC  5, 1019(0) ;  Store the memory location of rotate return value
483 : ST   1, 0(5) ;  Store return value of into DMEM
484 : LDC  3, 1021(0) ;  Load return address for function rotate into register 3
485 : LD   6, 0(3) ;  Load return address into register 6
486 : LDA  7, 0(6) ;  Load return address back into register 7
487 : LDA  6, 492(0) ;  Load return address into R6
488 : ST   6, 0(5) ;  Store current return address into DMEM
489 : LDC   3, 1020(0) ;  Load offset for parameter x into register 3
490 : LD  1, 0(3) ;  Load parameter x value into register 1
491 : LDA  7, 7(0) ;  Load address of print IMEM block - branch to function
492 : LDC  5, 1019(0) ;  Store the memory location of report return value
493 : ST   1, 0(5) ;  Store return value of into DMEM
494 : LDC  3, 1021(0) ;  Load return address for function report into register 3
495 : LD   6, 0(3) ;  Load return address into register 6
496 : LDA  7, 0(6) ;  Load return address back into register 7
497 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
498 : LDC  5, 1019(0) ;  Store the memory location of report return value
499 : ST   1, 0(5) ;  Store return value of into DMEM
500 : LDC  3, 1021(0) ;  Load return address for function report into register 3
501 : LD   6, 0(3) ;  Load return address into register 6
502 : LDA  7, 0(6) ;  Load return address back into register 7
503 : LDC   3, 1019(0) ;  Load offset for parameter turns into register 3
504 : LD  1, 0(3) ;  Load parameter turns value into register 1
505 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
506 : SUB  5, 5, 4 ;  Decrement memory offset
507 : ST   1, 0(5) ;  Store left expression value into memory
508 : LDC  1, 0(0) ;  Load integer-literal value into register 1
509 : LD   2, 0(5) ;  Load left expression value from memory into register 2
510 : ADD  5, 5, 4 ;  Increment memory offset
511 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for equality check
512 : JEQ  1, 2(7) ;  If Register 1 is 0, then jump to true handling
513 : LDC  1, 0(0) ;  Load false (0) into register 1
514 : LDA  7, 1(7) ;  Jump to end of equality handling
515 : LDC  1, 1(0) ;  Load true (1) into register 1
516 : JEQ  1, 519(0) ;  If condition is false, skip to ELSE block
517 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
518 : LDA  7, 580(0) ;  Skip the ELSE block
519 : LDA  6, 531(0) ;  Load return address into R6
520 : ST   6, 0(5) ;  Store current return address into DMEM
521 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
522 : SUB  5, 5, 4 ;  Decrement memory offset
523 : LDC   3, 1020(0) ;  Load offset for parameter x into register 3
524 : LD  1, 0(3) ;  Load parameter x value into register 1
525 : ST   1, 0(5) ;  Store parameter into memory
526 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
527 : SUB  5, 5, 4 ;  Decrement memory offset
528 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
529 : SUB  5, 5, 4 ;  Decrement memory offset
530 : LDA  7, 189(0) ;  Load address of isPrime IMEM block - branch to function
531 : LD   1, 0(5) ;  Load return value from DMEM into register 1
532 : LDC  4, 3(0) ;  Load value of parameters + return value into temporary register 4
533 : ADD  5, 5, 4 ;  Increment memory offset
534 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
535 : SUB  5, 5, 4 ;  Decrement memory offset
536 : ST   1, 0(5) ;  Store left expression value into memory
537 : LDA  6, 574(0) ;  Load return address into R6
538 : ST   6, 0(5) ;  Store current return address into DMEM
539 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
540 : SUB  5, 5, 4 ;  Decrement memory offset
541 : LDA  6, 553(0) ;  Load return address into R6
542 : ST   6, 0(5) ;  Store current return address into DMEM
543 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
544 : SUB  5, 5, 4 ;  Decrement memory offset
545 : LDC   3, 1019(0) ;  Load offset for parameter x into register 3
546 : LD  1, 0(3) ;  Load parameter x value into register 1
547 : ST   1, 0(5) ;  Store parameter into memory
548 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
549 : SUB  5, 5, 4 ;  Decrement memory offset
550 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
551 : SUB  5, 5, 4 ;  Decrement memory offset
552 : LDA  7, 410(0) ;  Load address of rotate IMEM block - branch to function
553 : LD   1, 0(5) ;  Load return value from DMEM into register 1
554 : LDC  4, 3(0) ;  Load value of parameters + return value into temporary register 4
555 : ADD  5, 5, 4 ;  Increment memory offset
556 : ST   1, 0(5) ;  Store parameter into memory
557 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
558 : SUB  5, 5, 4 ;  Decrement memory offset
559 : LDC   3, 1018(0) ;  Load offset for parameter turns into register 3
560 : LD  1, 0(3) ;  Load parameter turns value into register 1
561 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
562 : SUB  5, 5, 4 ;  Decrement memory offset
563 : ST   1, 0(5) ;  Store left expression value into memory
564 : LDC  1, 1(0) ;  Load integer-literal value into register 1
565 : LD   2, 0(5) ;  Load left expression value from memory into register 2
566 : ADD  5, 5, 4 ;  Increment memory offset
567 : SUB  1, 2, 1 ;  Subtract left expression from right expression value
568 : ST   1, 0(5) ;  Store parameter into memory
569 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
570 : SUB  5, 5, 4 ;  Decrement memory offset
571 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
572 : SUB  5, 5, 4 ;  Decrement memory offset
573 : LDA  7, 503(0) ;  Load address of isCircularPrimeHelper IMEM block - branch to function
574 : LD   1, 0(5) ;  Load return value from DMEM into register 1
575 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
576 : ADD  5, 5, 4 ;  Increment memory offset
577 : LD   2, 0(5) ;  Load left expression value from memory into register 2
578 : ADD  5, 5, 4 ;  Increment memory offset
579 : MUL  1, 2, 1 ;  Compute logical AND for left and right expression values
580 : LDC  5, 1017(0) ;  Store the memory location of isCircularPrimeHelper return value
581 : ST   1, 0(5) ;  Store return value of into DMEM
582 : LDC  3, 1020(0) ;  Load return address for function isCircularPrimeHelper into register 3
583 : LD   6, 0(3) ;  Load return address into register 6
584 : LDA  7, 0(6) ;  Load return address back into register 7
585 : LDA  6, 622(0) ;  Load return address into R6
586 : ST   6, 0(5) ;  Store current return address into DMEM
587 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
588 : SUB  5, 5, 4 ;  Decrement memory offset
589 : LDC   3, 1020(0) ;  Load offset for parameter x into register 3
590 : LD  1, 0(3) ;  Load parameter x value into register 1
591 : ST   1, 0(5) ;  Store parameter into memory
592 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
593 : SUB  5, 5, 4 ;  Decrement memory offset
594 : LDA  6, 606(0) ;  Load return address into R6
595 : ST   6, 0(5) ;  Store current return address into DMEM
596 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
597 : SUB  5, 5, 4 ;  Decrement memory offset
598 : LDC   3, 1020(0) ;  Load offset for parameter x into register 3
599 : LD  1, 0(3) ;  Load parameter x value into register 1
600 : ST   1, 0(5) ;  Store parameter into memory
601 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
602 : SUB  5, 5, 4 ;  Decrement memory offset
603 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
604 : SUB  5, 5, 4 ;  Decrement memory offset
605 : LDA  7, 278(0) ;  Load address of log10 IMEM block - branch to function
606 : LD   1, 0(5) ;  Load return value from DMEM into register 1
607 : LDC  4, 3(0) ;  Load value of parameters + return value into temporary register 4
608 : ADD  5, 5, 4 ;  Increment memory offset
609 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
610 : SUB  5, 5, 4 ;  Decrement memory offset
611 : ST   1, 0(5) ;  Store left expression value into memory
612 : LDC  1, 1(0) ;  Load integer-literal value into register 1
613 : LD   2, 0(5) ;  Load left expression value from memory into register 2
614 : ADD  5, 5, 4 ;  Increment memory offset
615 : ADD  1, 2, 1 ;  Add left and right expression values
616 : ST   1, 0(5) ;  Store parameter into memory
617 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
618 : SUB  5, 5, 4 ;  Decrement memory offset
619 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
620 : SUB  5, 5, 4 ;  Decrement memory offset
621 : LDA  7, 503(0) ;  Load address of isCircularPrimeHelper IMEM block - branch to function
622 : LD   1, 0(5) ;  Load return value from DMEM into register 1
623 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
624 : ADD  5, 5, 4 ;  Increment memory offset
625 : JEQ  1, 642(0) ;  If condition is false, skip to ELSE block
626 : LDA  6, 638(0) ;  Load return address into R6
627 : ST   6, 0(5) ;  Store current return address into DMEM
628 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
629 : SUB  5, 5, 4 ;  Decrement memory offset
630 : LDC   3, 1020(0) ;  Load offset for parameter x into register 3
631 : LD  1, 0(3) ;  Load parameter x value into register 1
632 : ST   1, 0(5) ;  Store parameter into memory
633 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
634 : SUB  5, 5, 4 ;  Decrement memory offset
635 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
636 : SUB  5, 5, 4 ;  Decrement memory offset
637 : LDA  7, 487(0) ;  Load address of report IMEM block - branch to function
638 : LD   1, 0(5) ;  Load return value from DMEM into register 1
639 : LDC  4, 3(0) ;  Load value of parameters + return value into temporary register 4
640 : ADD  5, 5, 4 ;  Increment memory offset
641 : LDA  7, 643(0) ;  Skip the ELSE block
642 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
643 : LDC  5, 1019(0) ;  Store the memory location of isCircularPrime return value
644 : ST   1, 0(5) ;  Store return value of into DMEM
645 : LDC  3, 1021(0) ;  Load return address for function isCircularPrime into register 3
646 : LD   6, 0(3) ;  Load return address into register 6
647 : LDA  7, 0(6) ;  Load return address back into register 7
648 : LDC   3, 1019(0) ;  Load offset for parameter x into register 3
649 : LD  1, 0(3) ;  Load parameter x value into register 1
650 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
651 : SUB  5, 5, 4 ;  Decrement memory offset
652 : ST   1, 0(5) ;  Store left expression value into memory
653 : LDC   3, 1020(0) ;  Load offset for parameter top into register 3
654 : LD  1, 0(3) ;  Load parameter top value into register 1
655 : LD   2, 0(5) ;  Load left expression value from memory into register 2
656 : ADD  5, 5, 4 ;  Increment memory offset
657 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for less-than check
658 : JLT  1, 2(7) ;  If Register 1 is negative, then jump to true handling
659 : LDC  1, 0(0) ;  Load false (0) into register 1
660 : LDA  7, 1(7) ;  Jump to end of less-than handling
661 : LDC  1, 1(0) ;  Load true (1) into register 1
662 : JEQ  1, 752(0) ;  If condition is false, skip to ELSE block
663 : LDA  6, 675(0) ;  Load return address into R6
664 : ST   6, 0(5) ;  Store current return address into DMEM
665 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
666 : SUB  5, 5, 4 ;  Decrement memory offset
667 : LDC   3, 1019(0) ;  Load offset for parameter x into register 3
668 : LD  1, 0(3) ;  Load parameter x value into register 1
669 : ST   1, 0(5) ;  Store parameter into memory
670 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
671 : SUB  5, 5, 4 ;  Decrement memory offset
672 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
673 : SUB  5, 5, 4 ;  Decrement memory offset
674 : LDA  7, 585(0) ;  Load address of isCircularPrime IMEM block - branch to function
675 : LD   1, 0(5) ;  Load return value from DMEM into register 1
676 : LDC  4, 3(0) ;  Load value of parameters + return value into temporary register 4
677 : ADD  5, 5, 4 ;  Increment memory offset
678 : JEQ  1, 719(0) ;  If condition is false, skip to ELSE block
679 : LDA  6, 715(0) ;  Load return address into R6
680 : ST   6, 0(5) ;  Store current return address into DMEM
681 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
682 : SUB  5, 5, 4 ;  Decrement memory offset
683 : LDC   3, 1020(0) ;  Load offset for parameter top into register 3
684 : LD  1, 0(3) ;  Load parameter top value into register 1
685 : ST   1, 0(5) ;  Store parameter into memory
686 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
687 : SUB  5, 5, 4 ;  Decrement memory offset
688 : LDC   3, 1019(0) ;  Load offset for parameter x into register 3
689 : LD  1, 0(3) ;  Load parameter x value into register 1
690 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
691 : SUB  5, 5, 4 ;  Decrement memory offset
692 : ST   1, 0(5) ;  Store left expression value into memory
693 : LDC  1, 1(0) ;  Load integer-literal value into register 1
694 : LD   2, 0(5) ;  Load left expression value from memory into register 2
695 : ADD  5, 5, 4 ;  Increment memory offset
696 : ADD  1, 2, 1 ;  Add left and right expression values
697 : ST   1, 0(5) ;  Store parameter into memory
698 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
699 : SUB  5, 5, 4 ;  Decrement memory offset
700 : LDC   3, 1018(0) ;  Load offset for parameter count into register 3
701 : LD  1, 0(3) ;  Load parameter count value into register 1
702 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
703 : SUB  5, 5, 4 ;  Decrement memory offset
704 : ST   1, 0(5) ;  Store left expression value into memory
705 : LDC  1, 1(0) ;  Load integer-literal value into register 1
706 : LD   2, 0(5) ;  Load left expression value from memory into register 2
707 : ADD  5, 5, 4 ;  Increment memory offset
708 : ADD  1, 2, 1 ;  Add left and right expression values
709 : ST   1, 0(5) ;  Store parameter into memory
710 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
711 : SUB  5, 5, 4 ;  Decrement memory offset
712 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
713 : SUB  5, 5, 4 ;  Decrement memory offset
714 : LDA  7, 648(0) ;  Load address of circularPrimesToHelper IMEM block - branch to function
715 : LD   1, 0(5) ;  Load return value from DMEM into register 1
716 : LDC  4, 5(0) ;  Load value of parameters + return value into temporary register 4
717 : ADD  5, 5, 4 ;  Increment memory offset
718 : LDA  7, 751(0) ;  Skip the ELSE block
719 : LDA  6, 748(0) ;  Load return address into R6
720 : ST   6, 0(5) ;  Store current return address into DMEM
721 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
722 : SUB  5, 5, 4 ;  Decrement memory offset
723 : LDC   3, 1020(0) ;  Load offset for parameter top into register 3
724 : LD  1, 0(3) ;  Load parameter top value into register 1
725 : ST   1, 0(5) ;  Store parameter into memory
726 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
727 : SUB  5, 5, 4 ;  Decrement memory offset
728 : LDC   3, 1019(0) ;  Load offset for parameter x into register 3
729 : LD  1, 0(3) ;  Load parameter x value into register 1
730 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
731 : SUB  5, 5, 4 ;  Decrement memory offset
732 : ST   1, 0(5) ;  Store left expression value into memory
733 : LDC  1, 1(0) ;  Load integer-literal value into register 1
734 : LD   2, 0(5) ;  Load left expression value from memory into register 2
735 : ADD  5, 5, 4 ;  Increment memory offset
736 : ADD  1, 2, 1 ;  Add left and right expression values
737 : ST   1, 0(5) ;  Store parameter into memory
738 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
739 : SUB  5, 5, 4 ;  Decrement memory offset
740 : LDC   3, 1018(0) ;  Load offset for parameter count into register 3
741 : LD  1, 0(3) ;  Load parameter count value into register 1
742 : ST   1, 0(5) ;  Store parameter into memory
743 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
744 : SUB  5, 5, 4 ;  Decrement memory offset
745 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
746 : SUB  5, 5, 4 ;  Decrement memory offset
747 : LDA  7, 648(0) ;  Load address of circularPrimesToHelper IMEM block - branch to function
748 : LD   1, 0(5) ;  Load return value from DMEM into register 1
749 : LDC  4, 5(0) ;  Load value of parameters + return value into temporary register 4
750 : ADD  5, 5, 4 ;  Increment memory offset
751 : LDA  7, 754(0) ;  Skip the ELSE block
752 : LDC   3, 1018(0) ;  Load offset for parameter count into register 3
753 : LD  1, 0(3) ;  Load parameter count value into register 1
754 : LDC  5, 1017(0) ;  Store the memory location of circularPrimesToHelper return value
755 : ST   1, 0(5) ;  Store return value of into DMEM
756 : LDC  3, 1021(0) ;  Load return address for function circularPrimesToHelper into register 3
757 : LD   6, 0(3) ;  Load return address into register 6
758 : LDA  7, 0(6) ;  Load return address back into register 7
759 : LDA  6, 786(0) ;  Load return address into R6
760 : ST   6, 0(5) ;  Store current return address into DMEM
761 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
762 : SUB  5, 5, 4 ;  Decrement memory offset
763 : LDC   3, 1020(0) ;  Load offset for parameter x into register 3
764 : LD  1, 0(3) ;  Load parameter x value into register 1
765 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
766 : SUB  5, 5, 4 ;  Decrement memory offset
767 : ST   1, 0(5) ;  Store left expression value into memory
768 : LDC  1, 1(0) ;  Load integer-literal value into register 1
769 : LD   2, 0(5) ;  Load left expression value from memory into register 2
770 : ADD  5, 5, 4 ;  Increment memory offset
771 : ADD  1, 2, 1 ;  Add left and right expression values
772 : ST   1, 0(5) ;  Store parameter into memory
773 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
774 : SUB  5, 5, 4 ;  Decrement memory offset
775 : LDC  1, 2(0) ;  Load integer-literal value into register 1
776 : ST   1, 0(5) ;  Store parameter into memory
777 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
778 : SUB  5, 5, 4 ;  Decrement memory offset
779 : LDC  1, 0(0) ;  Load integer-literal value into register 1
780 : ST   1, 0(5) ;  Store parameter into memory
781 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
782 : SUB  5, 5, 4 ;  Decrement memory offset
783 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
784 : SUB  5, 5, 4 ;  Decrement memory offset
785 : LDA  7, 648(0) ;  Load address of circularPrimesToHelper IMEM block - branch to function
786 : LD   1, 0(5) ;  Load return value from DMEM into register 1
787 : LDC  4, 5(0) ;  Load value of parameters + return value into temporary register 4
788 : ADD  5, 5, 4 ;  Increment memory offset
789 : LDC  5, 1019(0) ;  Store the memory location of circularPrimesTo return value
790 : ST   1, 0(5) ;  Store return value of into DMEM
791 : LDC  3, 1021(0) ;  Load return address for function circularPrimesTo into register 3
792 : LD   6, 0(3) ;  Load return address into register 6
793 : LDA  7, 0(6) ;  Load return address back into register 7
794 : LDC  5, 1021(0) ;  Store the memory location of main return value
795 : ST   1, 0(5) ;  Store return value of into DMEM
796 : LD   1, 0(5) ;  Load Return Value from DMEM
797 : OUT  1, 0, 0 ;  Output value from register 1.
798 : HALT 0, 0, 0 ;  Terminate program execution.
