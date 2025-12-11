0 : LDC 5, 2(0) ; Set DMEM pointer (R5) to main stack frame base
1 : LDC 2, 3(0) ; Main frame size
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
13 : LD 1, 1(5) ; Load parameter 'testArgument' into R1
14 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
15 : ST 1, 1(2) ; Store argument 0 in callee
16 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
17 : LDA 6, 23(0) ; Return address
18 : ST 6, 0(2) ; Store return in callee frame
19 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
20 : LDC 3, 3(0) ; Callee frame size
21 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
22 : LDA 7, 263(0) ; Call SQRT
23 : LD 1, 2(5) ; Load callee result into R1
24 : LDC 2, 3(0) ; Callee frame size
25 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
26 : LDC 3, 3(0) ; Caller frame size
27 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
28 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
29 : LDA 6, 35(0) ; Return address
30 : ST 6, 0(2) ; Store return address in callee frame
31 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
32 : LDC 3, 3(0) ; Callee frame size
33 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
34 : LDA 7, 10(0) ; Call built-in print
35 : LDC 2, 3(0) ; Callee frame size
36 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
37 : LDC 3, 3(0) ; Caller frame size
38 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
39 : LD 1, 1(5) ; Load parameter 'testArgument' into R1
40 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
41 : ST 1, 1(2) ; Store argument 0 in callee
42 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
43 : LDA 6, 49(0) ; Return address
44 : ST 6, 0(2) ; Store return in callee frame
45 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
46 : LDC 3, 4(0) ; Callee frame size
47 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
48 : LDA 7, 287(0) ; Call ODD
49 : LD 1, 2(5) ; Load callee result into R1
50 : LDC 2, 4(0) ; Callee frame size
51 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
52 : LDC 3, 3(0) ; Caller frame size
53 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
54 : ST 1, 2(5) ; Store result into caller’s frame
55 : LD 1, 2(5) ; Load main return value into R1
56 : LD 6, 0(5) ; Load main return address
57 : LDA 7, 0(6) ; Return from main
58 : LD 1, 4(5) ; Load parameter 'mid' into R1
59 : ST 1, 6(5) ; Spill left operand at depth 0
60 : LD 1, 4(5) ; Load parameter 'mid' into R1
61 : LD 2, 6(5) ; Restore left operand from depth 0
62 : MUL 1, 2, 1 ; R1 = left * right
63 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
64 : ST 1, 1(2) ; Store argument 0 in callee
65 : LD 1, 1(5) ; Load parameter 'n' into R1
66 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
67 : ST 1, 2(2) ; Store argument 1 in callee
68 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
69 : LDA 6, 75(0) ; Return address
70 : ST 6, 0(2) ; Store return in callee frame
71 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
72 : LDC 3, 5(0) ; Callee frame size
73 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
74 : LDA 7, 650(0) ; Call LE
75 : LD 1, 3(5) ; Load callee result into R1
76 : LDC 2, 5(0) ; Callee frame size
77 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
78 : LDC 3, 7(0) ; Caller frame size
79 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
80 : JEQ 1, 103(0) ; If condition is false, jump to ELSE
81 : LD 1, 1(5) ; Load parameter 'n' into R1
82 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
83 : ST 1, 1(2) ; Store argument 0 in callee
84 : LD 1, 4(5) ; Load parameter 'mid' into R1
85 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
86 : ST 1, 2(2) ; Store argument 1 in callee
87 : LD 1, 3(5) ; Load parameter 'high' into R1
88 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
89 : ST 1, 3(2) ; Store argument 2 in callee
90 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
91 : LDA 6, 97(0) ; Return address
92 : ST 6, 0(2) ; Store return in callee frame
93 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
94 : LDC 3, 6(0) ; Callee frame size
95 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
96 : LDA 7, 127(0) ; Call SQRTSEARCH
97 : LD 1, 4(5) ; Load callee result into R1
98 : LDC 2, 6(0) ; Callee frame size
99 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
100 : LDC 3, 7(0) ; Caller frame size
101 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
102 : LDA 7, 124(0) ; Skip ELSE block
103 : LD 1, 1(5) ; Load parameter 'n' into R1
104 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
105 : ST 1, 1(2) ; Store argument 0 in callee
106 : LD 1, 2(5) ; Load parameter 'low' into R1
107 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
108 : ST 1, 2(2) ; Store argument 1 in callee
109 : LD 1, 4(5) ; Load parameter 'mid' into R1
110 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
111 : ST 1, 3(2) ; Store argument 2 in callee
112 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
113 : LDA 6, 119(0) ; Return address
114 : ST 6, 0(2) ; Store return in callee frame
115 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
116 : LDC 3, 6(0) ; Callee frame size
117 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
118 : LDA 7, 127(0) ; Call SQRTSEARCH
119 : LD 1, 4(5) ; Load callee result into R1
120 : LDC 2, 6(0) ; Callee frame size
121 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
122 : LDC 3, 7(0) ; Caller frame size
123 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
124 : ST 1, 5(5) ; Store function result into frame return slot
125 : LD 6, 0(5) ; Load return address
126 : LDA 7, 0(6) ; Return to caller
127 : LD 1, 3(5) ; Load parameter 'high' into R1
128 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
129 : ST 1, 1(2) ; Store argument 0 in callee
130 : LD 1, 2(5) ; Load parameter 'low' into R1
131 : ST 1, 5(5) ; Spill left operand at depth 0
132 : LDC 1, 1(0) ; Load integer-literal into R1
133 : LD 2, 5(5) ; Restore left operand from depth 0
134 : ADD 1, 2, 1 ; R1 = left + right
135 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
136 : ST 1, 2(2) ; Store argument 1 in callee
137 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
138 : LDA 6, 144(0) ; Return address
139 : ST 6, 0(2) ; Store return in callee frame
140 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
141 : LDC 3, 5(0) ; Callee frame size
142 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
143 : LDA 7, 650(0) ; Call LE
144 : LD 1, 3(5) ; Load callee result into R1
145 : LDC 2, 5(0) ; Callee frame size
146 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
147 : LDC 3, 6(0) ; Caller frame size
148 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
149 : JEQ 1, 215(0) ; If condition is false, jump to ELSE
150 : LD 1, 1(5) ; Load parameter 'n' into R1
151 : ST 1, 5(5) ; Spill left operand at depth 0
152 : LD 1, 2(5) ; Load parameter 'low' into R1
153 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
154 : ST 1, 1(2) ; Store argument 0 in callee
155 : LD 1, 2(5) ; Load parameter 'low' into R1
156 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
157 : ST 1, 2(2) ; Store argument 1 in callee
158 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
159 : LDA 6, 165(0) ; Return address
160 : ST 6, 0(2) ; Store return in callee frame
161 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
162 : LDC 3, 5(0) ; Callee frame size
163 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
164 : LDA 7, 564(0) ; Call TIMES
165 : LD 1, 3(5) ; Load callee result into R1
166 : LDC 2, 5(0) ; Callee frame size
167 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
168 : LDC 3, 6(0) ; Caller frame size
169 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
170 : LD 2, 5(5) ; Restore left operand from depth 0
171 : SUB 1, 2, 1 ; R1 = left - right
172 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
173 : ST 1, 1(2) ; Store argument 0 in callee
174 : LD 1, 3(5) ; Load parameter 'high' into R1
175 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
176 : ST 1, 1(2) ; Store argument 0 in callee
177 : LD 1, 3(5) ; Load parameter 'high' into R1
178 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
179 : ST 1, 2(2) ; Store argument 1 in callee
180 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
181 : LDA 6, 187(0) ; Return address
182 : ST 6, 0(2) ; Store return in callee frame
183 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
184 : LDC 3, 5(0) ; Callee frame size
185 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
186 : LDA 7, 564(0) ; Call TIMES
187 : LD 1, 3(5) ; Load callee result into R1
188 : LDC 2, 5(0) ; Callee frame size
189 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
190 : LDC 3, 6(0) ; Caller frame size
191 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
192 : ST 1, 5(5) ; Spill left operand at depth 0
193 : LD 1, 1(5) ; Load parameter 'n' into R1
194 : LD 2, 5(5) ; Restore left operand from depth 0
195 : SUB 1, 2, 1 ; R1 = left - right
196 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
197 : ST 1, 2(2) ; Store argument 1 in callee
198 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
199 : LDA 6, 205(0) ; Return address
200 : ST 6, 0(2) ; Store return in callee frame
201 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
202 : LDC 3, 5(0) ; Callee frame size
203 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
204 : LDA 7, 650(0) ; Call LE
205 : LD 1, 3(5) ; Load callee result into R1
206 : LDC 2, 5(0) ; Callee frame size
207 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
208 : LDC 3, 6(0) ; Caller frame size
209 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
210 : JEQ 1, 213(0) ; If condition is false, jump to ELSE
211 : LD 1, 2(5) ; Load parameter 'low' into R1
212 : LDA 7, 214(0) ; Skip ELSE block
213 : LD 1, 3(5) ; Load parameter 'high' into R1
214 : LDA 7, 260(0) ; Skip ELSE block
215 : LD 1, 1(5) ; Load parameter 'n' into R1
216 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
217 : ST 1, 1(2) ; Store argument 0 in callee
218 : LD 1, 2(5) ; Load parameter 'low' into R1
219 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
220 : ST 1, 2(2) ; Store argument 1 in callee
221 : LD 1, 3(5) ; Load parameter 'high' into R1
222 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
223 : ST 1, 3(2) ; Store argument 2 in callee
224 : LD 1, 2(5) ; Load parameter 'low' into R1
225 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
226 : ST 1, 1(2) ; Store argument 0 in callee
227 : LD 1, 3(5) ; Load parameter 'high' into R1
228 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
229 : ST 1, 2(2) ; Store argument 1 in callee
230 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
231 : LDA 6, 237(0) ; Return address
232 : ST 6, 0(2) ; Store return in callee frame
233 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
234 : LDC 3, 5(0) ; Callee frame size
235 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
236 : LDA 7, 580(0) ; Call PLUS
237 : LD 1, 3(5) ; Load callee result into R1
238 : LDC 2, 5(0) ; Callee frame size
239 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
240 : LDC 3, 6(0) ; Caller frame size
241 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
242 : ST 1, 5(5) ; Spill left operand at depth 0
243 : LDC 1, 2(0) ; Load integer-literal into R1
244 : LD 2, 5(5) ; Restore left operand from depth 0
245 : DIV 1, 2, 1 ; R1 = left / right
246 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
247 : ST 1, 4(2) ; Store argument 3 in callee
248 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
249 : LDA 6, 255(0) ; Return address
250 : ST 6, 0(2) ; Store return in callee frame
251 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
252 : LDC 3, 7(0) ; Callee frame size
253 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
254 : LDA 7, 58(0) ; Call SQRTSPLIT
255 : LD 1, 5(5) ; Load callee result into R1
256 : LDC 2, 7(0) ; Callee frame size
257 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
258 : LDC 3, 6(0) ; Caller frame size
259 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
260 : ST 1, 4(5) ; Store function result into frame return slot
261 : LD 6, 0(5) ; Load return address
262 : LDA 7, 0(6) ; Return to caller
263 : LD 1, 1(5) ; Load parameter 'n' into R1
264 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
265 : ST 1, 1(2) ; Store argument 0 in callee
266 : LDC 1, 0(0) ; Load integer-literal into R1
267 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
268 : ST 1, 2(2) ; Store argument 1 in callee
269 : LD 1, 1(5) ; Load parameter 'n' into R1
270 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
271 : ST 1, 3(2) ; Store argument 2 in callee
272 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
273 : LDA 6, 279(0) ; Return address
274 : ST 6, 0(2) ; Store return in callee frame
275 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
276 : LDC 3, 6(0) ; Callee frame size
277 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
278 : LDA 7, 127(0) ; Call SQRTSEARCH
279 : LD 1, 4(5) ; Load callee result into R1
280 : LDC 2, 6(0) ; Callee frame size
281 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
282 : LDC 3, 3(0) ; Caller frame size
283 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
284 : ST 1, 2(5) ; Store function result into frame return slot
285 : LD 6, 0(5) ; Load return address
286 : LDA 7, 0(6) ; Return to caller
287 : LDC 1, 0(0) ; Load integer-literal into R1
288 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
289 : ST 1, 1(2) ; Store argument 0 in callee
290 : LD 1, 1(5) ; Load parameter 'n' into R1
291 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
292 : ST 1, 2(2) ; Store argument 1 in callee
293 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
294 : LDA 6, 300(0) ; Return address
295 : ST 6, 0(2) ; Store return in callee frame
296 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
297 : LDC 3, 5(0) ; Callee frame size
298 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
299 : LDA 7, 650(0) ; Call LE
300 : LD 1, 3(5) ; Load callee result into R1
301 : LDC 2, 5(0) ; Callee frame size
302 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
303 : LDC 3, 4(0) ; Caller frame size
304 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
305 : JEQ 1, 363(0) ; If condition is false, jump to ELSE
306 : LD 1, 1(5) ; Load parameter 'n' into R1
307 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
308 : ST 1, 1(2) ; Store argument 0 in callee
309 : LD 1, 1(5) ; Load parameter 'n' into R1
310 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
311 : ST 1, 1(2) ; Store argument 0 in callee
312 : LDC 1, 2(0) ; Load integer-literal into R1
313 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
314 : ST 1, 2(2) ; Store argument 1 in callee
315 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
316 : LDA 6, 322(0) ; Return address
317 : ST 6, 0(2) ; Store return in callee frame
318 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
319 : LDC 3, 5(0) ; Callee frame size
320 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
321 : LDA 7, 556(0) ; Call DIV
322 : LD 1, 3(5) ; Load callee result into R1
323 : LDC 2, 5(0) ; Callee frame size
324 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
325 : LDC 3, 4(0) ; Caller frame size
326 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
327 : ST 1, 3(5) ; Spill left operand at depth 0
328 : LD 1, 1(5) ; Load parameter 'n' into R1
329 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
330 : ST 1, 1(2) ; Store argument 0 in callee
331 : LDC 1, 2(0) ; Load integer-literal into R1
332 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
333 : ST 1, 2(2) ; Store argument 1 in callee
334 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
335 : LDA 6, 341(0) ; Return address
336 : ST 6, 0(2) ; Store return in callee frame
337 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
338 : LDC 3, 5(0) ; Callee frame size
339 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
340 : LDA 7, 556(0) ; Call DIV
341 : LD 1, 3(5) ; Load callee result into R1
342 : LDC 2, 5(0) ; Callee frame size
343 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
344 : LDC 3, 4(0) ; Caller frame size
345 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
346 : LD 2, 3(5) ; Restore left operand from depth 0
347 : ADD 1, 2, 1 ; R1 = left + right
348 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
349 : ST 1, 2(2) ; Store argument 1 in callee
350 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
351 : LDA 6, 357(0) ; Return address
352 : ST 6, 0(2) ; Store return in callee frame
353 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
354 : LDC 3, 4(0) ; Callee frame size
355 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
356 : LDA 7, 604(0) ; Call GT
357 : LD 1, 3(5) ; Load callee result into R1
358 : LDC 2, 4(0) ; Callee frame size
359 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
360 : LDC 3, 4(0) ; Caller frame size
361 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
362 : LDA 7, 461(0) ; Skip ELSE block
363 : LD 1, 1(5) ; Load parameter 'n' into R1
364 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
365 : ST 1, 1(2) ; Store argument 0 in callee
366 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
367 : LDA 6, 373(0) ; Return address
368 : ST 6, 0(2) ; Store return in callee frame
369 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
370 : LDC 3, 3(0) ; Callee frame size
371 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
372 : LDA 7, 551(0) ; Call NEG
373 : LD 1, 2(5) ; Load callee result into R1
374 : LDC 2, 3(0) ; Callee frame size
375 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
376 : LDC 3, 4(0) ; Caller frame size
377 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
378 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
379 : ST 1, 1(2) ; Store argument 0 in callee
380 : LD 1, 1(5) ; Load parameter 'n' into R1
381 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
382 : ST 1, 1(2) ; Store argument 0 in callee
383 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
384 : LDA 6, 390(0) ; Return address
385 : ST 6, 0(2) ; Store return in callee frame
386 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
387 : LDC 3, 3(0) ; Callee frame size
388 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
389 : LDA 7, 551(0) ; Call NEG
390 : LD 1, 2(5) ; Load callee result into R1
391 : LDC 2, 3(0) ; Callee frame size
392 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
393 : LDC 3, 4(0) ; Caller frame size
394 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
395 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
396 : ST 1, 1(2) ; Store argument 0 in callee
397 : LDC 1, 2(0) ; Load integer-literal into R1
398 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
399 : ST 1, 2(2) ; Store argument 1 in callee
400 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
401 : LDA 6, 407(0) ; Return address
402 : ST 6, 0(2) ; Store return in callee frame
403 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
404 : LDC 3, 5(0) ; Callee frame size
405 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
406 : LDA 7, 556(0) ; Call DIV
407 : LD 1, 3(5) ; Load callee result into R1
408 : LDC 2, 5(0) ; Callee frame size
409 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
410 : LDC 3, 4(0) ; Caller frame size
411 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
412 : ST 1, 3(5) ; Spill left operand at depth 0
413 : LD 1, 1(5) ; Load parameter 'n' into R1
414 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
415 : ST 1, 1(2) ; Store argument 0 in callee
416 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
417 : LDA 6, 423(0) ; Return address
418 : ST 6, 0(2) ; Store return in callee frame
419 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
420 : LDC 3, 3(0) ; Callee frame size
421 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
422 : LDA 7, 551(0) ; Call NEG
423 : LD 1, 2(5) ; Load callee result into R1
424 : LDC 2, 3(0) ; Callee frame size
425 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
426 : LDC 3, 4(0) ; Caller frame size
427 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
428 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
429 : ST 1, 1(2) ; Store argument 0 in callee
430 : LDC 1, 2(0) ; Load integer-literal into R1
431 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
432 : ST 1, 2(2) ; Store argument 1 in callee
433 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
434 : LDA 6, 440(0) ; Return address
435 : ST 6, 0(2) ; Store return in callee frame
436 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
437 : LDC 3, 5(0) ; Callee frame size
438 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
439 : LDA 7, 556(0) ; Call DIV
440 : LD 1, 3(5) ; Load callee result into R1
441 : LDC 2, 5(0) ; Callee frame size
442 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
443 : LDC 3, 4(0) ; Caller frame size
444 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
445 : LD 2, 3(5) ; Restore left operand from depth 0
446 : ADD 1, 2, 1 ; R1 = left + right
447 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
448 : ST 1, 2(2) ; Store argument 1 in callee
449 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
450 : LDA 6, 456(0) ; Return address
451 : ST 6, 0(2) ; Store return in callee frame
452 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
453 : LDC 3, 4(0) ; Callee frame size
454 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
455 : LDA 7, 604(0) ; Call GT
456 : LD 1, 3(5) ; Load callee result into R1
457 : LDC 2, 4(0) ; Callee frame size
458 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
459 : LDC 3, 4(0) ; Caller frame size
460 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
461 : ST 1, 2(5) ; Store function result into frame return slot
462 : LD 6, 0(5) ; Load return address
463 : LDA 7, 0(6) ; Return to caller
464 : LD 1, 2(5) ; Load parameter 'n' into R1
465 : ST 1, 4(5) ; Spill left operand at depth 0
466 : LDC 1, 0(0) ; Load integer-literal into R1
467 : LD 2, 4(5) ; Restore left operand from depth 0
468 : SUB 1, 2, 1 ; left - right for equality check
469 : JEQ 1, 2(7) ; If R1 == 0, jump to true
470 : LDC 1, 0(0) ; false
471 : LDA 7, 1(7) ; skip setting true
472 : LDC 1, 1(0) ; true
473 : JEQ 1, 476(0) ; If condition is false, jump to ELSE
474 : LDC 1, 1(0) ; Load integer-literal into R1
475 : LDA 7, 502(0) ; Skip ELSE block
476 : LD 1, 1(5) ; Load parameter 'm' into R1
477 : ST 1, 4(5) ; Spill left operand at depth 0
478 : LD 1, 1(5) ; Load parameter 'm' into R1
479 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
480 : ST 1, 1(2) ; Store argument 0 in callee
481 : LD 1, 2(5) ; Load parameter 'n' into R1
482 : ST 1, 5(5) ; Spill left operand at depth 1
483 : LDC 1, 1(0) ; Load integer-literal into R1
484 : LD 2, 5(5) ; Restore left operand from depth 1
485 : SUB 1, 2, 1 ; R1 = left - right
486 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
487 : ST 1, 2(2) ; Store argument 1 in callee
488 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
489 : LDA 6, 495(0) ; Return address
490 : ST 6, 0(2) ; Store return in callee frame
491 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
492 : LDC 3, 6(0) ; Callee frame size
493 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
494 : LDA 7, 464(0) ; Call EXP
495 : LD 1, 3(5) ; Load callee result into R1
496 : LDC 2, 6(0) ; Callee frame size
497 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
498 : LDC 3, 6(0) ; Caller frame size
499 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
500 : LD 2, 4(5) ; Restore left operand from depth 0
501 : MUL 1, 2, 1 ; R1 = left * right
502 : ST 1, 3(5) ; Store function result into frame return slot
503 : LD 6, 0(5) ; Load return address
504 : LDA 7, 0(6) ; Return to caller
505 : LD 1, 1(5) ; Load parameter 'm' into R1
506 : ST 1, 4(5) ; Spill left operand at depth 0
507 : LD 1, 1(5) ; Load parameter 'm' into R1
508 : ST 1, 5(5) ; Spill left operand at depth 1
509 : LD 1, 2(5) ; Load parameter 'n' into R1
510 : LD 2, 5(5) ; Restore left operand from depth 1
511 : DIV 1, 2, 1 ; R1 = left / right
512 : ST 1, 5(5) ; Spill left operand at depth 1
513 : LD 1, 2(5) ; Load parameter 'n' into R1
514 : LD 2, 5(5) ; Restore left operand from depth 1
515 : MUL 1, 2, 1 ; R1 = left * right
516 : LD 2, 4(5) ; Restore left operand from depth 0
517 : SUB 1, 2, 1 ; R1 = left - right
518 : ST 1, 3(5) ; Store function result into frame return slot
519 : LD 6, 0(5) ; Load return address
520 : LDA 7, 0(6) ; Return to caller
521 : LDC 1, 0(0) ; Load integer-literal into R1
522 : ST 1, 3(5) ; Spill left operand at depth 0
523 : LD 1, 1(5) ; Load parameter 'n' into R1
524 : LD 2, 3(5) ; Restore left operand from depth 0
525 : SUB 1, 2, 1 ; left - right for less-than check
526 : JLT 1, 2(7) ; If R1 < 0, jump to true
527 : LDC 1, 0(0) ; false
528 : LDA 7, 1(7) ; skip setting true
529 : LDC 1, 1(0) ; true
530 : JEQ 1, 533(0) ; If condition is false, jump to ELSE
531 : LD 1, 1(5) ; Load parameter 'n' into R1
532 : LDA 7, 548(0) ; Skip ELSE block
533 : LD 1, 1(5) ; Load parameter 'n' into R1
534 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
535 : ST 1, 1(2) ; Store argument 0 in callee
536 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
537 : LDA 6, 543(0) ; Return address
538 : ST 6, 0(2) ; Store return in callee frame
539 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
540 : LDC 3, 3(0) ; Callee frame size
541 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
542 : LDA 7, 551(0) ; Call NEG
543 : LD 1, 2(5) ; Load callee result into R1
544 : LDC 2, 3(0) ; Callee frame size
545 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
546 : LDC 3, 4(0) ; Caller frame size
547 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
548 : ST 1, 2(5) ; Store function result into frame return slot
549 : LD 6, 0(5) ; Load return address
550 : LDA 7, 0(6) ; Return to caller
551 : LD 1, 1(5) ; Load parameter 'n' into R1
552 : SUB 1, 0, 1 ; Negate value in R1
553 : ST 1, 2(5) ; Store function result into frame return slot
554 : LD 6, 0(5) ; Load return address
555 : LDA 7, 0(6) ; Return to caller
556 : LD 1, 1(5) ; Load parameter 'p' into R1
557 : ST 1, 4(5) ; Spill left operand at depth 0
558 : LD 1, 2(5) ; Load parameter 'q' into R1
559 : LD 2, 4(5) ; Restore left operand from depth 0
560 : DIV 1, 2, 1 ; R1 = left / right
561 : ST 1, 3(5) ; Store function result into frame return slot
562 : LD 6, 0(5) ; Load return address
563 : LDA 7, 0(6) ; Return to caller
564 : LD 1, 1(5) ; Load parameter 'p' into R1
565 : ST 1, 4(5) ; Spill left operand at depth 0
566 : LD 1, 2(5) ; Load parameter 'q' into R1
567 : LD 2, 4(5) ; Restore left operand from depth 0
568 : MUL 1, 2, 1 ; R1 = left * right
569 : ST 1, 3(5) ; Store function result into frame return slot
570 : LD 6, 0(5) ; Load return address
571 : LDA 7, 0(6) ; Return to caller
572 : LD 1, 1(5) ; Load parameter 'p' into R1
573 : ST 1, 4(5) ; Spill left operand at depth 0
574 : LD 1, 2(5) ; Load parameter 'q' into R1
575 : LD 2, 4(5) ; Restore left operand from depth 0
576 : SUB 1, 2, 1 ; R1 = left - right
577 : ST 1, 3(5) ; Store function result into frame return slot
578 : LD 6, 0(5) ; Load return address
579 : LDA 7, 0(6) ; Return to caller
580 : LD 1, 1(5) ; Load parameter 'p' into R1
581 : ST 1, 4(5) ; Spill left operand at depth 0
582 : LD 1, 2(5) ; Load parameter 'q' into R1
583 : LD 2, 4(5) ; Restore left operand from depth 0
584 : ADD 1, 2, 1 ; R1 = left + right
585 : ST 1, 3(5) ; Store function result into frame return slot
586 : LD 6, 0(5) ; Load return address
587 : LDA 7, 0(6) ; Return to caller
588 : LD 1, 1(5) ; Load parameter 'p' into R1
589 : JEQ 1, 592(0) ; If condition is false, jump to ELSE
590 : LD 1, 2(5) ; Load parameter 'q' into R1
591 : LDA 7, 593(0) ; Skip ELSE block
592 : LDC 1, 0(0) ; Load boolean-literal into R1
593 : ST 1, 3(5) ; Store function result into frame return slot
594 : LD 6, 0(5) ; Load return address
595 : LDA 7, 0(6) ; Return to caller
596 : LD 1, 1(5) ; Load parameter 'p' into R1
597 : ST 1, 4(5) ; Spill left operand at depth 0
598 : LD 1, 2(5) ; Load parameter 'q' into R1
599 : LD 2, 4(5) ; Restore left operand from depth 0
600 : ADD 1, 2, 1 ; R1 = left OR right
601 : ST 1, 3(5) ; Store function result into frame return slot
602 : LD 6, 0(5) ; Load return address
603 : LDA 7, 0(6) ; Return to caller
604 : LD 1, 1(5) ; Load parameter 'p' into R1
605 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
606 : ST 1, 1(2) ; Store argument 0 in callee
607 : LD 1, 2(5) ; Load parameter 'q' into R1
608 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
609 : ST 1, 2(2) ; Store argument 1 in callee
610 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
611 : LDA 6, 617(0) ; Return address
612 : ST 6, 0(2) ; Store return in callee frame
613 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
614 : LDC 3, 5(0) ; Callee frame size
615 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
616 : LDA 7, 650(0) ; Call LE
617 : LD 1, 3(5) ; Load callee result into R1
618 : LDC 2, 5(0) ; Callee frame size
619 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
620 : LDC 3, 4(0) ; Caller frame size
621 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
622 : LDC 2, 1(0) ; Load 1 into R2
623 : SUB 1, 2, 1 ; Logical NOT: 1 - R1
624 : ST 1, 3(5) ; Store function result into frame return slot
625 : LD 6, 0(5) ; Load return address
626 : LDA 7, 0(6) ; Return to caller
627 : LD 1, 1(5) ; Load parameter 'p' into R1
628 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
629 : ST 1, 1(2) ; Store argument 0 in callee
630 : LD 1, 2(5) ; Load parameter 'q' into R1
631 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
632 : ST 1, 2(2) ; Store argument 1 in callee
633 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
634 : LDA 6, 640(0) ; Return address
635 : ST 6, 0(2) ; Store return in callee frame
636 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
637 : LDC 3, 5(0) ; Callee frame size
638 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
639 : LDA 7, 727(0) ; Call LT
640 : LD 1, 3(5) ; Load callee result into R1
641 : LDC 2, 5(0) ; Callee frame size
642 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
643 : LDC 3, 4(0) ; Caller frame size
644 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
645 : LDC 2, 1(0) ; Load 1 into R2
646 : SUB 1, 2, 1 ; Logical NOT: 1 - R1
647 : ST 1, 3(5) ; Store function result into frame return slot
648 : LD 6, 0(5) ; Load return address
649 : LDA 7, 0(6) ; Return to caller
650 : LD 1, 1(5) ; Load parameter 'p' into R1
651 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
652 : ST 1, 1(2) ; Store argument 0 in callee
653 : LD 1, 2(5) ; Load parameter 'q' into R1
654 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
655 : ST 1, 2(2) ; Store argument 1 in callee
656 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
657 : LDA 6, 663(0) ; Return address
658 : ST 6, 0(2) ; Store return in callee frame
659 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
660 : LDC 3, 5(0) ; Callee frame size
661 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
662 : LDA 7, 727(0) ; Call LT
663 : LD 1, 3(5) ; Load callee result into R1
664 : LDC 2, 5(0) ; Callee frame size
665 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
666 : LDC 3, 5(0) ; Caller frame size
667 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
668 : ST 1, 4(5) ; Spill left operand at depth 0
669 : LD 1, 1(5) ; Load parameter 'p' into R1
670 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
671 : ST 1, 1(2) ; Store argument 0 in callee
672 : LD 1, 2(5) ; Load parameter 'q' into R1
673 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
674 : ST 1, 2(2) ; Store argument 1 in callee
675 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
676 : LDA 6, 682(0) ; Return address
677 : ST 6, 0(2) ; Store return in callee frame
678 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
679 : LDC 3, 5(0) ; Callee frame size
680 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
681 : LDA 7, 715(0) ; Call EQ
682 : LD 1, 3(5) ; Load callee result into R1
683 : LDC 2, 5(0) ; Callee frame size
684 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
685 : LDC 3, 5(0) ; Caller frame size
686 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
687 : LD 2, 4(5) ; Restore left operand from depth 0
688 : ADD 1, 2, 1 ; R1 = left OR right
689 : ST 1, 3(5) ; Store function result into frame return slot
690 : LD 6, 0(5) ; Load return address
691 : LDA 7, 0(6) ; Return to caller
692 : LD 1, 1(5) ; Load parameter 'p' into R1
693 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
694 : ST 1, 1(2) ; Store argument 0 in callee
695 : LD 1, 2(5) ; Load parameter 'q' into R1
696 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
697 : ST 1, 2(2) ; Store argument 1 in callee
698 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
699 : LDA 6, 705(0) ; Return address
700 : ST 6, 0(2) ; Store return in callee frame
701 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
702 : LDC 3, 5(0) ; Callee frame size
703 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
704 : LDA 7, 715(0) ; Call EQ
705 : LD 1, 3(5) ; Load callee result into R1
706 : LDC 2, 5(0) ; Callee frame size
707 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
708 : LDC 3, 4(0) ; Caller frame size
709 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
710 : LDC 2, 1(0) ; Load 1 into R2
711 : SUB 1, 2, 1 ; Logical NOT: 1 - R1
712 : ST 1, 3(5) ; Store function result into frame return slot
713 : LD 6, 0(5) ; Load return address
714 : LDA 7, 0(6) ; Return to caller
715 : LD 1, 1(5) ; Load parameter 'p' into R1
716 : ST 1, 4(5) ; Spill left operand at depth 0
717 : LD 1, 2(5) ; Load parameter 'q' into R1
718 : LD 2, 4(5) ; Restore left operand from depth 0
719 : SUB 1, 2, 1 ; left - right for equality check
720 : JEQ 1, 2(7) ; If R1 == 0, jump to true
721 : LDC 1, 0(0) ; false
722 : LDA 7, 1(7) ; skip setting true
723 : LDC 1, 1(0) ; true
724 : ST 1, 3(5) ; Store function result into frame return slot
725 : LD 6, 0(5) ; Load return address
726 : LDA 7, 0(6) ; Return to caller
727 : LD 1, 1(5) ; Load parameter 'p' into R1
728 : ST 1, 4(5) ; Spill left operand at depth 0
729 : LD 1, 2(5) ; Load parameter 'q' into R1
730 : LD 2, 4(5) ; Restore left operand from depth 0
731 : SUB 1, 2, 1 ; left - right for less-than check
732 : JLT 1, 2(7) ; If R1 < 0, jump to true
733 : LDC 1, 0(0) ; false
734 : LDA 7, 1(7) ; skip setting true
735 : LDC 1, 1(0) ; true
736 : ST 1, 3(5) ; Store function result into frame return slot
737 : LD 6, 0(5) ; Load return address
738 : LDA 7, 0(6) ; Return to caller
739 : LDC 1, 2147483647(0) ; Load integer-literal into R1
740 : SUB 1, 0, 1 ; Negate value in R1
741 : ST 1, 2(5) ; Spill left operand at depth 0
742 : LDC 1, 1(0) ; Load integer-literal into R1
743 : LD 2, 2(5) ; Restore left operand from depth 0
744 : SUB 1, 2, 1 ; R1 = left - right
745 : ST 1, 1(5) ; Store function result into frame return slot
746 : LD 6, 0(5) ; Load return address
747 : LDA 7, 0(6) ; Return to caller
748 : LDC 1, 2147483647(0) ; Load integer-literal into R1
749 : ST 1, 1(5) ; Store function result into frame return slot
750 : LD 6, 0(5) ; Load return address
751 : LDA 7, 0(6) ; Return to caller
