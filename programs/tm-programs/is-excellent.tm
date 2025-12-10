0 : LDC 5, 2(0) ;  Set DMEM pointer to main stack frame
1 : ADD 4, 5, 0 ;  Mirror caller frame top (optional)
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
12 : LD 1, 1(5) ;  Load parameter 'n'
13 : LDA 4, 3(5) ;  [JIT] callee frame base
14 : ST 1, 1(4) ;  Store arg 0 in callee frame
15 : LDA 4, 3(5) ;  [JIT] callee frame base
16 : LDA 6, 20(0) ;  Return address
17 : ST 6, 0(4) ;  Store RA in callee frame
18 : ADD 5, 4, 0 ;  Push callee frame
19 : LDA 7, 27(0) ;  Call isExcellent
20 : LD 1, 2(5) ;  Load callee result
21 : LDC 2, 3(0) ;  Caller frame size
22 : SUB 5, 5, 2 ;  Pop callee frame
23 : ST 1, 2(5) ;  Store result into caller frame
24 : LD 1, 2(5) ;  Load main return value
25 : LD 6, 0(5) ;  Load return address
26 : LDA 7, 0(6) ;  Return from main
27 : LD 1, 1(5) ;  Load parameter 'n'
28 : LDA 4, 4(5) ;  [JIT] callee frame base
29 : ST 1, 1(4) ;  Store arg 0 in callee frame
30 : LD 1, 1(5) ;  Load parameter 'n'
31 : LDA 4, 3(5) ;  [JIT] callee frame base
32 : ST 1, 1(4) ;  Store arg 0 in callee frame
33 : LDA 4, 3(5) ;  [JIT] callee frame base
34 : LDA 6, 38(0) ;  Return address
35 : ST 6, 0(4) ;  Store RA in callee frame
36 : ADD 5, 4, 0 ;  Push callee frame
37 : LDA 7, 209(0) ;  Call length
38 : LD 1, 2(5) ;  Load callee result
39 : LDC 2, 3(0) ;  Caller frame size
40 : SUB 5, 5, 2 ;  Pop callee frame
41 : LDA 4, 4(5) ;  [JIT] callee frame base
42 : ST 1, 2(4) ;  Store arg 1 in callee frame
43 : LDA 4, 4(5) ;  [JIT] callee frame base
44 : LDA 6, 48(0) ;  Return address
45 : ST 6, 0(4) ;  Store RA in callee frame
46 : ADD 5, 4, 0 ;  Push callee frame
47 : LDA 7, 54(0) ;  Call isExcellentSwitch
48 : LD 1, 3(5) ;  Load callee result
49 : LDC 2, 4(0) ;  Caller frame size
50 : SUB 5, 5, 2 ;  Pop callee frame
51 : ST 1, 2(5) ;  Store function result
52 : LD 6, 0(5) ;  Load return address
53 : LDA 7, 0(6) ;  Return to caller
54 : LD 1, 2(5) ;  Load parameter 'length'
55 : LDA 4, 3(5) ;  [JIT] callee frame base
56 : ST 1, 1(4) ;  Store arg 0 in callee frame
57 : LDA 4, 3(5) ;  [JIT] callee frame base
58 : LDA 6, 62(0) ;  Return address
59 : ST 6, 0(4) ;  Store RA in callee frame
60 : ADD 5, 4, 0 ;  Push callee frame
61 : LDA 7, 246(0) ;  Call ODD
62 : LD 1, 2(5) ;  Load callee result
63 : LDC 2, 3(0) ;  Caller frame size
64 : SUB 5, 5, 2 ;  Pop callee frame
65 : JEQ 1, 68(0) ;  If false, jump to ELSE
66 : LDC 1, 0(0) ;  Load boolean literal into R1
67 : LDA 7, 111(0) ;  Skip ELSE
68 : LD 1, 1(5) ;  Load parameter 'n'
69 : LDA 4, 3(5) ;  [JIT] callee frame base
70 : ST 1, 1(4) ;  Store arg 0 in callee frame
71 : LDA 4, 3(5) ;  [JIT] callee frame base
72 : LDA 6, 76(0) ;  Return address
73 : ST 6, 0(4) ;  Store RA in callee frame
74 : ADD 5, 4, 0 ;  Push callee frame
75 : LDA 7, 174(0) ;  Call a
76 : LD 1, 2(5) ;  Load callee result
77 : LDC 2, 3(0) ;  Caller frame size
78 : SUB 5, 5, 2 ;  Pop callee frame
79 : LDA 4, 4(5) ;  [JIT] callee frame base
80 : ST 1, 1(4) ;  Store arg 0 in callee frame
81 : LD 1, 1(5) ;  Load parameter 'n'
82 : LDA 4, 3(5) ;  [JIT] callee frame base
83 : ST 1, 1(4) ;  Store arg 0 in callee frame
84 : LDA 4, 3(5) ;  [JIT] callee frame base
85 : LDA 6, 89(0) ;  Return address
86 : ST 6, 0(4) ;  Store RA in callee frame
87 : ADD 5, 4, 0 ;  Push callee frame
88 : LDA 7, 131(0) ;  Call b
89 : LD 1, 2(5) ;  Load callee result
90 : LDC 2, 3(0) ;  Caller frame size
91 : SUB 5, 5, 2 ;  Pop callee frame
92 : LDA 4, 4(5) ;  [JIT] callee frame base
93 : ST 1, 2(4) ;  Store arg 1 in callee frame
94 : LDA 4, 4(5) ;  [JIT] callee frame base
95 : LDA 6, 99(0) ;  Return address
96 : ST 6, 0(4) ;  Store RA in callee frame
97 : ADD 5, 4, 0 ;  Push callee frame
98 : LDA 7, 114(0) ;  Call excellentDiff
99 : LD 1, 3(5) ;  Load callee result
100 : LDC 2, 4(0) ;  Caller frame size
101 : SUB 5, 5, 2 ;  Pop callee frame
102 : ADD 3, 1, 0 ;  Stash right in R3
103 : LD 1, 1(5) ;  Load parameter 'n'
104 : ADD 2, 1, 0 ;  Move left to R2
105 : ADD 1, 3, 0 ;  Restore right to R1
106 : SUB 1, 2, 1 ;  left - right
107 : JEQ 1, 2(7) ;  if 0 then true
108 : LDC 1, 0(0) ;  false
109 : LDA 7, 1(7) ;  skip setting true
110 : LDC 1, 1(0) ;  true
111 : ST 1, 3(5) ;  Store function result
112 : LD 6, 0(5) ;  Load return address
113 : LDA 7, 0(6) ;  Return to caller
114 : LD 1, 2(5) ;  Load parameter 'b'
115 : ADD 3, 1, 0 ;  Stash right in R3
116 : LD 1, 2(5) ;  Load parameter 'b'
117 : ADD 2, 1, 0 ;  Move left to R2
118 : ADD 1, 3, 0 ;  Restore right to R1
119 : MUL 1, 2, 1 ;  R1 = left * right
120 : ADD 2, 1, 0 ;  Move left to R2
121 : LD 1, 1(5) ;  Load parameter 'a'
122 : ADD 3, 1, 0 ;  Stash right in R3
123 : LD 1, 1(5) ;  Load parameter 'a'
124 : ADD 2, 1, 0 ;  Move left to R2
125 : ADD 1, 3, 0 ;  Restore right to R1
126 : MUL 1, 2, 1 ;  R1 = left * right
127 : SUB 1, 2, 1 ;  R1 = left - right
128 : ST 1, 3(5) ;  Store function result
129 : LD 6, 0(5) ;  Load return address
130 : LDA 7, 0(6) ;  Return to caller
131 : LD 1, 1(5) ;  Load parameter 'n'
132 : LDA 4, 4(5) ;  [JIT] callee frame base
133 : ST 1, 1(4) ;  Store arg 0 in callee frame
134 : LDC 1, 10(0) ;  Load integer literal into R1
135 : LDA 4, 4(5) ;  [JIT] callee frame base
136 : ST 1, 1(4) ;  Store arg 0 in callee frame
137 : LD 1, 1(5) ;  Load parameter 'n'
138 : LDA 4, 3(5) ;  [JIT] callee frame base
139 : ST 1, 1(4) ;  Store arg 0 in callee frame
140 : LDA 4, 3(5) ;  [JIT] callee frame base
141 : LDA 6, 145(0) ;  Return address
142 : ST 6, 0(4) ;  Store RA in callee frame
143 : ADD 5, 4, 0 ;  Push callee frame
144 : LDA 7, 209(0) ;  Call length
145 : LD 1, 2(5) ;  Load callee result
146 : LDC 2, 3(0) ;  Caller frame size
147 : SUB 5, 5, 2 ;  Pop callee frame
148 : ADD 2, 1, 0 ;  Move left to R2
149 : LDC 1, 2(0) ;  Load integer literal into R1
150 : DIV 1, 2, 1 ;  R1 = left / right
151 : LDA 4, 4(5) ;  [JIT] callee frame base
152 : ST 1, 2(4) ;  Store arg 1 in callee frame
153 : LDA 4, 4(5) ;  [JIT] callee frame base
154 : LDA 6, 158(0) ;  Return address
155 : ST 6, 0(4) ;  Store RA in callee frame
156 : ADD 5, 4, 0 ;  Push callee frame
157 : LDA 7, 291(0) ;  Call EXP
158 : LD 1, 3(5) ;  Load callee result
159 : LDC 2, 4(0) ;  Caller frame size
160 : SUB 5, 5, 2 ;  Pop callee frame
161 : LDA 4, 4(5) ;  [JIT] callee frame base
162 : ST 1, 2(4) ;  Store arg 1 in callee frame
163 : LDA 4, 4(5) ;  [JIT] callee frame base
164 : LDA 6, 168(0) ;  Return address
165 : ST 6, 0(4) ;  Store RA in callee frame
166 : ADD 5, 4, 0 ;  Push callee frame
167 : LDA 7, 331(0) ;  Call MOD
168 : LD 1, 3(5) ;  Load callee result
169 : LDC 2, 4(0) ;  Caller frame size
170 : SUB 5, 5, 2 ;  Pop callee frame
171 : ST 1, 2(5) ;  Store function result
172 : LD 6, 0(5) ;  Load return address
173 : LDA 7, 0(6) ;  Return to caller
174 : LDC 1, 10(0) ;  Load integer literal into R1
175 : LDA 4, 4(5) ;  [JIT] callee frame base
176 : ST 1, 1(4) ;  Store arg 0 in callee frame
177 : LD 1, 1(5) ;  Load parameter 'n'
178 : LDA 4, 3(5) ;  [JIT] callee frame base
179 : ST 1, 1(4) ;  Store arg 0 in callee frame
180 : LDA 4, 3(5) ;  [JIT] callee frame base
181 : LDA 6, 185(0) ;  Return address
182 : ST 6, 0(4) ;  Store RA in callee frame
183 : ADD 5, 4, 0 ;  Push callee frame
184 : LDA 7, 209(0) ;  Call length
185 : LD 1, 2(5) ;  Load callee result
186 : LDC 2, 3(0) ;  Caller frame size
187 : SUB 5, 5, 2 ;  Pop callee frame
188 : ADD 2, 1, 0 ;  Move left to R2
189 : LDC 1, 2(0) ;  Load integer literal into R1
190 : DIV 1, 2, 1 ;  R1 = left / right
191 : LDA 4, 4(5) ;  [JIT] callee frame base
192 : ST 1, 2(4) ;  Store arg 1 in callee frame
193 : LDA 4, 4(5) ;  [JIT] callee frame base
194 : LDA 6, 198(0) ;  Return address
195 : ST 6, 0(4) ;  Store RA in callee frame
196 : ADD 5, 4, 0 ;  Push callee frame
197 : LDA 7, 291(0) ;  Call EXP
198 : LD 1, 3(5) ;  Load callee result
199 : LDC 2, 4(0) ;  Caller frame size
200 : SUB 5, 5, 2 ;  Pop callee frame
201 : ADD 3, 1, 0 ;  Stash right in R3
202 : LD 1, 1(5) ;  Load parameter 'n'
203 : ADD 2, 1, 0 ;  Move left to R2
204 : ADD 1, 3, 0 ;  Restore right to R1
205 : DIV 1, 2, 1 ;  R1 = left / right
206 : ST 1, 2(5) ;  Store function result
207 : LD 6, 0(5) ;  Load return address
208 : LDA 7, 0(6) ;  Return to caller
209 : LDC 1, 10(0) ;  Load integer literal into R1
210 : ADD 3, 1, 0 ;  Stash right in R3
211 : LD 1, 1(5) ;  Load parameter 'n'
212 : ADD 2, 1, 0 ;  Move left to R2
213 : ADD 1, 3, 0 ;  Restore right to R1
214 : SUB 1, 2, 1 ;  left - right
215 : JLT 1, 2(7) ;  if < 0 then true
216 : LDC 1, 0(0) ;  false
217 : LDA 7, 1(7) ;  skip setting true
218 : LDC 1, 1(0) ;  true
219 : JEQ 1, 222(0) ;  If false, jump to ELSE
220 : LDC 1, 1(0) ;  Load integer literal into R1
221 : LDA 7, 243(0) ;  Skip ELSE
222 : LDC 1, 10(0) ;  Load integer literal into R1
223 : ADD 3, 1, 0 ;  Stash right in R3
224 : LD 1, 1(5) ;  Load parameter 'n'
225 : ADD 2, 1, 0 ;  Move left to R2
226 : ADD 1, 3, 0 ;  Restore right to R1
227 : DIV 1, 2, 1 ;  R1 = left / right
228 : LDA 4, 3(5) ;  [JIT] callee frame base
229 : ST 1, 1(4) ;  Store arg 0 in callee frame
230 : LDA 4, 3(5) ;  [JIT] callee frame base
231 : LDA 6, 235(0) ;  Return address
232 : ST 6, 0(4) ;  Store RA in callee frame
233 : ADD 5, 4, 0 ;  Push callee frame
234 : LDA 7, 209(0) ;  Call length
235 : LD 1, 2(5) ;  Load callee result
236 : LDC 2, 3(0) ;  Caller frame size
237 : SUB 5, 5, 2 ;  Pop callee frame
238 : ADD 3, 1, 0 ;  Stash right in R3
239 : LDC 1, 1(0) ;  Load integer literal into R1
240 : ADD 2, 1, 0 ;  Move left to R2
241 : ADD 1, 3, 0 ;  Restore right to R1
242 : ADD 1, 2, 1 ;  R1 = left + right
243 : ST 1, 2(5) ;  Store function result
244 : LD 6, 0(5) ;  Load return address
245 : LDA 7, 0(6) ;  Return to caller
246 : LD 1, 1(5) ;  Load parameter 'n'
247 : ADD 3, 1, 0 ;  Stash right in R3
248 : LDC 1, 0(0) ;  Load integer literal into R1
249 : ADD 2, 1, 0 ;  Move left to R2
250 : ADD 1, 3, 0 ;  Restore right to R1
251 : SUB 1, 2, 1 ;  left - right
252 : JLT 1, 2(7) ;  if < 0 then true
253 : LDC 1, 0(0) ;  false
254 : LDA 7, 1(7) ;  skip setting true
255 : LDC 1, 1(0) ;  true
256 : JEQ 1, 276(0) ;  If false, jump to ELSE
257 : LDC 1, 2(0) ;  Load integer literal into R1
258 : ADD 3, 1, 0 ;  Stash right in R3
259 : LD 1, 1(5) ;  Load parameter 'n'
260 : ADD 2, 1, 0 ;  Move left to R2
261 : ADD 1, 3, 0 ;  Restore right to R1
262 : DIV 1, 2, 1 ;  R1 = left / right
263 : ADD 3, 1, 0 ;  Stash right in R3
264 : LDC 1, 2(0) ;  Load integer literal into R1
265 : ADD 2, 1, 0 ;  Move left to R2
266 : ADD 1, 3, 0 ;  Restore right to R1
267 : MUL 1, 2, 1 ;  R1 = left * right
268 : ADD 2, 1, 0 ;  Move left to R2
269 : LD 1, 1(5) ;  Load parameter 'n'
270 : SUB 1, 2, 1 ;  left - right
271 : JLT 1, 2(7) ;  if < 0 then true
272 : LDC 1, 0(0) ;  false
273 : LDA 7, 1(7) ;  skip setting true
274 : LDC 1, 1(0) ;  true
275 : LDA 7, 288(0) ;  Skip ELSE
276 : LD 1, 1(5) ;  Load parameter 'n'
277 : SUB 1, 0, 1 ;  Negate R1
278 : LDA 4, 3(5) ;  [JIT] callee frame base
279 : ST 1, 1(4) ;  Store arg 0 in callee frame
280 : LDA 4, 3(5) ;  [JIT] callee frame base
281 : LDA 6, 285(0) ;  Return address
282 : ST 6, 0(4) ;  Store RA in callee frame
283 : ADD 5, 4, 0 ;  Push callee frame
284 : LDA 7, 246(0) ;  Call ODD
285 : LD 1, 2(5) ;  Load callee result
286 : LDC 2, 3(0) ;  Caller frame size
287 : SUB 5, 5, 2 ;  Pop callee frame
288 : ST 1, 2(5) ;  Store function result
289 : LD 6, 0(5) ;  Load return address
290 : LDA 7, 0(6) ;  Return to caller
291 : LDC 1, 0(0) ;  Load integer literal into R1
292 : ADD 3, 1, 0 ;  Stash right in R3
293 : LD 1, 2(5) ;  Load parameter 'n'
294 : ADD 2, 1, 0 ;  Move left to R2
295 : ADD 1, 3, 0 ;  Restore right to R1
296 : SUB 1, 2, 1 ;  left - right
297 : JEQ 1, 2(7) ;  if 0 then true
298 : LDC 1, 0(0) ;  false
299 : LDA 7, 1(7) ;  skip setting true
300 : LDC 1, 1(0) ;  true
301 : JEQ 1, 304(0) ;  If false, jump to ELSE
302 : LDC 1, 1(0) ;  Load integer literal into R1
303 : LDA 7, 328(0) ;  Skip ELSE
304 : LD 1, 1(5) ;  Load parameter 'm'
305 : LDA 4, 4(5) ;  [JIT] callee frame base
306 : ST 1, 1(4) ;  Store arg 0 in callee frame
307 : LDC 1, 1(0) ;  Load integer literal into R1
308 : ADD 3, 1, 0 ;  Stash right in R3
309 : LD 1, 2(5) ;  Load parameter 'n'
310 : ADD 2, 1, 0 ;  Move left to R2
311 : ADD 1, 3, 0 ;  Restore right to R1
312 : SUB 1, 2, 1 ;  R1 = left - right
313 : LDA 4, 4(5) ;  [JIT] callee frame base
314 : ST 1, 2(4) ;  Store arg 1 in callee frame
315 : LDA 4, 4(5) ;  [JIT] callee frame base
316 : LDA 6, 320(0) ;  Return address
317 : ST 6, 0(4) ;  Store RA in callee frame
318 : ADD 5, 4, 0 ;  Push callee frame
319 : LDA 7, 291(0) ;  Call EXP
320 : LD 1, 3(5) ;  Load callee result
321 : LDC 2, 4(0) ;  Caller frame size
322 : SUB 5, 5, 2 ;  Pop callee frame
323 : ADD 3, 1, 0 ;  Stash right in R3
324 : LD 1, 1(5) ;  Load parameter 'm'
325 : ADD 2, 1, 0 ;  Move left to R2
326 : ADD 1, 3, 0 ;  Restore right to R1
327 : MUL 1, 2, 1 ;  R1 = left * right
328 : ST 1, 3(5) ;  Store function result
329 : LD 6, 0(5) ;  Load return address
330 : LDA 7, 0(6) ;  Return to caller
331 : LD 1, 2(5) ;  Load parameter 'n'
332 : ADD 3, 1, 0 ;  Stash right in R3
333 : LD 1, 1(5) ;  Load parameter 'm'
334 : ADD 2, 1, 0 ;  Move left to R2
335 : ADD 1, 3, 0 ;  Restore right to R1
336 : DIV 1, 2, 1 ;  R1 = left / right
337 : ADD 3, 1, 0 ;  Stash right in R3
338 : LD 1, 2(5) ;  Load parameter 'n'
339 : ADD 2, 1, 0 ;  Move left to R2
340 : ADD 1, 3, 0 ;  Restore right to R1
341 : MUL 1, 2, 1 ;  R1 = left * right
342 : ADD 3, 1, 0 ;  Stash right in R3
343 : LD 1, 1(5) ;  Load parameter 'm'
344 : ADD 2, 1, 0 ;  Move left to R2
345 : ADD 1, 3, 0 ;  Restore right to R1
346 : SUB 1, 2, 1 ;  R1 = left - right
347 : ST 1, 3(5) ;  Store function result
348 : LD 6, 0(5) ;  Load return address
349 : LDA 7, 0(6) ;  Return to caller
