0 : LDC 5, 2(0) ;  Set DMEM pointer to main stack frame
1 : ADD 4, 5, 0 ;  Set top of caller frame
2 : LD 2, 1(0) ;  Load CLI arg 1 into register
3 : ST 2, 1(5) ;  Store the argument into stack frame
4 : LDA 6, 2(7) ;  Calculate return address
5 : ST 6, 0(5) ;  Store return address in main stack frame
6 : LDA 7, 12(0) ;  Load address of main IMEM block - branch to function
7 : OUT 1, 0, 0 ;  Return result
8 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
9 : OUT 1, 0, 0 ;  Hardcoded print function
10 : LD 6, 0(5) ;  Load return addess from stack frame.
11 : LDA 7, 0(6) ;  Jump to return address.
12 : LDA 3, 3(5) ; Base of callee frame (stable)
13 : LD 1, 1(5) ;  Load parameter 'n' into R1
14 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
15 : LDA 6, 19(0) ; Return address
16 : ST 6, 0(3) ; Store return in callee frame (via R3)
17 : ADD 5, 3, 0 ; Push callee frame
18 : LDA 7, 26(0) ; Call isExcellent
19 : LD 1, 2(5) ;  Load function result
20 : LDC 2, 3(0) ;  Caller frame size
21 : SUB 5, 5, 2 ;  Pop back to caller
22 : ST 1, 2(5) ; Store result into caller’s frame
23 : LD 1, 2(5) ;  Load return value into register 1
24 : LD 6, 0(5) ;  Load return address for main function into register 6
25 : LDA 7, 0(6) ;  Jump to return address of main function
26 : LDA 3, 4(5) ; Base of callee frame (stable)
27 : LD 1, 1(5) ;  Load parameter 'n' into R1
28 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
29 : LDA 3, 3(5) ; Base of callee frame (stable)
30 : LD 1, 1(5) ;  Load parameter 'n' into R1
31 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
32 : LDA 6, 36(0) ; Return address
33 : ST 6, 0(3) ; Store return in callee frame (via R3)
34 : ADD 5, 3, 0 ; Push callee frame
35 : LDA 7, 192(0) ; Call length
36 : LD 1, 2(5) ;  Load function result
37 : LDC 2, 3(0) ;  Caller frame size
38 : SUB 5, 5, 2 ;  Pop back to caller
39 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
40 : LDA 6, 44(0) ; Return address
41 : ST 6, 0(3) ; Store return in callee frame (via R3)
42 : ADD 5, 3, 0 ; Push callee frame
43 : LDA 7, 50(0) ; Call isExcellentSwitch
44 : LD 1, 3(5) ;  Load function result
45 : LDC 2, 4(0) ;  Caller frame size
46 : SUB 5, 5, 2 ;  Pop back to caller
47 : ST 1, 2(5) ;  Store function result into stack frame
48 : LD 6, 0(5) ;  Load return address
49 : LDA 7, 0(6) ;  Return to caller
50 : LDA 3, 3(5) ; Base of callee frame (stable)
51 : LD 1, 2(5) ;  Load parameter 'length' into R1
52 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
53 : LDA 6, 57(0) ; Return address
54 : ST 6, 0(3) ; Store return in callee frame (via R3)
55 : ADD 5, 3, 0 ; Push callee frame
56 : LDA 7, 228(0) ; Call ODD
57 : LD 1, 2(5) ;  Load function result
58 : LDC 2, 3(0) ;  Caller frame size
59 : SUB 5, 5, 2 ;  Pop back to caller
60 : JEQ 1, 63(0) ;  If condition is false, jump to ELSE
61 : LDC 1, 0(0) ;  Load boolean-literal value into register 1
62 : LDA 7, 102(0) ;  Skip ELSE block
63 : LDA 3, 4(5) ; Base of callee frame (stable)
64 : LDA 3, 3(5) ; Base of callee frame (stable)
65 : LD 1, 1(5) ;  Load parameter 'n' into R1
66 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
67 : LDA 6, 71(0) ; Return address
68 : ST 6, 0(3) ; Store return in callee frame (via R3)
69 : ADD 5, 3, 0 ; Push callee frame
70 : LDA 7, 160(0) ; Call a
71 : LD 1, 2(5) ;  Load function result
72 : LDC 2, 3(0) ;  Caller frame size
73 : SUB 5, 5, 2 ;  Pop back to caller
74 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
75 : LDA 3, 3(5) ; Base of callee frame (stable)
76 : LD 1, 1(5) ;  Load parameter 'n' into R1
77 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
78 : LDA 6, 82(0) ; Return address
79 : ST 6, 0(3) ; Store return in callee frame (via R3)
80 : ADD 5, 3, 0 ; Push callee frame
81 : LDA 7, 122(0) ; Call b
82 : LD 1, 2(5) ;  Load function result
83 : LDC 2, 3(0) ;  Caller frame size
84 : SUB 5, 5, 2 ;  Pop back to caller
85 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
86 : LDA 6, 90(0) ; Return address
87 : ST 6, 0(3) ; Store return in callee frame (via R3)
88 : ADD 5, 3, 0 ; Push callee frame
89 : LDA 7, 105(0) ; Call excellentDiff
90 : LD 1, 3(5) ;  Load function result
91 : LDC 2, 4(0) ;  Caller frame size
92 : SUB 5, 5, 2 ;  Pop back to caller
93 : ADD 3, 1, 0 ;  Move right operand to register 3
94 : LD 1, 1(5) ;  Load parameter 'n' into R1
95 : ADD 2, 1, 0 ;  Move left operand to register 2
96 : ADD 1, 3, 0 ;  Move right operand to register 1
97 : SUB 1, 2, 1 ;  left - right for equality check
98 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
99 : LDC 1, 0(0) ;  false
100 : LDA 7, 1(7) ;  skip setting true
101 : LDC 1, 1(0) ;  true
102 : ST 1, 3(5) ;  Store function result into stack frame
103 : LD 6, 0(5) ;  Load return address
104 : LDA 7, 0(6) ;  Return to caller
105 : LD 1, 2(5) ;  Load parameter 'b' into R1
106 : ADD 3, 1, 0 ;  Stash right operand in R3
107 : LD 1, 2(5) ;  Load parameter 'b' into R1
108 : ADD 2, 1, 0 ;  Move left operand to register 2
109 : ADD 1, 3, 0 ;  Restore right operand from R3
110 : MUL 1, 2, 1 ;  R1 = left * right
111 : ADD 2, 1, 0 ;  Move left operand to register 2
112 : LD 1, 1(5) ;  Load parameter 'a' into R1
113 : ADD 3, 1, 0 ;  Stash right operand in R3
114 : LD 1, 1(5) ;  Load parameter 'a' into R1
115 : ADD 2, 1, 0 ;  Move left operand to register 2
116 : ADD 1, 3, 0 ;  Restore right operand from R3
117 : MUL 1, 2, 1 ;  R1 = left * right
118 : SUB 1, 2, 1 ;  R1 = left - right
119 : ST 1, 3(5) ;  Store function result into stack frame
120 : LD 6, 0(5) ;  Load return address
121 : LDA 7, 0(6) ;  Return to caller
122 : LDA 3, 4(5) ; Base of callee frame (stable)
123 : LD 1, 1(5) ;  Load parameter 'n' into R1
124 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
125 : LDA 3, 4(5) ; Base of callee frame (stable)
126 : LDC 1, 10(0) ;  Load integer-literal value into register 1
127 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
128 : LDA 3, 3(5) ; Base of callee frame (stable)
129 : LD 1, 1(5) ;  Load parameter 'n' into R1
130 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
131 : LDA 6, 135(0) ; Return address
132 : ST 6, 0(3) ; Store return in callee frame (via R3)
133 : ADD 5, 3, 0 ; Push callee frame
134 : LDA 7, 192(0) ; Call length
135 : LD 1, 2(5) ;  Load function result
136 : LDC 2, 3(0) ;  Caller frame size
137 : SUB 5, 5, 2 ;  Pop back to caller
138 : ADD 2, 1, 0 ;  Move left operand to register 2
139 : LDC 1, 2(0) ;  Load integer-literal value into register 1
140 : DIV 1, 2, 1 ;  R1 = left / right
141 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
142 : LDA 6, 146(0) ; Return address
143 : ST 6, 0(3) ; Store return in callee frame (via R3)
144 : ADD 5, 3, 0 ; Push callee frame
145 : LDA 7, 272(0) ; Call EXP
146 : LD 1, 3(5) ;  Load function result
147 : LDC 2, 4(0) ;  Caller frame size
148 : SUB 5, 5, 2 ;  Pop back to caller
149 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
150 : LDA 6, 154(0) ; Return address
151 : ST 6, 0(3) ; Store return in callee frame (via R3)
152 : ADD 5, 3, 0 ; Push callee frame
153 : LDA 7, 310(0) ; Call MOD
154 : LD 1, 3(5) ;  Load function result
155 : LDC 2, 4(0) ;  Caller frame size
156 : SUB 5, 5, 2 ;  Pop back to caller
157 : ST 1, 2(5) ;  Store function result into stack frame
158 : LD 6, 0(5) ;  Load return address
159 : LDA 7, 0(6) ;  Return to caller
160 : LDA 3, 4(5) ; Base of callee frame (stable)
161 : LDC 1, 10(0) ;  Load integer-literal value into register 1
162 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
163 : LDA 3, 3(5) ; Base of callee frame (stable)
164 : LD 1, 1(5) ;  Load parameter 'n' into R1
165 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
166 : LDA 6, 170(0) ; Return address
167 : ST 6, 0(3) ; Store return in callee frame (via R3)
168 : ADD 5, 3, 0 ; Push callee frame
169 : LDA 7, 192(0) ; Call length
170 : LD 1, 2(5) ;  Load function result
171 : LDC 2, 3(0) ;  Caller frame size
172 : SUB 5, 5, 2 ;  Pop back to caller
173 : ADD 2, 1, 0 ;  Move left operand to register 2
174 : LDC 1, 2(0) ;  Load integer-literal value into register 1
175 : DIV 1, 2, 1 ;  R1 = left / right
176 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
177 : LDA 6, 181(0) ; Return address
178 : ST 6, 0(3) ; Store return in callee frame (via R3)
179 : ADD 5, 3, 0 ; Push callee frame
180 : LDA 7, 272(0) ; Call EXP
181 : LD 1, 3(5) ;  Load function result
182 : LDC 2, 4(0) ;  Caller frame size
183 : SUB 5, 5, 2 ;  Pop back to caller
184 : ADD 3, 1, 0 ;  Move right operand to register 3
185 : LD 1, 1(5) ;  Load parameter 'n' into R1
186 : ADD 2, 1, 0 ;  Move left operand to register 2
187 : ADD 1, 3, 0 ;  Move right operand to register 1
188 : DIV 1, 2, 1 ;  R1 = left / right
189 : ST 1, 2(5) ;  Store function result into stack frame
190 : LD 6, 0(5) ;  Load return address
191 : LDA 7, 0(6) ;  Return to caller
192 : LDC 1, 10(0) ;  Load integer-literal value into register 1
193 : ADD 3, 1, 0 ;  Stash right operand in R3
194 : LD 1, 1(5) ;  Load parameter 'n' into R1
195 : ADD 2, 1, 0 ;  Move left operand to register 2
196 : ADD 1, 3, 0 ;  Restore right operand from R3
197 : SUB 1, 2, 1 ;  left - right for less-than check
198 : JLT 1, 2(7) ;  If R1 < 0, jump to true
199 : LDC 1, 0(0) ;  false
200 : LDA 7, 1(7) ;  skip setting true
201 : LDC 1, 1(0) ;  true
202 : JEQ 1, 205(0) ;  If condition is false, jump to ELSE
203 : LDC 1, 1(0) ;  Load integer-literal value into register 1
204 : LDA 7, 225(0) ;  Skip ELSE block
205 : LDA 3, 3(5) ; Base of callee frame (stable)
206 : LDC 1, 10(0) ;  Load integer-literal value into register 1
207 : ADD 3, 1, 0 ;  Stash right operand in R3
208 : LD 1, 1(5) ;  Load parameter 'n' into R1
209 : ADD 2, 1, 0 ;  Move left operand to register 2
210 : ADD 1, 3, 0 ;  Restore right operand from R3
211 : DIV 1, 2, 1 ;  R1 = left / right
212 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
213 : LDA 6, 217(0) ; Return address
214 : ST 6, 0(3) ; Store return in callee frame (via R3)
215 : ADD 5, 3, 0 ; Push callee frame
216 : LDA 7, 192(0) ; Call length
217 : LD 1, 2(5) ;  Load function result
218 : LDC 2, 3(0) ;  Caller frame size
219 : SUB 5, 5, 2 ;  Pop back to caller
220 : ADD 3, 1, 0 ;  Move right operand to register 3
221 : LDC 1, 1(0) ;  Load integer-literal value into register 1
222 : ADD 2, 1, 0 ;  Move left operand to register 2
223 : ADD 1, 3, 0 ;  Move right operand to register 1
224 : ADD 1, 2, 1 ;  R1 = left + right
225 : ST 1, 2(5) ;  Store function result into stack frame
226 : LD 6, 0(5) ;  Load return address
227 : LDA 7, 0(6) ;  Return to caller
228 : LD 1, 1(5) ;  Load parameter 'n' into R1
229 : ADD 3, 1, 0 ;  Stash right operand in R3
230 : LDC 1, 0(0) ;  Load integer-literal value into register 1
231 : ADD 2, 1, 0 ;  Move left operand to register 2
232 : ADD 1, 3, 0 ;  Restore right operand from R3
233 : SUB 1, 2, 1 ;  left - right for less-than check
234 : JLT 1, 2(7) ;  If R1 < 0, jump to true
235 : LDC 1, 0(0) ;  false
236 : LDA 7, 1(7) ;  skip setting true
237 : LDC 1, 1(0) ;  true
238 : JEQ 1, 258(0) ;  If condition is false, jump to ELSE
239 : LDC 1, 2(0) ;  Load integer-literal value into register 1
240 : ADD 3, 1, 0 ;  Stash right operand in R3
241 : LD 1, 1(5) ;  Load parameter 'n' into R1
242 : ADD 2, 1, 0 ;  Move left operand to register 2
243 : ADD 1, 3, 0 ;  Restore right operand from R3
244 : DIV 1, 2, 1 ;  R1 = left / right
245 : ADD 3, 1, 0 ;  Move right operand to register 3
246 : LDC 1, 2(0) ;  Load integer-literal value into register 1
247 : ADD 2, 1, 0 ;  Move left operand to register 2
248 : ADD 1, 3, 0 ;  Move right operand to register 1
249 : MUL 1, 2, 1 ;  R1 = left * right
250 : ADD 2, 1, 0 ;  Move left operand to register 2
251 : LD 1, 1(5) ;  Load parameter 'n' into R1
252 : SUB 1, 2, 1 ;  left - right for less-than check
253 : JLT 1, 2(7) ;  If R1 < 0, jump to true
254 : LDC 1, 0(0) ;  false
255 : LDA 7, 1(7) ;  skip setting true
256 : LDC 1, 1(0) ;  true
257 : LDA 7, 269(0) ;  Skip ELSE block
258 : LDA 3, 3(5) ; Base of callee frame (stable)
259 : LD 1, 1(5) ;  Load parameter 'n' into R1
260 : SUB 1, 0, 1 ;  Negate value in R1
261 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
262 : LDA 6, 266(0) ; Return address
263 : ST 6, 0(3) ; Store return in callee frame (via R3)
264 : ADD 5, 3, 0 ; Push callee frame
265 : LDA 7, 228(0) ; Call ODD
266 : LD 1, 2(5) ;  Load function result
267 : LDC 2, 3(0) ;  Caller frame size
268 : SUB 5, 5, 2 ;  Pop back to caller
269 : ST 1, 2(5) ;  Store function result into stack frame
270 : LD 6, 0(5) ;  Load return address
271 : LDA 7, 0(6) ;  Return to caller
272 : LDC 1, 0(0) ;  Load integer-literal value into register 1
273 : ADD 3, 1, 0 ;  Stash right operand in R3
274 : LD 1, 2(5) ;  Load parameter 'n' into R1
275 : ADD 2, 1, 0 ;  Move left operand to register 2
276 : ADD 1, 3, 0 ;  Restore right operand from R3
277 : SUB 1, 2, 1 ;  left - right for equality check
278 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
279 : LDC 1, 0(0) ;  false
280 : LDA 7, 1(7) ;  skip setting true
281 : LDC 1, 1(0) ;  true
282 : JEQ 1, 285(0) ;  If condition is false, jump to ELSE
283 : LDC 1, 1(0) ;  Load integer-literal value into register 1
284 : LDA 7, 307(0) ;  Skip ELSE block
285 : LDA 3, 4(5) ; Base of callee frame (stable)
286 : LD 1, 1(5) ;  Load parameter 'm' into R1
287 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
288 : LDC 1, 1(0) ;  Load integer-literal value into register 1
289 : ADD 3, 1, 0 ;  Stash right operand in R3
290 : LD 1, 2(5) ;  Load parameter 'n' into R1
291 : ADD 2, 1, 0 ;  Move left operand to register 2
292 : ADD 1, 3, 0 ;  Restore right operand from R3
293 : SUB 1, 2, 1 ;  R1 = left - right
294 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
295 : LDA 6, 299(0) ; Return address
296 : ST 6, 0(3) ; Store return in callee frame (via R3)
297 : ADD 5, 3, 0 ; Push callee frame
298 : LDA 7, 272(0) ; Call EXP
299 : LD 1, 3(5) ;  Load function result
300 : LDC 2, 4(0) ;  Caller frame size
301 : SUB 5, 5, 2 ;  Pop back to caller
302 : ADD 3, 1, 0 ;  Move right operand to register 3
303 : LD 1, 1(5) ;  Load parameter 'm' into R1
304 : ADD 2, 1, 0 ;  Move left operand to register 2
305 : ADD 1, 3, 0 ;  Move right operand to register 1
306 : MUL 1, 2, 1 ;  R1 = left * right
307 : ST 1, 3(5) ;  Store function result into stack frame
308 : LD 6, 0(5) ;  Load return address
309 : LDA 7, 0(6) ;  Return to caller
310 : LD 1, 2(5) ;  Load parameter 'n' into R1
311 : ADD 3, 1, 0 ;  Stash right operand in R3
312 : LD 1, 1(5) ;  Load parameter 'm' into R1
313 : ADD 2, 1, 0 ;  Move left operand to register 2
314 : ADD 1, 3, 0 ;  Restore right operand from R3
315 : DIV 1, 2, 1 ;  R1 = left / right
316 : ADD 3, 1, 0 ;  Move right operand to register 3
317 : LD 1, 2(5) ;  Load parameter 'n' into R1
318 : ADD 2, 1, 0 ;  Move left operand to register 2
319 : ADD 1, 3, 0 ;  Move right operand to register 1
320 : MUL 1, 2, 1 ;  R1 = left * right
321 : ADD 3, 1, 0 ;  Move right operand to register 3
322 : LD 1, 1(5) ;  Load parameter 'm' into R1
323 : ADD 2, 1, 0 ;  Move left operand to register 2
324 : ADD 1, 3, 0 ;  Move right operand to register 1
325 : SUB 1, 2, 1 ;  R1 = left - right
326 : ST 1, 3(5) ;  Store function result into stack frame
327 : LD 6, 0(5) ;  Load return address
328 : LDA 7, 0(6) ;  Return to caller
