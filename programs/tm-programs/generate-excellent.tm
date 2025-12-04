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
10 : LDA  6, 65(0) ;  Load return address into R6
11 : ST   6, 0(5) ;  Store current return address into DMEM
12 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
13 : SUB  5, 5, 4 ;  Decrement memory offset
14 : LDA  6, 44(0) ;  Load return address into R6
15 : ST   6, 0(5) ;  Store current return address into DMEM
16 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
17 : SUB  5, 5, 4 ;  Decrement memory offset
18 : LDC  1, 10(0) ;  Load integer-literal value into register 1
19 : ST   1, 0(5) ;  Store parameter into memory
20 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
21 : SUB  5, 5, 4 ;  Decrement memory offset
22 : LDC   3, 1022(0) ;  Load offset for parameter length into register 3
23 : LD  1, 0(3) ;  Load parameter length value into register 1
24 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
25 : SUB  5, 5, 4 ;  Decrement memory offset
26 : ST   1, 0(5) ;  Store left expression value into memory
27 : LDC  1, 2(0) ;  Load integer-literal value into register 1
28 : LD   2, 0(5) ;  Load left expression value from memory into register 2
29 : ADD  5, 5, 4 ;  Increment memory offset
30 : DIV  1, 2, 1 ;  Divide left expression by right expression value
31 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
32 : SUB  5, 5, 4 ;  Decrement memory offset
33 : ST   1, 0(5) ;  Store left expression value into memory
34 : LDC  1, 1(0) ;  Load integer-literal value into register 1
35 : LD   2, 0(5) ;  Load left expression value from memory into register 2
36 : ADD  5, 5, 4 ;  Increment memory offset
37 : SUB  1, 2, 1 ;  Subtract left expression from right expression value
38 : ST   1, 0(5) ;  Store parameter into memory
39 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
40 : SUB  5, 5, 4 ;  Decrement memory offset
41 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
42 : SUB  5, 5, 4 ;  Decrement memory offset
43 : LDA  7, 1288(0) ;  Load address of EXP IMEM block - branch to function
44 : LD   1, 0(5) ;  Load return value from DMEM into register 1
45 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
46 : ADD  5, 5, 4 ;  Increment memory offset
47 : ST   1, 0(5) ;  Store parameter into memory
48 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
49 : SUB  5, 5, 4 ;  Decrement memory offset
50 : LDC   3, 1022(0) ;  Load offset for parameter length into register 3
51 : LD  1, 0(3) ;  Load parameter length value into register 1
52 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
53 : SUB  5, 5, 4 ;  Decrement memory offset
54 : ST   1, 0(5) ;  Store left expression value into memory
55 : LDC  1, 2(0) ;  Load integer-literal value into register 1
56 : LD   2, 0(5) ;  Load left expression value from memory into register 2
57 : ADD  5, 5, 4 ;  Increment memory offset
58 : DIV  1, 2, 1 ;  Divide left expression by right expression value
59 : ST   1, 0(5) ;  Store parameter into memory
60 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
61 : SUB  5, 5, 4 ;  Decrement memory offset
62 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
63 : SUB  5, 5, 4 ;  Decrement memory offset
64 : LDA  7, 70(0) ;  Load address of createLoop IMEM block - branch to function
65 : LD   1, 0(5) ;  Load return value from DMEM into register 1
66 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
67 : ADD  5, 5, 4 ;  Increment memory offset
68 : LDC  5, 1021(0) ;  Store the memory location of main return value
69 : ST   1, 0(5) ;  Store return value of into DMEM
70 : LDA  6, 99(0) ;  Load return address into R6
71 : ST   6, 0(5) ;  Store current return address into DMEM
72 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
73 : SUB  5, 5, 4 ;  Decrement memory offset
74 : LDC   3, 1020(0) ;  Load offset for parameter a into register 3
75 : LD  1, 0(3) ;  Load parameter a value into register 1
76 : ST   1, 0(5) ;  Store parameter into memory
77 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
78 : SUB  5, 5, 4 ;  Decrement memory offset
79 : LDC   3, 1019(0) ;  Load offset for parameter n into register 3
80 : LD  1, 0(3) ;  Load parameter n value into register 1
81 : ST   1, 0(5) ;  Store parameter into memory
82 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
83 : SUB  5, 5, 4 ;  Decrement memory offset
84 : LDC  1, 10(0) ;  Load integer-literal value into register 1
85 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
86 : SUB  5, 5, 4 ;  Decrement memory offset
87 : ST   1, 0(5) ;  Store left expression value into memory
88 : LDC   3, 1020(0) ;  Load offset for parameter a into register 3
89 : LD  1, 0(3) ;  Load parameter a value into register 1
90 : LD   2, 0(5) ;  Load left expression value from memory into register 2
91 : ADD  5, 5, 4 ;  Increment memory offset
92 : MUL  1, 2, 1 ;  Multiply left and right expression values
93 : ST   1, 0(5) ;  Store parameter into memory
94 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
95 : SUB  5, 5, 4 ;  Decrement memory offset
96 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
97 : SUB  5, 5, 4 ;  Decrement memory offset
98 : LDA  7, 107(0) ;  Load address of aLoop IMEM block - branch to function
99 : LD   1, 0(5) ;  Load return value from DMEM into register 1
100 : LDC  4, 5(0) ;  Load value of parameters + return value into temporary register 4
101 : ADD  5, 5, 4 ;  Increment memory offset
102 : LDC  5, 1018(0) ;  Store the memory location of createLoop return value
103 : ST   1, 0(5) ;  Store return value of into DMEM
104 : LDC  3, 1021(0) ;  Load return address for function createLoop into register 3
105 : LD   6, 0(3) ;  Load return address into register 6
106 : LDA  7, 0(6) ;  Load return address back into register 7
107 : LDC   3, 1020(0) ;  Load offset for parameter a into register 3
108 : LD  1, 0(3) ;  Load parameter a value into register 1
109 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
110 : SUB  5, 5, 4 ;  Decrement memory offset
111 : ST   1, 0(5) ;  Store left expression value into memory
112 : LDC   3, 1018(0) ;  Load offset for parameter upper into register 3
113 : LD  1, 0(3) ;  Load parameter upper value into register 1
114 : LD   2, 0(5) ;  Load left expression value from memory into register 2
115 : ADD  5, 5, 4 ;  Increment memory offset
116 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for less-than check
117 : JLT  1, 2(7) ;  If Register 1 is negative, then jump to true handling
118 : LDC  1, 0(0) ;  Load false (0) into register 1
119 : LDA  7, 1(7) ;  Jump to end of less-than handling
120 : LDC  1, 1(0) ;  Load true (1) into register 1
121 : JEQ  1, 224(0) ;  If condition is false, skip to ELSE block
122 : LDA  6, 220(0) ;  Load return address into R6
123 : ST   6, 0(5) ;  Store current return address into DMEM
124 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
125 : SUB  5, 5, 4 ;  Decrement memory offset
126 : LDC   3, 1020(0) ;  Load offset for parameter a into register 3
127 : LD  1, 0(3) ;  Load parameter a value into register 1
128 : ST   1, 0(5) ;  Store parameter into memory
129 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
130 : SUB  5, 5, 4 ;  Decrement memory offset
131 : LDC   3, 1019(0) ;  Load offset for parameter n into register 3
132 : LD  1, 0(3) ;  Load parameter n value into register 1
133 : ST   1, 0(5) ;  Store parameter into memory
134 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
135 : SUB  5, 5, 4 ;  Decrement memory offset
136 : LDC   3, 1018(0) ;  Load offset for parameter upper into register 3
137 : LD  1, 0(3) ;  Load parameter upper value into register 1
138 : ST   1, 0(5) ;  Store parameter into memory
139 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
140 : SUB  5, 5, 4 ;  Decrement memory offset
141 : LDC  1, 4(0) ;  Load integer-literal value into register 1
142 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
143 : SUB  5, 5, 4 ;  Decrement memory offset
144 : ST   1, 0(5) ;  Store left expression value into memory
145 : LDA  6, 161(0) ;  Load return address into R6
146 : ST   6, 0(5) ;  Store current return address into DMEM
147 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
148 : SUB  5, 5, 4 ;  Decrement memory offset
149 : LDC   3, 1020(0) ;  Load offset for parameter a into register 3
150 : LD  1, 0(3) ;  Load parameter a value into register 1
151 : ST   1, 0(5) ;  Store parameter into memory
152 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
153 : SUB  5, 5, 4 ;  Decrement memory offset
154 : LDC  1, 2(0) ;  Load integer-literal value into register 1
155 : ST   1, 0(5) ;  Store parameter into memory
156 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
157 : SUB  5, 5, 4 ;  Decrement memory offset
158 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
159 : SUB  5, 5, 4 ;  Decrement memory offset
160 : LDA  7, 1288(0) ;  Load address of EXP IMEM block - branch to function
161 : LD   1, 0(5) ;  Load return value from DMEM into register 1
162 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
163 : ADD  5, 5, 4 ;  Increment memory offset
164 : LD   2, 0(5) ;  Load left expression value from memory into register 2
165 : ADD  5, 5, 4 ;  Increment memory offset
166 : MUL  1, 2, 1 ;  Multiply left and right expression values
167 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
168 : SUB  5, 5, 4 ;  Decrement memory offset
169 : ST   1, 0(5) ;  Store left expression value into memory
170 : LDC  1, 4(0) ;  Load integer-literal value into register 1
171 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
172 : SUB  5, 5, 4 ;  Decrement memory offset
173 : ST   1, 0(5) ;  Store left expression value into memory
174 : LDA  6, 190(0) ;  Load return address into R6
175 : ST   6, 0(5) ;  Store current return address into DMEM
176 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
177 : SUB  5, 5, 4 ;  Decrement memory offset
178 : LDC  1, 10(0) ;  Load integer-literal value into register 1
179 : ST   1, 0(5) ;  Store parameter into memory
180 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
181 : SUB  5, 5, 4 ;  Decrement memory offset
182 : LDC   3, 1019(0) ;  Load offset for parameter n into register 3
183 : LD  1, 0(3) ;  Load parameter n value into register 1
184 : ST   1, 0(5) ;  Store parameter into memory
185 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
186 : SUB  5, 5, 4 ;  Decrement memory offset
187 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
188 : SUB  5, 5, 4 ;  Decrement memory offset
189 : LDA  7, 1288(0) ;  Load address of EXP IMEM block - branch to function
190 : LD   1, 0(5) ;  Load return value from DMEM into register 1
191 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
192 : ADD  5, 5, 4 ;  Increment memory offset
193 : LD   2, 0(5) ;  Load left expression value from memory into register 2
194 : ADD  5, 5, 4 ;  Increment memory offset
195 : MUL  1, 2, 1 ;  Multiply left and right expression values
196 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
197 : SUB  5, 5, 4 ;  Decrement memory offset
198 : ST   1, 0(5) ;  Store left expression value into memory
199 : LDC   3, 1020(0) ;  Load offset for parameter a into register 3
200 : LD  1, 0(3) ;  Load parameter a value into register 1
201 : LD   2, 0(5) ;  Load left expression value from memory into register 2
202 : ADD  5, 5, 4 ;  Increment memory offset
203 : MUL  1, 2, 1 ;  Multiply left and right expression values
204 : LD   2, 0(5) ;  Load left expression value from memory into register 2
205 : ADD  5, 5, 4 ;  Increment memory offset
206 : ADD  1, 2, 1 ;  Add left and right expression values
207 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
208 : SUB  5, 5, 4 ;  Decrement memory offset
209 : ST   1, 0(5) ;  Store left expression value into memory
210 : LDC  1, 1(0) ;  Load integer-literal value into register 1
211 : LD   2, 0(5) ;  Load left expression value from memory into register 2
212 : ADD  5, 5, 4 ;  Increment memory offset
213 : ADD  1, 2, 1 ;  Add left and right expression values
214 : ST   1, 0(5) ;  Store parameter into memory
215 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
216 : SUB  5, 5, 4 ;  Decrement memory offset
217 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
218 : SUB  5, 5, 4 ;  Decrement memory offset
219 : LDA  7, 230(0) ;  Load address of aLoop1 IMEM block - branch to function
220 : LD   1, 0(5) ;  Load return value from DMEM into register 1
221 : LDC  4, 6(0) ;  Load value of parameters + return value into temporary register 4
222 : ADD  5, 5, 4 ;  Increment memory offset
223 : LDA  7, 225(0) ;  Skip the ELSE block
224 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
225 : LDC  5, 1017(0) ;  Store the memory location of aLoop return value
226 : ST   1, 0(5) ;  Store return value of into DMEM
227 : LDC  3, 1021(0) ;  Load return address for function aLoop into register 3
228 : LD   6, 0(3) ;  Load return address into register 6
229 : LDA  7, 0(6) ;  Load return address back into register 7
230 : LDA  6, 275(0) ;  Load return address into R6
231 : ST   6, 0(5) ;  Store current return address into DMEM
232 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
233 : SUB  5, 5, 4 ;  Decrement memory offset
234 : LDC   3, 1020(0) ;  Load offset for parameter a into register 3
235 : LD  1, 0(3) ;  Load parameter a value into register 1
236 : ST   1, 0(5) ;  Store parameter into memory
237 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
238 : SUB  5, 5, 4 ;  Decrement memory offset
239 : LDC   3, 1019(0) ;  Load offset for parameter n into register 3
240 : LD  1, 0(3) ;  Load parameter n value into register 1
241 : ST   1, 0(5) ;  Store parameter into memory
242 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
243 : SUB  5, 5, 4 ;  Decrement memory offset
244 : LDC   3, 1018(0) ;  Load offset for parameter upper into register 3
245 : LD  1, 0(3) ;  Load parameter upper value into register 1
246 : ST   1, 0(5) ;  Store parameter into memory
247 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
248 : SUB  5, 5, 4 ;  Decrement memory offset
249 : LDC   3, 1017(0) ;  Load offset for parameter det into register 3
250 : LD  1, 0(3) ;  Load parameter det value into register 1
251 : ST   1, 0(5) ;  Store parameter into memory
252 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
253 : SUB  5, 5, 4 ;  Decrement memory offset
254 : LDA  6, 266(0) ;  Load return address into R6
255 : ST   6, 0(5) ;  Store current return address into DMEM
256 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
257 : SUB  5, 5, 4 ;  Decrement memory offset
258 : LDC   3, 1017(0) ;  Load offset for parameter det into register 3
259 : LD  1, 0(3) ;  Load parameter det value into register 1
260 : ST   1, 0(5) ;  Store parameter into memory
261 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
262 : SUB  5, 5, 4 ;  Decrement memory offset
263 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
264 : SUB  5, 5, 4 ;  Decrement memory offset
265 : LDA  7, 1156(0) ;  Load address of SQRT IMEM block - branch to function
266 : LD   1, 0(5) ;  Load return value from DMEM into register 1
267 : LDC  4, 3(0) ;  Load value of parameters + return value into temporary register 4
268 : ADD  5, 5, 4 ;  Increment memory offset
269 : ST   1, 0(5) ;  Store parameter into memory
270 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
271 : SUB  5, 5, 4 ;  Decrement memory offset
272 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
273 : SUB  5, 5, 4 ;  Decrement memory offset
274 : LDA  7, 283(0) ;  Load address of aLoop2 IMEM block - branch to function
275 : LD   1, 0(5) ;  Load return value from DMEM into register 1
276 : LDC  4, 7(0) ;  Load value of parameters + return value into temporary register 4
277 : ADD  5, 5, 4 ;  Increment memory offset
278 : LDC  5, 1016(0) ;  Store the memory location of aLoop1 return value
279 : ST   1, 0(5) ;  Store return value of into DMEM
280 : LDC  3, 1021(0) ;  Load return address for function aLoop1 into register 3
281 : LD   6, 0(3) ;  Load return address into register 6
282 : LDA  7, 0(6) ;  Load return address back into register 7
283 : LDA  6, 367(0) ;  Load return address into R6
284 : ST   6, 0(5) ;  Store current return address into DMEM
285 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
286 : SUB  5, 5, 4 ;  Decrement memory offset
287 : LDC   3, 1020(0) ;  Load offset for parameter a into register 3
288 : LD  1, 0(3) ;  Load parameter a value into register 1
289 : ST   1, 0(5) ;  Store parameter into memory
290 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
291 : SUB  5, 5, 4 ;  Decrement memory offset
292 : LDC   3, 1019(0) ;  Load offset for parameter n into register 3
293 : LD  1, 0(3) ;  Load parameter n value into register 1
294 : ST   1, 0(5) ;  Store parameter into memory
295 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
296 : SUB  5, 5, 4 ;  Decrement memory offset
297 : LDC   3, 1018(0) ;  Load offset for parameter upper into register 3
298 : LD  1, 0(3) ;  Load parameter upper value into register 1
299 : ST   1, 0(5) ;  Store parameter into memory
300 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
301 : SUB  5, 5, 4 ;  Decrement memory offset
302 : LDC   3, 1017(0) ;  Load offset for parameter det into register 3
303 : LD  1, 0(3) ;  Load parameter det value into register 1
304 : ST   1, 0(5) ;  Store parameter into memory
305 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
306 : SUB  5, 5, 4 ;  Decrement memory offset
307 : LDC   3, 1016(0) ;  Load offset for parameter root into register 3
308 : LD  1, 0(3) ;  Load parameter root value into register 1
309 : ST   1, 0(5) ;  Store parameter into memory
310 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
311 : SUB  5, 5, 4 ;  Decrement memory offset
312 : LDC   3, 1020(0) ;  Load offset for parameter a into register 3
313 : LD  1, 0(3) ;  Load parameter a value into register 1
314 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
315 : SUB  5, 5, 4 ;  Decrement memory offset
316 : ST   1, 0(5) ;  Store left expression value into memory
317 : LDA  6, 333(0) ;  Load return address into R6
318 : ST   6, 0(5) ;  Store current return address into DMEM
319 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
320 : SUB  5, 5, 4 ;  Decrement memory offset
321 : LDC  1, 10(0) ;  Load integer-literal value into register 1
322 : ST   1, 0(5) ;  Store parameter into memory
323 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
324 : SUB  5, 5, 4 ;  Decrement memory offset
325 : LDC   3, 1019(0) ;  Load offset for parameter n into register 3
326 : LD  1, 0(3) ;  Load parameter n value into register 1
327 : ST   1, 0(5) ;  Store parameter into memory
328 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
329 : SUB  5, 5, 4 ;  Decrement memory offset
330 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
331 : SUB  5, 5, 4 ;  Decrement memory offset
332 : LDA  7, 1288(0) ;  Load address of EXP IMEM block - branch to function
333 : LD   1, 0(5) ;  Load return value from DMEM into register 1
334 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
335 : ADD  5, 5, 4 ;  Increment memory offset
336 : LD   2, 0(5) ;  Load left expression value from memory into register 2
337 : ADD  5, 5, 4 ;  Increment memory offset
338 : MUL  1, 2, 1 ;  Multiply left and right expression values
339 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
340 : SUB  5, 5, 4 ;  Decrement memory offset
341 : ST   1, 0(5) ;  Store left expression value into memory
342 : LDC   3, 1016(0) ;  Load offset for parameter root into register 3
343 : LD  1, 0(3) ;  Load parameter root value into register 1
344 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
345 : SUB  5, 5, 4 ;  Decrement memory offset
346 : ST   1, 0(5) ;  Store left expression value into memory
347 : LDC  1, 1(0) ;  Load integer-literal value into register 1
348 : LD   2, 0(5) ;  Load left expression value from memory into register 2
349 : ADD  5, 5, 4 ;  Increment memory offset
350 : ADD  1, 2, 1 ;  Add left and right expression values
351 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
352 : SUB  5, 5, 4 ;  Decrement memory offset
353 : ST   1, 0(5) ;  Store left expression value into memory
354 : LDC  1, 2(0) ;  Load integer-literal value into register 1
355 : LD   2, 0(5) ;  Load left expression value from memory into register 2
356 : ADD  5, 5, 4 ;  Increment memory offset
357 : DIV  1, 2, 1 ;  Divide left expression by right expression value
358 : LD   2, 0(5) ;  Load left expression value from memory into register 2
359 : ADD  5, 5, 4 ;  Increment memory offset
360 : ADD  1, 2, 1 ;  Add left and right expression values
361 : ST   1, 0(5) ;  Store parameter into memory
362 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
363 : SUB  5, 5, 4 ;  Decrement memory offset
364 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
365 : SUB  5, 5, 4 ;  Decrement memory offset
366 : LDA  7, 375(0) ;  Load address of aLoop3 IMEM block - branch to function
367 : LD   1, 0(5) ;  Load return value from DMEM into register 1
368 : LDC  4, 8(0) ;  Load value of parameters + return value into temporary register 4
369 : ADD  5, 5, 4 ;  Increment memory offset
370 : LDC  5, 1015(0) ;  Store the memory location of aLoop2 return value
371 : ST   1, 0(5) ;  Store return value of into DMEM
372 : LDC  3, 1021(0) ;  Load return address for function aLoop2 into register 3
373 : LD   6, 0(3) ;  Load return address into register 6
374 : LDA  7, 0(6) ;  Load return address back into register 7
375 : LDA  6, 392(0) ;  Load return address into R6
376 : ST   6, 0(5) ;  Store current return address into DMEM
377 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
378 : SUB  5, 5, 4 ;  Decrement memory offset
379 : LDC   3, 1016(0) ;  Load offset for parameter root into register 3
380 : LD  1, 0(3) ;  Load parameter root value into register 1
381 : ST   1, 0(5) ;  Store parameter into memory
382 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
383 : SUB  5, 5, 4 ;  Decrement memory offset
384 : LDC   3, 1017(0) ;  Load offset for parameter det into register 3
385 : LD  1, 0(3) ;  Load parameter det value into register 1
386 : ST   1, 0(5) ;  Store parameter into memory
387 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
388 : SUB  5, 5, 4 ;  Decrement memory offset
389 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
390 : SUB  5, 5, 4 ;  Decrement memory offset
391 : LDA  7, 874(0) ;  Load address of ISROOT IMEM block - branch to function
392 : LD   1, 0(5) ;  Load return value from DMEM into register 1
393 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
394 : ADD  5, 5, 4 ;  Increment memory offset
395 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
396 : SUB  5, 5, 4 ;  Decrement memory offset
397 : ST   1, 0(5) ;  Store left expression value into memory
398 : LDA  6, 417(0) ;  Load return address into R6
399 : ST   6, 0(5) ;  Store current return address into DMEM
400 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
401 : SUB  5, 5, 4 ;  Decrement memory offset
402 : LDC   3, 1016(0) ;  Load offset for parameter root into register 3
403 : LD  1, 0(3) ;  Load parameter root value into register 1
404 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
405 : SUB  5, 5, 4 ;  Decrement memory offset
406 : ST   1, 0(5) ;  Store left expression value into memory
407 : LDC  1, 1(0) ;  Load integer-literal value into register 1
408 : LD   2, 0(5) ;  Load left expression value from memory into register 2
409 : ADD  5, 5, 4 ;  Increment memory offset
410 : ADD  1, 2, 1 ;  Add left and right expression values
411 : ST   1, 0(5) ;  Store parameter into memory
412 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
413 : SUB  5, 5, 4 ;  Decrement memory offset
414 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
415 : SUB  5, 5, 4 ;  Decrement memory offset
416 : LDA  7, 901(0) ;  Load address of EVEN IMEM block - branch to function
417 : LD   1, 0(5) ;  Load return value from DMEM into register 1
418 : LDC  4, 3(0) ;  Load value of parameters + return value into temporary register 4
419 : ADD  5, 5, 4 ;  Increment memory offset
420 : LD   2, 0(5) ;  Load left expression value from memory into register 2
421 : ADD  5, 5, 4 ;  Increment memory offset
422 : MUL  1, 2, 1 ;  Compute logical AND for left and right expression values
423 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
424 : SUB  5, 5, 4 ;  Decrement memory offset
425 : ST   1, 0(5) ;  Store left expression value into memory
426 : LDA  6, 438(0) ;  Load return address into R6
427 : ST   6, 0(5) ;  Store current return address into DMEM
428 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
429 : SUB  5, 5, 4 ;  Decrement memory offset
430 : LDC   3, 1015(0) ;  Load offset for parameter candidate into register 3
431 : LD  1, 0(3) ;  Load parameter candidate value into register 1
432 : ST   1, 0(5) ;  Store parameter into memory
433 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
434 : SUB  5, 5, 4 ;  Decrement memory offset
435 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
436 : SUB  5, 5, 4 ;  Decrement memory offset
437 : LDA  7, 560(0) ;  Load address of isExcellent IMEM block - branch to function
438 : LD   1, 0(5) ;  Load return value from DMEM into register 1
439 : LDC  4, 3(0) ;  Load value of parameters + return value into temporary register 4
440 : ADD  5, 5, 4 ;  Increment memory offset
441 : LD   2, 0(5) ;  Load left expression value from memory into register 2
442 : ADD  5, 5, 4 ;  Increment memory offset
443 : MUL  1, 2, 1 ;  Compute logical AND for left and right expression values
444 : JEQ  1, 476(0) ;  If condition is false, skip to ELSE block
445 : LDA  6, 472(0) ;  Load return address into R6
446 : ST   6, 0(5) ;  Store current return address into DMEM
447 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
448 : SUB  5, 5, 4 ;  Decrement memory offset
449 : LDC   3, 1020(0) ;  Load offset for parameter a into register 3
450 : LD  1, 0(3) ;  Load parameter a value into register 1
451 : ST   1, 0(5) ;  Store parameter into memory
452 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
453 : SUB  5, 5, 4 ;  Decrement memory offset
454 : LDC   3, 1019(0) ;  Load offset for parameter n into register 3
455 : LD  1, 0(3) ;  Load parameter n value into register 1
456 : ST   1, 0(5) ;  Store parameter into memory
457 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
458 : SUB  5, 5, 4 ;  Decrement memory offset
459 : LDC   3, 1018(0) ;  Load offset for parameter upper into register 3
460 : LD  1, 0(3) ;  Load parameter upper value into register 1
461 : ST   1, 0(5) ;  Store parameter into memory
462 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
463 : SUB  5, 5, 4 ;  Decrement memory offset
464 : LDC   3, 1015(0) ;  Load offset for parameter candidate into register 3
465 : LD  1, 0(3) ;  Load parameter candidate value into register 1
466 : ST   1, 0(5) ;  Store parameter into memory
467 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
468 : SUB  5, 5, 4 ;  Decrement memory offset
469 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
470 : SUB  5, 5, 4 ;  Decrement memory offset
471 : LDA  7, 513(0) ;  Load address of printCandidateAndContinue IMEM block - branch to function
472 : LD   1, 0(5) ;  Load return value from DMEM into register 1
473 : LDC  4, 6(0) ;  Load value of parameters + return value into temporary register 4
474 : ADD  5, 5, 4 ;  Increment memory offset
475 : LDA  7, 508(0) ;  Skip the ELSE block
476 : LDA  6, 505(0) ;  Load return address into R6
477 : ST   6, 0(5) ;  Store current return address into DMEM
478 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
479 : SUB  5, 5, 4 ;  Decrement memory offset
480 : LDC   3, 1020(0) ;  Load offset for parameter a into register 3
481 : LD  1, 0(3) ;  Load parameter a value into register 1
482 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
483 : SUB  5, 5, 4 ;  Decrement memory offset
484 : ST   1, 0(5) ;  Store left expression value into memory
485 : LDC  1, 1(0) ;  Load integer-literal value into register 1
486 : LD   2, 0(5) ;  Load left expression value from memory into register 2
487 : ADD  5, 5, 4 ;  Increment memory offset
488 : ADD  1, 2, 1 ;  Add left and right expression values
489 : ST   1, 0(5) ;  Store parameter into memory
490 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
491 : SUB  5, 5, 4 ;  Decrement memory offset
492 : LDC   3, 1019(0) ;  Load offset for parameter n into register 3
493 : LD  1, 0(3) ;  Load parameter n value into register 1
494 : ST   1, 0(5) ;  Store parameter into memory
495 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
496 : SUB  5, 5, 4 ;  Decrement memory offset
497 : LDC   3, 1018(0) ;  Load offset for parameter upper into register 3
498 : LD  1, 0(3) ;  Load parameter upper value into register 1
499 : ST   1, 0(5) ;  Store parameter into memory
500 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
501 : SUB  5, 5, 4 ;  Decrement memory offset
502 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
503 : SUB  5, 5, 4 ;  Decrement memory offset
504 : LDA  7, 107(0) ;  Load address of aLoop IMEM block - branch to function
505 : LD   1, 0(5) ;  Load return value from DMEM into register 1
506 : LDC  4, 5(0) ;  Load value of parameters + return value into temporary register 4
507 : ADD  5, 5, 4 ;  Increment memory offset
508 : LDC  5, 1014(0) ;  Store the memory location of aLoop3 return value
509 : ST   1, 0(5) ;  Store return value of into DMEM
510 : LDC  3, 1021(0) ;  Load return address for function aLoop3 into register 3
511 : LD   6, 0(3) ;  Load return address into register 6
512 : LDA  7, 0(6) ;  Load return address back into register 7
513 : LDA  6, 518(0) ;  Load return address into R6
514 : ST   6, 0(5) ;  Store current return address into DMEM
515 : LDC   3, 1017(0) ;  Load offset for parameter candidate into register 3
516 : LD  1, 0(3) ;  Load parameter candidate value into register 1
517 : LDA  7, 7(0) ;  Load address of print IMEM block - branch to function
518 : LDC  5, 1016(0) ;  Store the memory location of printCandidateAndContinue return value
519 : ST   1, 0(5) ;  Store return value of into DMEM
520 : LDC  3, 1021(0) ;  Load return address for function printCandidateAndContinue into register 3
521 : LD   6, 0(3) ;  Load return address into register 6
522 : LDA  7, 0(6) ;  Load return address back into register 7
523 : LDA  6, 552(0) ;  Load return address into R6
524 : ST   6, 0(5) ;  Store current return address into DMEM
525 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
526 : SUB  5, 5, 4 ;  Decrement memory offset
527 : LDC   3, 1020(0) ;  Load offset for parameter a into register 3
528 : LD  1, 0(3) ;  Load parameter a value into register 1
529 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
530 : SUB  5, 5, 4 ;  Decrement memory offset
531 : ST   1, 0(5) ;  Store left expression value into memory
532 : LDC  1, 1(0) ;  Load integer-literal value into register 1
533 : LD   2, 0(5) ;  Load left expression value from memory into register 2
534 : ADD  5, 5, 4 ;  Increment memory offset
535 : ADD  1, 2, 1 ;  Add left and right expression values
536 : ST   1, 0(5) ;  Store parameter into memory
537 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
538 : SUB  5, 5, 4 ;  Decrement memory offset
539 : LDC   3, 1019(0) ;  Load offset for parameter n into register 3
540 : LD  1, 0(3) ;  Load parameter n value into register 1
541 : ST   1, 0(5) ;  Store parameter into memory
542 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
543 : SUB  5, 5, 4 ;  Decrement memory offset
544 : LDC   3, 1018(0) ;  Load offset for parameter upper into register 3
545 : LD  1, 0(3) ;  Load parameter upper value into register 1
546 : ST   1, 0(5) ;  Store parameter into memory
547 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
548 : SUB  5, 5, 4 ;  Decrement memory offset
549 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
550 : SUB  5, 5, 4 ;  Decrement memory offset
551 : LDA  7, 107(0) ;  Load address of aLoop IMEM block - branch to function
552 : LD   1, 0(5) ;  Load return value from DMEM into register 1
553 : LDC  4, 5(0) ;  Load value of parameters + return value into temporary register 4
554 : ADD  5, 5, 4 ;  Increment memory offset
555 : LDC  5, 1016(0) ;  Store the memory location of printCandidateAndContinue return value
556 : ST   1, 0(5) ;  Store return value of into DMEM
557 : LDC  3, 1021(0) ;  Load return address for function printCandidateAndContinue into register 3
558 : LD   6, 0(3) ;  Load return address into register 6
559 : LDA  7, 0(6) ;  Load return address back into register 7
560 : LDA  6, 590(0) ;  Load return address into R6
561 : ST   6, 0(5) ;  Store current return address into DMEM
562 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
563 : SUB  5, 5, 4 ;  Decrement memory offset
564 : LDC   3, 1020(0) ;  Load offset for parameter n into register 3
565 : LD  1, 0(3) ;  Load parameter n value into register 1
566 : ST   1, 0(5) ;  Store parameter into memory
567 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
568 : SUB  5, 5, 4 ;  Decrement memory offset
569 : LDA  6, 581(0) ;  Load return address into R6
570 : ST   6, 0(5) ;  Store current return address into DMEM
571 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
572 : SUB  5, 5, 4 ;  Decrement memory offset
573 : LDC   3, 1020(0) ;  Load offset for parameter n into register 3
574 : LD  1, 0(3) ;  Load parameter n value into register 1
575 : ST   1, 0(5) ;  Store parameter into memory
576 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
577 : SUB  5, 5, 4 ;  Decrement memory offset
578 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
579 : SUB  5, 5, 4 ;  Decrement memory offset
580 : LDA  7, 824(0) ;  Load address of length IMEM block - branch to function
581 : LD   1, 0(5) ;  Load return value from DMEM into register 1
582 : LDC  4, 3(0) ;  Load value of parameters + return value into temporary register 4
583 : ADD  5, 5, 4 ;  Increment memory offset
584 : ST   1, 0(5) ;  Store parameter into memory
585 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
586 : SUB  5, 5, 4 ;  Decrement memory offset
587 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
588 : SUB  5, 5, 4 ;  Decrement memory offset
589 : LDA  7, 598(0) ;  Load address of isExcellentSwitch IMEM block - branch to function
590 : LD   1, 0(5) ;  Load return value from DMEM into register 1
591 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
592 : ADD  5, 5, 4 ;  Increment memory offset
593 : LDC  5, 1019(0) ;  Store the memory location of isExcellent return value
594 : ST   1, 0(5) ;  Store return value of into DMEM
595 : LDC  3, 1021(0) ;  Load return address for function isExcellent into register 3
596 : LD   6, 0(3) ;  Load return address into register 6
597 : LDA  7, 0(6) ;  Load return address back into register 7
598 : LDA  6, 610(0) ;  Load return address into R6
599 : ST   6, 0(5) ;  Store current return address into DMEM
600 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
601 : SUB  5, 5, 4 ;  Decrement memory offset
602 : LDC   3, 1019(0) ;  Load offset for parameter length into register 3
603 : LD  1, 0(3) ;  Load parameter length value into register 1
604 : ST   1, 0(5) ;  Store parameter into memory
605 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
606 : SUB  5, 5, 4 ;  Decrement memory offset
607 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
608 : SUB  5, 5, 4 ;  Decrement memory offset
609 : LDA  7, 1224(0) ;  Load address of ODD IMEM block - branch to function
610 : LD   1, 0(5) ;  Load return value from DMEM into register 1
611 : LDC  4, 3(0) ;  Load value of parameters + return value into temporary register 4
612 : ADD  5, 5, 4 ;  Increment memory offset
613 : JEQ  1, 616(0) ;  If condition is false, skip to ELSE block
614 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
615 : LDA  7, 674(0) ;  Skip the ELSE block
616 : LDC   3, 1020(0) ;  Load offset for parameter n into register 3
617 : LD  1, 0(3) ;  Load parameter n value into register 1
618 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
619 : SUB  5, 5, 4 ;  Decrement memory offset
620 : ST   1, 0(5) ;  Store left expression value into memory
621 : LDA  6, 664(0) ;  Load return address into R6
622 : ST   6, 0(5) ;  Store current return address into DMEM
623 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
624 : SUB  5, 5, 4 ;  Decrement memory offset
625 : LDA  6, 637(0) ;  Load return address into R6
626 : ST   6, 0(5) ;  Store current return address into DMEM
627 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
628 : SUB  5, 5, 4 ;  Decrement memory offset
629 : LDC   3, 1020(0) ;  Load offset for parameter n into register 3
630 : LD  1, 0(3) ;  Load parameter n value into register 1
631 : ST   1, 0(5) ;  Store parameter into memory
632 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
633 : SUB  5, 5, 4 ;  Decrement memory offset
634 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
635 : SUB  5, 5, 4 ;  Decrement memory offset
636 : LDA  7, 772(0) ;  Load address of a IMEM block - branch to function
637 : LD   1, 0(5) ;  Load return value from DMEM into register 1
638 : LDC  4, 3(0) ;  Load value of parameters + return value into temporary register 4
639 : ADD  5, 5, 4 ;  Increment memory offset
640 : ST   1, 0(5) ;  Store parameter into memory
641 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
642 : SUB  5, 5, 4 ;  Decrement memory offset
643 : LDA  6, 655(0) ;  Load return address into R6
644 : ST   6, 0(5) ;  Store current return address into DMEM
645 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
646 : SUB  5, 5, 4 ;  Decrement memory offset
647 : LDC   3, 1020(0) ;  Load offset for parameter n into register 3
648 : LD  1, 0(3) ;  Load parameter n value into register 1
649 : ST   1, 0(5) ;  Store parameter into memory
650 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
651 : SUB  5, 5, 4 ;  Decrement memory offset
652 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
653 : SUB  5, 5, 4 ;  Decrement memory offset
654 : LDA  7, 710(0) ;  Load address of b IMEM block - branch to function
655 : LD   1, 0(5) ;  Load return value from DMEM into register 1
656 : LDC  4, 3(0) ;  Load value of parameters + return value into temporary register 4
657 : ADD  5, 5, 4 ;  Increment memory offset
658 : ST   1, 0(5) ;  Store parameter into memory
659 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
660 : SUB  5, 5, 4 ;  Decrement memory offset
661 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
662 : SUB  5, 5, 4 ;  Decrement memory offset
663 : LDA  7, 679(0) ;  Load address of excellentDiff IMEM block - branch to function
664 : LD   1, 0(5) ;  Load return value from DMEM into register 1
665 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
666 : ADD  5, 5, 4 ;  Increment memory offset
667 : LD   2, 0(5) ;  Load left expression value from memory into register 2
668 : ADD  5, 5, 4 ;  Increment memory offset
669 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for equality check
670 : JEQ  1, 2(7) ;  If Register 1 is 0, then jump to true handling
671 : LDC  1, 0(0) ;  Load false (0) into register 1
672 : LDA  7, 1(7) ;  Jump to end of equality handling
673 : LDC  1, 1(0) ;  Load true (1) into register 1
674 : LDC  5, 1018(0) ;  Store the memory location of isExcellentSwitch return value
675 : ST   1, 0(5) ;  Store return value of into DMEM
676 : LDC  3, 1021(0) ;  Load return address for function isExcellentSwitch into register 3
677 : LD   6, 0(3) ;  Load return address into register 6
678 : LDA  7, 0(6) ;  Load return address back into register 7
679 : LDC   3, 1019(0) ;  Load offset for parameter b into register 3
680 : LD  1, 0(3) ;  Load parameter b value into register 1
681 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
682 : SUB  5, 5, 4 ;  Decrement memory offset
683 : ST   1, 0(5) ;  Store left expression value into memory
684 : LDC   3, 1019(0) ;  Load offset for parameter b into register 3
685 : LD  1, 0(3) ;  Load parameter b value into register 1
686 : LD   2, 0(5) ;  Load left expression value from memory into register 2
687 : ADD  5, 5, 4 ;  Increment memory offset
688 : MUL  1, 2, 1 ;  Multiply left and right expression values
689 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
690 : SUB  5, 5, 4 ;  Decrement memory offset
691 : ST   1, 0(5) ;  Store left expression value into memory
692 : LDC   3, 1020(0) ;  Load offset for parameter a into register 3
693 : LD  1, 0(3) ;  Load parameter a value into register 1
694 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
695 : SUB  5, 5, 4 ;  Decrement memory offset
696 : ST   1, 0(5) ;  Store left expression value into memory
697 : LDC   3, 1020(0) ;  Load offset for parameter a into register 3
698 : LD  1, 0(3) ;  Load parameter a value into register 1
699 : LD   2, 0(5) ;  Load left expression value from memory into register 2
700 : ADD  5, 5, 4 ;  Increment memory offset
701 : MUL  1, 2, 1 ;  Multiply left and right expression values
702 : LD   2, 0(5) ;  Load left expression value from memory into register 2
703 : ADD  5, 5, 4 ;  Increment memory offset
704 : SUB  1, 2, 1 ;  Subtract left expression from right expression value
705 : LDC  5, 1018(0) ;  Store the memory location of excellentDiff return value
706 : ST   1, 0(5) ;  Store return value of into DMEM
707 : LDC  3, 1021(0) ;  Load return address for function excellentDiff into register 3
708 : LD   6, 0(3) ;  Load return address into register 6
709 : LDA  7, 0(6) ;  Load return address back into register 7
710 : LDA  6, 764(0) ;  Load return address into R6
711 : ST   6, 0(5) ;  Store current return address into DMEM
712 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
713 : SUB  5, 5, 4 ;  Decrement memory offset
714 : LDC   3, 1020(0) ;  Load offset for parameter n into register 3
715 : LD  1, 0(3) ;  Load parameter n value into register 1
716 : ST   1, 0(5) ;  Store parameter into memory
717 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
718 : SUB  5, 5, 4 ;  Decrement memory offset
719 : LDA  6, 755(0) ;  Load return address into R6
720 : ST   6, 0(5) ;  Store current return address into DMEM
721 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
722 : SUB  5, 5, 4 ;  Decrement memory offset
723 : LDC  1, 10(0) ;  Load integer-literal value into register 1
724 : ST   1, 0(5) ;  Store parameter into memory
725 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
726 : SUB  5, 5, 4 ;  Decrement memory offset
727 : LDA  6, 739(0) ;  Load return address into R6
728 : ST   6, 0(5) ;  Store current return address into DMEM
729 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
730 : SUB  5, 5, 4 ;  Decrement memory offset
731 : LDC   3, 1020(0) ;  Load offset for parameter n into register 3
732 : LD  1, 0(3) ;  Load parameter n value into register 1
733 : ST   1, 0(5) ;  Store parameter into memory
734 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
735 : SUB  5, 5, 4 ;  Decrement memory offset
736 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
737 : SUB  5, 5, 4 ;  Decrement memory offset
738 : LDA  7, 824(0) ;  Load address of length IMEM block - branch to function
739 : LD   1, 0(5) ;  Load return value from DMEM into register 1
740 : LDC  4, 3(0) ;  Load value of parameters + return value into temporary register 4
741 : ADD  5, 5, 4 ;  Increment memory offset
742 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
743 : SUB  5, 5, 4 ;  Decrement memory offset
744 : ST   1, 0(5) ;  Store left expression value into memory
745 : LDC  1, 2(0) ;  Load integer-literal value into register 1
746 : LD   2, 0(5) ;  Load left expression value from memory into register 2
747 : ADD  5, 5, 4 ;  Increment memory offset
748 : DIV  1, 2, 1 ;  Divide left expression by right expression value
749 : ST   1, 0(5) ;  Store parameter into memory
750 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
751 : SUB  5, 5, 4 ;  Decrement memory offset
752 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
753 : SUB  5, 5, 4 ;  Decrement memory offset
754 : LDA  7, 1288(0) ;  Load address of EXP IMEM block - branch to function
755 : LD   1, 0(5) ;  Load return value from DMEM into register 1
756 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
757 : ADD  5, 5, 4 ;  Increment memory offset
758 : ST   1, 0(5) ;  Store parameter into memory
759 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
760 : SUB  5, 5, 4 ;  Decrement memory offset
761 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
762 : SUB  5, 5, 4 ;  Decrement memory offset
763 : LDA  7, 1344(0) ;  Load address of MOD IMEM block - branch to function
764 : LD   1, 0(5) ;  Load return value from DMEM into register 1
765 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
766 : ADD  5, 5, 4 ;  Increment memory offset
767 : LDC  5, 1019(0) ;  Store the memory location of b return value
768 : ST   1, 0(5) ;  Store return value of into DMEM
769 : LDC  3, 1021(0) ;  Load return address for function b into register 3
770 : LD   6, 0(3) ;  Load return address into register 6
771 : LDA  7, 0(6) ;  Load return address back into register 7
772 : LDC   3, 1020(0) ;  Load offset for parameter n into register 3
773 : LD  1, 0(3) ;  Load parameter n value into register 1
774 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
775 : SUB  5, 5, 4 ;  Decrement memory offset
776 : ST   1, 0(5) ;  Store left expression value into memory
777 : LDA  6, 813(0) ;  Load return address into R6
778 : ST   6, 0(5) ;  Store current return address into DMEM
779 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
780 : SUB  5, 5, 4 ;  Decrement memory offset
781 : LDC  1, 10(0) ;  Load integer-literal value into register 1
782 : ST   1, 0(5) ;  Store parameter into memory
783 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
784 : SUB  5, 5, 4 ;  Decrement memory offset
785 : LDA  6, 797(0) ;  Load return address into R6
786 : ST   6, 0(5) ;  Store current return address into DMEM
787 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
788 : SUB  5, 5, 4 ;  Decrement memory offset
789 : LDC   3, 1020(0) ;  Load offset for parameter n into register 3
790 : LD  1, 0(3) ;  Load parameter n value into register 1
791 : ST   1, 0(5) ;  Store parameter into memory
792 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
793 : SUB  5, 5, 4 ;  Decrement memory offset
794 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
795 : SUB  5, 5, 4 ;  Decrement memory offset
796 : LDA  7, 824(0) ;  Load address of length IMEM block - branch to function
797 : LD   1, 0(5) ;  Load return value from DMEM into register 1
798 : LDC  4, 3(0) ;  Load value of parameters + return value into temporary register 4
799 : ADD  5, 5, 4 ;  Increment memory offset
800 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
801 : SUB  5, 5, 4 ;  Decrement memory offset
802 : ST   1, 0(5) ;  Store left expression value into memory
803 : LDC  1, 2(0) ;  Load integer-literal value into register 1
804 : LD   2, 0(5) ;  Load left expression value from memory into register 2
805 : ADD  5, 5, 4 ;  Increment memory offset
806 : DIV  1, 2, 1 ;  Divide left expression by right expression value
807 : ST   1, 0(5) ;  Store parameter into memory
808 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
809 : SUB  5, 5, 4 ;  Decrement memory offset
810 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
811 : SUB  5, 5, 4 ;  Decrement memory offset
812 : LDA  7, 1288(0) ;  Load address of EXP IMEM block - branch to function
813 : LD   1, 0(5) ;  Load return value from DMEM into register 1
814 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
815 : ADD  5, 5, 4 ;  Increment memory offset
816 : LD   2, 0(5) ;  Load left expression value from memory into register 2
817 : ADD  5, 5, 4 ;  Increment memory offset
818 : DIV  1, 2, 1 ;  Divide left expression by right expression value
819 : LDC  5, 1019(0) ;  Store the memory location of a return value
820 : ST   1, 0(5) ;  Store return value of into DMEM
821 : LDC  3, 1021(0) ;  Load return address for function a into register 3
822 : LD   6, 0(3) ;  Load return address into register 6
823 : LDA  7, 0(6) ;  Load return address back into register 7
824 : LDC   3, 1020(0) ;  Load offset for parameter n into register 3
825 : LD  1, 0(3) ;  Load parameter n value into register 1
826 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
827 : SUB  5, 5, 4 ;  Decrement memory offset
828 : ST   1, 0(5) ;  Store left expression value into memory
829 : LDC  1, 10(0) ;  Load integer-literal value into register 1
830 : LD   2, 0(5) ;  Load left expression value from memory into register 2
831 : ADD  5, 5, 4 ;  Increment memory offset
832 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for less-than check
833 : JLT  1, 2(7) ;  If Register 1 is negative, then jump to true handling
834 : LDC  1, 0(0) ;  Load false (0) into register 1
835 : LDA  7, 1(7) ;  Jump to end of less-than handling
836 : LDC  1, 1(0) ;  Load true (1) into register 1
837 : JEQ  1, 840(0) ;  If condition is false, skip to ELSE block
838 : LDC  1, 1(0) ;  Load integer-literal value into register 1
839 : LDA  7, 869(0) ;  Skip the ELSE block
840 : LDC  1, 1(0) ;  Load integer-literal value into register 1
841 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
842 : SUB  5, 5, 4 ;  Decrement memory offset
843 : ST   1, 0(5) ;  Store left expression value into memory
844 : LDA  6, 863(0) ;  Load return address into R6
845 : ST   6, 0(5) ;  Store current return address into DMEM
846 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
847 : SUB  5, 5, 4 ;  Decrement memory offset
848 : LDC   3, 1019(0) ;  Load offset for parameter n into register 3
849 : LD  1, 0(3) ;  Load parameter n value into register 1
850 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
851 : SUB  5, 5, 4 ;  Decrement memory offset
852 : ST   1, 0(5) ;  Store left expression value into memory
853 : LDC  1, 10(0) ;  Load integer-literal value into register 1
854 : LD   2, 0(5) ;  Load left expression value from memory into register 2
855 : ADD  5, 5, 4 ;  Increment memory offset
856 : DIV  1, 2, 1 ;  Divide left expression by right expression value
857 : ST   1, 0(5) ;  Store parameter into memory
858 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
859 : SUB  5, 5, 4 ;  Decrement memory offset
860 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
861 : SUB  5, 5, 4 ;  Decrement memory offset
862 : LDA  7, 824(0) ;  Load address of length IMEM block - branch to function
863 : LD   1, 0(5) ;  Load return value from DMEM into register 1
864 : LDC  4, 3(0) ;  Load value of parameters + return value into temporary register 4
865 : ADD  5, 5, 4 ;  Increment memory offset
866 : LD   2, 0(5) ;  Load left expression value from memory into register 2
867 : ADD  5, 5, 4 ;  Increment memory offset
868 : ADD  1, 2, 1 ;  Add left and right expression values
869 : LDC  5, 1018(0) ;  Store the memory location of length return value
870 : ST   1, 0(5) ;  Store return value of into DMEM
871 : LDC  3, 1020(0) ;  Load return address for function length into register 3
872 : LD   6, 0(3) ;  Load return address into register 6
873 : LDA  7, 0(6) ;  Load return address back into register 7
874 : LDC   3, 1019(0) ;  Load offset for parameter n into register 3
875 : LD  1, 0(3) ;  Load parameter n value into register 1
876 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
877 : SUB  5, 5, 4 ;  Decrement memory offset
878 : ST   1, 0(5) ;  Store left expression value into memory
879 : LDC   3, 1020(0) ;  Load offset for parameter r into register 3
880 : LD  1, 0(3) ;  Load parameter r value into register 1
881 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
882 : SUB  5, 5, 4 ;  Decrement memory offset
883 : ST   1, 0(5) ;  Store left expression value into memory
884 : LDC   3, 1020(0) ;  Load offset for parameter r into register 3
885 : LD  1, 0(3) ;  Load parameter r value into register 1
886 : LD   2, 0(5) ;  Load left expression value from memory into register 2
887 : ADD  5, 5, 4 ;  Increment memory offset
888 : MUL  1, 2, 1 ;  Multiply left and right expression values
889 : LD   2, 0(5) ;  Load left expression value from memory into register 2
890 : ADD  5, 5, 4 ;  Increment memory offset
891 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for equality check
892 : JEQ  1, 2(7) ;  If Register 1 is 0, then jump to true handling
893 : LDC  1, 0(0) ;  Load false (0) into register 1
894 : LDA  7, 1(7) ;  Jump to end of equality handling
895 : LDC  1, 1(0) ;  Load true (1) into register 1
896 : LDC  5, 1018(0) ;  Store the memory location of ISROOT return value
897 : ST   1, 0(5) ;  Store return value of into DMEM
898 : LDC  3, 1021(0) ;  Load return address for function ISROOT into register 3
899 : LD   6, 0(3) ;  Load return address into register 6
900 : LDA  7, 0(6) ;  Load return address back into register 7
901 : LDC   3, 1020(0) ;  Load offset for parameter n into register 3
902 : LD  1, 0(3) ;  Load parameter n value into register 1
903 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
904 : SUB  5, 5, 4 ;  Decrement memory offset
905 : ST   1, 0(5) ;  Store left expression value into memory
906 : LDC  1, 2(0) ;  Load integer-literal value into register 1
907 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
908 : SUB  5, 5, 4 ;  Decrement memory offset
909 : ST   1, 0(5) ;  Store left expression value into memory
910 : LDC   3, 1020(0) ;  Load offset for parameter n into register 3
911 : LD  1, 0(3) ;  Load parameter n value into register 1
912 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
913 : SUB  5, 5, 4 ;  Decrement memory offset
914 : ST   1, 0(5) ;  Store left expression value into memory
915 : LDC  1, 2(0) ;  Load integer-literal value into register 1
916 : LD   2, 0(5) ;  Load left expression value from memory into register 2
917 : ADD  5, 5, 4 ;  Increment memory offset
918 : DIV  1, 2, 1 ;  Divide left expression by right expression value
919 : LD   2, 0(5) ;  Load left expression value from memory into register 2
920 : ADD  5, 5, 4 ;  Increment memory offset
921 : MUL  1, 2, 1 ;  Multiply left and right expression values
922 : LD   2, 0(5) ;  Load left expression value from memory into register 2
923 : ADD  5, 5, 4 ;  Increment memory offset
924 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for equality check
925 : JEQ  1, 2(7) ;  If Register 1 is 0, then jump to true handling
926 : LDC  1, 0(0) ;  Load false (0) into register 1
927 : LDA  7, 1(7) ;  Jump to end of equality handling
928 : LDC  1, 1(0) ;  Load true (1) into register 1
929 : LDC  5, 1019(0) ;  Store the memory location of EVEN return value
930 : ST   1, 0(5) ;  Store return value of into DMEM
931 : LDC  3, 1021(0) ;  Load return address for function EVEN into register 3
932 : LD   6, 0(3) ;  Load return address into register 6
933 : LDA  7, 0(6) ;  Load return address back into register 7
934 : LDA  6, 959(0) ;  Load return address into R6
935 : ST   6, 0(5) ;  Store current return address into DMEM
936 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
937 : SUB  5, 5, 4 ;  Decrement memory offset
938 : LDC   3, 1017(0) ;  Load offset for parameter mid into register 3
939 : LD  1, 0(3) ;  Load parameter mid value into register 1
940 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
941 : SUB  5, 5, 4 ;  Decrement memory offset
942 : ST   1, 0(5) ;  Store left expression value into memory
943 : LDC   3, 1017(0) ;  Load offset for parameter mid into register 3
944 : LD  1, 0(3) ;  Load parameter mid value into register 1
945 : LD   2, 0(5) ;  Load left expression value from memory into register 2
946 : ADD  5, 5, 4 ;  Increment memory offset
947 : MUL  1, 2, 1 ;  Multiply left and right expression values
948 : ST   1, 0(5) ;  Store parameter into memory
949 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
950 : SUB  5, 5, 4 ;  Decrement memory offset
951 : LDC   3, 1020(0) ;  Load offset for parameter n into register 3
952 : LD  1, 0(3) ;  Load parameter n value into register 1
953 : ST   1, 0(5) ;  Store parameter into memory
954 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
955 : SUB  5, 5, 4 ;  Decrement memory offset
956 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
957 : SUB  5, 5, 4 ;  Decrement memory offset
958 : LDA  7, 1185(0) ;  Load address of LE IMEM block - branch to function
959 : LD   1, 0(5) ;  Load return value from DMEM into register 1
960 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
961 : ADD  5, 5, 4 ;  Increment memory offset
962 : JEQ  1, 989(0) ;  If condition is false, skip to ELSE block
963 : LDA  6, 985(0) ;  Load return address into R6
964 : ST   6, 0(5) ;  Store current return address into DMEM
965 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
966 : SUB  5, 5, 4 ;  Decrement memory offset
967 : LDC   3, 1020(0) ;  Load offset for parameter n into register 3
968 : LD  1, 0(3) ;  Load parameter n value into register 1
969 : ST   1, 0(5) ;  Store parameter into memory
970 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
971 : SUB  5, 5, 4 ;  Decrement memory offset
972 : LDC   3, 1017(0) ;  Load offset for parameter mid into register 3
973 : LD  1, 0(3) ;  Load parameter mid value into register 1
974 : ST   1, 0(5) ;  Store parameter into memory
975 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
976 : SUB  5, 5, 4 ;  Decrement memory offset
977 : LDC   3, 1018(0) ;  Load offset for parameter high into register 3
978 : LD  1, 0(3) ;  Load parameter high value into register 1
979 : ST   1, 0(5) ;  Store parameter into memory
980 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
981 : SUB  5, 5, 4 ;  Decrement memory offset
982 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
983 : SUB  5, 5, 4 ;  Decrement memory offset
984 : LDA  7, 1019(0) ;  Load address of SQRTSEARCH IMEM block - branch to function
985 : LD   1, 0(5) ;  Load return value from DMEM into register 1
986 : LDC  4, 5(0) ;  Load value of parameters + return value into temporary register 4
987 : ADD  5, 5, 4 ;  Increment memory offset
988 : LDA  7, 1014(0) ;  Skip the ELSE block
989 : LDA  6, 1011(0) ;  Load return address into R6
990 : ST   6, 0(5) ;  Store current return address into DMEM
991 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
992 : SUB  5, 5, 4 ;  Decrement memory offset
993 : LDC   3, 1020(0) ;  Load offset for parameter n into register 3
994 : LD  1, 0(3) ;  Load parameter n value into register 1
995 : ST   1, 0(5) ;  Store parameter into memory
996 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
997 : SUB  5, 5, 4 ;  Decrement memory offset
998 : LDC   3, 1019(0) ;  Load offset for parameter low into register 3
999 : LD  1, 0(3) ;  Load parameter low value into register 1
1000 : ST   1, 0(5) ;  Store parameter into memory
1001 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
1002 : SUB  5, 5, 4 ;  Decrement memory offset
1003 : LDC   3, 1017(0) ;  Load offset for parameter mid into register 3
1004 : LD  1, 0(3) ;  Load parameter mid value into register 1
1005 : ST   1, 0(5) ;  Store parameter into memory
1006 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
1007 : SUB  5, 5, 4 ;  Decrement memory offset
1008 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
1009 : SUB  5, 5, 4 ;  Decrement memory offset
1010 : LDA  7, 1019(0) ;  Load address of SQRTSEARCH IMEM block - branch to function
1011 : LD   1, 0(5) ;  Load return value from DMEM into register 1
1012 : LDC  4, 5(0) ;  Load value of parameters + return value into temporary register 4
1013 : ADD  5, 5, 4 ;  Increment memory offset
1014 : LDC  5, 1016(0) ;  Store the memory location of SQRTSPLIT return value
1015 : ST   1, 0(5) ;  Store return value of into DMEM
1016 : LDC  3, 1021(0) ;  Load return address for function SQRTSPLIT into register 3
1017 : LD   6, 0(3) ;  Load return address into register 6
1018 : LDA  7, 0(6) ;  Load return address back into register 7
1019 : LDA  6, 1043(0) ;  Load return address into R6
1020 : ST   6, 0(5) ;  Store current return address into DMEM
1021 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
1022 : SUB  5, 5, 4 ;  Decrement memory offset
1023 : LDC   3, 1018(0) ;  Load offset for parameter high into register 3
1024 : LD  1, 0(3) ;  Load parameter high value into register 1
1025 : ST   1, 0(5) ;  Store parameter into memory
1026 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
1027 : SUB  5, 5, 4 ;  Decrement memory offset
1028 : LDC   3, 1019(0) ;  Load offset for parameter low into register 3
1029 : LD  1, 0(3) ;  Load parameter low value into register 1
1030 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
1031 : SUB  5, 5, 4 ;  Decrement memory offset
1032 : ST   1, 0(5) ;  Store left expression value into memory
1033 : LDC  1, 1(0) ;  Load integer-literal value into register 1
1034 : LD   2, 0(5) ;  Load left expression value from memory into register 2
1035 : ADD  5, 5, 4 ;  Increment memory offset
1036 : ADD  1, 2, 1 ;  Add left and right expression values
1037 : ST   1, 0(5) ;  Store parameter into memory
1038 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
1039 : SUB  5, 5, 4 ;  Decrement memory offset
1040 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
1041 : SUB  5, 5, 4 ;  Decrement memory offset
1042 : LDA  7, 1185(0) ;  Load address of LE IMEM block - branch to function
1043 : LD   1, 0(5) ;  Load return value from DMEM into register 1
1044 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
1045 : ADD  5, 5, 4 ;  Increment memory offset
1046 : JEQ  1, 1106(0) ;  If condition is false, skip to ELSE block
1047 : LDA  6, 1096(0) ;  Load return address into R6
1048 : ST   6, 0(5) ;  Store current return address into DMEM
1049 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
1050 : SUB  5, 5, 4 ;  Decrement memory offset
1051 : LDC   3, 1020(0) ;  Load offset for parameter n into register 3
1052 : LD  1, 0(3) ;  Load parameter n value into register 1
1053 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
1054 : SUB  5, 5, 4 ;  Decrement memory offset
1055 : ST   1, 0(5) ;  Store left expression value into memory
1056 : LDC   3, 1019(0) ;  Load offset for parameter low into register 3
1057 : LD  1, 0(3) ;  Load parameter low value into register 1
1058 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
1059 : SUB  5, 5, 4 ;  Decrement memory offset
1060 : ST   1, 0(5) ;  Store left expression value into memory
1061 : LDC   3, 1019(0) ;  Load offset for parameter low into register 3
1062 : LD  1, 0(3) ;  Load parameter low value into register 1
1063 : LD   2, 0(5) ;  Load left expression value from memory into register 2
1064 : ADD  5, 5, 4 ;  Increment memory offset
1065 : MUL  1, 2, 1 ;  Multiply left and right expression values
1066 : LD   2, 0(5) ;  Load left expression value from memory into register 2
1067 : ADD  5, 5, 4 ;  Increment memory offset
1068 : SUB  1, 2, 1 ;  Subtract left expression from right expression value
1069 : ST   1, 0(5) ;  Store parameter into memory
1070 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
1071 : SUB  5, 5, 4 ;  Decrement memory offset
1072 : LDC   3, 1018(0) ;  Load offset for parameter high into register 3
1073 : LD  1, 0(3) ;  Load parameter high value into register 1
1074 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
1075 : SUB  5, 5, 4 ;  Decrement memory offset
1076 : ST   1, 0(5) ;  Store left expression value into memory
1077 : LDC   3, 1018(0) ;  Load offset for parameter high into register 3
1078 : LD  1, 0(3) ;  Load parameter high value into register 1
1079 : LD   2, 0(5) ;  Load left expression value from memory into register 2
1080 : ADD  5, 5, 4 ;  Increment memory offset
1081 : MUL  1, 2, 1 ;  Multiply left and right expression values
1082 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
1083 : SUB  5, 5, 4 ;  Decrement memory offset
1084 : ST   1, 0(5) ;  Store left expression value into memory
1085 : LDC   3, 1020(0) ;  Load offset for parameter n into register 3
1086 : LD  1, 0(3) ;  Load parameter n value into register 1
1087 : LD   2, 0(5) ;  Load left expression value from memory into register 2
1088 : ADD  5, 5, 4 ;  Increment memory offset
1089 : SUB  1, 2, 1 ;  Subtract left expression from right expression value
1090 : ST   1, 0(5) ;  Store parameter into memory
1091 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
1092 : SUB  5, 5, 4 ;  Decrement memory offset
1093 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
1094 : SUB  5, 5, 4 ;  Decrement memory offset
1095 : LDA  7, 1185(0) ;  Load address of LE IMEM block - branch to function
1096 : LD   1, 0(5) ;  Load return value from DMEM into register 1
1097 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
1098 : ADD  5, 5, 4 ;  Increment memory offset
1099 : JEQ  1, 1103(0) ;  If condition is false, skip to ELSE block
1100 : LDC   3, 1019(0) ;  Load offset for parameter low into register 3
1101 : LD  1, 0(3) ;  Load parameter low value into register 1
1102 : LDA  7, 1105(0) ;  Skip the ELSE block
1103 : LDC   3, 1018(0) ;  Load offset for parameter high into register 3
1104 : LD  1, 0(3) ;  Load parameter high value into register 1
1105 : LDA  7, 1151(0) ;  Skip the ELSE block
1106 : LDA  6, 1148(0) ;  Load return address into R6
1107 : ST   6, 0(5) ;  Store current return address into DMEM
1108 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
1109 : SUB  5, 5, 4 ;  Decrement memory offset
1110 : LDC   3, 1020(0) ;  Load offset for parameter n into register 3
1111 : LD  1, 0(3) ;  Load parameter n value into register 1
1112 : ST   1, 0(5) ;  Store parameter into memory
1113 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
1114 : SUB  5, 5, 4 ;  Decrement memory offset
1115 : LDC   3, 1019(0) ;  Load offset for parameter low into register 3
1116 : LD  1, 0(3) ;  Load parameter low value into register 1
1117 : ST   1, 0(5) ;  Store parameter into memory
1118 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
1119 : SUB  5, 5, 4 ;  Decrement memory offset
1120 : LDC   3, 1018(0) ;  Load offset for parameter high into register 3
1121 : LD  1, 0(3) ;  Load parameter high value into register 1
1122 : ST   1, 0(5) ;  Store parameter into memory
1123 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
1124 : SUB  5, 5, 4 ;  Decrement memory offset
1125 : LDC   3, 1019(0) ;  Load offset for parameter low into register 3
1126 : LD  1, 0(3) ;  Load parameter low value into register 1
1127 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
1128 : SUB  5, 5, 4 ;  Decrement memory offset
1129 : ST   1, 0(5) ;  Store left expression value into memory
1130 : LDC   3, 1018(0) ;  Load offset for parameter high into register 3
1131 : LD  1, 0(3) ;  Load parameter high value into register 1
1132 : LD   2, 0(5) ;  Load left expression value from memory into register 2
1133 : ADD  5, 5, 4 ;  Increment memory offset
1134 : ADD  1, 2, 1 ;  Add left and right expression values
1135 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
1136 : SUB  5, 5, 4 ;  Decrement memory offset
1137 : ST   1, 0(5) ;  Store left expression value into memory
1138 : LDC  1, 2(0) ;  Load integer-literal value into register 1
1139 : LD   2, 0(5) ;  Load left expression value from memory into register 2
1140 : ADD  5, 5, 4 ;  Increment memory offset
1141 : DIV  1, 2, 1 ;  Divide left expression by right expression value
1142 : ST   1, 0(5) ;  Store parameter into memory
1143 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
1144 : SUB  5, 5, 4 ;  Decrement memory offset
1145 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
1146 : SUB  5, 5, 4 ;  Decrement memory offset
1147 : LDA  7, 934(0) ;  Load address of SQRTSPLIT IMEM block - branch to function
1148 : LD   1, 0(5) ;  Load return value from DMEM into register 1
1149 : LDC  4, 6(0) ;  Load value of parameters + return value into temporary register 4
1150 : ADD  5, 5, 4 ;  Increment memory offset
1151 : LDC  5, 1017(0) ;  Store the memory location of SQRTSEARCH return value
1152 : ST   1, 0(5) ;  Store return value of into DMEM
1153 : LDC  3, 1021(0) ;  Load return address for function SQRTSEARCH into register 3
1154 : LD   6, 0(3) ;  Load return address into register 6
1155 : LDA  7, 0(6) ;  Load return address back into register 7
1156 : LDA  6, 1177(0) ;  Load return address into R6
1157 : ST   6, 0(5) ;  Store current return address into DMEM
1158 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
1159 : SUB  5, 5, 4 ;  Decrement memory offset
1160 : LDC   3, 1020(0) ;  Load offset for parameter n into register 3
1161 : LD  1, 0(3) ;  Load parameter n value into register 1
1162 : ST   1, 0(5) ;  Store parameter into memory
1163 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
1164 : SUB  5, 5, 4 ;  Decrement memory offset
1165 : LDC  1, 0(0) ;  Load integer-literal value into register 1
1166 : ST   1, 0(5) ;  Store parameter into memory
1167 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
1168 : SUB  5, 5, 4 ;  Decrement memory offset
1169 : LDC   3, 1020(0) ;  Load offset for parameter n into register 3
1170 : LD  1, 0(3) ;  Load parameter n value into register 1
1171 : ST   1, 0(5) ;  Store parameter into memory
1172 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
1173 : SUB  5, 5, 4 ;  Decrement memory offset
1174 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
1175 : SUB  5, 5, 4 ;  Decrement memory offset
1176 : LDA  7, 1019(0) ;  Load address of SQRTSEARCH IMEM block - branch to function
1177 : LD   1, 0(5) ;  Load return value from DMEM into register 1
1178 : LDC  4, 5(0) ;  Load value of parameters + return value into temporary register 4
1179 : ADD  5, 5, 4 ;  Increment memory offset
1180 : LDC  5, 1019(0) ;  Store the memory location of SQRT return value
1181 : ST   1, 0(5) ;  Store return value of into DMEM
1182 : LDC  3, 1021(0) ;  Load return address for function SQRT into register 3
1183 : LD   6, 0(3) ;  Load return address into register 6
1184 : LDA  7, 0(6) ;  Load return address back into register 7
1185 : LDC   3, 1020(0) ;  Load offset for parameter p into register 3
1186 : LD  1, 0(3) ;  Load parameter p value into register 1
1187 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
1188 : SUB  5, 5, 4 ;  Decrement memory offset
1189 : ST   1, 0(5) ;  Store left expression value into memory
1190 : LDC   3, 1019(0) ;  Load offset for parameter q into register 3
1191 : LD  1, 0(3) ;  Load parameter q value into register 1
1192 : LD   2, 0(5) ;  Load left expression value from memory into register 2
1193 : ADD  5, 5, 4 ;  Increment memory offset
1194 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for less-than check
1195 : JLT  1, 2(7) ;  If Register 1 is negative, then jump to true handling
1196 : LDC  1, 0(0) ;  Load false (0) into register 1
1197 : LDA  7, 1(7) ;  Jump to end of less-than handling
1198 : LDC  1, 1(0) ;  Load true (1) into register 1
1199 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
1200 : SUB  5, 5, 4 ;  Decrement memory offset
1201 : ST   1, 0(5) ;  Store left expression value into memory
1202 : LDC   3, 1020(0) ;  Load offset for parameter p into register 3
1203 : LD  1, 0(3) ;  Load parameter p value into register 1
1204 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
1205 : SUB  5, 5, 4 ;  Decrement memory offset
1206 : ST   1, 0(5) ;  Store left expression value into memory
1207 : LDC   3, 1019(0) ;  Load offset for parameter q into register 3
1208 : LD  1, 0(3) ;  Load parameter q value into register 1
1209 : LD   2, 0(5) ;  Load left expression value from memory into register 2
1210 : ADD  5, 5, 4 ;  Increment memory offset
1211 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for equality check
1212 : JEQ  1, 2(7) ;  If Register 1 is 0, then jump to true handling
1213 : LDC  1, 0(0) ;  Load false (0) into register 1
1214 : LDA  7, 1(7) ;  Jump to end of equality handling
1215 : LDC  1, 1(0) ;  Load true (1) into register 1
1216 : LD   2, 0(5) ;  Load left expression value from memory into register 2
1217 : ADD  5, 5, 4 ;  Increment memory offset
1218 : ADD  1, 2, 1 ;  Compute logical OR for left and right expression values
1219 : LDC  5, 1018(0) ;  Store the memory location of LE return value
1220 : ST   1, 0(5) ;  Store return value of into DMEM
1221 : LDC  3, 1021(0) ;  Load return address for function LE into register 3
1222 : LD   6, 0(3) ;  Load return address into register 6
1223 : LDA  7, 0(6) ;  Load return address back into register 7
1224 : LDC  1, 0(0) ;  Load integer-literal value into register 1
1225 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
1226 : SUB  5, 5, 4 ;  Decrement memory offset
1227 : ST   1, 0(5) ;  Store left expression value into memory
1228 : LDC   3, 1020(0) ;  Load offset for parameter n into register 3
1229 : LD  1, 0(3) ;  Load parameter n value into register 1
1230 : LD   2, 0(5) ;  Load left expression value from memory into register 2
1231 : ADD  5, 5, 4 ;  Increment memory offset
1232 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for less-than check
1233 : JLT  1, 2(7) ;  If Register 1 is negative, then jump to true handling
1234 : LDC  1, 0(0) ;  Load false (0) into register 1
1235 : LDA  7, 1(7) ;  Jump to end of less-than handling
1236 : LDC  1, 1(0) ;  Load true (1) into register 1
1237 : JEQ  1, 1267(0) ;  If condition is false, skip to ELSE block
1238 : LDC  1, 2(0) ;  Load integer-literal value into register 1
1239 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
1240 : SUB  5, 5, 4 ;  Decrement memory offset
1241 : ST   1, 0(5) ;  Store left expression value into memory
1242 : LDC   3, 1020(0) ;  Load offset for parameter n into register 3
1243 : LD  1, 0(3) ;  Load parameter n value into register 1
1244 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
1245 : SUB  5, 5, 4 ;  Decrement memory offset
1246 : ST   1, 0(5) ;  Store left expression value into memory
1247 : LDC  1, 2(0) ;  Load integer-literal value into register 1
1248 : LD   2, 0(5) ;  Load left expression value from memory into register 2
1249 : ADD  5, 5, 4 ;  Increment memory offset
1250 : DIV  1, 2, 1 ;  Divide left expression by right expression value
1251 : LD   2, 0(5) ;  Load left expression value from memory into register 2
1252 : ADD  5, 5, 4 ;  Increment memory offset
1253 : MUL  1, 2, 1 ;  Multiply left and right expression values
1254 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
1255 : SUB  5, 5, 4 ;  Decrement memory offset
1256 : ST   1, 0(5) ;  Store left expression value into memory
1257 : LDC   3, 1020(0) ;  Load offset for parameter n into register 3
1258 : LD  1, 0(3) ;  Load parameter n value into register 1
1259 : LD   2, 0(5) ;  Load left expression value from memory into register 2
1260 : ADD  5, 5, 4 ;  Increment memory offset
1261 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for less-than check
1262 : JLT  1, 2(7) ;  If Register 1 is negative, then jump to true handling
1263 : LDC  1, 0(0) ;  Load false (0) into register 1
1264 : LDA  7, 1(7) ;  Jump to end of less-than handling
1265 : LDC  1, 1(0) ;  Load true (1) into register 1
1266 : LDA  7, 1283(0) ;  Skip the ELSE block
1267 : LDA  6, 1280(0) ;  Load return address into R6
1268 : ST   6, 0(5) ;  Store current return address into DMEM
1269 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
1270 : SUB  5, 5, 4 ;  Decrement memory offset
1271 : LDC   3, 1020(0) ;  Load offset for parameter n into register 3
1272 : LD  1, 0(3) ;  Load parameter n value into register 1
1273 : SUB  1, 0, 1 ;  Switch sign of value
1274 : ST   1, 0(5) ;  Store parameter into memory
1275 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
1276 : SUB  5, 5, 4 ;  Decrement memory offset
1277 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
1278 : SUB  5, 5, 4 ;  Decrement memory offset
1279 : LDA  7, 1224(0) ;  Load address of ODD IMEM block - branch to function
1280 : LD   1, 0(5) ;  Load return value from DMEM into register 1
1281 : LDC  4, 3(0) ;  Load value of parameters + return value into temporary register 4
1282 : ADD  5, 5, 4 ;  Increment memory offset
1283 : LDC  5, 1019(0) ;  Store the memory location of ODD return value
1284 : ST   1, 0(5) ;  Store return value of into DMEM
1285 : LDC  3, 1021(0) ;  Load return address for function ODD into register 3
1286 : LD   6, 0(3) ;  Load return address into register 6
1287 : LDA  7, 0(6) ;  Load return address back into register 7
1288 : LDC   3, 1019(0) ;  Load offset for parameter n into register 3
1289 : LD  1, 0(3) ;  Load parameter n value into register 1
1290 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
1291 : SUB  5, 5, 4 ;  Decrement memory offset
1292 : ST   1, 0(5) ;  Store left expression value into memory
1293 : LDC  1, 0(0) ;  Load integer-literal value into register 1
1294 : LD   2, 0(5) ;  Load left expression value from memory into register 2
1295 : ADD  5, 5, 4 ;  Increment memory offset
1296 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for equality check
1297 : JEQ  1, 2(7) ;  If Register 1 is 0, then jump to true handling
1298 : LDC  1, 0(0) ;  Load false (0) into register 1
1299 : LDA  7, 1(7) ;  Jump to end of equality handling
1300 : LDC  1, 1(0) ;  Load true (1) into register 1
1301 : JEQ  1, 1304(0) ;  If condition is false, skip to ELSE block
1302 : LDC  1, 1(0) ;  Load integer-literal value into register 1
1303 : LDA  7, 1339(0) ;  Skip the ELSE block
1304 : LDC   3, 1020(0) ;  Load offset for parameter m into register 3
1305 : LD  1, 0(3) ;  Load parameter m value into register 1
1306 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
1307 : SUB  5, 5, 4 ;  Decrement memory offset
1308 : ST   1, 0(5) ;  Store left expression value into memory
1309 : LDA  6, 1333(0) ;  Load return address into R6
1310 : ST   6, 0(5) ;  Store current return address into DMEM
1311 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
1312 : SUB  5, 5, 4 ;  Decrement memory offset
1313 : LDC   3, 1019(0) ;  Load offset for parameter m into register 3
1314 : LD  1, 0(3) ;  Load parameter m value into register 1
1315 : ST   1, 0(5) ;  Store parameter into memory
1316 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
1317 : SUB  5, 5, 4 ;  Decrement memory offset
1318 : LDC   3, 1018(0) ;  Load offset for parameter n into register 3
1319 : LD  1, 0(3) ;  Load parameter n value into register 1
1320 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
1321 : SUB  5, 5, 4 ;  Decrement memory offset
1322 : ST   1, 0(5) ;  Store left expression value into memory
1323 : LDC  1, 1(0) ;  Load integer-literal value into register 1
1324 : LD   2, 0(5) ;  Load left expression value from memory into register 2
1325 : ADD  5, 5, 4 ;  Increment memory offset
1326 : SUB  1, 2, 1 ;  Subtract left expression from right expression value
1327 : ST   1, 0(5) ;  Store parameter into memory
1328 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
1329 : SUB  5, 5, 4 ;  Decrement memory offset
1330 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
1331 : SUB  5, 5, 4 ;  Decrement memory offset
1332 : LDA  7, 1288(0) ;  Load address of EXP IMEM block - branch to function
1333 : LD   1, 0(5) ;  Load return value from DMEM into register 1
1334 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
1335 : ADD  5, 5, 4 ;  Increment memory offset
1336 : LD   2, 0(5) ;  Load left expression value from memory into register 2
1337 : ADD  5, 5, 4 ;  Increment memory offset
1338 : MUL  1, 2, 1 ;  Multiply left and right expression values
1339 : LDC  5, 1017(0) ;  Store the memory location of EXP return value
1340 : ST   1, 0(5) ;  Store return value of into DMEM
1341 : LDC  3, 1020(0) ;  Load return address for function EXP into register 3
1342 : LD   6, 0(3) ;  Load return address into register 6
1343 : LDA  7, 0(6) ;  Load return address back into register 7
1344 : LDC   3, 1020(0) ;  Load offset for parameter m into register 3
1345 : LD  1, 0(3) ;  Load parameter m value into register 1
1346 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
1347 : SUB  5, 5, 4 ;  Decrement memory offset
1348 : ST   1, 0(5) ;  Store left expression value into memory
1349 : LDC   3, 1019(0) ;  Load offset for parameter n into register 3
1350 : LD  1, 0(3) ;  Load parameter n value into register 1
1351 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
1352 : SUB  5, 5, 4 ;  Decrement memory offset
1353 : ST   1, 0(5) ;  Store left expression value into memory
1354 : LDC   3, 1020(0) ;  Load offset for parameter m into register 3
1355 : LD  1, 0(3) ;  Load parameter m value into register 1
1356 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
1357 : SUB  5, 5, 4 ;  Decrement memory offset
1358 : ST   1, 0(5) ;  Store left expression value into memory
1359 : LDC   3, 1019(0) ;  Load offset for parameter n into register 3
1360 : LD  1, 0(3) ;  Load parameter n value into register 1
1361 : LD   2, 0(5) ;  Load left expression value from memory into register 2
1362 : ADD  5, 5, 4 ;  Increment memory offset
1363 : DIV  1, 2, 1 ;  Divide left expression by right expression value
1364 : LD   2, 0(5) ;  Load left expression value from memory into register 2
1365 : ADD  5, 5, 4 ;  Increment memory offset
1366 : MUL  1, 2, 1 ;  Multiply left and right expression values
1367 : LD   2, 0(5) ;  Load left expression value from memory into register 2
1368 : ADD  5, 5, 4 ;  Increment memory offset
1369 : SUB  1, 2, 1 ;  Subtract left expression from right expression value
1370 : LDC  5, 1018(0) ;  Store the memory location of MOD return value
1371 : ST   1, 0(5) ;  Store return value of into DMEM
1372 : LDC  3, 1021(0) ;  Load return address for function MOD into register 3
1373 : LD   6, 0(3) ;  Load return address into register 6
1374 : LDA  7, 0(6) ;  Load return address back into register 7
1375 : LDC  5, 1021(0) ;  Store the memory location of main return value
1376 : ST   1, 0(5) ;  Store return value of into DMEM
1377 : LD   1, 0(5) ;  Load Return Value from DMEM
1378 : OUT  1, 0, 0 ;  Output value from register 1.
1379 : HALT 0, 0, 0 ;  Terminate program execution.
