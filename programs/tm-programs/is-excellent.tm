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
13 : LDA 4, 3(4) ; Recompute callee base from callee size
14 : ST 1, 1(4) ; Store argument 0 in callee
15 : LDA 4, 3(4) ; Recompute callee base from callee size
16 : LDA 6, 20(0) ; Return address
17 : ST 6, 0(4) ; Store return in callee frame
18 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
19 : LDA 7, 27(0) ; Call isExcellent
20 : LD 1, 2(5) ; Load callee result into R1
21 : LDC 2, 3(0) ; Callee frame size
22 : SUB 5, 5, 2 ; Pop callee frame
23 : ST 1, 2(5) ; Store result into caller’s frame
24 : LD 1, 2(5) ; Load main return value into R1
25 : LD 6, 0(5) ; Load main return address
26 : LDA 7, 0(6) ; Return from main
27 : LD 1, 1(5) ; Load parameter 'n' into R1
28 : LDA 4, 3(4) ; Recompute callee base from callee size
29 : ST 1, 1(4) ; Store argument 0 in callee
30 : LD 1, 1(5) ; Load parameter 'n' into R1
31 : LDA 4, 3(4) ; Recompute callee base from callee size
32 : ST 1, 1(4) ; Store argument 0 in callee
33 : LDA 4, 3(4) ; Recompute callee base from callee size
34 : LDA 6, 38(0) ; Return address
35 : ST 6, 0(4) ; Store return in callee frame
36 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
37 : LDA 7, 208(0) ; Call length
38 : LD 1, 2(5) ; Load callee result into R1
39 : LDC 2, 3(0) ; Callee frame size
40 : SUB 5, 5, 2 ; Pop callee frame
41 : LDA 4, 3(4) ; Recompute callee base from callee size
42 : ST 1, 2(4) ; Store argument 1 in callee
43 : LDA 4, 3(4) ; Recompute callee base from callee size
44 : LDA 6, 48(0) ; Return address
45 : ST 6, 0(4) ; Store return in callee frame
46 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
47 : LDA 7, 54(0) ; Call isExcellentSwitch
48 : LD 1, 3(5) ; Load callee result into R1
49 : LDC 2, 3(0) ; Callee frame size
50 : SUB 5, 5, 2 ; Pop callee frame
51 : ST 1, 2(5) ; Store function result into frame return slot
52 : LD 6, 0(5) ; Load return address
53 : LDA 7, 0(6) ; Return to caller
54 : LD 1, 2(5) ; Load parameter 'length' into R1
55 : LDA 4, 5(4) ; Recompute callee base from callee size
56 : ST 1, 1(4) ; Store argument 0 in callee
57 : LDA 4, 5(4) ; Recompute callee base from callee size
58 : LDA 6, 62(0) ; Return address
59 : ST 6, 0(4) ; Store return in callee frame
60 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
61 : LDA 7, 242(0) ; Call ODD
62 : LD 1, 2(5) ; Load callee result into R1
63 : LDC 2, 5(0) ; Callee frame size
64 : SUB 5, 5, 2 ; Pop callee frame
65 : JEQ 1, 68(0) ; If condition is false, jump to ELSE
66 : LDC 1, 0(0) ; Load boolean-literal into R1
67 : LDA 7, 110(0) ; Skip ELSE block
68 : LD 1, 1(5) ; Load parameter 'n' into R1
69 : ST 1, 4(5) ; Spill left operand at depth 0
70 : LD 1, 1(5) ; Load parameter 'n' into R1
71 : LDA 4, 5(4) ; Recompute callee base from callee size
72 : ST 1, 1(4) ; Store argument 0 in callee
73 : LDA 4, 5(4) ; Recompute callee base from callee size
74 : LDA 6, 78(0) ; Return address
75 : ST 6, 0(4) ; Store return in callee frame
76 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
77 : LDA 7, 173(0) ; Call a
78 : LD 1, 2(5) ; Load callee result into R1
79 : LDC 2, 5(0) ; Callee frame size
80 : SUB 5, 5, 2 ; Pop callee frame
81 : LDA 4, 5(4) ; Recompute callee base from callee size
82 : ST 1, 1(4) ; Store argument 0 in callee
83 : LD 1, 1(5) ; Load parameter 'n' into R1
84 : LDA 4, 5(4) ; Recompute callee base from callee size
85 : ST 1, 1(4) ; Store argument 0 in callee
86 : LDA 4, 5(4) ; Recompute callee base from callee size
87 : LDA 6, 91(0) ; Return address
88 : ST 6, 0(4) ; Store return in callee frame
89 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
90 : LDA 7, 129(0) ; Call b
91 : LD 1, 2(5) ; Load callee result into R1
92 : LDC 2, 5(0) ; Callee frame size
93 : SUB 5, 5, 2 ; Pop callee frame
94 : LDA 4, 5(4) ; Recompute callee base from callee size
95 : ST 1, 2(4) ; Store argument 1 in callee
96 : LDA 4, 5(4) ; Recompute callee base from callee size
97 : LDA 6, 101(0) ; Return address
98 : ST 6, 0(4) ; Store return in callee frame
99 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
100 : LDA 7, 113(0) ; Call excellentDiff
101 : LD 1, 3(5) ; Load callee result into R1
102 : LDC 2, 5(0) ; Callee frame size
103 : SUB 5, 5, 2 ; Pop callee frame
104 : LD 2, 4(5) ; Restore left operand from depth 0
105 : SUB 1, 2, 1 ; left - right for equality check
106 : JEQ 1, 2(7) ; If R1 == 0, jump to true
107 : LDC 1, 0(0) ; false
108 : LDA 7, 1(7) ; skip setting true
109 : LDC 1, 1(0) ; true
110 : ST 1, 3(5) ; Store function result into frame return slot
111 : LD 6, 0(5) ; Load return address
112 : LDA 7, 0(6) ; Return to caller
113 : LD 1, 2(5) ; Load parameter 'b' into R1
114 : ST 1, 4(5) ; Spill left operand at depth 0
115 : LD 1, 2(5) ; Load parameter 'b' into R1
116 : LD 2, 4(5) ; Restore left operand from depth 0
117 : MUL 1, 2, 1 ; R1 = left * right
118 : ST 1, 4(5) ; Spill left operand at depth 0
119 : LD 1, 1(5) ; Load parameter 'a' into R1
120 : ST 1, 5(5) ; Spill left operand at depth 1
121 : LD 1, 1(5) ; Load parameter 'a' into R1
122 : LD 2, 5(5) ; Restore left operand from depth 1
123 : MUL 1, 2, 1 ; R1 = left * right
124 : LD 2, 4(5) ; Restore left operand from depth 0
125 : SUB 1, 2, 1 ; R1 = left - right
126 : ST 1, 3(5) ; Store function result into frame return slot
127 : LD 6, 0(5) ; Load return address
128 : LDA 7, 0(6) ; Return to caller
129 : LD 1, 1(5) ; Load parameter 'n' into R1
130 : LDA 4, 4(4) ; Recompute callee base from callee size
131 : ST 1, 1(4) ; Store argument 0 in callee
132 : LDC 1, 10(0) ; Load integer-literal into R1
133 : LDA 4, 4(4) ; Recompute callee base from callee size
134 : ST 1, 1(4) ; Store argument 0 in callee
135 : LD 1, 1(5) ; Load parameter 'n' into R1
136 : LDA 4, 4(4) ; Recompute callee base from callee size
137 : ST 1, 1(4) ; Store argument 0 in callee
138 : LDA 4, 4(4) ; Recompute callee base from callee size
139 : LDA 6, 143(0) ; Return address
140 : ST 6, 0(4) ; Store return in callee frame
141 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
142 : LDA 7, 208(0) ; Call length
143 : LD 1, 2(5) ; Load callee result into R1
144 : LDC 2, 4(0) ; Callee frame size
145 : SUB 5, 5, 2 ; Pop callee frame
146 : ST 1, 3(5) ; Spill left operand at depth 0
147 : LDC 1, 2(0) ; Load integer-literal into R1
148 : LD 2, 3(5) ; Restore left operand from depth 0
149 : DIV 1, 2, 1 ; R1 = left / right
150 : LDA 4, 4(4) ; Recompute callee base from callee size
151 : ST 1, 2(4) ; Store argument 1 in callee
152 : LDA 4, 4(4) ; Recompute callee base from callee size
153 : LDA 6, 157(0) ; Return address
154 : ST 6, 0(4) ; Store return in callee frame
155 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
156 : LDA 7, 285(0) ; Call EXP
157 : LD 1, 3(5) ; Load callee result into R1
158 : LDC 2, 4(0) ; Callee frame size
159 : SUB 5, 5, 2 ; Pop callee frame
160 : LDA 4, 4(4) ; Recompute callee base from callee size
161 : ST 1, 2(4) ; Store argument 1 in callee
162 : LDA 4, 4(4) ; Recompute callee base from callee size
163 : LDA 6, 167(0) ; Return address
164 : ST 6, 0(4) ; Store return in callee frame
165 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
166 : LDA 7, 322(0) ; Call MOD
167 : LD 1, 3(5) ; Load callee result into R1
168 : LDC 2, 4(0) ; Callee frame size
169 : SUB 5, 5, 2 ; Pop callee frame
170 : ST 1, 2(5) ; Store function result into frame return slot
171 : LD 6, 0(5) ; Load return address
172 : LDA 7, 0(6) ; Return to caller
173 : LD 1, 1(5) ; Load parameter 'n' into R1
174 : ST 1, 3(5) ; Spill left operand at depth 0
175 : LDC 1, 10(0) ; Load integer-literal into R1
176 : LDA 4, 5(4) ; Recompute callee base from callee size
177 : ST 1, 1(4) ; Store argument 0 in callee
178 : LD 1, 1(5) ; Load parameter 'n' into R1
179 : LDA 4, 5(4) ; Recompute callee base from callee size
180 : ST 1, 1(4) ; Store argument 0 in callee
181 : LDA 4, 5(4) ; Recompute callee base from callee size
182 : LDA 6, 186(0) ; Return address
183 : ST 6, 0(4) ; Store return in callee frame
184 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
185 : LDA 7, 208(0) ; Call length
186 : LD 1, 2(5) ; Load callee result into R1
187 : LDC 2, 5(0) ; Callee frame size
188 : SUB 5, 5, 2 ; Pop callee frame
189 : ST 1, 4(5) ; Spill left operand at depth 1
190 : LDC 1, 2(0) ; Load integer-literal into R1
191 : LD 2, 4(5) ; Restore left operand from depth 1
192 : DIV 1, 2, 1 ; R1 = left / right
193 : LDA 4, 5(4) ; Recompute callee base from callee size
194 : ST 1, 2(4) ; Store argument 1 in callee
195 : LDA 4, 5(4) ; Recompute callee base from callee size
196 : LDA 6, 200(0) ; Return address
197 : ST 6, 0(4) ; Store return in callee frame
198 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
199 : LDA 7, 285(0) ; Call EXP
200 : LD 1, 3(5) ; Load callee result into R1
201 : LDC 2, 5(0) ; Callee frame size
202 : SUB 5, 5, 2 ; Pop callee frame
203 : LD 2, 3(5) ; Restore left operand from depth 0
204 : DIV 1, 2, 1 ; R1 = left / right
205 : ST 1, 2(5) ; Store function result into frame return slot
206 : LD 6, 0(5) ; Load return address
207 : LDA 7, 0(6) ; Return to caller
208 : LD 1, 1(5) ; Load parameter 'n' into R1
209 : ST 1, 3(5) ; Spill left operand at depth 0
210 : LDC 1, 10(0) ; Load integer-literal into R1
211 : LD 2, 3(5) ; Restore left operand from depth 0
212 : SUB 1, 2, 1 ; left - right for less-than check
213 : JLT 1, 2(7) ; If R1 < 0, jump to true
214 : LDC 1, 0(0) ; false
215 : LDA 7, 1(7) ; skip setting true
216 : LDC 1, 1(0) ; true
217 : JEQ 1, 220(0) ; If condition is false, jump to ELSE
218 : LDC 1, 1(0) ; Load integer-literal into R1
219 : LDA 7, 239(0) ; Skip ELSE block
220 : LDC 1, 1(0) ; Load integer-literal into R1
221 : ST 1, 3(5) ; Spill left operand at depth 0
222 : LD 1, 1(5) ; Load parameter 'n' into R1
223 : ST 1, 4(5) ; Spill left operand at depth 1
224 : LDC 1, 10(0) ; Load integer-literal into R1
225 : LD 2, 4(5) ; Restore left operand from depth 1
226 : DIV 1, 2, 1 ; R1 = left / right
227 : LDA 4, 5(4) ; Recompute callee base from callee size
228 : ST 1, 1(4) ; Store argument 0 in callee
229 : LDA 4, 5(4) ; Recompute callee base from callee size
230 : LDA 6, 234(0) ; Return address
231 : ST 6, 0(4) ; Store return in callee frame
232 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
233 : LDA 7, 208(0) ; Call length
234 : LD 1, 2(5) ; Load callee result into R1
235 : LDC 2, 5(0) ; Callee frame size
236 : SUB 5, 5, 2 ; Pop callee frame
237 : LD 2, 3(5) ; Restore left operand from depth 0
238 : ADD 1, 2, 1 ; R1 = left + right
239 : ST 1, 2(5) ; Store function result into frame return slot
240 : LD 6, 0(5) ; Load return address
241 : LDA 7, 0(6) ; Return to caller
242 : LDC 1, 0(0) ; Load integer-literal into R1
243 : ST 1, 3(5) ; Spill left operand at depth 0
244 : LD 1, 1(5) ; Load parameter 'n' into R1
245 : LD 2, 3(5) ; Restore left operand from depth 0
246 : SUB 1, 2, 1 ; left - right for less-than check
247 : JLT 1, 2(7) ; If R1 < 0, jump to true
248 : LDC 1, 0(0) ; false
249 : LDA 7, 1(7) ; skip setting true
250 : LDC 1, 1(0) ; true
251 : JEQ 1, 270(0) ; If condition is false, jump to ELSE
252 : LDC 1, 2(0) ; Load integer-literal into R1
253 : ST 1, 3(5) ; Spill left operand at depth 0
254 : LD 1, 1(5) ; Load parameter 'n' into R1
255 : ST 1, 4(5) ; Spill left operand at depth 1
256 : LDC 1, 2(0) ; Load integer-literal into R1
257 : LD 2, 4(5) ; Restore left operand from depth 1
258 : DIV 1, 2, 1 ; R1 = left / right
259 : LD 2, 3(5) ; Restore left operand from depth 0
260 : MUL 1, 2, 1 ; R1 = left * right
261 : ST 1, 3(5) ; Spill left operand at depth 0
262 : LD 1, 1(5) ; Load parameter 'n' into R1
263 : LD 2, 3(5) ; Restore left operand from depth 0
264 : SUB 1, 2, 1 ; left - right for less-than check
265 : JLT 1, 2(7) ; If R1 < 0, jump to true
266 : LDC 1, 0(0) ; false
267 : LDA 7, 1(7) ; skip setting true
268 : LDC 1, 1(0) ; true
269 : LDA 7, 282(0) ; Skip ELSE block
270 : LD 1, 1(5) ; Load parameter 'n' into R1
271 : SUB 1, 0, 1 ; Negate value in R1
272 : LDA 4, 5(4) ; Recompute callee base from callee size
273 : ST 1, 1(4) ; Store argument 0 in callee
274 : LDA 4, 5(4) ; Recompute callee base from callee size
275 : LDA 6, 279(0) ; Return address
276 : ST 6, 0(4) ; Store return in callee frame
277 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
278 : LDA 7, 242(0) ; Call ODD
279 : LD 1, 2(5) ; Load callee result into R1
280 : LDC 2, 5(0) ; Callee frame size
281 : SUB 5, 5, 2 ; Pop callee frame
282 : ST 1, 2(5) ; Store function result into frame return slot
283 : LD 6, 0(5) ; Load return address
284 : LDA 7, 0(6) ; Return to caller
285 : LD 1, 2(5) ; Load parameter 'n' into R1
286 : ST 1, 4(5) ; Spill left operand at depth 0
287 : LDC 1, 0(0) ; Load integer-literal into R1
288 : LD 2, 4(5) ; Restore left operand from depth 0
289 : SUB 1, 2, 1 ; left - right for equality check
290 : JEQ 1, 2(7) ; If R1 == 0, jump to true
291 : LDC 1, 0(0) ; false
292 : LDA 7, 1(7) ; skip setting true
293 : LDC 1, 1(0) ; true
294 : JEQ 1, 297(0) ; If condition is false, jump to ELSE
295 : LDC 1, 1(0) ; Load integer-literal into R1
296 : LDA 7, 319(0) ; Skip ELSE block
297 : LD 1, 1(5) ; Load parameter 'm' into R1
298 : ST 1, 4(5) ; Spill left operand at depth 0
299 : LD 1, 1(5) ; Load parameter 'm' into R1
300 : LDA 4, 6(4) ; Recompute callee base from callee size
301 : ST 1, 1(4) ; Store argument 0 in callee
302 : LD 1, 2(5) ; Load parameter 'n' into R1
303 : ST 1, 5(5) ; Spill left operand at depth 1
304 : LDC 1, 1(0) ; Load integer-literal into R1
305 : LD 2, 5(5) ; Restore left operand from depth 1
306 : SUB 1, 2, 1 ; R1 = left - right
307 : LDA 4, 6(4) ; Recompute callee base from callee size
308 : ST 1, 2(4) ; Store argument 1 in callee
309 : LDA 4, 6(4) ; Recompute callee base from callee size
310 : LDA 6, 314(0) ; Return address
311 : ST 6, 0(4) ; Store return in callee frame
312 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
313 : LDA 7, 285(0) ; Call EXP
314 : LD 1, 3(5) ; Load callee result into R1
315 : LDC 2, 6(0) ; Callee frame size
316 : SUB 5, 5, 2 ; Pop callee frame
317 : LD 2, 4(5) ; Restore left operand from depth 0
318 : MUL 1, 2, 1 ; R1 = left * right
319 : ST 1, 3(5) ; Store function result into frame return slot
320 : LD 6, 0(5) ; Load return address
321 : LDA 7, 0(6) ; Return to caller
322 : LD 1, 1(5) ; Load parameter 'm' into R1
323 : ST 1, 4(5) ; Spill left operand at depth 0
324 : LD 1, 2(5) ; Load parameter 'n' into R1
325 : ST 1, 5(5) ; Spill left operand at depth 1
326 : LD 1, 1(5) ; Load parameter 'm' into R1
327 : ST 1, 6(5) ; Spill left operand at depth 2
328 : LD 1, 2(5) ; Load parameter 'n' into R1
329 : LD 2, 6(5) ; Restore left operand from depth 2
330 : DIV 1, 2, 1 ; R1 = left / right
331 : LD 2, 5(5) ; Restore left operand from depth 1
332 : MUL 1, 2, 1 ; R1 = left * right
333 : LD 2, 4(5) ; Restore left operand from depth 0
334 : SUB 1, 2, 1 ; R1 = left - right
335 : ST 1, 3(5) ; Store function result into frame return slot
336 : LD 6, 0(5) ; Load return address
337 : LDA 7, 0(6) ; Return to caller
