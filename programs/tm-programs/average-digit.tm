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
10 : LDA  6, 30(0) ;  Load return address into R6
11 : ST   6, 0(5) ;  Store current return address into DMEM
12 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
13 : SUB  5, 5, 4 ;  Decrement memory offset
14 : LDC   3, 1022(0) ;  Load offset for parameter n into register 3
15 : LD  1, 0(3) ;  Load parameter n value into register 1
16 : ST   1, 0(5) ;  Store parameter into memory
17 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
18 : SUB  5, 5, 4 ;  Decrement memory offset
19 : LDC  1, 0(0) ;  Load integer-literal value into register 1
20 : ST   1, 0(5) ;  Store parameter into memory
21 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
22 : SUB  5, 5, 4 ;  Decrement memory offset
23 : LDC  1, 0(0) ;  Load integer-literal value into register 1
24 : ST   1, 0(5) ;  Store parameter into memory
25 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
26 : SUB  5, 5, 4 ;  Decrement memory offset
27 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
28 : SUB  5, 5, 4 ;  Decrement memory offset
29 : LDA  7, 119(0) ;  Load address of average_digit IMEM block - branch to function
30 : LD   1, 0(5) ;  Load return value from DMEM into register 1
31 : LDC  4, 5(0) ;  Load value of parameters + return value into temporary register 4
32 : ADD  5, 5, 4 ;  Increment memory offset
33 : LDC  5, 1021(0) ;  Store the memory location of main return value
34 : ST   1, 0(5) ;  Store return value of into DMEM
35 : LDC   3, 1020(0) ;  Load offset for parameter m into register 3
36 : LD  1, 0(3) ;  Load parameter m value into register 1
37 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
38 : SUB  5, 5, 4 ;  Decrement memory offset
39 : ST   1, 0(5) ;  Store left expression value into memory
40 : LDC   3, 1020(0) ;  Load offset for parameter m into register 3
41 : LD  1, 0(3) ;  Load parameter m value into register 1
42 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
43 : SUB  5, 5, 4 ;  Decrement memory offset
44 : ST   1, 0(5) ;  Store left expression value into memory
45 : LDC   3, 1019(0) ;  Load offset for parameter n into register 3
46 : LD  1, 0(3) ;  Load parameter n value into register 1
47 : LD   2, 0(5) ;  Load left expression value from memory into register 2
48 : ADD  5, 5, 4 ;  Increment memory offset
49 : DIV  1, 2, 1 ;  Divide left expression by right expression value
50 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
51 : SUB  5, 5, 4 ;  Decrement memory offset
52 : ST   1, 0(5) ;  Store left expression value into memory
53 : LDC   3, 1019(0) ;  Load offset for parameter n into register 3
54 : LD  1, 0(3) ;  Load parameter n value into register 1
55 : LD   2, 0(5) ;  Load left expression value from memory into register 2
56 : ADD  5, 5, 4 ;  Increment memory offset
57 : MUL  1, 2, 1 ;  Multiply left and right expression values
58 : LD   2, 0(5) ;  Load left expression value from memory into register 2
59 : ADD  5, 5, 4 ;  Increment memory offset
60 : SUB  1, 2, 1 ;  Subtract left expression from right expression value
61 : LDC  5, 1018(0) ;  Store the memory location of MOD return value
62 : ST   1, 0(5) ;  Store return value of into DMEM
63 : LDC  3, 1021(0) ;  Load return address for function MOD into register 3
64 : LD   6, 0(3) ;  Load return address into register 6
65 : LDA  7, 0(6) ;  Load return address back into register 7
66 : LDA  6, 79(0) ;  Load return address into R6
67 : ST   6, 0(5) ;  Store current return address into DMEM
68 : LDC   3, 1020(0) ;  Load offset for parameter sum into register 3
69 : LD  1, 0(3) ;  Load parameter sum value into register 1
70 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
71 : SUB  5, 5, 4 ;  Decrement memory offset
72 : ST   1, 0(5) ;  Store left expression value into memory
73 : LDC   3, 1019(0) ;  Load offset for parameter n into register 3
74 : LD  1, 0(3) ;  Load parameter n value into register 1
75 : LD   2, 0(5) ;  Load left expression value from memory into register 2
76 : ADD  5, 5, 4 ;  Increment memory offset
77 : DIV  1, 2, 1 ;  Divide left expression by right expression value
78 : LDA  7, 7(0) ;  Load address of print IMEM block - branch to function
79 : LDC  5, 1018(0) ;  Store the memory location of print_and_return return value
80 : ST   1, 0(5) ;  Store return value of into DMEM
81 : LDC  3, 1021(0) ;  Load return address for function print_and_return into register 3
82 : LD   6, 0(3) ;  Load return address into register 6
83 : LDA  7, 0(6) ;  Load return address back into register 7
84 : LDA  6, 107(0) ;  Load return address into R6
85 : ST   6, 0(5) ;  Store current return address into DMEM
86 : LDA  6, 103(0) ;  Load return address into R6
87 : ST   6, 0(5) ;  Store current return address into DMEM
88 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
89 : SUB  5, 5, 4 ;  Decrement memory offset
90 : LDC   3, 1020(0) ;  Load offset for parameter sum into register 3
91 : LD  1, 0(3) ;  Load parameter sum value into register 1
92 : ST   1, 0(5) ;  Store parameter into memory
93 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
94 : SUB  5, 5, 4 ;  Decrement memory offset
95 : LDC   3, 1019(0) ;  Load offset for parameter n into register 3
96 : LD  1, 0(3) ;  Load parameter n value into register 1
97 : ST   1, 0(5) ;  Store parameter into memory
98 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
99 : SUB  5, 5, 4 ;  Decrement memory offset
100 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
101 : SUB  5, 5, 4 ;  Decrement memory offset
102 : LDA  7, 35(0) ;  Load address of MOD IMEM block - branch to function
103 : LD   1, 0(5) ;  Load return value from DMEM into register 1
104 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
105 : ADD  5, 5, 4 ;  Increment memory offset
106 : LDA  7, 7(0) ;  Load address of print IMEM block - branch to function
107 : LDC  5, 1018(0) ;  Store the memory location of print_and_return return value
108 : ST   1, 0(5) ;  Store return value of into DMEM
109 : LDC  3, 1021(0) ;  Load return address for function print_and_return into register 3
110 : LD   6, 0(3) ;  Load return address into register 6
111 : LDA  7, 0(6) ;  Load return address back into register 7
112 : LDC   3, 1019(0) ;  Load offset for parameter n into register 3
113 : LD  1, 0(3) ;  Load parameter n value into register 1
114 : LDC  5, 1018(0) ;  Store the memory location of print_and_return return value
115 : ST   1, 0(5) ;  Store return value of into DMEM
116 : LDC  3, 1021(0) ;  Load return address for function print_and_return into register 3
117 : LD   6, 0(3) ;  Load return address into register 6
118 : LDA  7, 0(6) ;  Load return address back into register 7
119 : LDC   3, 1020(0) ;  Load offset for parameter n into register 3
120 : LD  1, 0(3) ;  Load parameter n value into register 1
121 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
122 : SUB  5, 5, 4 ;  Decrement memory offset
123 : ST   1, 0(5) ;  Store left expression value into memory
124 : LDC  1, 10(0) ;  Load integer-literal value into register 1
125 : LD   2, 0(5) ;  Load left expression value from memory into register 2
126 : ADD  5, 5, 4 ;  Increment memory offset
127 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for less-than check
128 : JLT  1, 2(7) ;  If Register 1 is negative, then jump to true handling
129 : LDC  1, 0(0) ;  Load false (0) into register 1
130 : LDA  7, 1(7) ;  Jump to end of less-than handling
131 : LDC  1, 1(0) ;  Load true (1) into register 1
132 : JEQ  1, 169(0) ;  If condition is false, skip to ELSE block
133 : LDA  6, 165(0) ;  Load return address into R6
134 : ST   6, 0(5) ;  Store current return address into DMEM
135 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
136 : SUB  5, 5, 4 ;  Decrement memory offset
137 : LDC   3, 1019(0) ;  Load offset for parameter sum into register 3
138 : LD  1, 0(3) ;  Load parameter sum value into register 1
139 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
140 : SUB  5, 5, 4 ;  Decrement memory offset
141 : ST   1, 0(5) ;  Store left expression value into memory
142 : LDC   3, 1020(0) ;  Load offset for parameter n into register 3
143 : LD  1, 0(3) ;  Load parameter n value into register 1
144 : LD   2, 0(5) ;  Load left expression value from memory into register 2
145 : ADD  5, 5, 4 ;  Increment memory offset
146 : ADD  1, 2, 1 ;  Add left and right expression values
147 : ST   1, 0(5) ;  Store parameter into memory
148 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
149 : SUB  5, 5, 4 ;  Decrement memory offset
150 : LDC   3, 1018(0) ;  Load offset for parameter i into register 3
151 : LD  1, 0(3) ;  Load parameter i value into register 1
152 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
153 : SUB  5, 5, 4 ;  Decrement memory offset
154 : ST   1, 0(5) ;  Store left expression value into memory
155 : LDC  1, 1(0) ;  Load integer-literal value into register 1
156 : LD   2, 0(5) ;  Load left expression value from memory into register 2
157 : ADD  5, 5, 4 ;  Increment memory offset
158 : ADD  1, 2, 1 ;  Add left and right expression values
159 : ST   1, 0(5) ;  Store parameter into memory
160 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
161 : SUB  5, 5, 4 ;  Decrement memory offset
162 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
163 : SUB  5, 5, 4 ;  Decrement memory offset
164 : LDA  7, 66(0) ;  Load address of print_and_return IMEM block - branch to function
165 : LD   1, 0(5) ;  Load return value from DMEM into register 1
166 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
167 : ADD  5, 5, 4 ;  Increment memory offset
168 : LDA  7, 233(0) ;  Skip the ELSE block
169 : LDA  6, 230(0) ;  Load return address into R6
170 : ST   6, 0(5) ;  Store current return address into DMEM
171 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
172 : SUB  5, 5, 4 ;  Decrement memory offset
173 : LDC   3, 1020(0) ;  Load offset for parameter n into register 3
174 : LD  1, 0(3) ;  Load parameter n value into register 1
175 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
176 : SUB  5, 5, 4 ;  Decrement memory offset
177 : ST   1, 0(5) ;  Store left expression value into memory
178 : LDC  1, 10(0) ;  Load integer-literal value into register 1
179 : LD   2, 0(5) ;  Load left expression value from memory into register 2
180 : ADD  5, 5, 4 ;  Increment memory offset
181 : DIV  1, 2, 1 ;  Divide left expression by right expression value
182 : ST   1, 0(5) ;  Store parameter into memory
183 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
184 : SUB  5, 5, 4 ;  Decrement memory offset
185 : LDC   3, 1019(0) ;  Load offset for parameter sum into register 3
186 : LD  1, 0(3) ;  Load parameter sum value into register 1
187 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
188 : SUB  5, 5, 4 ;  Decrement memory offset
189 : ST   1, 0(5) ;  Store left expression value into memory
190 : LDA  6, 206(0) ;  Load return address into R6
191 : ST   6, 0(5) ;  Store current return address into DMEM
192 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
193 : SUB  5, 5, 4 ;  Decrement memory offset
194 : LDC   3, 1020(0) ;  Load offset for parameter n into register 3
195 : LD  1, 0(3) ;  Load parameter n value into register 1
196 : ST   1, 0(5) ;  Store parameter into memory
197 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
198 : SUB  5, 5, 4 ;  Decrement memory offset
199 : LDC  1, 10(0) ;  Load integer-literal value into register 1
200 : ST   1, 0(5) ;  Store parameter into memory
201 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
202 : SUB  5, 5, 4 ;  Decrement memory offset
203 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
204 : SUB  5, 5, 4 ;  Decrement memory offset
205 : LDA  7, 35(0) ;  Load address of MOD IMEM block - branch to function
206 : LD   1, 0(5) ;  Load return value from DMEM into register 1
207 : LDC  4, 4(0) ;  Load value of parameters + return value into temporary register 4
208 : ADD  5, 5, 4 ;  Increment memory offset
209 : LD   2, 0(5) ;  Load left expression value from memory into register 2
210 : ADD  5, 5, 4 ;  Increment memory offset
211 : ADD  1, 2, 1 ;  Add left and right expression values
212 : ST   1, 0(5) ;  Store parameter into memory
213 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
214 : SUB  5, 5, 4 ;  Decrement memory offset
215 : LDC   3, 1018(0) ;  Load offset for parameter i into register 3
216 : LD  1, 0(3) ;  Load parameter i value into register 1
217 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
218 : SUB  5, 5, 4 ;  Decrement memory offset
219 : ST   1, 0(5) ;  Store left expression value into memory
220 : LDC  1, 1(0) ;  Load integer-literal value into register 1
221 : LD   2, 0(5) ;  Load left expression value from memory into register 2
222 : ADD  5, 5, 4 ;  Increment memory offset
223 : ADD  1, 2, 1 ;  Add left and right expression values
224 : ST   1, 0(5) ;  Store parameter into memory
225 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
226 : SUB  5, 5, 4 ;  Decrement memory offset
227 : LDC  4, 1(0) ;  Load value 1 in temporary register 4
228 : SUB  5, 5, 4 ;  Decrement memory offset
229 : LDA  7, 119(0) ;  Load address of average_digit IMEM block - branch to function
230 : LD   1, 0(5) ;  Load return value from DMEM into register 1
231 : LDC  4, 5(0) ;  Load value of parameters + return value into temporary register 4
232 : ADD  5, 5, 4 ;  Increment memory offset
233 : LDC  5, 1017(0) ;  Store the memory location of average_digit return value
234 : ST   1, 0(5) ;  Store return value of into DMEM
235 : LDC  3, 1021(0) ;  Load return address for function average_digit into register 3
236 : LD   6, 0(3) ;  Load return address into register 6
237 : LDA  7, 0(6) ;  Load return address back into register 7
238 : LDC  5, 1021(0) ;  Store the memory location of main return value
239 : ST   1, 0(5) ;  Store return value of into DMEM
240 : LD   1, 0(5) ;  Load Return Value from DMEM
241 : OUT  1, 0, 0 ;  Output value from register 1.
242 : HALT 0, 0, 0 ;  Terminate program execution.
