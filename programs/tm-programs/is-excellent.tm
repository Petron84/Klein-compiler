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
12 : LDA 4, 3(5) ;  Compute callee frame base
13 : ADD 5, 4, 0 ;  Push callee frame
14 : LD 1, 1(5) ;  Load parameter 'n'
15 : ST 1, 1(5) ;  Store argument 0 in callee frame
16 : LDA 6, 19(0) ;  Return address
17 : ST 6, 0(5) ;  Store RA in callee frame
18 : LDA 7, 26(0) ;  Call isExcellent
19 : LD 1, 2(5) ;  Load callee result
20 : LDC 2, 3(0) ;  Caller frame size
21 : SUB 5, 5, 2 ;  Pop callee frame
22 : ST 1, 2(5) ;  Store result into caller frame
23 : LD 1, 2(5) ;  Load main return value
24 : LD 6, 0(5) ;  Load return address
25 : LDA 7, 0(6) ;  Return from main
26 : LDA 4, 4(5) ;  Compute callee frame base
27 : ADD 5, 4, 0 ;  Push callee frame
28 : LD 1, 1(5) ;  Load parameter 'n'
29 : ST 1, 1(5) ;  Store argument 0 in callee frame
30 : LDA 4, 3(5) ;  Compute callee frame base
31 : ADD 5, 4, 0 ;  Push callee frame
32 : LD 1, 1(5) ;  Load parameter 'n'
33 : ST 1, 1(5) ;  Store argument 0 in callee frame
34 : LDA 6, 37(0) ;  Return address
35 : ST 6, 0(5) ;  Store RA in callee frame
36 : LDA 7, 192(0) ;  Call length
37 : LD 1, 2(5) ;  Load callee result
38 : LDC 2, 3(0) ;  Caller frame size
39 : SUB 5, 5, 2 ;  Pop callee frame
40 : ST 1, 2(5) ;  Store argument 1 in callee frame
41 : LDA 6, 44(0) ;  Return address
42 : ST 6, 0(5) ;  Store RA in callee frame
43 : LDA 7, 50(0) ;  Call isExcellentSwitch
44 : LD 1, 3(5) ;  Load callee result
45 : LDC 2, 4(0) ;  Caller frame size
46 : SUB 5, 5, 2 ;  Pop callee frame
47 : ST 1, 2(5) ;  Store function result
48 : LD 6, 0(5) ;  Load return address
49 : LDA 7, 0(6) ;  Return to caller
50 : LDA 4, 3(5) ;  Compute callee frame base
51 : ADD 5, 4, 0 ;  Push callee frame
52 : LD 1, 2(5) ;  Load parameter 'length'
53 : ST 1, 1(5) ;  Store argument 0 in callee frame
54 : LDA 6, 57(0) ;  Return address
55 : ST 6, 0(5) ;  Store RA in callee frame
56 : LDA 7, 228(0) ;  Call ODD
57 : LD 1, 2(5) ;  Load callee result
58 : LDC 2, 3(0) ;  Caller frame size
59 : SUB 5, 5, 2 ;  Pop callee frame
60 : JEQ 1, 63(0) ;  If false, jump to ELSE
61 : LDC 1, 0(0) ;  Load boolean literal into R1
62 : LDA 7, 102(0) ;  Skip ELSE
63 : LDA 4, 4(5) ;  Compute callee frame base
64 : ADD 5, 4, 0 ;  Push callee frame
65 : LDA 4, 3(5) ;  Compute callee frame base
66 : ADD 5, 4, 0 ;  Push callee frame
67 : LD 1, 1(5) ;  Load parameter 'n'
68 : ST 1, 1(5) ;  Store argument 0 in callee frame
69 : LDA 6, 72(0) ;  Return address
70 : ST 6, 0(5) ;  Store RA in callee frame
71 : LDA 7, 160(0) ;  Call a
72 : LD 1, 2(5) ;  Load callee result
73 : LDC 2, 3(0) ;  Caller frame size
74 : SUB 5, 5, 2 ;  Pop callee frame
75 : ST 1, 1(5) ;  Store argument 0 in callee frame
76 : LDA 4, 3(5) ;  Compute callee frame base
77 : ADD 5, 4, 0 ;  Push callee frame
78 : LD 1, 1(5) ;  Load parameter 'n'
79 : ST 1, 1(5) ;  Store argument 0 in callee frame
80 : LDA 6, 83(0) ;  Return address
81 : ST 6, 0(5) ;  Store RA in callee frame
82 : LDA 7, 122(0) ;  Call b
83 : LD 1, 2(5) ;  Load callee result
84 : LDC 2, 3(0) ;  Caller frame size
85 : SUB 5, 5, 2 ;  Pop callee frame
86 : ST 1, 2(5) ;  Store argument 1 in callee frame
87 : LDA 6, 90(0) ;  Return address
88 : ST 6, 0(5) ;  Store RA in callee frame
89 : LDA 7, 105(0) ;  Call excellentDiff
90 : LD 1, 3(5) ;  Load callee result
91 : LDC 2, 4(0) ;  Caller frame size
92 : SUB 5, 5, 2 ;  Pop callee frame
93 : ADD 3, 1, 0 ;  Stash right in R3
94 : LD 1, 1(5) ;  Load parameter 'n'
95 : ADD 2, 1, 0 ;  Move left to R2
96 : ADD 1, 3, 0 ;  Restore right to R1
97 : SUB 1, 2, 1 ;  left - right
98 : JEQ 1, 2(7) ;  if 0 then true
99 : LDC 1, 0(0) ;  false
100 : LDA 7, 1(7) ;  skip setting true
101 : LDC 1, 1(0) ;  true
102 : ST 1, 3(5) ;  Store function result
103 : LD 6, 0(5) ;  Load return address
104 : LDA 7, 0(6) ;  Return to caller
105 : LD 1, 2(5) ;  Load parameter 'b'
106 : ADD 3, 1, 0 ;  Stash right in R3
107 : LD 1, 2(5) ;  Load parameter 'b'
108 : ADD 2, 1, 0 ;  Move left to R2
109 : ADD 1, 3, 0 ;  Restore right to R1
110 : MUL 1, 2, 1 ;  R1 = left * right
111 : ADD 2, 1, 0 ;  Move left to R2
112 : LD 1, 1(5) ;  Load parameter 'a'
113 : ADD 3, 1, 0 ;  Stash right in R3
114 : LD 1, 1(5) ;  Load parameter 'a'
115 : ADD 2, 1, 0 ;  Move left to R2
116 : ADD 1, 3, 0 ;  Restore right to R1
117 : MUL 1, 2, 1 ;  R1 = left * right
118 : SUB 1, 2, 1 ;  R1 = left - right
119 : ST 1, 3(5) ;  Store function result
120 : LD 6, 0(5) ;  Load return address
121 : LDA 7, 0(6) ;  Return to caller
122 : LDA 4, 4(5) ;  Compute callee frame base
123 : ADD 5, 4, 0 ;  Push callee frame
124 : LD 1, 1(5) ;  Load parameter 'n'
125 : ST 1, 1(5) ;  Store argument 0 in callee frame
126 : LDA 4, 4(5) ;  Compute callee frame base
127 : ADD 5, 4, 0 ;  Push callee frame
128 : LDC 1, 10(0) ;  Load integer literal into R1
129 : ST 1, 1(5) ;  Store argument 0 in callee frame
130 : LDA 4, 3(5) ;  Compute callee frame base
131 : ADD 5, 4, 0 ;  Push callee frame
132 : LD 1, 1(5) ;  Load parameter 'n'
133 : ST 1, 1(5) ;  Store argument 0 in callee frame
134 : LDA 6, 137(0) ;  Return address
135 : ST 6, 0(5) ;  Store RA in callee frame
136 : LDA 7, 192(0) ;  Call length
137 : LD 1, 2(5) ;  Load callee result
138 : LDC 2, 3(0) ;  Caller frame size
139 : SUB 5, 5, 2 ;  Pop callee frame
140 : ADD 2, 1, 0 ;  Move left to R2
141 : LDC 1, 2(0) ;  Load integer literal into R1
142 : DIV 1, 2, 1 ;  R1 = left / right
143 : ST 1, 2(5) ;  Store argument 1 in callee frame
144 : LDA 6, 147(0) ;  Return address
145 : ST 6, 0(5) ;  Store RA in callee frame
146 : LDA 7, 272(0) ;  Call EXP
147 : LD 1, 3(5) ;  Load callee result
148 : LDC 2, 4(0) ;  Caller frame size
149 : SUB 5, 5, 2 ;  Pop callee frame
150 : ST 1, 2(5) ;  Store argument 1 in callee frame
151 : LDA 6, 154(0) ;  Return address
152 : ST 6, 0(5) ;  Store RA in callee frame
153 : LDA 7, 310(0) ;  Call MOD
154 : LD 1, 3(5) ;  Load callee result
155 : LDC 2, 4(0) ;  Caller frame size
156 : SUB 5, 5, 2 ;  Pop callee frame
157 : ST 1, 2(5) ;  Store function result
158 : LD 6, 0(5) ;  Load return address
159 : LDA 7, 0(6) ;  Return to caller
160 : LDA 4, 4(5) ;  Compute callee frame base
161 : ADD 5, 4, 0 ;  Push callee frame
162 : LDC 1, 10(0) ;  Load integer literal into R1
163 : ST 1, 1(5) ;  Store argument 0 in callee frame
164 : LDA 4, 3(5) ;  Compute callee frame base
165 : ADD 5, 4, 0 ;  Push callee frame
166 : LD 1, 1(5) ;  Load parameter 'n'
167 : ST 1, 1(5) ;  Store argument 0 in callee frame
168 : LDA 6, 171(0) ;  Return address
169 : ST 6, 0(5) ;  Store RA in callee frame
170 : LDA 7, 192(0) ;  Call length
171 : LD 1, 2(5) ;  Load callee result
172 : LDC 2, 3(0) ;  Caller frame size
173 : SUB 5, 5, 2 ;  Pop callee frame
174 : ADD 2, 1, 0 ;  Move left to R2
175 : LDC 1, 2(0) ;  Load integer literal into R1
176 : DIV 1, 2, 1 ;  R1 = left / right
177 : ST 1, 2(5) ;  Store argument 1 in callee frame
178 : LDA 6, 181(0) ;  Return address
179 : ST 6, 0(5) ;  Store RA in callee frame
180 : LDA 7, 272(0) ;  Call EXP
181 : LD 1, 3(5) ;  Load callee result
182 : LDC 2, 4(0) ;  Caller frame size
183 : SUB 5, 5, 2 ;  Pop callee frame
184 : ADD 3, 1, 0 ;  Stash right in R3
185 : LD 1, 1(5) ;  Load parameter 'n'
186 : ADD 2, 1, 0 ;  Move left to R2
187 : ADD 1, 3, 0 ;  Restore right to R1
188 : DIV 1, 2, 1 ;  R1 = left / right
189 : ST 1, 2(5) ;  Store function result
190 : LD 6, 0(5) ;  Load return address
191 : LDA 7, 0(6) ;  Return to caller
192 : LDC 1, 10(0) ;  Load integer literal into R1
193 : ADD 3, 1, 0 ;  Stash right in R3
194 : LD 1, 1(5) ;  Load parameter 'n'
195 : ADD 2, 1, 0 ;  Move left to R2
196 : ADD 1, 3, 0 ;  Restore right to R1
197 : SUB 1, 2, 1 ;  left - right
198 : JLT 1, 2(7) ;  if < 0 then true
199 : LDC 1, 0(0) ;  false
200 : LDA 7, 1(7) ;  skip setting true
201 : LDC 1, 1(0) ;  true
202 : JEQ 1, 205(0) ;  If false, jump to ELSE
203 : LDC 1, 1(0) ;  Load integer literal into R1
204 : LDA 7, 225(0) ;  Skip ELSE
205 : LDA 4, 3(5) ;  Compute callee frame base
206 : ADD 5, 4, 0 ;  Push callee frame
207 : LDC 1, 10(0) ;  Load integer literal into R1
208 : ADD 3, 1, 0 ;  Stash right in R3
209 : LD 1, 1(5) ;  Load parameter 'n'
210 : ADD 2, 1, 0 ;  Move left to R2
211 : ADD 1, 3, 0 ;  Restore right to R1
212 : DIV 1, 2, 1 ;  R1 = left / right
213 : ST 1, 1(5) ;  Store argument 0 in callee frame
214 : LDA 6, 217(0) ;  Return address
215 : ST 6, 0(5) ;  Store RA in callee frame
216 : LDA 7, 192(0) ;  Call length
217 : LD 1, 2(5) ;  Load callee result
218 : LDC 2, 3(0) ;  Caller frame size
219 : SUB 5, 5, 2 ;  Pop callee frame
220 : ADD 3, 1, 0 ;  Stash right in R3
221 : LDC 1, 1(0) ;  Load integer literal into R1
222 : ADD 2, 1, 0 ;  Move left to R2
223 : ADD 1, 3, 0 ;  Restore right to R1
224 : ADD 1, 2, 1 ;  R1 = left + right
225 : ST 1, 2(5) ;  Store function result
226 : LD 6, 0(5) ;  Load return address
227 : LDA 7, 0(6) ;  Return to caller
228 : LD 1, 1(5) ;  Load parameter 'n'
229 : ADD 3, 1, 0 ;  Stash right in R3
230 : LDC 1, 0(0) ;  Load integer literal into R1
231 : ADD 2, 1, 0 ;  Move left to R2
232 : ADD 1, 3, 0 ;  Restore right to R1
233 : SUB 1, 2, 1 ;  left - right
234 : JLT 1, 2(7) ;  if < 0 then true
235 : LDC 1, 0(0) ;  false
236 : LDA 7, 1(7) ;  skip setting true
237 : LDC 1, 1(0) ;  true
238 : JEQ 1, 258(0) ;  If false, jump to ELSE
239 : LDC 1, 2(0) ;  Load integer literal into R1
240 : ADD 3, 1, 0 ;  Stash right in R3
241 : LD 1, 1(5) ;  Load parameter 'n'
242 : ADD 2, 1, 0 ;  Move left to R2
243 : ADD 1, 3, 0 ;  Restore right to R1
244 : DIV 1, 2, 1 ;  R1 = left / right
245 : ADD 3, 1, 0 ;  Stash right in R3
246 : LDC 1, 2(0) ;  Load integer literal into R1
247 : ADD 2, 1, 0 ;  Move left to R2
248 : ADD 1, 3, 0 ;  Restore right to R1
249 : MUL 1, 2, 1 ;  R1 = left * right
250 : ADD 2, 1, 0 ;  Move left to R2
251 : LD 1, 1(5) ;  Load parameter 'n'
252 : SUB 1, 2, 1 ;  left - right
253 : JLT 1, 2(7) ;  if < 0 then true
254 : LDC 1, 0(0) ;  false
255 : LDA 7, 1(7) ;  skip setting true
256 : LDC 1, 1(0) ;  true
257 : LDA 7, 269(0) ;  Skip ELSE
258 : LDA 4, 3(5) ;  Compute callee frame base
259 : ADD 5, 4, 0 ;  Push callee frame
260 : LD 1, 1(5) ;  Load parameter 'n'
261 : SUB 1, 0, 1 ;  Negate R1
262 : ST 1, 1(5) ;  Store argument 0 in callee frame
263 : LDA 6, 266(0) ;  Return address
264 : ST 6, 0(5) ;  Store RA in callee frame
265 : LDA 7, 228(0) ;  Call ODD
266 : LD 1, 2(5) ;  Load callee result
267 : LDC 2, 3(0) ;  Caller frame size
268 : SUB 5, 5, 2 ;  Pop callee frame
269 : ST 1, 2(5) ;  Store function result
270 : LD 6, 0(5) ;  Load return address
271 : LDA 7, 0(6) ;  Return to caller
272 : LDC 1, 0(0) ;  Load integer literal into R1
273 : ADD 3, 1, 0 ;  Stash right in R3
274 : LD 1, 2(5) ;  Load parameter 'n'
275 : ADD 2, 1, 0 ;  Move left to R2
276 : ADD 1, 3, 0 ;  Restore right to R1
277 : SUB 1, 2, 1 ;  left - right
278 : JEQ 1, 2(7) ;  if 0 then true
279 : LDC 1, 0(0) ;  false
280 : LDA 7, 1(7) ;  skip setting true
281 : LDC 1, 1(0) ;  true
282 : JEQ 1, 285(0) ;  If false, jump to ELSE
283 : LDC 1, 1(0) ;  Load integer literal into R1
284 : LDA 7, 307(0) ;  Skip ELSE
285 : LDA 4, 4(5) ;  Compute callee frame base
286 : ADD 5, 4, 0 ;  Push callee frame
287 : LD 1, 1(5) ;  Load parameter 'm'
288 : ST 1, 1(5) ;  Store argument 0 in callee frame
289 : LDC 1, 1(0) ;  Load integer literal into R1
290 : ADD 3, 1, 0 ;  Stash right in R3
291 : LD 1, 2(5) ;  Load parameter 'n'
292 : ADD 2, 1, 0 ;  Move left to R2
293 : ADD 1, 3, 0 ;  Restore right to R1
294 : SUB 1, 2, 1 ;  R1 = left - right
295 : ST 1, 2(5) ;  Store argument 1 in callee frame
296 : LDA 6, 299(0) ;  Return address
297 : ST 6, 0(5) ;  Store RA in callee frame
298 : LDA 7, 272(0) ;  Call EXP
299 : LD 1, 3(5) ;  Load callee result
300 : LDC 2, 4(0) ;  Caller frame size
301 : SUB 5, 5, 2 ;  Pop callee frame
302 : ADD 3, 1, 0 ;  Stash right in R3
303 : LD 1, 1(5) ;  Load parameter 'm'
304 : ADD 2, 1, 0 ;  Move left to R2
305 : ADD 1, 3, 0 ;  Restore right to R1
306 : MUL 1, 2, 1 ;  R1 = left * right
307 : ST 1, 3(5) ;  Store function result
308 : LD 6, 0(5) ;  Load return address
309 : LDA 7, 0(6) ;  Return to caller
310 : LD 1, 2(5) ;  Load parameter 'n'
311 : ADD 3, 1, 0 ;  Stash right in R3
312 : LD 1, 1(5) ;  Load parameter 'm'
313 : ADD 2, 1, 0 ;  Move left to R2
314 : ADD 1, 3, 0 ;  Restore right to R1
315 : DIV 1, 2, 1 ;  R1 = left / right
316 : ADD 3, 1, 0 ;  Stash right in R3
317 : LD 1, 2(5) ;  Load parameter 'n'
318 : ADD 2, 1, 0 ;  Move left to R2
319 : ADD 1, 3, 0 ;  Restore right to R1
320 : MUL 1, 2, 1 ;  R1 = left * right
321 : ADD 3, 1, 0 ;  Stash right in R3
322 : LD 1, 1(5) ;  Load parameter 'm'
323 : ADD 2, 1, 0 ;  Move left to R2
324 : ADD 1, 3, 0 ;  Restore right to R1
325 : SUB 1, 2, 1 ;  R1 = left - right
326 : ST 1, 3(5) ;  Store function result
327 : LD 6, 0(5) ;  Load return address
328 : LDA 7, 0(6) ;  Return to caller
