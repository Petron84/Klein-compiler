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
14 : LDC   3, 1022(0) ;  Load offset for parameter n into register 3
15 : LD  1, 0(3) ;  Load parameter n value into register 1
16 : ST   1, 0(5) ;  Store parameter into memory
17 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
18 : SUB  5, 5, 4 ;  Decrement memory offset
19 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
20 : SUB  5, 5, 4 ;  Decrement memory offset
21 : LDA  7, 27(0) ;  Load address of isExcellent IMEM block - branch to function
22 : LD   1, 0(5) ;  Load return value from DMEM into register 1
23 : LDC  4, 3(0) ;  Load value of parameters + return value into temporary register 4
24 : ADD  5, 5, 4 ;  Increment memory offset
25 : LDC  5, 1021(0) ;  Store the memory location of main return value
26 : ST   1, 0(5) ;  Store return value of into DMEM
27 : LDA  6, 57(0) ;  Load return address into R6
28 : ST   6, 0(5) ;  Store current return address into DMEM
29 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
30 : SUB  5, 5, 4 ;  Decrement memory offset
31 : LDC   3, 1020(0) ;  Load offset for parameter n into register 3
32 : LD  1, 0(3) ;  Load parameter n value into register 1
33 : ST   1, 0(5) ;  Store parameter into memory
34 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
35 : SUB  5, 5, 4 ;  Decrement memory offset
36 : LDA  6, 48(0) ;  Load return address into R6
37 : ST   6, 0(5) ;  Store current return address into DMEM
38 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
39 : SUB  5, 5, 4 ;  Decrement memory offset
40 : LDC   3, 1020(0) ;  Load offset for parameter n into register 3
41 : LD  1, 0(3) ;  Load parameter n value into register 1
42 : ST   1, 0(5) ;  Store parameter into memory
43 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
44 : SUB  5, 5, 4 ;  Decrement memory offset
45 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
46 : SUB  5, 5, 4 ;  Decrement memory offset
47 : LDA  7, 291(0) ;  Load address of length IMEM block - branch to function
48 : LD   1, 0(5) ;  Load return value from DMEM into register 1
49 : LDC  4, 3(0) ;  Load value of parameters + return value into temporary register 4
50 : ADD  5, 5, 4 ;  Increment memory offset
51 : ST   1, 0(5) ;  Store parameter into memory
52 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
53 : SUB  5, 5, 4 ;  Decrement memory offset
54 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
55 : SUB  5, 5, 4 ;  Decrement memory offset
56 : LDA  7, 65(0) ;  Load address of isExcellentSwitch IMEM block - branch to function
57 : LD   1, 0(5) ;  Load return value from DMEM into register 1
58 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
59 : ADD  5, 5, 4 ;  Increment memory offset
60 : LDC  5, 1019(0) ;  Store the memory location of isExcellent return value
61 : ST   1, 0(5) ;  Store return value of into DMEM
62 : LDC  3, 1021(0) ;  Load return address for function isExcellent into register 3
63 : LD   6, 0(3) ;  Load return address into register 6
64 : LDA  7, 0(6) ;  Load return address back into register 7
65 : LDA  6, 77(0) ;  Load return address into R6
66 : ST   6, 0(5) ;  Store current return address into DMEM
67 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
68 : SUB  5, 5, 4 ;  Decrement memory offset
69 : LDC   3, 1019(0) ;  Load offset for parameter length into register 3
70 : LD  1, 0(3) ;  Load parameter length value into register 1
71 : ST   1, 0(5) ;  Store parameter into memory
72 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
73 : SUB  5, 5, 4 ;  Decrement memory offset
74 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
75 : SUB  5, 5, 4 ;  Decrement memory offset
76 : LDA  7, 341(0) ;  Load address of ODD IMEM block - branch to function
77 : LD   1, 0(5) ;  Load return value from DMEM into register 1
78 : LDC  4, 3(0) ;  Load value of parameters + return value into temporary register 4
79 : ADD  5, 5, 4 ;  Increment memory offset
80 : JEQ  1, 83(0) ;  If condition is false, skip to ELSE block
81 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
82 : LDA  7, 141(0) ;  Skip the ELSE block
83 : LDC   3, 1020(0) ;  Load offset for parameter n into register 3
84 : LD  1, 0(3) ;  Load parameter n value into register 1
85 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
86 : SUB  5, 5, 4 ;  Decrement memory offset
87 : ST   1, 0(5) ;  Store left expression value into memory
88 : LDA  6, 131(0) ;  Load return address into R6
89 : ST   6, 0(5) ;  Store current return address into DMEM
90 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
91 : SUB  5, 5, 4 ;  Decrement memory offset
92 : LDA  6, 104(0) ;  Load return address into R6
93 : ST   6, 0(5) ;  Store current return address into DMEM
94 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
95 : SUB  5, 5, 4 ;  Decrement memory offset
96 : LDC   3, 1020(0) ;  Load offset for parameter n into register 3
97 : LD  1, 0(3) ;  Load parameter n value into register 1
98 : ST   1, 0(5) ;  Store parameter into memory
99 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
100 : SUB  5, 5, 4 ;  Decrement memory offset
101 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
102 : SUB  5, 5, 4 ;  Decrement memory offset
103 : LDA  7, 239(0) ;  Load address of a IMEM block - branch to function
104 : LD   1, 0(5) ;  Load return value from DMEM into register 1
105 : LDC  4, 3(0) ;  Load value of parameters + return value into temporary register 4
106 : ADD  5, 5, 4 ;  Increment memory offset
107 : ST   1, 0(5) ;  Store parameter into memory
108 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
109 : SUB  5, 5, 4 ;  Decrement memory offset
110 : LDA  6, 122(0) ;  Load return address into R6
111 : ST   6, 0(5) ;  Store current return address into DMEM
112 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
113 : SUB  5, 5, 4 ;  Decrement memory offset
114 : LDC   3, 1020(0) ;  Load offset for parameter n into register 3
115 : LD  1, 0(3) ;  Load parameter n value into register 1
116 : ST   1, 0(5) ;  Store parameter into memory
117 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
118 : SUB  5, 5, 4 ;  Decrement memory offset
119 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
120 : SUB  5, 5, 4 ;  Decrement memory offset
121 : LDA  7, 177(0) ;  Load address of b IMEM block - branch to function
122 : LD   1, 0(5) ;  Load return value from DMEM into register 1
123 : LDC  4, 3(0) ;  Load value of parameters + return value into temporary register 4
124 : ADD  5, 5, 4 ;  Increment memory offset
125 : ST   1, 0(5) ;  Store parameter into memory
126 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
127 : SUB  5, 5, 4 ;  Decrement memory offset
128 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
129 : SUB  5, 5, 4 ;  Decrement memory offset
130 : LDA  7, 146(0) ;  Load address of excellentDiff IMEM block - branch to function
131 : LD   1, 0(5) ;  Load return value from DMEM into register 1
132 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
133 : ADD  5, 5, 4 ;  Increment memory offset
134 : LD   2, 0(5) ;  Load left expression value from memory into register 2
135 : ADD  5, 5, 4 ;  Increment memory offset
136 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for equality check
137 : JEQ  1, 2(7) ;  If Register 1 is 0, then jump to true handling
138 : LDC  1, 0(0) ;  Load false (0) into register 1
139 : LDA  7, 1(7) ;  Jump to end of equality handling
140 : LDC  1, 1(0) ;  Load true (1) into register 1
141 : LDC  5, 1018(0) ;  Store the memory location of isExcellentSwitch return value
142 : ST   1, 0(5) ;  Store return value of into DMEM
143 : LDC  3, 1021(0) ;  Load return address for function isExcellentSwitch into register 3
144 : LD   6, 0(3) ;  Load return address into register 6
145 : LDA  7, 0(6) ;  Load return address back into register 7
146 : LDC   3, 1019(0) ;  Load offset for parameter b into register 3
147 : LD  1, 0(3) ;  Load parameter b value into register 1
148 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
149 : SUB  5, 5, 4 ;  Decrement memory offset
150 : ST   1, 0(5) ;  Store left expression value into memory
151 : LDC   3, 1019(0) ;  Load offset for parameter b into register 3
152 : LD  1, 0(3) ;  Load parameter b value into register 1
153 : LD   2, 0(5) ;  Load left expression value from memory into register 2
154 : ADD  5, 5, 4 ;  Increment memory offset
155 : MUL  1, 2, 1 ;  Multiply left and right expression values
156 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
157 : SUB  5, 5, 4 ;  Decrement memory offset
158 : ST   1, 0(5) ;  Store left expression value into memory
159 : LDC   3, 1020(0) ;  Load offset for parameter a into register 3
160 : LD  1, 0(3) ;  Load parameter a value into register 1
161 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
162 : SUB  5, 5, 4 ;  Decrement memory offset
163 : ST   1, 0(5) ;  Store left expression value into memory
164 : LDC   3, 1020(0) ;  Load offset for parameter a into register 3
165 : LD  1, 0(3) ;  Load parameter a value into register 1
166 : LD   2, 0(5) ;  Load left expression value from memory into register 2
167 : ADD  5, 5, 4 ;  Increment memory offset
168 : MUL  1, 2, 1 ;  Multiply left and right expression values
169 : LD   2, 0(5) ;  Load left expression value from memory into register 2
170 : ADD  5, 5, 4 ;  Increment memory offset
171 : SUB  1, 2, 1 ;  Subtract left expression from right expression value
172 : LDC  5, 1018(0) ;  Store the memory location of excellentDiff return value
173 : ST   1, 0(5) ;  Store return value of into DMEM
174 : LDC  3, 1021(0) ;  Load return address for function excellentDiff into register 3
175 : LD   6, 0(3) ;  Load return address into register 6
176 : LDA  7, 0(6) ;  Load return address back into register 7
177 : LDA  6, 231(0) ;  Load return address into R6
178 : ST   6, 0(5) ;  Store current return address into DMEM
179 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
180 : SUB  5, 5, 4 ;  Decrement memory offset
181 : LDC   3, 1020(0) ;  Load offset for parameter n into register 3
182 : LD  1, 0(3) ;  Load parameter n value into register 1
183 : ST   1, 0(5) ;  Store parameter into memory
184 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
185 : SUB  5, 5, 4 ;  Decrement memory offset
186 : LDA  6, 222(0) ;  Load return address into R6
187 : ST   6, 0(5) ;  Store current return address into DMEM
188 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
189 : SUB  5, 5, 4 ;  Decrement memory offset
190 : LDC  1, 10(0) ;  Load integer-literal value into register 1
191 : ST   1, 0(5) ;  Store parameter into memory
192 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
193 : SUB  5, 5, 4 ;  Decrement memory offset
194 : LDA  6, 206(0) ;  Load return address into R6
195 : ST   6, 0(5) ;  Store current return address into DMEM
196 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
197 : SUB  5, 5, 4 ;  Decrement memory offset
198 : LDC   3, 1020(0) ;  Load offset for parameter n into register 3
199 : LD  1, 0(3) ;  Load parameter n value into register 1
200 : ST   1, 0(5) ;  Store parameter into memory
201 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
202 : SUB  5, 5, 4 ;  Decrement memory offset
203 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
204 : SUB  5, 5, 4 ;  Decrement memory offset
205 : LDA  7, 291(0) ;  Load address of length IMEM block - branch to function
206 : LD   1, 0(5) ;  Load return value from DMEM into register 1
207 : LDC  4, 3(0) ;  Load value of parameters + return value into temporary register 4
208 : ADD  5, 5, 4 ;  Increment memory offset
209 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
210 : SUB  5, 5, 4 ;  Decrement memory offset
211 : ST   1, 0(5) ;  Store left expression value into memory
212 : LDC  1, 2(0) ;  Load integer-literal value into register 1
213 : LD   2, 0(5) ;  Load left expression value from memory into register 2
214 : ADD  5, 5, 4 ;  Increment memory offset
215 : DIV  1, 2, 1 ;  Divide left expression by right expression value
216 : ST   1, 0(5) ;  Store parameter into memory
217 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
218 : SUB  5, 5, 4 ;  Decrement memory offset
219 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
220 : SUB  5, 5, 4 ;  Decrement memory offset
221 : LDA  7, 405(0) ;  Load address of EXP IMEM block - branch to function
222 : LD   1, 0(5) ;  Load return value from DMEM into register 1
223 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
224 : ADD  5, 5, 4 ;  Increment memory offset
225 : ST   1, 0(5) ;  Store parameter into memory
226 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
227 : SUB  5, 5, 4 ;  Decrement memory offset
228 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
229 : SUB  5, 5, 4 ;  Decrement memory offset
230 : LDA  7, 461(0) ;  Load address of MOD IMEM block - branch to function
231 : LD   1, 0(5) ;  Load return value from DMEM into register 1
232 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
233 : ADD  5, 5, 4 ;  Increment memory offset
234 : LDC  5, 1019(0) ;  Store the memory location of b return value
235 : ST   1, 0(5) ;  Store return value of into DMEM
236 : LDC  3, 1021(0) ;  Load return address for function b into register 3
237 : LD   6, 0(3) ;  Load return address into register 6
238 : LDA  7, 0(6) ;  Load return address back into register 7
239 : LDC   3, 1020(0) ;  Load offset for parameter n into register 3
240 : LD  1, 0(3) ;  Load parameter n value into register 1
241 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
242 : SUB  5, 5, 4 ;  Decrement memory offset
243 : ST   1, 0(5) ;  Store left expression value into memory
244 : LDA  6, 280(0) ;  Load return address into R6
245 : ST   6, 0(5) ;  Store current return address into DMEM
246 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
247 : SUB  5, 5, 4 ;  Decrement memory offset
248 : LDC  1, 10(0) ;  Load integer-literal value into register 1
249 : ST   1, 0(5) ;  Store parameter into memory
250 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
251 : SUB  5, 5, 4 ;  Decrement memory offset
252 : LDA  6, 264(0) ;  Load return address into R6
253 : ST   6, 0(5) ;  Store current return address into DMEM
254 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
255 : SUB  5, 5, 4 ;  Decrement memory offset
256 : LDC   3, 1020(0) ;  Load offset for parameter n into register 3
257 : LD  1, 0(3) ;  Load parameter n value into register 1
258 : ST   1, 0(5) ;  Store parameter into memory
259 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
260 : SUB  5, 5, 4 ;  Decrement memory offset
261 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
262 : SUB  5, 5, 4 ;  Decrement memory offset
263 : LDA  7, 291(0) ;  Load address of length IMEM block - branch to function
264 : LD   1, 0(5) ;  Load return value from DMEM into register 1
265 : LDC  4, 3(0) ;  Load value of parameters + return value into temporary register 4
266 : ADD  5, 5, 4 ;  Increment memory offset
267 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
268 : SUB  5, 5, 4 ;  Decrement memory offset
269 : ST   1, 0(5) ;  Store left expression value into memory
270 : LDC  1, 2(0) ;  Load integer-literal value into register 1
271 : LD   2, 0(5) ;  Load left expression value from memory into register 2
272 : ADD  5, 5, 4 ;  Increment memory offset
273 : DIV  1, 2, 1 ;  Divide left expression by right expression value
274 : ST   1, 0(5) ;  Store parameter into memory
275 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
276 : SUB  5, 5, 4 ;  Decrement memory offset
277 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
278 : SUB  5, 5, 4 ;  Decrement memory offset
279 : LDA  7, 405(0) ;  Load address of EXP IMEM block - branch to function
280 : LD   1, 0(5) ;  Load return value from DMEM into register 1
281 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
282 : ADD  5, 5, 4 ;  Increment memory offset
283 : LD   2, 0(5) ;  Load left expression value from memory into register 2
284 : ADD  5, 5, 4 ;  Increment memory offset
285 : DIV  1, 2, 1 ;  Divide left expression by right expression value
286 : LDC  5, 1019(0) ;  Store the memory location of a return value
287 : ST   1, 0(5) ;  Store return value of into DMEM
288 : LDC  3, 1021(0) ;  Load return address for function a into register 3
289 : LD   6, 0(3) ;  Load return address into register 6
290 : LDA  7, 0(6) ;  Load return address back into register 7
291 : LDC   3, 1020(0) ;  Load offset for parameter n into register 3
292 : LD  1, 0(3) ;  Load parameter n value into register 1
293 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
294 : SUB  5, 5, 4 ;  Decrement memory offset
295 : ST   1, 0(5) ;  Store left expression value into memory
296 : LDC  1, 10(0) ;  Load integer-literal value into register 1
297 : LD   2, 0(5) ;  Load left expression value from memory into register 2
298 : ADD  5, 5, 4 ;  Increment memory offset
299 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for less-than check
300 : JLT  1, 2(7) ;  If Register 1 is negative, then jump to true handling
301 : LDC  1, 0(0) ;  Load false (0) into register 1
302 : LDA  7, 1(7) ;  Jump to end of less-than handling
303 : LDC  1, 1(0) ;  Load true (1) into register 1
304 : JEQ  1, 307(0) ;  If condition is false, skip to ELSE block
305 : LDC  1, 1(0) ;  Load integer-literal value into register 1
306 : LDA  7, 336(0) ;  Skip the ELSE block
307 : LDC  1, 1(0) ;  Load integer-literal value into register 1
308 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
309 : SUB  5, 5, 4 ;  Decrement memory offset
310 : ST   1, 0(5) ;  Store left expression value into memory
311 : LDA  6, 330(0) ;  Load return address into R6
312 : ST   6, 0(5) ;  Store current return address into DMEM
313 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
314 : SUB  5, 5, 4 ;  Decrement memory offset
315 : LDC   3, 1019(0) ;  Load offset for parameter n into register 3
316 : LD  1, 0(3) ;  Load parameter n value into register 1
317 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
318 : SUB  5, 5, 4 ;  Decrement memory offset
319 : ST   1, 0(5) ;  Store left expression value into memory
320 : LDC  1, 10(0) ;  Load integer-literal value into register 1
321 : LD   2, 0(5) ;  Load left expression value from memory into register 2
322 : ADD  5, 5, 4 ;  Increment memory offset
323 : DIV  1, 2, 1 ;  Divide left expression by right expression value
324 : ST   1, 0(5) ;  Store parameter into memory
325 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
326 : SUB  5, 5, 4 ;  Decrement memory offset
327 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
328 : SUB  5, 5, 4 ;  Decrement memory offset
329 : LDA  7, 291(0) ;  Load address of length IMEM block - branch to function
330 : LD   1, 0(5) ;  Load return value from DMEM into register 1
331 : LDC  4, 3(0) ;  Load value of parameters + return value into temporary register 4
332 : ADD  5, 5, 4 ;  Increment memory offset
333 : LD   2, 0(5) ;  Load left expression value from memory into register 2
334 : ADD  5, 5, 4 ;  Increment memory offset
335 : ADD  1, 2, 1 ;  Add left and right expression values
336 : LDC  5, 1018(0) ;  Store the memory location of length return value
337 : ST   1, 0(5) ;  Store return value of into DMEM
338 : LDC  3, 1020(0) ;  Load return address for function length into register 3
339 : LD   6, 0(3) ;  Load return address into register 6
340 : LDA  7, 0(6) ;  Load return address back into register 7
341 : LDC  1, 0(0) ;  Load integer-literal value into register 1
342 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
343 : SUB  5, 5, 4 ;  Decrement memory offset
344 : ST   1, 0(5) ;  Store left expression value into memory
345 : LDC   3, 1020(0) ;  Load offset for parameter n into register 3
346 : LD  1, 0(3) ;  Load parameter n value into register 1
347 : LD   2, 0(5) ;  Load left expression value from memory into register 2
348 : ADD  5, 5, 4 ;  Increment memory offset
349 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for less-than check
350 : JLT  1, 2(7) ;  If Register 1 is negative, then jump to true handling
351 : LDC  1, 0(0) ;  Load false (0) into register 1
352 : LDA  7, 1(7) ;  Jump to end of less-than handling
353 : LDC  1, 1(0) ;  Load true (1) into register 1
354 : JEQ  1, 384(0) ;  If condition is false, skip to ELSE block
355 : LDC  1, 2(0) ;  Load integer-literal value into register 1
356 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
357 : SUB  5, 5, 4 ;  Decrement memory offset
358 : ST   1, 0(5) ;  Store left expression value into memory
359 : LDC   3, 1020(0) ;  Load offset for parameter n into register 3
360 : LD  1, 0(3) ;  Load parameter n value into register 1
361 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
362 : SUB  5, 5, 4 ;  Decrement memory offset
363 : ST   1, 0(5) ;  Store left expression value into memory
364 : LDC  1, 2(0) ;  Load integer-literal value into register 1
365 : LD   2, 0(5) ;  Load left expression value from memory into register 2
366 : ADD  5, 5, 4 ;  Increment memory offset
367 : DIV  1, 2, 1 ;  Divide left expression by right expression value
368 : LD   2, 0(5) ;  Load left expression value from memory into register 2
369 : ADD  5, 5, 4 ;  Increment memory offset
370 : MUL  1, 2, 1 ;  Multiply left and right expression values
371 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
372 : SUB  5, 5, 4 ;  Decrement memory offset
373 : ST   1, 0(5) ;  Store left expression value into memory
374 : LDC   3, 1020(0) ;  Load offset for parameter n into register 3
375 : LD  1, 0(3) ;  Load parameter n value into register 1
376 : LD   2, 0(5) ;  Load left expression value from memory into register 2
377 : ADD  5, 5, 4 ;  Increment memory offset
378 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for less-than check
379 : JLT  1, 2(7) ;  If Register 1 is negative, then jump to true handling
380 : LDC  1, 0(0) ;  Load false (0) into register 1
381 : LDA  7, 1(7) ;  Jump to end of less-than handling
382 : LDC  1, 1(0) ;  Load true (1) into register 1
383 : LDA  7, 400(0) ;  Skip the ELSE block
384 : LDA  6, 397(0) ;  Load return address into R6
385 : ST   6, 0(5) ;  Store current return address into DMEM
386 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
387 : SUB  5, 5, 4 ;  Decrement memory offset
388 : LDC   3, 1020(0) ;  Load offset for parameter n into register 3
389 : LD  1, 0(3) ;  Load parameter n value into register 1
390 : SUB  1, 0, 1 ;  Switch sign of value
391 : ST   1, 0(5) ;  Store parameter into memory
392 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
393 : SUB  5, 5, 4 ;  Decrement memory offset
394 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
395 : SUB  5, 5, 4 ;  Decrement memory offset
396 : LDA  7, 341(0) ;  Load address of ODD IMEM block - branch to function
397 : LD   1, 0(5) ;  Load return value from DMEM into register 1
398 : LDC  4, 3(0) ;  Load value of parameters + return value into temporary register 4
399 : ADD  5, 5, 4 ;  Increment memory offset
400 : LDC  5, 1019(0) ;  Store the memory location of ODD return value
401 : ST   1, 0(5) ;  Store return value of into DMEM
402 : LDC  3, 1021(0) ;  Load return address for function ODD into register 3
403 : LD   6, 0(3) ;  Load return address into register 6
404 : LDA  7, 0(6) ;  Load return address back into register 7
405 : LDC   3, 1019(0) ;  Load offset for parameter n into register 3
406 : LD  1, 0(3) ;  Load parameter n value into register 1
407 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
408 : SUB  5, 5, 4 ;  Decrement memory offset
409 : ST   1, 0(5) ;  Store left expression value into memory
410 : LDC  1, 0(0) ;  Load integer-literal value into register 1
411 : LD   2, 0(5) ;  Load left expression value from memory into register 2
412 : ADD  5, 5, 4 ;  Increment memory offset
413 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for equality check
414 : JEQ  1, 2(7) ;  If Register 1 is 0, then jump to true handling
415 : LDC  1, 0(0) ;  Load false (0) into register 1
416 : LDA  7, 1(7) ;  Jump to end of equality handling
417 : LDC  1, 1(0) ;  Load true (1) into register 1
418 : JEQ  1, 421(0) ;  If condition is false, skip to ELSE block
419 : LDC  1, 1(0) ;  Load integer-literal value into register 1
420 : LDA  7, 456(0) ;  Skip the ELSE block
421 : LDC   3, 1020(0) ;  Load offset for parameter m into register 3
422 : LD  1, 0(3) ;  Load parameter m value into register 1
423 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
424 : SUB  5, 5, 4 ;  Decrement memory offset
425 : ST   1, 0(5) ;  Store left expression value into memory
426 : LDA  6, 450(0) ;  Load return address into R6
427 : ST   6, 0(5) ;  Store current return address into DMEM
428 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
429 : SUB  5, 5, 4 ;  Decrement memory offset
430 : LDC   3, 1019(0) ;  Load offset for parameter m into register 3
431 : LD  1, 0(3) ;  Load parameter m value into register 1
432 : ST   1, 0(5) ;  Store parameter into memory
433 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
434 : SUB  5, 5, 4 ;  Decrement memory offset
435 : LDC   3, 1018(0) ;  Load offset for parameter n into register 3
436 : LD  1, 0(3) ;  Load parameter n value into register 1
437 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
438 : SUB  5, 5, 4 ;  Decrement memory offset
439 : ST   1, 0(5) ;  Store left expression value into memory
440 : LDC  1, 1(0) ;  Load integer-literal value into register 1
441 : LD   2, 0(5) ;  Load left expression value from memory into register 2
442 : ADD  5, 5, 4 ;  Increment memory offset
443 : SUB  1, 2, 1 ;  Subtract left expression from right expression value
444 : ST   1, 0(5) ;  Store parameter into memory
445 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
446 : SUB  5, 5, 4 ;  Decrement memory offset
447 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
448 : SUB  5, 5, 4 ;  Decrement memory offset
449 : LDA  7, 405(0) ;  Load address of EXP IMEM block - branch to function
450 : LD   1, 0(5) ;  Load return value from DMEM into register 1
451 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
452 : ADD  5, 5, 4 ;  Increment memory offset
453 : LD   2, 0(5) ;  Load left expression value from memory into register 2
454 : ADD  5, 5, 4 ;  Increment memory offset
455 : MUL  1, 2, 1 ;  Multiply left and right expression values
456 : LDC  5, 1017(0) ;  Store the memory location of EXP return value
457 : ST   1, 0(5) ;  Store return value of into DMEM
458 : LDC  3, 1020(0) ;  Load return address for function EXP into register 3
459 : LD   6, 0(3) ;  Load return address into register 6
460 : LDA  7, 0(6) ;  Load return address back into register 7
461 : LDC   3, 1020(0) ;  Load offset for parameter m into register 3
462 : LD  1, 0(3) ;  Load parameter m value into register 1
463 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
464 : SUB  5, 5, 4 ;  Decrement memory offset
465 : ST   1, 0(5) ;  Store left expression value into memory
466 : LDC   3, 1019(0) ;  Load offset for parameter n into register 3
467 : LD  1, 0(3) ;  Load parameter n value into register 1
468 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
469 : SUB  5, 5, 4 ;  Decrement memory offset
470 : ST   1, 0(5) ;  Store left expression value into memory
471 : LDC   3, 1020(0) ;  Load offset for parameter m into register 3
472 : LD  1, 0(3) ;  Load parameter m value into register 1
473 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
474 : SUB  5, 5, 4 ;  Decrement memory offset
475 : ST   1, 0(5) ;  Store left expression value into memory
476 : LDC   3, 1019(0) ;  Load offset for parameter n into register 3
477 : LD  1, 0(3) ;  Load parameter n value into register 1
478 : LD   2, 0(5) ;  Load left expression value from memory into register 2
479 : ADD  5, 5, 4 ;  Increment memory offset
480 : DIV  1, 2, 1 ;  Divide left expression by right expression value
481 : LD   2, 0(5) ;  Load left expression value from memory into register 2
482 : ADD  5, 5, 4 ;  Increment memory offset
483 : MUL  1, 2, 1 ;  Multiply left and right expression values
484 : LD   2, 0(5) ;  Load left expression value from memory into register 2
485 : ADD  5, 5, 4 ;  Increment memory offset
486 : SUB  1, 2, 1 ;  Subtract left expression from right expression value
487 : LDC  5, 1018(0) ;  Store the memory location of MOD return value
488 : ST   1, 0(5) ;  Store return value of into DMEM
489 : LDC  3, 1021(0) ;  Load return address for function MOD into register 3
490 : LD   6, 0(3) ;  Load return address into register 6
491 : LDA  7, 0(6) ;  Load return address back into register 7
492 : LDC  5, 1021(0) ;  Store the memory location of main return value
493 : ST   1, 0(5) ;  Store return value of into DMEM
494 : LD   1, 0(5) ;  Load Return Value from DMEM
495 : OUT  1, 0, 0 ;  Output value from register 1.
496 : HALT 0, 0, 0 ;  Terminate program execution.
