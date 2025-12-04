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
10 : LDA  6, 26(0) ;  Load return address into R6
11 : ST   6, 0(5) ;  Store current return address into DMEM
12 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
13 : SUB  5, 5, 4 ;  Decrement memory offset
14 : LDC  1, 2(0) ;  Load integer-literal value into register 1
15 : ST   1, 0(5) ;  Store parameter into memory
16 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
17 : SUB  5, 5, 4 ;  Decrement memory offset
18 : LDC   3, 1022(0) ;  Load offset for parameter n into register 3
19 : LD  1, 0(3) ;  Load parameter n value into register 1
20 : ST   1, 0(5) ;  Store parameter into memory
21 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
22 : SUB  5, 5, 4 ;  Decrement memory offset
23 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
24 : SUB  5, 5, 4 ;  Decrement memory offset
25 : LDA  7, 279(0) ;  Load address of sieveAt IMEM block - branch to function
26 : LD   1, 0(5) ;  Load return value from DMEM into register 1
27 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
28 : ADD  5, 5, 4 ;  Increment memory offset
29 : LDC  5, 1021(0) ;  Store the memory location of main return value
30 : ST   1, 0(5) ;  Store return value of into DMEM
31 : LDC   3, 1020(0) ;  Load offset for parameter num into register 3
32 : LD  1, 0(3) ;  Load parameter num value into register 1
33 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
34 : SUB  5, 5, 4 ;  Decrement memory offset
35 : ST   1, 0(5) ;  Store left expression value into memory
36 : LDC   3, 1019(0) ;  Load offset for parameter den into register 3
37 : LD  1, 0(3) ;  Load parameter den value into register 1
38 : LD   2, 0(5) ;  Load left expression value from memory into register 2
39 : ADD  5, 5, 4 ;  Increment memory offset
40 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for less-than check
41 : JLT  1, 2(7) ;  If Register 1 is negative, then jump to true handling
42 : LDC  1, 0(0) ;  Load false (0) into register 1
43 : LDA  7, 1(7) ;  Jump to end of less-than handling
44 : LDC  1, 1(0) ;  Load true (1) into register 1
45 : JEQ  1, 49(0) ;  If condition is false, skip to ELSE block
46 : LDC   3, 1020(0) ;  Load offset for parameter num into register 3
47 : LD  1, 0(3) ;  Load parameter num value into register 1
48 : LDA  7, 77(0) ;  Skip the ELSE block
49 : LDA  6, 74(0) ;  Load return address into R6
50 : ST   6, 0(5) ;  Store current return address into DMEM
51 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
52 : SUB  5, 5, 4 ;  Decrement memory offset
53 : LDC   3, 1020(0) ;  Load offset for parameter num into register 3
54 : LD  1, 0(3) ;  Load parameter num value into register 1
55 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
56 : SUB  5, 5, 4 ;  Decrement memory offset
57 : ST   1, 0(5) ;  Store left expression value into memory
58 : LDC   3, 1019(0) ;  Load offset for parameter den into register 3
59 : LD  1, 0(3) ;  Load parameter den value into register 1
60 : LD   2, 0(5) ;  Load left expression value from memory into register 2
61 : ADD  5, 5, 4 ;  Increment memory offset
62 : SUB  1, 2, 1 ;  Subtract left expression from right expression value
63 : ST   1, 0(5) ;  Store parameter into memory
64 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
65 : SUB  5, 5, 4 ;  Decrement memory offset
66 : LDC   3, 1019(0) ;  Load offset for parameter den into register 3
67 : LD  1, 0(3) ;  Load parameter den value into register 1
68 : ST   1, 0(5) ;  Store parameter into memory
69 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
70 : SUB  5, 5, 4 ;  Decrement memory offset
71 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
72 : SUB  5, 5, 4 ;  Decrement memory offset
73 : LDA  7, 31(0) ;  Load address of rem IMEM block - branch to function
74 : LD   1, 0(5) ;  Load return value from DMEM into register 1
75 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
76 : ADD  5, 5, 4 ;  Increment memory offset
77 : LDC  5, 1018(0) ;  Store the memory location of rem return value
78 : ST   1, 0(5) ;  Store return value of into DMEM
79 : LDC  3, 1021(0) ;  Load return address for function rem into register 3
80 : LD   6, 0(3) ;  Load return address into register 6
81 : LDA  7, 0(6) ;  Load return address back into register 7
82 : LDA  6, 99(0) ;  Load return address into R6
83 : ST   6, 0(5) ;  Store current return address into DMEM
84 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
85 : SUB  5, 5, 4 ;  Decrement memory offset
86 : LDC   3, 1019(0) ;  Load offset for parameter b into register 3
87 : LD  1, 0(3) ;  Load parameter b value into register 1
88 : ST   1, 0(5) ;  Store parameter into memory
89 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
90 : SUB  5, 5, 4 ;  Decrement memory offset
91 : LDC   3, 1020(0) ;  Load offset for parameter a into register 3
92 : LD  1, 0(3) ;  Load parameter a value into register 1
93 : ST   1, 0(5) ;  Store parameter into memory
94 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
95 : SUB  5, 5, 4 ;  Decrement memory offset
96 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
97 : SUB  5, 5, 4 ;  Decrement memory offset
98 : LDA  7, 31(0) ;  Load address of rem IMEM block - branch to function
99 : LD   1, 0(5) ;  Load return value from DMEM into register 1
100 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
101 : ADD  5, 5, 4 ;  Increment memory offset
102 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
103 : SUB  5, 5, 4 ;  Decrement memory offset
104 : ST   1, 0(5) ;  Store left expression value into memory
105 : LDC  1, 0(0) ;  Load integer-literal value into register 1
106 : LD   2, 0(5) ;  Load left expression value from memory into register 2
107 : ADD  5, 5, 4 ;  Increment memory offset
108 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for equality check
109 : JEQ  1, 2(7) ;  If Register 1 is 0, then jump to true handling
110 : LDC  1, 0(0) ;  Load false (0) into register 1
111 : LDA  7, 1(7) ;  Jump to end of equality handling
112 : LDC  1, 1(0) ;  Load true (1) into register 1
113 : LDC  5, 1018(0) ;  Store the memory location of divides return value
114 : ST   1, 0(5) ;  Store return value of into DMEM
115 : LDC  3, 1021(0) ;  Load return address for function divides into register 3
116 : LD   6, 0(3) ;  Load return address into register 6
117 : LDA  7, 0(6) ;  Load return address back into register 7
118 : LDC   3, 1020(0) ;  Load offset for parameter i into register 3
119 : LD  1, 0(3) ;  Load parameter i value into register 1
120 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
121 : SUB  5, 5, 4 ;  Decrement memory offset
122 : ST   1, 0(5) ;  Store left expression value into memory
123 : LDC   3, 1019(0) ;  Load offset for parameter n into register 3
124 : LD  1, 0(3) ;  Load parameter n value into register 1
125 : LD   2, 0(5) ;  Load left expression value from memory into register 2
126 : ADD  5, 5, 4 ;  Increment memory offset
127 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for less-than check
128 : JLT  1, 2(7) ;  If Register 1 is negative, then jump to true handling
129 : LDC  1, 0(0) ;  Load false (0) into register 1
130 : LDA  7, 1(7) ;  Jump to end of less-than handling
131 : LDC  1, 1(0) ;  Load true (1) into register 1
132 : JEQ  1, 187(0) ;  If condition is false, skip to ELSE block
133 : LDA  6, 150(0) ;  Load return address into R6
134 : ST   6, 0(5) ;  Store current return address into DMEM
135 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
136 : SUB  5, 5, 4 ;  Decrement memory offset
137 : LDC   3, 1020(0) ;  Load offset for parameter i into register 3
138 : LD  1, 0(3) ;  Load parameter i value into register 1
139 : ST   1, 0(5) ;  Store parameter into memory
140 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
141 : SUB  5, 5, 4 ;  Decrement memory offset
142 : LDC   3, 1019(0) ;  Load offset for parameter n into register 3
143 : LD  1, 0(3) ;  Load parameter n value into register 1
144 : ST   1, 0(5) ;  Store parameter into memory
145 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
146 : SUB  5, 5, 4 ;  Decrement memory offset
147 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
148 : SUB  5, 5, 4 ;  Decrement memory offset
149 : LDA  7, 82(0) ;  Load address of divides IMEM block - branch to function
150 : LD   1, 0(5) ;  Load return value from DMEM into register 1
151 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
152 : ADD  5, 5, 4 ;  Increment memory offset
153 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
154 : SUB  5, 5, 4 ;  Decrement memory offset
155 : ST   1, 0(5) ;  Store left expression value into memory
156 : LDA  6, 180(0) ;  Load return address into R6
157 : ST   6, 0(5) ;  Store current return address into DMEM
158 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
159 : SUB  5, 5, 4 ;  Decrement memory offset
160 : LDC   3, 1019(0) ;  Load offset for parameter i into register 3
161 : LD  1, 0(3) ;  Load parameter i value into register 1
162 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
163 : SUB  5, 5, 4 ;  Decrement memory offset
164 : ST   1, 0(5) ;  Store left expression value into memory
165 : LDC  1, 1(0) ;  Load integer-literal value into register 1
166 : LD   2, 0(5) ;  Load left expression value from memory into register 2
167 : ADD  5, 5, 4 ;  Increment memory offset
168 : ADD  1, 2, 1 ;  Add left and right expression values
169 : ST   1, 0(5) ;  Store parameter into memory
170 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
171 : SUB  5, 5, 4 ;  Decrement memory offset
172 : LDC   3, 1018(0) ;  Load offset for parameter n into register 3
173 : LD  1, 0(3) ;  Load parameter n value into register 1
174 : ST   1, 0(5) ;  Store parameter into memory
175 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
176 : SUB  5, 5, 4 ;  Decrement memory offset
177 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
178 : SUB  5, 5, 4 ;  Decrement memory offset
179 : LDA  7, 118(0) ;  Load address of hasDivisorFrom IMEM block - branch to function
180 : LD   1, 0(5) ;  Load return value from DMEM into register 1
181 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
182 : ADD  5, 5, 4 ;  Increment memory offset
183 : LD   2, 0(5) ;  Load left expression value from memory into register 2
184 : ADD  5, 5, 4 ;  Increment memory offset
185 : ADD  1, 2, 1 ;  Compute logical OR for left and right expression values
186 : LDA  7, 188(0) ;  Skip the ELSE block
187 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
188 : LDC  5, 1017(0) ;  Store the memory location of hasDivisorFrom return value
189 : ST   1, 0(5) ;  Store return value of into DMEM
190 : LDC  3, 1020(0) ;  Load return address for function hasDivisorFrom into register 3
191 : LD   6, 0(3) ;  Load return address into register 6
192 : LDA  7, 0(6) ;  Load return address back into register 7
193 : LDA  6, 209(0) ;  Load return address into R6
194 : ST   6, 0(5) ;  Store current return address into DMEM
195 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
196 : SUB  5, 5, 4 ;  Decrement memory offset
197 : LDC  1, 2(0) ;  Load integer-literal value into register 1
198 : ST   1, 0(5) ;  Store parameter into memory
199 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
200 : SUB  5, 5, 4 ;  Decrement memory offset
201 : LDC   3, 1020(0) ;  Load offset for parameter n into register 3
202 : LD  1, 0(3) ;  Load parameter n value into register 1
203 : ST   1, 0(5) ;  Store parameter into memory
204 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
205 : SUB  5, 5, 4 ;  Decrement memory offset
206 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
207 : SUB  5, 5, 4 ;  Decrement memory offset
208 : LDA  7, 118(0) ;  Load address of hasDivisorFrom IMEM block - branch to function
209 : LD   1, 0(5) ;  Load return value from DMEM into register 1
210 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
211 : ADD  5, 5, 4 ;  Increment memory offset
212 : LDC  2, 1(0) ;  Load value 1 into register 2
213 : SUB  1, 2, 1 ;  Flip boolean value
214 : LDC  5, 1019(0) ;  Store the memory location of isPrime return value
215 : ST   1, 0(5) ;  Store return value of into DMEM
216 : LDC  3, 1021(0) ;  Load return address for function isPrime into register 3
217 : LD   6, 0(3) ;  Load return address into register 6
218 : LDA  7, 0(6) ;  Load return address back into register 7
219 : LDA  6, 242(0) ;  Load return address into R6
220 : ST   6, 0(5) ;  Store current return address into DMEM
221 : LDA  6, 233(0) ;  Load return address into R6
222 : ST   6, 0(5) ;  Store current return address into DMEM
223 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
224 : SUB  5, 5, 4 ;  Decrement memory offset
225 : LDC   3, 1020(0) ;  Load offset for parameter current into register 3
226 : LD  1, 0(3) ;  Load parameter current value into register 1
227 : ST   1, 0(5) ;  Store parameter into memory
228 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
229 : SUB  5, 5, 4 ;  Decrement memory offset
230 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
231 : SUB  5, 5, 4 ;  Decrement memory offset
232 : LDA  7, 193(0) ;  Load address of isPrime IMEM block - branch to function
233 : LD   1, 0(5) ;  Load return value from DMEM into register 1
234 : LDC  4, 3(0) ;  Load value of parameters + return value into temporary register 4
235 : ADD  5, 5, 4 ;  Increment memory offset
236 : JEQ  1, 240(0) ;  If condition is false, skip to ELSE block
237 : LDC   3, 1020(0) ;  Load offset for parameter current into register 3
238 : LD  1, 0(3) ;  Load parameter current value into register 1
239 : LDA  7, 241(0) ;  Skip the ELSE block
240 : LDC  1, 0(0) ;  Load integer-literal value into register 1
241 : LDA  7, 7(0) ;  Load address of print IMEM block - branch to function
242 : LDC  5, 1018(0) ;  Store the memory location of doSieveAt return value
243 : ST   1, 0(5) ;  Store return value of into DMEM
244 : LDC  3, 1021(0) ;  Load return address for function doSieveAt into register 3
245 : LD   6, 0(3) ;  Load return address into register 6
246 : LDA  7, 0(6) ;  Load return address back into register 7
247 : LDA  6, 271(0) ;  Load return address into R6
248 : ST   6, 0(5) ;  Store current return address into DMEM
249 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
250 : SUB  5, 5, 4 ;  Decrement memory offset
251 : LDC   3, 1020(0) ;  Load offset for parameter current into register 3
252 : LD  1, 0(3) ;  Load parameter current value into register 1
253 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
254 : SUB  5, 5, 4 ;  Decrement memory offset
255 : ST   1, 0(5) ;  Store left expression value into memory
256 : LDC  1, 1(0) ;  Load integer-literal value into register 1
257 : LD   2, 0(5) ;  Load left expression value from memory into register 2
258 : ADD  5, 5, 4 ;  Increment memory offset
259 : ADD  1, 2, 1 ;  Add left and right expression values
260 : ST   1, 0(5) ;  Store parameter into memory
261 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
262 : SUB  5, 5, 4 ;  Decrement memory offset
263 : LDC   3, 1019(0) ;  Load offset for parameter max into register 3
264 : LD  1, 0(3) ;  Load parameter max value into register 1
265 : ST   1, 0(5) ;  Store parameter into memory
266 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
267 : SUB  5, 5, 4 ;  Decrement memory offset
268 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
269 : SUB  5, 5, 4 ;  Decrement memory offset
270 : LDA  7, 279(0) ;  Load address of sieveAt IMEM block - branch to function
271 : LD   1, 0(5) ;  Load return value from DMEM into register 1
272 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
273 : ADD  5, 5, 4 ;  Increment memory offset
274 : LDC  5, 1018(0) ;  Store the memory location of doSieveAt return value
275 : ST   1, 0(5) ;  Store return value of into DMEM
276 : LDC  3, 1021(0) ;  Load return address for function doSieveAt into register 3
277 : LD   6, 0(3) ;  Load return address into register 6
278 : LDA  7, 0(6) ;  Load return address back into register 7
279 : LDC   3, 1019(0) ;  Load offset for parameter max into register 3
280 : LD  1, 0(3) ;  Load parameter max value into register 1
281 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
282 : SUB  5, 5, 4 ;  Decrement memory offset
283 : ST   1, 0(5) ;  Store left expression value into memory
284 : LDC   3, 1020(0) ;  Load offset for parameter current into register 3
285 : LD  1, 0(3) ;  Load parameter current value into register 1
286 : LD   2, 0(5) ;  Load left expression value from memory into register 2
287 : ADD  5, 5, 4 ;  Increment memory offset
288 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for less-than check
289 : JLT  1, 2(7) ;  If Register 1 is negative, then jump to true handling
290 : LDC  1, 0(0) ;  Load false (0) into register 1
291 : LDA  7, 1(7) ;  Jump to end of less-than handling
292 : LDC  1, 1(0) ;  Load true (1) into register 1
293 : JEQ  1, 296(0) ;  If condition is false, skip to ELSE block
294 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
295 : LDA  7, 316(0) ;  Skip the ELSE block
296 : LDA  6, 313(0) ;  Load return address into R6
297 : ST   6, 0(5) ;  Store current return address into DMEM
298 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
299 : SUB  5, 5, 4 ;  Decrement memory offset
300 : LDC   3, 1020(0) ;  Load offset for parameter current into register 3
301 : LD  1, 0(3) ;  Load parameter current value into register 1
302 : ST   1, 0(5) ;  Store parameter into memory
303 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
304 : SUB  5, 5, 4 ;  Decrement memory offset
305 : LDC   3, 1019(0) ;  Load offset for parameter max into register 3
306 : LD  1, 0(3) ;  Load parameter max value into register 1
307 : ST   1, 0(5) ;  Store parameter into memory
308 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
309 : SUB  5, 5, 4 ;  Decrement memory offset
310 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
311 : SUB  5, 5, 4 ;  Decrement memory offset
312 : LDA  7, 219(0) ;  Load address of doSieveAt IMEM block - branch to function
313 : LD   1, 0(5) ;  Load return value from DMEM into register 1
314 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
315 : ADD  5, 5, 4 ;  Increment memory offset
316 : LDC  5, 1018(0) ;  Store the memory location of sieveAt return value
317 : ST   1, 0(5) ;  Store return value of into DMEM
318 : LDC  3, 1021(0) ;  Load return address for function sieveAt into register 3
319 : LD   6, 0(3) ;  Load return address into register 6
320 : LDA  7, 0(6) ;  Load return address back into register 7
321 : LDC  5, 1021(0) ;  Store the memory location of main return value
322 : ST   1, 0(5) ;  Store return value of into DMEM
323 : LD   1, 0(5) ;  Load Return Value from DMEM
324 : OUT  1, 0, 0 ;  Output value from register 1.
325 : HALT 0, 0, 0 ;  Terminate program execution.
