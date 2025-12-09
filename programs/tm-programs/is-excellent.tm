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
13 : ST 1, 1(4) ; Argument 0
14 : LDA 6, 18(0) ; Return address
15 : ST 6, 0(4) ; Store return in callee frame
16 : ADD 5, 4, 0 ; Push callee frame
17 : LDA 7, 25(0) ; Call isExcellent
18 : LD 1, 2(5) ; Load function result
19 : LDC 2, 3(0) ; Caller frame size
20 : SUB 5, 5, 2 ; Pop back to caller
21 : ST 1, 2(5) ; Store result into caller’s frame
22 : LD   1, 2(5) ;  Load return value into register 1
23 : LD  6, 0(5) ;  Load return address for main function into register 6
24 : LDA  7, 0(6) ;  Jump to return address of main function
25 : LDA 4, 3(5) ; Base of callee frame
26 : LD   1, 1(5) ;  Load parameter 'n' into R1
27 : ST 1, 1(4) ; Argument 0
28 : LDA  4, 3(4) ;  Push additional call frame for nested function calls
29 : LDA 4, 3(5) ; Base of callee frame
30 : LD   1, 1(5) ;  Load parameter 'n' into R1
31 : ST 1, 1(4) ; Argument 0
32 : LDA 6, 36(0) ; Return address
33 : ST 6, 0(4) ; Store return in callee frame
34 : ADD 5, 4, 0 ; Push callee frame
35 : LDA 7, 194(0) ; Call length
36 : LD 1, 2(5) ; Load function result
37 : LDC 2, 3(0) ; Caller frame size
38 : SUB 5, 5, 2 ; Pop back to caller
39 : ST 1, 2(4) ; Argument 1
40 : LDA 6, 44(0) ; Return address
41 : ST 6, 0(4) ; Store return in callee frame
42 : ADD 5, 4, 0 ; Push callee frame
43 : LDA 7, 50(0) ; Call isExcellentSwitch
44 : LD 1, 3(5) ; Load function result
45 : LDC 2, 3(0) ; Caller frame size
46 : SUB 5, 5, 2 ; Pop back to caller
47 : ST   1, 2(5) ;  Store function result into stack frame
48 : LD   6, 0(5) ;  Load return address
49 : LDA  7, 0(6) ;  Return to caller
50 : LDA 4, 4(5) ; Base of callee frame
51 : LD   1, 2(5) ;  Load parameter 'length' into R1
52 : ST 1, 1(4) ; Argument 0
53 : LDA 6, 57(0) ; Return address
54 : ST 6, 0(4) ; Store return in callee frame
55 : ADD 5, 4, 0 ; Push callee frame
56 : LDA 7, 227(0) ; Call ODD
57 : LD 1, 2(5) ; Load function result
58 : LDC 2, 4(0) ; Caller frame size
59 : SUB 5, 5, 2 ; Pop back to caller
60 : JEQ  1, 63(0) ;  If condition is false, jump to ELSE
61 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
62 : LDA  7, 103(0) ;  Skip ELSE block
63 : LD   1, 1(5) ;  Load parameter 'n' into R1
64 : ADD  3, 1, 0 ;  Store left operand into temporary register
65 : LDA 4, 4(5) ; Base of callee frame
66 : LDA  4, 4(4) ;  Push additional call frame for nested function calls
67 : LDA 4, 4(5) ; Base of callee frame
68 : LD   1, 1(5) ;  Load parameter 'n' into R1
69 : ST 1, 1(4) ; Argument 0
70 : LDA 6, 74(0) ; Return address
71 : ST 6, 0(4) ; Store return in callee frame
72 : ADD 5, 4, 0 ; Push callee frame
73 : LDA 7, 162(0) ; Call a
74 : LD 1, 2(5) ; Load function result
75 : LDC 2, 4(0) ; Caller frame size
76 : SUB 5, 5, 2 ; Pop back to caller
77 : ST 1, 1(4) ; Argument 0
78 : LDA  4, 4(4) ;  Push additional call frame for nested function calls
79 : LDA 4, 4(5) ; Base of callee frame
80 : LD   1, 1(5) ;  Load parameter 'n' into R1
81 : ST 1, 1(4) ; Argument 0
82 : LDA 6, 86(0) ; Return address
83 : ST 6, 0(4) ; Store return in callee frame
84 : ADD 5, 4, 0 ; Push callee frame
85 : LDA 7, 122(0) ; Call b
86 : LD 1, 2(5) ; Load function result
87 : LDC 2, 4(0) ; Caller frame size
88 : SUB 5, 5, 2 ; Pop back to caller
89 : ST 1, 2(4) ; Argument 1
90 : LDA 6, 94(0) ; Return address
91 : ST 6, 0(4) ; Store return in callee frame
92 : ADD 5, 4, 0 ; Push callee frame
93 : LDA 7, 106(0) ; Call excellentDiff
94 : LD 1, 3(5) ; Load function result
95 : LDC 2, 4(0) ; Caller frame size
96 : SUB 5, 5, 2 ; Pop back to caller
97 : ADD  2, 3, 0 ;  Restore left operand
98 : SUB  1, 2, 1 ;  left - right for equality check
99 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
100 : LDC  1, 0(0) ;  false
101 : LDA  7, 1(7) ;  skip setting true
102 : LDC  1, 1(0) ;  true
103 : ST   1, 3(5) ;  Store function result into stack frame
104 : LD   6, 0(5) ;  Load return address
105 : LDA  7, 0(6) ;  Return to caller
106 : LD   1, 2(5) ;  Load parameter 'b' into R1
107 : ADD  3, 1, 0 ;  Store left operand into temporary register
108 : LD   1, 2(5) ;  Load parameter 'b' into R1
109 : ADD  2, 3, 0 ;  Restore left operand
110 : MUL  1, 2, 1 ;  R1 = left * right
111 : ADD  3, 1, 0 ;  Store left operand into temporary register
112 : LD   1, 1(5) ;  Load parameter 'a' into R1
113 : ADD  3, 1, 0 ;  Store left operand into temporary register
114 : LD   1, 1(5) ;  Load parameter 'a' into R1
115 : ADD  2, 3, 0 ;  Restore left operand
116 : MUL  1, 2, 1 ;  R1 = left * right
117 : ADD  2, 3, 0 ;  Restore left operand
118 : SUB  1, 2, 1 ;  R1 = left - right
119 : ST   1, 3(5) ;  Store function result into stack frame
120 : LD   6, 0(5) ;  Load return address
121 : LDA  7, 0(6) ;  Return to caller
122 : LDA 4, 3(5) ; Base of callee frame
123 : LD   1, 1(5) ;  Load parameter 'n' into R1
124 : ST 1, 1(4) ; Argument 0
125 : LDA  4, 3(4) ;  Push additional call frame for nested function calls
126 : LDA 4, 3(5) ; Base of callee frame
127 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
128 : ST 1, 1(4) ; Argument 0
129 : LDA 4, 3(5) ; Base of callee frame
130 : LD   1, 1(5) ;  Load parameter 'n' into R1
131 : ST 1, 1(4) ; Argument 0
132 : LDA 6, 136(0) ; Return address
133 : ST 6, 0(4) ; Store return in callee frame
134 : ADD 5, 4, 0 ; Push callee frame
135 : LDA 7, 194(0) ; Call length
136 : LD 1, 2(5) ; Load function result
137 : LDC 2, 3(0) ; Caller frame size
138 : SUB 5, 5, 2 ; Pop back to caller
139 : ADD  3, 1, 0 ;  Store left operand into temporary register
140 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
141 : ADD  2, 3, 0 ;  Restore left operand
142 : DIV  1, 2, 1 ;  R1 = left / right
143 : ST 1, 2(4) ; Argument 1
144 : LDA 6, 148(0) ; Return address
145 : ST 6, 0(4) ; Store return in callee frame
146 : ADD 5, 4, 0 ; Push callee frame
147 : LDA 7, 269(0) ; Call EXP
148 : LD 1, 3(5) ; Load function result
149 : LDC 2, 3(0) ; Caller frame size
150 : SUB 5, 5, 2 ; Pop back to caller
151 : ST 1, 2(4) ; Argument 1
152 : LDA 6, 156(0) ; Return address
153 : ST 6, 0(4) ; Store return in callee frame
154 : ADD 5, 4, 0 ; Push callee frame
155 : LDA 7, 304(0) ; Call MOD
156 : LD 1, 3(5) ; Load function result
157 : LDC 2, 3(0) ; Caller frame size
158 : SUB 5, 5, 2 ; Pop back to caller
159 : ST   1, 2(5) ;  Store function result into stack frame
160 : LD   6, 0(5) ;  Load return address
161 : LDA  7, 0(6) ;  Return to caller
162 : LD   1, 1(5) ;  Load parameter 'n' into R1
163 : ADD  3, 1, 0 ;  Store left operand into temporary register
164 : LDA 4, 3(5) ; Base of callee frame
165 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
166 : ST 1, 1(4) ; Argument 0
167 : LDA 4, 3(5) ; Base of callee frame
168 : LD   1, 1(5) ;  Load parameter 'n' into R1
169 : ST 1, 1(4) ; Argument 0
170 : LDA 6, 174(0) ; Return address
171 : ST 6, 0(4) ; Store return in callee frame
172 : ADD 5, 4, 0 ; Push callee frame
173 : LDA 7, 194(0) ; Call length
174 : LD 1, 2(5) ; Load function result
175 : LDC 2, 3(0) ; Caller frame size
176 : SUB 5, 5, 2 ; Pop back to caller
177 : ADD  3, 1, 0 ;  Store left operand into temporary register
178 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
179 : ADD  2, 3, 0 ;  Restore left operand
180 : DIV  1, 2, 1 ;  R1 = left / right
181 : ST 1, 2(4) ; Argument 1
182 : LDA 6, 186(0) ; Return address
183 : ST 6, 0(4) ; Store return in callee frame
184 : ADD 5, 4, 0 ; Push callee frame
185 : LDA 7, 269(0) ; Call EXP
186 : LD 1, 3(5) ; Load function result
187 : LDC 2, 3(0) ; Caller frame size
188 : SUB 5, 5, 2 ; Pop back to caller
189 : ADD  2, 3, 0 ;  Restore left operand
190 : DIV  1, 2, 1 ;  R1 = left / right
191 : ST   1, 2(5) ;  Store function result into stack frame
192 : LD   6, 0(5) ;  Load return address
193 : LDA  7, 0(6) ;  Return to caller
194 : LD   1, 1(5) ;  Load parameter 'n' into R1
195 : ADD  3, 1, 0 ;  Store left operand into temporary register
196 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
197 : ADD  2, 3, 0 ;  Restore left operand
198 : SUB  1, 2, 1 ;  left - right for less-than check
199 : JLT  1, 2(7) ;  If R1 < 0, jump to true
200 : LDC  1, 0(0) ;  false
201 : LDA  7, 1(7) ;  skip setting true
202 : LDC  1, 1(0) ;  true
203 : JEQ  1, 206(0) ;  If condition is false, jump to ELSE
204 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
205 : LDA  7, 224(0) ;  Skip ELSE block
206 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
207 : ADD  3, 1, 0 ;  Store left operand into temporary register
208 : LDA 4, 3(5) ; Base of callee frame
209 : LD   1, 1(5) ;  Load parameter 'n' into R1
210 : ADD  3, 1, 0 ;  Store left operand into temporary register
211 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
212 : ADD  2, 3, 0 ;  Restore left operand
213 : DIV  1, 2, 1 ;  R1 = left / right
214 : ST 1, 1(4) ; Argument 0
215 : LDA 6, 219(0) ; Return address
216 : ST 6, 0(4) ; Store return in callee frame
217 : ADD 5, 4, 0 ; Push callee frame
218 : LDA 7, 194(0) ; Call length
219 : LD 1, 2(5) ; Load function result
220 : LDC 2, 3(0) ; Caller frame size
221 : SUB 5, 5, 2 ; Pop back to caller
222 : ADD  2, 3, 0 ;  Restore left operand
223 : ADD  1, 2, 1 ;  R1 = left + right
224 : ST   1, 2(5) ;  Store function result into stack frame
225 : LD   6, 0(5) ;  Load return address
226 : LDA  7, 0(6) ;  Return to caller
227 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
228 : ADD  3, 1, 0 ;  Store left operand into temporary register
229 : LD   1, 1(5) ;  Load parameter 'n' into R1
230 : ADD  2, 3, 0 ;  Restore left operand
231 : SUB  1, 2, 1 ;  left - right for less-than check
232 : JLT  1, 2(7) ;  If R1 < 0, jump to true
233 : LDC  1, 0(0) ;  false
234 : LDA  7, 1(7) ;  skip setting true
235 : LDC  1, 1(0) ;  true
236 : JEQ  1, 255(0) ;  If condition is false, jump to ELSE
237 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
238 : ADD  3, 1, 0 ;  Store left operand into temporary register
239 : LD   1, 1(5) ;  Load parameter 'n' into R1
240 : ADD  3, 1, 0 ;  Store left operand into temporary register
241 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
242 : ADD  2, 3, 0 ;  Restore left operand
243 : DIV  1, 2, 1 ;  R1 = left / right
244 : ADD  2, 3, 0 ;  Restore left operand
245 : MUL  1, 2, 1 ;  R1 = left * right
246 : ADD  3, 1, 0 ;  Store left operand into temporary register
247 : LD   1, 1(5) ;  Load parameter 'n' into R1
248 : ADD  2, 3, 0 ;  Restore left operand
249 : SUB  1, 2, 1 ;  left - right for less-than check
250 : JLT  1, 2(7) ;  If R1 < 0, jump to true
251 : LDC  1, 0(0) ;  false
252 : LDA  7, 1(7) ;  skip setting true
253 : LDC  1, 1(0) ;  true
254 : LDA  7, 266(0) ;  Skip ELSE block
255 : LDA 4, 3(5) ; Base of callee frame
256 : LD   1, 1(5) ;  Load parameter 'n' into R1
257 : SUB  1, 0, 1 ;  Negate value in R1
258 : ST 1, 1(4) ; Argument 0
259 : LDA 6, 263(0) ; Return address
260 : ST 6, 0(4) ; Store return in callee frame
261 : ADD 5, 4, 0 ; Push callee frame
262 : LDA 7, 227(0) ; Call ODD
263 : LD 1, 2(5) ; Load function result
264 : LDC 2, 3(0) ; Caller frame size
265 : SUB 5, 5, 2 ; Pop back to caller
266 : ST   1, 2(5) ;  Store function result into stack frame
267 : LD   6, 0(5) ;  Load return address
268 : LDA  7, 0(6) ;  Return to caller
269 : LD   1, 2(5) ;  Load parameter 'n' into R1
270 : ADD  3, 1, 0 ;  Store left operand into temporary register
271 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
272 : ADD  2, 3, 0 ;  Restore left operand
273 : SUB  1, 2, 1 ;  left - right for equality check
274 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
275 : LDC  1, 0(0) ;  false
276 : LDA  7, 1(7) ;  skip setting true
277 : LDC  1, 1(0) ;  true
278 : JEQ  1, 281(0) ;  If condition is false, jump to ELSE
279 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
280 : LDA  7, 301(0) ;  Skip ELSE block
281 : LD   1, 1(5) ;  Load parameter 'm' into R1
282 : ADD  3, 1, 0 ;  Store left operand into temporary register
283 : LDA 4, 4(5) ; Base of callee frame
284 : LD   1, 1(5) ;  Load parameter 'm' into R1
285 : ST 1, 1(4) ; Argument 0
286 : LD   1, 2(5) ;  Load parameter 'n' into R1
287 : ADD  3, 1, 0 ;  Store left operand into temporary register
288 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
289 : ADD  2, 3, 0 ;  Restore left operand
290 : SUB  1, 2, 1 ;  R1 = left - right
291 : ST 1, 2(4) ; Argument 1
292 : LDA 6, 296(0) ; Return address
293 : ST 6, 0(4) ; Store return in callee frame
294 : ADD 5, 4, 0 ; Push callee frame
295 : LDA 7, 269(0) ; Call EXP
296 : LD 1, 3(5) ; Load function result
297 : LDC 2, 4(0) ; Caller frame size
298 : SUB 5, 5, 2 ; Pop back to caller
299 : ADD  2, 3, 0 ;  Restore left operand
300 : MUL  1, 2, 1 ;  R1 = left * right
301 : ST   1, 3(5) ;  Store function result into stack frame
302 : LD   6, 0(5) ;  Load return address
303 : LDA  7, 0(6) ;  Return to caller
304 : LD   1, 1(5) ;  Load parameter 'm' into R1
305 : ADD  3, 1, 0 ;  Store left operand into temporary register
306 : LD   1, 2(5) ;  Load parameter 'n' into R1
307 : ADD  3, 1, 0 ;  Store left operand into temporary register
308 : LD   1, 1(5) ;  Load parameter 'm' into R1
309 : ADD  3, 1, 0 ;  Store left operand into temporary register
310 : LD   1, 2(5) ;  Load parameter 'n' into R1
311 : ADD  2, 3, 0 ;  Restore left operand
312 : DIV  1, 2, 1 ;  R1 = left / right
313 : ADD  2, 3, 0 ;  Restore left operand
314 : MUL  1, 2, 1 ;  R1 = left * right
315 : ADD  2, 3, 0 ;  Restore left operand
316 : SUB  1, 2, 1 ;  R1 = left - right
317 : ST   1, 3(5) ;  Store function result into stack frame
318 : LD   6, 0(5) ;  Load return address
319 : LDA  7, 0(6) ;  Return to caller
