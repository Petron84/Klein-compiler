0 : LDC  3, 1(0) ;  Load target memory location for command line argument {index}
1 : LD   1, 0(3) ;  Load command line argument 1 into register 1
2 : ST   0, 0(3) ;  Replace DMEM[1] with 0
3 : ST   1, 0(5) ;  Store command line argument into MAIN stack frame
4 : LDC  4, 2(0) ;  Load value 2 in temp register 4
5 : SUB  5, 5, 4 ;  Decrement memory offset
6 : LDA  7, 10(0) ;  Load address of main IMEM block - branch to function
7 :  OUT  1, 0, 0 ;  Hardcoded print function
8 :  LD   6, 0(5) ;  Load return addess from previous function call/stack frame.
9 :  LDA  7, 0(6) ;  Load address of previous function call into register 7.
10 : LDA  6, 26(0) ;  Load return address into R6
11 : ST   6, 0(5) ;  Store current return address into DMEM
12 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
13 : SUB  5, 5, 4 ;  Decrement memory offset
14 : LDC   3, 1022(0) ;  Load offset for parameter n into register 3
15 : LD  1, 0(3) ;  Load parameter n value into register 1
16 : ST   1, 0(5) ;  Store parameter into memory
17 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
18 : SUB  5, 5, 4 ;  Decrement memory offset
19 : LDC  1, 1(0) ;  Load integer-literal value into register 1
20 : ST   1, 0(5) ;  Store parameter into memory
21 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
22 : SUB  5, 5, 4 ;  Decrement memory offset
23 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
24 : SUB  5, 5, 4 ;  Decrement memory offset
25 : LDA  7, 234(0) ;  Load address of loopToN IMEM block - branch to function
26 : LD   1, 0(5) ;  Load return value from DMEM into register 1
27 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
28 : ADD  5, 5, 4 ;  Increment memory offset
29 : LDC  5, 1021(0) ;  Store the memory location of main return value
30 : ST   1, 0(5) ;  Store return value of into DMEM
31 : LDC   3, 1020(0) ;  Load offset for parameter num into register 3
32 : LD  1, 0(3) ;  Load parameter num value into register 1
33 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
34 : SUB  5, 5, 4 ;  Decrement memory offset
35 : ST   1, 0(5) ;  Store left expression value into memory
36 : LDC   3, 1019(0) ;  Load offset for parameter den into register 3
37 : LD  1, 0(3) ;  Load parameter den value into register 1
38 : LD   2, 0(5) ;  Load left expression value from memory into register 2
39 : ADD  5, 5, 4 ;  Increment memory offset
40 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for less-than check
41 : JLT  1, 2(7) ;  If Register 1 is negative, then jump to true handling
42 : LDC  1, 0(0) ;  Load false (0) into register 1
43 : LDA  7, 1(7) ;  Jump to end of less-than handling
44 : LDC  1, 1(0) ;  Load true (1) into register 1
45 : JEQ  1, 49(0) ;  If condition is false, skip to ELSE block
46 : LDC   3, 1020(0) ;  Load offset for parameter num into register 3
47 : LD  1, 0(3) ;  Load parameter num value into register 1
48 : LDA  7, 77(0) ;  Skip the ELSE block
49 : LDA  6, 74(0) ;  Load return address into R6
50 : ST   6, 0(5) ;  Store current return address into DMEM
51 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
52 : SUB  5, 5, 4 ;  Decrement memory offset
53 : LDC   3, 1020(0) ;  Load offset for parameter num into register 3
54 : LD  1, 0(3) ;  Load parameter num value into register 1
55 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
56 : SUB  5, 5, 4 ;  Decrement memory offset
57 : ST   1, 0(5) ;  Store left expression value into memory
58 : LDC   3, 1019(0) ;  Load offset for parameter den into register 3
59 : LD  1, 0(3) ;  Load parameter den value into register 1
60 : LD   2, 0(5) ;  Load left expression value from memory into register 2
61 : ADD  5, 5, 4 ;  Increment memory offset
62 : SUB  1, 2, 1 ;  Subtract left expression from right expression value
63 : ST   1, 0(5) ;  Store parameter into memory
64 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
65 : SUB  5, 5, 4 ;  Decrement memory offset
66 : LDC   3, 1019(0) ;  Load offset for parameter den into register 3
67 : LD  1, 0(3) ;  Load parameter den value into register 1
68 : ST   1, 0(5) ;  Store parameter into memory
69 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
70 : SUB  5, 5, 4 ;  Decrement memory offset
71 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
72 : SUB  5, 5, 4 ;  Decrement memory offset
73 : LDA  7, 31(0) ;  Load address of remainder IMEM block - branch to function
74 : LD   1, 0(5) ;  Load return value from DMEM into register 1
75 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
76 : ADD  5, 5, 4 ;  Increment memory offset
77 : LDC  5, 1018(0) ;  Store the memory location of remainder return value
78 : ST   1, 0(5) ;  Store return value of into DMEM
79 : LDC  3, 1021(0) ;  Load return address for function remainder into register 3
80 : LD   6, 0(3) ;  Load return address into register 6
81 : LDA  7, 0(6) ;  Load return address back into register 7
82 : LDA  6, 99(0) ;  Load return address into R6
83 : ST   6, 0(5) ;  Store current return address into DMEM
84 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
85 : SUB  5, 5, 4 ;  Decrement memory offset
86 : LDC   3, 1019(0) ;  Load offset for parameter b into register 3
87 : LD  1, 0(3) ;  Load parameter b value into register 1
88 : ST   1, 0(5) ;  Store parameter into memory
89 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
90 : SUB  5, 5, 4 ;  Decrement memory offset
91 : LDC   3, 1020(0) ;  Load offset for parameter a into register 3
92 : LD  1, 0(3) ;  Load parameter a value into register 1
93 : ST   1, 0(5) ;  Store parameter into memory
94 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
95 : SUB  5, 5, 4 ;  Decrement memory offset
96 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
97 : SUB  5, 5, 4 ;  Decrement memory offset
98 : LDA  7, 31(0) ;  Load address of remainder IMEM block - branch to function
99 : LD   1, 0(5) ;  Load return value from DMEM into register 1
100 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
101 : ADD  5, 5, 4 ;  Increment memory offset
102 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
103 : SUB  5, 5, 4 ;  Decrement memory offset
104 : ST   1, 0(5) ;  Store left expression value into memory
105 : LDC  1, 0(0) ;  Load integer-literal value into register 1
106 : LD   2, 0(5) ;  Load left expression value from memory into register 2
107 : ADD  5, 5, 4 ;  Increment memory offset
108 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for equality check
109 : JEQ  1, 2(7) ;  If Register 1 is 0, then jump to true handling
110 : LDC  1, 0(0) ;  Load false (0) into register 1
111 : LDA  7, 1(7) ;  Jump to end of equality handling
112 : LDC  1, 1(0) ;  Load true (1) into register 1
113 : LDC  5, 1018(0) ;  Store the memory location of divides return value
114 : ST   1, 0(5) ;  Store return value of into DMEM
115 : LDC  3, 1021(0) ;  Load return address for function divides into register 3
116 : LD   6, 0(3) ;  Load return address into register 6
117 : LDA  7, 0(6) ;  Load return address back into register 7
118 : LDA  6, 123(0) ;  Load return address into R6
119 : ST   6, 0(5) ;  Store current return address into DMEM
120 : LDC   3, 1019(0) ;  Load offset for parameter current into register 3
121 : LD  1, 0(3) ;  Load parameter current value into register 1
122 : LDA  7, 7(0) ;  Load address of print IMEM block - branch to function
123 : LDC  5, 1018(0) ;  Store the memory location of printAndLoop return value
124 : ST   1, 0(5) ;  Store return value of into DMEM
125 : LDC  3, 1021(0) ;  Load return address for function printAndLoop into register 3
126 : LD   6, 0(3) ;  Load return address into register 6
127 : LDA  7, 0(6) ;  Load return address back into register 7
128 : LDA  6, 152(0) ;  Load return address into R6
129 : ST   6, 0(5) ;  Store current return address into DMEM
130 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
131 : SUB  5, 5, 4 ;  Decrement memory offset
132 : LDC   3, 1020(0) ;  Load offset for parameter n into register 3
133 : LD  1, 0(3) ;  Load parameter n value into register 1
134 : ST   1, 0(5) ;  Store parameter into memory
135 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
136 : SUB  5, 5, 4 ;  Decrement memory offset
137 : LDC   3, 1019(0) ;  Load offset for parameter current into register 3
138 : LD  1, 0(3) ;  Load parameter current value into register 1
139 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
140 : SUB  5, 5, 4 ;  Decrement memory offset
141 : ST   1, 0(5) ;  Store left expression value into memory
142 : LDC  1, 1(0) ;  Load integer-literal value into register 1
143 : LD   2, 0(5) ;  Load left expression value from memory into register 2
144 : ADD  5, 5, 4 ;  Increment memory offset
145 : ADD  1, 2, 1 ;  Add left and right expression values
146 : ST   1, 0(5) ;  Store parameter into memory
147 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
148 : SUB  5, 5, 4 ;  Decrement memory offset
149 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
150 : SUB  5, 5, 4 ;  Decrement memory offset
151 : LDA  7, 234(0) ;  Load address of loopToN IMEM block - branch to function
152 : LD   1, 0(5) ;  Load return value from DMEM into register 1
153 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
154 : ADD  5, 5, 4 ;  Increment memory offset
155 : LDC  5, 1018(0) ;  Store the memory location of printAndLoop return value
156 : ST   1, 0(5) ;  Store return value of into DMEM
157 : LDC  3, 1021(0) ;  Load return address for function printAndLoop into register 3
158 : LD   6, 0(3) ;  Load return address into register 6
159 : LDA  7, 0(6) ;  Load return address back into register 7
160 : LDA  6, 177(0) ;  Load return address into R6
161 : ST   6, 0(5) ;  Store current return address into DMEM
162 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
163 : SUB  5, 5, 4 ;  Decrement memory offset
164 : LDC   3, 1019(0) ;  Load offset for parameter current into register 3
165 : LD  1, 0(3) ;  Load parameter current value into register 1
166 : ST   1, 0(5) ;  Store parameter into memory
167 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
168 : SUB  5, 5, 4 ;  Decrement memory offset
169 : LDC   3, 1020(0) ;  Load offset for parameter n into register 3
170 : LD  1, 0(3) ;  Load parameter n value into register 1
171 : ST   1, 0(5) ;  Store parameter into memory
172 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
173 : SUB  5, 5, 4 ;  Decrement memory offset
174 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
175 : SUB  5, 5, 4 ;  Decrement memory offset
176 : LDA  7, 82(0) ;  Load address of divides IMEM block - branch to function
177 : LD   1, 0(5) ;  Load return value from DMEM into register 1
178 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
179 : ADD  5, 5, 4 ;  Increment memory offset
180 : JEQ  1, 202(0) ;  If condition is false, skip to ELSE block
181 : LDA  6, 198(0) ;  Load return address into R6
182 : ST   6, 0(5) ;  Store current return address into DMEM
183 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
184 : SUB  5, 5, 4 ;  Decrement memory offset
185 : LDC   3, 1020(0) ;  Load offset for parameter n into register 3
186 : LD  1, 0(3) ;  Load parameter n value into register 1
187 : ST   1, 0(5) ;  Store parameter into memory
188 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
189 : SUB  5, 5, 4 ;  Decrement memory offset
190 : LDC   3, 1019(0) ;  Load offset for parameter current into register 3
191 : LD  1, 0(3) ;  Load parameter current value into register 1
192 : ST   1, 0(5) ;  Store parameter into memory
193 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
194 : SUB  5, 5, 4 ;  Decrement memory offset
195 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
196 : SUB  5, 5, 4 ;  Decrement memory offset
197 : LDA  7, 118(0) ;  Load address of printAndLoop IMEM block - branch to function
198 : LD   1, 0(5) ;  Load return value from DMEM into register 1
199 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
200 : ADD  5, 5, 4 ;  Increment memory offset
201 : LDA  7, 229(0) ;  Skip the ELSE block
202 : LDA  6, 226(0) ;  Load return address into R6
203 : ST   6, 0(5) ;  Store current return address into DMEM
204 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
205 : SUB  5, 5, 4 ;  Decrement memory offset
206 : LDC   3, 1020(0) ;  Load offset for parameter n into register 3
207 : LD  1, 0(3) ;  Load parameter n value into register 1
208 : ST   1, 0(5) ;  Store parameter into memory
209 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
210 : SUB  5, 5, 4 ;  Decrement memory offset
211 : LDC   3, 1019(0) ;  Load offset for parameter current into register 3
212 : LD  1, 0(3) ;  Load parameter current value into register 1
213 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
214 : SUB  5, 5, 4 ;  Decrement memory offset
215 : ST   1, 0(5) ;  Store left expression value into memory
216 : LDC  1, 1(0) ;  Load integer-literal value into register 1
217 : LD   2, 0(5) ;  Load left expression value from memory into register 2
218 : ADD  5, 5, 4 ;  Increment memory offset
219 : ADD  1, 2, 1 ;  Add left and right expression values
220 : ST   1, 0(5) ;  Store parameter into memory
221 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
222 : SUB  5, 5, 4 ;  Decrement memory offset
223 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
224 : SUB  5, 5, 4 ;  Decrement memory offset
225 : LDA  7, 234(0) ;  Load address of loopToN IMEM block - branch to function
226 : LD   1, 0(5) ;  Load return value from DMEM into register 1
227 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
228 : ADD  5, 5, 4 ;  Increment memory offset
229 : LDC  5, 1018(0) ;  Store the memory location of testAndLoop return value
230 : ST   1, 0(5) ;  Store return value of into DMEM
231 : LDC  3, 1021(0) ;  Load return address for function testAndLoop into register 3
232 : LD   6, 0(3) ;  Load return address into register 6
233 : LDA  7, 0(6) ;  Load return address back into register 7
234 : LDC   3, 1020(0) ;  Load offset for parameter n into register 3
235 : LD  1, 0(3) ;  Load parameter n value into register 1
236 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
237 : SUB  5, 5, 4 ;  Decrement memory offset
238 : ST   1, 0(5) ;  Store left expression value into memory
239 : LDC   3, 1019(0) ;  Load offset for parameter current into register 3
240 : LD  1, 0(3) ;  Load parameter current value into register 1
241 : LD   2, 0(5) ;  Load left expression value from memory into register 2
242 : ADD  5, 5, 4 ;  Increment memory offset
243 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for equality check
244 : JEQ  1, 2(7) ;  If Register 1 is 0, then jump to true handling
245 : LDC  1, 0(0) ;  Load false (0) into register 1
246 : LDA  7, 1(7) ;  Jump to end of equality handling
247 : LDC  1, 1(0) ;  Load true (1) into register 1
248 : JEQ  1, 252(0) ;  If condition is false, skip to ELSE block
249 : LDC   3, 1020(0) ;  Load offset for parameter n into register 3
250 : LD  1, 0(3) ;  Load parameter n value into register 1
251 : LDA  7, 272(0) ;  Skip the ELSE block
252 : LDA  6, 269(0) ;  Load return address into R6
253 : ST   6, 0(5) ;  Store current return address into DMEM
254 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
255 : SUB  5, 5, 4 ;  Decrement memory offset
256 : LDC   3, 1020(0) ;  Load offset for parameter n into register 3
257 : LD  1, 0(3) ;  Load parameter n value into register 1
258 : ST   1, 0(5) ;  Store parameter into memory
259 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
260 : SUB  5, 5, 4 ;  Decrement memory offset
261 : LDC   3, 1019(0) ;  Load offset for parameter current into register 3
262 : LD  1, 0(3) ;  Load parameter current value into register 1
263 : ST   1, 0(5) ;  Store parameter into memory
264 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
265 : SUB  5, 5, 4 ;  Decrement memory offset
266 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
267 : SUB  5, 5, 4 ;  Decrement memory offset
268 : LDA  7, 160(0) ;  Load address of testAndLoop IMEM block - branch to function
269 : LD   1, 0(5) ;  Load return value from DMEM into register 1
270 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
271 : ADD  5, 5, 4 ;  Increment memory offset
272 : LDC  5, 1018(0) ;  Store the memory location of loopToN return value
273 : ST   1, 0(5) ;  Store return value of into DMEM
274 : LDC  3, 1021(0) ;  Load return address for function loopToN into register 3
275 : LD   6, 0(3) ;  Load return address into register 6
276 : LDA  7, 0(6) ;  Load return address back into register 7
277 : LDC  5, 1021(0) ;  Store the memory location of main return value
278 : ST   1, 0(5) ;  Store return value of into DMEM
279 : LD   1, 0(5) ;  Load Return Value from DMEM
280 : OUT  1, 0, 0 ;  Output value from register 1.
281 : HALT 0, 0, 0 ;  Terminate program execution.
