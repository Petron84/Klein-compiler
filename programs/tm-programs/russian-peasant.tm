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
16 : LDA  6, 21(0) ;  Load return address into R6
17 : ST   6, 0(5) ;  Store current return address into DMEM
18 : LDC   3, 1022(0) ;  Load offset for parameter m into register 3
19 : LD  1, 0(3) ;  Load parameter m value into register 1
20 : LDA  7, 13(0) ;  Load address of print IMEM block - branch to function
21 : LDC  5, 1020(0) ;  Store the memory location of main return value
22 : ST   1, 0(5) ;  Store return value of into DMEM
23 : LDA  6, 40(0) ;  Load return address into R6
24 : ST   6, 0(5) ;  Store current return address into DMEM
25 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
26 : SUB  5, 5, 4 ;  Decrement memory offset
27 : LDC   3, 1022(0) ;  Load offset for parameter m into register 3
28 : LD  1, 0(3) ;  Load parameter m value into register 1
29 : ST   1, 0(5) ;  Store parameter into memory
30 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
31 : SUB  5, 5, 4 ;  Decrement memory offset
32 : LDC   3, 1021(0) ;  Load offset for parameter n into register 3
33 : LD  1, 0(3) ;  Load parameter n value into register 1
34 : ST   1, 0(5) ;  Store parameter into memory
35 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
36 : SUB  5, 5, 4 ;  Decrement memory offset
37 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
38 : SUB  5, 5, 4 ;  Decrement memory offset
39 : LDA  7, 45(0) ;  Load address of mult IMEM block - branch to function
40 : LD   1, 0(5) ;  Load return value from DMEM into register 1
41 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
42 : ADD  5, 5, 4 ;  Increment memory offset
43 : LDC  5, 1020(0) ;  Store the memory location of main return value
44 : ST   1, 0(5) ;  Store return value of into DMEM
45 : LDA  6, 66(0) ;  Load return address into R6
46 : ST   6, 0(5) ;  Store current return address into DMEM
47 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
48 : SUB  5, 5, 4 ;  Decrement memory offset
49 : LDC   3, 1019(0) ;  Load offset for parameter m into register 3
50 : LD  1, 0(3) ;  Load parameter m value into register 1
51 : ST   1, 0(5) ;  Store parameter into memory
52 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
53 : SUB  5, 5, 4 ;  Decrement memory offset
54 : LDC   3, 1018(0) ;  Load offset for parameter n into register 3
55 : LD  1, 0(3) ;  Load parameter n value into register 1
56 : ST   1, 0(5) ;  Store parameter into memory
57 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
58 : SUB  5, 5, 4 ;  Decrement memory offset
59 : LDC  1, 0(0) ;  Load integer-literal value into register 1
60 : ST   1, 0(5) ;  Store parameter into memory
61 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
62 : SUB  5, 5, 4 ;  Decrement memory offset
63 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
64 : SUB  5, 5, 4 ;  Decrement memory offset
65 : LDA  7, 74(0) ;  Load address of multWithAccum IMEM block - branch to function
66 : LD   1, 0(5) ;  Load return value from DMEM into register 1
67 : LDC  4, 5(0) ;  Load value of parameters + return value into temporary register 4
68 : ADD  5, 5, 4 ;  Increment memory offset
69 : LDC  5, 1017(0) ;  Store the memory location of mult return value
70 : ST   1, 0(5) ;  Store return value of into DMEM
71 : LDC  3, 1020(0) ;  Load return address for function mult into register 3
72 : LD   6, 0(3) ;  Load return address into register 6
73 : LDA  7, 0(6) ;  Load return address back into register 7
74 : LDC   3, 1018(0) ;  Load offset for parameter n into register 3
75 : LD  1, 0(3) ;  Load parameter n value into register 1
76 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
77 : SUB  5, 5, 4 ;  Decrement memory offset
78 : ST   1, 0(5) ;  Store left expression value into memory
79 : LDC  1, 0(0) ;  Load integer-literal value into register 1
80 : LD   2, 0(5) ;  Load left expression value from memory into register 2
81 : ADD  5, 5, 4 ;  Increment memory offset
82 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for equality check
83 : JEQ  1, 2(7) ;  If Register 1 is 0, then jump to true handling
84 : LDC  1, 0(0) ;  Load false (0) into register 1
85 : LDA  7, 1(7) ;  Jump to end of equality handling
86 : LDC  1, 1(0) ;  Load true (1) into register 1
87 : JEQ  1, 91(0) ;  If condition is false, skip to ELSE block
88 : LDC   3, 1017(0) ;  Load offset for parameter accum into register 3
89 : LD  1, 0(3) ;  Load parameter accum value into register 1
90 : LDA  7, 209(0) ;  Skip the ELSE block
91 : LDA  6, 107(0) ;  Load return address into R6
92 : ST   6, 0(5) ;  Store current return address into DMEM
93 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
94 : SUB  5, 5, 4 ;  Decrement memory offset
95 : LDC   3, 1018(0) ;  Load offset for parameter n into register 3
96 : LD  1, 0(3) ;  Load parameter n value into register 1
97 : ST   1, 0(5) ;  Store parameter into memory
98 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
99 : SUB  5, 5, 4 ;  Decrement memory offset
100 : LDC  1, 2(0) ;  Load integer-literal value into register 1
101 : ST   1, 0(5) ;  Store parameter into memory
102 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
103 : SUB  5, 5, 4 ;  Decrement memory offset
104 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
105 : SUB  5, 5, 4 ;  Decrement memory offset
106 : LDA  7, 214(0) ;  Load address of MOD IMEM block - branch to function
107 : LD   1, 0(5) ;  Load return value from DMEM into register 1
108 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
109 : ADD  5, 5, 4 ;  Increment memory offset
110 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
111 : SUB  5, 5, 4 ;  Decrement memory offset
112 : ST   1, 0(5) ;  Store left expression value into memory
113 : LDC  1, 1(0) ;  Load integer-literal value into register 1
114 : LD   2, 0(5) ;  Load left expression value from memory into register 2
115 : ADD  5, 5, 4 ;  Increment memory offset
116 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for equality check
117 : JEQ  1, 2(7) ;  If Register 1 is 0, then jump to true handling
118 : LDC  1, 0(0) ;  Load false (0) into register 1
119 : LDA  7, 1(7) ;  Jump to end of equality handling
120 : LDC  1, 1(0) ;  Load true (1) into register 1
121 : JEQ  1, 170(0) ;  If condition is false, skip to ELSE block
122 : LDA  6, 166(0) ;  Load return address into R6
123 : ST   6, 0(5) ;  Store current return address into DMEM
124 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
125 : SUB  5, 5, 4 ;  Decrement memory offset
126 : LDC   3, 1019(0) ;  Load offset for parameter m into register 3
127 : LD  1, 0(3) ;  Load parameter m value into register 1
128 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
129 : SUB  5, 5, 4 ;  Decrement memory offset
130 : ST   1, 0(5) ;  Store left expression value into memory
131 : LDC  1, 2(0) ;  Load integer-literal value into register 1
132 : LD   2, 0(5) ;  Load left expression value from memory into register 2
133 : ADD  5, 5, 4 ;  Increment memory offset
134 : MUL  1, 2, 1 ;  Multiply left and right expression values
135 : ST   1, 0(5) ;  Store parameter into memory
136 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
137 : SUB  5, 5, 4 ;  Decrement memory offset
138 : LDC   3, 1018(0) ;  Load offset for parameter n into register 3
139 : LD  1, 0(3) ;  Load parameter n value into register 1
140 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
141 : SUB  5, 5, 4 ;  Decrement memory offset
142 : ST   1, 0(5) ;  Store left expression value into memory
143 : LDC  1, 2(0) ;  Load integer-literal value into register 1
144 : LD   2, 0(5) ;  Load left expression value from memory into register 2
145 : ADD  5, 5, 4 ;  Increment memory offset
146 : DIV  1, 2, 1 ;  Divide left expression by right expression value
147 : ST   1, 0(5) ;  Store parameter into memory
148 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
149 : SUB  5, 5, 4 ;  Decrement memory offset
150 : LDC   3, 1017(0) ;  Load offset for parameter accum into register 3
151 : LD  1, 0(3) ;  Load parameter accum value into register 1
152 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
153 : SUB  5, 5, 4 ;  Decrement memory offset
154 : ST   1, 0(5) ;  Store left expression value into memory
155 : LDC   3, 1019(0) ;  Load offset for parameter m into register 3
156 : LD  1, 0(3) ;  Load parameter m value into register 1
157 : LD   2, 0(5) ;  Load left expression value from memory into register 2
158 : ADD  5, 5, 4 ;  Increment memory offset
159 : ADD  1, 2, 1 ;  Add left and right expression values
160 : ST   1, 0(5) ;  Store parameter into memory
161 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
162 : SUB  5, 5, 4 ;  Decrement memory offset
163 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
164 : SUB  5, 5, 4 ;  Decrement memory offset
165 : LDA  7, 74(0) ;  Load address of multWithAccum IMEM block - branch to function
166 : LD   1, 0(5) ;  Load return value from DMEM into register 1
167 : LDC  4, 5(0) ;  Load value of parameters + return value into temporary register 4
168 : ADD  5, 5, 4 ;  Increment memory offset
169 : LDA  7, 209(0) ;  Skip the ELSE block
170 : LDA  6, 206(0) ;  Load return address into R6
171 : ST   6, 0(5) ;  Store current return address into DMEM
172 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
173 : SUB  5, 5, 4 ;  Decrement memory offset
174 : LDC   3, 1019(0) ;  Load offset for parameter m into register 3
175 : LD  1, 0(3) ;  Load parameter m value into register 1
176 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
177 : SUB  5, 5, 4 ;  Decrement memory offset
178 : ST   1, 0(5) ;  Store left expression value into memory
179 : LDC  1, 2(0) ;  Load integer-literal value into register 1
180 : LD   2, 0(5) ;  Load left expression value from memory into register 2
181 : ADD  5, 5, 4 ;  Increment memory offset
182 : MUL  1, 2, 1 ;  Multiply left and right expression values
183 : ST   1, 0(5) ;  Store parameter into memory
184 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
185 : SUB  5, 5, 4 ;  Decrement memory offset
186 : LDC   3, 1018(0) ;  Load offset for parameter n into register 3
187 : LD  1, 0(3) ;  Load parameter n value into register 1
188 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
189 : SUB  5, 5, 4 ;  Decrement memory offset
190 : ST   1, 0(5) ;  Store left expression value into memory
191 : LDC  1, 2(0) ;  Load integer-literal value into register 1
192 : LD   2, 0(5) ;  Load left expression value from memory into register 2
193 : ADD  5, 5, 4 ;  Increment memory offset
194 : DIV  1, 2, 1 ;  Divide left expression by right expression value
195 : ST   1, 0(5) ;  Store parameter into memory
196 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
197 : SUB  5, 5, 4 ;  Decrement memory offset
198 : LDC   3, 1017(0) ;  Load offset for parameter accum into register 3
199 : LD  1, 0(3) ;  Load parameter accum value into register 1
200 : ST   1, 0(5) ;  Store parameter into memory
201 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
202 : SUB  5, 5, 4 ;  Decrement memory offset
203 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
204 : SUB  5, 5, 4 ;  Decrement memory offset
205 : LDA  7, 74(0) ;  Load address of multWithAccum IMEM block - branch to function
206 : LD   1, 0(5) ;  Load return value from DMEM into register 1
207 : LDC  4, 5(0) ;  Load value of parameters + return value into temporary register 4
208 : ADD  5, 5, 4 ;  Increment memory offset
209 : LDC  5, 1016(0) ;  Store the memory location of multWithAccum return value
210 : ST   1, 0(5) ;  Store return value of into DMEM
211 : LDC  3, 1020(0) ;  Load return address for function multWithAccum into register 3
212 : LD   6, 0(3) ;  Load return address into register 6
213 : LDA  7, 0(6) ;  Load return address back into register 7
214 : LDC   3, 1019(0) ;  Load offset for parameter m into register 3
215 : LD  1, 0(3) ;  Load parameter m value into register 1
216 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
217 : SUB  5, 5, 4 ;  Decrement memory offset
218 : ST   1, 0(5) ;  Store left expression value into memory
219 : LDC   3, 1019(0) ;  Load offset for parameter m into register 3
220 : LD  1, 0(3) ;  Load parameter m value into register 1
221 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
222 : SUB  5, 5, 4 ;  Decrement memory offset
223 : ST   1, 0(5) ;  Store left expression value into memory
224 : LDC   3, 1018(0) ;  Load offset for parameter n into register 3
225 : LD  1, 0(3) ;  Load parameter n value into register 1
226 : LD   2, 0(5) ;  Load left expression value from memory into register 2
227 : ADD  5, 5, 4 ;  Increment memory offset
228 : DIV  1, 2, 1 ;  Divide left expression by right expression value
229 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
230 : SUB  5, 5, 4 ;  Decrement memory offset
231 : ST   1, 0(5) ;  Store left expression value into memory
232 : LDC   3, 1018(0) ;  Load offset for parameter n into register 3
233 : LD  1, 0(3) ;  Load parameter n value into register 1
234 : LD   2, 0(5) ;  Load left expression value from memory into register 2
235 : ADD  5, 5, 4 ;  Increment memory offset
236 : MUL  1, 2, 1 ;  Multiply left and right expression values
237 : LD   2, 0(5) ;  Load left expression value from memory into register 2
238 : ADD  5, 5, 4 ;  Increment memory offset
239 : SUB  1, 2, 1 ;  Subtract left expression from right expression value
240 : LDC  5, 1017(0) ;  Store the memory location of MOD return value
241 : ST   1, 0(5) ;  Store return value of into DMEM
242 : LDC  3, 1020(0) ;  Load return address for function MOD into register 3
243 : LD   6, 0(3) ;  Load return address into register 6
244 : LDA  7, 0(6) ;  Load return address back into register 7
245 : LDC  5, 1020(0) ;  Store the memory location of main return value
246 : ST   1, 0(5) ;  Store return value of into DMEM
247 : LD   1, 0(5) ;  Load Return Value from DMEM
248 : OUT  1, 0, 0 ;  Output value from register 1.
249 : HALT 0, 0, 0 ;  Terminate program execution.
