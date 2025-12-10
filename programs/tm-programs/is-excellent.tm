0 : LDC 5, 0(0) ; Set DMEM pointer (R5) to main stack frame base
1 : ADD 4, 5, 0 ; Set R4 := R5 (caller base)
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
13 : LDA 4, 3(5) ; Compute future callee base using caller_size
14 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
15 : LDA 4, 3(5) ; Compute future callee base (caller_size)
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
28 : LDA 4, 3(5) ; Compute future callee base using caller_size
29 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
30 : LD 1, 1(5) ; Load parameter 'n' into R1
31 : LDA 4, 5(5) ; Compute future callee base using caller_size
32 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
33 : LDA 4, 5(5) ; Compute future callee base (caller_size)
34 : LDA 6, 38(0) ; Return address
35 : ST 6, 0(4) ; Store return in callee frame
36 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
37 : LDA 7, 207(0) ; Call length
38 : LD 1, 2(5) ; Load callee result into R1
39 : LDC 2, 5(0) ; Callee frame size
40 : SUB 5, 5, 2 ; Pop callee frame
41 : LDA 4, 3(5) ; Compute future callee base using caller_size
42 : ST 1, 2(4) ; Store argument 1 into callee's param slot (future frame)
43 : LDA 4, 3(5) ; Compute future callee base (caller_size)
44 : LDA 6, 48(0) ; Return address
45 : ST 6, 0(4) ; Store return in callee frame
46 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
47 : LDA 7, 54(0) ; Call isExcellentSwitch
48 : LD 1, 3(5) ; Load callee result into R1
49 : LDC 2, 5(0) ; Callee frame size
50 : SUB 5, 5, 2 ; Pop callee frame
51 : ST 1, 2(5) ; Store function result into frame return slot
52 : LD 6, 0(5) ; Load return address
53 : LDA 7, 0(6) ; Return to caller
54 : LDA 4, 5(5) ; Compute future callee base using caller_size
55 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
56 : LDA 4, 5(5) ; Compute future callee base (caller_size)
57 : LDA 6, 61(0) ; Return address
58 : ST 6, 0(4) ; Store return in callee frame
59 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
60 : LDA 7, 241(0) ; Call ODD
61 : LD 1, 2(5) ; Load callee result into R1
62 : LDC 2, 5(0) ; Callee frame size
63 : SUB 5, 5, 2 ; Pop callee frame
64 : JEQ 1, 67(0) ; If condition is false, jump to ELSE
65 : LDC 1, 0(0) ; Load boolean-literal into R1
66 : LDA 7, 109(0) ; Skip ELSE block
67 : LD 1, 1(5) ; Load parameter 'n' into R1
68 : ST 1, 4(5) ; Spill left operand at depth 0
69 : LD 1, 1(5) ; Load parameter 'n' into R1
70 : LDA 4, 6(5) ; Compute future callee base using caller_size
71 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
72 : LDA 4, 6(5) ; Compute future callee base (caller_size)
73 : LDA 6, 77(0) ; Return address
74 : ST 6, 0(4) ; Store return in callee frame
75 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
76 : LDA 7, 172(0) ; Call a
77 : LD 1, 2(5) ; Load callee result into R1
78 : LDC 2, 5(0) ; Callee frame size
79 : SUB 5, 5, 2 ; Pop callee frame
80 : LDA 4, 5(5) ; Compute future callee base using caller_size
81 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
82 : LD 1, 1(5) ; Load parameter 'n' into R1
83 : LDA 4, 6(5) ; Compute future callee base using caller_size
84 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
85 : LDA 4, 6(5) ; Compute future callee base (caller_size)
86 : LDA 6, 90(0) ; Return address
87 : ST 6, 0(4) ; Store return in callee frame
88 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
89 : LDA 7, 128(0) ; Call b
90 : LD 1, 2(5) ; Load callee result into R1
91 : LDC 2, 4(0) ; Callee frame size
92 : SUB 5, 5, 2 ; Pop callee frame
93 : LDA 4, 5(5) ; Compute future callee base using caller_size
94 : ST 1, 2(4) ; Store argument 1 into callee's param slot (future frame)
95 : LDA 4, 5(5) ; Compute future callee base (caller_size)
96 : LDA 6, 100(0) ; Return address
97 : ST 6, 0(4) ; Store return in callee frame
98 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
99 : LDA 7, 112(0) ; Call excellentDiff
100 : LD 1, 3(5) ; Load callee result into R1
101 : LDC 2, 6(0) ; Callee frame size
102 : SUB 5, 5, 2 ; Pop callee frame
103 : LD 2, 4(5) ; Restore left operand from depth 0
104 : SUB 1, 2, 1 ; left - right for equality check
105 : JEQ 1, 2(7) ; If R1 == 0, jump to true
106 : LDC 1, 0(0) ; false
107 : LDA 7, 1(7) ; skip setting true
108 : LDC 1, 1(0) ; true
109 : ST 1, 3(5) ; Store function result into frame return slot
110 : LD 6, 0(5) ; Load return address
111 : LDA 7, 0(6) ; Return to caller
112 : LD 1, 2(5) ; Load parameter 'b' into R1
113 : ST 1, 4(5) ; Spill left operand at depth 0
114 : LD 1, 2(5) ; Load parameter 'b' into R1
115 : LD 2, 4(5) ; Restore left operand from depth 0
116 : MUL 1, 2, 1 ; R1 = left * right
117 : ST 1, 4(5) ; Spill left operand at depth 0
118 : LD 1, 1(5) ; Load parameter 'a' into R1
119 : ST 1, 5(5) ; Spill left operand at depth 1
120 : LD 1, 1(5) ; Load parameter 'a' into R1
121 : LD 2, 5(5) ; Restore left operand from depth 1
122 : MUL 1, 2, 1 ; R1 = left * right
123 : LD 2, 4(5) ; Restore left operand from depth 0
124 : SUB 1, 2, 1 ; R1 = left - right
125 : ST 1, 3(5) ; Store function result into frame return slot
126 : LD 6, 0(5) ; Load return address
127 : LDA 7, 0(6) ; Return to caller
128 : LD 1, 2(5) ; Load parameter 'n' into R1
129 : LDA 4, 4(5) ; Compute future callee base using caller_size
130 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
131 : LDC 1, 10(0) ; Load integer-literal into R1
132 : LDA 4, 7(5) ; Compute future callee base using caller_size
133 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
134 : LD 1, 1(5) ; Load parameter 'n' into R1
135 : LDA 4, 6(5) ; Compute future callee base using caller_size
136 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
137 : LDA 4, 6(5) ; Compute future callee base (caller_size)
138 : LDA 6, 142(0) ; Return address
139 : ST 6, 0(4) ; Store return in callee frame
140 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
141 : LDA 7, 207(0) ; Call length
142 : LD 1, 2(5) ; Load callee result into R1
143 : LDC 2, 5(0) ; Callee frame size
144 : SUB 5, 5, 2 ; Pop callee frame
145 : ST 1, 4(5) ; Spill left operand at depth 0
146 : LDC 1, 2(0) ; Load integer-literal into R1
147 : LD 2, 4(5) ; Restore left operand from depth 0
148 : DIV 1, 2, 1 ; R1 = left / right
149 : LDA 4, 7(5) ; Compute future callee base using caller_size
150 : ST 1, 2(4) ; Store argument 1 into callee's param slot (future frame)
151 : LDA 4, 7(5) ; Compute future callee base (caller_size)
152 : LDA 6, 156(0) ; Return address
153 : ST 6, 0(4) ; Store return in callee frame
154 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
155 : LDA 7, 284(0) ; Call EXP
156 : LD 1, 3(5) ; Load callee result into R1
157 : LDC 2, 6(0) ; Callee frame size
158 : SUB 5, 5, 2 ; Pop callee frame
159 : LDA 4, 4(5) ; Compute future callee base using caller_size
160 : ST 1, 2(4) ; Store argument 1 into callee's param slot (future frame)
161 : LDA 4, 4(5) ; Compute future callee base (caller_size)
162 : LDA 6, 166(0) ; Return address
163 : ST 6, 0(4) ; Store return in callee frame
164 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
165 : LDA 7, 321(0) ; Call MOD
166 : LD 1, 3(5) ; Load callee result into R1
167 : LDC 2, 7(0) ; Callee frame size
168 : SUB 5, 5, 2 ; Pop callee frame
169 : ST 1, 2(5) ; Store function result into frame return slot
170 : LD 6, 0(5) ; Load return address
171 : LDA 7, 0(6) ; Return to caller
172 : LD 1, 1(5) ; Load parameter 'n' into R1
173 : ST 1, 3(5) ; Spill left operand at depth 0
174 : LDC 1, 10(0) ; Load integer-literal into R1
175 : LDA 4, 5(5) ; Compute future callee base using caller_size
176 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
177 : LD 1, 1(5) ; Load parameter 'n' into R1
178 : LDA 4, 6(5) ; Compute future callee base using caller_size
179 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
180 : LDA 4, 6(5) ; Compute future callee base (caller_size)
181 : LDA 6, 185(0) ; Return address
182 : ST 6, 0(4) ; Store return in callee frame
183 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
184 : LDA 7, 207(0) ; Call length
185 : LD 1, 2(5) ; Load callee result into R1
186 : LDC 2, 5(0) ; Callee frame size
187 : SUB 5, 5, 2 ; Pop callee frame
188 : ST 1, 5(5) ; Spill left operand at depth 1
189 : LDC 1, 2(0) ; Load integer-literal into R1
190 : LD 2, 5(5) ; Restore left operand from depth 1
191 : DIV 1, 2, 1 ; R1 = left / right
192 : LDA 4, 5(5) ; Compute future callee base using caller_size
193 : ST 1, 2(4) ; Store argument 1 into callee's param slot (future frame)
194 : LDA 4, 5(5) ; Compute future callee base (caller_size)
195 : LDA 6, 199(0) ; Return address
196 : ST 6, 0(4) ; Store return in callee frame
197 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
198 : LDA 7, 284(0) ; Call EXP
199 : LD 1, 3(5) ; Load callee result into R1
200 : LDC 2, 6(0) ; Callee frame size
201 : SUB 5, 5, 2 ; Pop callee frame
202 : LD 2, 3(5) ; Restore left operand from depth 0
203 : DIV 1, 2, 1 ; R1 = left / right
204 : ST 1, 2(5) ; Store function result into frame return slot
205 : LD 6, 0(5) ; Load return address
206 : LDA 7, 0(6) ; Return to caller
207 : LD 1, 1(5) ; Load parameter 'n' into R1
208 : ST 1, 3(5) ; Spill left operand at depth 0
209 : LDC 1, 10(0) ; Load integer-literal into R1
210 : LD 2, 3(5) ; Restore left operand from depth 0
211 : SUB 1, 2, 1 ; left - right for less-than check
212 : JLT 1, 2(7) ; If R1 < 0, jump to true
213 : LDC 1, 0(0) ; false
214 : LDA 7, 1(7) ; skip setting true
215 : LDC 1, 1(0) ; true
216 : JEQ 1, 219(0) ; If condition is false, jump to ELSE
217 : LDC 1, 1(0) ; Load integer-literal into R1
218 : LDA 7, 238(0) ; Skip ELSE block
219 : LDC 1, 1(0) ; Load integer-literal into R1
220 : ST 1, 3(5) ; Spill left operand at depth 0
221 : LD 1, 1(5) ; Load parameter 'n' into R1
222 : ST 1, 4(5) ; Spill left operand at depth 1
223 : LDC 1, 10(0) ; Load integer-literal into R1
224 : LD 2, 4(5) ; Restore left operand from depth 1
225 : DIV 1, 2, 1 ; R1 = left / right
226 : LDA 4, 5(5) ; Compute future callee base using caller_size
227 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
228 : LDA 4, 5(5) ; Compute future callee base (caller_size)
229 : LDA 6, 233(0) ; Return address
230 : ST 6, 0(4) ; Store return in callee frame
231 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
232 : LDA 7, 207(0) ; Call length
233 : LD 1, 2(5) ; Load callee result into R1
234 : LDC 2, 5(0) ; Callee frame size
235 : SUB 5, 5, 2 ; Pop callee frame
236 : LD 2, 3(5) ; Restore left operand from depth 0
237 : ADD 1, 2, 1 ; R1 = left + right
238 : ST 1, 2(5) ; Store function result into frame return slot
239 : LD 6, 0(5) ; Load return address
240 : LDA 7, 0(6) ; Return to caller
241 : LDC 1, 0(0) ; Load integer-literal into R1
242 : ST 1, 3(5) ; Spill left operand at depth 0
243 : LD 1, 1(5) ; Load parameter 'n' into R1
244 : LD 2, 3(5) ; Restore left operand from depth 0
245 : SUB 1, 2, 1 ; left - right for less-than check
246 : JLT 1, 2(7) ; If R1 < 0, jump to true
247 : LDC 1, 0(0) ; false
248 : LDA 7, 1(7) ; skip setting true
249 : LDC 1, 1(0) ; true
250 : JEQ 1, 269(0) ; If condition is false, jump to ELSE
251 : LDC 1, 2(0) ; Load integer-literal into R1
252 : ST 1, 3(5) ; Spill left operand at depth 0
253 : LD 1, 1(5) ; Load parameter 'n' into R1
254 : ST 1, 4(5) ; Spill left operand at depth 1
255 : LDC 1, 2(0) ; Load integer-literal into R1
256 : LD 2, 4(5) ; Restore left operand from depth 1
257 : DIV 1, 2, 1 ; R1 = left / right
258 : LD 2, 3(5) ; Restore left operand from depth 0
259 : MUL 1, 2, 1 ; R1 = left * right
260 : ST 1, 3(5) ; Spill left operand at depth 0
261 : LD 1, 1(5) ; Load parameter 'n' into R1
262 : LD 2, 3(5) ; Restore left operand from depth 0
263 : SUB 1, 2, 1 ; left - right for less-than check
264 : JLT 1, 2(7) ; If R1 < 0, jump to true
265 : LDC 1, 0(0) ; false
266 : LDA 7, 1(7) ; skip setting true
267 : LDC 1, 1(0) ; true
268 : LDA 7, 281(0) ; Skip ELSE block
269 : LD 1, 1(5) ; Load parameter 'n' into R1
270 : SUB 1, 0, 1 ; Negate value in R1
271 : LDA 4, 5(5) ; Compute future callee base using caller_size
272 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
273 : LDA 4, 5(5) ; Compute future callee base (caller_size)
274 : LDA 6, 278(0) ; Return address
275 : ST 6, 0(4) ; Store return in callee frame
276 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
277 : LDA 7, 241(0) ; Call ODD
278 : LD 1, 2(5) ; Load callee result into R1
279 : LDC 2, 5(0) ; Callee frame size
280 : SUB 5, 5, 2 ; Pop callee frame
281 : ST 1, 2(5) ; Store function result into frame return slot
282 : LD 6, 0(5) ; Load return address
283 : LDA 7, 0(6) ; Return to caller
284 : LD 1, 2(5) ; Load parameter 'n' into R1
285 : ST 1, 4(5) ; Spill left operand at depth 0
286 : LDC 1, 0(0) ; Load integer-literal into R1
287 : LD 2, 4(5) ; Restore left operand from depth 0
288 : SUB 1, 2, 1 ; left - right for equality check
289 : JEQ 1, 2(7) ; If R1 == 0, jump to true
290 : LDC 1, 0(0) ; false
291 : LDA 7, 1(7) ; skip setting true
292 : LDC 1, 1(0) ; true
293 : JEQ 1, 296(0) ; If condition is false, jump to ELSE
294 : LDC 1, 1(0) ; Load integer-literal into R1
295 : LDA 7, 318(0) ; Skip ELSE block
296 : LD 1, 1(5) ; Load parameter 'm' into R1
297 : ST 1, 4(5) ; Spill left operand at depth 0
298 : LD 1, 1(5) ; Load parameter 'm' into R1
299 : LDA 4, 6(5) ; Compute future callee base using caller_size
300 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
301 : LD 1, 2(5) ; Load parameter 'n' into R1
302 : ST 1, 5(5) ; Spill left operand at depth 1
303 : LDC 1, 1(0) ; Load integer-literal into R1
304 : LD 2, 5(5) ; Restore left operand from depth 1
305 : SUB 1, 2, 1 ; R1 = left - right
306 : LDA 4, 6(5) ; Compute future callee base using caller_size
307 : ST 1, 2(4) ; Store argument 1 into callee's param slot (future frame)
308 : LDA 4, 6(5) ; Compute future callee base (caller_size)
309 : LDA 6, 313(0) ; Return address
310 : ST 6, 0(4) ; Store return in callee frame
311 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
312 : LDA 7, 284(0) ; Call EXP
313 : LD 1, 3(5) ; Load callee result into R1
314 : LDC 2, 6(0) ; Callee frame size
315 : SUB 5, 5, 2 ; Pop callee frame
316 : LD 2, 4(5) ; Restore left operand from depth 0
317 : MUL 1, 2, 1 ; R1 = left * right
318 : ST 1, 3(5) ; Store function result into frame return slot
319 : LD 6, 0(5) ; Load return address
320 : LDA 7, 0(6) ; Return to caller
321 : LD 1, 1(5) ; Load parameter 'm' into R1
322 : ST 1, 4(5) ; Spill left operand at depth 0
323 : LD 1, 2(5) ; Load parameter 'n' into R1
324 : ST 1, 5(5) ; Spill left operand at depth 1
325 : LD 1, 1(5) ; Load parameter 'm' into R1
326 : ST 1, 6(5) ; Spill left operand at depth 2
327 : LD 1, 2(5) ; Load parameter 'n' into R1
328 : LD 2, 6(5) ; Restore left operand from depth 2
329 : DIV 1, 2, 1 ; R1 = left / right
330 : LD 2, 5(5) ; Restore left operand from depth 1
331 : MUL 1, 2, 1 ; R1 = left * right
332 : LD 2, 4(5) ; Restore left operand from depth 0
333 : SUB 1, 2, 1 ; R1 = left - right
334 : ST 1, 3(5) ; Store function result into frame return slot
335 : LD 6, 0(5) ; Load return address
336 : LDA 7, 0(6) ; Return to caller
