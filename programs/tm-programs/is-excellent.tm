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
11 : LD   1, 1(5) ;  Load parameter 'n' into R1
12 : LDA  3, 3(5) ; Restore Callee frame base
13 : ST 1, 1(3) ;  Store argument 0 into callee frame
14 : LDA  3, 3(5) ; Restore Call frame base
15 : LDA 6, 19(0) ;  Compute return address
16 : ST 6, 0(3) ;  Store return address in callee frame
17 : ADD  5, 3, 0 ;  Update pointer
18 : LDA 7, 26(0) ;  Call isExcellent
19 : LD 1, 2(5) ;  Load callee return value into R1
20 : LDC  4, 3(0) ;  Load frame size
21 : SUB  5, 5, 4 ;  Restore pointer
22 : ST 1, 2(5) ;  Store result into current frame's return slot
23 : LD   1, 2(5) ;  Load return value into register 1
24 : LD  6, 0(5) ;  Load return address for main function into register 6
25 : LDA  7, 0(6) ;  Jump to return address of main function
26 : LD   1, 1(5) ;  Load parameter 'n' into R1
27 : LDA  3, 3(5) ; Restore Callee frame base
28 : ST 1, 1(3) ;  Store argument 0 into callee frame
29 : LD   1, 1(5) ;  Load parameter 'n' into R1
30 : LDA  3, 3(5) ; Restore Callee frame base
31 : ST 1, 1(3) ;  Store argument 0 into callee frame
32 : LDA  3, 3(5) ; Restore Call frame base
33 : LDA 6, 37(0) ;  Compute return address
34 : ST 6, 0(3) ;  Store return address in callee frame
35 : ADD  5, 3, 0 ;  Update pointer
36 : LDA 7, 200(0) ;  Call length
37 : LD 1, 2(5) ;  Load callee return value into R1
38 : LDC  4, 3(0) ;  Load frame size
39 : SUB  5, 5, 4 ;  Restore pointer
40 : LDA  3, 3(5) ; Restore Callee frame base
41 : ST 1, 2(3) ;  Store argument 1 into callee frame
42 : LDA  3, 3(5) ; Restore Call frame base
43 : LDA 6, 47(0) ;  Compute return address
44 : ST 6, 0(3) ;  Store return address in callee frame
45 : ADD  5, 3, 0 ;  Update pointer
46 : LDA 7, 53(0) ;  Call isExcellentSwitch
47 : LD 1, 3(5) ;  Load callee return value into R1
48 : LDC  4, 3(0) ;  Load frame size
49 : SUB  5, 5, 4 ;  Restore pointer
50 : ST   1, 2(5) ;  Store function result into stack frame
51 : LD   6, 0(5) ;  Load return address
52 : LDA  7, 0(6) ;  Return to caller
53 : LD   1, 2(5) ;  Load parameter 'length' into R1
54 : LDA  3, 4(5) ; Restore Callee frame base
55 : ST 1, 1(3) ;  Store argument 0 into callee frame
56 : LDA  3, 4(5) ; Restore Call frame base
57 : LDA 6, 61(0) ;  Compute return address
58 : ST 6, 0(3) ;  Store return address in callee frame
59 : ADD  5, 3, 0 ;  Update pointer
60 : LDA 7, 231(0) ;  Call ODD
61 : LD 1, 2(5) ;  Load callee return value into R1
62 : LDC  4, 4(0) ;  Load frame size
63 : SUB  5, 5, 4 ;  Restore pointer
64 : JEQ  1, 67(0) ;  If condition is false, jump to ELSE
65 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
66 : LDA  7, 108(0) ;  Skip ELSE block
67 : LD   1, 1(5) ;  Load parameter 'n' into R1
68 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
69 : LD   1, 1(5) ;  Load parameter 'n' into R1
70 : LDA  3, 4(5) ; Restore Callee frame base
71 : ST 1, 1(3) ;  Store argument 0 into callee frame
72 : LDA  3, 4(5) ; Restore Call frame base
73 : LDA 6, 77(0) ;  Compute return address
74 : ST 6, 0(3) ;  Store return address in callee frame
75 : ADD  5, 3, 0 ;  Update pointer
76 : LDA 7, 167(0) ;  Call a
77 : LD 1, 2(5) ;  Load callee return value into R1
78 : LDC  4, 4(0) ;  Load frame size
79 : SUB  5, 5, 4 ;  Restore pointer
80 : LDA  3, 4(5) ; Restore Callee frame base
81 : ST 1, 1(3) ;  Store argument 0 into callee frame
82 : LD   1, 1(5) ;  Load parameter 'n' into R1
83 : LDA  3, 4(5) ; Restore Callee frame base
84 : ST 1, 1(3) ;  Store argument 0 into callee frame
85 : LDA  3, 4(5) ; Restore Call frame base
86 : LDA 6, 90(0) ;  Compute return address
87 : ST 6, 0(3) ;  Store return address in callee frame
88 : ADD  5, 3, 0 ;  Update pointer
89 : LDA 7, 124(0) ;  Call b
90 : LD 1, 2(5) ;  Load callee return value into R1
91 : LDC  4, 4(0) ;  Load frame size
92 : SUB  5, 5, 4 ;  Restore pointer
93 : LDA  3, 4(5) ; Restore Callee frame base
94 : ST 1, 2(3) ;  Store argument 1 into callee frame
95 : LDA  3, 4(5) ; Restore Call frame base
96 : LDA 6, 100(0) ;  Compute return address
97 : ST 6, 0(3) ;  Store return address in callee frame
98 : ADD  5, 3, 0 ;  Update pointer
99 : LDA 7, 111(0) ;  Call excellentDiff
100 : LD 1, 3(5) ;  Load callee return value into R1
101 : LDC  4, 4(0) ;  Load frame size
102 : SUB  5, 5, 4 ;  Restore pointer
103 : SUB  1, 2, 1 ;  left - right for equality check
104 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
105 : LDC  1, 0(0) ;  false
106 : LDA  7, 1(7) ;  skip setting true
107 : LDC  1, 1(0) ;  true
108 : ST   1, 3(5) ;  Store function result into stack frame
109 : LD   6, 0(5) ;  Load return address
110 : LDA  7, 0(6) ;  Return to caller
111 : LD   1, 2(5) ;  Load parameter 'b' into R1
112 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
113 : LD   1, 2(5) ;  Load parameter 'b' into R1
114 : MUL  1, 2, 1 ;  R1 = left * right
115 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
116 : LD   1, 1(5) ;  Load parameter 'a' into R1
117 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
118 : LD   1, 1(5) ;  Load parameter 'a' into R1
119 : MUL  1, 2, 1 ;  R1 = left * right
120 : SUB  1, 2, 1 ;  R1 = left - right
121 : ST   1, 3(5) ;  Store function result into stack frame
122 : LD   6, 0(5) ;  Load return address
123 : LDA  7, 0(6) ;  Return to caller
124 : LD   1, 1(5) ;  Load parameter 'n' into R1
125 : LDA  3, 3(5) ; Restore Callee frame base
126 : ST 1, 1(3) ;  Store argument 0 into callee frame
127 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
128 : LDA  3, 3(5) ; Restore Callee frame base
129 : ST 1, 1(3) ;  Store argument 0 into callee frame
130 : LD   1, 1(5) ;  Load parameter 'n' into R1
131 : LDA  3, 3(5) ; Restore Callee frame base
132 : ST 1, 1(3) ;  Store argument 0 into callee frame
133 : LDA  3, 3(5) ; Restore Call frame base
134 : LDA 6, 138(0) ;  Compute return address
135 : ST 6, 0(3) ;  Store return address in callee frame
136 : ADD  5, 3, 0 ;  Update pointer
137 : LDA 7, 200(0) ;  Call length
138 : LD 1, 2(5) ;  Load callee return value into R1
139 : LDC  4, 3(0) ;  Load frame size
140 : SUB  5, 5, 4 ;  Restore pointer
141 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
142 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
143 : DIV  1, 2, 1 ;  R1 = left / right
144 : LDA  3, 3(5) ; Restore Callee frame base
145 : ST 1, 2(3) ;  Store argument 1 into callee frame
146 : LDA  3, 3(5) ; Restore Call frame base
147 : LDA 6, 151(0) ;  Compute return address
148 : ST 6, 0(3) ;  Store return address in callee frame
149 : ADD  5, 3, 0 ;  Update pointer
150 : LDA 7, 270(0) ;  Call EXP
151 : LD 1, 3(5) ;  Load callee return value into R1
152 : LDC  4, 3(0) ;  Load frame size
153 : SUB  5, 5, 4 ;  Restore pointer
154 : LDA  3, 3(5) ; Restore Callee frame base
155 : ST 1, 2(3) ;  Store argument 1 into callee frame
156 : LDA  3, 3(5) ; Restore Call frame base
157 : LDA 6, 161(0) ;  Compute return address
158 : ST 6, 0(3) ;  Store return address in callee frame
159 : ADD  5, 3, 0 ;  Update pointer
160 : LDA 7, 304(0) ;  Call MOD
161 : LD 1, 3(5) ;  Load callee return value into R1
162 : LDC  4, 3(0) ;  Load frame size
163 : SUB  5, 5, 4 ;  Restore pointer
164 : ST   1, 2(5) ;  Store function result into stack frame
165 : LD   6, 0(5) ;  Load return address
166 : LDA  7, 0(6) ;  Return to caller
167 : LD   1, 1(5) ;  Load parameter 'n' into R1
168 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
169 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
170 : LDA  3, 3(5) ; Restore Callee frame base
171 : ST 1, 1(3) ;  Store argument 0 into callee frame
172 : LD   1, 1(5) ;  Load parameter 'n' into R1
173 : LDA  3, 3(5) ; Restore Callee frame base
174 : ST 1, 1(3) ;  Store argument 0 into callee frame
175 : LDA  3, 3(5) ; Restore Call frame base
176 : LDA 6, 180(0) ;  Compute return address
177 : ST 6, 0(3) ;  Store return address in callee frame
178 : ADD  5, 3, 0 ;  Update pointer
179 : LDA 7, 200(0) ;  Call length
180 : LD 1, 2(5) ;  Load callee return value into R1
181 : LDC  4, 3(0) ;  Load frame size
182 : SUB  5, 5, 4 ;  Restore pointer
183 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
184 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
185 : DIV  1, 2, 1 ;  R1 = left / right
186 : LDA  3, 3(5) ; Restore Callee frame base
187 : ST 1, 2(3) ;  Store argument 1 into callee frame
188 : LDA  3, 3(5) ; Restore Call frame base
189 : LDA 6, 193(0) ;  Compute return address
190 : ST 6, 0(3) ;  Store return address in callee frame
191 : ADD  5, 3, 0 ;  Update pointer
192 : LDA 7, 270(0) ;  Call EXP
193 : LD 1, 3(5) ;  Load callee return value into R1
194 : LDC  4, 3(0) ;  Load frame size
195 : SUB  5, 5, 4 ;  Restore pointer
196 : DIV  1, 2, 1 ;  R1 = left / right
197 : ST   1, 2(5) ;  Store function result into stack frame
198 : LD   6, 0(5) ;  Load return address
199 : LDA  7, 0(6) ;  Return to caller
200 : LD   1, 1(5) ;  Load parameter 'n' into R1
201 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
202 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
203 : SUB  1, 2, 1 ;  left - right for less-than check
204 : JLT  1, 2(7) ;  If R1 < 0, jump to true
205 : LDC  1, 0(0) ;  false
206 : LDA  7, 1(7) ;  skip setting true
207 : LDC  1, 1(0) ;  true
208 : JEQ  1, 211(0) ;  If condition is false, jump to ELSE
209 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
210 : LDA  7, 228(0) ;  Skip ELSE block
211 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
212 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
213 : LD   1, 1(5) ;  Load parameter 'n' into R1
214 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
215 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
216 : DIV  1, 2, 1 ;  R1 = left / right
217 : LDA  3, 3(5) ; Restore Callee frame base
218 : ST 1, 1(3) ;  Store argument 0 into callee frame
219 : LDA  3, 3(5) ; Restore Call frame base
220 : LDA 6, 224(0) ;  Compute return address
221 : ST 6, 0(3) ;  Store return address in callee frame
222 : ADD  5, 3, 0 ;  Update pointer
223 : LDA 7, 200(0) ;  Call length
224 : LD 1, 2(5) ;  Load callee return value into R1
225 : LDC  4, 3(0) ;  Load frame size
226 : SUB  5, 5, 4 ;  Restore pointer
227 : ADD  1, 2, 1 ;  R1 = left + right
228 : ST   1, 2(5) ;  Store function result into stack frame
229 : LD   6, 0(5) ;  Load return address
230 : LDA  7, 0(6) ;  Return to caller
231 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
232 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
233 : LD   1, 1(5) ;  Load parameter 'n' into R1
234 : SUB  1, 2, 1 ;  left - right for less-than check
235 : JLT  1, 2(7) ;  If R1 < 0, jump to true
236 : LDC  1, 0(0) ;  false
237 : LDA  7, 1(7) ;  skip setting true
238 : LDC  1, 1(0) ;  true
239 : JEQ  1, 255(0) ;  If condition is false, jump to ELSE
240 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
241 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
242 : LD   1, 1(5) ;  Load parameter 'n' into R1
243 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
244 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
245 : DIV  1, 2, 1 ;  R1 = left / right
246 : MUL  1, 2, 1 ;  R1 = left * right
247 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
248 : LD   1, 1(5) ;  Load parameter 'n' into R1
249 : SUB  1, 2, 1 ;  left - right for less-than check
250 : JLT  1, 2(7) ;  If R1 < 0, jump to true
251 : LDC  1, 0(0) ;  false
252 : LDA  7, 1(7) ;  skip setting true
253 : LDC  1, 1(0) ;  true
254 : LDA  7, 267(0) ;  Skip ELSE block
255 : LD   1, 1(5) ;  Load parameter 'n' into R1
256 : SUB  1, 0, 1 ;  Negate value in R1
257 : LDA  3, 3(5) ; Restore Callee frame base
258 : ST 1, 1(3) ;  Store argument 0 into callee frame
259 : LDA  3, 3(5) ; Restore Call frame base
260 : LDA 6, 264(0) ;  Compute return address
261 : ST 6, 0(3) ;  Store return address in callee frame
262 : ADD  5, 3, 0 ;  Update pointer
263 : LDA 7, 231(0) ;  Call ODD
264 : LD 1, 2(5) ;  Load callee return value into R1
265 : LDC  4, 3(0) ;  Load frame size
266 : SUB  5, 5, 4 ;  Restore pointer
267 : ST   1, 2(5) ;  Store function result into stack frame
268 : LD   6, 0(5) ;  Load return address
269 : LDA  7, 0(6) ;  Return to caller
270 : LD   1, 2(5) ;  Load parameter 'n' into R1
271 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
272 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
273 : SUB  1, 2, 1 ;  left - right for equality check
274 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
275 : LDC  1, 0(0) ;  false
276 : LDA  7, 1(7) ;  skip setting true
277 : LDC  1, 1(0) ;  true
278 : JEQ  1, 281(0) ;  If condition is false, jump to ELSE
279 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
280 : LDA  7, 301(0) ;  Skip ELSE block
281 : LD   1, 1(5) ;  Load parameter 'm' into R1
282 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
283 : LD   1, 1(5) ;  Load parameter 'm' into R1
284 : LDA  3, 4(5) ; Restore Callee frame base
285 : ST 1, 1(3) ;  Store argument 0 into callee frame
286 : LD   1, 2(5) ;  Load parameter 'n' into R1
287 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
288 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
289 : SUB  1, 2, 1 ;  R1 = left - right
290 : LDA  3, 4(5) ; Restore Callee frame base
291 : ST 1, 2(3) ;  Store argument 1 into callee frame
292 : LDA  3, 4(5) ; Restore Call frame base
293 : LDA 6, 297(0) ;  Compute return address
294 : ST 6, 0(3) ;  Store return address in callee frame
295 : ADD  5, 3, 0 ;  Update pointer
296 : LDA 7, 270(0) ;  Call EXP
297 : LD 1, 3(5) ;  Load callee return value into R1
298 : LDC  4, 4(0) ;  Load frame size
299 : SUB  5, 5, 4 ;  Restore pointer
300 : MUL  1, 2, 1 ;  R1 = left * right
301 : ST   1, 3(5) ;  Store function result into stack frame
302 : LD   6, 0(5) ;  Load return address
303 : LDA  7, 0(6) ;  Return to caller
304 : LD   1, 1(5) ;  Load parameter 'm' into R1
305 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
306 : LD   1, 2(5) ;  Load parameter 'n' into R1
307 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
308 : LD   1, 1(5) ;  Load parameter 'm' into R1
309 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
310 : LD   1, 2(5) ;  Load parameter 'n' into R1
311 : DIV  1, 2, 1 ;  R1 = left / right
312 : MUL  1, 2, 1 ;  R1 = left * right
313 : SUB  1, 2, 1 ;  R1 = left - right
314 : ST   1, 3(5) ;  Store function result into stack frame
315 : LD   6, 0(5) ;  Load return address
316 : LDA  7, 0(6) ;  Return to caller
