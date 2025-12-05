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
11 : LDA 3, 3(5) ;  Advance DMEM pointer to callee frame 'isExcellent'
12 : LD   1, 1(5) ;  Load parameter 'n' into R1
13 : ST 1, 1(3) ;  Store argument 0 into callee frame
14 : LDA 6, 18(0)) ;  Compute return address
15 : ST 6, 0(3) ;  Store return address in callee frame
16 : ADD  5, 3, 0 ;  Update pointer
17 : LDA 7, 25(0) ;  Call isExcellent
18 : LD 1, 2(5) ;  Load callee return value into R1
19 : LDC  4, 3(0) ;  Load frame size
20 : SUB  5, 5, 4 ;  Restore pointer
21 : ST 1, 4(0) ;  Store function-call result into caller's return slot
22 : LD   1, 4(0) ;  Load return value into register 1
23 : LD  6, 2(0) ;  Load return address for main function into register 6
24 : LDA  7, 0(6) ;  Jump to return address of main function
25 : LDA 3, 4(5) ;  Advance DMEM pointer to callee frame 'isExcellentSwitch'
26 : LD   1, 1(5) ;  Load parameter 'n' into R1
27 : ST 1, 1(3) ;  Store argument 0 into callee frame
28 : LDA 3, 3(5) ;  Advance DMEM pointer to callee frame 'length'
29 : LD   1, 1(5) ;  Load parameter 'n' into R1
30 : ST 1, 1(3) ;  Store argument 0 into callee frame
31 : LDA 6, 35(0)) ;  Compute return address
32 : ST 6, 0(3) ;  Store return address in callee frame
33 : ADD  5, 3, 0 ;  Update pointer
34 : LDA 7, 183(0) ;  Call length
35 : LD 1, 2(5) ;  Load callee return value into R1
36 : LDC  4, 3(0) ;  Load frame size
37 : SUB  5, 5, 4 ;  Restore pointer
38 : ST 1, 2(3) ;  Store argument 1 into callee frame
39 : LDA 6, 43(0)) ;  Compute return address
40 : ST 6, 0(3) ;  Store return address in callee frame
41 : ADD  5, 3, 0 ;  Update pointer
42 : LDA 7, 49(0) ;  Call isExcellentSwitch
43 : LD 1, 3(5) ;  Load callee return value into R1
44 : LDC  4, 4(0) ;  Load frame size
45 : SUB  5, 5, 4 ;  Restore pointer
46 : ST   1, 2(5) ;  Store function result into stack frame
47 : LD   6, 0(5) ;  Load return address
48 : LDA  7, 0(6) ;  Return to caller
49 : LDA 3, 3(5) ;  Advance DMEM pointer to callee frame 'ODD'
50 : LD   1, 2(5) ;  Load parameter 'length' into R1
51 : ST 1, 1(3) ;  Store argument 0 into callee frame
52 : LDA 6, 56(0)) ;  Compute return address
53 : ST 6, 0(3) ;  Store return address in callee frame
54 : ADD  5, 3, 0 ;  Update pointer
55 : LDA 7, 213(0) ;  Call ODD
56 : LD 1, 2(5) ;  Load callee return value into R1
57 : LDC  4, 3(0) ;  Load frame size
58 : SUB  5, 5, 4 ;  Restore pointer
59 : JEQ  1, 62(0) ;  If condition is false, jump to ELSE
60 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
61 : LDA  7, 99(0) ;  Skip ELSE block
62 : LD   1, 1(5) ;  Load parameter 'n' into R1
63 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
64 : LDA 3, 4(5) ;  Advance DMEM pointer to callee frame 'excellentDiff'
65 : LDA 3, 3(5) ;  Advance DMEM pointer to callee frame 'a'
66 : LD   1, 1(5) ;  Load parameter 'n' into R1
67 : ST 1, 1(3) ;  Store argument 0 into callee frame
68 : LDA 6, 72(0)) ;  Compute return address
69 : ST 6, 0(3) ;  Store return address in callee frame
70 : ADD  5, 3, 0 ;  Update pointer
71 : LDA 7, 153(0) ;  Call a
72 : LD 1, 2(5) ;  Load callee return value into R1
73 : LDC  4, 3(0) ;  Load frame size
74 : SUB  5, 5, 4 ;  Restore pointer
75 : ST 1, 1(3) ;  Store argument 0 into callee frame
76 : LDA 3, 3(5) ;  Advance DMEM pointer to callee frame 'b'
77 : LD   1, 1(5) ;  Load parameter 'n' into R1
78 : ST 1, 1(3) ;  Store argument 0 into callee frame
79 : LDA 6, 83(0)) ;  Compute return address
80 : ST 6, 0(3) ;  Store return address in callee frame
81 : ADD  5, 3, 0 ;  Update pointer
82 : LDA 7, 115(0) ;  Call b
83 : LD 1, 2(5) ;  Load callee return value into R1
84 : LDC  4, 3(0) ;  Load frame size
85 : SUB  5, 5, 4 ;  Restore pointer
86 : ST 1, 2(3) ;  Store argument 1 into callee frame
87 : LDA 6, 91(0)) ;  Compute return address
88 : ST 6, 0(3) ;  Store return address in callee frame
89 : ADD  5, 3, 0 ;  Update pointer
90 : LDA 7, 102(0) ;  Call excellentDiff
91 : LD 1, 3(5) ;  Load callee return value into R1
92 : LDC  4, 4(0) ;  Load frame size
93 : SUB  5, 5, 4 ;  Restore pointer
94 : SUB  1, 2, 1 ;  left - right for equality check
95 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
96 : LDC  1, 0(0) ;  false
97 : LDA  7, 1(7) ;  skip setting true
98 : LDC  1, 1(0) ;  true
99 : ST   1, 3(5) ;  Store function result into stack frame
100 : LD   6, 0(5) ;  Load return address
101 : LDA  7, 0(6) ;  Return to caller
102 : LD   1, 2(5) ;  Load parameter 'b' into R1
103 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
104 : LD   1, 2(5) ;  Load parameter 'b' into R1
105 : MUL  1, 2, 1 ;  R1 = left * right
106 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
107 : LD   1, 1(5) ;  Load parameter 'a' into R1
108 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
109 : LD   1, 1(5) ;  Load parameter 'a' into R1
110 : MUL  1, 2, 1 ;  R1 = left * right
111 : SUB  1, 2, 1 ;  R1 = left - right
112 : ST   1, 3(5) ;  Store function result into stack frame
113 : LD   6, 0(5) ;  Load return address
114 : LDA  7, 0(6) ;  Return to caller
115 : LDA 3, 4(5) ;  Advance DMEM pointer to callee frame 'MOD'
116 : LD   1, 1(5) ;  Load parameter 'n' into R1
117 : ST 1, 1(3) ;  Store argument 0 into callee frame
118 : LDA 3, 4(5) ;  Advance DMEM pointer to callee frame 'EXP'
119 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
120 : ST 1, 1(3) ;  Store argument 0 into callee frame
121 : LDA 3, 3(5) ;  Advance DMEM pointer to callee frame 'length'
122 : LD   1, 1(5) ;  Load parameter 'n' into R1
123 : ST 1, 1(3) ;  Store argument 0 into callee frame
124 : LDA 6, 128(0)) ;  Compute return address
125 : ST 6, 0(3) ;  Store return address in callee frame
126 : ADD  5, 3, 0 ;  Update pointer
127 : LDA 7, 183(0) ;  Call length
128 : LD 1, 2(5) ;  Load callee return value into R1
129 : LDC  4, 3(0) ;  Load frame size
130 : SUB  5, 5, 4 ;  Restore pointer
131 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
132 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
133 : DIV  1, 2, 1 ;  R1 = left / right
134 : ST 1, 2(3) ;  Store argument 1 into callee frame
135 : LDA 6, 139(0)) ;  Compute return address
136 : ST 6, 0(3) ;  Store return address in callee frame
137 : ADD  5, 3, 0 ;  Update pointer
138 : LDA 7, 251(0) ;  Call EXP
139 : LD 1, 3(5) ;  Load callee return value into R1
140 : LDC  4, 4(0) ;  Load frame size
141 : SUB  5, 5, 4 ;  Restore pointer
142 : ST 1, 2(3) ;  Store argument 1 into callee frame
143 : LDA 6, 147(0)) ;  Compute return address
144 : ST 6, 0(3) ;  Store return address in callee frame
145 : ADD  5, 3, 0 ;  Update pointer
146 : LDA 7, 283(0) ;  Call MOD
147 : LD 1, 3(5) ;  Load callee return value into R1
148 : LDC  4, 4(0) ;  Load frame size
149 : SUB  5, 5, 4 ;  Restore pointer
150 : ST   1, 2(5) ;  Store function result into stack frame
151 : LD   6, 0(5) ;  Load return address
152 : LDA  7, 0(6) ;  Return to caller
153 : LD   1, 1(5) ;  Load parameter 'n' into R1
154 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
155 : LDA 3, 4(5) ;  Advance DMEM pointer to callee frame 'EXP'
156 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
157 : ST 1, 1(3) ;  Store argument 0 into callee frame
158 : LDA 3, 3(5) ;  Advance DMEM pointer to callee frame 'length'
159 : LD   1, 1(5) ;  Load parameter 'n' into R1
160 : ST 1, 1(3) ;  Store argument 0 into callee frame
161 : LDA 6, 165(0)) ;  Compute return address
162 : ST 6, 0(3) ;  Store return address in callee frame
163 : ADD  5, 3, 0 ;  Update pointer
164 : LDA 7, 183(0) ;  Call length
165 : LD 1, 2(5) ;  Load callee return value into R1
166 : LDC  4, 3(0) ;  Load frame size
167 : SUB  5, 5, 4 ;  Restore pointer
168 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
169 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
170 : DIV  1, 2, 1 ;  R1 = left / right
171 : ST 1, 2(3) ;  Store argument 1 into callee frame
172 : LDA 6, 176(0)) ;  Compute return address
173 : ST 6, 0(3) ;  Store return address in callee frame
174 : ADD  5, 3, 0 ;  Update pointer
175 : LDA 7, 251(0) ;  Call EXP
176 : LD 1, 3(5) ;  Load callee return value into R1
177 : LDC  4, 4(0) ;  Load frame size
178 : SUB  5, 5, 4 ;  Restore pointer
179 : DIV  1, 2, 1 ;  R1 = left / right
180 : ST   1, 2(5) ;  Store function result into stack frame
181 : LD   6, 0(5) ;  Load return address
182 : LDA  7, 0(6) ;  Return to caller
183 : LD   1, 1(5) ;  Load parameter 'n' into R1
184 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
185 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
186 : SUB  1, 2, 1 ;  left - right for less-than check
187 : JLT  1, 2(7) ;  If R1 < 0, jump to true
188 : LDC  1, 0(0) ;  false
189 : LDA  7, 1(7) ;  skip setting true
190 : LDC  1, 1(0) ;  true
191 : JEQ  1, 194(0) ;  If condition is false, jump to ELSE
192 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
193 : LDA  7, 210(0) ;  Skip ELSE block
194 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
195 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
196 : LDA 3, 3(5) ;  Advance DMEM pointer to callee frame 'length'
197 : LD   1, 1(5) ;  Load parameter 'n' into R1
198 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
199 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
200 : DIV  1, 2, 1 ;  R1 = left / right
201 : ST 1, 1(3) ;  Store argument 0 into callee frame
202 : LDA 6, 206(0)) ;  Compute return address
203 : ST 6, 0(3) ;  Store return address in callee frame
204 : ADD  5, 3, 0 ;  Update pointer
205 : LDA 7, 183(0) ;  Call length
206 : LD 1, 2(5) ;  Load callee return value into R1
207 : LDC  4, 3(0) ;  Load frame size
208 : SUB  5, 5, 4 ;  Restore pointer
209 : ADD  1, 2, 1 ;  R1 = left + right
210 : ST   1, 2(5) ;  Store function result into stack frame
211 : LD   6, 0(5) ;  Load return address
212 : LDA  7, 0(6) ;  Return to caller
213 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
214 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
215 : LD   1, 1(5) ;  Load parameter 'n' into R1
216 : SUB  1, 2, 1 ;  left - right for less-than check
217 : JLT  1, 2(7) ;  If R1 < 0, jump to true
218 : LDC  1, 0(0) ;  false
219 : LDA  7, 1(7) ;  skip setting true
220 : LDC  1, 1(0) ;  true
221 : JEQ  1, 237(0) ;  If condition is false, jump to ELSE
222 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
223 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
224 : LD   1, 1(5) ;  Load parameter 'n' into R1
225 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
226 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
227 : DIV  1, 2, 1 ;  R1 = left / right
228 : MUL  1, 2, 1 ;  R1 = left * right
229 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
230 : LD   1, 1(5) ;  Load parameter 'n' into R1
231 : SUB  1, 2, 1 ;  left - right for less-than check
232 : JLT  1, 2(7) ;  If R1 < 0, jump to true
233 : LDC  1, 0(0) ;  false
234 : LDA  7, 1(7) ;  skip setting true
235 : LDC  1, 1(0) ;  true
236 : LDA  7, 248(0) ;  Skip ELSE block
237 : LDA 3, 3(5) ;  Advance DMEM pointer to callee frame 'ODD'
238 : LD   1, 1(5) ;  Load parameter 'n' into R1
239 : SUB  1, 0, 1 ;  Negate value in R1
240 : ST 1, 1(3) ;  Store argument 0 into callee frame
241 : LDA 6, 245(0)) ;  Compute return address
242 : ST 6, 0(3) ;  Store return address in callee frame
243 : ADD  5, 3, 0 ;  Update pointer
244 : LDA 7, 213(0) ;  Call ODD
245 : LD 1, 2(5) ;  Load callee return value into R1
246 : LDC  4, 3(0) ;  Load frame size
247 : SUB  5, 5, 4 ;  Restore pointer
248 : ST   1, 2(5) ;  Store function result into stack frame
249 : LD   6, 0(5) ;  Load return address
250 : LDA  7, 0(6) ;  Return to caller
251 : LD   1, 2(5) ;  Load parameter 'n' into R1
252 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
253 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
254 : SUB  1, 2, 1 ;  left - right for equality check
255 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
256 : LDC  1, 0(0) ;  false
257 : LDA  7, 1(7) ;  skip setting true
258 : LDC  1, 1(0) ;  true
259 : JEQ  1, 262(0) ;  If condition is false, jump to ELSE
260 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
261 : LDA  7, 280(0) ;  Skip ELSE block
262 : LD   1, 1(5) ;  Load parameter 'm' into R1
263 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
264 : LDA 3, 4(5) ;  Advance DMEM pointer to callee frame 'EXP'
265 : LD   1, 1(5) ;  Load parameter 'm' into R1
266 : ST 1, 1(3) ;  Store argument 0 into callee frame
267 : LD   1, 2(5) ;  Load parameter 'n' into R1
268 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
269 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
270 : SUB  1, 2, 1 ;  R1 = left - right
271 : ST 1, 2(3) ;  Store argument 1 into callee frame
272 : LDA 6, 276(0)) ;  Compute return address
273 : ST 6, 0(3) ;  Store return address in callee frame
274 : ADD  5, 3, 0 ;  Update pointer
275 : LDA 7, 251(0) ;  Call EXP
276 : LD 1, 3(5) ;  Load callee return value into R1
277 : LDC  4, 4(0) ;  Load frame size
278 : SUB  5, 5, 4 ;  Restore pointer
279 : MUL  1, 2, 1 ;  R1 = left * right
280 : ST   1, 3(5) ;  Store function result into stack frame
281 : LD   6, 0(5) ;  Load return address
282 : LDA  7, 0(6) ;  Return to caller
283 : LD   1, 1(5) ;  Load parameter 'm' into R1
284 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
285 : LD   1, 2(5) ;  Load parameter 'n' into R1
286 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
287 : LD   1, 1(5) ;  Load parameter 'm' into R1
288 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
289 : LD   1, 2(5) ;  Load parameter 'n' into R1
290 : DIV  1, 2, 1 ;  R1 = left / right
291 : MUL  1, 2, 1 ;  R1 = left * right
292 : SUB  1, 2, 1 ;  R1 = left - right
293 : ST   1, 3(5) ;  Store function result into stack frame
294 : LD   6, 0(5) ;  Load return address
295 : LDA  7, 0(6) ;  Return to caller
