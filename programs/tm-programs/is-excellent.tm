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
12 : LDA 4, 3(5) ; Compute callee base from caller size
13 : LD 1, 1(5) ; Load parameter 'n' into R1
14 : ST 1, 1(4) ; Store argument 0 in callee frame
15 : LDA 6, 19(0) ; Return address
16 : ST 6, 0(4) ; Store return address into callee frame
17 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
18 : LDA 7, 26(0) ; Call isExcellent
19 : LD 1, 2(5) ; Load callee result into R1
20 : LDC 2, 3(0) ; Caller frame size
21 : SUB 5, 5, 2 ; Pop back to caller
22 : ST 1, 2(5) ; Store result into caller’s return slot
23 : LD 1, 2(5) ; Load main return value into R1
24 : LD 6, 0(5) ; Load main return address
25 : LDA 7, 0(6) ; Return from main
26 : LDA 4, 3(5) ; Compute callee base from caller size
27 : LD 1, 1(5) ; Load parameter 'n' into R1
28 : ST 1, 1(4) ; Store argument 0 in callee frame
29 : LDA 4, 3(5) ; Compute callee base from caller size
30 : LD 1, 1(5) ; Load parameter 'n' into R1
31 : ST 1, 1(4) ; Store argument 0 in callee frame
32 : LDA 6, 36(0) ; Return address
33 : ST 6, 0(4) ; Store return address into callee frame
34 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
35 : LDA 7, 191(0) ; Call length
36 : LD 1, 2(5) ; Load callee result into R1
37 : LDC 2, 3(0) ; Caller frame size
38 : SUB 5, 5, 2 ; Pop back to caller
39 : ST 1, 2(4) ; Store argument 1 in callee frame
40 : LDA 6, 44(0) ; Return address
41 : ST 6, 0(4) ; Store return address into callee frame
42 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
43 : LDA 7, 50(0) ; Call isExcellentSwitch
44 : LD 1, 3(5) ; Load callee result into R1
45 : LDC 2, 3(0) ; Caller frame size
46 : SUB 5, 5, 2 ; Pop back to caller
47 : ST 1, 2(5) ; Store function result into frame return slot
48 : LD 6, 0(5) ; Load return address
49 : LDA 7, 0(6) ; Return to caller
50 : LDA 4, 5(5) ; Compute callee base from caller size
51 : LD 1, 2(5) ; Load parameter 'length' into R1
52 : ST 1, 1(4) ; Store argument 0 in callee frame
53 : LDA 6, 57(0) ; Return address
54 : ST 6, 0(4) ; Store return address into callee frame
55 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
56 : LDA 7, 224(0) ; Call ODD
57 : LD 1, 2(5) ; Load callee result into R1
58 : LDC 2, 5(0) ; Caller frame size
59 : SUB 5, 5, 2 ; Pop back to caller
60 : JEQ 1, 63(0) ; If condition is false, jump to ELSE
61 : LDC 1, 0(0) ; Load boolean-literal into R1
62 : LDA 7, 101(0) ; Skip ELSE block
63 : LD 1, 1(5) ; Load parameter 'n' into R1
64 : ST 1, 4(5) ; Spill left operand at depth 0
65 : LDA 4, 5(5) ; Compute callee base from caller size
66 : LDA 4, 5(5) ; Compute callee base from caller size
67 : LD 1, 1(5) ; Load parameter 'n' into R1
68 : ST 1, 1(4) ; Store argument 0 in callee frame
69 : LDA 6, 73(0) ; Return address
70 : ST 6, 0(4) ; Store return address into callee frame
71 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
72 : LDA 7, 159(0) ; Call a
73 : LD 1, 2(5) ; Load callee result into R1
74 : LDC 2, 5(0) ; Caller frame size
75 : SUB 5, 5, 2 ; Pop back to caller
76 : ST 1, 1(4) ; Store argument 0 in callee frame
77 : LDA 4, 5(5) ; Compute callee base from caller size
78 : LD 1, 1(5) ; Load parameter 'n' into R1
79 : ST 1, 1(4) ; Store argument 0 in callee frame
80 : LDA 6, 84(0) ; Return address
81 : ST 6, 0(4) ; Store return address into callee frame
82 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
83 : LDA 7, 120(0) ; Call b
84 : LD 1, 2(5) ; Load callee result into R1
85 : LDC 2, 5(0) ; Caller frame size
86 : SUB 5, 5, 2 ; Pop back to caller
87 : ST 1, 2(4) ; Store argument 1 in callee frame
88 : LDA 6, 92(0) ; Return address
89 : ST 6, 0(4) ; Store return address into callee frame
90 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
91 : LDA 7, 104(0) ; Call excellentDiff
92 : LD 1, 3(5) ; Load callee result into R1
93 : LDC 2, 5(0) ; Caller frame size
94 : SUB 5, 5, 2 ; Pop back to caller
95 : LD 2, 4(5) ; Restore left operand from depth 0
96 : SUB 1, 2, 1 ; left - right for equality check
97 : JEQ 1, 2(7) ; If R1 == 0, jump to true
98 : LDC 1, 0(0) ; false
99 : LDA 7, 1(7) ; skip setting true
100 : LDC 1, 1(0) ; true
101 : ST 1, 3(5) ; Store function result into frame return slot
102 : LD 6, 0(5) ; Load return address
103 : LDA 7, 0(6) ; Return to caller
104 : LD 1, 2(5) ; Load parameter 'b' into R1
105 : ST 1, 4(5) ; Spill left operand at depth 0
106 : LD 1, 2(5) ; Load parameter 'b' into R1
107 : LD 2, 4(5) ; Restore left operand from depth 0
108 : MUL 1, 2, 1 ; R1 = left * right
109 : ST 1, 4(5) ; Spill left operand at depth 0
110 : LD 1, 1(5) ; Load parameter 'a' into R1
111 : ST 1, 5(5) ; Spill left operand at depth 1
112 : LD 1, 1(5) ; Load parameter 'a' into R1
113 : LD 2, 5(5) ; Restore left operand from depth 1
114 : MUL 1, 2, 1 ; R1 = left * right
115 : LD 2, 4(5) ; Restore left operand from depth 0
116 : SUB 1, 2, 1 ; R1 = left - right
117 : ST 1, 3(5) ; Store function result into frame return slot
118 : LD 6, 0(5) ; Load return address
119 : LDA 7, 0(6) ; Return to caller
120 : LDA 4, 4(5) ; Compute callee base from caller size
121 : LD 1, 1(5) ; Load parameter 'n' into R1
122 : ST 1, 1(4) ; Store argument 0 in callee frame
123 : LDA 4, 4(5) ; Compute callee base from caller size
124 : LDC 1, 10(0) ; Load integer-literal into R1
125 : ST 1, 1(4) ; Store argument 0 in callee frame
126 : LDA 4, 4(5) ; Compute callee base from caller size
127 : LD 1, 1(5) ; Load parameter 'n' into R1
128 : ST 1, 1(4) ; Store argument 0 in callee frame
129 : LDA 6, 133(0) ; Return address
130 : ST 6, 0(4) ; Store return address into callee frame
131 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
132 : LDA 7, 191(0) ; Call length
133 : LD 1, 2(5) ; Load callee result into R1
134 : LDC 2, 4(0) ; Caller frame size
135 : SUB 5, 5, 2 ; Pop back to caller
136 : ST 1, 3(5) ; Spill left operand at depth 0
137 : LDC 1, 2(0) ; Load integer-literal into R1
138 : LD 2, 3(5) ; Restore left operand from depth 0
139 : DIV 1, 2, 1 ; R1 = left / right
140 : ST 1, 2(4) ; Store argument 1 in callee frame
141 : LDA 6, 145(0) ; Return address
142 : ST 6, 0(4) ; Store return address into callee frame
143 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
144 : LDA 7, 266(0) ; Call EXP
145 : LD 1, 3(5) ; Load callee result into R1
146 : LDC 2, 4(0) ; Caller frame size
147 : SUB 5, 5, 2 ; Pop back to caller
148 : ST 1, 2(4) ; Store argument 1 in callee frame
149 : LDA 6, 153(0) ; Return address
150 : ST 6, 0(4) ; Store return address into callee frame
151 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
152 : LDA 7, 301(0) ; Call MOD
153 : LD 1, 3(5) ; Load callee result into R1
154 : LDC 2, 4(0) ; Caller frame size
155 : SUB 5, 5, 2 ; Pop back to caller
156 : ST 1, 2(5) ; Store function result into frame return slot
157 : LD 6, 0(5) ; Load return address
158 : LDA 7, 0(6) ; Return to caller
159 : LD 1, 1(5) ; Load parameter 'n' into R1
160 : ST 1, 3(5) ; Spill left operand at depth 0
161 : LDA 4, 5(5) ; Compute callee base from caller size
162 : LDC 1, 10(0) ; Load integer-literal into R1
163 : ST 1, 1(4) ; Store argument 0 in callee frame
164 : LDA 4, 5(5) ; Compute callee base from caller size
165 : LD 1, 1(5) ; Load parameter 'n' into R1
166 : ST 1, 1(4) ; Store argument 0 in callee frame
167 : LDA 6, 171(0) ; Return address
168 : ST 6, 0(4) ; Store return address into callee frame
169 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
170 : LDA 7, 191(0) ; Call length
171 : LD 1, 2(5) ; Load callee result into R1
172 : LDC 2, 5(0) ; Caller frame size
173 : SUB 5, 5, 2 ; Pop back to caller
174 : ST 1, 4(5) ; Spill left operand at depth 1
175 : LDC 1, 2(0) ; Load integer-literal into R1
176 : LD 2, 4(5) ; Restore left operand from depth 1
177 : DIV 1, 2, 1 ; R1 = left / right
178 : ST 1, 2(4) ; Store argument 1 in callee frame
179 : LDA 6, 183(0) ; Return address
180 : ST 6, 0(4) ; Store return address into callee frame
181 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
182 : LDA 7, 266(0) ; Call EXP
183 : LD 1, 3(5) ; Load callee result into R1
184 : LDC 2, 5(0) ; Caller frame size
185 : SUB 5, 5, 2 ; Pop back to caller
186 : LD 2, 3(5) ; Restore left operand from depth 0
187 : DIV 1, 2, 1 ; R1 = left / right
188 : ST 1, 2(5) ; Store function result into frame return slot
189 : LD 6, 0(5) ; Load return address
190 : LDA 7, 0(6) ; Return to caller
191 : LD 1, 1(5) ; Load parameter 'n' into R1
192 : ST 1, 3(5) ; Spill left operand at depth 0
193 : LDC 1, 10(0) ; Load integer-literal into R1
194 : LD 2, 3(5) ; Restore left operand from depth 0
195 : SUB 1, 2, 1 ; left - right for less-than check
196 : JLT 1, 2(7) ; If R1 < 0, jump to true
197 : LDC 1, 0(0) ; false
198 : LDA 7, 1(7) ; skip setting true
199 : LDC 1, 1(0) ; true
200 : JEQ 1, 203(0) ; If condition is false, jump to ELSE
201 : LDC 1, 1(0) ; Load integer-literal into R1
202 : LDA 7, 221(0) ; Skip ELSE block
203 : LDC 1, 1(0) ; Load integer-literal into R1
204 : ST 1, 3(5) ; Spill left operand at depth 0
205 : LDA 4, 5(5) ; Compute callee base from caller size
206 : LD 1, 1(5) ; Load parameter 'n' into R1
207 : ST 1, 4(5) ; Spill left operand at depth 1
208 : LDC 1, 10(0) ; Load integer-literal into R1
209 : LD 2, 4(5) ; Restore left operand from depth 1
210 : DIV 1, 2, 1 ; R1 = left / right
211 : ST 1, 1(4) ; Store argument 0 in callee frame
212 : LDA 6, 216(0) ; Return address
213 : ST 6, 0(4) ; Store return address into callee frame
214 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
215 : LDA 7, 191(0) ; Call length
216 : LD 1, 2(5) ; Load callee result into R1
217 : LDC 2, 5(0) ; Caller frame size
218 : SUB 5, 5, 2 ; Pop back to caller
219 : LD 2, 3(5) ; Restore left operand from depth 0
220 : ADD 1, 2, 1 ; R1 = left + right
221 : ST 1, 2(5) ; Store function result into frame return slot
222 : LD 6, 0(5) ; Load return address
223 : LDA 7, 0(6) ; Return to caller
224 : LDC 1, 0(0) ; Load integer-literal into R1
225 : ST 1, 3(5) ; Spill left operand at depth 0
226 : LD 1, 1(5) ; Load parameter 'n' into R1
227 : LD 2, 3(5) ; Restore left operand from depth 0
228 : SUB 1, 2, 1 ; left - right for less-than check
229 : JLT 1, 2(7) ; If R1 < 0, jump to true
230 : LDC 1, 0(0) ; false
231 : LDA 7, 1(7) ; skip setting true
232 : LDC 1, 1(0) ; true
233 : JEQ 1, 252(0) ; If condition is false, jump to ELSE
234 : LDC 1, 2(0) ; Load integer-literal into R1
235 : ST 1, 3(5) ; Spill left operand at depth 0
236 : LD 1, 1(5) ; Load parameter 'n' into R1
237 : ST 1, 4(5) ; Spill left operand at depth 1
238 : LDC 1, 2(0) ; Load integer-literal into R1
239 : LD 2, 4(5) ; Restore left operand from depth 1
240 : DIV 1, 2, 1 ; R1 = left / right
241 : LD 2, 3(5) ; Restore left operand from depth 0
242 : MUL 1, 2, 1 ; R1 = left * right
243 : ST 1, 3(5) ; Spill left operand at depth 0
244 : LD 1, 1(5) ; Load parameter 'n' into R1
245 : LD 2, 3(5) ; Restore left operand from depth 0
246 : SUB 1, 2, 1 ; left - right for less-than check
247 : JLT 1, 2(7) ; If R1 < 0, jump to true
248 : LDC 1, 0(0) ; false
249 : LDA 7, 1(7) ; skip setting true
250 : LDC 1, 1(0) ; true
251 : LDA 7, 263(0) ; Skip ELSE block
252 : LDA 4, 5(5) ; Compute callee base from caller size
253 : LD 1, 1(5) ; Load parameter 'n' into R1
254 : SUB 1, 0, 1 ; Negate value in R1
255 : ST 1, 1(4) ; Store argument 0 in callee frame
256 : LDA 6, 260(0) ; Return address
257 : ST 6, 0(4) ; Store return address into callee frame
258 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
259 : LDA 7, 224(0) ; Call ODD
260 : LD 1, 2(5) ; Load callee result into R1
261 : LDC 2, 5(0) ; Caller frame size
262 : SUB 5, 5, 2 ; Pop back to caller
263 : ST 1, 2(5) ; Store function result into frame return slot
264 : LD 6, 0(5) ; Load return address
265 : LDA 7, 0(6) ; Return to caller
266 : LD 1, 2(5) ; Load parameter 'n' into R1
267 : ST 1, 4(5) ; Spill left operand at depth 0
268 : LDC 1, 0(0) ; Load integer-literal into R1
269 : LD 2, 4(5) ; Restore left operand from depth 0
270 : SUB 1, 2, 1 ; left - right for equality check
271 : JEQ 1, 2(7) ; If R1 == 0, jump to true
272 : LDC 1, 0(0) ; false
273 : LDA 7, 1(7) ; skip setting true
274 : LDC 1, 1(0) ; true
275 : JEQ 1, 278(0) ; If condition is false, jump to ELSE
276 : LDC 1, 1(0) ; Load integer-literal into R1
277 : LDA 7, 298(0) ; Skip ELSE block
278 : LD 1, 1(5) ; Load parameter 'm' into R1
279 : ST 1, 4(5) ; Spill left operand at depth 0
280 : LDA 4, 6(5) ; Compute callee base from caller size
281 : LD 1, 1(5) ; Load parameter 'm' into R1
282 : ST 1, 1(4) ; Store argument 0 in callee frame
283 : LD 1, 2(5) ; Load parameter 'n' into R1
284 : ST 1, 5(5) ; Spill left operand at depth 1
285 : LDC 1, 1(0) ; Load integer-literal into R1
286 : LD 2, 5(5) ; Restore left operand from depth 1
287 : SUB 1, 2, 1 ; R1 = left - right
288 : ST 1, 2(4) ; Store argument 1 in callee frame
289 : LDA 6, 293(0) ; Return address
290 : ST 6, 0(4) ; Store return address into callee frame
291 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
292 : LDA 7, 266(0) ; Call EXP
293 : LD 1, 3(5) ; Load callee result into R1
294 : LDC 2, 6(0) ; Caller frame size
295 : SUB 5, 5, 2 ; Pop back to caller
296 : LD 2, 4(5) ; Restore left operand from depth 0
297 : MUL 1, 2, 1 ; R1 = left * right
298 : ST 1, 3(5) ; Store function result into frame return slot
299 : LD 6, 0(5) ; Load return address
300 : LDA 7, 0(6) ; Return to caller
301 : LD 1, 1(5) ; Load parameter 'm' into R1
302 : ST 1, 4(5) ; Spill left operand at depth 0
303 : LD 1, 2(5) ; Load parameter 'n' into R1
304 : ST 1, 5(5) ; Spill left operand at depth 1
305 : LD 1, 1(5) ; Load parameter 'm' into R1
306 : ST 1, 6(5) ; Spill left operand at depth 2
307 : LD 1, 2(5) ; Load parameter 'n' into R1
308 : LD 2, 6(5) ; Restore left operand from depth 2
309 : DIV 1, 2, 1 ; R1 = left / right
310 : LD 2, 5(5) ; Restore left operand from depth 1
311 : MUL 1, 2, 1 ; R1 = left * right
312 : LD 2, 4(5) ; Restore left operand from depth 0
313 : SUB 1, 2, 1 ; R1 = left - right
314 : ST 1, 3(5) ; Store function result into frame return slot
315 : LD 6, 0(5) ; Load return address
316 : LDA 7, 0(6) ; Return to caller
