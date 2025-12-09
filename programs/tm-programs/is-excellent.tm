0 : LDC  5, 2(0) ;  Set DMEM pointer to main stack frame
1 : LD   2, 1(0) ;  Load CLI arg 1 into register
2 : ST   2, 1(5) ;  Store the argument into stack frame
3 : LDA  6, 2(7) ;  Calculate return address
4 : ST   6, 0(5) ;  Store return address in main stack frame
5 : LDA  7, 11(0) ;  Load address of main IMEM block - branch to function
6 : OUT  1, 0, 0 ;  Return result
7 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
8 : OUT  1, 0, 0 ;  Hardcoded print function
9 : LD   6, 0(5) ;  Load return addess from stack frame.
10 : LDA  7, 0(6) ;  Jump to return address.
11 : LDA 4, 3(5) ; Base of callee frame
12 : LD   1, 1(5) ;  Load parameter 'n' into R1
13 : ST 1, 1(4) ; Store argument 0 in callee
14 : LDA 6, 18(0) ; Return address
15 : ST 6, 0(4) ; Store return in callee frame
16 : ADD 5, 4, 0 ; Push callee frame
17 : LDA 7, 26(0) ; Call isExcellent
18 : LD   1, 2(5) ;  Load function result
19 : LDC   2, 3(0) ;  Caller frame size
20 : SUB   5, 5, 2 ;  Pop back to caller
21 : SUB   4, 4, 2 ;  Pop back to caller
22 : ST 1, 2(5) ; Store result into caller’s frame
23 : LD   1, 2(5) ;  Load return value into register 1
24 : LD  6, 0(5) ;  Load return address for main function into register 6
25 : LDA  7, 0(6) ;  Jump to return address of main function
26 : LDA 4, 4(5) ; Base of callee frame
27 : LD   1, 1(5) ;  Load parameter 'n' into R1
28 : ST 1, 1(4) ; Store argument 0 in callee
29 : LDA 4, 3(5) ; Base of callee frame
30 : LD   1, 1(5) ;  Load parameter 'n' into R1
31 : ST 1, 1(4) ; Store argument 0 in callee
32 : LDA 6, 36(0) ; Return address
33 : ST 6, 0(4) ; Store return in callee frame
34 : ADD 5, 4, 0 ; Push callee frame
35 : LDA 7, 202(0) ; Call length
36 : LD   1, 2(5) ;  Load function result
37 : LDC   2, 3(0) ;  Caller frame size
38 : SUB   5, 5, 2 ;  Pop back to caller
39 : SUB   4, 4, 2 ;  Pop back to caller
40 : ST 1, 2(4) ; Store argument 1 in callee
41 : LDA 6, 45(0) ; Return address
42 : ST 6, 0(4) ; Store return in callee frame
43 : ADD 5, 4, 0 ; Push callee frame
44 : LDA 7, 52(0) ; Call isExcellentSwitch
45 : LD   1, 3(5) ;  Load function result
46 : LDC   2, 4(0) ;  Caller frame size
47 : SUB   5, 5, 2 ;  Pop back to caller
48 : SUB   4, 4, 2 ;  Pop back to caller
49 : ST   1, 2(5) ;  Store function result into stack frame
50 : LD   6, 0(5) ;  Load return address
51 : LDA  7, 0(6) ;  Return to caller
52 : LDA 4, 3(5) ; Base of callee frame
53 : LD   1, 2(5) ;  Load parameter 'length' into R1
54 : ST 1, 1(4) ; Store argument 0 in callee
55 : LDA 6, 59(0) ; Return address
56 : ST 6, 0(4) ; Store return in callee frame
57 : ADD 5, 4, 0 ; Push callee frame
58 : LDA 7, 236(0) ; Call ODD
59 : LD   1, 2(5) ;  Load function result
60 : LDC   2, 3(0) ;  Caller frame size
61 : SUB   5, 5, 2 ;  Pop back to caller
62 : SUB   4, 4, 2 ;  Pop back to caller
63 : JEQ  1, 66(0) ;  If condition is false, jump to ELSE
64 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
65 : LDA  7, 107(0) ;  Skip ELSE block
66 : LD   1, 1(5) ;  Load parameter 'n' into R1
67 : ADD  3, 1, 0 ;  Store left operand into temporary register
68 : LDA 4, 4(5) ; Base of callee frame
69 : LDA 4, 3(5) ; Base of callee frame
70 : LD   1, 1(5) ;  Load parameter 'n' into R1
71 : ST 1, 1(4) ; Store argument 0 in callee
72 : LDA 6, 76(0) ; Return address
73 : ST 6, 0(4) ; Store return in callee frame
74 : ADD 5, 4, 0 ; Push callee frame
75 : LDA 7, 168(0) ; Call a
76 : LD   1, 2(5) ;  Load function result
77 : LDC   2, 3(0) ;  Caller frame size
78 : SUB   5, 5, 2 ;  Pop back to caller
79 : SUB   4, 4, 2 ;  Pop back to caller
80 : ST 1, 1(4) ; Store argument 0 in callee
81 : LDA 4, 3(5) ; Base of callee frame
82 : LD   1, 1(5) ;  Load parameter 'n' into R1
83 : ST 1, 1(4) ; Store argument 0 in callee
84 : LDA 6, 88(0) ; Return address
85 : ST 6, 0(4) ; Store return in callee frame
86 : ADD 5, 4, 0 ; Push callee frame
87 : LDA 7, 126(0) ; Call b
88 : LD   1, 2(5) ;  Load function result
89 : LDC   2, 3(0) ;  Caller frame size
90 : SUB   5, 5, 2 ;  Pop back to caller
91 : SUB   4, 4, 2 ;  Pop back to caller
92 : ST 1, 2(4) ; Store argument 1 in callee
93 : LDA 6, 97(0) ; Return address
94 : ST 6, 0(4) ; Store return in callee frame
95 : ADD 5, 4, 0 ; Push callee frame
96 : LDA 7, 110(0) ; Call excellentDiff
97 : LD   1, 3(5) ;  Load function result
98 : LDC   2, 4(0) ;  Caller frame size
99 : SUB   5, 5, 2 ;  Pop back to caller
100 : SUB   4, 4, 2 ;  Pop back to caller
101 : ADD  2, 3, 0 ;  Restore left operand
102 : SUB  1, 2, 1 ;  left - right for equality check
103 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
104 : LDC  1, 0(0) ;  false
105 : LDA  7, 1(7) ;  skip setting true
106 : LDC  1, 1(0) ;  true
107 : ST   1, 3(5) ;  Store function result into stack frame
108 : LD   6, 0(5) ;  Load return address
109 : LDA  7, 0(6) ;  Return to caller
110 : LD   1, 2(5) ;  Load parameter 'b' into R1
111 : ADD  3, 1, 0 ;  Store left operand into temporary register
112 : LD   1, 2(5) ;  Load parameter 'b' into R1
113 : ADD  2, 3, 0 ;  Restore left operand
114 : MUL  1, 2, 1 ;  R1 = left * right
115 : ADD  3, 1, 0 ;  Store left operand into temporary register
116 : LD   1, 1(5) ;  Load parameter 'a' into R1
117 : ADD  3, 1, 0 ;  Store left operand into temporary register
118 : LD   1, 1(5) ;  Load parameter 'a' into R1
119 : ADD  2, 3, 0 ;  Restore left operand
120 : MUL  1, 2, 1 ;  R1 = left * right
121 : ADD  2, 3, 0 ;  Restore left operand
122 : SUB  1, 2, 1 ;  R1 = left - right
123 : ST   1, 3(5) ;  Store function result into stack frame
124 : LD   6, 0(5) ;  Load return address
125 : LDA  7, 0(6) ;  Return to caller
126 : LDA 4, 4(5) ; Base of callee frame
127 : LD   1, 1(5) ;  Load parameter 'n' into R1
128 : ST 1, 1(4) ; Store argument 0 in callee
129 : LDA 4, 4(5) ; Base of callee frame
130 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
131 : ST 1, 1(4) ; Store argument 0 in callee
132 : LDA 4, 3(5) ; Base of callee frame
133 : LD   1, 1(5) ;  Load parameter 'n' into R1
134 : ST 1, 1(4) ; Store argument 0 in callee
135 : LDA 6, 139(0) ; Return address
136 : ST 6, 0(4) ; Store return in callee frame
137 : ADD 5, 4, 0 ; Push callee frame
138 : LDA 7, 202(0) ; Call length
139 : LD   1, 2(5) ;  Load function result
140 : LDC   2, 3(0) ;  Caller frame size
141 : SUB   5, 5, 2 ;  Pop back to caller
142 : SUB   4, 4, 2 ;  Pop back to caller
143 : ADD  3, 1, 0 ;  Store left operand into temporary register
144 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
145 : ADD  2, 3, 0 ;  Restore left operand
146 : DIV  1, 2, 1 ;  R1 = left / right
147 : ST 1, 2(4) ; Store argument 1 in callee
148 : LDA 6, 152(0) ; Return address
149 : ST 6, 0(4) ; Store return in callee frame
150 : ADD 5, 4, 0 ; Push callee frame
151 : LDA 7, 279(0) ; Call EXP
152 : LD   1, 3(5) ;  Load function result
153 : LDC   2, 4(0) ;  Caller frame size
154 : SUB   5, 5, 2 ;  Pop back to caller
155 : SUB   4, 4, 2 ;  Pop back to caller
156 : ST 1, 2(4) ; Store argument 1 in callee
157 : LDA 6, 161(0) ; Return address
158 : ST 6, 0(4) ; Store return in callee frame
159 : ADD 5, 4, 0 ; Push callee frame
160 : LDA 7, 315(0) ; Call MOD
161 : LD   1, 3(5) ;  Load function result
162 : LDC   2, 4(0) ;  Caller frame size
163 : SUB   5, 5, 2 ;  Pop back to caller
164 : SUB   4, 4, 2 ;  Pop back to caller
165 : ST   1, 2(5) ;  Store function result into stack frame
166 : LD   6, 0(5) ;  Load return address
167 : LDA  7, 0(6) ;  Return to caller
168 : LD   1, 1(5) ;  Load parameter 'n' into R1
169 : ADD  3, 1, 0 ;  Store left operand into temporary register
170 : LDA 4, 4(5) ; Base of callee frame
171 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
172 : ST 1, 1(4) ; Store argument 0 in callee
173 : LDA 4, 3(5) ; Base of callee frame
174 : LD   1, 1(5) ;  Load parameter 'n' into R1
175 : ST 1, 1(4) ; Store argument 0 in callee
176 : LDA 6, 180(0) ; Return address
177 : ST 6, 0(4) ; Store return in callee frame
178 : ADD 5, 4, 0 ; Push callee frame
179 : LDA 7, 202(0) ; Call length
180 : LD   1, 2(5) ;  Load function result
181 : LDC   2, 3(0) ;  Caller frame size
182 : SUB   5, 5, 2 ;  Pop back to caller
183 : SUB   4, 4, 2 ;  Pop back to caller
184 : ADD  3, 1, 0 ;  Store left operand into temporary register
185 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
186 : ADD  2, 3, 0 ;  Restore left operand
187 : DIV  1, 2, 1 ;  R1 = left / right
188 : ST 1, 2(4) ; Store argument 1 in callee
189 : LDA 6, 193(0) ; Return address
190 : ST 6, 0(4) ; Store return in callee frame
191 : ADD 5, 4, 0 ; Push callee frame
192 : LDA 7, 279(0) ; Call EXP
193 : LD   1, 3(5) ;  Load function result
194 : LDC   2, 4(0) ;  Caller frame size
195 : SUB   5, 5, 2 ;  Pop back to caller
196 : SUB   4, 4, 2 ;  Pop back to caller
197 : ADD  2, 3, 0 ;  Restore left operand
198 : DIV  1, 2, 1 ;  R1 = left / right
199 : ST   1, 2(5) ;  Store function result into stack frame
200 : LD   6, 0(5) ;  Load return address
201 : LDA  7, 0(6) ;  Return to caller
202 : LD   1, 1(5) ;  Load parameter 'n' into R1
203 : ADD  3, 1, 0 ;  Store left operand into temporary register
204 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
205 : ADD  2, 3, 0 ;  Restore left operand
206 : SUB  1, 2, 1 ;  left - right for less-than check
207 : JLT  1, 2(7) ;  If R1 < 0, jump to true
208 : LDC  1, 0(0) ;  false
209 : LDA  7, 1(7) ;  skip setting true
210 : LDC  1, 1(0) ;  true
211 : JEQ  1, 214(0) ;  If condition is false, jump to ELSE
212 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
213 : LDA  7, 233(0) ;  Skip ELSE block
214 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
215 : ADD  3, 1, 0 ;  Store left operand into temporary register
216 : LDA 4, 3(5) ; Base of callee frame
217 : LD   1, 1(5) ;  Load parameter 'n' into R1
218 : ADD  3, 1, 0 ;  Store left operand into temporary register
219 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
220 : ADD  2, 3, 0 ;  Restore left operand
221 : DIV  1, 2, 1 ;  R1 = left / right
222 : ST 1, 1(4) ; Store argument 0 in callee
223 : LDA 6, 227(0) ; Return address
224 : ST 6, 0(4) ; Store return in callee frame
225 : ADD 5, 4, 0 ; Push callee frame
226 : LDA 7, 202(0) ; Call length
227 : LD   1, 2(5) ;  Load function result
228 : LDC   2, 3(0) ;  Caller frame size
229 : SUB   5, 5, 2 ;  Pop back to caller
230 : SUB   4, 4, 2 ;  Pop back to caller
231 : ADD  2, 3, 0 ;  Restore left operand
232 : ADD  1, 2, 1 ;  R1 = left + right
233 : ST   1, 2(5) ;  Store function result into stack frame
234 : LD   6, 0(5) ;  Load return address
235 : LDA  7, 0(6) ;  Return to caller
236 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
237 : ADD  3, 1, 0 ;  Store left operand into temporary register
238 : LD   1, 1(5) ;  Load parameter 'n' into R1
239 : ADD  2, 3, 0 ;  Restore left operand
240 : SUB  1, 2, 1 ;  left - right for less-than check
241 : JLT  1, 2(7) ;  If R1 < 0, jump to true
242 : LDC  1, 0(0) ;  false
243 : LDA  7, 1(7) ;  skip setting true
244 : LDC  1, 1(0) ;  true
245 : JEQ  1, 264(0) ;  If condition is false, jump to ELSE
246 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
247 : ADD  3, 1, 0 ;  Store left operand into temporary register
248 : LD   1, 1(5) ;  Load parameter 'n' into R1
249 : ADD  3, 1, 0 ;  Store left operand into temporary register
250 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
251 : ADD  2, 3, 0 ;  Restore left operand
252 : DIV  1, 2, 1 ;  R1 = left / right
253 : ADD  2, 3, 0 ;  Restore left operand
254 : MUL  1, 2, 1 ;  R1 = left * right
255 : ADD  3, 1, 0 ;  Store left operand into temporary register
256 : LD   1, 1(5) ;  Load parameter 'n' into R1
257 : ADD  2, 3, 0 ;  Restore left operand
258 : SUB  1, 2, 1 ;  left - right for less-than check
259 : JLT  1, 2(7) ;  If R1 < 0, jump to true
260 : LDC  1, 0(0) ;  false
261 : LDA  7, 1(7) ;  skip setting true
262 : LDC  1, 1(0) ;  true
263 : LDA  7, 276(0) ;  Skip ELSE block
264 : LDA 4, 3(5) ; Base of callee frame
265 : LD   1, 1(5) ;  Load parameter 'n' into R1
266 : SUB  1, 0, 1 ;  Negate value in R1
267 : ST 1, 1(4) ; Store argument 0 in callee
268 : LDA 6, 272(0) ; Return address
269 : ST 6, 0(4) ; Store return in callee frame
270 : ADD 5, 4, 0 ; Push callee frame
271 : LDA 7, 236(0) ; Call ODD
272 : LD   1, 2(5) ;  Load function result
273 : LDC   2, 3(0) ;  Caller frame size
274 : SUB   5, 5, 2 ;  Pop back to caller
275 : SUB   4, 4, 2 ;  Pop back to caller
276 : ST   1, 2(5) ;  Store function result into stack frame
277 : LD   6, 0(5) ;  Load return address
278 : LDA  7, 0(6) ;  Return to caller
279 : LD   1, 2(5) ;  Load parameter 'n' into R1
280 : ADD  3, 1, 0 ;  Store left operand into temporary register
281 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
282 : ADD  2, 3, 0 ;  Restore left operand
283 : SUB  1, 2, 1 ;  left - right for equality check
284 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
285 : LDC  1, 0(0) ;  false
286 : LDA  7, 1(7) ;  skip setting true
287 : LDC  1, 1(0) ;  true
288 : JEQ  1, 291(0) ;  If condition is false, jump to ELSE
289 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
290 : LDA  7, 312(0) ;  Skip ELSE block
291 : LD   1, 1(5) ;  Load parameter 'm' into R1
292 : ADD  3, 1, 0 ;  Store left operand into temporary register
293 : LDA 4, 4(5) ; Base of callee frame
294 : LD   1, 1(5) ;  Load parameter 'm' into R1
295 : ST 1, 1(4) ; Store argument 0 in callee
296 : LD   1, 2(5) ;  Load parameter 'n' into R1
297 : ADD  3, 1, 0 ;  Store left operand into temporary register
298 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
299 : ADD  2, 3, 0 ;  Restore left operand
300 : SUB  1, 2, 1 ;  R1 = left - right
301 : ST 1, 2(4) ; Store argument 1 in callee
302 : LDA 6, 306(0) ; Return address
303 : ST 6, 0(4) ; Store return in callee frame
304 : ADD 5, 4, 0 ; Push callee frame
305 : LDA 7, 279(0) ; Call EXP
306 : LD   1, 3(5) ;  Load function result
307 : LDC   2, 4(0) ;  Caller frame size
308 : SUB   5, 5, 2 ;  Pop back to caller
309 : SUB   4, 4, 2 ;  Pop back to caller
310 : ADD  2, 3, 0 ;  Restore left operand
311 : MUL  1, 2, 1 ;  R1 = left * right
312 : ST   1, 3(5) ;  Store function result into stack frame
313 : LD   6, 0(5) ;  Load return address
314 : LDA  7, 0(6) ;  Return to caller
315 : LD   1, 1(5) ;  Load parameter 'm' into R1
316 : ADD  3, 1, 0 ;  Store left operand into temporary register
317 : LD   1, 2(5) ;  Load parameter 'n' into R1
318 : ADD  3, 1, 0 ;  Store left operand into temporary register
319 : LD   1, 1(5) ;  Load parameter 'm' into R1
320 : ADD  3, 1, 0 ;  Store left operand into temporary register
321 : LD   1, 2(5) ;  Load parameter 'n' into R1
322 : ADD  2, 3, 0 ;  Restore left operand
323 : DIV  1, 2, 1 ;  R1 = left / right
324 : ADD  2, 3, 0 ;  Restore left operand
325 : MUL  1, 2, 1 ;  R1 = left * right
326 : ADD  2, 3, 0 ;  Restore left operand
327 : SUB  1, 2, 1 ;  R1 = left - right
328 : ST   1, 3(5) ;  Store function result into stack frame
329 : LD   6, 0(5) ;  Load return address
330 : LDA  7, 0(6) ;  Return to caller
