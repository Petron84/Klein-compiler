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
22 : LDA  6, 50(0) ;  Load return address into R6
23 : ST   6, 0(5) ;  Store current return address into DMEM
24 : LDA  6, 46(0) ;  Load return address into R6
25 : ST   6, 0(5) ;  Store current return address into DMEM
26 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
27 : SUB  5, 5, 4 ;  Decrement memory offset
28 : LDC   3, 1022(0) ;  Load offset for parameter xNum into register 3
29 : LD  1, 0(3) ;  Load parameter xNum value into register 1
30 : ST   1, 0(5) ;  Store parameter into memory
31 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
32 : SUB  5, 5, 4 ;  Decrement memory offset
33 : LDC   3, 1021(0) ;  Load offset for parameter xDen into register 3
34 : LD  1, 0(3) ;  Load parameter xDen value into register 1
35 : ST   1, 0(5) ;  Store parameter into memory
36 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
37 : SUB  5, 5, 4 ;  Decrement memory offset
38 : LDC   3, 1020(0) ;  Load offset for parameter N into register 3
39 : LD  1, 0(3) ;  Load parameter N value into register 1
40 : ST   1, 0(5) ;  Store parameter into memory
41 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
42 : SUB  5, 5, 4 ;  Decrement memory offset
43 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
44 : SUB  5, 5, 4 ;  Decrement memory offset
45 : LDA  7, 889(0) ;  Load address of fareyNum IMEM block - branch to function
46 : LD   1, 0(5) ;  Load return value from DMEM into register 1
47 : LDC  4, 5(0) ;  Load value of parameters + return value into temporary register 4
48 : ADD  5, 5, 4 ;  Increment memory offset
49 : LDA  7, 19(0) ;  Load address of print IMEM block - branch to function
50 : LDC  5, 1019(0) ;  Store the memory location of main return value
51 : ST   1, 0(5) ;  Store return value of into DMEM
52 : LDA  6, 74(0) ;  Load return address into R6
53 : ST   6, 0(5) ;  Store current return address into DMEM
54 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
55 : SUB  5, 5, 4 ;  Decrement memory offset
56 : LDC   3, 1022(0) ;  Load offset for parameter xNum into register 3
57 : LD  1, 0(3) ;  Load parameter xNum value into register 1
58 : ST   1, 0(5) ;  Store parameter into memory
59 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
60 : SUB  5, 5, 4 ;  Decrement memory offset
61 : LDC   3, 1021(0) ;  Load offset for parameter xDen into register 3
62 : LD  1, 0(3) ;  Load parameter xDen value into register 1
63 : ST   1, 0(5) ;  Store parameter into memory
64 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
65 : SUB  5, 5, 4 ;  Decrement memory offset
66 : LDC   3, 1020(0) ;  Load offset for parameter N into register 3
67 : LD  1, 0(3) ;  Load parameter N value into register 1
68 : ST   1, 0(5) ;  Store parameter into memory
69 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
70 : SUB  5, 5, 4 ;  Decrement memory offset
71 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
72 : SUB  5, 5, 4 ;  Decrement memory offset
73 : LDA  7, 677(0) ;  Load address of fareyDen IMEM block - branch to function
74 : LD   1, 0(5) ;  Load return value from DMEM into register 1
75 : LDC  4, 5(0) ;  Load value of parameters + return value into temporary register 4
76 : ADD  5, 5, 4 ;  Increment memory offset
77 : LDC  5, 1019(0) ;  Store the memory location of main return value
78 : ST   1, 0(5) ;  Store return value of into DMEM
79 : LDC   3, 1018(0) ;  Load offset for parameter x into register 3
80 : LD  1, 0(3) ;  Load parameter x value into register 1
81 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
82 : SUB  5, 5, 4 ;  Decrement memory offset
83 : ST   1, 0(5) ;  Store left expression value into memory
84 : LDC   3, 1017(0) ;  Load offset for parameter y into register 3
85 : LD  1, 0(3) ;  Load parameter y value into register 1
86 : LD   2, 0(5) ;  Load left expression value from memory into register 2
87 : ADD  5, 5, 4 ;  Increment memory offset
88 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for less-than check
89 : JLT  1, 2(7) ;  If Register 1 is negative, then jump to true handling
90 : LDC  1, 0(0) ;  Load false (0) into register 1
91 : LDA  7, 1(7) ;  Jump to end of less-than handling
92 : LDC  1, 1(0) ;  Load true (1) into register 1
93 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
94 : SUB  5, 5, 4 ;  Decrement memory offset
95 : ST   1, 0(5) ;  Store left expression value into memory
96 : LDC   3, 1018(0) ;  Load offset for parameter x into register 3
97 : LD  1, 0(3) ;  Load parameter x value into register 1
98 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
99 : SUB  5, 5, 4 ;  Decrement memory offset
100 : ST   1, 0(5) ;  Store left expression value into memory
101 : LDC   3, 1017(0) ;  Load offset for parameter y into register 3
102 : LD  1, 0(3) ;  Load parameter y value into register 1
103 : LD   2, 0(5) ;  Load left expression value from memory into register 2
104 : ADD  5, 5, 4 ;  Increment memory offset
105 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for equality check
106 : JEQ  1, 2(7) ;  If Register 1 is 0, then jump to true handling
107 : LDC  1, 0(0) ;  Load false (0) into register 1
108 : LDA  7, 1(7) ;  Jump to end of equality handling
109 : LDC  1, 1(0) ;  Load true (1) into register 1
110 : LD   2, 0(5) ;  Load left expression value from memory into register 2
111 : ADD  5, 5, 4 ;  Increment memory offset
112 : ADD  1, 2, 1 ;  Compute logical OR for left and right expression values
113 : LDC  2, 1(0) ;  Load value 1 into register 2
114 : SUB  1, 2, 1 ;  Flip boolean value
115 : LDC  5, 1016(0) ;  Store the memory location of greater return value
116 : ST   1, 0(5) ;  Store return value of into DMEM
117 : LDC  3, 1019(0) ;  Load return address for function greater into register 3
118 : LD   6, 0(3) ;  Load return address into register 6
119 : LDA  7, 0(6) ;  Load return address back into register 7
120 : LDA  6, 153(0) ;  Load return address into R6
121 : ST   6, 0(5) ;  Store current return address into DMEM
122 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
123 : SUB  5, 5, 4 ;  Decrement memory offset
124 : LDC   3, 1018(0) ;  Load offset for parameter x into register 3
125 : LD  1, 0(3) ;  Load parameter x value into register 1
126 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
127 : SUB  5, 5, 4 ;  Decrement memory offset
128 : ST   1, 0(5) ;  Store left expression value into memory
129 : LDC   3, 1015(0) ;  Load offset for parameter yd into register 3
130 : LD  1, 0(3) ;  Load parameter yd value into register 1
131 : LD   2, 0(5) ;  Load left expression value from memory into register 2
132 : ADD  5, 5, 4 ;  Increment memory offset
133 : MUL  1, 2, 1 ;  Multiply left and right expression values
134 : ST   1, 0(5) ;  Store parameter into memory
135 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
136 : SUB  5, 5, 4 ;  Decrement memory offset
137 : LDC   3, 1016(0) ;  Load offset for parameter y into register 3
138 : LD  1, 0(3) ;  Load parameter y value into register 1
139 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
140 : SUB  5, 5, 4 ;  Decrement memory offset
141 : ST   1, 0(5) ;  Store left expression value into memory
142 : LDC   3, 1017(0) ;  Load offset for parameter xd into register 3
143 : LD  1, 0(3) ;  Load parameter xd value into register 1
144 : LD   2, 0(5) ;  Load left expression value from memory into register 2
145 : ADD  5, 5, 4 ;  Increment memory offset
146 : MUL  1, 2, 1 ;  Multiply left and right expression values
147 : ST   1, 0(5) ;  Store parameter into memory
148 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
149 : SUB  5, 5, 4 ;  Decrement memory offset
150 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
151 : SUB  5, 5, 4 ;  Decrement memory offset
152 : LDA  7, 79(0) ;  Load address of greater IMEM block - branch to function
153 : LD   1, 0(5) ;  Load return value from DMEM into register 1
154 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
155 : ADD  5, 5, 4 ;  Increment memory offset
156 : LDC  5, 1014(0) ;  Store the memory location of fractionGreater return value
157 : ST   1, 0(5) ;  Store return value of into DMEM
158 : LDC  3, 1019(0) ;  Load return address for function fractionGreater into register 3
159 : LD   6, 0(3) ;  Load return address into register 6
160 : LDA  7, 0(6) ;  Load return address back into register 7
161 : LDC   3, 1018(0) ;  Load offset for parameter x into register 3
162 : LD  1, 0(3) ;  Load parameter x value into register 1
163 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
164 : SUB  5, 5, 4 ;  Decrement memory offset
165 : ST   1, 0(5) ;  Store left expression value into memory
166 : LDC   3, 1015(0) ;  Load offset for parameter yd into register 3
167 : LD  1, 0(3) ;  Load parameter yd value into register 1
168 : LD   2, 0(5) ;  Load left expression value from memory into register 2
169 : ADD  5, 5, 4 ;  Increment memory offset
170 : MUL  1, 2, 1 ;  Multiply left and right expression values
171 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
172 : SUB  5, 5, 4 ;  Decrement memory offset
173 : ST   1, 0(5) ;  Store left expression value into memory
174 : LDC   3, 1016(0) ;  Load offset for parameter y into register 3
175 : LD  1, 0(3) ;  Load parameter y value into register 1
176 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
177 : SUB  5, 5, 4 ;  Decrement memory offset
178 : ST   1, 0(5) ;  Store left expression value into memory
179 : LDC   3, 1017(0) ;  Load offset for parameter xd into register 3
180 : LD  1, 0(3) ;  Load parameter xd value into register 1
181 : LD   2, 0(5) ;  Load left expression value from memory into register 2
182 : ADD  5, 5, 4 ;  Increment memory offset
183 : MUL  1, 2, 1 ;  Multiply left and right expression values
184 : LD   2, 0(5) ;  Load left expression value from memory into register 2
185 : ADD  5, 5, 4 ;  Increment memory offset
186 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for equality check
187 : JEQ  1, 2(7) ;  If Register 1 is 0, then jump to true handling
188 : LDC  1, 0(0) ;  Load false (0) into register 1
189 : LDA  7, 1(7) ;  Jump to end of equality handling
190 : LDC  1, 1(0) ;  Load true (1) into register 1
191 : LDC  5, 1014(0) ;  Store the memory location of fractionEqual return value
192 : ST   1, 0(5) ;  Store return value of into DMEM
193 : LDC  3, 1019(0) ;  Load return address for function fractionEqual into register 3
194 : LD   6, 0(3) ;  Load return address into register 6
195 : LDA  7, 0(6) ;  Load return address back into register 7
196 : LDA  6, 213(0) ;  Load return address into R6
197 : ST   6, 0(5) ;  Store current return address into DMEM
198 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
199 : SUB  5, 5, 4 ;  Decrement memory offset
200 : LDC   3, 1013(0) ;  Load offset for parameter b into register 3
201 : LD  1, 0(3) ;  Load parameter b value into register 1
202 : ST   1, 0(5) ;  Store parameter into memory
203 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
204 : SUB  5, 5, 4 ;  Decrement memory offset
205 : LDC   3, 1015(0) ;  Load offset for parameter N into register 3
206 : LD  1, 0(3) ;  Load parameter N value into register 1
207 : ST   1, 0(5) ;  Store parameter into memory
208 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
209 : SUB  5, 5, 4 ;  Decrement memory offset
210 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
211 : SUB  5, 5, 4 ;  Decrement memory offset
212 : LDA  7, 79(0) ;  Load address of greater IMEM block - branch to function
213 : LD   1, 0(5) ;  Load return value from DMEM into register 1
214 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
215 : ADD  5, 5, 4 ;  Increment memory offset
216 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
217 : SUB  5, 5, 4 ;  Decrement memory offset
218 : ST   1, 0(5) ;  Store left expression value into memory
219 : LDA  6, 236(0) ;  Load return address into R6
220 : ST   6, 0(5) ;  Store current return address into DMEM
221 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
222 : SUB  5, 5, 4 ;  Decrement memory offset
223 : LDC   3, 1011(0) ;  Load offset for parameter d into register 3
224 : LD  1, 0(3) ;  Load parameter d value into register 1
225 : ST   1, 0(5) ;  Store parameter into memory
226 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
227 : SUB  5, 5, 4 ;  Decrement memory offset
228 : LDC   3, 1015(0) ;  Load offset for parameter N into register 3
229 : LD  1, 0(3) ;  Load parameter N value into register 1
230 : ST   1, 0(5) ;  Store parameter into memory
231 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
232 : SUB  5, 5, 4 ;  Decrement memory offset
233 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
234 : SUB  5, 5, 4 ;  Decrement memory offset
235 : LDA  7, 79(0) ;  Load address of greater IMEM block - branch to function
236 : LD   1, 0(5) ;  Load return value from DMEM into register 1
237 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
238 : ADD  5, 5, 4 ;  Increment memory offset
239 : LD   2, 0(5) ;  Load left expression value from memory into register 2
240 : ADD  5, 5, 4 ;  Increment memory offset
241 : ADD  1, 2, 1 ;  Compute logical OR for left and right expression values
242 : JEQ  1, 297(0) ;  If condition is false, skip to ELSE block
243 : LDC   3, 1018(0) ;  Load offset for parameter selector into register 3
244 : LD  1, 0(3) ;  Load parameter selector value into register 1
245 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
246 : SUB  5, 5, 4 ;  Decrement memory offset
247 : ST   1, 0(5) ;  Store left expression value into memory
248 : LDC  1, 1(0) ;  Load integer-literal value into register 1
249 : LD   2, 0(5) ;  Load left expression value from memory into register 2
250 : ADD  5, 5, 4 ;  Increment memory offset
251 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for equality check
252 : JEQ  1, 2(7) ;  If Register 1 is 0, then jump to true handling
253 : LDC  1, 0(0) ;  Load false (0) into register 1
254 : LDA  7, 1(7) ;  Jump to end of equality handling
255 : LDC  1, 1(0) ;  Load true (1) into register 1
256 : JEQ  1, 260(0) ;  If condition is false, skip to ELSE block
257 : LDC   3, 1014(0) ;  Load offset for parameter a into register 3
258 : LD  1, 0(3) ;  Load parameter a value into register 1
259 : LDA  7, 296(0) ;  Skip the ELSE block
260 : LDC   3, 1018(0) ;  Load offset for parameter selector into register 3
261 : LD  1, 0(3) ;  Load parameter selector value into register 1
262 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
263 : SUB  5, 5, 4 ;  Decrement memory offset
264 : ST   1, 0(5) ;  Store left expression value into memory
265 : LDC  1, 2(0) ;  Load integer-literal value into register 1
266 : LD   2, 0(5) ;  Load left expression value from memory into register 2
267 : ADD  5, 5, 4 ;  Increment memory offset
268 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for equality check
269 : JEQ  1, 2(7) ;  If Register 1 is 0, then jump to true handling
270 : LDC  1, 0(0) ;  Load false (0) into register 1
271 : LDA  7, 1(7) ;  Jump to end of equality handling
272 : LDC  1, 1(0) ;  Load true (1) into register 1
273 : JEQ  1, 277(0) ;  If condition is false, skip to ELSE block
274 : LDC   3, 1013(0) ;  Load offset for parameter b into register 3
275 : LD  1, 0(3) ;  Load parameter b value into register 1
276 : LDA  7, 296(0) ;  Skip the ELSE block
277 : LDC   3, 1018(0) ;  Load offset for parameter selector into register 3
278 : LD  1, 0(3) ;  Load parameter selector value into register 1
279 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
280 : SUB  5, 5, 4 ;  Decrement memory offset
281 : ST   1, 0(5) ;  Store left expression value into memory
282 : LDC  1, 3(0) ;  Load integer-literal value into register 1
283 : LD   2, 0(5) ;  Load left expression value from memory into register 2
284 : ADD  5, 5, 4 ;  Increment memory offset
285 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for equality check
286 : JEQ  1, 2(7) ;  If Register 1 is 0, then jump to true handling
287 : LDC  1, 0(0) ;  Load false (0) into register 1
288 : LDA  7, 1(7) ;  Jump to end of equality handling
289 : LDC  1, 1(0) ;  Load true (1) into register 1
290 : JEQ  1, 294(0) ;  If condition is false, skip to ELSE block
291 : LDC   3, 1012(0) ;  Load offset for parameter c into register 3
292 : LD  1, 0(3) ;  Load parameter c value into register 1
293 : LDA  7, 296(0) ;  Skip the ELSE block
294 : LDC   3, 1011(0) ;  Load offset for parameter d into register 3
295 : LD  1, 0(3) ;  Load parameter d value into register 1
296 : LDA  7, 610(0) ;  Skip the ELSE block
297 : LDA  6, 340(0) ;  Load return address into R6
298 : ST   6, 0(5) ;  Store current return address into DMEM
299 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
300 : SUB  5, 5, 4 ;  Decrement memory offset
301 : LDC   3, 1017(0) ;  Load offset for parameter xNum into register 3
302 : LD  1, 0(3) ;  Load parameter xNum value into register 1
303 : ST   1, 0(5) ;  Store parameter into memory
304 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
305 : SUB  5, 5, 4 ;  Decrement memory offset
306 : LDC   3, 1016(0) ;  Load offset for parameter xDen into register 3
307 : LD  1, 0(3) ;  Load parameter xDen value into register 1
308 : ST   1, 0(5) ;  Store parameter into memory
309 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
310 : SUB  5, 5, 4 ;  Decrement memory offset
311 : LDC   3, 1014(0) ;  Load offset for parameter a into register 3
312 : LD  1, 0(3) ;  Load parameter a value into register 1
313 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
314 : SUB  5, 5, 4 ;  Decrement memory offset
315 : ST   1, 0(5) ;  Store left expression value into memory
316 : LDC   3, 1012(0) ;  Load offset for parameter c into register 3
317 : LD  1, 0(3) ;  Load parameter c value into register 1
318 : LD   2, 0(5) ;  Load left expression value from memory into register 2
319 : ADD  5, 5, 4 ;  Increment memory offset
320 : ADD  1, 2, 1 ;  Add left and right expression values
321 : ST   1, 0(5) ;  Store parameter into memory
322 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
323 : SUB  5, 5, 4 ;  Decrement memory offset
324 : LDC   3, 1013(0) ;  Load offset for parameter b into register 3
325 : LD  1, 0(3) ;  Load parameter b value into register 1
326 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
327 : SUB  5, 5, 4 ;  Decrement memory offset
328 : ST   1, 0(5) ;  Store left expression value into memory
329 : LDC   3, 1011(0) ;  Load offset for parameter d into register 3
330 : LD  1, 0(3) ;  Load parameter d value into register 1
331 : LD   2, 0(5) ;  Load left expression value from memory into register 2
332 : ADD  5, 5, 4 ;  Increment memory offset
333 : ADD  1, 2, 1 ;  Add left and right expression values
334 : ST   1, 0(5) ;  Store parameter into memory
335 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
336 : SUB  5, 5, 4 ;  Decrement memory offset
337 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
338 : SUB  5, 5, 4 ;  Decrement memory offset
339 : LDA  7, 161(0) ;  Load address of fractionEqual IMEM block - branch to function
340 : LD   1, 0(5) ;  Load return value from DMEM into register 1
341 : LDC  4, 6(0) ;  Load value of parameters + return value into temporary register 4
342 : ADD  5, 5, 4 ;  Increment memory offset
343 : JEQ  1, 430(0) ;  If condition is false, skip to ELSE block
344 : LDC   3, 1018(0) ;  Load offset for parameter selector into register 3
345 : LD  1, 0(3) ;  Load parameter selector value into register 1
346 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
347 : SUB  5, 5, 4 ;  Decrement memory offset
348 : ST   1, 0(5) ;  Store left expression value into memory
349 : LDC  1, 1(0) ;  Load integer-literal value into register 1
350 : LD   2, 0(5) ;  Load left expression value from memory into register 2
351 : ADD  5, 5, 4 ;  Increment memory offset
352 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for equality check
353 : JEQ  1, 2(7) ;  If Register 1 is 0, then jump to true handling
354 : LDC  1, 0(0) ;  Load false (0) into register 1
355 : LDA  7, 1(7) ;  Jump to end of equality handling
356 : LDC  1, 1(0) ;  Load true (1) into register 1
357 : JEQ  1, 369(0) ;  If condition is false, skip to ELSE block
358 : LDC   3, 1014(0) ;  Load offset for parameter a into register 3
359 : LD  1, 0(3) ;  Load parameter a value into register 1
360 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
361 : SUB  5, 5, 4 ;  Decrement memory offset
362 : ST   1, 0(5) ;  Store left expression value into memory
363 : LDC   3, 1012(0) ;  Load offset for parameter c into register 3
364 : LD  1, 0(3) ;  Load parameter c value into register 1
365 : LD   2, 0(5) ;  Load left expression value from memory into register 2
366 : ADD  5, 5, 4 ;  Increment memory offset
367 : ADD  1, 2, 1 ;  Add left and right expression values
368 : LDA  7, 429(0) ;  Skip the ELSE block
369 : LDC   3, 1018(0) ;  Load offset for parameter selector into register 3
370 : LD  1, 0(3) ;  Load parameter selector value into register 1
371 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
372 : SUB  5, 5, 4 ;  Decrement memory offset
373 : ST   1, 0(5) ;  Store left expression value into memory
374 : LDC  1, 2(0) ;  Load integer-literal value into register 1
375 : LD   2, 0(5) ;  Load left expression value from memory into register 2
376 : ADD  5, 5, 4 ;  Increment memory offset
377 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for equality check
378 : JEQ  1, 2(7) ;  If Register 1 is 0, then jump to true handling
379 : LDC  1, 0(0) ;  Load false (0) into register 1
380 : LDA  7, 1(7) ;  Jump to end of equality handling
381 : LDC  1, 1(0) ;  Load true (1) into register 1
382 : JEQ  1, 394(0) ;  If condition is false, skip to ELSE block
383 : LDC   3, 1013(0) ;  Load offset for parameter b into register 3
384 : LD  1, 0(3) ;  Load parameter b value into register 1
385 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
386 : SUB  5, 5, 4 ;  Decrement memory offset
387 : ST   1, 0(5) ;  Store left expression value into memory
388 : LDC   3, 1011(0) ;  Load offset for parameter d into register 3
389 : LD  1, 0(3) ;  Load parameter d value into register 1
390 : LD   2, 0(5) ;  Load left expression value from memory into register 2
391 : ADD  5, 5, 4 ;  Increment memory offset
392 : ADD  1, 2, 1 ;  Add left and right expression values
393 : LDA  7, 429(0) ;  Skip the ELSE block
394 : LDC   3, 1018(0) ;  Load offset for parameter selector into register 3
395 : LD  1, 0(3) ;  Load parameter selector value into register 1
396 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
397 : SUB  5, 5, 4 ;  Decrement memory offset
398 : ST   1, 0(5) ;  Store left expression value into memory
399 : LDC  1, 3(0) ;  Load integer-literal value into register 1
400 : LD   2, 0(5) ;  Load left expression value from memory into register 2
401 : ADD  5, 5, 4 ;  Increment memory offset
402 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for equality check
403 : JEQ  1, 2(7) ;  If Register 1 is 0, then jump to true handling
404 : LDC  1, 0(0) ;  Load false (0) into register 1
405 : LDA  7, 1(7) ;  Jump to end of equality handling
406 : LDC  1, 1(0) ;  Load true (1) into register 1
407 : JEQ  1, 419(0) ;  If condition is false, skip to ELSE block
408 : LDC   3, 1014(0) ;  Load offset for parameter a into register 3
409 : LD  1, 0(3) ;  Load parameter a value into register 1
410 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
411 : SUB  5, 5, 4 ;  Decrement memory offset
412 : ST   1, 0(5) ;  Store left expression value into memory
413 : LDC   3, 1012(0) ;  Load offset for parameter c into register 3
414 : LD  1, 0(3) ;  Load parameter c value into register 1
415 : LD   2, 0(5) ;  Load left expression value from memory into register 2
416 : ADD  5, 5, 4 ;  Increment memory offset
417 : ADD  1, 2, 1 ;  Add left and right expression values
418 : LDA  7, 429(0) ;  Skip the ELSE block
419 : LDC   3, 1013(0) ;  Load offset for parameter b into register 3
420 : LD  1, 0(3) ;  Load parameter b value into register 1
421 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
422 : SUB  5, 5, 4 ;  Decrement memory offset
423 : ST   1, 0(5) ;  Store left expression value into memory
424 : LDC   3, 1011(0) ;  Load offset for parameter d into register 3
425 : LD  1, 0(3) ;  Load parameter d value into register 1
426 : LD   2, 0(5) ;  Load left expression value from memory into register 2
427 : ADD  5, 5, 4 ;  Increment memory offset
428 : ADD  1, 2, 1 ;  Add left and right expression values
429 : LDA  7, 610(0) ;  Skip the ELSE block
430 : LDA  6, 473(0) ;  Load return address into R6
431 : ST   6, 0(5) ;  Store current return address into DMEM
432 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
433 : SUB  5, 5, 4 ;  Decrement memory offset
434 : LDC   3, 1017(0) ;  Load offset for parameter xNum into register 3
435 : LD  1, 0(3) ;  Load parameter xNum value into register 1
436 : ST   1, 0(5) ;  Store parameter into memory
437 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
438 : SUB  5, 5, 4 ;  Decrement memory offset
439 : LDC   3, 1016(0) ;  Load offset for parameter xDen into register 3
440 : LD  1, 0(3) ;  Load parameter xDen value into register 1
441 : ST   1, 0(5) ;  Store parameter into memory
442 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
443 : SUB  5, 5, 4 ;  Decrement memory offset
444 : LDC   3, 1014(0) ;  Load offset for parameter a into register 3
445 : LD  1, 0(3) ;  Load parameter a value into register 1
446 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
447 : SUB  5, 5, 4 ;  Decrement memory offset
448 : ST   1, 0(5) ;  Store left expression value into memory
449 : LDC   3, 1012(0) ;  Load offset for parameter c into register 3
450 : LD  1, 0(3) ;  Load parameter c value into register 1
451 : LD   2, 0(5) ;  Load left expression value from memory into register 2
452 : ADD  5, 5, 4 ;  Increment memory offset
453 : ADD  1, 2, 1 ;  Add left and right expression values
454 : ST   1, 0(5) ;  Store parameter into memory
455 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
456 : SUB  5, 5, 4 ;  Decrement memory offset
457 : LDC   3, 1013(0) ;  Load offset for parameter b into register 3
458 : LD  1, 0(3) ;  Load parameter b value into register 1
459 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
460 : SUB  5, 5, 4 ;  Decrement memory offset
461 : ST   1, 0(5) ;  Store left expression value into memory
462 : LDC   3, 1011(0) ;  Load offset for parameter d into register 3
463 : LD  1, 0(3) ;  Load parameter d value into register 1
464 : LD   2, 0(5) ;  Load left expression value from memory into register 2
465 : ADD  5, 5, 4 ;  Increment memory offset
466 : ADD  1, 2, 1 ;  Add left and right expression values
467 : ST   1, 0(5) ;  Store parameter into memory
468 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
469 : SUB  5, 5, 4 ;  Decrement memory offset
470 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
471 : SUB  5, 5, 4 ;  Decrement memory offset
472 : LDA  7, 120(0) ;  Load address of fractionGreater IMEM block - branch to function
473 : LD   1, 0(5) ;  Load return value from DMEM into register 1
474 : LDC  4, 6(0) ;  Load value of parameters + return value into temporary register 4
475 : ADD  5, 5, 4 ;  Increment memory offset
476 : JEQ  1, 544(0) ;  If condition is false, skip to ELSE block
477 : LDA  6, 540(0) ;  Load return address into R6
478 : ST   6, 0(5) ;  Store current return address into DMEM
479 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
480 : SUB  5, 5, 4 ;  Decrement memory offset
481 : LDC   3, 1018(0) ;  Load offset for parameter selector into register 3
482 : LD  1, 0(3) ;  Load parameter selector value into register 1
483 : ST   1, 0(5) ;  Store parameter into memory
484 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
485 : SUB  5, 5, 4 ;  Decrement memory offset
486 : LDC   3, 1017(0) ;  Load offset for parameter xNum into register 3
487 : LD  1, 0(3) ;  Load parameter xNum value into register 1
488 : ST   1, 0(5) ;  Store parameter into memory
489 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
490 : SUB  5, 5, 4 ;  Decrement memory offset
491 : LDC   3, 1016(0) ;  Load offset for parameter xDen into register 3
492 : LD  1, 0(3) ;  Load parameter xDen value into register 1
493 : ST   1, 0(5) ;  Store parameter into memory
494 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
495 : SUB  5, 5, 4 ;  Decrement memory offset
496 : LDC   3, 1015(0) ;  Load offset for parameter N into register 3
497 : LD  1, 0(3) ;  Load parameter N value into register 1
498 : ST   1, 0(5) ;  Store parameter into memory
499 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
500 : SUB  5, 5, 4 ;  Decrement memory offset
501 : LDC   3, 1014(0) ;  Load offset for parameter a into register 3
502 : LD  1, 0(3) ;  Load parameter a value into register 1
503 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
504 : SUB  5, 5, 4 ;  Decrement memory offset
505 : ST   1, 0(5) ;  Store left expression value into memory
506 : LDC   3, 1012(0) ;  Load offset for parameter c into register 3
507 : LD  1, 0(3) ;  Load parameter c value into register 1
508 : LD   2, 0(5) ;  Load left expression value from memory into register 2
509 : ADD  5, 5, 4 ;  Increment memory offset
510 : ADD  1, 2, 1 ;  Add left and right expression values
511 : ST   1, 0(5) ;  Store parameter into memory
512 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
513 : SUB  5, 5, 4 ;  Decrement memory offset
514 : LDC   3, 1013(0) ;  Load offset for parameter b into register 3
515 : LD  1, 0(3) ;  Load parameter b value into register 1
516 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
517 : SUB  5, 5, 4 ;  Decrement memory offset
518 : ST   1, 0(5) ;  Store left expression value into memory
519 : LDC   3, 1011(0) ;  Load offset for parameter d into register 3
520 : LD  1, 0(3) ;  Load parameter d value into register 1
521 : LD   2, 0(5) ;  Load left expression value from memory into register 2
522 : ADD  5, 5, 4 ;  Increment memory offset
523 : ADD  1, 2, 1 ;  Add left and right expression values
524 : ST   1, 0(5) ;  Store parameter into memory
525 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
526 : SUB  5, 5, 4 ;  Decrement memory offset
527 : LDC   3, 1012(0) ;  Load offset for parameter c into register 3
528 : LD  1, 0(3) ;  Load parameter c value into register 1
529 : ST   1, 0(5) ;  Store parameter into memory
530 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
531 : SUB  5, 5, 4 ;  Decrement memory offset
532 : LDC   3, 1011(0) ;  Load offset for parameter d into register 3
533 : LD  1, 0(3) ;  Load parameter d value into register 1
534 : ST   1, 0(5) ;  Store parameter into memory
535 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
536 : SUB  5, 5, 4 ;  Decrement memory offset
537 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
538 : SUB  5, 5, 4 ;  Decrement memory offset
539 : LDA  7, 196(0) ;  Load address of whileLoopFor IMEM block - branch to function
540 : LD   1, 0(5) ;  Load return value from DMEM into register 1
541 : LDC  4, 10(0) ;  Load value of parameters + return value into temporary register 4
542 : ADD  5, 5, 4 ;  Increment memory offset
543 : LDA  7, 610(0) ;  Skip the ELSE block
544 : LDA  6, 607(0) ;  Load return address into R6
545 : ST   6, 0(5) ;  Store current return address into DMEM
546 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
547 : SUB  5, 5, 4 ;  Decrement memory offset
548 : LDC   3, 1018(0) ;  Load offset for parameter selector into register 3
549 : LD  1, 0(3) ;  Load parameter selector value into register 1
550 : ST   1, 0(5) ;  Store parameter into memory
551 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
552 : SUB  5, 5, 4 ;  Decrement memory offset
553 : LDC   3, 1017(0) ;  Load offset for parameter xNum into register 3
554 : LD  1, 0(3) ;  Load parameter xNum value into register 1
555 : ST   1, 0(5) ;  Store parameter into memory
556 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
557 : SUB  5, 5, 4 ;  Decrement memory offset
558 : LDC   3, 1016(0) ;  Load offset for parameter xDen into register 3
559 : LD  1, 0(3) ;  Load parameter xDen value into register 1
560 : ST   1, 0(5) ;  Store parameter into memory
561 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
562 : SUB  5, 5, 4 ;  Decrement memory offset
563 : LDC   3, 1015(0) ;  Load offset for parameter N into register 3
564 : LD  1, 0(3) ;  Load parameter N value into register 1
565 : ST   1, 0(5) ;  Store parameter into memory
566 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
567 : SUB  5, 5, 4 ;  Decrement memory offset
568 : LDC   3, 1014(0) ;  Load offset for parameter a into register 3
569 : LD  1, 0(3) ;  Load parameter a value into register 1
570 : ST   1, 0(5) ;  Store parameter into memory
571 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
572 : SUB  5, 5, 4 ;  Decrement memory offset
573 : LDC   3, 1013(0) ;  Load offset for parameter b into register 3
574 : LD  1, 0(3) ;  Load parameter b value into register 1
575 : ST   1, 0(5) ;  Store parameter into memory
576 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
577 : SUB  5, 5, 4 ;  Decrement memory offset
578 : LDC   3, 1014(0) ;  Load offset for parameter a into register 3
579 : LD  1, 0(3) ;  Load parameter a value into register 1
580 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
581 : SUB  5, 5, 4 ;  Decrement memory offset
582 : ST   1, 0(5) ;  Store left expression value into memory
583 : LDC   3, 1012(0) ;  Load offset for parameter c into register 3
584 : LD  1, 0(3) ;  Load parameter c value into register 1
585 : LD   2, 0(5) ;  Load left expression value from memory into register 2
586 : ADD  5, 5, 4 ;  Increment memory offset
587 : ADD  1, 2, 1 ;  Add left and right expression values
588 : ST   1, 0(5) ;  Store parameter into memory
589 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
590 : SUB  5, 5, 4 ;  Decrement memory offset
591 : LDC   3, 1013(0) ;  Load offset for parameter b into register 3
592 : LD  1, 0(3) ;  Load parameter b value into register 1
593 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
594 : SUB  5, 5, 4 ;  Decrement memory offset
595 : ST   1, 0(5) ;  Store left expression value into memory
596 : LDC   3, 1011(0) ;  Load offset for parameter d into register 3
597 : LD  1, 0(3) ;  Load parameter d value into register 1
598 : LD   2, 0(5) ;  Load left expression value from memory into register 2
599 : ADD  5, 5, 4 ;  Increment memory offset
600 : ADD  1, 2, 1 ;  Add left and right expression values
601 : ST   1, 0(5) ;  Store parameter into memory
602 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
603 : SUB  5, 5, 4 ;  Decrement memory offset
604 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
605 : SUB  5, 5, 4 ;  Decrement memory offset
606 : LDA  7, 196(0) ;  Load address of whileLoopFor IMEM block - branch to function
607 : LD   1, 0(5) ;  Load return value from DMEM into register 1
608 : LDC  4, 10(0) ;  Load value of parameters + return value into temporary register 4
609 : ADD  5, 5, 4 ;  Increment memory offset
610 : LDC  5, 1010(0) ;  Store the memory location of whileLoopFor return value
611 : ST   1, 0(5) ;  Store return value of into DMEM
612 : LDC  3, 1019(0) ;  Load return address for function whileLoopFor into register 3
613 : LD   6, 0(3) ;  Load return address into register 6
614 : LDA  7, 0(6) ;  Load return address back into register 7
615 : LDA  6, 632(0) ;  Load return address into R6
616 : ST   6, 0(5) ;  Store current return address into DMEM
617 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
618 : SUB  5, 5, 4 ;  Decrement memory offset
619 : LDC   3, 1016(0) ;  Load offset for parameter b into register 3
620 : LD  1, 0(3) ;  Load parameter b value into register 1
621 : ST   1, 0(5) ;  Store parameter into memory
622 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
623 : SUB  5, 5, 4 ;  Decrement memory offset
624 : LDC   3, 1018(0) ;  Load offset for parameter N into register 3
625 : LD  1, 0(3) ;  Load parameter N value into register 1
626 : ST   1, 0(5) ;  Store parameter into memory
627 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
628 : SUB  5, 5, 4 ;  Decrement memory offset
629 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
630 : SUB  5, 5, 4 ;  Decrement memory offset
631 : LDA  7, 79(0) ;  Load address of greater IMEM block - branch to function
632 : LD   1, 0(5) ;  Load return value from DMEM into register 1
633 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
634 : ADD  5, 5, 4 ;  Increment memory offset
635 : JEQ  1, 639(0) ;  If condition is false, skip to ELSE block
636 : LDC   3, 1014(0) ;  Load offset for parameter d into register 3
637 : LD  1, 0(3) ;  Load parameter d value into register 1
638 : LDA  7, 641(0) ;  Skip the ELSE block
639 : LDC   3, 1016(0) ;  Load offset for parameter b into register 3
640 : LD  1, 0(3) ;  Load parameter b value into register 1
641 : LDC  5, 1013(0) ;  Store the memory location of fareySelectDen return value
642 : ST   1, 0(5) ;  Store return value of into DMEM
643 : LDC  3, 1019(0) ;  Load return address for function fareySelectDen into register 3
644 : LD   6, 0(3) ;  Load return address into register 6
645 : LDA  7, 0(6) ;  Load return address back into register 7
646 : LDA  6, 663(0) ;  Load return address into R6
647 : ST   6, 0(5) ;  Store current return address into DMEM
648 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
649 : SUB  5, 5, 4 ;  Decrement memory offset
650 : LDC   3, 1016(0) ;  Load offset for parameter b into register 3
651 : LD  1, 0(3) ;  Load parameter b value into register 1
652 : ST   1, 0(5) ;  Store parameter into memory
653 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
654 : SUB  5, 5, 4 ;  Decrement memory offset
655 : LDC   3, 1018(0) ;  Load offset for parameter N into register 3
656 : LD  1, 0(3) ;  Load parameter N value into register 1
657 : ST   1, 0(5) ;  Store parameter into memory
658 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
659 : SUB  5, 5, 4 ;  Decrement memory offset
660 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
661 : SUB  5, 5, 4 ;  Decrement memory offset
662 : LDA  7, 79(0) ;  Load address of greater IMEM block - branch to function
663 : LD   1, 0(5) ;  Load return value from DMEM into register 1
664 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
665 : ADD  5, 5, 4 ;  Increment memory offset
666 : JEQ  1, 670(0) ;  If condition is false, skip to ELSE block
667 : LDC   3, 1015(0) ;  Load offset for parameter c into register 3
668 : LD  1, 0(3) ;  Load parameter c value into register 1
669 : LDA  7, 672(0) ;  Skip the ELSE block
670 : LDC   3, 1017(0) ;  Load offset for parameter a into register 3
671 : LD  1, 0(3) ;  Load parameter a value into register 1
672 : LDC  5, 1013(0) ;  Store the memory location of fareySelectNum return value
673 : ST   1, 0(5) ;  Store return value of into DMEM
674 : LDC  3, 1019(0) ;  Load return address for function fareySelectNum into register 3
675 : LD   6, 0(3) ;  Load return address into register 6
676 : LDA  7, 0(6) ;  Load return address back into register 7
677 : LDA  6, 881(0) ;  Load return address into R6
678 : ST   6, 0(5) ;  Store current return address into DMEM
679 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
680 : SUB  5, 5, 4 ;  Decrement memory offset
681 : LDC   3, 1016(0) ;  Load offset for parameter N into register 3
682 : LD  1, 0(3) ;  Load parameter N value into register 1
683 : ST   1, 0(5) ;  Store parameter into memory
684 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
685 : SUB  5, 5, 4 ;  Decrement memory offset
686 : LDA  6, 728(0) ;  Load return address into R6
687 : ST   6, 0(5) ;  Store current return address into DMEM
688 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
689 : SUB  5, 5, 4 ;  Decrement memory offset
690 : LDC  1, 1(0) ;  Load integer-literal value into register 1
691 : ST   1, 0(5) ;  Store parameter into memory
692 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
693 : SUB  5, 5, 4 ;  Decrement memory offset
694 : LDC   3, 1018(0) ;  Load offset for parameter xNum into register 3
695 : LD  1, 0(3) ;  Load parameter xNum value into register 1
696 : ST   1, 0(5) ;  Store parameter into memory
697 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
698 : SUB  5, 5, 4 ;  Decrement memory offset
699 : LDC   3, 1017(0) ;  Load offset for parameter xDen into register 3
700 : LD  1, 0(3) ;  Load parameter xDen value into register 1
701 : ST   1, 0(5) ;  Store parameter into memory
702 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
703 : SUB  5, 5, 4 ;  Decrement memory offset
704 : LDC   3, 1016(0) ;  Load offset for parameter N into register 3
705 : LD  1, 0(3) ;  Load parameter N value into register 1
706 : ST   1, 0(5) ;  Store parameter into memory
707 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
708 : SUB  5, 5, 4 ;  Decrement memory offset
709 : LDC  1, 0(0) ;  Load integer-literal value into register 1
710 : ST   1, 0(5) ;  Store parameter into memory
711 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
712 : SUB  5, 5, 4 ;  Decrement memory offset
713 : LDC  1, 1(0) ;  Load integer-literal value into register 1
714 : ST   1, 0(5) ;  Store parameter into memory
715 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
716 : SUB  5, 5, 4 ;  Decrement memory offset
717 : LDC  1, 1(0) ;  Load integer-literal value into register 1
718 : ST   1, 0(5) ;  Store parameter into memory
719 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
720 : SUB  5, 5, 4 ;  Decrement memory offset
721 : LDC  1, 1(0) ;  Load integer-literal value into register 1
722 : ST   1, 0(5) ;  Store parameter into memory
723 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
724 : SUB  5, 5, 4 ;  Decrement memory offset
725 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
726 : SUB  5, 5, 4 ;  Decrement memory offset
727 : LDA  7, 196(0) ;  Load address of whileLoopFor IMEM block - branch to function
728 : LD   1, 0(5) ;  Load return value from DMEM into register 1
729 : LDC  4, 10(0) ;  Load value of parameters + return value into temporary register 4
730 : ADD  5, 5, 4 ;  Increment memory offset
731 : ST   1, 0(5) ;  Store parameter into memory
732 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
733 : SUB  5, 5, 4 ;  Decrement memory offset
734 : LDA  6, 776(0) ;  Load return address into R6
735 : ST   6, 0(5) ;  Store current return address into DMEM
736 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
737 : SUB  5, 5, 4 ;  Decrement memory offset
738 : LDC  1, 2(0) ;  Load integer-literal value into register 1
739 : ST   1, 0(5) ;  Store parameter into memory
740 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
741 : SUB  5, 5, 4 ;  Decrement memory offset
742 : LDC   3, 1018(0) ;  Load offset for parameter xNum into register 3
743 : LD  1, 0(3) ;  Load parameter xNum value into register 1
744 : ST   1, 0(5) ;  Store parameter into memory
745 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
746 : SUB  5, 5, 4 ;  Decrement memory offset
747 : LDC   3, 1017(0) ;  Load offset for parameter xDen into register 3
748 : LD  1, 0(3) ;  Load parameter xDen value into register 1
749 : ST   1, 0(5) ;  Store parameter into memory
750 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
751 : SUB  5, 5, 4 ;  Decrement memory offset
752 : LDC   3, 1016(0) ;  Load offset for parameter N into register 3
753 : LD  1, 0(3) ;  Load parameter N value into register 1
754 : ST   1, 0(5) ;  Store parameter into memory
755 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
756 : SUB  5, 5, 4 ;  Decrement memory offset
757 : LDC  1, 0(0) ;  Load integer-literal value into register 1
758 : ST   1, 0(5) ;  Store parameter into memory
759 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
760 : SUB  5, 5, 4 ;  Decrement memory offset
761 : LDC  1, 1(0) ;  Load integer-literal value into register 1
762 : ST   1, 0(5) ;  Store parameter into memory
763 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
764 : SUB  5, 5, 4 ;  Decrement memory offset
765 : LDC  1, 1(0) ;  Load integer-literal value into register 1
766 : ST   1, 0(5) ;  Store parameter into memory
767 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
768 : SUB  5, 5, 4 ;  Decrement memory offset
769 : LDC  1, 1(0) ;  Load integer-literal value into register 1
770 : ST   1, 0(5) ;  Store parameter into memory
771 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
772 : SUB  5, 5, 4 ;  Decrement memory offset
773 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
774 : SUB  5, 5, 4 ;  Decrement memory offset
775 : LDA  7, 196(0) ;  Load address of whileLoopFor IMEM block - branch to function
776 : LD   1, 0(5) ;  Load return value from DMEM into register 1
777 : LDC  4, 10(0) ;  Load value of parameters + return value into temporary register 4
778 : ADD  5, 5, 4 ;  Increment memory offset
779 : ST   1, 0(5) ;  Store parameter into memory
780 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
781 : SUB  5, 5, 4 ;  Decrement memory offset
782 : LDA  6, 824(0) ;  Load return address into R6
783 : ST   6, 0(5) ;  Store current return address into DMEM
784 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
785 : SUB  5, 5, 4 ;  Decrement memory offset
786 : LDC  1, 3(0) ;  Load integer-literal value into register 1
787 : ST   1, 0(5) ;  Store parameter into memory
788 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
789 : SUB  5, 5, 4 ;  Decrement memory offset
790 : LDC   3, 1018(0) ;  Load offset for parameter xNum into register 3
791 : LD  1, 0(3) ;  Load parameter xNum value into register 1
792 : ST   1, 0(5) ;  Store parameter into memory
793 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
794 : SUB  5, 5, 4 ;  Decrement memory offset
795 : LDC   3, 1017(0) ;  Load offset for parameter xDen into register 3
796 : LD  1, 0(3) ;  Load parameter xDen value into register 1
797 : ST   1, 0(5) ;  Store parameter into memory
798 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
799 : SUB  5, 5, 4 ;  Decrement memory offset
800 : LDC   3, 1016(0) ;  Load offset for parameter N into register 3
801 : LD  1, 0(3) ;  Load parameter N value into register 1
802 : ST   1, 0(5) ;  Store parameter into memory
803 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
804 : SUB  5, 5, 4 ;  Decrement memory offset
805 : LDC  1, 0(0) ;  Load integer-literal value into register 1
806 : ST   1, 0(5) ;  Store parameter into memory
807 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
808 : SUB  5, 5, 4 ;  Decrement memory offset
809 : LDC  1, 1(0) ;  Load integer-literal value into register 1
810 : ST   1, 0(5) ;  Store parameter into memory
811 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
812 : SUB  5, 5, 4 ;  Decrement memory offset
813 : LDC  1, 1(0) ;  Load integer-literal value into register 1
814 : ST   1, 0(5) ;  Store parameter into memory
815 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
816 : SUB  5, 5, 4 ;  Decrement memory offset
817 : LDC  1, 1(0) ;  Load integer-literal value into register 1
818 : ST   1, 0(5) ;  Store parameter into memory
819 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
820 : SUB  5, 5, 4 ;  Decrement memory offset
821 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
822 : SUB  5, 5, 4 ;  Decrement memory offset
823 : LDA  7, 196(0) ;  Load address of whileLoopFor IMEM block - branch to function
824 : LD   1, 0(5) ;  Load return value from DMEM into register 1
825 : LDC  4, 10(0) ;  Load value of parameters + return value into temporary register 4
826 : ADD  5, 5, 4 ;  Increment memory offset
827 : ST   1, 0(5) ;  Store parameter into memory
828 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
829 : SUB  5, 5, 4 ;  Decrement memory offset
830 : LDA  6, 872(0) ;  Load return address into R6
831 : ST   6, 0(5) ;  Store current return address into DMEM
832 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
833 : SUB  5, 5, 4 ;  Decrement memory offset
834 : LDC  1, 4(0) ;  Load integer-literal value into register 1
835 : ST   1, 0(5) ;  Store parameter into memory
836 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
837 : SUB  5, 5, 4 ;  Decrement memory offset
838 : LDC   3, 1018(0) ;  Load offset for parameter xNum into register 3
839 : LD  1, 0(3) ;  Load parameter xNum value into register 1
840 : ST   1, 0(5) ;  Store parameter into memory
841 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
842 : SUB  5, 5, 4 ;  Decrement memory offset
843 : LDC   3, 1017(0) ;  Load offset for parameter xDen into register 3
844 : LD  1, 0(3) ;  Load parameter xDen value into register 1
845 : ST   1, 0(5) ;  Store parameter into memory
846 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
847 : SUB  5, 5, 4 ;  Decrement memory offset
848 : LDC   3, 1016(0) ;  Load offset for parameter N into register 3
849 : LD  1, 0(3) ;  Load parameter N value into register 1
850 : ST   1, 0(5) ;  Store parameter into memory
851 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
852 : SUB  5, 5, 4 ;  Decrement memory offset
853 : LDC  1, 0(0) ;  Load integer-literal value into register 1
854 : ST   1, 0(5) ;  Store parameter into memory
855 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
856 : SUB  5, 5, 4 ;  Decrement memory offset
857 : LDC  1, 1(0) ;  Load integer-literal value into register 1
858 : ST   1, 0(5) ;  Store parameter into memory
859 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
860 : SUB  5, 5, 4 ;  Decrement memory offset
861 : LDC  1, 1(0) ;  Load integer-literal value into register 1
862 : ST   1, 0(5) ;  Store parameter into memory
863 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
864 : SUB  5, 5, 4 ;  Decrement memory offset
865 : LDC  1, 1(0) ;  Load integer-literal value into register 1
866 : ST   1, 0(5) ;  Store parameter into memory
867 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
868 : SUB  5, 5, 4 ;  Decrement memory offset
869 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
870 : SUB  5, 5, 4 ;  Decrement memory offset
871 : LDA  7, 196(0) ;  Load address of whileLoopFor IMEM block - branch to function
872 : LD   1, 0(5) ;  Load return value from DMEM into register 1
873 : LDC  4, 10(0) ;  Load value of parameters + return value into temporary register 4
874 : ADD  5, 5, 4 ;  Increment memory offset
875 : ST   1, 0(5) ;  Store parameter into memory
876 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
877 : SUB  5, 5, 4 ;  Decrement memory offset
878 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
879 : SUB  5, 5, 4 ;  Decrement memory offset
880 : LDA  7, 615(0) ;  Load address of fareySelectDen IMEM block - branch to function
881 : LD   1, 0(5) ;  Load return value from DMEM into register 1
882 : LDC  4, 7(0) ;  Load value of parameters + return value into temporary register 4
883 : ADD  5, 5, 4 ;  Increment memory offset
884 : LDC  5, 1015(0) ;  Store the memory location of fareyDen return value
885 : ST   1, 0(5) ;  Store return value of into DMEM
886 : LDC  3, 1019(0) ;  Load return address for function fareyDen into register 3
887 : LD   6, 0(3) ;  Load return address into register 6
888 : LDA  7, 0(6) ;  Load return address back into register 7
889 : LDA  6, 1093(0) ;  Load return address into R6
890 : ST   6, 0(5) ;  Store current return address into DMEM
891 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
892 : SUB  5, 5, 4 ;  Decrement memory offset
893 : LDC   3, 1016(0) ;  Load offset for parameter N into register 3
894 : LD  1, 0(3) ;  Load parameter N value into register 1
895 : ST   1, 0(5) ;  Store parameter into memory
896 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
897 : SUB  5, 5, 4 ;  Decrement memory offset
898 : LDA  6, 940(0) ;  Load return address into R6
899 : ST   6, 0(5) ;  Store current return address into DMEM
900 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
901 : SUB  5, 5, 4 ;  Decrement memory offset
902 : LDC  1, 1(0) ;  Load integer-literal value into register 1
903 : ST   1, 0(5) ;  Store parameter into memory
904 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
905 : SUB  5, 5, 4 ;  Decrement memory offset
906 : LDC   3, 1018(0) ;  Load offset for parameter xNum into register 3
907 : LD  1, 0(3) ;  Load parameter xNum value into register 1
908 : ST   1, 0(5) ;  Store parameter into memory
909 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
910 : SUB  5, 5, 4 ;  Decrement memory offset
911 : LDC   3, 1017(0) ;  Load offset for parameter xDen into register 3
912 : LD  1, 0(3) ;  Load parameter xDen value into register 1
913 : ST   1, 0(5) ;  Store parameter into memory
914 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
915 : SUB  5, 5, 4 ;  Decrement memory offset
916 : LDC   3, 1016(0) ;  Load offset for parameter N into register 3
917 : LD  1, 0(3) ;  Load parameter N value into register 1
918 : ST   1, 0(5) ;  Store parameter into memory
919 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
920 : SUB  5, 5, 4 ;  Decrement memory offset
921 : LDC  1, 0(0) ;  Load integer-literal value into register 1
922 : ST   1, 0(5) ;  Store parameter into memory
923 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
924 : SUB  5, 5, 4 ;  Decrement memory offset
925 : LDC  1, 1(0) ;  Load integer-literal value into register 1
926 : ST   1, 0(5) ;  Store parameter into memory
927 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
928 : SUB  5, 5, 4 ;  Decrement memory offset
929 : LDC  1, 1(0) ;  Load integer-literal value into register 1
930 : ST   1, 0(5) ;  Store parameter into memory
931 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
932 : SUB  5, 5, 4 ;  Decrement memory offset
933 : LDC  1, 1(0) ;  Load integer-literal value into register 1
934 : ST   1, 0(5) ;  Store parameter into memory
935 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
936 : SUB  5, 5, 4 ;  Decrement memory offset
937 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
938 : SUB  5, 5, 4 ;  Decrement memory offset
939 : LDA  7, 196(0) ;  Load address of whileLoopFor IMEM block - branch to function
940 : LD   1, 0(5) ;  Load return value from DMEM into register 1
941 : LDC  4, 10(0) ;  Load value of parameters + return value into temporary register 4
942 : ADD  5, 5, 4 ;  Increment memory offset
943 : ST   1, 0(5) ;  Store parameter into memory
944 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
945 : SUB  5, 5, 4 ;  Decrement memory offset
946 : LDA  6, 988(0) ;  Load return address into R6
947 : ST   6, 0(5) ;  Store current return address into DMEM
948 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
949 : SUB  5, 5, 4 ;  Decrement memory offset
950 : LDC  1, 2(0) ;  Load integer-literal value into register 1
951 : ST   1, 0(5) ;  Store parameter into memory
952 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
953 : SUB  5, 5, 4 ;  Decrement memory offset
954 : LDC   3, 1018(0) ;  Load offset for parameter xNum into register 3
955 : LD  1, 0(3) ;  Load parameter xNum value into register 1
956 : ST   1, 0(5) ;  Store parameter into memory
957 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
958 : SUB  5, 5, 4 ;  Decrement memory offset
959 : LDC   3, 1017(0) ;  Load offset for parameter xDen into register 3
960 : LD  1, 0(3) ;  Load parameter xDen value into register 1
961 : ST   1, 0(5) ;  Store parameter into memory
962 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
963 : SUB  5, 5, 4 ;  Decrement memory offset
964 : LDC   3, 1016(0) ;  Load offset for parameter N into register 3
965 : LD  1, 0(3) ;  Load parameter N value into register 1
966 : ST   1, 0(5) ;  Store parameter into memory
967 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
968 : SUB  5, 5, 4 ;  Decrement memory offset
969 : LDC  1, 0(0) ;  Load integer-literal value into register 1
970 : ST   1, 0(5) ;  Store parameter into memory
971 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
972 : SUB  5, 5, 4 ;  Decrement memory offset
973 : LDC  1, 1(0) ;  Load integer-literal value into register 1
974 : ST   1, 0(5) ;  Store parameter into memory
975 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
976 : SUB  5, 5, 4 ;  Decrement memory offset
977 : LDC  1, 1(0) ;  Load integer-literal value into register 1
978 : ST   1, 0(5) ;  Store parameter into memory
979 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
980 : SUB  5, 5, 4 ;  Decrement memory offset
981 : LDC  1, 1(0) ;  Load integer-literal value into register 1
982 : ST   1, 0(5) ;  Store parameter into memory
983 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
984 : SUB  5, 5, 4 ;  Decrement memory offset
985 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
986 : SUB  5, 5, 4 ;  Decrement memory offset
987 : LDA  7, 196(0) ;  Load address of whileLoopFor IMEM block - branch to function
988 : LD   1, 0(5) ;  Load return value from DMEM into register 1
989 : LDC  4, 10(0) ;  Load value of parameters + return value into temporary register 4
990 : ADD  5, 5, 4 ;  Increment memory offset
991 : ST   1, 0(5) ;  Store parameter into memory
992 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
993 : SUB  5, 5, 4 ;  Decrement memory offset
994 : LDA  6, 1036(0) ;  Load return address into R6
995 : ST   6, 0(5) ;  Store current return address into DMEM
996 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
997 : SUB  5, 5, 4 ;  Decrement memory offset
998 : LDC  1, 3(0) ;  Load integer-literal value into register 1
999 : ST   1, 0(5) ;  Store parameter into memory
1000 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
1001 : SUB  5, 5, 4 ;  Decrement memory offset
1002 : LDC   3, 1018(0) ;  Load offset for parameter xNum into register 3
1003 : LD  1, 0(3) ;  Load parameter xNum value into register 1
1004 : ST   1, 0(5) ;  Store parameter into memory
1005 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
1006 : SUB  5, 5, 4 ;  Decrement memory offset
1007 : LDC   3, 1017(0) ;  Load offset for parameter xDen into register 3
1008 : LD  1, 0(3) ;  Load parameter xDen value into register 1
1009 : ST   1, 0(5) ;  Store parameter into memory
1010 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
1011 : SUB  5, 5, 4 ;  Decrement memory offset
1012 : LDC   3, 1016(0) ;  Load offset for parameter N into register 3
1013 : LD  1, 0(3) ;  Load parameter N value into register 1
1014 : ST   1, 0(5) ;  Store parameter into memory
1015 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
1016 : SUB  5, 5, 4 ;  Decrement memory offset
1017 : LDC  1, 0(0) ;  Load integer-literal value into register 1
1018 : ST   1, 0(5) ;  Store parameter into memory
1019 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
1020 : SUB  5, 5, 4 ;  Decrement memory offset
1021 : LDC  1, 1(0) ;  Load integer-literal value into register 1
1022 : ST   1, 0(5) ;  Store parameter into memory
1023 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
1024 : SUB  5, 5, 4 ;  Decrement memory offset
1025 : LDC  1, 1(0) ;  Load integer-literal value into register 1
1026 : ST   1, 0(5) ;  Store parameter into memory
1027 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
1028 : SUB  5, 5, 4 ;  Decrement memory offset
1029 : LDC  1, 1(0) ;  Load integer-literal value into register 1
1030 : ST   1, 0(5) ;  Store parameter into memory
1031 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
1032 : SUB  5, 5, 4 ;  Decrement memory offset
1033 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
1034 : SUB  5, 5, 4 ;  Decrement memory offset
1035 : LDA  7, 196(0) ;  Load address of whileLoopFor IMEM block - branch to function
1036 : LD   1, 0(5) ;  Load return value from DMEM into register 1
1037 : LDC  4, 10(0) ;  Load value of parameters + return value into temporary register 4
1038 : ADD  5, 5, 4 ;  Increment memory offset
1039 : ST   1, 0(5) ;  Store parameter into memory
1040 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
1041 : SUB  5, 5, 4 ;  Decrement memory offset
1042 : LDA  6, 1084(0) ;  Load return address into R6
1043 : ST   6, 0(5) ;  Store current return address into DMEM
1044 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
1045 : SUB  5, 5, 4 ;  Decrement memory offset
1046 : LDC  1, 4(0) ;  Load integer-literal value into register 1
1047 : ST   1, 0(5) ;  Store parameter into memory
1048 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
1049 : SUB  5, 5, 4 ;  Decrement memory offset
1050 : LDC   3, 1018(0) ;  Load offset for parameter xNum into register 3
1051 : LD  1, 0(3) ;  Load parameter xNum value into register 1
1052 : ST   1, 0(5) ;  Store parameter into memory
1053 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
1054 : SUB  5, 5, 4 ;  Decrement memory offset
1055 : LDC   3, 1017(0) ;  Load offset for parameter xDen into register 3
1056 : LD  1, 0(3) ;  Load parameter xDen value into register 1
1057 : ST   1, 0(5) ;  Store parameter into memory
1058 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
1059 : SUB  5, 5, 4 ;  Decrement memory offset
1060 : LDC   3, 1016(0) ;  Load offset for parameter N into register 3
1061 : LD  1, 0(3) ;  Load parameter N value into register 1
1062 : ST   1, 0(5) ;  Store parameter into memory
1063 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
1064 : SUB  5, 5, 4 ;  Decrement memory offset
1065 : LDC  1, 0(0) ;  Load integer-literal value into register 1
1066 : ST   1, 0(5) ;  Store parameter into memory
1067 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
1068 : SUB  5, 5, 4 ;  Decrement memory offset
1069 : LDC  1, 1(0) ;  Load integer-literal value into register 1
1070 : ST   1, 0(5) ;  Store parameter into memory
1071 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
1072 : SUB  5, 5, 4 ;  Decrement memory offset
1073 : LDC  1, 1(0) ;  Load integer-literal value into register 1
1074 : ST   1, 0(5) ;  Store parameter into memory
1075 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
1076 : SUB  5, 5, 4 ;  Decrement memory offset
1077 : LDC  1, 1(0) ;  Load integer-literal value into register 1
1078 : ST   1, 0(5) ;  Store parameter into memory
1079 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
1080 : SUB  5, 5, 4 ;  Decrement memory offset
1081 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
1082 : SUB  5, 5, 4 ;  Decrement memory offset
1083 : LDA  7, 196(0) ;  Load address of whileLoopFor IMEM block - branch to function
1084 : LD   1, 0(5) ;  Load return value from DMEM into register 1
1085 : LDC  4, 10(0) ;  Load value of parameters + return value into temporary register 4
1086 : ADD  5, 5, 4 ;  Increment memory offset
1087 : ST   1, 0(5) ;  Store parameter into memory
1088 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
1089 : SUB  5, 5, 4 ;  Decrement memory offset
1090 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
1091 : SUB  5, 5, 4 ;  Decrement memory offset
1092 : LDA  7, 646(0) ;  Load address of fareySelectNum IMEM block - branch to function
1093 : LD   1, 0(5) ;  Load return value from DMEM into register 1
1094 : LDC  4, 7(0) ;  Load value of parameters + return value into temporary register 4
1095 : ADD  5, 5, 4 ;  Increment memory offset
1096 : LDC  5, 1015(0) ;  Store the memory location of fareyNum return value
1097 : ST   1, 0(5) ;  Store return value of into DMEM
1098 : LDC  3, 1019(0) ;  Load return address for function fareyNum into register 3
1099 : LD   6, 0(3) ;  Load return address into register 6
1100 : LDA  7, 0(6) ;  Load return address back into register 7
1101 : LDC  5, 1019(0) ;  Store the memory location of main return value
1102 : ST   1, 0(5) ;  Store return value of into DMEM
1103 : LD   1, 0(5) ;  Load Return Value from DMEM
1104 : OUT  1, 0, 0 ;  Output value from register 1.
1105 : HALT 0, 0, 0 ;  Terminate program execution.
