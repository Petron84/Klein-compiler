0 : LDC  3, 1(0) ;  Load target memory location for command line argument {index}
1 : LD   1, 0(3) ;  Load command line argument 1 into register 1
2 : ST   0, 0(3) ;  Replace DMEM[1] with 0
3 : ST   1, 0(5) ;  Store command line argument into MAIN stack frame
4 : LDC  4, 1(0) ;  Load value 1 in temp register 4
5 : SUB  5, 5, 4 ;  Decrement memory offset
6 : LDC  3, 2(0) ;  Load target memory location for command line argument {index}
7 : LD   1, 0(3) ;  Load command line argument 2 into register 1
8 : ST   0, 0(3) ;  Replace DMEM[2] with 0
9 : ST   1, 0(5) ;  Store command line argument into MAIN stack frame
10 : LDC  4, 2(0) ;  Load value 2 in temp register 4
11 : SUB  5, 5, 4 ;  Decrement memory offset
12 : LDA  7, 16(0) ;  Load address of main IMEM block - branch to function
13 :  OUT  1, 0, 0 ;  Hardcoded print function
14 :  LD   6, 0(5) ;  Load return addess from previous function call/stack frame.
15 :  LDA  7, 0(6) ;  Load address of previous function call into register 7.
16 : LDC   3, 1022(0) ;  Load offset for parameter publicKey into register 3
17 : LD  1, 0(3) ;  Load parameter publicKey value into register 1
18 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
19 : SUB  5, 5, 4 ;  Decrement memory offset
20 : ST   1, 0(5) ;  Store left expression value into memory
21 : LDC  1, 0(0) ;  Load integer-literal value into register 1
22 : LD   2, 0(5) ;  Load left expression value from memory into register 2
23 : ADD  5, 5, 4 ;  Increment memory offset
24 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for equality check
25 : JEQ  1, 2(7) ;  If Register 1 is 0, then jump to true handling
26 : LDC  1, 0(0) ;  Load false (0) into register 1
27 : LDA  7, 1(7) ;  Jump to end of equality handling
28 : LDC  1, 1(0) ;  Load true (1) into register 1
29 : JEQ  1, 49(0) ;  If condition is false, skip to ELSE block
30 : LDA  6, 45(0) ;  Load return address into R6
31 : ST   6, 0(5) ;  Store current return address into DMEM
32 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
33 : SUB  5, 5, 4 ;  Decrement memory offset
34 : LDC  1, 2147481647(0) ;  Load integer-literal value into register 1
35 : ST   1, 0(5) ;  Store parameter into memory
36 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
37 : SUB  5, 5, 4 ;  Decrement memory offset
38 : LDC  1, 2047483747(0) ;  Load integer-literal value into register 1
39 : ST   1, 0(5) ;  Store parameter into memory
40 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
41 : SUB  5, 5, 4 ;  Decrement memory offset
42 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
43 : SUB  5, 5, 4 ;  Decrement memory offset
44 : LDA  7, 225(0) ;  Load address of factor IMEM block - branch to function
45 : LD   1, 0(5) ;  Load return value from DMEM into register 1
46 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
47 : ADD  5, 5, 4 ;  Increment memory offset
48 : LDA  7, 69(0) ;  Skip the ELSE block
49 : LDA  6, 66(0) ;  Load return address into R6
50 : ST   6, 0(5) ;  Store current return address into DMEM
51 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
52 : SUB  5, 5, 4 ;  Decrement memory offset
53 : LDC   3, 1022(0) ;  Load offset for parameter publicKey into register 3
54 : LD  1, 0(3) ;  Load parameter publicKey value into register 1
55 : ST   1, 0(5) ;  Store parameter into memory
56 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
57 : SUB  5, 5, 4 ;  Decrement memory offset
58 : LDC   3, 1021(0) ;  Load offset for parameter privateKey into register 3
59 : LD  1, 0(3) ;  Load parameter privateKey value into register 1
60 : ST   1, 0(5) ;  Store parameter into memory
61 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
62 : SUB  5, 5, 4 ;  Decrement memory offset
63 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
64 : SUB  5, 5, 4 ;  Decrement memory offset
65 : LDA  7, 225(0) ;  Load address of factor IMEM block - branch to function
66 : LD   1, 0(5) ;  Load return value from DMEM into register 1
67 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
68 : ADD  5, 5, 4 ;  Increment memory offset
69 : LDC  5, 1020(0) ;  Store the memory location of main return value
70 : ST   1, 0(5) ;  Store return value of into DMEM
71 : LDC   3, 1019(0) ;  Load offset for parameter a into register 3
72 : LD  1, 0(3) ;  Load parameter a value into register 1
73 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
74 : SUB  5, 5, 4 ;  Decrement memory offset
75 : ST   1, 0(5) ;  Store left expression value into memory
76 : LDC   3, 1018(0) ;  Load offset for parameter b into register 3
77 : LD  1, 0(3) ;  Load parameter b value into register 1
78 : LD   2, 0(5) ;  Load left expression value from memory into register 2
79 : ADD  5, 5, 4 ;  Increment memory offset
80 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for less-than check
81 : JLT  1, 2(7) ;  If Register 1 is negative, then jump to true handling
82 : LDC  1, 0(0) ;  Load false (0) into register 1
83 : LDA  7, 1(7) ;  Jump to end of less-than handling
84 : LDC  1, 1(0) ;  Load true (1) into register 1
85 : JEQ  1, 89(0) ;  If condition is false, skip to ELSE block
86 : LDC   3, 1019(0) ;  Load offset for parameter a into register 3
87 : LD  1, 0(3) ;  Load parameter a value into register 1
88 : LDA  7, 117(0) ;  Skip the ELSE block
89 : LDA  6, 114(0) ;  Load return address into R6
90 : ST   6, 0(5) ;  Store current return address into DMEM
91 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
92 : SUB  5, 5, 4 ;  Decrement memory offset
93 : LDC   3, 1019(0) ;  Load offset for parameter a into register 3
94 : LD  1, 0(3) ;  Load parameter a value into register 1
95 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
96 : SUB  5, 5, 4 ;  Decrement memory offset
97 : ST   1, 0(5) ;  Store left expression value into memory
98 : LDC   3, 1018(0) ;  Load offset for parameter b into register 3
99 : LD  1, 0(3) ;  Load parameter b value into register 1
100 : LD   2, 0(5) ;  Load left expression value from memory into register 2
101 : ADD  5, 5, 4 ;  Increment memory offset
102 : SUB  1, 2, 1 ;  Subtract left expression from right expression value
103 : ST   1, 0(5) ;  Store parameter into memory
104 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
105 : SUB  5, 5, 4 ;  Decrement memory offset
106 : LDC   3, 1018(0) ;  Load offset for parameter b into register 3
107 : LD  1, 0(3) ;  Load parameter b value into register 1
108 : ST   1, 0(5) ;  Store parameter into memory
109 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
110 : SUB  5, 5, 4 ;  Decrement memory offset
111 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
112 : SUB  5, 5, 4 ;  Decrement memory offset
113 : LDA  7, 71(0) ;  Load address of remainder IMEM block - branch to function
114 : LD   1, 0(5) ;  Load return value from DMEM into register 1
115 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
116 : ADD  5, 5, 4 ;  Increment memory offset
117 : LDC  5, 1017(0) ;  Store the memory location of remainder return value
118 : ST   1, 0(5) ;  Store return value of into DMEM
119 : LDC  3, 1020(0) ;  Load return address for function remainder into register 3
120 : LD   6, 0(3) ;  Load return address into register 6
121 : LDA  7, 0(6) ;  Load return address back into register 7
122 : LDC   3, 1018(0) ;  Load offset for parameter b into register 3
123 : LD  1, 0(3) ;  Load parameter b value into register 1
124 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
125 : SUB  5, 5, 4 ;  Decrement memory offset
126 : ST   1, 0(5) ;  Store left expression value into memory
127 : LDC  1, 0(0) ;  Load integer-literal value into register 1
128 : LD   2, 0(5) ;  Load left expression value from memory into register 2
129 : ADD  5, 5, 4 ;  Increment memory offset
130 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for equality check
131 : JEQ  1, 2(7) ;  If Register 1 is 0, then jump to true handling
132 : LDC  1, 0(0) ;  Load false (0) into register 1
133 : LDA  7, 1(7) ;  Jump to end of equality handling
134 : LDC  1, 1(0) ;  Load true (1) into register 1
135 : JEQ  1, 139(0) ;  If condition is false, skip to ELSE block
136 : LDC   3, 1019(0) ;  Load offset for parameter a into register 3
137 : LD  1, 0(3) ;  Load parameter a value into register 1
138 : LDA  7, 177(0) ;  Skip the ELSE block
139 : LDA  6, 174(0) ;  Load return address into R6
140 : ST   6, 0(5) ;  Store current return address into DMEM
141 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
142 : SUB  5, 5, 4 ;  Decrement memory offset
143 : LDC   3, 1018(0) ;  Load offset for parameter b into register 3
144 : LD  1, 0(3) ;  Load parameter b value into register 1
145 : ST   1, 0(5) ;  Store parameter into memory
146 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
147 : SUB  5, 5, 4 ;  Decrement memory offset
148 : LDA  6, 165(0) ;  Load return address into R6
149 : ST   6, 0(5) ;  Store current return address into DMEM
150 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
151 : SUB  5, 5, 4 ;  Decrement memory offset
152 : LDC   3, 1019(0) ;  Load offset for parameter a into register 3
153 : LD  1, 0(3) ;  Load parameter a value into register 1
154 : ST   1, 0(5) ;  Store parameter into memory
155 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
156 : SUB  5, 5, 4 ;  Decrement memory offset
157 : LDC   3, 1018(0) ;  Load offset for parameter b into register 3
158 : LD  1, 0(3) ;  Load parameter b value into register 1
159 : ST   1, 0(5) ;  Store parameter into memory
160 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
161 : SUB  5, 5, 4 ;  Decrement memory offset
162 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
163 : SUB  5, 5, 4 ;  Decrement memory offset
164 : LDA  7, 71(0) ;  Load address of remainder IMEM block - branch to function
165 : LD   1, 0(5) ;  Load return value from DMEM into register 1
166 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
167 : ADD  5, 5, 4 ;  Increment memory offset
168 : ST   1, 0(5) ;  Store parameter into memory
169 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
170 : SUB  5, 5, 4 ;  Decrement memory offset
171 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
172 : SUB  5, 5, 4 ;  Decrement memory offset
173 : LDA  7, 122(0) ;  Load address of gcd IMEM block - branch to function
174 : LD   1, 0(5) ;  Load return value from DMEM into register 1
175 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
176 : ADD  5, 5, 4 ;  Increment memory offset
177 : LDC  5, 1017(0) ;  Store the memory location of gcd return value
178 : ST   1, 0(5) ;  Store return value of into DMEM
179 : LDC  3, 1020(0) ;  Load return address for function gcd into register 3
180 : LD   6, 0(3) ;  Load return address into register 6
181 : LDA  7, 0(6) ;  Load return address back into register 7
182 : LDA  6, 195(0) ;  Load return address into R6
183 : ST   6, 0(5) ;  Store current return address into DMEM
184 : LDC   3, 1019(0) ;  Load offset for parameter publicKey into register 3
185 : LD  1, 0(3) ;  Load parameter publicKey value into register 1
186 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
187 : SUB  5, 5, 4 ;  Decrement memory offset
188 : ST   1, 0(5) ;  Store left expression value into memory
189 : LDC   3, 1017(0) ;  Load offset for parameter commonFactor into register 3
190 : LD  1, 0(3) ;  Load parameter commonFactor value into register 1
191 : LD   2, 0(5) ;  Load left expression value from memory into register 2
192 : ADD  5, 5, 4 ;  Increment memory offset
193 : DIV  1, 2, 1 ;  Divide left expression by right expression value
194 : LDA  7, 13(0) ;  Load address of print IMEM block - branch to function
195 : LDC  5, 1016(0) ;  Store the memory location of displayAndPrint return value
196 : ST   1, 0(5) ;  Store return value of into DMEM
197 : LDC  3, 1020(0) ;  Load return address for function displayAndPrint into register 3
198 : LD   6, 0(3) ;  Load return address into register 6
199 : LDA  7, 0(6) ;  Load return address back into register 7
200 : LDA  6, 213(0) ;  Load return address into R6
201 : ST   6, 0(5) ;  Store current return address into DMEM
202 : LDC   3, 1018(0) ;  Load offset for parameter privateKey into register 3
203 : LD  1, 0(3) ;  Load parameter privateKey value into register 1
204 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
205 : SUB  5, 5, 4 ;  Decrement memory offset
206 : ST   1, 0(5) ;  Store left expression value into memory
207 : LDC   3, 1017(0) ;  Load offset for parameter commonFactor into register 3
208 : LD  1, 0(3) ;  Load parameter commonFactor value into register 1
209 : LD   2, 0(5) ;  Load left expression value from memory into register 2
210 : ADD  5, 5, 4 ;  Increment memory offset
211 : DIV  1, 2, 1 ;  Divide left expression by right expression value
212 : LDA  7, 13(0) ;  Load address of print IMEM block - branch to function
213 : LDC  5, 1016(0) ;  Store the memory location of displayAndPrint return value
214 : ST   1, 0(5) ;  Store return value of into DMEM
215 : LDC  3, 1020(0) ;  Load return address for function displayAndPrint into register 3
216 : LD   6, 0(3) ;  Load return address into register 6
217 : LDA  7, 0(6) ;  Load return address back into register 7
218 : LDC   3, 1017(0) ;  Load offset for parameter commonFactor into register 3
219 : LD  1, 0(3) ;  Load parameter commonFactor value into register 1
220 : LDC  5, 1016(0) ;  Store the memory location of displayAndPrint return value
221 : ST   1, 0(5) ;  Store return value of into DMEM
222 : LDC  3, 1020(0) ;  Load return address for function displayAndPrint into register 3
223 : LD   6, 0(3) ;  Load return address into register 6
224 : LDA  7, 0(6) ;  Load return address back into register 7
225 : LDA  6, 265(0) ;  Load return address into R6
226 : ST   6, 0(5) ;  Store current return address into DMEM
227 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
228 : SUB  5, 5, 4 ;  Decrement memory offset
229 : LDC   3, 1019(0) ;  Load offset for parameter publicKey into register 3
230 : LD  1, 0(3) ;  Load parameter publicKey value into register 1
231 : ST   1, 0(5) ;  Store parameter into memory
232 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
233 : SUB  5, 5, 4 ;  Decrement memory offset
234 : LDC   3, 1018(0) ;  Load offset for parameter privateKey into register 3
235 : LD  1, 0(3) ;  Load parameter privateKey value into register 1
236 : ST   1, 0(5) ;  Store parameter into memory
237 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
238 : SUB  5, 5, 4 ;  Decrement memory offset
239 : LDA  6, 256(0) ;  Load return address into R6
240 : ST   6, 0(5) ;  Store current return address into DMEM
241 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
242 : SUB  5, 5, 4 ;  Decrement memory offset
243 : LDC   3, 1019(0) ;  Load offset for parameter publicKey into register 3
244 : LD  1, 0(3) ;  Load parameter publicKey value into register 1
245 : ST   1, 0(5) ;  Store parameter into memory
246 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
247 : SUB  5, 5, 4 ;  Decrement memory offset
248 : LDC   3, 1018(0) ;  Load offset for parameter privateKey into register 3
249 : LD  1, 0(3) ;  Load parameter privateKey value into register 1
250 : ST   1, 0(5) ;  Store parameter into memory
251 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
252 : SUB  5, 5, 4 ;  Decrement memory offset
253 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
254 : SUB  5, 5, 4 ;  Decrement memory offset
255 : LDA  7, 122(0) ;  Load address of gcd IMEM block - branch to function
256 : LD   1, 0(5) ;  Load return value from DMEM into register 1
257 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
258 : ADD  5, 5, 4 ;  Increment memory offset
259 : ST   1, 0(5) ;  Store parameter into memory
260 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
261 : SUB  5, 5, 4 ;  Decrement memory offset
262 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
263 : SUB  5, 5, 4 ;  Decrement memory offset
264 : LDA  7, 182(0) ;  Load address of displayAndPrint IMEM block - branch to function
265 : LD   1, 0(5) ;  Load return value from DMEM into register 1
266 : LDC  4, 5(0) ;  Load value of parameters + return value into temporary register 4
267 : ADD  5, 5, 4 ;  Increment memory offset
268 : LDC  5, 1017(0) ;  Store the memory location of factor return value
269 : ST   1, 0(5) ;  Store return value of into DMEM
270 : LDC  3, 1020(0) ;  Load return address for function factor into register 3
271 : LD   6, 0(3) ;  Load return address into register 6
272 : LDA  7, 0(6) ;  Load return address back into register 7
273 : LDC  5, 1020(0) ;  Store the memory location of main return value
274 : ST   1, 0(5) ;  Store return value of into DMEM
275 : LD   1, 0(5) ;  Load Return Value from DMEM
276 : OUT  1, 0, 0 ;  Output value from register 1.
277 : HALT 0, 0, 0 ;  Terminate program execution.
