1 : LDC 5, 2(0) ;  Set DMEM pointer to main stack frame
2 : LD  2, 1(0) ;  Load CLI arg 1 into R2
3 : ST  2, 1(5) ;  Store the argument 1 into main frame
4 : LDA 6, 2(7) ;  Calculate return address
5 : ST  6, 0(5) ;  Store return address in main stack frame
6 : LDA 7, 14(0) ;  Load address of main IMEM block - branch to function
7 : OUT 1, 0, 0 ;  Return result
8 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
10 : OUT 1, 0, 0 ;  Hardcoded print function
11 : LD  6, 0(5) ;  Load return addess from stack frame.
12 : LDA 7, 0(6) ;  Jump to return address.
14 : LD  1, 1(5) ;  Load parameter 'n' into R1
15 : LDA 4, 4(5) ;  Base of callee frame
16 : ST  1, 1(4) ;  Store argument 0 into callee frame
17 : LDC 1, 1(0) ;  Load integer-literal into R1
18 : LDA 4, 4(5) ;  Base of callee frame
19 : ST  1, 2(4) ;  Store argument 1 into callee frame
20 : LDA 4, 4(5) ;  Base of callee frame
21 : LDA 6, 25(0) ;  Compute return address
22 : ST  6, 0(4) ;  Store RA in callee frame
23 : ADD 5, 4, 0 ;  Update pointer (enter callee)
24 : LDA 7, 179(0) ;  Call loopToN
25 : LD  1, 3(5) ;  Load callee return value into R1
26 : LDC 3, 4(0) ;  Load callee frame size
27 : SUB 5, 5, 3 ;  Restore pointer
28 : ST  1, 2(5) ;  Store result into current frame's return slot
29 : LD  1, 2(5) ;  Load return value into R1
30 : LD  6, 0(5) ;  Load return address for main function into R6
31 : LDA 7, 0(6) ;  Jump to return address of main function
34 : LD  1, 1(5) ;  Load parameter 'num' into R1
35 : ADD 2, 1, 0 ;  R2 = left operand
36 : LD  1, 2(5) ;  Load parameter 'den' into R1
37 : SUB 3, 2, 1 ;  delta = left - right
38 : JLT 3, 2(7) ;  If delta < 0 jump to TRUE
39 : LDC 1, 0(0) ;  FALSE
40 : LDA 7, 1(7) ;  Skip TRUE
41 : LDC 1, 1(0) ;  TRUE
42 : JEQ 1, 47(0) ;  If condition is false, jump to ELSE
44 : LD  1, 1(5) ;  Load parameter 'num' into R1
45 : LDA 7, 65(0) ;  Skip ELSE block
47 : LD  1, 1(5) ;  Load parameter 'num' into R1
48 : ADD 2, 1, 0 ;  R2 = left operand
49 : LD  1, 2(5) ;  Load parameter 'den' into R1
50 : SUB 3, 2, 1 ;  R3 = left - right
51 : ADD 1, 3, 0 ;  R1 = R3
52 : LDA 4, 4(5) ;  Base of callee frame
53 : ST  1, 1(4) ;  Store argument 0 into callee frame
54 : LD  1, 2(5) ;  Load parameter 'den' into R1
55 : LDA 4, 4(5) ;  Base of callee frame
56 : ST  1, 2(4) ;  Store argument 1 into callee frame
57 : LDA 4, 4(5) ;  Base of callee frame
58 : LDA 6, 62(0) ;  Compute return address
59 : ST  6, 0(4) ;  Store RA in callee frame
60 : ADD 5, 4, 0 ;  Update pointer (enter callee)
61 : LDA 7, 33(0) ;  Call remainder
62 : LD  1, 3(5) ;  Load callee return value into R1
63 : LDC 3, 4(0) ;  Load callee frame size
64 : SUB 5, 5, 3 ;  Restore pointer
65 : ST  1, 3(5) ;  Store function result into stack frame
66 : LD  6, 0(5) ;  Load return address
67 : LDA 7, 0(6) ;  Return to caller
69 : LD  1, 2(5) ;  Load parameter 'b' into R1
70 : LDA 4, 4(5) ;  Base of callee frame
71 : ST  1, 1(4) ;  Store argument 0 into callee frame
72 : LD  1, 1(5) ;  Load parameter 'a' into R1
73 : LDA 4, 4(5) ;  Base of callee frame
74 : ST  1, 2(4) ;  Store argument 1 into callee frame
75 : LDA 4, 4(5) ;  Base of callee frame
76 : LDA 6, 80(0) ;  Compute return address
77 : ST  6, 0(4) ;  Store RA in callee frame
78 : ADD 5, 4, 0 ;  Update pointer (enter callee)
79 : LDA 7, 33(0) ;  Call remainder
80 : LD  1, 3(5) ;  Load callee return value into R1
81 : LDC 3, 4(0) ;  Load callee frame size
82 : SUB 5, 5, 3 ;  Restore pointer
83 : ADD 2, 1, 0 ;  R2 = left operand
84 : LDC 1, 0(0) ;  Load integer-literal into R1
85 : SUB 3, 2, 1 ;  delta = left - right
86 : JEQ 3, 2(7) ;  If delta == 0 jump to TRUE
87 : LDC 1, 0(0) ;  FALSE
88 : LDA 7, 1(7) ;  Skip TRUE
89 : LDC 1, 1(0) ;  TRUE
90 : ST  1, 3(5) ;  Store function result into stack frame
91 : LD  6, 0(5) ;  Load return address
92 : LDA 7, 0(6) ;  Return to caller
94 : LD  1, 2(5) ;  Load parameter 'current' into R1
95 : LDA 4, 3(5) ;  Base of callee frame (print)
96 : LDA 6, 100(0) ;  Compute return address
97 : ST  6, 0(4) ;  Store RA in callee frame
98 : ADD 5, 4, 0 ;  Update pointer (enter callee)
99 : LDA 7, 10(0) ;  Call print
100 : LDC 3, 3(0) ;  Load callee frame size
101 : SUB 5, 5, 3 ;  Restore pointer
102 : LD  1, 1(5) ;  Load parameter 'n' into R1
103 : LDA 4, 4(5) ;  Base of callee frame
104 : ST  1, 1(4) ;  Store argument 0 into callee frame
105 : LD  1, 2(5) ;  Load parameter 'current' into R1
106 : ADD 2, 1, 0 ;  R2 = left operand
107 : LDC 1, 1(0) ;  Load integer-literal into R1
108 : ADD 3, 2, 1 ;  R3 = left + right
109 : ADD 1, 3, 0 ;  R1 = R3
110 : LDA 4, 4(5) ;  Base of callee frame
111 : ST  1, 2(4) ;  Store argument 1 into callee frame
112 : LDA 4, 4(5) ;  Base of callee frame
113 : LDA 6, 117(0) ;  Compute return address
114 : ST  6, 0(4) ;  Store RA in callee frame
115 : ADD 5, 4, 0 ;  Update pointer (enter callee)
116 : LDA 7, 179(0) ;  Call loopToN
117 : LD  1, 3(5) ;  Load callee return value into R1
118 : LDC 3, 4(0) ;  Load callee frame size
119 : SUB 5, 5, 3 ;  Restore pointer
120 : ST  1, 3(5) ;  Store function result into stack frame
121 : LD  6, 0(5) ;  Load return address
122 : LDA 7, 0(6) ;  Return to caller
125 : LD  1, 2(5) ;  Load parameter 'current' into R1
126 : LDA 4, 4(5) ;  Base of callee frame
127 : ST  1, 1(4) ;  Store argument 0 into callee frame
128 : LD  1, 1(5) ;  Load parameter 'n' into R1
129 : LDA 4, 4(5) ;  Base of callee frame
130 : ST  1, 2(4) ;  Store argument 1 into callee frame
131 : LDA 4, 4(5) ;  Base of callee frame
132 : LDA 6, 136(0) ;  Compute return address
133 : ST  6, 0(4) ;  Store RA in callee frame
134 : ADD 5, 4, 0 ;  Update pointer (enter callee)
135 : LDA 7, 69(0) ;  Call divides
136 : LD  1, 3(5) ;  Load callee return value into R1
137 : LDC 3, 4(0) ;  Load callee frame size
138 : SUB 5, 5, 3 ;  Restore pointer
139 : JEQ 1, 157(0) ;  If condition is false, jump to ELSE
141 : LD  1, 1(5) ;  Load parameter 'n' into R1
142 : LDA 4, 4(5) ;  Base of callee frame
143 : ST  1, 1(4) ;  Store argument 0 into callee frame
144 : LD  1, 2(5) ;  Load parameter 'current' into R1
145 : LDA 4, 4(5) ;  Base of callee frame
146 : ST  1, 2(4) ;  Store argument 1 into callee frame
147 : LDA 4, 4(5) ;  Base of callee frame
148 : LDA 6, 152(0) ;  Compute return address
149 : ST  6, 0(4) ;  Store RA in callee frame
150 : ADD 5, 4, 0 ;  Update pointer (enter callee)
151 : LDA 7, 94(0) ;  Call printAndLoop
152 : LD  1, 3(5) ;  Load callee return value into R1
153 : LDC 3, 4(0) ;  Load callee frame size
154 : SUB 5, 5, 3 ;  Restore pointer
155 : LDA 7, 175(0) ;  Skip ELSE block
157 : LD  1, 1(5) ;  Load parameter 'n' into R1
158 : LDA 4, 4(5) ;  Base of callee frame
159 : ST  1, 1(4) ;  Store argument 0 into callee frame
160 : LD  1, 2(5) ;  Load parameter 'current' into R1
161 : ADD 2, 1, 0 ;  R2 = left operand
162 : LDC 1, 1(0) ;  Load integer-literal into R1
163 : ADD 3, 2, 1 ;  R3 = left + right
164 : ADD 1, 3, 0 ;  R1 = R3
165 : LDA 4, 4(5) ;  Base of callee frame
166 : ST  1, 2(4) ;  Store argument 1 into callee frame
167 : LDA 4, 4(5) ;  Base of callee frame
168 : LDA 6, 172(0) ;  Compute return address
169 : ST  6, 0(4) ;  Store RA in callee frame
170 : ADD 5, 4, 0 ;  Update pointer (enter callee)
171 : LDA 7, 179(0) ;  Call loopToN
172 : LD  1, 3(5) ;  Load callee return value into R1
173 : LDC 3, 4(0) ;  Load callee frame size
174 : SUB 5, 5, 3 ;  Restore pointer
175 : ST  1, 3(5) ;  Store function result into stack frame
176 : LD  6, 0(5) ;  Load return address
177 : LDA 7, 0(6) ;  Return to caller
180 : LD  1, 1(5) ;  Load parameter 'n' into R1
181 : ADD 2, 1, 0 ;  R2 = left operand
182 : LD  1, 2(5) ;  Load parameter 'current' into R1
183 : SUB 3, 2, 1 ;  delta = left - right
184 : JEQ 3, 2(7) ;  If delta == 0 jump to TRUE
185 : LDC 1, 0(0) ;  FALSE
186 : LDA 7, 1(7) ;  Skip TRUE
187 : LDC 1, 1(0) ;  TRUE
188 : JEQ 1, 193(0) ;  If condition is false, jump to ELSE
190 : LD  1, 1(5) ;  Load parameter 'n' into R1
191 : LDA 7, 207(0) ;  Skip ELSE block
193 : LD  1, 1(5) ;  Load parameter 'n' into R1
194 : LDA 4, 4(5) ;  Base of callee frame
195 : ST  1, 1(4) ;  Store argument 0 into callee frame
196 : LD  1, 2(5) ;  Load parameter 'current' into R1
197 : LDA 4, 4(5) ;  Base of callee frame
198 : ST  1, 2(4) ;  Store argument 1 into callee frame
199 : LDA 4, 4(5) ;  Base of callee frame
200 : LDA 6, 204(0) ;  Compute return address
201 : ST  6, 0(4) ;  Store RA in callee frame
202 : ADD 5, 4, 0 ;  Update pointer (enter callee)
203 : LDA 7, 124(0) ;  Call testAndLoop
204 : LD  1, 3(5) ;  Load callee return value into R1
205 : LDC 3, 4(0) ;  Load callee frame size
206 : SUB 5, 5, 3 ;  Restore pointer
207 : ST  1, 3(5) ;  Store function result into stack frame
208 : LD  6, 0(5) ;  Load return address
209 : LDA 7, 0(6) ;  Return to caller
