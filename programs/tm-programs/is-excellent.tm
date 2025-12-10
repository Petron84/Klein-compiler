0 : LDC 5, 2(0) ; Set DMEM pointer (R5) to main stack frame base
1 : ADD 4, 5, 0 ; Set top of caller frame (R4 := R5)
2 : LD 2, 1(0) ; Load CLI arg 1 into R2
3 : ST 2, 1(5) ; Store arg 1 into main frame parameter slot
4 : LDA 6, 2(7) ; Calculate return address (PC + 2)
5 : ST 6, 0(5) ; Store return address in main frame
6 : LDA 7, 12(0) ; Branch to main function
7 : OUT 1, 0, 0 ; Return/print result from main in R1
8 : HALT 0, 0, 0 ; Terminate program
9 : OUT 1, 0, 0 ; Hardcoded print: output R1
10 : LD 6, 0(5) ; Load return address from current frame
11 : LDA 7, 0(6) ; Jump back to caller
12 : LD 1, 1(5) ; Load parameter 'n' into R1
13 : LDA 4, 3(5) ; Recompute callee base from caller size
14 : ST 1, 1(4) ; Store argument 0 in callee frame
15 : LDA 4, 3(5) ; Recompute callee base from caller size
16 : LDA 6, 20(0) ; Return address
17 : ST 6, 0(4) ; Store return address into callee frame
18 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
19 : LDA 7, 28(0) ; Call isExcellent
20 : LD 1, 2(5) ; Load callee result into R1
21 : LDC 2, 3(0) ; Callee frame size
22 : SUB 5, 5, 2 ; Pop back to caller
23 : ST 1, 2(5) ; Store result into caller’s return slot
24 : LDC 5, 2(0) ; Reset R5 to main frame base (DMEM[N+1])
25 : LD 1, 2(5) ; Load main return value into R1
26 : LD 6, 0(5) ; Load root return address from main frame
27 : LDA 7, 0(6) ; Return from main to runtime epilogue
28 : LD 1, 1(5) ; Load parameter 'n' into R1
29 : LDA 4, 3(5) ; Recompute callee base from caller size
30 : ST 1, 1(4) ; Store argument 0 in callee frame
31 : LD 1, 1(5) ; Load parameter 'n' into R1
32 : LDA 4, 3(5) ; Recompute callee base from caller size
33 : ST 1, 1(4) ; Store argument 0 in callee frame
34 : LDA 4, 3(5) ; Recompute callee base from caller size
35 : LDA 6, 39(0) ; Return address
36 : ST 6, 0(4) ; Store return address into callee frame
37 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
38 : LDA 7, 209(0) ; Call length
39 : LD 1, 2(5) ; Load callee result into R1
40 : LDC 2, 5(0) ; Callee frame size
41 : SUB 5, 5, 2 ; Pop back to caller
42 : LDA 4, 3(5) ; Recompute callee base from caller size
43 : ST 1, 2(4) ; Store argument 1 in callee frame
44 : LDA 4, 3(5) ; Recompute callee base from caller size
45 : LDA 6, 49(0) ; Return address
46 : ST 6, 0(4) ; Store return address into callee frame
47 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
48 : LDA 7, 55(0) ; Call isExcellentSwitch
49 : LD 1, 3(5) ; Load callee result into R1
50 : LDC 2, 5(0) ; Callee frame size
51 : SUB 5, 5, 2 ; Pop back to caller
52 : ST 1, 2(5) ; Store function result into frame return slot
53 : LD 6, 0(5) ; Load return address
54 : LDA 7, 0(6) ; Return to caller
55 : LD 1, 2(5) ; Load parameter 'length' into R1
56 : LDA 4, 5(5) ; Recompute callee base from caller size
57 : ST 1, 1(4) ; Store argument 0 in callee frame
58 : LDA 4, 5(5) ; Recompute callee base from caller size
59 : LDA 6, 63(0) ; Return address
60 : ST 6, 0(4) ; Store return address into callee frame
61 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
62 : LDA 7, 243(0) ; Call ODD
63 : LD 1, 2(5) ; Load callee result into R1
64 : LDC 2, 5(0) ; Callee frame size
65 : SUB 5, 5, 2 ; Pop back to caller
66 : JEQ 1, 69(0) ; If condition is false, jump to ELSE
67 : LDC 1, 0(0) ; Load boolean-literal into R1
68 : LDA 7, 111(0) ; Skip ELSE block
69 : LD 1, 1(5) ; Load parameter 'n' into R1
70 : ST 1, 4(5) ; Spill left operand at depth 0
71 : LD 1, 1(5) ; Load parameter 'n' into R1
72 : LDA 4, 5(5) ; Recompute callee base from caller size
73 : ST 1, 1(4) ; Store argument 0 in callee frame
74 : LDA 4, 5(5) ; Recompute callee base from caller size
75 : LDA 6, 79(0) ; Return address
76 : ST 6, 0(4) ; Store return address into callee frame
77 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
78 : LDA 7, 174(0) ; Call a
79 : LD 1, 2(5) ; Load callee result into R1
80 : LDC 2, 5(0) ; Callee frame size
81 : SUB 5, 5, 2 ; Pop back to caller
82 : LDA 4, 5(5) ; Recompute callee base from caller size
83 : ST 1, 1(4) ; Store argument 0 in callee frame
84 : LD 1, 1(5) ; Load parameter 'n' into R1
85 : LDA 4, 5(5) ; Recompute callee base from caller size
86 : ST 1, 1(4) ; Store argument 0 in callee frame
87 : LDA 4, 5(5) ; Recompute callee base from caller size
88 : LDA 6, 92(0) ; Return address
89 : ST 6, 0(4) ; Store return address into callee frame
90 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
91 : LDA 7, 130(0) ; Call b
92 : LD 1, 2(5) ; Load callee result into R1
93 : LDC 2, 4(0) ; Callee frame size
94 : SUB 5, 5, 2 ; Pop back to caller
95 : LDA 4, 5(5) ; Recompute callee base from caller size
96 : ST 1, 2(4) ; Store argument 1 in callee frame
97 : LDA 4, 5(5) ; Recompute callee base from caller size
98 : LDA 6, 102(0) ; Return address
99 : ST 6, 0(4) ; Store return address into callee frame
100 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
101 : LDA 7, 114(0) ; Call excellentDiff
102 : LD 1, 3(5) ; Load callee result into R1
103 : LDC 2, 6(0) ; Callee frame size
104 : SUB 5, 5, 2 ; Pop back to caller
105 : LD 2, 4(5) ; Restore left operand from depth 0
106 : SUB 1, 2, 1 ; left - right for equality check
107 : JEQ 1, 2(7) ; If R1 == 0, jump to true
108 : LDC 1, 0(0) ; false
109 : LDA 7, 1(7) ; skip setting true
110 : LDC 1, 1(0) ; true
111 : ST 1, 3(5) ; Store function result into frame return slot
112 : LD 6, 0(5) ; Load return address
113 : LDA 7, 0(6) ; Return to caller
114 : LD 1, 2(5) ; Load parameter 'b' into R1
115 : ST 1, 4(5) ; Spill left operand at depth 0
116 : LD 1, 2(5) ; Load parameter 'b' into R1
117 : LD 2, 4(5) ; Restore left operand from depth 0
118 : MUL 1, 2, 1 ; R1 = left * right
119 : ST 1, 4(5) ; Spill left operand at depth 0
120 : LD 1, 1(5) ; Load parameter 'a' into R1
121 : ST 1, 5(5) ; Spill left operand at depth 1
122 : LD 1, 1(5) ; Load parameter 'a' into R1
123 : LD 2, 5(5) ; Restore left operand from depth 1
124 : MUL 1, 2, 1 ; R1 = left * right
125 : LD 2, 4(5) ; Restore left operand from depth 0
126 : SUB 1, 2, 1 ; R1 = left - right
127 : ST 1, 3(5) ; Store function result into frame return slot
128 : LD 6, 0(5) ; Load return address
129 : LDA 7, 0(6) ; Return to caller
130 : LD 1, 1(5) ; Load parameter 'n' into R1
131 : LDA 4, 4(5) ; Recompute callee base from caller size
132 : ST 1, 1(4) ; Store argument 0 in callee frame
133 : LDC 1, 10(0) ; Load integer-literal into R1
134 : LDA 4, 4(5) ; Recompute callee base from caller size
135 : ST 1, 1(4) ; Store argument 0 in callee frame
136 : LD 1, 1(5) ; Load parameter 'n' into R1
137 : LDA 4, 4(5) ; Recompute callee base from caller size
138 : ST 1, 1(4) ; Store argument 0 in callee frame
139 : LDA 4, 4(5) ; Recompute callee base from caller size
140 : LDA 6, 144(0) ; Return address
141 : ST 6, 0(4) ; Store return address into callee frame
142 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
143 : LDA 7, 209(0) ; Call length
144 : LD 1, 2(5) ; Load callee result into R1
145 : LDC 2, 5(0) ; Callee frame size
146 : SUB 5, 5, 2 ; Pop back to caller
147 : ST 1, 3(5) ; Spill left operand at depth 0
148 : LDC 1, 2(0) ; Load integer-literal into R1
149 : LD 2, 3(5) ; Restore left operand from depth 0
150 : DIV 1, 2, 1 ; R1 = left / right
151 : LDA 4, 4(5) ; Recompute callee base from caller size
152 : ST 1, 2(4) ; Store argument 1 in callee frame
153 : LDA 4, 4(5) ; Recompute callee base from caller size
154 : LDA 6, 158(0) ; Return address
155 : ST 6, 0(4) ; Store return address into callee frame
156 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
157 : LDA 7, 286(0) ; Call EXP
158 : LD 1, 3(5) ; Load callee result into R1
159 : LDC 2, 6(0) ; Callee frame size
160 : SUB 5, 5, 2 ; Pop back to caller
161 : LDA 4, 4(5) ; Recompute callee base from caller size
162 : ST 1, 2(4) ; Store argument 1 in callee frame
163 : LDA 4, 4(5) ; Recompute callee base from caller size
164 : LDA 6, 168(0) ; Return address
165 : ST 6, 0(4) ; Store return address into callee frame
166 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
167 : LDA 7, 323(0) ; Call MOD
168 : LD 1, 3(5) ; Load callee result into R1
169 : LDC 2, 7(0) ; Callee frame size
170 : SUB 5, 5, 2 ; Pop back to caller
171 : ST 1, 2(5) ; Store function result into frame return slot
172 : LD 6, 0(5) ; Load return address
173 : LDA 7, 0(6) ; Return to caller
174 : LD 1, 1(5) ; Load parameter 'n' into R1
175 : ST 1, 3(5) ; Spill left operand at depth 0
176 : LDC 1, 10(0) ; Load integer-literal into R1
177 : LDA 4, 5(5) ; Recompute callee base from caller size
178 : ST 1, 1(4) ; Store argument 0 in callee frame
179 : LD 1, 1(5) ; Load parameter 'n' into R1
180 : LDA 4, 5(5) ; Recompute callee base from caller size
181 : ST 1, 1(4) ; Store argument 0 in callee frame
182 : LDA 4, 5(5) ; Recompute callee base from caller size
183 : LDA 6, 187(0) ; Return address
184 : ST 6, 0(4) ; Store return address into callee frame
185 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
186 : LDA 7, 209(0) ; Call length
187 : LD 1, 2(5) ; Load callee result into R1
188 : LDC 2, 5(0) ; Callee frame size
189 : SUB 5, 5, 2 ; Pop back to caller
190 : ST 1, 4(5) ; Spill left operand at depth 1
191 : LDC 1, 2(0) ; Load integer-literal into R1
192 : LD 2, 4(5) ; Restore left operand from depth 1
193 : DIV 1, 2, 1 ; R1 = left / right
194 : LDA 4, 5(5) ; Recompute callee base from caller size
195 : ST 1, 2(4) ; Store argument 1 in callee frame
196 : LDA 4, 5(5) ; Recompute callee base from caller size
197 : LDA 6, 201(0) ; Return address
198 : ST 6, 0(4) ; Store return address into callee frame
199 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
200 : LDA 7, 286(0) ; Call EXP
201 : LD 1, 3(5) ; Load callee result into R1
202 : LDC 2, 6(0) ; Callee frame size
203 : SUB 5, 5, 2 ; Pop back to caller
204 : LD 2, 3(5) ; Restore left operand from depth 0
205 : DIV 1, 2, 1 ; R1 = left / right
206 : ST 1, 2(5) ; Store function result into frame return slot
207 : LD 6, 0(5) ; Load return address
208 : LDA 7, 0(6) ; Return to caller
209 : LD 1, 1(5) ; Load parameter 'n' into R1
210 : ST 1, 3(5) ; Spill left operand at depth 0
211 : LDC 1, 10(0) ; Load integer-literal into R1
212 : LD 2, 3(5) ; Restore left operand from depth 0
213 : SUB 1, 2, 1 ; left - right for less-than check
214 : JLT 1, 2(7) ; If R1 < 0, jump to true
215 : LDC 1, 0(0) ; false
216 : LDA 7, 1(7) ; skip setting true
217 : LDC 1, 1(0) ; true
218 : JEQ 1, 221(0) ; If condition is false, jump to ELSE
219 : LDC 1, 1(0) ; Load integer-literal into R1
220 : LDA 7, 240(0) ; Skip ELSE block
221 : LDC 1, 1(0) ; Load integer-literal into R1
222 : ST 1, 3(5) ; Spill left operand at depth 0
223 : LD 1, 1(5) ; Load parameter 'n' into R1
224 : ST 1, 4(5) ; Spill left operand at depth 1
225 : LDC 1, 10(0) ; Load integer-literal into R1
226 : LD 2, 4(5) ; Restore left operand from depth 1
227 : DIV 1, 2, 1 ; R1 = left / right
228 : LDA 4, 5(5) ; Recompute callee base from caller size
229 : ST 1, 1(4) ; Store argument 0 in callee frame
230 : LDA 4, 5(5) ; Recompute callee base from caller size
231 : LDA 6, 235(0) ; Return address
232 : ST 6, 0(4) ; Store return address into callee frame
233 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
234 : LDA 7, 209(0) ; Call length
235 : LD 1, 2(5) ; Load callee result into R1
236 : LDC 2, 5(0) ; Callee frame size
237 : SUB 5, 5, 2 ; Pop back to caller
238 : LD 2, 3(5) ; Restore left operand from depth 0
239 : ADD 1, 2, 1 ; R1 = left + right
240 : ST 1, 2(5) ; Store function result into frame return slot
241 : LD 6, 0(5) ; Load return address
242 : LDA 7, 0(6) ; Return to caller
243 : LDC 1, 0(0) ; Load integer-literal into R1
244 : ST 1, 3(5) ; Spill left operand at depth 0
245 : LD 1, 1(5) ; Load parameter 'n' into R1
246 : LD 2, 3(5) ; Restore left operand from depth 0
247 : SUB 1, 2, 1 ; left - right for less-than check
248 : JLT 1, 2(7) ; If R1 < 0, jump to true
249 : LDC 1, 0(0) ; false
250 : LDA 7, 1(7) ; skip setting true
251 : LDC 1, 1(0) ; true
252 : JEQ 1, 271(0) ; If condition is false, jump to ELSE
253 : LDC 1, 2(0) ; Load integer-literal into R1
254 : ST 1, 3(5) ; Spill left operand at depth 0
255 : LD 1, 1(5) ; Load parameter 'n' into R1
256 : ST 1, 4(5) ; Spill left operand at depth 1
257 : LDC 1, 2(0) ; Load integer-literal into R1
258 : LD 2, 4(5) ; Restore left operand from depth 1
259 : DIV 1, 2, 1 ; R1 = left / right
260 : LD 2, 3(5) ; Restore left operand from depth 0
261 : MUL 1, 2, 1 ; R1 = left * right
262 : ST 1, 3(5) ; Spill left operand at depth 0
263 : LD 1, 1(5) ; Load parameter 'n' into R1
264 : LD 2, 3(5) ; Restore left operand from depth 0
265 : SUB 1, 2, 1 ; left - right for less-than check
266 : JLT 1, 2(7) ; If R1 < 0, jump to true
267 : LDC 1, 0(0) ; false
268 : LDA 7, 1(7) ; skip setting true
269 : LDC 1, 1(0) ; true
270 : LDA 7, 283(0) ; Skip ELSE block
271 : LD 1, 1(5) ; Load parameter 'n' into R1
272 : SUB 1, 0, 1 ; Negate value in R1
273 : LDA 4, 5(5) ; Recompute callee base from caller size
274 : ST 1, 1(4) ; Store argument 0 in callee frame
275 : LDA 4, 5(5) ; Recompute callee base from caller size
276 : LDA 6, 280(0) ; Return address
277 : ST 6, 0(4) ; Store return address into callee frame
278 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
279 : LDA 7, 243(0) ; Call ODD
280 : LD 1, 2(5) ; Load callee result into R1
281 : LDC 2, 5(0) ; Callee frame size
282 : SUB 5, 5, 2 ; Pop back to caller
283 : ST 1, 2(5) ; Store function result into frame return slot
284 : LD 6, 0(5) ; Load return address
285 : LDA 7, 0(6) ; Return to caller
286 : LD 1, 2(5) ; Load parameter 'n' into R1
287 : ST 1, 4(5) ; Spill left operand at depth 0
288 : LDC 1, 0(0) ; Load integer-literal into R1
289 : LD 2, 4(5) ; Restore left operand from depth 0
290 : SUB 1, 2, 1 ; left - right for equality check
291 : JEQ 1, 2(7) ; If R1 == 0, jump to true
292 : LDC 1, 0(0) ; false
293 : LDA 7, 1(7) ; skip setting true
294 : LDC 1, 1(0) ; true
295 : JEQ 1, 298(0) ; If condition is false, jump to ELSE
296 : LDC 1, 1(0) ; Load integer-literal into R1
297 : LDA 7, 320(0) ; Skip ELSE block
298 : LD 1, 1(5) ; Load parameter 'm' into R1
299 : ST 1, 4(5) ; Spill left operand at depth 0
300 : LD 1, 1(5) ; Load parameter 'm' into R1
301 : LDA 4, 6(5) ; Recompute callee base from caller size
302 : ST 1, 1(4) ; Store argument 0 in callee frame
303 : LD 1, 2(5) ; Load parameter 'n' into R1
304 : ST 1, 5(5) ; Spill left operand at depth 1
305 : LDC 1, 1(0) ; Load integer-literal into R1
306 : LD 2, 5(5) ; Restore left operand from depth 1
307 : SUB 1, 2, 1 ; R1 = left - right
308 : LDA 4, 6(5) ; Recompute callee base from caller size
309 : ST 1, 2(4) ; Store argument 1 in callee frame
310 : LDA 4, 6(5) ; Recompute callee base from caller size
311 : LDA 6, 315(0) ; Return address
312 : ST 6, 0(4) ; Store return address into callee frame
313 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
314 : LDA 7, 286(0) ; Call EXP
315 : LD 1, 3(5) ; Load callee result into R1
316 : LDC 2, 6(0) ; Callee frame size
317 : SUB 5, 5, 2 ; Pop back to caller
318 : LD 2, 4(5) ; Restore left operand from depth 0
319 : MUL 1, 2, 1 ; R1 = left * right
320 : ST 1, 3(5) ; Store function result into frame return slot
321 : LD 6, 0(5) ; Load return address
322 : LDA 7, 0(6) ; Return to caller
323 : LD 1, 1(5) ; Load parameter 'm' into R1
324 : ST 1, 4(5) ; Spill left operand at depth 0
325 : LD 1, 2(5) ; Load parameter 'n' into R1
326 : ST 1, 5(5) ; Spill left operand at depth 1
327 : LD 1, 1(5) ; Load parameter 'm' into R1
328 : ST 1, 6(5) ; Spill left operand at depth 2
329 : LD 1, 2(5) ; Load parameter 'n' into R1
330 : LD 2, 6(5) ; Restore left operand from depth 2
331 : DIV 1, 2, 1 ; R1 = left / right
332 : LD 2, 5(5) ; Restore left operand from depth 1
333 : MUL 1, 2, 1 ; R1 = left * right
334 : LD 2, 4(5) ; Restore left operand from depth 0
335 : SUB 1, 2, 1 ; R1 = left - right
336 : ST 1, 3(5) ; Store function result into frame return slot
337 : LD 6, 0(5) ; Load return address
338 : LDA 7, 0(6) ; Return to caller
