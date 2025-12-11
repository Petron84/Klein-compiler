0 : LDC 5, 1(0) ; Set DMEM pointer (R5) to main stack frame base
1 : ADD 4, 5, 0 ; Set top of caller frame (R4 := R5)
2 : LDA 6, 2(7) ; Calculate return address (PC + 2)
3 : ST 6, 0(5) ; Store return address in main frame
4 : LDA 7, 10(0) ; Branch to main function
5 : OUT 1, 0, 0 ; Return/print result from main in R1
6 : HALT 0, 0, 0 ; Terminate program
7 : OUT 1, 0, 0 ; Hardcoded print: output R1
8 : LD 6, 0(5) ; Load return address from current frame
9 : LDA 7, 0(6) ; Jump back to caller
10 : LDC 1, 2(0) ; Load integer-literal into R1
11 : ST 1, 2(5) ; Stage arg 0 in caller temp (P+2)
12 : LDA 4, 6(5) ; Callee base for arg copy
13 : LD 1, 2(5) ; Load staged arg 0 from caller temp
14 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
15 : LDC 1, 20(0) ; Load integer-literal into R1
16 : ST 1, 2(5) ; Stage arg 1 in caller temp (P+2)
17 : LDA 4, 6(5) ; Callee base for arg copy
18 : LD 1, 2(5) ; Load staged arg 1 from caller temp
19 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
20 : LDA 4, 6(5) ; Callee base for call
21 : LDA 6, 25(0) ; Return address
22 : ST 6, 0(4) ; Store return in callee frame
23 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
24 : LDA 7, 32(0) ; Call sumPrimes
25 : LD 1, 3(5) ; Load callee result into R1
26 : LDC 2, 6(0) ; Callee frame size
27 : SUB 5, 5, 2 ; Pop callee frame
28 : ST 1, 1(5) ; Store result into caller’s frame
29 : LD 1, 1(5) ; Load main return value into R1
30 : LD 6, 0(5) ; Load main return address
31 : LDA 7, 0(6) ; Return from main
32 : LD 1, 2(5) ; Load parameter 'b' into R1
33 : ST 1, 4(5) ; Spill left operand at depth 0
34 : LD 1, 1(5) ; Load parameter 'a' into R1
35 : LD 2, 4(5) ; Restore left operand from depth 0
36 : SUB 1, 2, 1 ; left - right for less-than check
37 : JLT 1, 2(7) ; If R1 < 0, jump to true
38 : LDC 1, 0(0) ; false
39 : LDA 7, 1(7) ; skip setting true
40 : LDC 1, 1(0) ; true
41 : JEQ 1, 44(0) ; If condition is false, jump to ELSE
42 : LDC 1, 0(0) ; Load integer-literal into R1
43 : LDA 7, 107(0) ; Skip ELSE block
44 : LD 1, 1(5) ; Load parameter 'a' into R1
45 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2)
46 : LDA 4, 4(5) ; Callee base for arg copy
47 : LD 1, 4(5) ; Load staged arg 0 from caller temp
48 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
49 : LDA 4, 4(5) ; Callee base for call
50 : LDA 6, 54(0) ; Return address
51 : ST 6, 0(4) ; Store return in callee frame
52 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
53 : LDA 7, 110(0) ; Call isPrime
54 : LD 1, 2(5) ; Load callee result into R1
55 : LDC 2, 4(0) ; Callee frame size
56 : SUB 5, 5, 2 ; Pop callee frame
57 : JEQ 1, 85(0) ; If condition is false, jump to ELSE
58 : LD 1, 1(5) ; Load parameter 'a' into R1
59 : ST 1, 4(5) ; Spill left operand at depth 0
60 : LD 1, 1(5) ; Load parameter 'a' into R1
61 : ST 1, 5(5) ; Spill left operand at depth 1
62 : LDC 1, 1(0) ; Load integer-literal into R1
63 : LD 2, 5(5) ; Restore left operand from depth 1
64 : ADD 1, 2, 1 ; R1 = left + right
65 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2)
66 : LDA 4, 6(5) ; Callee base for arg copy
67 : LD 1, 4(5) ; Load staged arg 0 from caller temp
68 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
69 : LD 1, 2(5) ; Load parameter 'b' into R1
70 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2)
71 : LDA 4, 6(5) ; Callee base for arg copy
72 : LD 1, 4(5) ; Load staged arg 1 from caller temp
73 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
74 : LDA 4, 6(5) ; Callee base for call
75 : LDA 6, 79(0) ; Return address
76 : ST 6, 0(4) ; Store return in callee frame
77 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
78 : LDA 7, 32(0) ; Call sumPrimes
79 : LD 1, 3(5) ; Load callee result into R1
80 : LDC 2, 6(0) ; Callee frame size
81 : SUB 5, 5, 2 ; Pop callee frame
82 : LD 2, 4(5) ; Restore left operand from depth 0
83 : ADD 1, 2, 1 ; R1 = left + right
84 : LDA 7, 107(0) ; Skip ELSE block
85 : LD 1, 1(5) ; Load parameter 'a' into R1
86 : ST 1, 4(5) ; Spill left operand at depth 0
87 : LDC 1, 1(0) ; Load integer-literal into R1
88 : LD 2, 4(5) ; Restore left operand from depth 0
89 : ADD 1, 2, 1 ; R1 = left + right
90 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2)
91 : LDA 4, 6(5) ; Callee base for arg copy
92 : LD 1, 4(5) ; Load staged arg 0 from caller temp
93 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
94 : LD 1, 2(5) ; Load parameter 'b' into R1
95 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2)
96 : LDA 4, 6(5) ; Callee base for arg copy
97 : LD 1, 4(5) ; Load staged arg 1 from caller temp
98 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
99 : LDA 4, 6(5) ; Callee base for call
100 : LDA 6, 104(0) ; Return address
101 : ST 6, 0(4) ; Store return in callee frame
102 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
103 : LDA 7, 32(0) ; Call sumPrimes
104 : LD 1, 3(5) ; Load callee result into R1
105 : LDC 2, 6(0) ; Callee frame size
106 : SUB 5, 5, 2 ; Pop callee frame
107 : ST 1, 3(5) ; Store function result into frame return slot
108 : LD 6, 0(5) ; Load return address
109 : LDA 7, 0(6) ; Return to caller
110 : LD 1, 1(5) ; Load parameter 'n' into R1
111 : ST 1, 3(5) ; Spill left operand at depth 0
112 : LDC 1, 2(0) ; Load integer-literal into R1
113 : LD 2, 3(5) ; Restore left operand from depth 0
114 : SUB 1, 2, 1 ; left - right for less-than check
115 : JLT 1, 2(7) ; If R1 < 0, jump to true
116 : LDC 1, 0(0) ; false
117 : LDA 7, 1(7) ; skip setting true
118 : LDC 1, 1(0) ; true
119 : JEQ 1, 122(0) ; If condition is false, jump to ELSE
120 : LDC 1, 0(0) ; Load boolean-literal into R1
121 : LDA 7, 198(0) ; Skip ELSE block
122 : LD 1, 1(5) ; Load parameter 'n' into R1
123 : ST 1, 3(5) ; Spill left operand at depth 0
124 : LDC 1, 2(0) ; Load integer-literal into R1
125 : LD 2, 3(5) ; Restore left operand from depth 0
126 : SUB 1, 2, 1 ; left - right for equality check
127 : JEQ 1, 2(7) ; If R1 == 0, jump to true
128 : LDC 1, 0(0) ; false
129 : LDA 7, 1(7) ; skip setting true
130 : LDC 1, 1(0) ; true
131 : JEQ 1, 134(0) ; If condition is false, jump to ELSE
132 : LDC 1, 1(0) ; Load boolean-literal into R1
133 : LDA 7, 198(0) ; Skip ELSE block
134 : LD 1, 1(5) ; Load parameter 'n' into R1
135 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2)
136 : LDA 4, 5(5) ; Callee base for arg copy
137 : LD 1, 3(5) ; Load staged arg 0 from caller temp
138 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
139 : LDC 1, 2(0) ; Load integer-literal into R1
140 : ST 1, 3(5) ; Stage arg 1 in caller temp (P+2)
141 : LDA 4, 5(5) ; Callee base for arg copy
142 : LD 1, 3(5) ; Load staged arg 1 from caller temp
143 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
144 : LDA 4, 5(5) ; Callee base for call
145 : LDA 6, 149(0) ; Return address
146 : ST 6, 0(4) ; Store return in callee frame
147 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
148 : LDA 7, 201(0) ; Call divisible
149 : LD 1, 3(5) ; Load callee result into R1
150 : LDC 2, 5(0) ; Callee frame size
151 : SUB 5, 5, 2 ; Pop callee frame
152 : ST 1, 3(5) ; Spill left operand at depth 0
153 : LD 1, 1(5) ; Load parameter 'n' into R1
154 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2)
155 : LDA 4, 5(5) ; Callee base for arg copy
156 : LD 1, 3(5) ; Load staged arg 0 from caller temp
157 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
158 : LDC 1, 3(0) ; Load integer-literal into R1
159 : ST 1, 3(5) ; Stage arg 1 in caller temp (P+2)
160 : LDA 4, 5(5) ; Callee base for arg copy
161 : LD 1, 3(5) ; Load staged arg 1 from caller temp
162 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
163 : LDA 4, 5(5) ; Callee base for call
164 : LDA 6, 168(0) ; Return address
165 : ST 6, 0(4) ; Store return in callee frame
166 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
167 : LDA 7, 201(0) ; Call divisible
168 : LD 1, 3(5) ; Load callee result into R1
169 : LDC 2, 5(0) ; Callee frame size
170 : SUB 5, 5, 2 ; Pop callee frame
171 : LD 2, 3(5) ; Restore left operand from depth 0
172 : ADD 1, 2, 1 ; R1 = left OR right
173 : ST 1, 3(5) ; Spill left operand at depth 0
174 : LD 1, 1(5) ; Load parameter 'n' into R1
175 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2)
176 : LDA 4, 5(5) ; Callee base for arg copy
177 : LD 1, 3(5) ; Load staged arg 0 from caller temp
178 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
179 : LDC 1, 5(0) ; Load integer-literal into R1
180 : ST 1, 3(5) ; Stage arg 1 in caller temp (P+2)
181 : LDA 4, 5(5) ; Callee base for arg copy
182 : LD 1, 3(5) ; Load staged arg 1 from caller temp
183 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
184 : LDA 4, 5(5) ; Callee base for call
185 : LDA 6, 189(0) ; Return address
186 : ST 6, 0(4) ; Store return in callee frame
187 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
188 : LDA 7, 201(0) ; Call divisible
189 : LD 1, 3(5) ; Load callee result into R1
190 : LDC 2, 5(0) ; Callee frame size
191 : SUB 5, 5, 2 ; Pop callee frame
192 : LD 2, 3(5) ; Restore left operand from depth 0
193 : ADD 1, 2, 1 ; R1 = left OR right
194 : JEQ 1, 197(0) ; If condition is false, jump to ELSE
195 : LDC 1, 0(0) ; Load boolean-literal into R1
196 : LDA 7, 198(0) ; Skip ELSE block
197 : LDC 1, 1(0) ; Load boolean-literal into R1
198 : ST 1, 2(5) ; Store function result into frame return slot
199 : LD 6, 0(5) ; Load return address
200 : LDA 7, 0(6) ; Return to caller
201 : LD 1, 1(5) ; Load parameter 'x' into R1
202 : ST 1, 4(5) ; Spill left operand at depth 0
203 : LD 1, 2(5) ; Load parameter 'y' into R1
204 : LD 2, 4(5) ; Restore left operand from depth 0
205 : DIV 1, 2, 1 ; R1 = left / right
206 : ST 1, 4(5) ; Spill left operand at depth 0
207 : LD 1, 2(5) ; Load parameter 'y' into R1
208 : LD 2, 4(5) ; Restore left operand from depth 0
209 : MUL 1, 2, 1 ; R1 = left * right
210 : ST 1, 4(5) ; Spill left operand at depth 0
211 : LD 1, 1(5) ; Load parameter 'x' into R1
212 : LD 2, 4(5) ; Restore left operand from depth 0
213 : SUB 1, 2, 1 ; left - right for equality check
214 : JEQ 1, 2(7) ; If R1 == 0, jump to true
215 : LDC 1, 0(0) ; false
216 : LDA 7, 1(7) ; skip setting true
217 : LDC 1, 1(0) ; true
218 : JEQ 1, 221(0) ; If condition is false, jump to ELSE
219 : LDC 1, 1(0) ; Load boolean-literal into R1
220 : LDA 7, 222(0) ; Skip ELSE block
221 : LDC 1, 0(0) ; Load boolean-literal into R1
222 : ST 1, 3(5) ; Store function result into frame return slot
223 : LD 6, 0(5) ; Load return address
224 : LDA 7, 0(6) ; Return to caller
