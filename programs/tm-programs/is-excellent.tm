0 : LDC  5, 2(0) ;  Set DMEM pointer to main stack frame
1 : LD   2, 1(0) ;  Load CLI arg 1 into register
2 : ST   2, 1(5) ;  Store the argument into stack frame
3 : LDA  6, 2(7) ;  Calculate return address
4 : ST   6, 0(5) ;  Store return address in main stack frame
5 : LDA  7, 11(0) ;  Load address of main IMEM block - branch to function
6 : OUT  1, 0, 0 ;  Return result
7 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
8 : OUT  1, 0, 0 ;  Hardcoded print function
9 : LD   6, 0(5) ;  Load return addess from stack frame.
10 : LDA  7, 0(6) ;  Jump to return address.
11 : LDA 4, 3(5) ; Base of callee frame
12 : LD   1, 1(5) ;  Load parameter 'n' into R1
13 : ST 1, 1(4) ; Argument 0
14 : LDA 6, 18(0) ; Return address
15 : ST 6, 0(4) ; Store return in callee frame
16 : ADD 5, 4, 0 ; Push callee frame
17 : LDA 7, 25(0) ; Call isExcellent
18 : LD 1, 2(5) ; Load function result
19 : LDC 2, 3(0) ; Caller frame size
20 : SUB 5, 5, 2 ; Pop back to caller
21 : ST 1, 2(5) ; Store result into caller’s frame
22 : LD   1, 2(5) ;  Load return value into register 1
23 : LD  6, 0(5) ;  Load return address for main function into register 6
24 : LDA  7, 0(6) ;  Jump to return address of main function
25 : LDA 4, 3(5) ; Base of callee frame
26 : LD   1, 1(5) ;  Load parameter 'n' into R1
27 : ST 1, 1(4) ; Argument 0
28 : LDA 4, 3(5) ; Base of callee frame
29 : LD   1, 1(5) ;  Load parameter 'n' into R1
30 : ST 1, 1(4) ; Argument 0
31 : LDA 6, 35(0) ; Return address
32 : ST 6, 0(4) ; Store return in callee frame
33 : ADD 5, 4, 0 ; Push callee frame
34 : LDA 7, 190(0) ; Call length
35 : LD 1, 2(5) ; Load function result
36 : LDC 2, 3(0) ; Caller frame size
37 : SUB 5, 5, 2 ; Pop back to caller
38 : ST 1, 2(4) ; Argument 1
39 : LDA 6, 43(0) ; Return address
40 : ST 6, 0(4) ; Store return in callee frame
41 : ADD 5, 4, 0 ; Push callee frame
42 : LDA 7, 49(0) ; Call isExcellentSwitch
43 : LD 1, 3(5) ; Load function result
44 : LDC 2, 3(0) ; Caller frame size
45 : SUB 5, 5, 2 ; Pop back to caller
46 : ST   1, 2(5) ;  Store function result into stack frame
47 : LD   6, 0(5) ;  Load return address
48 : LDA  7, 0(6) ;  Return to caller
49 : LDA 4, 4(5) ; Base of callee frame
50 : LD   1, 2(5) ;  Load parameter 'length' into R1
51 : ST 1, 1(4) ; Argument 0
52 : LDA 6, 56(0) ; Return address
53 : ST 6, 0(4) ; Store return in callee frame
54 : ADD 5, 4, 0 ; Push callee frame
55 : LDA 7, 223(0) ; Call ODD
56 : LD 1, 2(5) ; Load function result
57 : LDC 2, 4(0) ; Caller frame size
58 : SUB 5, 5, 2 ; Pop back to caller
59 : JEQ  1, 62(0) ;  If condition is false, jump to ELSE
60 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
61 : LDA  7, 100(0) ;  Skip ELSE block
62 : LD   1, 1(5) ;  Load parameter 'n' into R1
63 : ADD  3, 1, 0 ;  Store left operand into temporary register
64 : LDA 4, 4(5) ; Base of callee frame
65 : LDA 4, 4(5) ; Base of callee frame
66 : LD   1, 1(5) ;  Load parameter 'n' into R1
67 : ST 1, 1(4) ; Argument 0
68 : LDA 6, 72(0) ; Return address
69 : ST 6, 0(4) ; Store return in callee frame
70 : ADD 5, 4, 0 ; Push callee frame
71 : LDA 7, 158(0) ; Call a
72 : LD 1, 2(5) ; Load function result
73 : LDC 2, 4(0) ; Caller frame size
74 : SUB 5, 5, 2 ; Pop back to caller
75 : ST 1, 1(4) ; Argument 0
76 : LDA 4, 4(5) ; Base of callee frame
77 : LD   1, 1(5) ;  Load parameter 'n' into R1
78 : ST 1, 1(4) ; Argument 0
79 : LDA 6, 83(0) ; Return address
80 : ST 6, 0(4) ; Store return in callee frame
81 : ADD 5, 4, 0 ; Push callee frame
82 : LDA 7, 119(0) ; Call b
83 : LD 1, 2(5) ; Load function result
84 : LDC 2, 4(0) ; Caller frame size
85 : SUB 5, 5, 2 ; Pop back to caller
86 : ST 1, 2(4) ; Argument 1
87 : LDA 6, 91(0) ; Return address
88 : ST 6, 0(4) ; Store return in callee frame
89 : ADD 5, 4, 0 ; Push callee frame
90 : LDA 7, 103(0) ; Call excellentDiff
91 : LD 1, 3(5) ; Load function result
92 : LDC 2, 4(0) ; Caller frame size
93 : SUB 5, 5, 2 ; Pop back to caller
94 : ADD  2, 3, 0 ;  Restore left operand
95 : SUB  1, 2, 1 ;  left - right for equality check
96 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
97 : LDC  1, 0(0) ;  false
98 : LDA  7, 1(7) ;  skip setting true
99 : LDC  1, 1(0) ;  true
100 : ST   1, 3(5) ;  Store function result into stack frame
101 : LD   6, 0(5) ;  Load return address
102 : LDA  7, 0(6) ;  Return to caller
103 : LD   1, 2(5) ;  Load parameter 'b' into R1
104 : ADD  3, 1, 0 ;  Store left operand into temporary register
105 : LD   1, 2(5) ;  Load parameter 'b' into R1
106 : ADD  2, 3, 0 ;  Restore left operand
107 : MUL  1, 2, 1 ;  R1 = left * right
108 : ADD  3, 1, 0 ;  Store left operand into temporary register
109 : LD   1, 1(5) ;  Load parameter 'a' into R1
110 : ADD  3, 1, 0 ;  Store left operand into temporary register
111 : LD   1, 1(5) ;  Load parameter 'a' into R1
112 : ADD  2, 3, 0 ;  Restore left operand
113 : MUL  1, 2, 1 ;  R1 = left * right
114 : ADD  2, 3, 0 ;  Restore left operand
115 : SUB  1, 2, 1 ;  R1 = left - right
116 : ST   1, 3(5) ;  Store function result into stack frame
117 : LD   6, 0(5) ;  Load return address
118 : LDA  7, 0(6) ;  Return to caller
119 : LDA 4, 3(5) ; Base of callee frame
120 : LD   1, 1(5) ;  Load parameter 'n' into R1
121 : ST 1, 1(4) ; Argument 0
122 : LDA 4, 3(5) ; Base of callee frame
123 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
124 : ST 1, 1(4) ; Argument 0
125 : LDA 4, 3(5) ; Base of callee frame
126 : LD   1, 1(5) ;  Load parameter 'n' into R1
127 : ST 1, 1(4) ; Argument 0
128 : LDA 6, 132(0) ; Return address
129 : ST 6, 0(4) ; Store return in callee frame
130 : ADD 5, 4, 0 ; Push callee frame
131 : LDA 7, 190(0) ; Call length
132 : LD 1, 2(5) ; Load function result
133 : LDC 2, 3(0) ; Caller frame size
134 : SUB 5, 5, 2 ; Pop back to caller
135 : ADD  3, 1, 0 ;  Store left operand into temporary register
136 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
137 : ADD  2, 3, 0 ;  Restore left operand
138 : DIV  1, 2, 1 ;  R1 = left / right
139 : ST 1, 2(4) ; Argument 1
140 : LDA 6, 144(0) ; Return address
141 : ST 6, 0(4) ; Store return in callee frame
142 : ADD 5, 4, 0 ; Push callee frame
143 : LDA 7, 265(0) ; Call EXP
144 : LD 1, 3(5) ; Load function result
145 : LDC 2, 3(0) ; Caller frame size
146 : SUB 5, 5, 2 ; Pop back to caller
147 : ST 1, 2(4) ; Argument 1
148 : LDA 6, 152(0) ; Return address
149 : ST 6, 0(4) ; Store return in callee frame
150 : ADD 5, 4, 0 ; Push callee frame
151 : LDA 7, 300(0) ; Call MOD
152 : LD 1, 3(5) ; Load function result
153 : LDC 2, 3(0) ; Caller frame size
154 : SUB 5, 5, 2 ; Pop back to caller
155 : ST   1, 2(5) ;  Store function result into stack frame
156 : LD   6, 0(5) ;  Load return address
157 : LDA  7, 0(6) ;  Return to caller
158 : LD   1, 1(5) ;  Load parameter 'n' into R1
159 : ADD  3, 1, 0 ;  Store left operand into temporary register
160 : LDA 4, 3(5) ; Base of callee frame
161 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
162 : ST 1, 1(4) ; Argument 0
163 : LDA 4, 3(5) ; Base of callee frame
164 : LD   1, 1(5) ;  Load parameter 'n' into R1
165 : ST 1, 1(4) ; Argument 0
166 : LDA 6, 170(0) ; Return address
167 : ST 6, 0(4) ; Store return in callee frame
168 : ADD 5, 4, 0 ; Push callee frame
169 : LDA 7, 190(0) ; Call length
170 : LD 1, 2(5) ; Load function result
171 : LDC 2, 3(0) ; Caller frame size
172 : SUB 5, 5, 2 ; Pop back to caller
173 : ADD  3, 1, 0 ;  Store left operand into temporary register
174 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
175 : ADD  2, 3, 0 ;  Restore left operand
176 : DIV  1, 2, 1 ;  R1 = left / right
177 : ST 1, 2(4) ; Argument 1
178 : LDA 6, 182(0) ; Return address
179 : ST 6, 0(4) ; Store return in callee frame
180 : ADD 5, 4, 0 ; Push callee frame
181 : LDA 7, 265(0) ; Call EXP
182 : LD 1, 3(5) ; Load function result
183 : LDC 2, 3(0) ; Caller frame size
184 : SUB 5, 5, 2 ; Pop back to caller
185 : ADD  2, 3, 0 ;  Restore left operand
186 : DIV  1, 2, 1 ;  R1 = left / right
187 : ST   1, 2(5) ;  Store function result into stack frame
188 : LD   6, 0(5) ;  Load return address
189 : LDA  7, 0(6) ;  Return to caller
190 : LD   1, 1(5) ;  Load parameter 'n' into R1
191 : ADD  3, 1, 0 ;  Store left operand into temporary register
192 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
193 : ADD  2, 3, 0 ;  Restore left operand
194 : SUB  1, 2, 1 ;  left - right for less-than check
195 : JLT  1, 2(7) ;  If R1 < 0, jump to true
196 : LDC  1, 0(0) ;  false
197 : LDA  7, 1(7) ;  skip setting true
198 : LDC  1, 1(0) ;  true
199 : JEQ  1, 202(0) ;  If condition is false, jump to ELSE
200 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
201 : LDA  7, 220(0) ;  Skip ELSE block
202 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
203 : ADD  3, 1, 0 ;  Store left operand into temporary register
204 : LDA 4, 3(5) ; Base of callee frame
205 : LD   1, 1(5) ;  Load parameter 'n' into R1
206 : ADD  3, 1, 0 ;  Store left operand into temporary register
207 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
208 : ADD  2, 3, 0 ;  Restore left operand
209 : DIV  1, 2, 1 ;  R1 = left / right
210 : ST 1, 1(4) ; Argument 0
211 : LDA 6, 215(0) ; Return address
212 : ST 6, 0(4) ; Store return in callee frame
213 : ADD 5, 4, 0 ; Push callee frame
214 : LDA 7, 190(0) ; Call length
215 : LD 1, 2(5) ; Load function result
216 : LDC 2, 3(0) ; Caller frame size
217 : SUB 5, 5, 2 ; Pop back to caller
218 : ADD  2, 3, 0 ;  Restore left operand
219 : ADD  1, 2, 1 ;  R1 = left + right
220 : ST   1, 2(5) ;  Store function result into stack frame
221 : LD   6, 0(5) ;  Load return address
222 : LDA  7, 0(6) ;  Return to caller
223 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
224 : ADD  3, 1, 0 ;  Store left operand into temporary register
225 : LD   1, 1(5) ;  Load parameter 'n' into R1
226 : ADD  2, 3, 0 ;  Restore left operand
227 : SUB  1, 2, 1 ;  left - right for less-than check
228 : JLT  1, 2(7) ;  If R1 < 0, jump to true
229 : LDC  1, 0(0) ;  false
230 : LDA  7, 1(7) ;  skip setting true
231 : LDC  1, 1(0) ;  true
232 : JEQ  1, 251(0) ;  If condition is false, jump to ELSE
233 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
234 : ADD  3, 1, 0 ;  Store left operand into temporary register
235 : LD   1, 1(5) ;  Load parameter 'n' into R1
236 : ADD  3, 1, 0 ;  Store left operand into temporary register
237 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
238 : ADD  2, 3, 0 ;  Restore left operand
239 : DIV  1, 2, 1 ;  R1 = left / right
240 : ADD  2, 3, 0 ;  Restore left operand
241 : MUL  1, 2, 1 ;  R1 = left * right
242 : ADD  3, 1, 0 ;  Store left operand into temporary register
243 : LD   1, 1(5) ;  Load parameter 'n' into R1
244 : ADD  2, 3, 0 ;  Restore left operand
245 : SUB  1, 2, 1 ;  left - right for less-than check
246 : JLT  1, 2(7) ;  If R1 < 0, jump to true
247 : LDC  1, 0(0) ;  false
248 : LDA  7, 1(7) ;  skip setting true
249 : LDC  1, 1(0) ;  true
250 : LDA  7, 262(0) ;  Skip ELSE block
251 : LDA 4, 3(5) ; Base of callee frame
252 : LD   1, 1(5) ;  Load parameter 'n' into R1
253 : SUB  1, 0, 1 ;  Negate value in R1
254 : ST 1, 1(4) ; Argument 0
255 : LDA 6, 259(0) ; Return address
256 : ST 6, 0(4) ; Store return in callee frame
257 : ADD 5, 4, 0 ; Push callee frame
258 : LDA 7, 223(0) ; Call ODD
259 : LD 1, 2(5) ; Load function result
260 : LDC 2, 3(0) ; Caller frame size
261 : SUB 5, 5, 2 ; Pop back to caller
262 : ST   1, 2(5) ;  Store function result into stack frame
263 : LD   6, 0(5) ;  Load return address
264 : LDA  7, 0(6) ;  Return to caller
265 : LD   1, 2(5) ;  Load parameter 'n' into R1
266 : ADD  3, 1, 0 ;  Store left operand into temporary register
267 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
268 : ADD  2, 3, 0 ;  Restore left operand
269 : SUB  1, 2, 1 ;  left - right for equality check
270 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
271 : LDC  1, 0(0) ;  false
272 : LDA  7, 1(7) ;  skip setting true
273 : LDC  1, 1(0) ;  true
274 : JEQ  1, 277(0) ;  If condition is false, jump to ELSE
275 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
276 : LDA  7, 297(0) ;  Skip ELSE block
277 : LD   1, 1(5) ;  Load parameter 'm' into R1
278 : ADD  3, 1, 0 ;  Store left operand into temporary register
279 : LDA 4, 4(5) ; Base of callee frame
280 : LD   1, 1(5) ;  Load parameter 'm' into R1
281 : ST 1, 1(4) ; Argument 0
282 : LD   1, 2(5) ;  Load parameter 'n' into R1
283 : ADD  3, 1, 0 ;  Store left operand into temporary register
284 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
285 : ADD  2, 3, 0 ;  Restore left operand
286 : SUB  1, 2, 1 ;  R1 = left - right
287 : ST 1, 2(4) ; Argument 1
288 : LDA 6, 292(0) ; Return address
289 : ST 6, 0(4) ; Store return in callee frame
290 : ADD 5, 4, 0 ; Push callee frame
291 : LDA 7, 265(0) ; Call EXP
292 : LD 1, 3(5) ; Load function result
293 : LDC 2, 4(0) ; Caller frame size
294 : SUB 5, 5, 2 ; Pop back to caller
295 : ADD  2, 3, 0 ;  Restore left operand
296 : MUL  1, 2, 1 ;  R1 = left * right
297 : ST   1, 3(5) ;  Store function result into stack frame
298 : LD   6, 0(5) ;  Load return address
299 : LDA  7, 0(6) ;  Return to caller
300 : LD   1, 1(5) ;  Load parameter 'm' into R1
301 : ADD  3, 1, 0 ;  Store left operand into temporary register
302 : LD   1, 2(5) ;  Load parameter 'n' into R1
303 : ADD  3, 1, 0 ;  Store left operand into temporary register
304 : LD   1, 1(5) ;  Load parameter 'm' into R1
305 : ADD  3, 1, 0 ;  Store left operand into temporary register
306 : LD   1, 2(5) ;  Load parameter 'n' into R1
307 : ADD  2, 3, 0 ;  Restore left operand
308 : DIV  1, 2, 1 ;  R1 = left / right
309 : ADD  2, 3, 0 ;  Restore left operand
310 : MUL  1, 2, 1 ;  R1 = left * right
311 : ADD  2, 3, 0 ;  Restore left operand
312 : SUB  1, 2, 1 ;  R1 = left - right
313 : ST   1, 3(5) ;  Store function result into stack frame
314 : LD   6, 0(5) ;  Load return address
315 : LDA  7, 0(6) ;  Return to caller
