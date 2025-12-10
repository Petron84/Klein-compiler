0 : LDC 5, 2(0) ;  Set DMEM pointer to main stack frame
1 : ADD 4, 5, 0 ;  Set FP (R4) = current frame base
2 : LD 2, 1(0) ;  Load CLI arg 1 into R2
3 : ST 2, 1(5) ;  Store arg 1 into main frame
4 : LDA 6, 2(7) ;  Calculate return address
5 : ST 6, 0(5) ;  Store return address in main frame
6 : LDA 7, 12(0) ;  Branch to main
7 : OUT 1, 0, 0 ;  Print main's result
8 : HALT 0, 0, 0 ;  Terminate program
9 : OUT 1, 0, 0 ;  print(R1)
10 : LD 6, 0(5) ;  Load return address
11 : LDA 7, 0(6) ;  Return
12 : ADD 4, 5, 0 ;  Set FP at 12 entry
13 : LDA 4, 3(5) ;  Compute callee frame base (temp)
14 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
15 : LD 1, 1(4) ;  Load parameter 'n' via FP
16 : ST 1, 1(5) ;  Store argument 0 in callee frame
17 : LDA 6, 20(0) ;  Return address
18 : ST 6, 0(5) ;  Store RA in callee frame
19 : LDA 7, 27(0) ;  Call isExcellent
20 : LD 1, 2(5) ;  Load callee result
21 : LDC 2, 3(0) ;  Caller frame size
22 : SUB 5, 5, 2 ;  Pop callee frame
23 : ST 1, 2(4) ;  Store result into caller frame (via FP)
24 : LD 1, 2(4) ;  Load main return value (via FP)
25 : LD 6, 0(4) ;  Load return address (via FP)
26 : LDA 7, 0(6) ;  Return from main
27 : ADD 4, 5, 0 ;  Set FP at 27 entry
28 : LDA 4, 4(5) ;  Compute callee frame base (temp)
29 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
30 : LD 1, 1(4) ;  Load parameter 'n' via FP
31 : ST 1, 1(5) ;  Store argument 0 in callee frame
32 : LDA 4, 3(5) ;  Compute callee frame base (temp)
33 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
34 : LD 1, 1(4) ;  Load parameter 'n' via FP
35 : ST 1, 1(5) ;  Store argument 0 in callee frame
36 : LDA 6, 39(0) ;  Return address
37 : ST 6, 0(5) ;  Store RA in callee frame
38 : LDA 7, 198(0) ;  Call length
39 : LD 1, 2(5) ;  Load callee result
40 : LDC 2, 3(0) ;  Caller frame size
41 : SUB 5, 5, 2 ;  Pop callee frame
42 : ST 1, 2(5) ;  Store argument 1 in callee frame
43 : LDA 6, 46(0) ;  Return address
44 : ST 6, 0(5) ;  Store RA in callee frame
45 : LDA 7, 52(0) ;  Call isExcellentSwitch
46 : LD 1, 3(5) ;  Load callee result
47 : LDC 2, 4(0) ;  Caller frame size
48 : SUB 5, 5, 2 ;  Pop callee frame
49 : ST 1, 2(4) ;  Store function result (via FP)
50 : LD 6, 0(4) ;  Load return address (via FP)
51 : LDA 7, 0(6) ;  Return to caller
52 : ADD 4, 5, 0 ;  Set FP at 52 entry
53 : LDA 4, 3(5) ;  Compute callee frame base (temp)
54 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
55 : LD 1, 2(4) ;  Load parameter 'length' via FP
56 : ST 1, 1(5) ;  Store argument 0 in callee frame
57 : LDA 6, 60(0) ;  Return address
58 : ST 6, 0(5) ;  Store RA in callee frame
59 : LDA 7, 235(0) ;  Call ODD
60 : LD 1, 2(5) ;  Load callee result
61 : LDC 2, 3(0) ;  Caller frame size
62 : SUB 5, 5, 2 ;  Pop callee frame
63 : JEQ 1, 66(0) ;  If false, jump to ELSE
64 : LDC 1, 0(0) ;  Load boolean literal into R1
65 : LDA 7, 105(0) ;  Skip ELSE
66 : LDA 4, 4(5) ;  Compute callee frame base (temp)
67 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
68 : LDA 4, 3(5) ;  Compute callee frame base (temp)
69 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
70 : LD 1, 1(4) ;  Load parameter 'n' via FP
71 : ST 1, 1(5) ;  Store argument 0 in callee frame
72 : LDA 6, 75(0) ;  Return address
73 : ST 6, 0(5) ;  Store RA in callee frame
74 : LDA 7, 165(0) ;  Call a
75 : LD 1, 2(5) ;  Load callee result
76 : LDC 2, 3(0) ;  Caller frame size
77 : SUB 5, 5, 2 ;  Pop callee frame
78 : ST 1, 1(5) ;  Store argument 0 in callee frame
79 : LDA 4, 3(5) ;  Compute callee frame base (temp)
80 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
81 : LD 1, 1(4) ;  Load parameter 'n' via FP
82 : ST 1, 1(5) ;  Store argument 0 in callee frame
83 : LDA 6, 86(0) ;  Return address
84 : ST 6, 0(5) ;  Store RA in callee frame
85 : LDA 7, 126(0) ;  Call b
86 : LD 1, 2(5) ;  Load callee result
87 : LDC 2, 3(0) ;  Caller frame size
88 : SUB 5, 5, 2 ;  Pop callee frame
89 : ST 1, 2(5) ;  Store argument 1 in callee frame
90 : LDA 6, 93(0) ;  Return address
91 : ST 6, 0(5) ;  Store RA in callee frame
92 : LDA 7, 108(0) ;  Call excellentDiff
93 : LD 1, 3(5) ;  Load callee result
94 : LDC 2, 4(0) ;  Caller frame size
95 : SUB 5, 5, 2 ;  Pop callee frame
96 : ADD 3, 1, 0 ;  Stash right in R3
97 : LD 1, 1(4) ;  Load parameter 'n' via FP
98 : ADD 2, 1, 0 ;  Move left to R2
99 : ADD 1, 3, 0 ;  Restore right to R1
100 : SUB 1, 2, 1 ;  left - right
101 : JEQ 1, 2(7) ;  if 0 then true
102 : LDC 1, 0(0) ;  false
103 : LDA 7, 1(7) ;  skip setting true
104 : LDC 1, 1(0) ;  true
105 : ST 1, 3(4) ;  Store function result (via FP)
106 : LD 6, 0(4) ;  Load return address (via FP)
107 : LDA 7, 0(6) ;  Return to caller
108 : ADD 4, 5, 0 ;  Set FP at 108 entry
109 : LD 1, 2(4) ;  Load parameter 'b' via FP
110 : ADD 3, 1, 0 ;  Stash right in R3
111 : LD 1, 2(4) ;  Load parameter 'b' via FP
112 : ADD 2, 1, 0 ;  Move left to R2
113 : ADD 1, 3, 0 ;  Restore right to R1
114 : MUL 1, 2, 1 ;  R1 = left * right
115 : ADD 2, 1, 0 ;  Move left to R2
116 : LD 1, 1(4) ;  Load parameter 'a' via FP
117 : ADD 3, 1, 0 ;  Stash right in R3
118 : LD 1, 1(4) ;  Load parameter 'a' via FP
119 : ADD 2, 1, 0 ;  Move left to R2
120 : ADD 1, 3, 0 ;  Restore right to R1
121 : MUL 1, 2, 1 ;  R1 = left * right
122 : SUB 1, 2, 1 ;  R1 = left - right
123 : ST 1, 3(4) ;  Store function result (via FP)
124 : LD 6, 0(4) ;  Load return address (via FP)
125 : LDA 7, 0(6) ;  Return to caller
126 : ADD 4, 5, 0 ;  Set FP at 126 entry
127 : LDA 4, 4(5) ;  Compute callee frame base (temp)
128 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
129 : LD 1, 1(4) ;  Load parameter 'n' via FP
130 : ST 1, 1(5) ;  Store argument 0 in callee frame
131 : LDA 4, 4(5) ;  Compute callee frame base (temp)
132 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
133 : LDC 1, 10(0) ;  Load integer literal into R1
134 : ST 1, 1(5) ;  Store argument 0 in callee frame
135 : LDA 4, 3(5) ;  Compute callee frame base (temp)
136 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
137 : LD 1, 1(4) ;  Load parameter 'n' via FP
138 : ST 1, 1(5) ;  Store argument 0 in callee frame
139 : LDA 6, 142(0) ;  Return address
140 : ST 6, 0(5) ;  Store RA in callee frame
141 : LDA 7, 198(0) ;  Call length
142 : LD 1, 2(5) ;  Load callee result
143 : LDC 2, 3(0) ;  Caller frame size
144 : SUB 5, 5, 2 ;  Pop callee frame
145 : ADD 2, 1, 0 ;  Move left to R2
146 : LDC 1, 2(0) ;  Load integer literal into R1
147 : DIV 1, 2, 1 ;  R1 = left / right
148 : ST 1, 2(5) ;  Store argument 1 in callee frame
149 : LDA 6, 152(0) ;  Return address
150 : ST 6, 0(5) ;  Store RA in callee frame
151 : LDA 7, 280(0) ;  Call EXP
152 : LD 1, 3(5) ;  Load callee result
153 : LDC 2, 4(0) ;  Caller frame size
154 : SUB 5, 5, 2 ;  Pop callee frame
155 : ST 1, 2(5) ;  Store argument 1 in callee frame
156 : LDA 6, 159(0) ;  Return address
157 : ST 6, 0(5) ;  Store RA in callee frame
158 : LDA 7, 319(0) ;  Call MOD
159 : LD 1, 3(5) ;  Load callee result
160 : LDC 2, 4(0) ;  Caller frame size
161 : SUB 5, 5, 2 ;  Pop callee frame
162 : ST 1, 2(4) ;  Store function result (via FP)
163 : LD 6, 0(4) ;  Load return address (via FP)
164 : LDA 7, 0(6) ;  Return to caller
165 : ADD 4, 5, 0 ;  Set FP at 165 entry
166 : LDA 4, 4(5) ;  Compute callee frame base (temp)
167 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
168 : LDC 1, 10(0) ;  Load integer literal into R1
169 : ST 1, 1(5) ;  Store argument 0 in callee frame
170 : LDA 4, 3(5) ;  Compute callee frame base (temp)
171 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
172 : LD 1, 1(4) ;  Load parameter 'n' via FP
173 : ST 1, 1(5) ;  Store argument 0 in callee frame
174 : LDA 6, 177(0) ;  Return address
175 : ST 6, 0(5) ;  Store RA in callee frame
176 : LDA 7, 198(0) ;  Call length
177 : LD 1, 2(5) ;  Load callee result
178 : LDC 2, 3(0) ;  Caller frame size
179 : SUB 5, 5, 2 ;  Pop callee frame
180 : ADD 2, 1, 0 ;  Move left to R2
181 : LDC 1, 2(0) ;  Load integer literal into R1
182 : DIV 1, 2, 1 ;  R1 = left / right
183 : ST 1, 2(5) ;  Store argument 1 in callee frame
184 : LDA 6, 187(0) ;  Return address
185 : ST 6, 0(5) ;  Store RA in callee frame
186 : LDA 7, 280(0) ;  Call EXP
187 : LD 1, 3(5) ;  Load callee result
188 : LDC 2, 4(0) ;  Caller frame size
189 : SUB 5, 5, 2 ;  Pop callee frame
190 : ADD 3, 1, 0 ;  Stash right in R3
191 : LD 1, 1(4) ;  Load parameter 'n' via FP
192 : ADD 2, 1, 0 ;  Move left to R2
193 : ADD 1, 3, 0 ;  Restore right to R1
194 : DIV 1, 2, 1 ;  R1 = left / right
195 : ST 1, 2(4) ;  Store function result (via FP)
196 : LD 6, 0(4) ;  Load return address (via FP)
197 : LDA 7, 0(6) ;  Return to caller
198 : ADD 4, 5, 0 ;  Set FP at 198 entry
199 : LDC 1, 10(0) ;  Load integer literal into R1
200 : ADD 3, 1, 0 ;  Stash right in R3
201 : LD 1, 1(4) ;  Load parameter 'n' via FP
202 : ADD 2, 1, 0 ;  Move left to R2
203 : ADD 1, 3, 0 ;  Restore right to R1
204 : SUB 1, 2, 1 ;  left - right
205 : JLT 1, 2(7) ;  if < 0 then true
206 : LDC 1, 0(0) ;  false
207 : LDA 7, 1(7) ;  skip setting true
208 : LDC 1, 1(0) ;  true
209 : JEQ 1, 212(0) ;  If false, jump to ELSE
210 : LDC 1, 1(0) ;  Load integer literal into R1
211 : LDA 7, 232(0) ;  Skip ELSE
212 : LDA 4, 3(5) ;  Compute callee frame base (temp)
213 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
214 : LDC 1, 10(0) ;  Load integer literal into R1
215 : ADD 3, 1, 0 ;  Stash right in R3
216 : LD 1, 1(4) ;  Load parameter 'n' via FP
217 : ADD 2, 1, 0 ;  Move left to R2
218 : ADD 1, 3, 0 ;  Restore right to R1
219 : DIV 1, 2, 1 ;  R1 = left / right
220 : ST 1, 1(5) ;  Store argument 0 in callee frame
221 : LDA 6, 224(0) ;  Return address
222 : ST 6, 0(5) ;  Store RA in callee frame
223 : LDA 7, 198(0) ;  Call length
224 : LD 1, 2(5) ;  Load callee result
225 : LDC 2, 3(0) ;  Caller frame size
226 : SUB 5, 5, 2 ;  Pop callee frame
227 : ADD 3, 1, 0 ;  Stash right in R3
228 : LDC 1, 1(0) ;  Load integer literal into R1
229 : ADD 2, 1, 0 ;  Move left to R2
230 : ADD 1, 3, 0 ;  Restore right to R1
231 : ADD 1, 2, 1 ;  R1 = left + right
232 : ST 1, 2(4) ;  Store function result (via FP)
233 : LD 6, 0(4) ;  Load return address (via FP)
234 : LDA 7, 0(6) ;  Return to caller
235 : ADD 4, 5, 0 ;  Set FP at 235 entry
236 : LD 1, 1(4) ;  Load parameter 'n' via FP
237 : ADD 3, 1, 0 ;  Stash right in R3
238 : LDC 1, 0(0) ;  Load integer literal into R1
239 : ADD 2, 1, 0 ;  Move left to R2
240 : ADD 1, 3, 0 ;  Restore right to R1
241 : SUB 1, 2, 1 ;  left - right
242 : JLT 1, 2(7) ;  if < 0 then true
243 : LDC 1, 0(0) ;  false
244 : LDA 7, 1(7) ;  skip setting true
245 : LDC 1, 1(0) ;  true
246 : JEQ 1, 266(0) ;  If false, jump to ELSE
247 : LDC 1, 2(0) ;  Load integer literal into R1
248 : ADD 3, 1, 0 ;  Stash right in R3
249 : LD 1, 1(4) ;  Load parameter 'n' via FP
250 : ADD 2, 1, 0 ;  Move left to R2
251 : ADD 1, 3, 0 ;  Restore right to R1
252 : DIV 1, 2, 1 ;  R1 = left / right
253 : ADD 3, 1, 0 ;  Stash right in R3
254 : LDC 1, 2(0) ;  Load integer literal into R1
255 : ADD 2, 1, 0 ;  Move left to R2
256 : ADD 1, 3, 0 ;  Restore right to R1
257 : MUL 1, 2, 1 ;  R1 = left * right
258 : ADD 2, 1, 0 ;  Move left to R2
259 : LD 1, 1(4) ;  Load parameter 'n' via FP
260 : SUB 1, 2, 1 ;  left - right
261 : JLT 1, 2(7) ;  if < 0 then true
262 : LDC 1, 0(0) ;  false
263 : LDA 7, 1(7) ;  skip setting true
264 : LDC 1, 1(0) ;  true
265 : LDA 7, 277(0) ;  Skip ELSE
266 : LDA 4, 3(5) ;  Compute callee frame base (temp)
267 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
268 : LD 1, 1(4) ;  Load parameter 'n' via FP
269 : SUB 1, 0, 1 ;  Negate R1
270 : ST 1, 1(5) ;  Store argument 0 in callee frame
271 : LDA 6, 274(0) ;  Return address
272 : ST 6, 0(5) ;  Store RA in callee frame
273 : LDA 7, 235(0) ;  Call ODD
274 : LD 1, 2(5) ;  Load callee result
275 : LDC 2, 3(0) ;  Caller frame size
276 : SUB 5, 5, 2 ;  Pop callee frame
277 : ST 1, 2(4) ;  Store function result (via FP)
278 : LD 6, 0(4) ;  Load return address (via FP)
279 : LDA 7, 0(6) ;  Return to caller
280 : ADD 4, 5, 0 ;  Set FP at 280 entry
281 : LDC 1, 0(0) ;  Load integer literal into R1
282 : ADD 3, 1, 0 ;  Stash right in R3
283 : LD 1, 2(4) ;  Load parameter 'n' via FP
284 : ADD 2, 1, 0 ;  Move left to R2
285 : ADD 1, 3, 0 ;  Restore right to R1
286 : SUB 1, 2, 1 ;  left - right
287 : JEQ 1, 2(7) ;  if 0 then true
288 : LDC 1, 0(0) ;  false
289 : LDA 7, 1(7) ;  skip setting true
290 : LDC 1, 1(0) ;  true
291 : JEQ 1, 294(0) ;  If false, jump to ELSE
292 : LDC 1, 1(0) ;  Load integer literal into R1
293 : LDA 7, 316(0) ;  Skip ELSE
294 : LDA 4, 4(5) ;  Compute callee frame base (temp)
295 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
296 : LD 1, 1(4) ;  Load parameter 'm' via FP
297 : ST 1, 1(5) ;  Store argument 0 in callee frame
298 : LDC 1, 1(0) ;  Load integer literal into R1
299 : ADD 3, 1, 0 ;  Stash right in R3
300 : LD 1, 2(4) ;  Load parameter 'n' via FP
301 : ADD 2, 1, 0 ;  Move left to R2
302 : ADD 1, 3, 0 ;  Restore right to R1
303 : SUB 1, 2, 1 ;  R1 = left - right
304 : ST 1, 2(5) ;  Store argument 1 in callee frame
305 : LDA 6, 308(0) ;  Return address
306 : ST 6, 0(5) ;  Store RA in callee frame
307 : LDA 7, 280(0) ;  Call EXP
308 : LD 1, 3(5) ;  Load callee result
309 : LDC 2, 4(0) ;  Caller frame size
310 : SUB 5, 5, 2 ;  Pop callee frame
311 : ADD 3, 1, 0 ;  Stash right in R3
312 : LD 1, 1(4) ;  Load parameter 'm' via FP
313 : ADD 2, 1, 0 ;  Move left to R2
314 : ADD 1, 3, 0 ;  Restore right to R1
315 : MUL 1, 2, 1 ;  R1 = left * right
316 : ST 1, 3(4) ;  Store function result (via FP)
317 : LD 6, 0(4) ;  Load return address (via FP)
318 : LDA 7, 0(6) ;  Return to caller
319 : ADD 4, 5, 0 ;  Set FP at 319 entry
320 : LD 1, 2(4) ;  Load parameter 'n' via FP
321 : ADD 3, 1, 0 ;  Stash right in R3
322 : LD 1, 1(4) ;  Load parameter 'm' via FP
323 : ADD 2, 1, 0 ;  Move left to R2
324 : ADD 1, 3, 0 ;  Restore right to R1
325 : DIV 1, 2, 1 ;  R1 = left / right
326 : ADD 3, 1, 0 ;  Stash right in R3
327 : LD 1, 2(4) ;  Load parameter 'n' via FP
328 : ADD 2, 1, 0 ;  Move left to R2
329 : ADD 1, 3, 0 ;  Restore right to R1
330 : MUL 1, 2, 1 ;  R1 = left * right
331 : ADD 3, 1, 0 ;  Stash right in R3
332 : LD 1, 1(4) ;  Load parameter 'm' via FP
333 : ADD 2, 1, 0 ;  Move left to R2
334 : ADD 1, 3, 0 ;  Restore right to R1
335 : SUB 1, 2, 1 ;  R1 = left - right
336 : ST 1, 3(4) ;  Store function result (via FP)
337 : LD 6, 0(4) ;  Load return address (via FP)
338 : LDA 7, 0(6) ;  Return to caller
