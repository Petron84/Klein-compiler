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
16 : LDC   3, 1021(0) ;  Load offset for parameter selector into register 3
17 : LD  1, 0(3) ;  Load parameter selector value into register 1
18 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
19 : SUB  5, 5, 4 ;  Decrement memory offset
20 : ST   1, 0(5) ;  Store left expression value into memory
21 : LDC  1, 3(0) ;  Load integer-literal value into register 1
22 : LD   2, 0(5) ;  Load left expression value from memory into register 2
23 : ADD  5, 5, 4 ;  Increment memory offset
24 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for equality check
25 : JEQ  1, 2(7) ;  If Register 1 is 0, then jump to true handling
26 : LDC  1, 0(0) ;  Load false (0) into register 1
27 : LDA  7, 1(7) ;  Jump to end of equality handling
28 : LDC  1, 1(0) ;  Load true (1) into register 1
29 : JEQ  1, 46(0) ;  If condition is false, skip to ELSE block
30 : LDA  6, 42(0) ;  Load return address into R6
31 : ST   6, 0(5) ;  Store current return address into DMEM
32 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
33 : SUB  5, 5, 4 ;  Decrement memory offset
34 : LDC   3, 1022(0) ;  Load offset for parameter n into register 3
35 : LD  1, 0(3) ;  Load parameter n value into register 1
36 : ST   1, 0(5) ;  Store parameter into memory
37 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
38 : SUB  5, 5, 4 ;  Decrement memory offset
39 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
40 : SUB  5, 5, 4 ;  Decrement memory offset
41 : LDA  7, 489(0) ;  Load address of emirp IMEM block - branch to function
42 : LD   1, 0(5) ;  Load return value from DMEM into register 1
43 : LDC  4, 3(0) ;  Load value of parameters + return value into temporary register 4
44 : ADD  5, 5, 4 ;  Increment memory offset
45 : LDA  7, 107(0) ;  Skip the ELSE block
46 : LDC   3, 1021(0) ;  Load offset for parameter selector into register 3
47 : LD  1, 0(3) ;  Load parameter selector value into register 1
48 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
49 : SUB  5, 5, 4 ;  Decrement memory offset
50 : ST   1, 0(5) ;  Store left expression value into memory
51 : LDC  1, 5(0) ;  Load integer-literal value into register 1
52 : LD   2, 0(5) ;  Load left expression value from memory into register 2
53 : ADD  5, 5, 4 ;  Increment memory offset
54 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for equality check
55 : JEQ  1, 2(7) ;  If Register 1 is 0, then jump to true handling
56 : LDC  1, 0(0) ;  Load false (0) into register 1
57 : LDA  7, 1(7) ;  Jump to end of equality handling
58 : LDC  1, 1(0) ;  Load true (1) into register 1
59 : JEQ  1, 76(0) ;  If condition is false, skip to ELSE block
60 : LDA  6, 72(0) ;  Load return address into R6
61 : ST   6, 0(5) ;  Store current return address into DMEM
62 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
63 : SUB  5, 5, 4 ;  Decrement memory offset
64 : LDC   3, 1022(0) ;  Load offset for parameter n into register 3
65 : LD  1, 0(3) ;  Load parameter n value into register 1
66 : ST   1, 0(5) ;  Store parameter into memory
67 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
68 : SUB  5, 5, 4 ;  Decrement memory offset
69 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
70 : SUB  5, 5, 4 ;  Decrement memory offset
71 : LDA  7, 425(0) ;  Load address of snowball IMEM block - branch to function
72 : LD   1, 0(5) ;  Load return value from DMEM into register 1
73 : LDC  4, 3(0) ;  Load value of parameters + return value into temporary register 4
74 : ADD  5, 5, 4 ;  Increment memory offset
75 : LDA  7, 107(0) ;  Skip the ELSE block
76 : LDC   3, 1021(0) ;  Load offset for parameter selector into register 3
77 : LD  1, 0(3) ;  Load parameter selector value into register 1
78 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
79 : SUB  5, 5, 4 ;  Decrement memory offset
80 : ST   1, 0(5) ;  Store left expression value into memory
81 : LDC  1, 8(0) ;  Load integer-literal value into register 1
82 : LD   2, 0(5) ;  Load left expression value from memory into register 2
83 : ADD  5, 5, 4 ;  Increment memory offset
84 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for equality check
85 : JEQ  1, 2(7) ;  If Register 1 is 0, then jump to true handling
86 : LDC  1, 0(0) ;  Load false (0) into register 1
87 : LDA  7, 1(7) ;  Jump to end of equality handling
88 : LDC  1, 1(0) ;  Load true (1) into register 1
89 : JEQ  1, 106(0) ;  If condition is false, skip to ELSE block
90 : LDA  6, 102(0) ;  Load return address into R6
91 : ST   6, 0(5) ;  Store current return address into DMEM
92 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
93 : SUB  5, 5, 4 ;  Decrement memory offset
94 : LDC   3, 1022(0) ;  Load offset for parameter n into register 3
95 : LD  1, 0(3) ;  Load parameter n value into register 1
96 : ST   1, 0(5) ;  Store parameter into memory
97 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
98 : SUB  5, 5, 4 ;  Decrement memory offset
99 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
100 : SUB  5, 5, 4 ;  Decrement memory offset
101 : LDA  7, 382(0) ;  Load address of doBoth IMEM block - branch to function
102 : LD   1, 0(5) ;  Load return value from DMEM into register 1
103 : LDC  4, 3(0) ;  Load value of parameters + return value into temporary register 4
104 : ADD  5, 5, 4 ;  Increment memory offset
105 : LDA  7, 107(0) ;  Skip the ELSE block
106 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
107 : LDC  5, 1020(0) ;  Store the memory location of main return value
108 : ST   1, 0(5) ;  Store return value of into DMEM
109 : LDC   3, 1019(0) ;  Load offset for parameter m into register 3
110 : LD  1, 0(3) ;  Load parameter m value into register 1
111 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
112 : SUB  5, 5, 4 ;  Decrement memory offset
113 : ST   1, 0(5) ;  Store left expression value into memory
114 : LDC   3, 1019(0) ;  Load offset for parameter m into register 3
115 : LD  1, 0(3) ;  Load parameter m value into register 1
116 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
117 : SUB  5, 5, 4 ;  Decrement memory offset
118 : ST   1, 0(5) ;  Store left expression value into memory
119 : LDC   3, 1018(0) ;  Load offset for parameter n into register 3
120 : LD  1, 0(3) ;  Load parameter n value into register 1
121 : LD   2, 0(5) ;  Load left expression value from memory into register 2
122 : ADD  5, 5, 4 ;  Increment memory offset
123 : DIV  1, 2, 1 ;  Divide left expression by right expression value
124 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
125 : SUB  5, 5, 4 ;  Decrement memory offset
126 : ST   1, 0(5) ;  Store left expression value into memory
127 : LDC   3, 1018(0) ;  Load offset for parameter n into register 3
128 : LD  1, 0(3) ;  Load parameter n value into register 1
129 : LD   2, 0(5) ;  Load left expression value from memory into register 2
130 : ADD  5, 5, 4 ;  Increment memory offset
131 : MUL  1, 2, 1 ;  Multiply left and right expression values
132 : LD   2, 0(5) ;  Load left expression value from memory into register 2
133 : ADD  5, 5, 4 ;  Increment memory offset
134 : SUB  1, 2, 1 ;  Subtract left expression from right expression value
135 : LDC  5, 1017(0) ;  Store the memory location of MOD return value
136 : ST   1, 0(5) ;  Store return value of into DMEM
137 : LDC  3, 1020(0) ;  Load return address for function MOD into register 3
138 : LD   6, 0(3) ;  Load return address into register 6
139 : LDA  7, 0(6) ;  Load return address back into register 7
140 : LDC   3, 1019(0) ;  Load offset for parameter n into register 3
141 : LD  1, 0(3) ;  Load parameter n value into register 1
142 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
143 : SUB  5, 5, 4 ;  Decrement memory offset
144 : ST   1, 0(5) ;  Store left expression value into memory
145 : LDC  1, 0(0) ;  Load integer-literal value into register 1
146 : LD   2, 0(5) ;  Load left expression value from memory into register 2
147 : ADD  5, 5, 4 ;  Increment memory offset
148 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for equality check
149 : JEQ  1, 2(7) ;  If Register 1 is 0, then jump to true handling
150 : LDC  1, 0(0) ;  Load false (0) into register 1
151 : LDA  7, 1(7) ;  Jump to end of equality handling
152 : LDC  1, 1(0) ;  Load true (1) into register 1
153 : JEQ  1, 157(0) ;  If condition is false, skip to ELSE block
154 : LDC   3, 1018(0) ;  Load offset for parameter nR into register 3
155 : LD  1, 0(3) ;  Load parameter nR value into register 1
156 : LDA  7, 216(0) ;  Skip the ELSE block
157 : LDA  6, 213(0) ;  Load return address into R6
158 : ST   6, 0(5) ;  Store current return address into DMEM
159 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
160 : SUB  5, 5, 4 ;  Decrement memory offset
161 : LDC   3, 1019(0) ;  Load offset for parameter n into register 3
162 : LD  1, 0(3) ;  Load parameter n value into register 1
163 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
164 : SUB  5, 5, 4 ;  Decrement memory offset
165 : ST   1, 0(5) ;  Store left expression value into memory
166 : LDC  1, 10(0) ;  Load integer-literal value into register 1
167 : LD   2, 0(5) ;  Load left expression value from memory into register 2
168 : ADD  5, 5, 4 ;  Increment memory offset
169 : DIV  1, 2, 1 ;  Divide left expression by right expression value
170 : ST   1, 0(5) ;  Store parameter into memory
171 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
172 : SUB  5, 5, 4 ;  Decrement memory offset
173 : LDC  1, 10(0) ;  Load integer-literal value into register 1
174 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
175 : SUB  5, 5, 4 ;  Decrement memory offset
176 : ST   1, 0(5) ;  Store left expression value into memory
177 : LDC   3, 1018(0) ;  Load offset for parameter nR into register 3
178 : LD  1, 0(3) ;  Load parameter nR value into register 1
179 : LD   2, 0(5) ;  Load left expression value from memory into register 2
180 : ADD  5, 5, 4 ;  Increment memory offset
181 : MUL  1, 2, 1 ;  Multiply left and right expression values
182 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
183 : SUB  5, 5, 4 ;  Decrement memory offset
184 : ST   1, 0(5) ;  Store left expression value into memory
185 : LDA  6, 201(0) ;  Load return address into R6
186 : ST   6, 0(5) ;  Store current return address into DMEM
187 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
188 : SUB  5, 5, 4 ;  Decrement memory offset
189 : LDC   3, 1019(0) ;  Load offset for parameter n into register 3
190 : LD  1, 0(3) ;  Load parameter n value into register 1
191 : ST   1, 0(5) ;  Store parameter into memory
192 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
193 : SUB  5, 5, 4 ;  Decrement memory offset
194 : LDC  1, 10(0) ;  Load integer-literal value into register 1
195 : ST   1, 0(5) ;  Store parameter into memory
196 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
197 : SUB  5, 5, 4 ;  Decrement memory offset
198 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
199 : SUB  5, 5, 4 ;  Decrement memory offset
200 : LDA  7, 109(0) ;  Load address of MOD IMEM block - branch to function
201 : LD   1, 0(5) ;  Load return value from DMEM into register 1
202 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
203 : ADD  5, 5, 4 ;  Increment memory offset
204 : LD   2, 0(5) ;  Load left expression value from memory into register 2
205 : ADD  5, 5, 4 ;  Increment memory offset
206 : ADD  1, 2, 1 ;  Add left and right expression values
207 : ST   1, 0(5) ;  Store parameter into memory
208 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
209 : SUB  5, 5, 4 ;  Decrement memory offset
210 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
211 : SUB  5, 5, 4 ;  Decrement memory offset
212 : LDA  7, 140(0) ;  Load address of reverseL IMEM block - branch to function
213 : LD   1, 0(5) ;  Load return value from DMEM into register 1
214 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
215 : ADD  5, 5, 4 ;  Increment memory offset
216 : LDC  5, 1017(0) ;  Store the memory location of reverseL return value
217 : ST   1, 0(5) ;  Store return value of into DMEM
218 : LDC  3, 1020(0) ;  Load return address for function reverseL into register 3
219 : LD   6, 0(3) ;  Load return address into register 6
220 : LDA  7, 0(6) ;  Load return address back into register 7
221 : LDA  6, 237(0) ;  Load return address into R6
222 : ST   6, 0(5) ;  Store current return address into DMEM
223 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
224 : SUB  5, 5, 4 ;  Decrement memory offset
225 : LDC   3, 1019(0) ;  Load offset for parameter n into register 3
226 : LD  1, 0(3) ;  Load parameter n value into register 1
227 : ST   1, 0(5) ;  Store parameter into memory
228 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
229 : SUB  5, 5, 4 ;  Decrement memory offset
230 : LDC  1, 0(0) ;  Load integer-literal value into register 1
231 : ST   1, 0(5) ;  Store parameter into memory
232 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
233 : SUB  5, 5, 4 ;  Decrement memory offset
234 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
235 : SUB  5, 5, 4 ;  Decrement memory offset
236 : LDA  7, 140(0) ;  Load address of reverseL IMEM block - branch to function
237 : LD   1, 0(5) ;  Load return value from DMEM into register 1
238 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
239 : ADD  5, 5, 4 ;  Increment memory offset
240 : LDC  5, 1018(0) ;  Store the memory location of reverse return value
241 : ST   1, 0(5) ;  Store return value of into DMEM
242 : LDC  3, 1020(0) ;  Load return address for function reverse into register 3
243 : LD   6, 0(3) ;  Load return address into register 6
244 : LDA  7, 0(6) ;  Load return address back into register 7
245 : LDA  6, 262(0) ;  Load return address into R6
246 : ST   6, 0(5) ;  Store current return address into DMEM
247 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
248 : SUB  5, 5, 4 ;  Decrement memory offset
249 : LDC   3, 1018(0) ;  Load offset for parameter b into register 3
250 : LD  1, 0(3) ;  Load parameter b value into register 1
251 : ST   1, 0(5) ;  Store parameter into memory
252 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
253 : SUB  5, 5, 4 ;  Decrement memory offset
254 : LDC   3, 1019(0) ;  Load offset for parameter a into register 3
255 : LD  1, 0(3) ;  Load parameter a value into register 1
256 : ST   1, 0(5) ;  Store parameter into memory
257 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
258 : SUB  5, 5, 4 ;  Decrement memory offset
259 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
260 : SUB  5, 5, 4 ;  Decrement memory offset
261 : LDA  7, 109(0) ;  Load address of MOD IMEM block - branch to function
262 : LD   1, 0(5) ;  Load return value from DMEM into register 1
263 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
264 : ADD  5, 5, 4 ;  Increment memory offset
265 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
266 : SUB  5, 5, 4 ;  Decrement memory offset
267 : ST   1, 0(5) ;  Store left expression value into memory
268 : LDC  1, 0(0) ;  Load integer-literal value into register 1
269 : LD   2, 0(5) ;  Load left expression value from memory into register 2
270 : ADD  5, 5, 4 ;  Increment memory offset
271 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for equality check
272 : JEQ  1, 2(7) ;  If Register 1 is 0, then jump to true handling
273 : LDC  1, 0(0) ;  Load false (0) into register 1
274 : LDA  7, 1(7) ;  Jump to end of equality handling
275 : LDC  1, 1(0) ;  Load true (1) into register 1
276 : LDC  5, 1017(0) ;  Store the memory location of divides return value
277 : ST   1, 0(5) ;  Store return value of into DMEM
278 : LDC  3, 1020(0) ;  Load return address for function divides into register 3
279 : LD   6, 0(3) ;  Load return address into register 6
280 : LDA  7, 0(6) ;  Load return address back into register 7
281 : LDC   3, 1019(0) ;  Load offset for parameter i into register 3
282 : LD  1, 0(3) ;  Load parameter i value into register 1
283 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
284 : SUB  5, 5, 4 ;  Decrement memory offset
285 : ST   1, 0(5) ;  Store left expression value into memory
286 : LDC   3, 1018(0) ;  Load offset for parameter n into register 3
287 : LD  1, 0(3) ;  Load parameter n value into register 1
288 : LD   2, 0(5) ;  Load left expression value from memory into register 2
289 : ADD  5, 5, 4 ;  Increment memory offset
290 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for less-than check
291 : JLT  1, 2(7) ;  If Register 1 is negative, then jump to true handling
292 : LDC  1, 0(0) ;  Load false (0) into register 1
293 : LDA  7, 1(7) ;  Jump to end of less-than handling
294 : LDC  1, 1(0) ;  Load true (1) into register 1
295 : JEQ  1, 350(0) ;  If condition is false, skip to ELSE block
296 : LDA  6, 313(0) ;  Load return address into R6
297 : ST   6, 0(5) ;  Store current return address into DMEM
298 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
299 : SUB  5, 5, 4 ;  Decrement memory offset
300 : LDC   3, 1019(0) ;  Load offset for parameter i into register 3
301 : LD  1, 0(3) ;  Load parameter i value into register 1
302 : ST   1, 0(5) ;  Store parameter into memory
303 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
304 : SUB  5, 5, 4 ;  Decrement memory offset
305 : LDC   3, 1018(0) ;  Load offset for parameter n into register 3
306 : LD  1, 0(3) ;  Load parameter n value into register 1
307 : ST   1, 0(5) ;  Store parameter into memory
308 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
309 : SUB  5, 5, 4 ;  Decrement memory offset
310 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
311 : SUB  5, 5, 4 ;  Decrement memory offset
312 : LDA  7, 245(0) ;  Load address of divides IMEM block - branch to function
313 : LD   1, 0(5) ;  Load return value from DMEM into register 1
314 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
315 : ADD  5, 5, 4 ;  Increment memory offset
316 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
317 : SUB  5, 5, 4 ;  Decrement memory offset
318 : ST   1, 0(5) ;  Store left expression value into memory
319 : LDA  6, 343(0) ;  Load return address into R6
320 : ST   6, 0(5) ;  Store current return address into DMEM
321 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
322 : SUB  5, 5, 4 ;  Decrement memory offset
323 : LDC   3, 1018(0) ;  Load offset for parameter i into register 3
324 : LD  1, 0(3) ;  Load parameter i value into register 1
325 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
326 : SUB  5, 5, 4 ;  Decrement memory offset
327 : ST   1, 0(5) ;  Store left expression value into memory
328 : LDC  1, 1(0) ;  Load integer-literal value into register 1
329 : LD   2, 0(5) ;  Load left expression value from memory into register 2
330 : ADD  5, 5, 4 ;  Increment memory offset
331 : ADD  1, 2, 1 ;  Add left and right expression values
332 : ST   1, 0(5) ;  Store parameter into memory
333 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
334 : SUB  5, 5, 4 ;  Decrement memory offset
335 : LDC   3, 1017(0) ;  Load offset for parameter n into register 3
336 : LD  1, 0(3) ;  Load parameter n value into register 1
337 : ST   1, 0(5) ;  Store parameter into memory
338 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
339 : SUB  5, 5, 4 ;  Decrement memory offset
340 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
341 : SUB  5, 5, 4 ;  Decrement memory offset
342 : LDA  7, 281(0) ;  Load address of hasDivisorFrom IMEM block - branch to function
343 : LD   1, 0(5) ;  Load return value from DMEM into register 1
344 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
345 : ADD  5, 5, 4 ;  Increment memory offset
346 : LD   2, 0(5) ;  Load left expression value from memory into register 2
347 : ADD  5, 5, 4 ;  Increment memory offset
348 : ADD  1, 2, 1 ;  Compute logical OR for left and right expression values
349 : LDA  7, 351(0) ;  Skip the ELSE block
350 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
351 : LDC  5, 1016(0) ;  Store the memory location of hasDivisorFrom return value
352 : ST   1, 0(5) ;  Store return value of into DMEM
353 : LDC  3, 1019(0) ;  Load return address for function hasDivisorFrom into register 3
354 : LD   6, 0(3) ;  Load return address into register 6
355 : LDA  7, 0(6) ;  Load return address back into register 7
356 : LDA  6, 372(0) ;  Load return address into R6
357 : ST   6, 0(5) ;  Store current return address into DMEM
358 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
359 : SUB  5, 5, 4 ;  Decrement memory offset
360 : LDC  1, 2(0) ;  Load integer-literal value into register 1
361 : ST   1, 0(5) ;  Store parameter into memory
362 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
363 : SUB  5, 5, 4 ;  Decrement memory offset
364 : LDC   3, 1019(0) ;  Load offset for parameter n into register 3
365 : LD  1, 0(3) ;  Load parameter n value into register 1
366 : ST   1, 0(5) ;  Store parameter into memory
367 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
368 : SUB  5, 5, 4 ;  Decrement memory offset
369 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
370 : SUB  5, 5, 4 ;  Decrement memory offset
371 : LDA  7, 281(0) ;  Load address of hasDivisorFrom IMEM block - branch to function
372 : LD   1, 0(5) ;  Load return value from DMEM into register 1
373 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
374 : ADD  5, 5, 4 ;  Increment memory offset
375 : LDC  2, 1(0) ;  Load value 1 into register 2
376 : SUB  1, 2, 1 ;  Flip boolean value
377 : LDC  5, 1018(0) ;  Store the memory location of isPrime return value
378 : ST   1, 0(5) ;  Store return value of into DMEM
379 : LDC  3, 1020(0) ;  Load return address for function isPrime into register 3
380 : LD   6, 0(3) ;  Load return address into register 6
381 : LDA  7, 0(6) ;  Load return address back into register 7
382 : LDA  6, 400(0) ;  Load return address into R6
383 : ST   6, 0(5) ;  Store current return address into DMEM
384 : LDA  6, 396(0) ;  Load return address into R6
385 : ST   6, 0(5) ;  Store current return address into DMEM
386 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
387 : SUB  5, 5, 4 ;  Decrement memory offset
388 : LDC   3, 1019(0) ;  Load offset for parameter n into register 3
389 : LD  1, 0(3) ;  Load parameter n value into register 1
390 : ST   1, 0(5) ;  Store parameter into memory
391 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
392 : SUB  5, 5, 4 ;  Decrement memory offset
393 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
394 : SUB  5, 5, 4 ;  Decrement memory offset
395 : LDA  7, 489(0) ;  Load address of emirp IMEM block - branch to function
396 : LD   1, 0(5) ;  Load return value from DMEM into register 1
397 : LDC  4, 3(0) ;  Load value of parameters + return value into temporary register 4
398 : ADD  5, 5, 4 ;  Increment memory offset
399 : LDA  7, 13(0) ;  Load address of print IMEM block - branch to function
400 : LDC  5, 1018(0) ;  Store the memory location of doBoth return value
401 : ST   1, 0(5) ;  Store return value of into DMEM
402 : LDC  3, 1020(0) ;  Load return address for function doBoth into register 3
403 : LD   6, 0(3) ;  Load return address into register 6
404 : LDA  7, 0(6) ;  Load return address back into register 7
405 : LDA  6, 417(0) ;  Load return address into R6
406 : ST   6, 0(5) ;  Store current return address into DMEM
407 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
408 : SUB  5, 5, 4 ;  Decrement memory offset
409 : LDC   3, 1019(0) ;  Load offset for parameter n into register 3
410 : LD  1, 0(3) ;  Load parameter n value into register 1
411 : ST   1, 0(5) ;  Store parameter into memory
412 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
413 : SUB  5, 5, 4 ;  Decrement memory offset
414 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
415 : SUB  5, 5, 4 ;  Decrement memory offset
416 : LDA  7, 425(0) ;  Load address of snowball IMEM block - branch to function
417 : LD   1, 0(5) ;  Load return value from DMEM into register 1
418 : LDC  4, 3(0) ;  Load value of parameters + return value into temporary register 4
419 : ADD  5, 5, 4 ;  Increment memory offset
420 : LDC  5, 1018(0) ;  Store the memory location of doBoth return value
421 : ST   1, 0(5) ;  Store return value of into DMEM
422 : LDC  3, 1020(0) ;  Load return address for function doBoth into register 3
423 : LD   6, 0(3) ;  Load return address into register 6
424 : LDA  7, 0(6) ;  Load return address back into register 7
425 : LDA  6, 437(0) ;  Load return address into R6
426 : ST   6, 0(5) ;  Store current return address into DMEM
427 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
428 : SUB  5, 5, 4 ;  Decrement memory offset
429 : LDC   3, 1019(0) ;  Load offset for parameter n into register 3
430 : LD  1, 0(3) ;  Load parameter n value into register 1
431 : ST   1, 0(5) ;  Store parameter into memory
432 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
433 : SUB  5, 5, 4 ;  Decrement memory offset
434 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
435 : SUB  5, 5, 4 ;  Decrement memory offset
436 : LDA  7, 356(0) ;  Load address of isPrime IMEM block - branch to function
437 : LD   1, 0(5) ;  Load return value from DMEM into register 1
438 : LDC  4, 3(0) ;  Load value of parameters + return value into temporary register 4
439 : ADD  5, 5, 4 ;  Increment memory offset
440 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
441 : SUB  5, 5, 4 ;  Decrement memory offset
442 : ST   1, 0(5) ;  Store left expression value into memory
443 : LDC   3, 1019(0) ;  Load offset for parameter n into register 3
444 : LD  1, 0(3) ;  Load parameter n value into register 1
445 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
446 : SUB  5, 5, 4 ;  Decrement memory offset
447 : ST   1, 0(5) ;  Store left expression value into memory
448 : LDC  1, 10(0) ;  Load integer-literal value into register 1
449 : LD   2, 0(5) ;  Load left expression value from memory into register 2
450 : ADD  5, 5, 4 ;  Increment memory offset
451 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for less-than check
452 : JLT  1, 2(7) ;  If Register 1 is negative, then jump to true handling
453 : LDC  1, 0(0) ;  Load false (0) into register 1
454 : LDA  7, 1(7) ;  Jump to end of less-than handling
455 : LDC  1, 1(0) ;  Load true (1) into register 1
456 : JEQ  1, 459(0) ;  If condition is false, skip to ELSE block
457 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
458 : LDA  7, 481(0) ;  Skip the ELSE block
459 : LDA  6, 478(0) ;  Load return address into R6
460 : ST   6, 0(5) ;  Store current return address into DMEM
461 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
462 : SUB  5, 5, 4 ;  Decrement memory offset
463 : LDC   3, 1019(0) ;  Load offset for parameter n into register 3
464 : LD  1, 0(3) ;  Load parameter n value into register 1
465 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
466 : SUB  5, 5, 4 ;  Decrement memory offset
467 : ST   1, 0(5) ;  Store left expression value into memory
468 : LDC  1, 10(0) ;  Load integer-literal value into register 1
469 : LD   2, 0(5) ;  Load left expression value from memory into register 2
470 : ADD  5, 5, 4 ;  Increment memory offset
471 : DIV  1, 2, 1 ;  Divide left expression by right expression value
472 : ST   1, 0(5) ;  Store parameter into memory
473 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
474 : SUB  5, 5, 4 ;  Decrement memory offset
475 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
476 : SUB  5, 5, 4 ;  Decrement memory offset
477 : LDA  7, 356(0) ;  Load address of isPrime IMEM block - branch to function
478 : LD   1, 0(5) ;  Load return value from DMEM into register 1
479 : LDC  4, 3(0) ;  Load value of parameters + return value into temporary register 4
480 : ADD  5, 5, 4 ;  Increment memory offset
481 : LD   2, 0(5) ;  Load left expression value from memory into register 2
482 : ADD  5, 5, 4 ;  Increment memory offset
483 : MUL  1, 2, 1 ;  Compute logical AND for left and right expression values
484 : LDC  5, 1018(0) ;  Store the memory location of snowball return value
485 : ST   1, 0(5) ;  Store return value of into DMEM
486 : LDC  3, 1020(0) ;  Load return address for function snowball into register 3
487 : LD   6, 0(3) ;  Load return address into register 6
488 : LDA  7, 0(6) ;  Load return address back into register 7
489 : LDA  6, 501(0) ;  Load return address into R6
490 : ST   6, 0(5) ;  Store current return address into DMEM
491 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
492 : SUB  5, 5, 4 ;  Decrement memory offset
493 : LDC   3, 1019(0) ;  Load offset for parameter n into register 3
494 : LD  1, 0(3) ;  Load parameter n value into register 1
495 : ST   1, 0(5) ;  Store parameter into memory
496 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
497 : SUB  5, 5, 4 ;  Decrement memory offset
498 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
499 : SUB  5, 5, 4 ;  Decrement memory offset
500 : LDA  7, 356(0) ;  Load address of isPrime IMEM block - branch to function
501 : LD   1, 0(5) ;  Load return value from DMEM into register 1
502 : LDC  4, 3(0) ;  Load value of parameters + return value into temporary register 4
503 : ADD  5, 5, 4 ;  Increment memory offset
504 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
505 : SUB  5, 5, 4 ;  Decrement memory offset
506 : ST   1, 0(5) ;  Store left expression value into memory
507 : LDA  6, 532(0) ;  Load return address into R6
508 : ST   6, 0(5) ;  Store current return address into DMEM
509 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
510 : SUB  5, 5, 4 ;  Decrement memory offset
511 : LDA  6, 523(0) ;  Load return address into R6
512 : ST   6, 0(5) ;  Store current return address into DMEM
513 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
514 : SUB  5, 5, 4 ;  Decrement memory offset
515 : LDC   3, 1019(0) ;  Load offset for parameter n into register 3
516 : LD  1, 0(3) ;  Load parameter n value into register 1
517 : ST   1, 0(5) ;  Store parameter into memory
518 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
519 : SUB  5, 5, 4 ;  Decrement memory offset
520 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
521 : SUB  5, 5, 4 ;  Decrement memory offset
522 : LDA  7, 221(0) ;  Load address of reverse IMEM block - branch to function
523 : LD   1, 0(5) ;  Load return value from DMEM into register 1
524 : LDC  4, 3(0) ;  Load value of parameters + return value into temporary register 4
525 : ADD  5, 5, 4 ;  Increment memory offset
526 : ST   1, 0(5) ;  Store parameter into memory
527 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
528 : SUB  5, 5, 4 ;  Decrement memory offset
529 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
530 : SUB  5, 5, 4 ;  Decrement memory offset
531 : LDA  7, 356(0) ;  Load address of isPrime IMEM block - branch to function
532 : LD   1, 0(5) ;  Load return value from DMEM into register 1
533 : LDC  4, 3(0) ;  Load value of parameters + return value into temporary register 4
534 : ADD  5, 5, 4 ;  Increment memory offset
535 : LD   2, 0(5) ;  Load left expression value from memory into register 2
536 : ADD  5, 5, 4 ;  Increment memory offset
537 : MUL  1, 2, 1 ;  Compute logical AND for left and right expression values
538 : LDC  5, 1018(0) ;  Store the memory location of emirp return value
539 : ST   1, 0(5) ;  Store return value of into DMEM
540 : LDC  3, 1020(0) ;  Load return address for function emirp into register 3
541 : LD   6, 0(3) ;  Load return address into register 6
542 : LDA  7, 0(6) ;  Load return address back into register 7
543 : LDC  5, 1020(0) ;  Store the memory location of main return value
544 : ST   1, 0(5) ;  Store return value of into DMEM
545 : LD   1, 0(5) ;  Load Return Value from DMEM
546 : OUT  1, 0, 0 ;  Output value from register 1.
547 : HALT 0, 0, 0 ;  Terminate program execution.
