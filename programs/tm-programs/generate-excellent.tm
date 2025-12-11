0 : LDC 5, 2(0) ; Set DMEM pointer (R5) to main stack frame base
1 : LDC 2, 4(0) ; Main frame size
2 : ADD 4, 5, 2 ; Initialize stack-top (R4) to end of main frame
3 : LD 2, 1(0) ; Load CLI arg 1 into R2
4 : ST 2, 1(5) ; Store arg 1 into main frame parameter slot
5 : LDA 6, 2(7) ; Calculate return address (PC + 2)
6 : ST 6, 0(5) ; Store return address in main frame
7 : LDA 7, 13(0) ; Branch to main function
8 : OUT 1, 0, 0 ; Return/print result from main in R1
9 : HALT 0, 0, 0 ; Terminate program
10 : OUT 1, 0, 0 ; Hardcoded print: output R1
11 : LD 6, 0(5) ; Load return address from current frame
12 : LDA 7, 0(6) ; Jump back to caller
13 : LDC 1, 10(0) ; Load integer-literal into R1
14 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
15 : ST 1, 1(2) ; Store argument 0 in callee
16 : LD 1, 1(5) ; Load parameter 'length' into R1
17 : ST 1, 3(5) ; Spill left operand at depth 0
18 : LDC 1, 2(0) ; Load integer-literal into R1
19 : LD 2, 3(5) ; Restore left operand from depth 0
20 : DIV 1, 2, 1 ; R1 = left / right
21 : ST 1, 3(5) ; Spill left operand at depth 0
22 : LDC 1, 1(0) ; Load integer-literal into R1
23 : LD 2, 3(5) ; Restore left operand from depth 0
24 : SUB 1, 2, 1 ; R1 = left - right
25 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
26 : ST 1, 2(2) ; Store argument 1 in callee
27 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
28 : LDA 6, 34(0) ; Return address
29 : ST 6, 0(2) ; Store return in callee frame
30 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
31 : LDC 3, 6(0) ; Callee frame size
32 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
33 : LDA 7, 1007(0) ; Call EXP
34 : LD 1, 3(5) ; Load callee result into R1
35 : LDC 2, 6(0) ; Callee frame size
36 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
37 : LDC 3, 4(0) ; Caller frame size
38 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
39 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
40 : ST 1, 1(2) ; Store argument 0 in callee
41 : LD 1, 1(5) ; Load parameter 'length' into R1
42 : ST 1, 3(5) ; Spill left operand at depth 0
43 : LDC 1, 2(0) ; Load integer-literal into R1
44 : LD 2, 3(5) ; Restore left operand from depth 0
45 : DIV 1, 2, 1 ; R1 = left / right
46 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
47 : ST 1, 2(2) ; Store argument 1 in callee
48 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
49 : LDA 6, 55(0) ; Return address
50 : ST 6, 0(2) ; Store return in callee frame
51 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
52 : LDC 3, 5(0) ; Callee frame size
53 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
54 : LDA 7, 64(0) ; Call createLoop
55 : LD 1, 3(5) ; Load callee result into R1
56 : LDC 2, 5(0) ; Callee frame size
57 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
58 : LDC 3, 4(0) ; Caller frame size
59 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
60 : ST 1, 2(5) ; Store result into caller’s frame
61 : LD 1, 2(5) ; Load main return value into R1
62 : LD 6, 0(5) ; Load main return address
63 : LDA 7, 0(6) ; Return from main
64 : LD 1, 1(5) ; Load parameter 'a' into R1
65 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
66 : ST 1, 1(2) ; Store argument 0 in callee
67 : LD 1, 2(5) ; Load parameter 'n' into R1
68 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
69 : ST 1, 2(2) ; Store argument 1 in callee
70 : LDC 1, 10(0) ; Load integer-literal into R1
71 : ST 1, 4(5) ; Spill left operand at depth 0
72 : LD 1, 1(5) ; Load parameter 'a' into R1
73 : LD 2, 4(5) ; Restore left operand from depth 0
74 : MUL 1, 2, 1 ; R1 = left * right
75 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
76 : ST 1, 3(2) ; Store argument 2 in callee
77 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
78 : LDA 6, 84(0) ; Return address
79 : ST 6, 0(2) ; Store return in callee frame
80 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
81 : LDC 3, 7(0) ; Callee frame size
82 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
83 : LDA 7, 92(0) ; Call aLoop
84 : LD 1, 4(5) ; Load callee result into R1
85 : LDC 2, 7(0) ; Callee frame size
86 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
87 : LDC 3, 5(0) ; Caller frame size
88 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
89 : ST 1, 3(5) ; Store function result into frame return slot
90 : LD 6, 0(5) ; Load return address
91 : LDA 7, 0(6) ; Return to caller
92 : LD 1, 1(5) ; Load parameter 'a' into R1
93 : ST 1, 5(5) ; Spill left operand at depth 0
94 : LD 1, 3(5) ; Load parameter 'upper' into R1
95 : LD 2, 5(5) ; Restore left operand from depth 0
96 : SUB 1, 2, 1 ; left - right for less-than check
97 : JLT 1, 2(7) ; If R1 < 0, jump to true
98 : LDC 1, 0(0) ; false
99 : LDA 7, 1(7) ; skip setting true
100 : LDC 1, 1(0) ; true
101 : JEQ 1, 181(0) ; If condition is false, jump to ELSE
102 : LD 1, 1(5) ; Load parameter 'a' into R1
103 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
104 : ST 1, 1(2) ; Store argument 0 in callee
105 : LD 1, 2(5) ; Load parameter 'n' into R1
106 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
107 : ST 1, 2(2) ; Store argument 1 in callee
108 : LD 1, 3(5) ; Load parameter 'upper' into R1
109 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
110 : ST 1, 3(2) ; Store argument 2 in callee
111 : LDC 1, 4(0) ; Load integer-literal into R1
112 : ST 1, 5(5) ; Spill left operand at depth 0
113 : LD 1, 1(5) ; Load parameter 'a' into R1
114 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
115 : ST 1, 1(2) ; Store argument 0 in callee
116 : LDC 1, 2(0) ; Load integer-literal into R1
117 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
118 : ST 1, 2(2) ; Store argument 1 in callee
119 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
120 : LDA 6, 126(0) ; Return address
121 : ST 6, 0(2) ; Store return in callee frame
122 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
123 : LDC 3, 6(0) ; Callee frame size
124 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
125 : LDA 7, 1007(0) ; Call EXP
126 : LD 1, 3(5) ; Load callee result into R1
127 : LDC 2, 6(0) ; Callee frame size
128 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
129 : LDC 3, 7(0) ; Caller frame size
130 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
131 : LD 2, 5(5) ; Restore left operand from depth 0
132 : MUL 1, 2, 1 ; R1 = left * right
133 : ST 1, 5(5) ; Spill left operand at depth 0
134 : LDC 1, 4(0) ; Load integer-literal into R1
135 : ST 1, 6(5) ; Spill left operand at depth 1
136 : LDC 1, 10(0) ; Load integer-literal into R1
137 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
138 : ST 1, 1(2) ; Store argument 0 in callee
139 : LD 1, 2(5) ; Load parameter 'n' into R1
140 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
141 : ST 1, 2(2) ; Store argument 1 in callee
142 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
143 : LDA 6, 149(0) ; Return address
144 : ST 6, 0(2) ; Store return in callee frame
145 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
146 : LDC 3, 6(0) ; Callee frame size
147 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
148 : LDA 7, 1007(0) ; Call EXP
149 : LD 1, 3(5) ; Load callee result into R1
150 : LDC 2, 6(0) ; Callee frame size
151 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
152 : LDC 3, 7(0) ; Caller frame size
153 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
154 : LD 2, 6(5) ; Restore left operand from depth 1
155 : MUL 1, 2, 1 ; R1 = left * right
156 : ST 1, 6(5) ; Spill left operand at depth 1
157 : LD 1, 1(5) ; Load parameter 'a' into R1
158 : LD 2, 6(5) ; Restore left operand from depth 1
159 : MUL 1, 2, 1 ; R1 = left * right
160 : LD 2, 5(5) ; Restore left operand from depth 0
161 : ADD 1, 2, 1 ; R1 = left + right
162 : ST 1, 5(5) ; Spill left operand at depth 0
163 : LDC 1, 1(0) ; Load integer-literal into R1
164 : LD 2, 5(5) ; Restore left operand from depth 0
165 : ADD 1, 2, 1 ; R1 = left + right
166 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
167 : ST 1, 4(2) ; Store argument 3 in callee
168 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
169 : LDA 6, 175(0) ; Return address
170 : ST 6, 0(2) ; Store return in callee frame
171 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
172 : LDC 3, 6(0) ; Callee frame size
173 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
174 : LDA 7, 185(0) ; Call aLoop1
175 : LD 1, 5(5) ; Load callee result into R1
176 : LDC 2, 6(0) ; Callee frame size
177 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
178 : LDC 3, 7(0) ; Caller frame size
179 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
180 : LDA 7, 182(0) ; Skip ELSE block
181 : LDC 1, 1(0) ; Load boolean-literal into R1
182 : ST 1, 4(5) ; Store function result into frame return slot
183 : LD 6, 0(5) ; Load return address
184 : LDA 7, 0(6) ; Return to caller
185 : LD 1, 1(5) ; Load parameter 'a' into R1
186 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
187 : ST 1, 1(2) ; Store argument 0 in callee
188 : LD 1, 2(5) ; Load parameter 'n' into R1
189 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
190 : ST 1, 2(2) ; Store argument 1 in callee
191 : LD 1, 3(5) ; Load parameter 'upper' into R1
192 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
193 : ST 1, 3(2) ; Store argument 2 in callee
194 : LD 1, 4(5) ; Load parameter 'det' into R1
195 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
196 : ST 1, 4(2) ; Store argument 3 in callee
197 : LD 1, 4(5) ; Load parameter 'det' into R1
198 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
199 : ST 1, 1(2) ; Store argument 0 in callee
200 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
201 : LDA 6, 207(0) ; Return address
202 : ST 6, 0(2) ; Store return in callee frame
203 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
204 : LDC 3, 3(0) ; Callee frame size
205 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
206 : LDA 7, 912(0) ; Call SQRT
207 : LD 1, 2(5) ; Load callee result into R1
208 : LDC 2, 3(0) ; Callee frame size
209 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
210 : LDC 3, 6(0) ; Caller frame size
211 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
212 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
213 : ST 1, 5(2) ; Store argument 4 in callee
214 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
215 : LDA 6, 221(0) ; Return address
216 : ST 6, 0(2) ; Store return in callee frame
217 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
218 : LDC 3, 9(0) ; Callee frame size
219 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
220 : LDA 7, 229(0) ; Call aLoop2
221 : LD 1, 6(5) ; Load callee result into R1
222 : LDC 2, 9(0) ; Callee frame size
223 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
224 : LDC 3, 6(0) ; Caller frame size
225 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
226 : ST 1, 5(5) ; Store function result into frame return slot
227 : LD 6, 0(5) ; Load return address
228 : LDA 7, 0(6) ; Return to caller
229 : LD 1, 1(5) ; Load parameter 'a' into R1
230 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
231 : ST 1, 1(2) ; Store argument 0 in callee
232 : LD 1, 2(5) ; Load parameter 'n' into R1
233 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
234 : ST 1, 2(2) ; Store argument 1 in callee
235 : LD 1, 3(5) ; Load parameter 'upper' into R1
236 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
237 : ST 1, 3(2) ; Store argument 2 in callee
238 : LD 1, 4(5) ; Load parameter 'det' into R1
239 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
240 : ST 1, 4(2) ; Store argument 3 in callee
241 : LD 1, 5(5) ; Load parameter 'root' into R1
242 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
243 : ST 1, 5(2) ; Store argument 4 in callee
244 : LD 1, 1(5) ; Load parameter 'a' into R1
245 : ST 1, 7(5) ; Spill left operand at depth 0
246 : LDC 1, 10(0) ; Load integer-literal into R1
247 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
248 : ST 1, 1(2) ; Store argument 0 in callee
249 : LD 1, 2(5) ; Load parameter 'n' into R1
250 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
251 : ST 1, 2(2) ; Store argument 1 in callee
252 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
253 : LDA 6, 259(0) ; Return address
254 : ST 6, 0(2) ; Store return in callee frame
255 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
256 : LDC 3, 6(0) ; Callee frame size
257 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
258 : LDA 7, 1007(0) ; Call EXP
259 : LD 1, 3(5) ; Load callee result into R1
260 : LDC 2, 6(0) ; Callee frame size
261 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
262 : LDC 3, 9(0) ; Caller frame size
263 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
264 : LD 2, 7(5) ; Restore left operand from depth 0
265 : MUL 1, 2, 1 ; R1 = left * right
266 : ST 1, 7(5) ; Spill left operand at depth 0
267 : LD 1, 5(5) ; Load parameter 'root' into R1
268 : ST 1, 8(5) ; Spill left operand at depth 1
269 : LDC 1, 1(0) ; Load integer-literal into R1
270 : LD 2, 8(5) ; Restore left operand from depth 1
271 : ADD 1, 2, 1 ; R1 = left + right
272 : ST 1, 8(5) ; Spill left operand at depth 1
273 : LDC 1, 2(0) ; Load integer-literal into R1
274 : LD 2, 8(5) ; Restore left operand from depth 1
275 : DIV 1, 2, 1 ; R1 = left / right
276 : LD 2, 7(5) ; Restore left operand from depth 0
277 : ADD 1, 2, 1 ; R1 = left + right
278 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
279 : ST 1, 6(2) ; Store argument 5 in callee
280 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
281 : LDA 6, 287(0) ; Return address
282 : ST 6, 0(2) ; Store return in callee frame
283 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
284 : LDC 3, 10(0) ; Callee frame size
285 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
286 : LDA 7, 295(0) ; Call aLoop3
287 : LD 1, 7(5) ; Load callee result into R1
288 : LDC 2, 10(0) ; Callee frame size
289 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
290 : LDC 3, 9(0) ; Caller frame size
291 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
292 : ST 1, 6(5) ; Store function result into frame return slot
293 : LD 6, 0(5) ; Load return address
294 : LDA 7, 0(6) ; Return to caller
295 : LD 1, 5(5) ; Load parameter 'root' into R1
296 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
297 : ST 1, 1(2) ; Store argument 0 in callee
298 : LD 1, 4(5) ; Load parameter 'det' into R1
299 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
300 : ST 1, 2(2) ; Store argument 1 in callee
301 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
302 : LDA 6, 308(0) ; Return address
303 : ST 6, 0(2) ; Store return in callee frame
304 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
305 : LDC 3, 6(0) ; Callee frame size
306 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
307 : LDA 7, 710(0) ; Call ISROOT
308 : LD 1, 3(5) ; Load callee result into R1
309 : LDC 2, 6(0) ; Callee frame size
310 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
311 : LDC 3, 10(0) ; Caller frame size
312 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
313 : ST 1, 8(5) ; Spill left operand at depth 0
314 : LD 1, 5(5) ; Load parameter 'root' into R1
315 : ST 1, 9(5) ; Spill left operand at depth 1
316 : LDC 1, 1(0) ; Load integer-literal into R1
317 : LD 2, 9(5) ; Restore left operand from depth 1
318 : ADD 1, 2, 1 ; R1 = left + right
319 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
320 : ST 1, 1(2) ; Store argument 0 in callee
321 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
322 : LDA 6, 328(0) ; Return address
323 : ST 6, 0(2) ; Store return in callee frame
324 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
325 : LDC 3, 6(0) ; Callee frame size
326 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
327 : LDA 7, 726(0) ; Call EVEN
328 : LD 1, 2(5) ; Load callee result into R1
329 : LDC 2, 6(0) ; Callee frame size
330 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
331 : LDC 3, 10(0) ; Caller frame size
332 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
333 : LD 2, 8(5) ; Restore left operand from depth 0
334 : MUL 1, 2, 1 ; R1 = left AND right
335 : ST 1, 8(5) ; Spill left operand at depth 0
336 : LD 1, 6(5) ; Load parameter 'candidate' into R1
337 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
338 : ST 1, 1(2) ; Store argument 0 in callee
339 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
340 : LDA 6, 346(0) ; Return address
341 : ST 6, 0(2) ; Store return in callee frame
342 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
343 : LDC 3, 3(0) ; Callee frame size
344 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
345 : LDA 7, 447(0) ; Call isExcellent
346 : LD 1, 2(5) ; Load callee result into R1
347 : LDC 2, 3(0) ; Callee frame size
348 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
349 : LDC 3, 10(0) ; Caller frame size
350 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
351 : LD 2, 8(5) ; Restore left operand from depth 0
352 : MUL 1, 2, 1 ; R1 = left AND right
353 : JEQ 1, 379(0) ; If condition is false, jump to ELSE
354 : LD 1, 1(5) ; Load parameter 'a' into R1
355 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
356 : ST 1, 1(2) ; Store argument 0 in callee
357 : LD 1, 2(5) ; Load parameter 'n' into R1
358 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
359 : ST 1, 2(2) ; Store argument 1 in callee
360 : LD 1, 3(5) ; Load parameter 'upper' into R1
361 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
362 : ST 1, 3(2) ; Store argument 2 in callee
363 : LD 1, 6(5) ; Load parameter 'candidate' into R1
364 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
365 : ST 1, 4(2) ; Store argument 3 in callee
366 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
367 : LDA 6, 373(0) ; Return address
368 : ST 6, 0(2) ; Store return in callee frame
369 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
370 : LDC 3, 7(0) ; Callee frame size
371 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
372 : LDA 7, 407(0) ; Call printCandidateAndContinue
373 : LD 1, 5(5) ; Load callee result into R1
374 : LDC 2, 7(0) ; Callee frame size
375 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
376 : LDC 3, 10(0) ; Caller frame size
377 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
378 : LDA 7, 404(0) ; Skip ELSE block
379 : LD 1, 1(5) ; Load parameter 'a' into R1
380 : ST 1, 8(5) ; Spill left operand at depth 0
381 : LDC 1, 1(0) ; Load integer-literal into R1
382 : LD 2, 8(5) ; Restore left operand from depth 0
383 : ADD 1, 2, 1 ; R1 = left + right
384 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
385 : ST 1, 1(2) ; Store argument 0 in callee
386 : LD 1, 2(5) ; Load parameter 'n' into R1
387 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
388 : ST 1, 2(2) ; Store argument 1 in callee
389 : LD 1, 3(5) ; Load parameter 'upper' into R1
390 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
391 : ST 1, 3(2) ; Store argument 2 in callee
392 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
393 : LDA 6, 399(0) ; Return address
394 : ST 6, 0(2) ; Store return in callee frame
395 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
396 : LDC 3, 7(0) ; Callee frame size
397 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
398 : LDA 7, 92(0) ; Call aLoop
399 : LD 1, 4(5) ; Load callee result into R1
400 : LDC 2, 7(0) ; Callee frame size
401 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
402 : LDC 3, 10(0) ; Caller frame size
403 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
404 : ST 1, 7(5) ; Store function result into frame return slot
405 : LD 6, 0(5) ; Load return address
406 : LDA 7, 0(6) ; Return to caller
407 : LD 1, 4(5) ; Load parameter 'candidate' into R1
408 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
409 : LDA 6, 415(0) ; Return address
410 : ST 6, 0(2) ; Store return address in callee frame
411 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
412 : LDC 3, 3(0) ; Callee frame size
413 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
414 : LDA 7, 10(0) ; Call built-in print
415 : LDC 2, 3(0) ; Callee frame size
416 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
417 : LDC 3, 7(0) ; Caller frame size
418 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
419 : LD 1, 1(5) ; Load parameter 'a' into R1
420 : ST 1, 6(5) ; Spill left operand at depth 0
421 : LDC 1, 1(0) ; Load integer-literal into R1
422 : LD 2, 6(5) ; Restore left operand from depth 0
423 : ADD 1, 2, 1 ; R1 = left + right
424 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
425 : ST 1, 1(2) ; Store argument 0 in callee
426 : LD 1, 2(5) ; Load parameter 'n' into R1
427 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
428 : ST 1, 2(2) ; Store argument 1 in callee
429 : LD 1, 3(5) ; Load parameter 'upper' into R1
430 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
431 : ST 1, 3(2) ; Store argument 2 in callee
432 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
433 : LDA 6, 439(0) ; Return address
434 : ST 6, 0(2) ; Store return in callee frame
435 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
436 : LDC 3, 7(0) ; Callee frame size
437 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
438 : LDA 7, 92(0) ; Call aLoop
439 : LD 1, 4(5) ; Load callee result into R1
440 : LDC 2, 7(0) ; Callee frame size
441 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
442 : LDC 3, 7(0) ; Caller frame size
443 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
444 : ST 1, 5(5) ; Store function result into frame return slot
445 : LD 6, 0(5) ; Load return address
446 : LDA 7, 0(6) ; Return to caller
447 : LD 1, 1(5) ; Load parameter 'n' into R1
448 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
449 : ST 1, 1(2) ; Store argument 0 in callee
450 : LD 1, 1(5) ; Load parameter 'n' into R1
451 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
452 : ST 1, 1(2) ; Store argument 0 in callee
453 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
454 : LDA 6, 460(0) ; Return address
455 : ST 6, 0(2) ; Store return in callee frame
456 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
457 : LDC 3, 5(0) ; Callee frame size
458 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
459 : LDA 7, 672(0) ; Call length
460 : LD 1, 2(5) ; Load callee result into R1
461 : LDC 2, 5(0) ; Callee frame size
462 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
463 : LDC 3, 3(0) ; Caller frame size
464 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
465 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
466 : ST 1, 2(2) ; Store argument 1 in callee
467 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
468 : LDA 6, 474(0) ; Return address
469 : ST 6, 0(2) ; Store return in callee frame
470 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
471 : LDC 3, 5(0) ; Callee frame size
472 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
473 : LDA 7, 482(0) ; Call isExcellentSwitch
474 : LD 1, 3(5) ; Load callee result into R1
475 : LDC 2, 5(0) ; Callee frame size
476 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
477 : LDC 3, 3(0) ; Caller frame size
478 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
479 : ST 1, 2(5) ; Store function result into frame return slot
480 : LD 6, 0(5) ; Load return address
481 : LDA 7, 0(6) ; Return to caller
482 : LD 1, 2(5) ; Load parameter 'length' into R1
483 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
484 : ST 1, 1(2) ; Store argument 0 in callee
485 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
486 : LDA 6, 492(0) ; Return address
487 : ST 6, 0(2) ; Store return in callee frame
488 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
489 : LDC 3, 5(0) ; Callee frame size
490 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
491 : LDA 7, 960(0) ; Call ODD
492 : LD 1, 2(5) ; Load callee result into R1
493 : LDC 2, 5(0) ; Callee frame size
494 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
495 : LDC 3, 5(0) ; Caller frame size
496 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
497 : JEQ 1, 500(0) ; If condition is false, jump to ELSE
498 : LDC 1, 0(0) ; Load boolean-literal into R1
499 : LDA 7, 554(0) ; Skip ELSE block
500 : LD 1, 1(5) ; Load parameter 'n' into R1
501 : ST 1, 4(5) ; Spill left operand at depth 0
502 : LD 1, 1(5) ; Load parameter 'n' into R1
503 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
504 : ST 1, 1(2) ; Store argument 0 in callee
505 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
506 : LDA 6, 512(0) ; Return address
507 : ST 6, 0(2) ; Store return in callee frame
508 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
509 : LDC 3, 5(0) ; Callee frame size
510 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
511 : LDA 7, 629(0) ; Call a
512 : LD 1, 2(5) ; Load callee result into R1
513 : LDC 2, 5(0) ; Callee frame size
514 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
515 : LDC 3, 5(0) ; Caller frame size
516 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
517 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
518 : ST 1, 1(2) ; Store argument 0 in callee
519 : LD 1, 1(5) ; Load parameter 'n' into R1
520 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
521 : ST 1, 1(2) ; Store argument 0 in callee
522 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
523 : LDA 6, 529(0) ; Return address
524 : ST 6, 0(2) ; Store return in callee frame
525 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
526 : LDC 3, 4(0) ; Callee frame size
527 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
528 : LDA 7, 573(0) ; Call b
529 : LD 1, 2(5) ; Load callee result into R1
530 : LDC 2, 4(0) ; Callee frame size
531 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
532 : LDC 3, 5(0) ; Caller frame size
533 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
534 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
535 : ST 1, 2(2) ; Store argument 1 in callee
536 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
537 : LDA 6, 543(0) ; Return address
538 : ST 6, 0(2) ; Store return in callee frame
539 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
540 : LDC 3, 6(0) ; Callee frame size
541 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
542 : LDA 7, 557(0) ; Call excellentDiff
543 : LD 1, 3(5) ; Load callee result into R1
544 : LDC 2, 6(0) ; Callee frame size
545 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
546 : LDC 3, 5(0) ; Caller frame size
547 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
548 : LD 2, 4(5) ; Restore left operand from depth 0
549 : SUB 1, 2, 1 ; left - right for equality check
550 : JEQ 1, 2(7) ; If R1 == 0, jump to true
551 : LDC 1, 0(0) ; false
552 : LDA 7, 1(7) ; skip setting true
553 : LDC 1, 1(0) ; true
554 : ST 1, 3(5) ; Store function result into frame return slot
555 : LD 6, 0(5) ; Load return address
556 : LDA 7, 0(6) ; Return to caller
557 : LD 1, 2(5) ; Load parameter 'b' into R1
558 : ST 1, 4(5) ; Spill left operand at depth 0
559 : LD 1, 2(5) ; Load parameter 'b' into R1
560 : LD 2, 4(5) ; Restore left operand from depth 0
561 : MUL 1, 2, 1 ; R1 = left * right
562 : ST 1, 4(5) ; Spill left operand at depth 0
563 : LD 1, 1(5) ; Load parameter 'a' into R1
564 : ST 1, 5(5) ; Spill left operand at depth 1
565 : LD 1, 1(5) ; Load parameter 'a' into R1
566 : LD 2, 5(5) ; Restore left operand from depth 1
567 : MUL 1, 2, 1 ; R1 = left * right
568 : LD 2, 4(5) ; Restore left operand from depth 0
569 : SUB 1, 2, 1 ; R1 = left - right
570 : ST 1, 3(5) ; Store function result into frame return slot
571 : LD 6, 0(5) ; Load return address
572 : LDA 7, 0(6) ; Return to caller
573 : LD 1, 1(5) ; Load parameter 'n' into R1
574 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
575 : ST 1, 1(2) ; Store argument 0 in callee
576 : LDC 1, 10(0) ; Load integer-literal into R1
577 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
578 : ST 1, 1(2) ; Store argument 0 in callee
579 : LD 1, 1(5) ; Load parameter 'n' into R1
580 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
581 : ST 1, 1(2) ; Store argument 0 in callee
582 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
583 : LDA 6, 589(0) ; Return address
584 : ST 6, 0(2) ; Store return in callee frame
585 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
586 : LDC 3, 5(0) ; Callee frame size
587 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
588 : LDA 7, 672(0) ; Call length
589 : LD 1, 2(5) ; Load callee result into R1
590 : LDC 2, 5(0) ; Callee frame size
591 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
592 : LDC 3, 4(0) ; Caller frame size
593 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
594 : ST 1, 3(5) ; Spill left operand at depth 0
595 : LDC 1, 2(0) ; Load integer-literal into R1
596 : LD 2, 3(5) ; Restore left operand from depth 0
597 : DIV 1, 2, 1 ; R1 = left / right
598 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
599 : ST 1, 2(2) ; Store argument 1 in callee
600 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
601 : LDA 6, 607(0) ; Return address
602 : ST 6, 0(2) ; Store return in callee frame
603 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
604 : LDC 3, 6(0) ; Callee frame size
605 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
606 : LDA 7, 1007(0) ; Call EXP
607 : LD 1, 3(5) ; Load callee result into R1
608 : LDC 2, 6(0) ; Callee frame size
609 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
610 : LDC 3, 4(0) ; Caller frame size
611 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
612 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
613 : ST 1, 2(2) ; Store argument 1 in callee
614 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
615 : LDA 6, 621(0) ; Return address
616 : ST 6, 0(2) ; Store return in callee frame
617 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
618 : LDC 3, 7(0) ; Callee frame size
619 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
620 : LDA 7, 1048(0) ; Call MOD
621 : LD 1, 3(5) ; Load callee result into R1
622 : LDC 2, 7(0) ; Callee frame size
623 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
624 : LDC 3, 4(0) ; Caller frame size
625 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
626 : ST 1, 2(5) ; Store function result into frame return slot
627 : LD 6, 0(5) ; Load return address
628 : LDA 7, 0(6) ; Return to caller
629 : LD 1, 1(5) ; Load parameter 'n' into R1
630 : ST 1, 3(5) ; Spill left operand at depth 0
631 : LDC 1, 10(0) ; Load integer-literal into R1
632 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
633 : ST 1, 1(2) ; Store argument 0 in callee
634 : LD 1, 1(5) ; Load parameter 'n' into R1
635 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
636 : ST 1, 1(2) ; Store argument 0 in callee
637 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
638 : LDA 6, 644(0) ; Return address
639 : ST 6, 0(2) ; Store return in callee frame
640 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
641 : LDC 3, 5(0) ; Callee frame size
642 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
643 : LDA 7, 672(0) ; Call length
644 : LD 1, 2(5) ; Load callee result into R1
645 : LDC 2, 5(0) ; Callee frame size
646 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
647 : LDC 3, 5(0) ; Caller frame size
648 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
649 : ST 1, 4(5) ; Spill left operand at depth 1
650 : LDC 1, 2(0) ; Load integer-literal into R1
651 : LD 2, 4(5) ; Restore left operand from depth 1
652 : DIV 1, 2, 1 ; R1 = left / right
653 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
654 : ST 1, 2(2) ; Store argument 1 in callee
655 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
656 : LDA 6, 662(0) ; Return address
657 : ST 6, 0(2) ; Store return in callee frame
658 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
659 : LDC 3, 6(0) ; Callee frame size
660 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
661 : LDA 7, 1007(0) ; Call EXP
662 : LD 1, 3(5) ; Load callee result into R1
663 : LDC 2, 6(0) ; Callee frame size
664 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
665 : LDC 3, 5(0) ; Caller frame size
666 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
667 : LD 2, 3(5) ; Restore left operand from depth 0
668 : DIV 1, 2, 1 ; R1 = left / right
669 : ST 1, 2(5) ; Store function result into frame return slot
670 : LD 6, 0(5) ; Load return address
671 : LDA 7, 0(6) ; Return to caller
672 : LD 1, 1(5) ; Load parameter 'n' into R1
673 : ST 1, 3(5) ; Spill left operand at depth 0
674 : LDC 1, 10(0) ; Load integer-literal into R1
675 : LD 2, 3(5) ; Restore left operand from depth 0
676 : SUB 1, 2, 1 ; left - right for less-than check
677 : JLT 1, 2(7) ; If R1 < 0, jump to true
678 : LDC 1, 0(0) ; false
679 : LDA 7, 1(7) ; skip setting true
680 : LDC 1, 1(0) ; true
681 : JEQ 1, 684(0) ; If condition is false, jump to ELSE
682 : LDC 1, 1(0) ; Load integer-literal into R1
683 : LDA 7, 707(0) ; Skip ELSE block
684 : LDC 1, 1(0) ; Load integer-literal into R1
685 : ST 1, 3(5) ; Spill left operand at depth 0
686 : LD 1, 1(5) ; Load parameter 'n' into R1
687 : ST 1, 4(5) ; Spill left operand at depth 1
688 : LDC 1, 10(0) ; Load integer-literal into R1
689 : LD 2, 4(5) ; Restore left operand from depth 1
690 : DIV 1, 2, 1 ; R1 = left / right
691 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
692 : ST 1, 1(2) ; Store argument 0 in callee
693 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
694 : LDA 6, 700(0) ; Return address
695 : ST 6, 0(2) ; Store return in callee frame
696 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
697 : LDC 3, 5(0) ; Callee frame size
698 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
699 : LDA 7, 672(0) ; Call length
700 : LD 1, 2(5) ; Load callee result into R1
701 : LDC 2, 5(0) ; Callee frame size
702 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
703 : LDC 3, 5(0) ; Caller frame size
704 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
705 : LD 2, 3(5) ; Restore left operand from depth 0
706 : ADD 1, 2, 1 ; R1 = left + right
707 : ST 1, 2(5) ; Store function result into frame return slot
708 : LD 6, 0(5) ; Load return address
709 : LDA 7, 0(6) ; Return to caller
710 : LD 1, 2(5) ; Load parameter 'n' into R1
711 : ST 1, 4(5) ; Spill left operand at depth 0
712 : LD 1, 1(5) ; Load parameter 'r' into R1
713 : ST 1, 5(5) ; Spill left operand at depth 1
714 : LD 1, 1(5) ; Load parameter 'r' into R1
715 : LD 2, 5(5) ; Restore left operand from depth 1
716 : MUL 1, 2, 1 ; R1 = left * right
717 : LD 2, 4(5) ; Restore left operand from depth 0
718 : SUB 1, 2, 1 ; left - right for equality check
719 : JEQ 1, 2(7) ; If R1 == 0, jump to true
720 : LDC 1, 0(0) ; false
721 : LDA 7, 1(7) ; skip setting true
722 : LDC 1, 1(0) ; true
723 : ST 1, 3(5) ; Store function result into frame return slot
724 : LD 6, 0(5) ; Load return address
725 : LDA 7, 0(6) ; Return to caller
726 : LD 1, 1(5) ; Load parameter 'n' into R1
727 : ST 1, 3(5) ; Spill left operand at depth 0
728 : LDC 1, 2(0) ; Load integer-literal into R1
729 : ST 1, 4(5) ; Spill left operand at depth 1
730 : LD 1, 1(5) ; Load parameter 'n' into R1
731 : ST 1, 5(5) ; Spill left operand at depth 2
732 : LDC 1, 2(0) ; Load integer-literal into R1
733 : LD 2, 5(5) ; Restore left operand from depth 2
734 : DIV 1, 2, 1 ; R1 = left / right
735 : LD 2, 4(5) ; Restore left operand from depth 1
736 : MUL 1, 2, 1 ; R1 = left * right
737 : LD 2, 3(5) ; Restore left operand from depth 0
738 : SUB 1, 2, 1 ; left - right for equality check
739 : JEQ 1, 2(7) ; If R1 == 0, jump to true
740 : LDC 1, 0(0) ; false
741 : LDA 7, 1(7) ; skip setting true
742 : LDC 1, 1(0) ; true
743 : ST 1, 2(5) ; Store function result into frame return slot
744 : LD 6, 0(5) ; Load return address
745 : LDA 7, 0(6) ; Return to caller
746 : LD 1, 4(5) ; Load parameter 'mid' into R1
747 : ST 1, 6(5) ; Spill left operand at depth 0
748 : LD 1, 4(5) ; Load parameter 'mid' into R1
749 : LD 2, 6(5) ; Restore left operand from depth 0
750 : MUL 1, 2, 1 ; R1 = left * right
751 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
752 : ST 1, 1(2) ; Store argument 0 in callee
753 : LD 1, 1(5) ; Load parameter 'n' into R1
754 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
755 : ST 1, 2(2) ; Store argument 1 in callee
756 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
757 : LDA 6, 763(0) ; Return address
758 : ST 6, 0(2) ; Store return in callee frame
759 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
760 : LDC 3, 6(0) ; Callee frame size
761 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
762 : LDA 7, 936(0) ; Call LE
763 : LD 1, 3(5) ; Load callee result into R1
764 : LDC 2, 6(0) ; Callee frame size
765 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
766 : LDC 3, 7(0) ; Caller frame size
767 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
768 : JEQ 1, 791(0) ; If condition is false, jump to ELSE
769 : LD 1, 1(5) ; Load parameter 'n' into R1
770 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
771 : ST 1, 1(2) ; Store argument 0 in callee
772 : LD 1, 4(5) ; Load parameter 'mid' into R1
773 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
774 : ST 1, 2(2) ; Store argument 1 in callee
775 : LD 1, 3(5) ; Load parameter 'high' into R1
776 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
777 : ST 1, 3(2) ; Store argument 2 in callee
778 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
779 : LDA 6, 785(0) ; Return address
780 : ST 6, 0(2) ; Store return in callee frame
781 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
782 : LDC 3, 7(0) ; Callee frame size
783 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
784 : LDA 7, 815(0) ; Call SQRTSEARCH
785 : LD 1, 4(5) ; Load callee result into R1
786 : LDC 2, 7(0) ; Callee frame size
787 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
788 : LDC 3, 7(0) ; Caller frame size
789 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
790 : LDA 7, 812(0) ; Skip ELSE block
791 : LD 1, 1(5) ; Load parameter 'n' into R1
792 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
793 : ST 1, 1(2) ; Store argument 0 in callee
794 : LD 1, 2(5) ; Load parameter 'low' into R1
795 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
796 : ST 1, 2(2) ; Store argument 1 in callee
797 : LD 1, 4(5) ; Load parameter 'mid' into R1
798 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
799 : ST 1, 3(2) ; Store argument 2 in callee
800 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
801 : LDA 6, 807(0) ; Return address
802 : ST 6, 0(2) ; Store return in callee frame
803 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
804 : LDC 3, 7(0) ; Callee frame size
805 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
806 : LDA 7, 815(0) ; Call SQRTSEARCH
807 : LD 1, 4(5) ; Load callee result into R1
808 : LDC 2, 7(0) ; Callee frame size
809 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
810 : LDC 3, 7(0) ; Caller frame size
811 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
812 : ST 1, 5(5) ; Store function result into frame return slot
813 : LD 6, 0(5) ; Load return address
814 : LDA 7, 0(6) ; Return to caller
815 : LD 1, 3(5) ; Load parameter 'high' into R1
816 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
817 : ST 1, 1(2) ; Store argument 0 in callee
818 : LD 1, 2(5) ; Load parameter 'low' into R1
819 : ST 1, 5(5) ; Spill left operand at depth 0
820 : LDC 1, 1(0) ; Load integer-literal into R1
821 : LD 2, 5(5) ; Restore left operand from depth 0
822 : ADD 1, 2, 1 ; R1 = left + right
823 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
824 : ST 1, 2(2) ; Store argument 1 in callee
825 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
826 : LDA 6, 832(0) ; Return address
827 : ST 6, 0(2) ; Store return in callee frame
828 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
829 : LDC 3, 6(0) ; Callee frame size
830 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
831 : LDA 7, 936(0) ; Call LE
832 : LD 1, 3(5) ; Load callee result into R1
833 : LDC 2, 6(0) ; Callee frame size
834 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
835 : LDC 3, 7(0) ; Caller frame size
836 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
837 : JEQ 1, 877(0) ; If condition is false, jump to ELSE
838 : LD 1, 1(5) ; Load parameter 'n' into R1
839 : ST 1, 5(5) ; Spill left operand at depth 0
840 : LD 1, 2(5) ; Load parameter 'low' into R1
841 : ST 1, 6(5) ; Spill left operand at depth 1
842 : LD 1, 2(5) ; Load parameter 'low' into R1
843 : LD 2, 6(5) ; Restore left operand from depth 1
844 : MUL 1, 2, 1 ; R1 = left * right
845 : LD 2, 5(5) ; Restore left operand from depth 0
846 : SUB 1, 2, 1 ; R1 = left - right
847 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
848 : ST 1, 1(2) ; Store argument 0 in callee
849 : LD 1, 3(5) ; Load parameter 'high' into R1
850 : ST 1, 5(5) ; Spill left operand at depth 0
851 : LD 1, 3(5) ; Load parameter 'high' into R1
852 : LD 2, 5(5) ; Restore left operand from depth 0
853 : MUL 1, 2, 1 ; R1 = left * right
854 : ST 1, 5(5) ; Spill left operand at depth 0
855 : LD 1, 1(5) ; Load parameter 'n' into R1
856 : LD 2, 5(5) ; Restore left operand from depth 0
857 : SUB 1, 2, 1 ; R1 = left - right
858 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
859 : ST 1, 2(2) ; Store argument 1 in callee
860 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
861 : LDA 6, 867(0) ; Return address
862 : ST 6, 0(2) ; Store return in callee frame
863 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
864 : LDC 3, 6(0) ; Callee frame size
865 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
866 : LDA 7, 936(0) ; Call LE
867 : LD 1, 3(5) ; Load callee result into R1
868 : LDC 2, 6(0) ; Callee frame size
869 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
870 : LDC 3, 7(0) ; Caller frame size
871 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
872 : JEQ 1, 875(0) ; If condition is false, jump to ELSE
873 : LD 1, 2(5) ; Load parameter 'low' into R1
874 : LDA 7, 876(0) ; Skip ELSE block
875 : LD 1, 3(5) ; Load parameter 'high' into R1
876 : LDA 7, 909(0) ; Skip ELSE block
877 : LD 1, 1(5) ; Load parameter 'n' into R1
878 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
879 : ST 1, 1(2) ; Store argument 0 in callee
880 : LD 1, 2(5) ; Load parameter 'low' into R1
881 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
882 : ST 1, 2(2) ; Store argument 1 in callee
883 : LD 1, 3(5) ; Load parameter 'high' into R1
884 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
885 : ST 1, 3(2) ; Store argument 2 in callee
886 : LD 1, 2(5) ; Load parameter 'low' into R1
887 : ST 1, 5(5) ; Spill left operand at depth 0
888 : LD 1, 3(5) ; Load parameter 'high' into R1
889 : LD 2, 5(5) ; Restore left operand from depth 0
890 : ADD 1, 2, 1 ; R1 = left + right
891 : ST 1, 5(5) ; Spill left operand at depth 0
892 : LDC 1, 2(0) ; Load integer-literal into R1
893 : LD 2, 5(5) ; Restore left operand from depth 0
894 : DIV 1, 2, 1 ; R1 = left / right
895 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
896 : ST 1, 4(2) ; Store argument 3 in callee
897 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
898 : LDA 6, 904(0) ; Return address
899 : ST 6, 0(2) ; Store return in callee frame
900 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
901 : LDC 3, 7(0) ; Callee frame size
902 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
903 : LDA 7, 746(0) ; Call SQRTSPLIT
904 : LD 1, 5(5) ; Load callee result into R1
905 : LDC 2, 7(0) ; Callee frame size
906 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
907 : LDC 3, 7(0) ; Caller frame size
908 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
909 : ST 1, 4(5) ; Store function result into frame return slot
910 : LD 6, 0(5) ; Load return address
911 : LDA 7, 0(6) ; Return to caller
912 : LD 1, 1(5) ; Load parameter 'n' into R1
913 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
914 : ST 1, 1(2) ; Store argument 0 in callee
915 : LDC 1, 0(0) ; Load integer-literal into R1
916 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
917 : ST 1, 2(2) ; Store argument 1 in callee
918 : LD 1, 1(5) ; Load parameter 'n' into R1
919 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
920 : ST 1, 3(2) ; Store argument 2 in callee
921 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
922 : LDA 6, 928(0) ; Return address
923 : ST 6, 0(2) ; Store return in callee frame
924 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
925 : LDC 3, 7(0) ; Callee frame size
926 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
927 : LDA 7, 815(0) ; Call SQRTSEARCH
928 : LD 1, 4(5) ; Load callee result into R1
929 : LDC 2, 7(0) ; Callee frame size
930 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
931 : LDC 3, 3(0) ; Caller frame size
932 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
933 : ST 1, 2(5) ; Store function result into frame return slot
934 : LD 6, 0(5) ; Load return address
935 : LDA 7, 0(6) ; Return to caller
936 : LD 1, 1(5) ; Load parameter 'p' into R1
937 : ST 1, 4(5) ; Spill left operand at depth 0
938 : LD 1, 2(5) ; Load parameter 'q' into R1
939 : LD 2, 4(5) ; Restore left operand from depth 0
940 : SUB 1, 2, 1 ; left - right for less-than check
941 : JLT 1, 2(7) ; If R1 < 0, jump to true
942 : LDC 1, 0(0) ; false
943 : LDA 7, 1(7) ; skip setting true
944 : LDC 1, 1(0) ; true
945 : ST 1, 4(5) ; Spill left operand at depth 0
946 : LD 1, 1(5) ; Load parameter 'p' into R1
947 : ST 1, 5(5) ; Spill left operand at depth 1
948 : LD 1, 2(5) ; Load parameter 'q' into R1
949 : LD 2, 5(5) ; Restore left operand from depth 1
950 : SUB 1, 2, 1 ; left - right for equality check
951 : JEQ 1, 2(7) ; If R1 == 0, jump to true
952 : LDC 1, 0(0) ; false
953 : LDA 7, 1(7) ; skip setting true
954 : LDC 1, 1(0) ; true
955 : LD 2, 4(5) ; Restore left operand from depth 0
956 : ADD 1, 2, 1 ; R1 = left OR right
957 : ST 1, 3(5) ; Store function result into frame return slot
958 : LD 6, 0(5) ; Load return address
959 : LDA 7, 0(6) ; Return to caller
960 : LDC 1, 0(0) ; Load integer-literal into R1
961 : ST 1, 3(5) ; Spill left operand at depth 0
962 : LD 1, 1(5) ; Load parameter 'n' into R1
963 : LD 2, 3(5) ; Restore left operand from depth 0
964 : SUB 1, 2, 1 ; left - right for less-than check
965 : JLT 1, 2(7) ; If R1 < 0, jump to true
966 : LDC 1, 0(0) ; false
967 : LDA 7, 1(7) ; skip setting true
968 : LDC 1, 1(0) ; true
969 : JEQ 1, 988(0) ; If condition is false, jump to ELSE
970 : LDC 1, 2(0) ; Load integer-literal into R1
971 : ST 1, 3(5) ; Spill left operand at depth 0
972 : LD 1, 1(5) ; Load parameter 'n' into R1
973 : ST 1, 4(5) ; Spill left operand at depth 1
974 : LDC 1, 2(0) ; Load integer-literal into R1
975 : LD 2, 4(5) ; Restore left operand from depth 1
976 : DIV 1, 2, 1 ; R1 = left / right
977 : LD 2, 3(5) ; Restore left operand from depth 0
978 : MUL 1, 2, 1 ; R1 = left * right
979 : ST 1, 3(5) ; Spill left operand at depth 0
980 : LD 1, 1(5) ; Load parameter 'n' into R1
981 : LD 2, 3(5) ; Restore left operand from depth 0
982 : SUB 1, 2, 1 ; left - right for less-than check
983 : JLT 1, 2(7) ; If R1 < 0, jump to true
984 : LDC 1, 0(0) ; false
985 : LDA 7, 1(7) ; skip setting true
986 : LDC 1, 1(0) ; true
987 : LDA 7, 1004(0) ; Skip ELSE block
988 : LD 1, 1(5) ; Load parameter 'n' into R1
989 : SUB 1, 0, 1 ; Negate value in R1
990 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
991 : ST 1, 1(2) ; Store argument 0 in callee
992 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
993 : LDA 6, 999(0) ; Return address
994 : ST 6, 0(2) ; Store return in callee frame
995 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
996 : LDC 3, 5(0) ; Callee frame size
997 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
998 : LDA 7, 960(0) ; Call ODD
999 : LD 1, 2(5) ; Load callee result into R1
1000 : LDC 2, 5(0) ; Callee frame size
1001 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
1002 : LDC 3, 5(0) ; Caller frame size
1003 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
1004 : ST 1, 2(5) ; Store function result into frame return slot
1005 : LD 6, 0(5) ; Load return address
1006 : LDA 7, 0(6) ; Return to caller
1007 : LD 1, 2(5) ; Load parameter 'n' into R1
1008 : ST 1, 4(5) ; Spill left operand at depth 0
1009 : LDC 1, 0(0) ; Load integer-literal into R1
1010 : LD 2, 4(5) ; Restore left operand from depth 0
1011 : SUB 1, 2, 1 ; left - right for equality check
1012 : JEQ 1, 2(7) ; If R1 == 0, jump to true
1013 : LDC 1, 0(0) ; false
1014 : LDA 7, 1(7) ; skip setting true
1015 : LDC 1, 1(0) ; true
1016 : JEQ 1, 1019(0) ; If condition is false, jump to ELSE
1017 : LDC 1, 1(0) ; Load integer-literal into R1
1018 : LDA 7, 1045(0) ; Skip ELSE block
1019 : LD 1, 1(5) ; Load parameter 'm' into R1
1020 : ST 1, 4(5) ; Spill left operand at depth 0
1021 : LD 1, 1(5) ; Load parameter 'm' into R1
1022 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
1023 : ST 1, 1(2) ; Store argument 0 in callee
1024 : LD 1, 2(5) ; Load parameter 'n' into R1
1025 : ST 1, 5(5) ; Spill left operand at depth 1
1026 : LDC 1, 1(0) ; Load integer-literal into R1
1027 : LD 2, 5(5) ; Restore left operand from depth 1
1028 : SUB 1, 2, 1 ; R1 = left - right
1029 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
1030 : ST 1, 2(2) ; Store argument 1 in callee
1031 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
1032 : LDA 6, 1038(0) ; Return address
1033 : ST 6, 0(2) ; Store return in callee frame
1034 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
1035 : LDC 3, 6(0) ; Callee frame size
1036 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
1037 : LDA 7, 1007(0) ; Call EXP
1038 : LD 1, 3(5) ; Load callee result into R1
1039 : LDC 2, 6(0) ; Callee frame size
1040 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
1041 : LDC 3, 6(0) ; Caller frame size
1042 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
1043 : LD 2, 4(5) ; Restore left operand from depth 0
1044 : MUL 1, 2, 1 ; R1 = left * right
1045 : ST 1, 3(5) ; Store function result into frame return slot
1046 : LD 6, 0(5) ; Load return address
1047 : LDA 7, 0(6) ; Return to caller
1048 : LD 1, 1(5) ; Load parameter 'm' into R1
1049 : ST 1, 4(5) ; Spill left operand at depth 0
1050 : LD 1, 2(5) ; Load parameter 'n' into R1
1051 : ST 1, 5(5) ; Spill left operand at depth 1
1052 : LD 1, 1(5) ; Load parameter 'm' into R1
1053 : ST 1, 6(5) ; Spill left operand at depth 2
1054 : LD 1, 2(5) ; Load parameter 'n' into R1
1055 : LD 2, 6(5) ; Restore left operand from depth 2
1056 : DIV 1, 2, 1 ; R1 = left / right
1057 : LD 2, 5(5) ; Restore left operand from depth 1
1058 : MUL 1, 2, 1 ; R1 = left * right
1059 : LD 2, 4(5) ; Restore left operand from depth 0
1060 : SUB 1, 2, 1 ; R1 = left - right
1061 : ST 1, 3(5) ; Store function result into frame return slot
1062 : LD 6, 0(5) ; Load return address
1063 : LDA 7, 0(6) ; Return to caller
