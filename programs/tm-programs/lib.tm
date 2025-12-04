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
10 : LDA  6, 28(0) ;  Load return address into R6
11 : ST   6, 0(5) ;  Store current return address into DMEM
12 : LDA  6, 24(0) ;  Load return address into R6
13 : ST   6, 0(5) ;  Store current return address into DMEM
14 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
15 : SUB  5, 5, 4 ;  Decrement memory offset
16 : LDC   3, 1022(0) ;  Load offset for parameter testArgument into register 3
17 : LD  1, 0(3) ;  Load parameter testArgument value into register 1
18 : ST   1, 0(5) ;  Store parameter into memory
19 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
20 : SUB  5, 5, 4 ;  Decrement memory offset
21 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
22 : SUB  5, 5, 4 ;  Decrement memory offset
23 : LDA  7, 299(0) ;  Load address of SQRT IMEM block - branch to function
24 : LD   1, 0(5) ;  Load return value from DMEM into register 1
25 : LDC  4, 3(0) ;  Load value of parameters + return value into temporary register 4
26 : ADD  5, 5, 4 ;  Increment memory offset
27 : LDA  7, 7(0) ;  Load address of print IMEM block - branch to function
28 : LDC  5, 1021(0) ;  Store the memory location of main return value
29 : ST   1, 0(5) ;  Store return value of into DMEM
30 : LDA  6, 42(0) ;  Load return address into R6
31 : ST   6, 0(5) ;  Store current return address into DMEM
32 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
33 : SUB  5, 5, 4 ;  Decrement memory offset
34 : LDC   3, 1022(0) ;  Load offset for parameter testArgument into register 3
35 : LD  1, 0(3) ;  Load parameter testArgument value into register 1
36 : ST   1, 0(5) ;  Store parameter into memory
37 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
38 : SUB  5, 5, 4 ;  Decrement memory offset
39 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
40 : SUB  5, 5, 4 ;  Decrement memory offset
41 : LDA  7, 328(0) ;  Load address of ODD IMEM block - branch to function
42 : LD   1, 0(5) ;  Load return value from DMEM into register 1
43 : LDC  4, 3(0) ;  Load value of parameters + return value into temporary register 4
44 : ADD  5, 5, 4 ;  Increment memory offset
45 : LDC  5, 1021(0) ;  Store the memory location of main return value
46 : ST   1, 0(5) ;  Store return value of into DMEM
47 : LDA  6, 72(0) ;  Load return address into R6
48 : ST   6, 0(5) ;  Store current return address into DMEM
49 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
50 : SUB  5, 5, 4 ;  Decrement memory offset
51 : LDC   3, 1017(0) ;  Load offset for parameter mid into register 3
52 : LD  1, 0(3) ;  Load parameter mid value into register 1
53 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
54 : SUB  5, 5, 4 ;  Decrement memory offset
55 : ST   1, 0(5) ;  Store left expression value into memory
56 : LDC   3, 1017(0) ;  Load offset for parameter mid into register 3
57 : LD  1, 0(3) ;  Load parameter mid value into register 1
58 : LD   2, 0(5) ;  Load left expression value from memory into register 2
59 : ADD  5, 5, 4 ;  Increment memory offset
60 : MUL  1, 2, 1 ;  Multiply left and right expression values
61 : ST   1, 0(5) ;  Store parameter into memory
62 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
63 : SUB  5, 5, 4 ;  Decrement memory offset
64 : LDC   3, 1020(0) ;  Load offset for parameter n into register 3
65 : LD  1, 0(3) ;  Load parameter n value into register 1
66 : ST   1, 0(5) ;  Store parameter into memory
67 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
68 : SUB  5, 5, 4 ;  Decrement memory offset
69 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
70 : SUB  5, 5, 4 ;  Decrement memory offset
71 : LDA  7, 790(0) ;  Load address of LE IMEM block - branch to function
72 : LD   1, 0(5) ;  Load return value from DMEM into register 1
73 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
74 : ADD  5, 5, 4 ;  Increment memory offset
75 : JEQ  1, 102(0) ;  If condition is false, skip to ELSE block
76 : LDA  6, 98(0) ;  Load return address into R6
77 : ST   6, 0(5) ;  Store current return address into DMEM
78 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
79 : SUB  5, 5, 4 ;  Decrement memory offset
80 : LDC   3, 1020(0) ;  Load offset for parameter n into register 3
81 : LD  1, 0(3) ;  Load parameter n value into register 1
82 : ST   1, 0(5) ;  Store parameter into memory
83 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
84 : SUB  5, 5, 4 ;  Decrement memory offset
85 : LDC   3, 1017(0) ;  Load offset for parameter mid into register 3
86 : LD  1, 0(3) ;  Load parameter mid value into register 1
87 : ST   1, 0(5) ;  Store parameter into memory
88 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
89 : SUB  5, 5, 4 ;  Decrement memory offset
90 : LDC   3, 1018(0) ;  Load offset for parameter high into register 3
91 : LD  1, 0(3) ;  Load parameter high value into register 1
92 : ST   1, 0(5) ;  Store parameter into memory
93 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
94 : SUB  5, 5, 4 ;  Decrement memory offset
95 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
96 : SUB  5, 5, 4 ;  Decrement memory offset
97 : LDA  7, 132(0) ;  Load address of SQRTSEARCH IMEM block - branch to function
98 : LD   1, 0(5) ;  Load return value from DMEM into register 1
99 : LDC  4, 5(0) ;  Load value of parameters + return value into temporary register 4
100 : ADD  5, 5, 4 ;  Increment memory offset
101 : LDA  7, 127(0) ;  Skip the ELSE block
102 : LDA  6, 124(0) ;  Load return address into R6
103 : ST   6, 0(5) ;  Store current return address into DMEM
104 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
105 : SUB  5, 5, 4 ;  Decrement memory offset
106 : LDC   3, 1020(0) ;  Load offset for parameter n into register 3
107 : LD  1, 0(3) ;  Load parameter n value into register 1
108 : ST   1, 0(5) ;  Store parameter into memory
109 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
110 : SUB  5, 5, 4 ;  Decrement memory offset
111 : LDC   3, 1019(0) ;  Load offset for parameter low into register 3
112 : LD  1, 0(3) ;  Load parameter low value into register 1
113 : ST   1, 0(5) ;  Store parameter into memory
114 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
115 : SUB  5, 5, 4 ;  Decrement memory offset
116 : LDC   3, 1017(0) ;  Load offset for parameter mid into register 3
117 : LD  1, 0(3) ;  Load parameter mid value into register 1
118 : ST   1, 0(5) ;  Store parameter into memory
119 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
120 : SUB  5, 5, 4 ;  Decrement memory offset
121 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
122 : SUB  5, 5, 4 ;  Decrement memory offset
123 : LDA  7, 132(0) ;  Load address of SQRTSEARCH IMEM block - branch to function
124 : LD   1, 0(5) ;  Load return value from DMEM into register 1
125 : LDC  4, 5(0) ;  Load value of parameters + return value into temporary register 4
126 : ADD  5, 5, 4 ;  Increment memory offset
127 : LDC  5, 1016(0) ;  Store the memory location of SQRTSPLIT return value
128 : ST   1, 0(5) ;  Store return value of into DMEM
129 : LDC  3, 1021(0) ;  Load return address for function SQRTSPLIT into register 3
130 : LD   6, 0(3) ;  Load return address into register 6
131 : LDA  7, 0(6) ;  Load return address back into register 7
132 : LDA  6, 156(0) ;  Load return address into R6
133 : ST   6, 0(5) ;  Store current return address into DMEM
134 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
135 : SUB  5, 5, 4 ;  Decrement memory offset
136 : LDC   3, 1018(0) ;  Load offset for parameter high into register 3
137 : LD  1, 0(3) ;  Load parameter high value into register 1
138 : ST   1, 0(5) ;  Store parameter into memory
139 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
140 : SUB  5, 5, 4 ;  Decrement memory offset
141 : LDC   3, 1019(0) ;  Load offset for parameter low into register 3
142 : LD  1, 0(3) ;  Load parameter low value into register 1
143 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
144 : SUB  5, 5, 4 ;  Decrement memory offset
145 : ST   1, 0(5) ;  Store left expression value into memory
146 : LDC  1, 1(0) ;  Load integer-literal value into register 1
147 : LD   2, 0(5) ;  Load left expression value from memory into register 2
148 : ADD  5, 5, 4 ;  Increment memory offset
149 : ADD  1, 2, 1 ;  Add left and right expression values
150 : ST   1, 0(5) ;  Store parameter into memory
151 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
152 : SUB  5, 5, 4 ;  Decrement memory offset
153 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
154 : SUB  5, 5, 4 ;  Decrement memory offset
155 : LDA  7, 790(0) ;  Load address of LE IMEM block - branch to function
156 : LD   1, 0(5) ;  Load return value from DMEM into register 1
157 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
158 : ADD  5, 5, 4 ;  Increment memory offset
159 : JEQ  1, 239(0) ;  If condition is false, skip to ELSE block
160 : LDA  6, 229(0) ;  Load return address into R6
161 : ST   6, 0(5) ;  Store current return address into DMEM
162 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
163 : SUB  5, 5, 4 ;  Decrement memory offset
164 : LDC   3, 1020(0) ;  Load offset for parameter n into register 3
165 : LD  1, 0(3) ;  Load parameter n value into register 1
166 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
167 : SUB  5, 5, 4 ;  Decrement memory offset
168 : ST   1, 0(5) ;  Store left expression value into memory
169 : LDA  6, 186(0) ;  Load return address into R6
170 : ST   6, 0(5) ;  Store current return address into DMEM
171 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
172 : SUB  5, 5, 4 ;  Decrement memory offset
173 : LDC   3, 1019(0) ;  Load offset for parameter low into register 3
174 : LD  1, 0(3) ;  Load parameter low value into register 1
175 : ST   1, 0(5) ;  Store parameter into memory
176 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
177 : SUB  5, 5, 4 ;  Decrement memory offset
178 : LDC   3, 1019(0) ;  Load offset for parameter low into register 3
179 : LD  1, 0(3) ;  Load parameter low value into register 1
180 : ST   1, 0(5) ;  Store parameter into memory
181 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
182 : SUB  5, 5, 4 ;  Decrement memory offset
183 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
184 : SUB  5, 5, 4 ;  Decrement memory offset
185 : LDA  7, 664(0) ;  Load address of TIMES IMEM block - branch to function
186 : LD   1, 0(5) ;  Load return value from DMEM into register 1
187 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
188 : ADD  5, 5, 4 ;  Increment memory offset
189 : LD   2, 0(5) ;  Load left expression value from memory into register 2
190 : ADD  5, 5, 4 ;  Increment memory offset
191 : SUB  1, 2, 1 ;  Subtract left expression from right expression value
192 : ST   1, 0(5) ;  Store parameter into memory
193 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
194 : SUB  5, 5, 4 ;  Decrement memory offset
195 : LDA  6, 212(0) ;  Load return address into R6
196 : ST   6, 0(5) ;  Store current return address into DMEM
197 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
198 : SUB  5, 5, 4 ;  Decrement memory offset
199 : LDC   3, 1018(0) ;  Load offset for parameter high into register 3
200 : LD  1, 0(3) ;  Load parameter high value into register 1
201 : ST   1, 0(5) ;  Store parameter into memory
202 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
203 : SUB  5, 5, 4 ;  Decrement memory offset
204 : LDC   3, 1018(0) ;  Load offset for parameter high into register 3
205 : LD  1, 0(3) ;  Load parameter high value into register 1
206 : ST   1, 0(5) ;  Store parameter into memory
207 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
208 : SUB  5, 5, 4 ;  Decrement memory offset
209 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
210 : SUB  5, 5, 4 ;  Decrement memory offset
211 : LDA  7, 664(0) ;  Load address of TIMES IMEM block - branch to function
212 : LD   1, 0(5) ;  Load return value from DMEM into register 1
213 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
214 : ADD  5, 5, 4 ;  Increment memory offset
215 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
216 : SUB  5, 5, 4 ;  Decrement memory offset
217 : ST   1, 0(5) ;  Store left expression value into memory
218 : LDC   3, 1020(0) ;  Load offset for parameter n into register 3
219 : LD  1, 0(3) ;  Load parameter n value into register 1
220 : LD   2, 0(5) ;  Load left expression value from memory into register 2
221 : ADD  5, 5, 4 ;  Increment memory offset
222 : SUB  1, 2, 1 ;  Subtract left expression from right expression value
223 : ST   1, 0(5) ;  Store parameter into memory
224 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
225 : SUB  5, 5, 4 ;  Decrement memory offset
226 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
227 : SUB  5, 5, 4 ;  Decrement memory offset
228 : LDA  7, 790(0) ;  Load address of LE IMEM block - branch to function
229 : LD   1, 0(5) ;  Load return value from DMEM into register 1
230 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
231 : ADD  5, 5, 4 ;  Increment memory offset
232 : JEQ  1, 236(0) ;  If condition is false, skip to ELSE block
233 : LDC   3, 1019(0) ;  Load offset for parameter low into register 3
234 : LD  1, 0(3) ;  Load parameter low value into register 1
235 : LDA  7, 238(0) ;  Skip the ELSE block
236 : LDC   3, 1018(0) ;  Load offset for parameter high into register 3
237 : LD  1, 0(3) ;  Load parameter high value into register 1
238 : LDA  7, 294(0) ;  Skip the ELSE block
239 : LDA  6, 291(0) ;  Load return address into R6
240 : ST   6, 0(5) ;  Store current return address into DMEM
241 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
242 : SUB  5, 5, 4 ;  Decrement memory offset
243 : LDC   3, 1020(0) ;  Load offset for parameter n into register 3
244 : LD  1, 0(3) ;  Load parameter n value into register 1
245 : ST   1, 0(5) ;  Store parameter into memory
246 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
247 : SUB  5, 5, 4 ;  Decrement memory offset
248 : LDC   3, 1019(0) ;  Load offset for parameter low into register 3
249 : LD  1, 0(3) ;  Load parameter low value into register 1
250 : ST   1, 0(5) ;  Store parameter into memory
251 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
252 : SUB  5, 5, 4 ;  Decrement memory offset
253 : LDC   3, 1018(0) ;  Load offset for parameter high into register 3
254 : LD  1, 0(3) ;  Load parameter high value into register 1
255 : ST   1, 0(5) ;  Store parameter into memory
256 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
257 : SUB  5, 5, 4 ;  Decrement memory offset
258 : LDA  6, 275(0) ;  Load return address into R6
259 : ST   6, 0(5) ;  Store current return address into DMEM
260 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
261 : SUB  5, 5, 4 ;  Decrement memory offset
262 : LDC   3, 1019(0) ;  Load offset for parameter low into register 3
263 : LD  1, 0(3) ;  Load parameter low value into register 1
264 : ST   1, 0(5) ;  Store parameter into memory
265 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
266 : SUB  5, 5, 4 ;  Decrement memory offset
267 : LDC   3, 1018(0) ;  Load offset for parameter high into register 3
268 : LD  1, 0(3) ;  Load parameter high value into register 1
269 : ST   1, 0(5) ;  Store parameter into memory
270 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
271 : SUB  5, 5, 4 ;  Decrement memory offset
272 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
273 : SUB  5, 5, 4 ;  Decrement memory offset
274 : LDA  7, 694(0) ;  Load address of PLUS IMEM block - branch to function
275 : LD   1, 0(5) ;  Load return value from DMEM into register 1
276 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
277 : ADD  5, 5, 4 ;  Increment memory offset
278 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
279 : SUB  5, 5, 4 ;  Decrement memory offset
280 : ST   1, 0(5) ;  Store left expression value into memory
281 : LDC  1, 2(0) ;  Load integer-literal value into register 1
282 : LD   2, 0(5) ;  Load left expression value from memory into register 2
283 : ADD  5, 5, 4 ;  Increment memory offset
284 : DIV  1, 2, 1 ;  Divide left expression by right expression value
285 : ST   1, 0(5) ;  Store parameter into memory
286 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
287 : SUB  5, 5, 4 ;  Decrement memory offset
288 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
289 : SUB  5, 5, 4 ;  Decrement memory offset
290 : LDA  7, 47(0) ;  Load address of SQRTSPLIT IMEM block - branch to function
291 : LD   1, 0(5) ;  Load return value from DMEM into register 1
292 : LDC  4, 6(0) ;  Load value of parameters + return value into temporary register 4
293 : ADD  5, 5, 4 ;  Increment memory offset
294 : LDC  5, 1017(0) ;  Store the memory location of SQRTSEARCH return value
295 : ST   1, 0(5) ;  Store return value of into DMEM
296 : LDC  3, 1021(0) ;  Load return address for function SQRTSEARCH into register 3
297 : LD   6, 0(3) ;  Load return address into register 6
298 : LDA  7, 0(6) ;  Load return address back into register 7
299 : LDA  6, 320(0) ;  Load return address into R6
300 : ST   6, 0(5) ;  Store current return address into DMEM
301 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
302 : SUB  5, 5, 4 ;  Decrement memory offset
303 : LDC   3, 1020(0) ;  Load offset for parameter n into register 3
304 : LD  1, 0(3) ;  Load parameter n value into register 1
305 : ST   1, 0(5) ;  Store parameter into memory
306 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
307 : SUB  5, 5, 4 ;  Decrement memory offset
308 : LDC  1, 0(0) ;  Load integer-literal value into register 1
309 : ST   1, 0(5) ;  Store parameter into memory
310 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
311 : SUB  5, 5, 4 ;  Decrement memory offset
312 : LDC   3, 1020(0) ;  Load offset for parameter n into register 3
313 : LD  1, 0(3) ;  Load parameter n value into register 1
314 : ST   1, 0(5) ;  Store parameter into memory
315 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
316 : SUB  5, 5, 4 ;  Decrement memory offset
317 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
318 : SUB  5, 5, 4 ;  Decrement memory offset
319 : LDA  7, 132(0) ;  Load address of SQRTSEARCH IMEM block - branch to function
320 : LD   1, 0(5) ;  Load return value from DMEM into register 1
321 : LDC  4, 5(0) ;  Load value of parameters + return value into temporary register 4
322 : ADD  5, 5, 4 ;  Increment memory offset
323 : LDC  5, 1019(0) ;  Store the memory location of SQRT return value
324 : ST   1, 0(5) ;  Store return value of into DMEM
325 : LDC  3, 1021(0) ;  Load return address for function SQRT into register 3
326 : LD   6, 0(3) ;  Load return address into register 6
327 : LDA  7, 0(6) ;  Load return address back into register 7
328 : LDA  6, 344(0) ;  Load return address into R6
329 : ST   6, 0(5) ;  Store current return address into DMEM
330 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
331 : SUB  5, 5, 4 ;  Decrement memory offset
332 : LDC  1, 0(0) ;  Load integer-literal value into register 1
333 : ST   1, 0(5) ;  Store parameter into memory
334 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
335 : SUB  5, 5, 4 ;  Decrement memory offset
336 : LDC   3, 1020(0) ;  Load offset for parameter n into register 3
337 : LD  1, 0(3) ;  Load parameter n value into register 1
338 : ST   1, 0(5) ;  Store parameter into memory
339 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
340 : SUB  5, 5, 4 ;  Decrement memory offset
341 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
342 : SUB  5, 5, 4 ;  Decrement memory offset
343 : LDA  7, 790(0) ;  Load address of LE IMEM block - branch to function
344 : LD   1, 0(5) ;  Load return value from DMEM into register 1
345 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
346 : ADD  5, 5, 4 ;  Increment memory offset
347 : JEQ  1, 411(0) ;  If condition is false, skip to ELSE block
348 : LDA  6, 407(0) ;  Load return address into R6
349 : ST   6, 0(5) ;  Store current return address into DMEM
350 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
351 : SUB  5, 5, 4 ;  Decrement memory offset
352 : LDC   3, 1020(0) ;  Load offset for parameter n into register 3
353 : LD  1, 0(3) ;  Load parameter n value into register 1
354 : ST   1, 0(5) ;  Store parameter into memory
355 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
356 : SUB  5, 5, 4 ;  Decrement memory offset
357 : LDA  6, 373(0) ;  Load return address into R6
358 : ST   6, 0(5) ;  Store current return address into DMEM
359 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
360 : SUB  5, 5, 4 ;  Decrement memory offset
361 : LDC   3, 1020(0) ;  Load offset for parameter n into register 3
362 : LD  1, 0(3) ;  Load parameter n value into register 1
363 : ST   1, 0(5) ;  Store parameter into memory
364 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
365 : SUB  5, 5, 4 ;  Decrement memory offset
366 : LDC  1, 2(0) ;  Load integer-literal value into register 1
367 : ST   1, 0(5) ;  Store parameter into memory
368 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
369 : SUB  5, 5, 4 ;  Decrement memory offset
370 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
371 : SUB  5, 5, 4 ;  Decrement memory offset
372 : LDA  7, 649(0) ;  Load address of DIV IMEM block - branch to function
373 : LD   1, 0(5) ;  Load return value from DMEM into register 1
374 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
375 : ADD  5, 5, 4 ;  Increment memory offset
376 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
377 : SUB  5, 5, 4 ;  Decrement memory offset
378 : ST   1, 0(5) ;  Store left expression value into memory
379 : LDA  6, 395(0) ;  Load return address into R6
380 : ST   6, 0(5) ;  Store current return address into DMEM
381 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
382 : SUB  5, 5, 4 ;  Decrement memory offset
383 : LDC   3, 1020(0) ;  Load offset for parameter n into register 3
384 : LD  1, 0(3) ;  Load parameter n value into register 1
385 : ST   1, 0(5) ;  Store parameter into memory
386 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
387 : SUB  5, 5, 4 ;  Decrement memory offset
388 : LDC  1, 2(0) ;  Load integer-literal value into register 1
389 : ST   1, 0(5) ;  Store parameter into memory
390 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
391 : SUB  5, 5, 4 ;  Decrement memory offset
392 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
393 : SUB  5, 5, 4 ;  Decrement memory offset
394 : LDA  7, 649(0) ;  Load address of DIV IMEM block - branch to function
395 : LD   1, 0(5) ;  Load return value from DMEM into register 1
396 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
397 : ADD  5, 5, 4 ;  Increment memory offset
398 : LD   2, 0(5) ;  Load left expression value from memory into register 2
399 : ADD  5, 5, 4 ;  Increment memory offset
400 : ADD  1, 2, 1 ;  Add left and right expression values
401 : ST   1, 0(5) ;  Store parameter into memory
402 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
403 : SUB  5, 5, 4 ;  Decrement memory offset
404 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
405 : SUB  5, 5, 4 ;  Decrement memory offset
406 : LDA  7, 736(0) ;  Load address of GT IMEM block - branch to function
407 : LD   1, 0(5) ;  Load return value from DMEM into register 1
408 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
409 : ADD  5, 5, 4 ;  Increment memory offset
410 : LDA  7, 512(0) ;  Skip the ELSE block
411 : LDA  6, 509(0) ;  Load return address into R6
412 : ST   6, 0(5) ;  Store current return address into DMEM
413 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
414 : SUB  5, 5, 4 ;  Decrement memory offset
415 : LDA  6, 427(0) ;  Load return address into R6
416 : ST   6, 0(5) ;  Store current return address into DMEM
417 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
418 : SUB  5, 5, 4 ;  Decrement memory offset
419 : LDC   3, 1020(0) ;  Load offset for parameter n into register 3
420 : LD  1, 0(3) ;  Load parameter n value into register 1
421 : ST   1, 0(5) ;  Store parameter into memory
422 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
423 : SUB  5, 5, 4 ;  Decrement memory offset
424 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
425 : SUB  5, 5, 4 ;  Decrement memory offset
426 : LDA  7, 641(0) ;  Load address of NEG IMEM block - branch to function
427 : LD   1, 0(5) ;  Load return value from DMEM into register 1
428 : LDC  4, 3(0) ;  Load value of parameters + return value into temporary register 4
429 : ADD  5, 5, 4 ;  Increment memory offset
430 : ST   1, 0(5) ;  Store parameter into memory
431 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
432 : SUB  5, 5, 4 ;  Decrement memory offset
433 : LDA  6, 462(0) ;  Load return address into R6
434 : ST   6, 0(5) ;  Store current return address into DMEM
435 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
436 : SUB  5, 5, 4 ;  Decrement memory offset
437 : LDA  6, 449(0) ;  Load return address into R6
438 : ST   6, 0(5) ;  Store current return address into DMEM
439 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
440 : SUB  5, 5, 4 ;  Decrement memory offset
441 : LDC   3, 1020(0) ;  Load offset for parameter n into register 3
442 : LD  1, 0(3) ;  Load parameter n value into register 1
443 : ST   1, 0(5) ;  Store parameter into memory
444 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
445 : SUB  5, 5, 4 ;  Decrement memory offset
446 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
447 : SUB  5, 5, 4 ;  Decrement memory offset
448 : LDA  7, 641(0) ;  Load address of NEG IMEM block - branch to function
449 : LD   1, 0(5) ;  Load return value from DMEM into register 1
450 : LDC  4, 3(0) ;  Load value of parameters + return value into temporary register 4
451 : ADD  5, 5, 4 ;  Increment memory offset
452 : ST   1, 0(5) ;  Store parameter into memory
453 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
454 : SUB  5, 5, 4 ;  Decrement memory offset
455 : LDC  1, 2(0) ;  Load integer-literal value into register 1
456 : ST   1, 0(5) ;  Store parameter into memory
457 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
458 : SUB  5, 5, 4 ;  Decrement memory offset
459 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
460 : SUB  5, 5, 4 ;  Decrement memory offset
461 : LDA  7, 649(0) ;  Load address of DIV IMEM block - branch to function
462 : LD   1, 0(5) ;  Load return value from DMEM into register 1
463 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
464 : ADD  5, 5, 4 ;  Increment memory offset
465 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
466 : SUB  5, 5, 4 ;  Decrement memory offset
467 : ST   1, 0(5) ;  Store left expression value into memory
468 : LDA  6, 497(0) ;  Load return address into R6
469 : ST   6, 0(5) ;  Store current return address into DMEM
470 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
471 : SUB  5, 5, 4 ;  Decrement memory offset
472 : LDA  6, 484(0) ;  Load return address into R6
473 : ST   6, 0(5) ;  Store current return address into DMEM
474 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
475 : SUB  5, 5, 4 ;  Decrement memory offset
476 : LDC   3, 1020(0) ;  Load offset for parameter n into register 3
477 : LD  1, 0(3) ;  Load parameter n value into register 1
478 : ST   1, 0(5) ;  Store parameter into memory
479 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
480 : SUB  5, 5, 4 ;  Decrement memory offset
481 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
482 : SUB  5, 5, 4 ;  Decrement memory offset
483 : LDA  7, 641(0) ;  Load address of NEG IMEM block - branch to function
484 : LD   1, 0(5) ;  Load return value from DMEM into register 1
485 : LDC  4, 3(0) ;  Load value of parameters + return value into temporary register 4
486 : ADD  5, 5, 4 ;  Increment memory offset
487 : ST   1, 0(5) ;  Store parameter into memory
488 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
489 : SUB  5, 5, 4 ;  Decrement memory offset
490 : LDC  1, 2(0) ;  Load integer-literal value into register 1
491 : ST   1, 0(5) ;  Store parameter into memory
492 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
493 : SUB  5, 5, 4 ;  Decrement memory offset
494 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
495 : SUB  5, 5, 4 ;  Decrement memory offset
496 : LDA  7, 649(0) ;  Load address of DIV IMEM block - branch to function
497 : LD   1, 0(5) ;  Load return value from DMEM into register 1
498 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
499 : ADD  5, 5, 4 ;  Increment memory offset
500 : LD   2, 0(5) ;  Load left expression value from memory into register 2
501 : ADD  5, 5, 4 ;  Increment memory offset
502 : ADD  1, 2, 1 ;  Add left and right expression values
503 : ST   1, 0(5) ;  Store parameter into memory
504 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
505 : SUB  5, 5, 4 ;  Decrement memory offset
506 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
507 : SUB  5, 5, 4 ;  Decrement memory offset
508 : LDA  7, 736(0) ;  Load address of GT IMEM block - branch to function
509 : LD   1, 0(5) ;  Load return value from DMEM into register 1
510 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
511 : ADD  5, 5, 4 ;  Increment memory offset
512 : LDC  5, 1019(0) ;  Store the memory location of ODD return value
513 : ST   1, 0(5) ;  Store return value of into DMEM
514 : LDC  3, 1021(0) ;  Load return address for function ODD into register 3
515 : LD   6, 0(3) ;  Load return address into register 6
516 : LDA  7, 0(6) ;  Load return address back into register 7
517 : LDC   3, 1019(0) ;  Load offset for parameter n into register 3
518 : LD  1, 0(3) ;  Load parameter n value into register 1
519 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
520 : SUB  5, 5, 4 ;  Decrement memory offset
521 : ST   1, 0(5) ;  Store left expression value into memory
522 : LDC  1, 0(0) ;  Load integer-literal value into register 1
523 : LD   2, 0(5) ;  Load left expression value from memory into register 2
524 : ADD  5, 5, 4 ;  Increment memory offset
525 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for equality check
526 : JEQ  1, 2(7) ;  If Register 1 is 0, then jump to true handling
527 : LDC  1, 0(0) ;  Load false (0) into register 1
528 : LDA  7, 1(7) ;  Jump to end of equality handling
529 : LDC  1, 1(0) ;  Load true (1) into register 1
530 : JEQ  1, 533(0) ;  If condition is false, skip to ELSE block
531 : LDC  1, 1(0) ;  Load integer-literal value into register 1
532 : LDA  7, 568(0) ;  Skip the ELSE block
533 : LDC   3, 1020(0) ;  Load offset for parameter m into register 3
534 : LD  1, 0(3) ;  Load parameter m value into register 1
535 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
536 : SUB  5, 5, 4 ;  Decrement memory offset
537 : ST   1, 0(5) ;  Store left expression value into memory
538 : LDA  6, 562(0) ;  Load return address into R6
539 : ST   6, 0(5) ;  Store current return address into DMEM
540 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
541 : SUB  5, 5, 4 ;  Decrement memory offset
542 : LDC   3, 1019(0) ;  Load offset for parameter m into register 3
543 : LD  1, 0(3) ;  Load parameter m value into register 1
544 : ST   1, 0(5) ;  Store parameter into memory
545 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
546 : SUB  5, 5, 4 ;  Decrement memory offset
547 : LDC   3, 1018(0) ;  Load offset for parameter n into register 3
548 : LD  1, 0(3) ;  Load parameter n value into register 1
549 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
550 : SUB  5, 5, 4 ;  Decrement memory offset
551 : ST   1, 0(5) ;  Store left expression value into memory
552 : LDC  1, 1(0) ;  Load integer-literal value into register 1
553 : LD   2, 0(5) ;  Load left expression value from memory into register 2
554 : ADD  5, 5, 4 ;  Increment memory offset
555 : SUB  1, 2, 1 ;  Subtract left expression from right expression value
556 : ST   1, 0(5) ;  Store parameter into memory
557 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
558 : SUB  5, 5, 4 ;  Decrement memory offset
559 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
560 : SUB  5, 5, 4 ;  Decrement memory offset
561 : LDA  7, 517(0) ;  Load address of EXP IMEM block - branch to function
562 : LD   1, 0(5) ;  Load return value from DMEM into register 1
563 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
564 : ADD  5, 5, 4 ;  Increment memory offset
565 : LD   2, 0(5) ;  Load left expression value from memory into register 2
566 : ADD  5, 5, 4 ;  Increment memory offset
567 : MUL  1, 2, 1 ;  Multiply left and right expression values
568 : LDC  5, 1017(0) ;  Store the memory location of EXP return value
569 : ST   1, 0(5) ;  Store return value of into DMEM
570 : LDC  3, 1020(0) ;  Load return address for function EXP into register 3
571 : LD   6, 0(3) ;  Load return address into register 6
572 : LDA  7, 0(6) ;  Load return address back into register 7
573 : LDC   3, 1020(0) ;  Load offset for parameter m into register 3
574 : LD  1, 0(3) ;  Load parameter m value into register 1
575 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
576 : SUB  5, 5, 4 ;  Decrement memory offset
577 : ST   1, 0(5) ;  Store left expression value into memory
578 : LDC   3, 1020(0) ;  Load offset for parameter m into register 3
579 : LD  1, 0(3) ;  Load parameter m value into register 1
580 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
581 : SUB  5, 5, 4 ;  Decrement memory offset
582 : ST   1, 0(5) ;  Store left expression value into memory
583 : LDC   3, 1019(0) ;  Load offset for parameter n into register 3
584 : LD  1, 0(3) ;  Load parameter n value into register 1
585 : LD   2, 0(5) ;  Load left expression value from memory into register 2
586 : ADD  5, 5, 4 ;  Increment memory offset
587 : DIV  1, 2, 1 ;  Divide left expression by right expression value
588 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
589 : SUB  5, 5, 4 ;  Decrement memory offset
590 : ST   1, 0(5) ;  Store left expression value into memory
591 : LDC   3, 1019(0) ;  Load offset for parameter n into register 3
592 : LD  1, 0(3) ;  Load parameter n value into register 1
593 : LD   2, 0(5) ;  Load left expression value from memory into register 2
594 : ADD  5, 5, 4 ;  Increment memory offset
595 : MUL  1, 2, 1 ;  Multiply left and right expression values
596 : LD   2, 0(5) ;  Load left expression value from memory into register 2
597 : ADD  5, 5, 4 ;  Increment memory offset
598 : SUB  1, 2, 1 ;  Subtract left expression from right expression value
599 : LDC  5, 1018(0) ;  Store the memory location of MOD return value
600 : ST   1, 0(5) ;  Store return value of into DMEM
601 : LDC  3, 1021(0) ;  Load return address for function MOD into register 3
602 : LD   6, 0(3) ;  Load return address into register 6
603 : LDA  7, 0(6) ;  Load return address back into register 7
604 : LDC  1, 0(0) ;  Load integer-literal value into register 1
605 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
606 : SUB  5, 5, 4 ;  Decrement memory offset
607 : ST   1, 0(5) ;  Store left expression value into memory
608 : LDC   3, 1020(0) ;  Load offset for parameter n into register 3
609 : LD  1, 0(3) ;  Load parameter n value into register 1
610 : LD   2, 0(5) ;  Load left expression value from memory into register 2
611 : ADD  5, 5, 4 ;  Increment memory offset
612 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for less-than check
613 : JLT  1, 2(7) ;  If Register 1 is negative, then jump to true handling
614 : LDC  1, 0(0) ;  Load false (0) into register 1
615 : LDA  7, 1(7) ;  Jump to end of less-than handling
616 : LDC  1, 1(0) ;  Load true (1) into register 1
617 : JEQ  1, 621(0) ;  If condition is false, skip to ELSE block
618 : LDC   3, 1020(0) ;  Load offset for parameter n into register 3
619 : LD  1, 0(3) ;  Load parameter n value into register 1
620 : LDA  7, 636(0) ;  Skip the ELSE block
621 : LDA  6, 633(0) ;  Load return address into R6
622 : ST   6, 0(5) ;  Store current return address into DMEM
623 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
624 : SUB  5, 5, 4 ;  Decrement memory offset
625 : LDC   3, 1020(0) ;  Load offset for parameter n into register 3
626 : LD  1, 0(3) ;  Load parameter n value into register 1
627 : ST   1, 0(5) ;  Store parameter into memory
628 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
629 : SUB  5, 5, 4 ;  Decrement memory offset
630 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
631 : SUB  5, 5, 4 ;  Decrement memory offset
632 : LDA  7, 641(0) ;  Load address of NEG IMEM block - branch to function
633 : LD   1, 0(5) ;  Load return value from DMEM into register 1
634 : LDC  4, 3(0) ;  Load value of parameters + return value into temporary register 4
635 : ADD  5, 5, 4 ;  Increment memory offset
636 : LDC  5, 1019(0) ;  Store the memory location of ABS return value
637 : ST   1, 0(5) ;  Store return value of into DMEM
638 : LDC  3, 1021(0) ;  Load return address for function ABS into register 3
639 : LD   6, 0(3) ;  Load return address into register 6
640 : LDA  7, 0(6) ;  Load return address back into register 7
641 : LDC   3, 1020(0) ;  Load offset for parameter n into register 3
642 : LD  1, 0(3) ;  Load parameter n value into register 1
643 : SUB  1, 0, 1 ;  Switch sign of value
644 : LDC  5, 1019(0) ;  Store the memory location of NEG return value
645 : ST   1, 0(5) ;  Store return value of into DMEM
646 : LDC  3, 1021(0) ;  Load return address for function NEG into register 3
647 : LD   6, 0(3) ;  Load return address into register 6
648 : LDA  7, 0(6) ;  Load return address back into register 7
649 : LDC   3, 1020(0) ;  Load offset for parameter p into register 3
650 : LD  1, 0(3) ;  Load parameter p value into register 1
651 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
652 : SUB  5, 5, 4 ;  Decrement memory offset
653 : ST   1, 0(5) ;  Store left expression value into memory
654 : LDC   3, 1019(0) ;  Load offset for parameter q into register 3
655 : LD  1, 0(3) ;  Load parameter q value into register 1
656 : LD   2, 0(5) ;  Load left expression value from memory into register 2
657 : ADD  5, 5, 4 ;  Increment memory offset
658 : DIV  1, 2, 1 ;  Divide left expression by right expression value
659 : LDC  5, 1018(0) ;  Store the memory location of DIV return value
660 : ST   1, 0(5) ;  Store return value of into DMEM
661 : LDC  3, 1021(0) ;  Load return address for function DIV into register 3
662 : LD   6, 0(3) ;  Load return address into register 6
663 : LDA  7, 0(6) ;  Load return address back into register 7
664 : LDC   3, 1020(0) ;  Load offset for parameter p into register 3
665 : LD  1, 0(3) ;  Load parameter p value into register 1
666 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
667 : SUB  5, 5, 4 ;  Decrement memory offset
668 : ST   1, 0(5) ;  Store left expression value into memory
669 : LDC   3, 1019(0) ;  Load offset for parameter q into register 3
670 : LD  1, 0(3) ;  Load parameter q value into register 1
671 : LD   2, 0(5) ;  Load left expression value from memory into register 2
672 : ADD  5, 5, 4 ;  Increment memory offset
673 : MUL  1, 2, 1 ;  Multiply left and right expression values
674 : LDC  5, 1018(0) ;  Store the memory location of TIMES return value
675 : ST   1, 0(5) ;  Store return value of into DMEM
676 : LDC  3, 1021(0) ;  Load return address for function TIMES into register 3
677 : LD   6, 0(3) ;  Load return address into register 6
678 : LDA  7, 0(6) ;  Load return address back into register 7
679 : LDC   3, 1020(0) ;  Load offset for parameter p into register 3
680 : LD  1, 0(3) ;  Load parameter p value into register 1
681 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
682 : SUB  5, 5, 4 ;  Decrement memory offset
683 : ST   1, 0(5) ;  Store left expression value into memory
684 : LDC   3, 1019(0) ;  Load offset for parameter q into register 3
685 : LD  1, 0(3) ;  Load parameter q value into register 1
686 : LD   2, 0(5) ;  Load left expression value from memory into register 2
687 : ADD  5, 5, 4 ;  Increment memory offset
688 : SUB  1, 2, 1 ;  Subtract left expression from right expression value
689 : LDC  5, 1018(0) ;  Store the memory location of MINUS return value
690 : ST   1, 0(5) ;  Store return value of into DMEM
691 : LDC  3, 1021(0) ;  Load return address for function MINUS into register 3
692 : LD   6, 0(3) ;  Load return address into register 6
693 : LDA  7, 0(6) ;  Load return address back into register 7
694 : LDC   3, 1020(0) ;  Load offset for parameter p into register 3
695 : LD  1, 0(3) ;  Load parameter p value into register 1
696 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
697 : SUB  5, 5, 4 ;  Decrement memory offset
698 : ST   1, 0(5) ;  Store left expression value into memory
699 : LDC   3, 1019(0) ;  Load offset for parameter q into register 3
700 : LD  1, 0(3) ;  Load parameter q value into register 1
701 : LD   2, 0(5) ;  Load left expression value from memory into register 2
702 : ADD  5, 5, 4 ;  Increment memory offset
703 : ADD  1, 2, 1 ;  Add left and right expression values
704 : LDC  5, 1018(0) ;  Store the memory location of PLUS return value
705 : ST   1, 0(5) ;  Store return value of into DMEM
706 : LDC  3, 1021(0) ;  Load return address for function PLUS into register 3
707 : LD   6, 0(3) ;  Load return address into register 6
708 : LDA  7, 0(6) ;  Load return address back into register 7
709 : LDC   3, 1020(0) ;  Load offset for parameter p into register 3
710 : LD  1, 0(3) ;  Load parameter p value into register 1
711 : JEQ  1, 715(0) ;  If condition is false, skip to ELSE block
712 : LDC   3, 1019(0) ;  Load offset for parameter q into register 3
713 : LD  1, 0(3) ;  Load parameter q value into register 1
714 : LDA  7, 716(0) ;  Skip the ELSE block
715 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
716 : LDC  5, 1018(0) ;  Store the memory location of AND return value
717 : ST   1, 0(5) ;  Store return value of into DMEM
718 : LDC  3, 1021(0) ;  Load return address for function AND into register 3
719 : LD   6, 0(3) ;  Load return address into register 6
720 : LDA  7, 0(6) ;  Load return address back into register 7
721 : LDC   3, 1020(0) ;  Load offset for parameter p into register 3
722 : LD  1, 0(3) ;  Load parameter p value into register 1
723 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
724 : SUB  5, 5, 4 ;  Decrement memory offset
725 : ST   1, 0(5) ;  Store left expression value into memory
726 : LDC   3, 1019(0) ;  Load offset for parameter q into register 3
727 : LD  1, 0(3) ;  Load parameter q value into register 1
728 : LD   2, 0(5) ;  Load left expression value from memory into register 2
729 : ADD  5, 5, 4 ;  Increment memory offset
730 : ADD  1, 2, 1 ;  Compute logical OR for left and right expression values
731 : LDC  5, 1018(0) ;  Store the memory location of OR return value
732 : ST   1, 0(5) ;  Store return value of into DMEM
733 : LDC  3, 1021(0) ;  Load return address for function OR into register 3
734 : LD   6, 0(3) ;  Load return address into register 6
735 : LDA  7, 0(6) ;  Load return address back into register 7
736 : LDA  6, 753(0) ;  Load return address into R6
737 : ST   6, 0(5) ;  Store current return address into DMEM
738 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
739 : SUB  5, 5, 4 ;  Decrement memory offset
740 : LDC   3, 1020(0) ;  Load offset for parameter p into register 3
741 : LD  1, 0(3) ;  Load parameter p value into register 1
742 : ST   1, 0(5) ;  Store parameter into memory
743 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
744 : SUB  5, 5, 4 ;  Decrement memory offset
745 : LDC   3, 1019(0) ;  Load offset for parameter q into register 3
746 : LD  1, 0(3) ;  Load parameter q value into register 1
747 : ST   1, 0(5) ;  Store parameter into memory
748 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
749 : SUB  5, 5, 4 ;  Decrement memory offset
750 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
751 : SUB  5, 5, 4 ;  Decrement memory offset
752 : LDA  7, 790(0) ;  Load address of LE IMEM block - branch to function
753 : LD   1, 0(5) ;  Load return value from DMEM into register 1
754 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
755 : ADD  5, 5, 4 ;  Increment memory offset
756 : LDC  2, 1(0) ;  Load value 1 into register 2
757 : SUB  1, 2, 1 ;  Flip boolean value
758 : LDC  5, 1018(0) ;  Store the memory location of GT return value
759 : ST   1, 0(5) ;  Store return value of into DMEM
760 : LDC  3, 1021(0) ;  Load return address for function GT into register 3
761 : LD   6, 0(3) ;  Load return address into register 6
762 : LDA  7, 0(6) ;  Load return address back into register 7
763 : LDA  6, 780(0) ;  Load return address into R6
764 : ST   6, 0(5) ;  Store current return address into DMEM
765 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
766 : SUB  5, 5, 4 ;  Decrement memory offset
767 : LDC   3, 1020(0) ;  Load offset for parameter p into register 3
768 : LD  1, 0(3) ;  Load parameter p value into register 1
769 : ST   1, 0(5) ;  Store parameter into memory
770 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
771 : SUB  5, 5, 4 ;  Decrement memory offset
772 : LDC   3, 1019(0) ;  Load offset for parameter q into register 3
773 : LD  1, 0(3) ;  Load parameter q value into register 1
774 : ST   1, 0(5) ;  Store parameter into memory
775 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
776 : SUB  5, 5, 4 ;  Decrement memory offset
777 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
778 : SUB  5, 5, 4 ;  Decrement memory offset
779 : LDA  7, 887(0) ;  Load address of LT IMEM block - branch to function
780 : LD   1, 0(5) ;  Load return value from DMEM into register 1
781 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
782 : ADD  5, 5, 4 ;  Increment memory offset
783 : LDC  2, 1(0) ;  Load value 1 into register 2
784 : SUB  1, 2, 1 ;  Flip boolean value
785 : LDC  5, 1018(0) ;  Store the memory location of GE return value
786 : ST   1, 0(5) ;  Store return value of into DMEM
787 : LDC  3, 1021(0) ;  Load return address for function GE into register 3
788 : LD   6, 0(3) ;  Load return address into register 6
789 : LDA  7, 0(6) ;  Load return address back into register 7
790 : LDA  6, 807(0) ;  Load return address into R6
791 : ST   6, 0(5) ;  Store current return address into DMEM
792 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
793 : SUB  5, 5, 4 ;  Decrement memory offset
794 : LDC   3, 1020(0) ;  Load offset for parameter p into register 3
795 : LD  1, 0(3) ;  Load parameter p value into register 1
796 : ST   1, 0(5) ;  Store parameter into memory
797 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
798 : SUB  5, 5, 4 ;  Decrement memory offset
799 : LDC   3, 1019(0) ;  Load offset for parameter q into register 3
800 : LD  1, 0(3) ;  Load parameter q value into register 1
801 : ST   1, 0(5) ;  Store parameter into memory
802 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
803 : SUB  5, 5, 4 ;  Decrement memory offset
804 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
805 : SUB  5, 5, 4 ;  Decrement memory offset
806 : LDA  7, 887(0) ;  Load address of LT IMEM block - branch to function
807 : LD   1, 0(5) ;  Load return value from DMEM into register 1
808 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
809 : ADD  5, 5, 4 ;  Increment memory offset
810 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
811 : SUB  5, 5, 4 ;  Decrement memory offset
812 : ST   1, 0(5) ;  Store left expression value into memory
813 : LDA  6, 830(0) ;  Load return address into R6
814 : ST   6, 0(5) ;  Store current return address into DMEM
815 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
816 : SUB  5, 5, 4 ;  Decrement memory offset
817 : LDC   3, 1020(0) ;  Load offset for parameter p into register 3
818 : LD  1, 0(3) ;  Load parameter p value into register 1
819 : ST   1, 0(5) ;  Store parameter into memory
820 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
821 : SUB  5, 5, 4 ;  Decrement memory offset
822 : LDC   3, 1019(0) ;  Load offset for parameter q into register 3
823 : LD  1, 0(3) ;  Load parameter q value into register 1
824 : ST   1, 0(5) ;  Store parameter into memory
825 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
826 : SUB  5, 5, 4 ;  Decrement memory offset
827 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
828 : SUB  5, 5, 4 ;  Decrement memory offset
829 : LDA  7, 868(0) ;  Load address of EQ IMEM block - branch to function
830 : LD   1, 0(5) ;  Load return value from DMEM into register 1
831 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
832 : ADD  5, 5, 4 ;  Increment memory offset
833 : LD   2, 0(5) ;  Load left expression value from memory into register 2
834 : ADD  5, 5, 4 ;  Increment memory offset
835 : ADD  1, 2, 1 ;  Compute logical OR for left and right expression values
836 : LDC  5, 1018(0) ;  Store the memory location of LE return value
837 : ST   1, 0(5) ;  Store return value of into DMEM
838 : LDC  3, 1021(0) ;  Load return address for function LE into register 3
839 : LD   6, 0(3) ;  Load return address into register 6
840 : LDA  7, 0(6) ;  Load return address back into register 7
841 : LDA  6, 858(0) ;  Load return address into R6
842 : ST   6, 0(5) ;  Store current return address into DMEM
843 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
844 : SUB  5, 5, 4 ;  Decrement memory offset
845 : LDC   3, 1020(0) ;  Load offset for parameter p into register 3
846 : LD  1, 0(3) ;  Load parameter p value into register 1
847 : ST   1, 0(5) ;  Store parameter into memory
848 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
849 : SUB  5, 5, 4 ;  Decrement memory offset
850 : LDC   3, 1019(0) ;  Load offset for parameter q into register 3
851 : LD  1, 0(3) ;  Load parameter q value into register 1
852 : ST   1, 0(5) ;  Store parameter into memory
853 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
854 : SUB  5, 5, 4 ;  Decrement memory offset
855 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
856 : SUB  5, 5, 4 ;  Decrement memory offset
857 : LDA  7, 868(0) ;  Load address of EQ IMEM block - branch to function
858 : LD   1, 0(5) ;  Load return value from DMEM into register 1
859 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
860 : ADD  5, 5, 4 ;  Increment memory offset
861 : LDC  2, 1(0) ;  Load value 1 into register 2
862 : SUB  1, 2, 1 ;  Flip boolean value
863 : LDC  5, 1018(0) ;  Store the memory location of NE return value
864 : ST   1, 0(5) ;  Store return value of into DMEM
865 : LDC  3, 1021(0) ;  Load return address for function NE into register 3
866 : LD   6, 0(3) ;  Load return address into register 6
867 : LDA  7, 0(6) ;  Load return address back into register 7
868 : LDC   3, 1020(0) ;  Load offset for parameter p into register 3
869 : LD  1, 0(3) ;  Load parameter p value into register 1
870 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
871 : SUB  5, 5, 4 ;  Decrement memory offset
872 : ST   1, 0(5) ;  Store left expression value into memory
873 : LDC   3, 1019(0) ;  Load offset for parameter q into register 3
874 : LD  1, 0(3) ;  Load parameter q value into register 1
875 : LD   2, 0(5) ;  Load left expression value from memory into register 2
876 : ADD  5, 5, 4 ;  Increment memory offset
877 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for equality check
878 : JEQ  1, 2(7) ;  If Register 1 is 0, then jump to true handling
879 : LDC  1, 0(0) ;  Load false (0) into register 1
880 : LDA  7, 1(7) ;  Jump to end of equality handling
881 : LDC  1, 1(0) ;  Load true (1) into register 1
882 : LDC  5, 1018(0) ;  Store the memory location of EQ return value
883 : ST   1, 0(5) ;  Store return value of into DMEM
884 : LDC  3, 1021(0) ;  Load return address for function EQ into register 3
885 : LD   6, 0(3) ;  Load return address into register 6
886 : LDA  7, 0(6) ;  Load return address back into register 7
887 : LDC   3, 1020(0) ;  Load offset for parameter p into register 3
888 : LD  1, 0(3) ;  Load parameter p value into register 1
889 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
890 : SUB  5, 5, 4 ;  Decrement memory offset
891 : ST   1, 0(5) ;  Store left expression value into memory
892 : LDC   3, 1019(0) ;  Load offset for parameter q into register 3
893 : LD  1, 0(3) ;  Load parameter q value into register 1
894 : LD   2, 0(5) ;  Load left expression value from memory into register 2
895 : ADD  5, 5, 4 ;  Increment memory offset
896 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for less-than check
897 : JLT  1, 2(7) ;  If Register 1 is negative, then jump to true handling
898 : LDC  1, 0(0) ;  Load false (0) into register 1
899 : LDA  7, 1(7) ;  Jump to end of less-than handling
900 : LDC  1, 1(0) ;  Load true (1) into register 1
901 : LDC  5, 1018(0) ;  Store the memory location of LT return value
902 : ST   1, 0(5) ;  Store return value of into DMEM
903 : LDC  3, 1021(0) ;  Load return address for function LT into register 3
904 : LD   6, 0(3) ;  Load return address into register 6
905 : LDA  7, 0(6) ;  Load return address back into register 7
906 : LDC  1, 2147483647(0) ;  Load integer-literal value into register 1
907 : SUB  1, 0, 1 ;  Switch sign of value
908 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
909 : SUB  5, 5, 4 ;  Decrement memory offset
910 : ST   1, 0(5) ;  Store left expression value into memory
911 : LDC  1, 1(0) ;  Load integer-literal value into register 1
912 : LD   2, 0(5) ;  Load left expression value from memory into register 2
913 : ADD  5, 5, 4 ;  Increment memory offset
914 : SUB  1, 2, 1 ;  Subtract left expression from right expression value
915 : LDC  5, 1020(0) ;  Store the memory location of MININT return value
916 : ST   1, 0(5) ;  Store return value of into DMEM
917 : LDC  3, 1021(0) ;  Load return address for function MININT into register 3
918 : LD   6, 0(3) ;  Load return address into register 6
919 : LDA  7, 0(6) ;  Load return address back into register 7
920 : LDC  1, 2147483647(0) ;  Load integer-literal value into register 1
921 : LDC  5, 1020(0) ;  Store the memory location of MAXINT return value
922 : ST   1, 0(5) ;  Store return value of into DMEM
923 : LDC  3, 1021(0) ;  Load return address for function MAXINT into register 3
924 : LD   6, 0(3) ;  Load return address into register 6
925 : LDA  7, 0(6) ;  Load return address back into register 7
926 : LDC  5, 1021(0) ;  Store the memory location of main return value
927 : ST   1, 0(5) ;  Store return value of into DMEM
928 : LD   1, 0(5) ;  Load Return Value from DMEM
929 : OUT  1, 0, 0 ;  Output value from register 1.
930 : HALT 0, 0, 0 ;  Terminate program execution.
