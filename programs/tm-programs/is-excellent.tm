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
19 : LDA 7, 30(0) ; Call isExcellent
20 : LD 1, 2(5) ; Load callee result into R1
21 : LDC 2, 3(0) ; Callee frame size
22 : SUB 5, 5, 2 ; Pop back to caller
23 : ST 1, 2(5) ; Store result into caller’s return slot
24 : LDC 5, 2(0) ; Anchor R5 to main frame base (DMEM[N+1])
25 : ST 1, 2(5) ; Store final result into MAIN frame's return slot
26 : LDC 5, 2(0) ; Reset R5 to main frame base (DMEM[N+1])
27 : LD 1, 2(5) ; Load main return value into R1
28 : LD 6, 0(5) ; Load root return address from main frame
29 : LDA 7, 0(6) ; Return from main to runtime epilogue
30 : LD 1, 1(5) ; Load parameter 'n' into R1
31 : LDA 4, 3(5) ; Recompute callee base from caller size
32 : ST 1, 1(4) ; Store argument 0 in callee frame
33 : LD 1, 1(5) ; Load parameter 'n' into R1
34 : LDA 4, 3(5) ; Recompute callee base from caller size
35 : ST 1, 1(4) ; Store argument 0 in callee frame
36 : LDA 4, 3(5) ; Recompute callee base from caller size
37 : LDA 6, 41(0) ; Return address
38 : ST 6, 0(4) ; Store return address into callee frame
39 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
40 : LDA 7, 211(0) ; Call length
41 : LD 1, 2(5) ; Load callee result into R1
42 : LDC 2, 5(0) ; Callee frame size
43 : SUB 5, 5, 2 ; Pop back to caller
44 : LDA 4, 3(5) ; Recompute callee base from caller size
45 : ST 1, 2(4) ; Store argument 1 in callee frame
46 : LDA 4, 3(5) ; Recompute callee base from caller size
47 : LDA 6, 51(0) ; Return address
48 : ST 6, 0(4) ; Store return address into callee frame
49 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
50 : LDA 7, 57(0) ; Call isExcellentSwitch
51 : LD 1, 3(5) ; Load callee result into R1
52 : LDC 2, 5(0) ; Callee frame size
53 : SUB 5, 5, 2 ; Pop back to caller
54 : ST 1, 2(5) ; Store function result into frame return slot
55 : LD 6, 0(5) ; Load return address
56 : LDA 7, 0(6) ; Return to caller
57 : LD 1, 2(5) ; Load parameter 'length' into R1
58 : LDA 4, 5(5) ; Recompute callee base from caller size
59 : ST 1, 1(4) ; Store argument 0 in callee frame
60 : LDA 4, 5(5) ; Recompute callee base from caller size
61 : LDA 6, 65(0) ; Return address
62 : ST 6, 0(4) ; Store return address into callee frame
63 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
64 : LDA 7, 245(0) ; Call ODD
65 : LD 1, 2(5) ; Load callee result into R1
66 : LDC 2, 5(0) ; Callee frame size
67 : SUB 5, 5, 2 ; Pop back to caller
68 : JEQ 1, 71(0) ; If condition is false, jump to ELSE
69 : LDC 1, 0(0) ; Load boolean-literal into R1
70 : LDA 7, 113(0) ; Skip ELSE block
71 : LD 1, 1(5) ; Load parameter 'n' into R1
72 : ST 1, 4(5) ; Spill left operand at depth 0
73 : LD 1, 1(5) ; Load parameter 'n' into R1
74 : LDA 4, 5(5) ; Recompute callee base from caller size
75 : ST 1, 1(4) ; Store argument 0 in callee frame
76 : LDA 4, 5(5) ; Recompute callee base from caller size
77 : LDA 6, 81(0) ; Return address
78 : ST 6, 0(4) ; Store return address into callee frame
79 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
80 : LDA 7, 176(0) ; Call a
81 : LD 1, 2(5) ; Load callee result into R1
82 : LDC 2, 5(0) ; Callee frame size
83 : SUB 5, 5, 2 ; Pop back to caller
84 : LDA 4, 5(5) ; Recompute callee base from caller size
85 : ST 1, 1(4) ; Store argument 0 in callee frame
86 : LD 1, 1(5) ; Load parameter 'n' into R1
87 : LDA 4, 5(5) ; Recompute callee base from caller size
88 : ST 1, 1(4) ; Store argument 0 in callee frame
89 : LDA 4, 5(5) ; Recompute callee base from caller size
90 : LDA 6, 94(0) ; Return address
91 : ST 6, 0(4) ; Store return address into callee frame
92 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
93 : LDA 7, 132(0) ; Call b
94 : LD 1, 2(5) ; Load callee result into R1
95 : LDC 2, 4(0) ; Callee frame size
96 : SUB 5, 5, 2 ; Pop back to caller
97 : LDA 4, 5(5) ; Recompute callee base from caller size
98 : ST 1, 2(4) ; Store argument 1 in callee frame
99 : LDA 4, 5(5) ; Recompute callee base from caller size
100 : LDA 6, 104(0) ; Return address
101 : ST 6, 0(4) ; Store return address into callee frame
102 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
103 : LDA 7, 116(0) ; Call excellentDiff
104 : LD 1, 3(5) ; Load callee result into R1
105 : LDC 2, 6(0) ; Callee frame size
106 : SUB 5, 5, 2 ; Pop back to caller
107 : LD 2, 4(5) ; Restore left operand from depth 0
108 : SUB 1, 2, 1 ; left - right for equality check
109 : JEQ 1, 2(7) ; If R1 == 0, jump to true
110 : LDC 1, 0(0) ; false
111 : LDA 7, 1(7) ; skip setting true
112 : LDC 1, 1(0) ; true
113 : ST 1, 3(5) ; Store function result into frame return slot
114 : LD 6, 0(5) ; Load return address
115 : LDA 7, 0(6) ; Return to caller
116 : LD 1, 2(5) ; Load parameter 'b' into R1
117 : ST 1, 4(5) ; Spill left operand at depth 0
118 : LD 1, 2(5) ; Load parameter 'b' into R1
119 : LD 2, 4(5) ; Restore left operand from depth 0
120 : MUL 1, 2, 1 ; R1 = left * right
121 : ST 1, 4(5) ; Spill left operand at depth 0
122 : LD 1, 1(5) ; Load parameter 'a' into R1
123 : ST 1, 5(5) ; Spill left operand at depth 1
124 : LD 1, 1(5) ; Load parameter 'a' into R1
125 : LD 2, 5(5) ; Restore left operand from depth 1
126 : MUL 1, 2, 1 ; R1 = left * right
127 : LD 2, 4(5) ; Restore left operand from depth 0
128 : SUB 1, 2, 1 ; R1 = left - right
129 : ST 1, 3(5) ; Store function result into frame return slot
130 : LD 6, 0(5) ; Load return address
131 : LDA 7, 0(6) ; Return to caller
132 : LD 1, 1(5) ; Load parameter 'n' into R1
133 : LDA 4, 4(5) ; Recompute callee base from caller size
134 : ST 1, 1(4) ; Store argument 0 in callee frame
135 : LDC 1, 10(0) ; Load integer-literal into R1
136 : LDA 4, 4(5) ; Recompute callee base from caller size
137 : ST 1, 1(4) ; Store argument 0 in callee frame
138 : LD 1, 1(5) ; Load parameter 'n' into R1
139 : LDA 4, 4(5) ; Recompute callee base from caller size
140 : ST 1, 1(4) ; Store argument 0 in callee frame
141 : LDA 4, 4(5) ; Recompute callee base from caller size
142 : LDA 6, 146(0) ; Return address
143 : ST 6, 0(4) ; Store return address into callee frame
144 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
145 : LDA 7, 211(0) ; Call length
146 : LD 1, 2(5) ; Load callee result into R1
147 : LDC 2, 5(0) ; Callee frame size
148 : SUB 5, 5, 2 ; Pop back to caller
149 : ST 1, 3(5) ; Spill left operand at depth 0
150 : LDC 1, 2(0) ; Load integer-literal into R1
151 : LD 2, 3(5) ; Restore left operand from depth 0
152 : DIV 1, 2, 1 ; R1 = left / right
153 : LDA 4, 4(5) ; Recompute callee base from caller size
154 : ST 1, 2(4) ; Store argument 1 in callee frame
155 : LDA 4, 4(5) ; Recompute callee base from caller size
156 : LDA 6, 160(0) ; Return address
157 : ST 6, 0(4) ; Store return address into callee frame
158 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
159 : LDA 7, 288(0) ; Call EXP
160 : LD 1, 3(5) ; Load callee result into R1
161 : LDC 2, 6(0) ; Callee frame size
162 : SUB 5, 5, 2 ; Pop back to caller
163 : LDA 4, 4(5) ; Recompute callee base from caller size
164 : ST 1, 2(4) ; Store argument 1 in callee frame
165 : LDA 4, 4(5) ; Recompute callee base from caller size
166 : LDA 6, 170(0) ; Return address
167 : ST 6, 0(4) ; Store return address into callee frame
168 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
169 : LDA 7, 325(0) ; Call MOD
170 : LD 1, 3(5) ; Load callee result into R1
171 : LDC 2, 7(0) ; Callee frame size
172 : SUB 5, 5, 2 ; Pop back to caller
173 : ST 1, 2(5) ; Store function result into frame return slot
174 : LD 6, 0(5) ; Load return address
175 : LDA 7, 0(6) ; Return to caller
176 : LD 1, 1(5) ; Load parameter 'n' into R1
177 : ST 1, 3(5) ; Spill left operand at depth 0
178 : LDC 1, 10(0) ; Load integer-literal into R1
179 : LDA 4, 5(5) ; Recompute callee base from caller size
180 : ST 1, 1(4) ; Store argument 0 in callee frame
181 : LD 1, 1(5) ; Load parameter 'n' into R1
182 : LDA 4, 5(5) ; Recompute callee base from caller size
183 : ST 1, 1(4) ; Store argument 0 in callee frame
184 : LDA 4, 5(5) ; Recompute callee base from caller size
185 : LDA 6, 189(0) ; Return address
186 : ST 6, 0(4) ; Store return address into callee frame
187 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
188 : LDA 7, 211(0) ; Call length
189 : LD 1, 2(5) ; Load callee result into R1
190 : LDC 2, 5(0) ; Callee frame size
191 : SUB 5, 5, 2 ; Pop back to caller
192 : ST 1, 4(5) ; Spill left operand at depth 1
193 : LDC 1, 2(0) ; Load integer-literal into R1
194 : LD 2, 4(5) ; Restore left operand from depth 1
195 : DIV 1, 2, 1 ; R1 = left / right
196 : LDA 4, 5(5) ; Recompute callee base from caller size
197 : ST 1, 2(4) ; Store argument 1 in callee frame
198 : LDA 4, 5(5) ; Recompute callee base from caller size
199 : LDA 6, 203(0) ; Return address
200 : ST 6, 0(4) ; Store return address into callee frame
201 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
202 : LDA 7, 288(0) ; Call EXP
203 : LD 1, 3(5) ; Load callee result into R1
204 : LDC 2, 6(0) ; Callee frame size
205 : SUB 5, 5, 2 ; Pop back to caller
206 : LD 2, 3(5) ; Restore left operand from depth 0
207 : DIV 1, 2, 1 ; R1 = left / right
208 : ST 1, 2(5) ; Store function result into frame return slot
209 : LD 6, 0(5) ; Load return address
210 : LDA 7, 0(6) ; Return to caller
211 : LD 1, 1(5) ; Load parameter 'n' into R1
212 : ST 1, 3(5) ; Spill left operand at depth 0
213 : LDC 1, 10(0) ; Load integer-literal into R1
214 : LD 2, 3(5) ; Restore left operand from depth 0
215 : SUB 1, 2, 1 ; left - right for less-than check
216 : JLT 1, 2(7) ; If R1 < 0, jump to true
217 : LDC 1, 0(0) ; false
218 : LDA 7, 1(7) ; skip setting true
219 : LDC 1, 1(0) ; true
220 : JEQ 1, 223(0) ; If condition is false, jump to ELSE
221 : LDC 1, 1(0) ; Load integer-literal into R1
222 : LDA 7, 242(0) ; Skip ELSE block
223 : LDC 1, 1(0) ; Load integer-literal into R1
224 : ST 1, 3(5) ; Spill left operand at depth 0
225 : LD 1, 1(5) ; Load parameter 'n' into R1
226 : ST 1, 4(5) ; Spill left operand at depth 1
227 : LDC 1, 10(0) ; Load integer-literal into R1
228 : LD 2, 4(5) ; Restore left operand from depth 1
229 : DIV 1, 2, 1 ; R1 = left / right
230 : LDA 4, 5(5) ; Recompute callee base from caller size
231 : ST 1, 1(4) ; Store argument 0 in callee frame
232 : LDA 4, 5(5) ; Recompute callee base from caller size
233 : LDA 6, 237(0) ; Return address
234 : ST 6, 0(4) ; Store return address into callee frame
235 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
236 : LDA 7, 211(0) ; Call length
237 : LD 1, 2(5) ; Load callee result into R1
238 : LDC 2, 5(0) ; Callee frame size
239 : SUB 5, 5, 2 ; Pop back to caller
240 : LD 2, 3(5) ; Restore left operand from depth 0
241 : ADD 1, 2, 1 ; R1 = left + right
242 : ST 1, 2(5) ; Store function result into frame return slot
243 : LD 6, 0(5) ; Load return address
244 : LDA 7, 0(6) ; Return to caller
245 : LDC 1, 0(0) ; Load integer-literal into R1
246 : ST 1, 3(5) ; Spill left operand at depth 0
247 : LD 1, 1(5) ; Load parameter 'n' into R1
248 : LD 2, 3(5) ; Restore left operand from depth 0
249 : SUB 1, 2, 1 ; left - right for less-than check
250 : JLT 1, 2(7) ; If R1 < 0, jump to true
251 : LDC 1, 0(0) ; false
252 : LDA 7, 1(7) ; skip setting true
253 : LDC 1, 1(0) ; true
254 : JEQ 1, 273(0) ; If condition is false, jump to ELSE
255 : LDC 1, 2(0) ; Load integer-literal into R1
256 : ST 1, 3(5) ; Spill left operand at depth 0
257 : LD 1, 1(5) ; Load parameter 'n' into R1
258 : ST 1, 4(5) ; Spill left operand at depth 1
259 : LDC 1, 2(0) ; Load integer-literal into R1
260 : LD 2, 4(5) ; Restore left operand from depth 1
261 : DIV 1, 2, 1 ; R1 = left / right
262 : LD 2, 3(5) ; Restore left operand from depth 0
263 : MUL 1, 2, 1 ; R1 = left * right
264 : ST 1, 3(5) ; Spill left operand at depth 0
265 : LD 1, 1(5) ; Load parameter 'n' into R1
266 : LD 2, 3(5) ; Restore left operand from depth 0
267 : SUB 1, 2, 1 ; left - right for less-than check
268 : JLT 1, 2(7) ; If R1 < 0, jump to true
269 : LDC 1, 0(0) ; false
270 : LDA 7, 1(7) ; skip setting true
271 : LDC 1, 1(0) ; true
272 : LDA 7, 285(0) ; Skip ELSE block
273 : LD 1, 1(5) ; Load parameter 'n' into R1
274 : SUB 1, 0, 1 ; Negate value in R1
275 : LDA 4, 5(5) ; Recompute callee base from caller size
276 : ST 1, 1(4) ; Store argument 0 in callee frame
277 : LDA 4, 5(5) ; Recompute callee base from caller size
278 : LDA 6, 282(0) ; Return address
279 : ST 6, 0(4) ; Store return address into callee frame
280 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
281 : LDA 7, 245(0) ; Call ODD
282 : LD 1, 2(5) ; Load callee result into R1
283 : LDC 2, 5(0) ; Callee frame size
284 : SUB 5, 5, 2 ; Pop back to caller
285 : ST 1, 2(5) ; Store function result into frame return slot
286 : LD 6, 0(5) ; Load return address
287 : LDA 7, 0(6) ; Return to caller
288 : LD 1, 2(5) ; Load parameter 'n' into R1
289 : ST 1, 4(5) ; Spill left operand at depth 0
290 : LDC 1, 0(0) ; Load integer-literal into R1
291 : LD 2, 4(5) ; Restore left operand from depth 0
292 : SUB 1, 2, 1 ; left - right for equality check
293 : JEQ 1, 2(7) ; If R1 == 0, jump to true
294 : LDC 1, 0(0) ; false
295 : LDA 7, 1(7) ; skip setting true
296 : LDC 1, 1(0) ; true
297 : JEQ 1, 300(0) ; If condition is false, jump to ELSE
298 : LDC 1, 1(0) ; Load integer-literal into R1
299 : LDA 7, 322(0) ; Skip ELSE block
300 : LD 1, 1(5) ; Load parameter 'm' into R1
301 : ST 1, 4(5) ; Spill left operand at depth 0
302 : LD 1, 1(5) ; Load parameter 'm' into R1
303 : LDA 4, 6(5) ; Recompute callee base from caller size
304 : ST 1, 1(4) ; Store argument 0 in callee frame
305 : LD 1, 2(5) ; Load parameter 'n' into R1
306 : ST 1, 5(5) ; Spill left operand at depth 1
307 : LDC 1, 1(0) ; Load integer-literal into R1
308 : LD 2, 5(5) ; Restore left operand from depth 1
309 : SUB 1, 2, 1 ; R1 = left - right
310 : LDA 4, 6(5) ; Recompute callee base from caller size
311 : ST 1, 2(4) ; Store argument 1 in callee frame
312 : LDA 4, 6(5) ; Recompute callee base from caller size
313 : LDA 6, 317(0) ; Return address
314 : ST 6, 0(4) ; Store return address into callee frame
315 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
316 : LDA 7, 288(0) ; Call EXP
317 : LD 1, 3(5) ; Load callee result into R1
318 : LDC 2, 6(0) ; Callee frame size
319 : SUB 5, 5, 2 ; Pop back to caller
320 : LD 2, 4(5) ; Restore left operand from depth 0
321 : MUL 1, 2, 1 ; R1 = left * right
322 : ST 1, 3(5) ; Store function result into frame return slot
323 : LD 6, 0(5) ; Load return address
324 : LDA 7, 0(6) ; Return to caller
325 : LD 1, 1(5) ; Load parameter 'm' into R1
326 : ST 1, 4(5) ; Spill left operand at depth 0
327 : LD 1, 2(5) ; Load parameter 'n' into R1
328 : ST 1, 5(5) ; Spill left operand at depth 1
329 : LD 1, 1(5) ; Load parameter 'm' into R1
330 : ST 1, 6(5) ; Spill left operand at depth 2
331 : LD 1, 2(5) ; Load parameter 'n' into R1
332 : LD 2, 6(5) ; Restore left operand from depth 2
333 : DIV 1, 2, 1 ; R1 = left / right
334 : LD 2, 5(5) ; Restore left operand from depth 1
335 : MUL 1, 2, 1 ; R1 = left * right
336 : LD 2, 4(5) ; Restore left operand from depth 0
337 : SUB 1, 2, 1 ; R1 = left - right
338 : ST 1, 3(5) ; Store function result into frame return slot
339 : LD 6, 0(5) ; Load return address
340 : LDA 7, 0(6) ; Return to caller
