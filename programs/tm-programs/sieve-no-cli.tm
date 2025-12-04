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
10 : LDA  6, 25(0) ;  Load return address into R6
11 : ST   6, 0(5) ;  Store current return address into DMEM
12 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
13 : SUB  5, 5, 4 ;  Decrement memory offset
14 : LDC  1, 2(0) ;  Load integer-literal value into register 1
15 : ST   1, 0(5) ;  Store parameter into memory
16 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
17 : SUB  5, 5, 4 ;  Decrement memory offset
18 : LDC  1, 40(0) ;  Load integer-literal value into register 1
19 : ST   1, 0(5) ;  Store parameter into memory
20 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
21 : SUB  5, 5, 4 ;  Decrement memory offset
22 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
23 : SUB  5, 5, 4 ;  Decrement memory offset
24 : LDA  7, 278(0) ;  Load address of sieveAt IMEM block - branch to function
25 : LD   1, 0(5) ;  Load return value from DMEM into register 1
26 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
27 : ADD  5, 5, 4 ;  Increment memory offset
28 : LDC  5, 1021(0) ;  Store the memory location of main return value
29 : ST   1, 0(5) ;  Store return value of into DMEM
30 : LDC   3, 1020(0) ;  Load offset for parameter num into register 3
31 : LD  1, 0(3) ;  Load parameter num value into register 1
32 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
33 : SUB  5, 5, 4 ;  Decrement memory offset
34 : ST   1, 0(5) ;  Store left expression value into memory
35 : LDC   3, 1019(0) ;  Load offset for parameter den into register 3
36 : LD  1, 0(3) ;  Load parameter den value into register 1
37 : LD   2, 0(5) ;  Load left expression value from memory into register 2
38 : ADD  5, 5, 4 ;  Increment memory offset
39 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for less-than check
40 : JLT  1, 2(7) ;  If Register 1 is negative, then jump to true handling
41 : LDC  1, 0(0) ;  Load false (0) into register 1
42 : LDA  7, 1(7) ;  Jump to end of less-than handling
43 : LDC  1, 1(0) ;  Load true (1) into register 1
44 : JEQ  1, 48(0) ;  If condition is false, skip to ELSE block
45 : LDC   3, 1020(0) ;  Load offset for parameter num into register 3
46 : LD  1, 0(3) ;  Load parameter num value into register 1
47 : LDA  7, 76(0) ;  Skip the ELSE block
48 : LDA  6, 73(0) ;  Load return address into R6
49 : ST   6, 0(5) ;  Store current return address into DMEM
50 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
51 : SUB  5, 5, 4 ;  Decrement memory offset
52 : LDC   3, 1020(0) ;  Load offset for parameter num into register 3
53 : LD  1, 0(3) ;  Load parameter num value into register 1
54 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
55 : SUB  5, 5, 4 ;  Decrement memory offset
56 : ST   1, 0(5) ;  Store left expression value into memory
57 : LDC   3, 1019(0) ;  Load offset for parameter den into register 3
58 : LD  1, 0(3) ;  Load parameter den value into register 1
59 : LD   2, 0(5) ;  Load left expression value from memory into register 2
60 : ADD  5, 5, 4 ;  Increment memory offset
61 : SUB  1, 2, 1 ;  Subtract left expression from right expression value
62 : ST   1, 0(5) ;  Store parameter into memory
63 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
64 : SUB  5, 5, 4 ;  Decrement memory offset
65 : LDC   3, 1019(0) ;  Load offset for parameter den into register 3
66 : LD  1, 0(3) ;  Load parameter den value into register 1
67 : ST   1, 0(5) ;  Store parameter into memory
68 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
69 : SUB  5, 5, 4 ;  Decrement memory offset
70 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
71 : SUB  5, 5, 4 ;  Decrement memory offset
72 : LDA  7, 30(0) ;  Load address of rem IMEM block - branch to function
73 : LD   1, 0(5) ;  Load return value from DMEM into register 1
74 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
75 : ADD  5, 5, 4 ;  Increment memory offset
76 : LDC  5, 1018(0) ;  Store the memory location of rem return value
77 : ST   1, 0(5) ;  Store return value of into DMEM
78 : LDC  3, 1021(0) ;  Load return address for function rem into register 3
79 : LD   6, 0(3) ;  Load return address into register 6
80 : LDA  7, 0(6) ;  Load return address back into register 7
81 : LDA  6, 98(0) ;  Load return address into R6
82 : ST   6, 0(5) ;  Store current return address into DMEM
83 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
84 : SUB  5, 5, 4 ;  Decrement memory offset
85 : LDC   3, 1019(0) ;  Load offset for parameter b into register 3
86 : LD  1, 0(3) ;  Load parameter b value into register 1
87 : ST   1, 0(5) ;  Store parameter into memory
88 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
89 : SUB  5, 5, 4 ;  Decrement memory offset
90 : LDC   3, 1020(0) ;  Load offset for parameter a into register 3
91 : LD  1, 0(3) ;  Load parameter a value into register 1
92 : ST   1, 0(5) ;  Store parameter into memory
93 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
94 : SUB  5, 5, 4 ;  Decrement memory offset
95 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
96 : SUB  5, 5, 4 ;  Decrement memory offset
97 : LDA  7, 30(0) ;  Load address of rem IMEM block - branch to function
98 : LD   1, 0(5) ;  Load return value from DMEM into register 1
99 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
100 : ADD  5, 5, 4 ;  Increment memory offset
101 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
102 : SUB  5, 5, 4 ;  Decrement memory offset
103 : ST   1, 0(5) ;  Store left expression value into memory
104 : LDC  1, 0(0) ;  Load integer-literal value into register 1
105 : LD   2, 0(5) ;  Load left expression value from memory into register 2
106 : ADD  5, 5, 4 ;  Increment memory offset
107 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for equality check
108 : JEQ  1, 2(7) ;  If Register 1 is 0, then jump to true handling
109 : LDC  1, 0(0) ;  Load false (0) into register 1
110 : LDA  7, 1(7) ;  Jump to end of equality handling
111 : LDC  1, 1(0) ;  Load true (1) into register 1
112 : LDC  5, 1018(0) ;  Store the memory location of divides return value
113 : ST   1, 0(5) ;  Store return value of into DMEM
114 : LDC  3, 1021(0) ;  Load return address for function divides into register 3
115 : LD   6, 0(3) ;  Load return address into register 6
116 : LDA  7, 0(6) ;  Load return address back into register 7
117 : LDC   3, 1020(0) ;  Load offset for parameter i into register 3
118 : LD  1, 0(3) ;  Load parameter i value into register 1
119 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
120 : SUB  5, 5, 4 ;  Decrement memory offset
121 : ST   1, 0(5) ;  Store left expression value into memory
122 : LDC   3, 1019(0) ;  Load offset for parameter n into register 3
123 : LD  1, 0(3) ;  Load parameter n value into register 1
124 : LD   2, 0(5) ;  Load left expression value from memory into register 2
125 : ADD  5, 5, 4 ;  Increment memory offset
126 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for less-than check
127 : JLT  1, 2(7) ;  If Register 1 is negative, then jump to true handling
128 : LDC  1, 0(0) ;  Load false (0) into register 1
129 : LDA  7, 1(7) ;  Jump to end of less-than handling
130 : LDC  1, 1(0) ;  Load true (1) into register 1
131 : JEQ  1, 186(0) ;  If condition is false, skip to ELSE block
132 : LDA  6, 149(0) ;  Load return address into R6
133 : ST   6, 0(5) ;  Store current return address into DMEM
134 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
135 : SUB  5, 5, 4 ;  Decrement memory offset
136 : LDC   3, 1020(0) ;  Load offset for parameter i into register 3
137 : LD  1, 0(3) ;  Load parameter i value into register 1
138 : ST   1, 0(5) ;  Store parameter into memory
139 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
140 : SUB  5, 5, 4 ;  Decrement memory offset
141 : LDC   3, 1019(0) ;  Load offset for parameter n into register 3
142 : LD  1, 0(3) ;  Load parameter n value into register 1
143 : ST   1, 0(5) ;  Store parameter into memory
144 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
145 : SUB  5, 5, 4 ;  Decrement memory offset
146 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
147 : SUB  5, 5, 4 ;  Decrement memory offset
148 : LDA  7, 81(0) ;  Load address of divides IMEM block - branch to function
149 : LD   1, 0(5) ;  Load return value from DMEM into register 1
150 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
151 : ADD  5, 5, 4 ;  Increment memory offset
152 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
153 : SUB  5, 5, 4 ;  Decrement memory offset
154 : ST   1, 0(5) ;  Store left expression value into memory
155 : LDA  6, 179(0) ;  Load return address into R6
156 : ST   6, 0(5) ;  Store current return address into DMEM
157 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
158 : SUB  5, 5, 4 ;  Decrement memory offset
159 : LDC   3, 1019(0) ;  Load offset for parameter i into register 3
160 : LD  1, 0(3) ;  Load parameter i value into register 1
161 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
162 : SUB  5, 5, 4 ;  Decrement memory offset
163 : ST   1, 0(5) ;  Store left expression value into memory
164 : LDC  1, 1(0) ;  Load integer-literal value into register 1
165 : LD   2, 0(5) ;  Load left expression value from memory into register 2
166 : ADD  5, 5, 4 ;  Increment memory offset
167 : ADD  1, 2, 1 ;  Add left and right expression values
168 : ST   1, 0(5) ;  Store parameter into memory
169 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
170 : SUB  5, 5, 4 ;  Decrement memory offset
171 : LDC   3, 1018(0) ;  Load offset for parameter n into register 3
172 : LD  1, 0(3) ;  Load parameter n value into register 1
173 : ST   1, 0(5) ;  Store parameter into memory
174 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
175 : SUB  5, 5, 4 ;  Decrement memory offset
176 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
177 : SUB  5, 5, 4 ;  Decrement memory offset
178 : LDA  7, 117(0) ;  Load address of hasDivisorFrom IMEM block - branch to function
179 : LD   1, 0(5) ;  Load return value from DMEM into register 1
180 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
181 : ADD  5, 5, 4 ;  Increment memory offset
182 : LD   2, 0(5) ;  Load left expression value from memory into register 2
183 : ADD  5, 5, 4 ;  Increment memory offset
184 : ADD  1, 2, 1 ;  Compute logical OR for left and right expression values
185 : LDA  7, 187(0) ;  Skip the ELSE block
186 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
187 : LDC  5, 1017(0) ;  Store the memory location of hasDivisorFrom return value
188 : ST   1, 0(5) ;  Store return value of into DMEM
189 : LDC  3, 1020(0) ;  Load return address for function hasDivisorFrom into register 3
190 : LD   6, 0(3) ;  Load return address into register 6
191 : LDA  7, 0(6) ;  Load return address back into register 7
192 : LDA  6, 208(0) ;  Load return address into R6
193 : ST   6, 0(5) ;  Store current return address into DMEM
194 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
195 : SUB  5, 5, 4 ;  Decrement memory offset
196 : LDC  1, 2(0) ;  Load integer-literal value into register 1
197 : ST   1, 0(5) ;  Store parameter into memory
198 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
199 : SUB  5, 5, 4 ;  Decrement memory offset
200 : LDC   3, 1020(0) ;  Load offset for parameter n into register 3
201 : LD  1, 0(3) ;  Load parameter n value into register 1
202 : ST   1, 0(5) ;  Store parameter into memory
203 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
204 : SUB  5, 5, 4 ;  Decrement memory offset
205 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
206 : SUB  5, 5, 4 ;  Decrement memory offset
207 : LDA  7, 117(0) ;  Load address of hasDivisorFrom IMEM block - branch to function
208 : LD   1, 0(5) ;  Load return value from DMEM into register 1
209 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
210 : ADD  5, 5, 4 ;  Increment memory offset
211 : LDC  2, 1(0) ;  Load value 1 into register 2
212 : SUB  1, 2, 1 ;  Flip boolean value
213 : LDC  5, 1019(0) ;  Store the memory location of isPrime return value
214 : ST   1, 0(5) ;  Store return value of into DMEM
215 : LDC  3, 1021(0) ;  Load return address for function isPrime into register 3
216 : LD   6, 0(3) ;  Load return address into register 6
217 : LDA  7, 0(6) ;  Load return address back into register 7
218 : LDA  6, 241(0) ;  Load return address into R6
219 : ST   6, 0(5) ;  Store current return address into DMEM
220 : LDA  6, 232(0) ;  Load return address into R6
221 : ST   6, 0(5) ;  Store current return address into DMEM
222 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
223 : SUB  5, 5, 4 ;  Decrement memory offset
224 : LDC   3, 1020(0) ;  Load offset for parameter current into register 3
225 : LD  1, 0(3) ;  Load parameter current value into register 1
226 : ST   1, 0(5) ;  Store parameter into memory
227 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
228 : SUB  5, 5, 4 ;  Decrement memory offset
229 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
230 : SUB  5, 5, 4 ;  Decrement memory offset
231 : LDA  7, 192(0) ;  Load address of isPrime IMEM block - branch to function
232 : LD   1, 0(5) ;  Load return value from DMEM into register 1
233 : LDC  4, 3(0) ;  Load value of parameters + return value into temporary register 4
234 : ADD  5, 5, 4 ;  Increment memory offset
235 : JEQ  1, 239(0) ;  If condition is false, skip to ELSE block
236 : LDC   3, 1020(0) ;  Load offset for parameter current into register 3
237 : LD  1, 0(3) ;  Load parameter current value into register 1
238 : LDA  7, 240(0) ;  Skip the ELSE block
239 : LDC  1, 0(0) ;  Load integer-literal value into register 1
240 : LDA  7, 7(0) ;  Load address of print IMEM block - branch to function
241 : LDC  5, 1018(0) ;  Store the memory location of doSieveAt return value
242 : ST   1, 0(5) ;  Store return value of into DMEM
243 : LDC  3, 1021(0) ;  Load return address for function doSieveAt into register 3
244 : LD   6, 0(3) ;  Load return address into register 6
245 : LDA  7, 0(6) ;  Load return address back into register 7
246 : LDA  6, 270(0) ;  Load return address into R6
247 : ST   6, 0(5) ;  Store current return address into DMEM
248 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
249 : SUB  5, 5, 4 ;  Decrement memory offset
250 : LDC   3, 1020(0) ;  Load offset for parameter current into register 3
251 : LD  1, 0(3) ;  Load parameter current value into register 1
252 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
253 : SUB  5, 5, 4 ;  Decrement memory offset
254 : ST   1, 0(5) ;  Store left expression value into memory
255 : LDC  1, 1(0) ;  Load integer-literal value into register 1
256 : LD   2, 0(5) ;  Load left expression value from memory into register 2
257 : ADD  5, 5, 4 ;  Increment memory offset
258 : ADD  1, 2, 1 ;  Add left and right expression values
259 : ST   1, 0(5) ;  Store parameter into memory
260 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
261 : SUB  5, 5, 4 ;  Decrement memory offset
262 : LDC   3, 1019(0) ;  Load offset for parameter max into register 3
263 : LD  1, 0(3) ;  Load parameter max value into register 1
264 : ST   1, 0(5) ;  Store parameter into memory
265 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
266 : SUB  5, 5, 4 ;  Decrement memory offset
267 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
268 : SUB  5, 5, 4 ;  Decrement memory offset
269 : LDA  7, 278(0) ;  Load address of sieveAt IMEM block - branch to function
270 : LD   1, 0(5) ;  Load return value from DMEM into register 1
271 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
272 : ADD  5, 5, 4 ;  Increment memory offset
273 : LDC  5, 1018(0) ;  Store the memory location of doSieveAt return value
274 : ST   1, 0(5) ;  Store return value of into DMEM
275 : LDC  3, 1021(0) ;  Load return address for function doSieveAt into register 3
276 : LD   6, 0(3) ;  Load return address into register 6
277 : LDA  7, 0(6) ;  Load return address back into register 7
278 : LDC   3, 1019(0) ;  Load offset for parameter max into register 3
279 : LD  1, 0(3) ;  Load parameter max value into register 1
280 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
281 : SUB  5, 5, 4 ;  Decrement memory offset
282 : ST   1, 0(5) ;  Store left expression value into memory
283 : LDC   3, 1020(0) ;  Load offset for parameter current into register 3
284 : LD  1, 0(3) ;  Load parameter current value into register 1
285 : LD   2, 0(5) ;  Load left expression value from memory into register 2
286 : ADD  5, 5, 4 ;  Increment memory offset
287 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for less-than check
288 : JLT  1, 2(7) ;  If Register 1 is negative, then jump to true handling
289 : LDC  1, 0(0) ;  Load false (0) into register 1
290 : LDA  7, 1(7) ;  Jump to end of less-than handling
291 : LDC  1, 1(0) ;  Load true (1) into register 1
292 : JEQ  1, 295(0) ;  If condition is false, skip to ELSE block
293 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
294 : LDA  7, 315(0) ;  Skip the ELSE block
295 : LDA  6, 312(0) ;  Load return address into R6
296 : ST   6, 0(5) ;  Store current return address into DMEM
297 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
298 : SUB  5, 5, 4 ;  Decrement memory offset
299 : LDC   3, 1020(0) ;  Load offset for parameter current into register 3
300 : LD  1, 0(3) ;  Load parameter current value into register 1
301 : ST   1, 0(5) ;  Store parameter into memory
302 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
303 : SUB  5, 5, 4 ;  Decrement memory offset
304 : LDC   3, 1019(0) ;  Load offset for parameter max into register 3
305 : LD  1, 0(3) ;  Load parameter max value into register 1
306 : ST   1, 0(5) ;  Store parameter into memory
307 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
308 : SUB  5, 5, 4 ;  Decrement memory offset
309 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
310 : SUB  5, 5, 4 ;  Decrement memory offset
311 : LDA  7, 218(0) ;  Load address of doSieveAt IMEM block - branch to function
312 : LD   1, 0(5) ;  Load return value from DMEM into register 1
313 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
314 : ADD  5, 5, 4 ;  Increment memory offset
315 : LDC  5, 1018(0) ;  Store the memory location of sieveAt return value
316 : ST   1, 0(5) ;  Store return value of into DMEM
317 : LDC  3, 1021(0) ;  Load return address for function sieveAt into register 3
318 : LD   6, 0(3) ;  Load return address into register 6
319 : LDA  7, 0(6) ;  Load return address back into register 7
320 : LDC  5, 1021(0) ;  Store the memory location of main return value
321 : ST   1, 0(5) ;  Store return value of into DMEM
322 : LD   1, 0(5) ;  Load Return Value from DMEM
323 : OUT  1, 0, 0 ;  Output value from register 1.
324 : HALT 0, 0, 0 ;  Terminate program execution.
