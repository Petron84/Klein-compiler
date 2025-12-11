0 : LDC 5, 3(0) ; Set DMEM pointer (R5) to main stack frame base
1 : ADD 4, 5, 0 ; Set top of caller frame (R4 := R5)
2 : LD 2, 1(0) ; Load CLI arg 1 into R2
3 : ST 2, 1(5) ; Store arg 1 into main frame parameter slot
4 : LD 2, 2(0) ; Load CLI arg 2 into R2
5 : ST 2, 2(5) ; Store arg 2 into main frame parameter slot
6 : LDA 6, 2(7) ; Calculate return address (PC + 2)
7 : ST 6, 0(5) ; Store return address in main frame
8 : LDA 7, 14(0) ; Branch to main function
9 : OUT 1, 0, 0 ; Return/print result from main in R1
10 : HALT 0, 0, 0 ; Terminate program
11 : OUT 1, 0, 0 ; Hardcoded print: output R1
12 : LD 6, 0(5) ; Load return address from current frame
13 : LDA 7, 0(6) ; Jump back to caller
14 : LD 1, 1(5) ; Load parameter 'publicKey' into R1
15 : ST 1, 4(5) ; Spill left operand at depth 0
16 : LDC 1, 0(0) ; Load integer-literal into R1
17 : LD 2, 4(5) ; Restore left operand from depth 0
18 : SUB 1, 2, 1 ; left - right for equality check
19 : JEQ 1, 2(7) ; If R1 == 0, jump to true
20 : LDC 1, 0(0) ; false
21 : LDA 7, 1(7) ; skip setting true
22 : LDC 1, 1(0) ; true
23 : JEQ 1, 44(0) ; If condition is false, jump to ELSE
24 : LDC 1, 2147481647(0) ; Load integer-literal into R1
25 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2)
26 : LDA 4, 4(5) ; Callee base for arg copy
27 : LD 1, 4(5) ; Load staged arg 0 from caller temp
28 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
29 : LDC 1, 2047483747(0) ; Load integer-literal into R1
30 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2)
31 : LDA 4, 4(5) ; Callee base for arg copy
32 : LD 1, 4(5) ; Load staged arg 1 from caller temp
33 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
34 : LDA 4, 4(5) ; Callee base for call
35 : LDA 6, 39(0) ; Return address
36 : ST 6, 0(4) ; Store return in callee frame
37 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
38 : LDA 7, 181(0) ; Call factor
39 : LD 1, 3(5) ; Load callee result into R1
40 : LDC 2, 4(0) ; Callee frame size
41 : SUB 5, 5, 2 ; Pop callee frame
42 : ST 1, 3(5) ; Store result into caller’s frame
43 : LDA 7, 63(0) ; Skip ELSE block
44 : LD 1, 1(5) ; Load parameter 'publicKey' into R1
45 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2)
46 : LDA 4, 4(5) ; Callee base for arg copy
47 : LD 1, 4(5) ; Load staged arg 0 from caller temp
48 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
49 : LD 1, 2(5) ; Load parameter 'privateKey' into R1
50 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2)
51 : LDA 4, 4(5) ; Callee base for arg copy
52 : LD 1, 4(5) ; Load staged arg 1 from caller temp
53 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
54 : LDA 4, 4(5) ; Callee base for call
55 : LDA 6, 59(0) ; Return address
56 : ST 6, 0(4) ; Store return in callee frame
57 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
58 : LDA 7, 181(0) ; Call factor
59 : LD 1, 3(5) ; Load callee result into R1
60 : LDC 2, 4(0) ; Callee frame size
61 : SUB 5, 5, 2 ; Pop callee frame
62 : ST 1, 3(5) ; Store result into caller’s frame
63 : LD 1, 3(5) ; Load main return value into R1
64 : LD 6, 0(5) ; Load main return address
65 : LDA 7, 0(6) ; Return from main
66 : LD 1, 1(5) ; Load parameter 'a' into R1
67 : ST 1, 4(5) ; Spill left operand at depth 0
68 : LD 1, 2(5) ; Load parameter 'b' into R1
69 : LD 2, 4(5) ; Restore left operand from depth 0
70 : SUB 1, 2, 1 ; left - right for less-than check
71 : JLT 1, 2(7) ; If R1 < 0, jump to true
72 : LDC 1, 0(0) ; false
73 : LDA 7, 1(7) ; skip setting true
74 : LDC 1, 1(0) ; true
75 : JEQ 1, 78(0) ; If condition is false, jump to ELSE
76 : LD 1, 1(5) ; Load parameter 'a' into R1
77 : LDA 7, 100(0) ; Skip ELSE block
78 : LD 1, 1(5) ; Load parameter 'a' into R1
79 : ST 1, 4(5) ; Spill left operand at depth 0
80 : LD 1, 2(5) ; Load parameter 'b' into R1
81 : LD 2, 4(5) ; Restore left operand from depth 0
82 : SUB 1, 2, 1 ; R1 = left - right
83 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2)
84 : LDA 4, 5(5) ; Callee base for arg copy
85 : LD 1, 4(5) ; Load staged arg 0 from caller temp
86 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
87 : LD 1, 2(5) ; Load parameter 'b' into R1
88 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2)
89 : LDA 4, 5(5) ; Callee base for arg copy
90 : LD 1, 4(5) ; Load staged arg 1 from caller temp
91 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
92 : LDA 4, 5(5) ; Callee base for call
93 : LDA 6, 97(0) ; Return address
94 : ST 6, 0(4) ; Store return in callee frame
95 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
96 : LDA 7, 66(0) ; Call remainder
97 : LD 1, 3(5) ; Load callee result into R1
98 : LDC 2, 5(0) ; Callee frame size
99 : SUB 5, 5, 2 ; Pop callee frame
100 : ST 1, 3(5) ; Store function result into frame return slot
101 : LD 6, 0(5) ; Load return address
102 : LDA 7, 0(6) ; Return to caller
103 : LD 1, 2(5) ; Load parameter 'b' into R1
104 : ST 1, 4(5) ; Spill left operand at depth 0
105 : LDC 1, 0(0) ; Load integer-literal into R1
106 : LD 2, 4(5) ; Restore left operand from depth 0
107 : SUB 1, 2, 1 ; left - right for equality check
108 : JEQ 1, 2(7) ; If R1 == 0, jump to true
109 : LDC 1, 0(0) ; false
110 : LDA 7, 1(7) ; skip setting true
111 : LDC 1, 1(0) ; true
112 : JEQ 1, 115(0) ; If condition is false, jump to ELSE
113 : LD 1, 1(5) ; Load parameter 'a' into R1
114 : LDA 7, 150(0) ; Skip ELSE block
115 : LD 1, 2(5) ; Load parameter 'b' into R1
116 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2)
117 : LDA 4, 5(5) ; Callee base for arg copy
118 : LD 1, 4(5) ; Load staged arg 0 from caller temp
119 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
120 : LD 1, 1(5) ; Load parameter 'a' into R1
121 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2)
122 : LDA 4, 5(5) ; Callee base for arg copy
123 : LD 1, 4(5) ; Load staged arg 0 from caller temp
124 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
125 : LD 1, 2(5) ; Load parameter 'b' into R1
126 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2)
127 : LDA 4, 5(5) ; Callee base for arg copy
128 : LD 1, 4(5) ; Load staged arg 1 from caller temp
129 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
130 : LDA 4, 5(5) ; Callee base for call
131 : LDA 6, 135(0) ; Return address
132 : ST 6, 0(4) ; Store return in callee frame
133 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
134 : LDA 7, 66(0) ; Call remainder
135 : LD 1, 3(5) ; Load callee result into R1
136 : LDC 2, 5(0) ; Callee frame size
137 : SUB 5, 5, 2 ; Pop callee frame
138 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2)
139 : LDA 4, 5(5) ; Callee base for arg copy
140 : LD 1, 4(5) ; Load staged arg 1 from caller temp
141 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
142 : LDA 4, 5(5) ; Callee base for call
143 : LDA 6, 147(0) ; Return address
144 : ST 6, 0(4) ; Store return in callee frame
145 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
146 : LDA 7, 103(0) ; Call gcd
147 : LD 1, 3(5) ; Load callee result into R1
148 : LDC 2, 5(0) ; Callee frame size
149 : SUB 5, 5, 2 ; Pop callee frame
150 : ST 1, 3(5) ; Store function result into frame return slot
151 : LD 6, 0(5) ; Load return address
152 : LDA 7, 0(6) ; Return to caller
153 : LD 1, 1(5) ; Load parameter 'publicKey' into R1
154 : ST 1, 5(5) ; Spill left operand at depth 0
155 : LD 1, 3(5) ; Load parameter 'commonFactor' into R1
156 : LD 2, 5(5) ; Restore left operand from depth 0
157 : DIV 1, 2, 1 ; R1 = left / right
158 : LDA 4, 3(5) ; Callee base for built-in print
159 : LDA 6, 163(0) ; Return address
160 : ST 6, 0(4) ; Store return address in callee frame
161 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
162 : LDA 7, 11(0) ; Call built-in print
163 : LDC 2, 3(0) ; Callee frame size (print)
164 : SUB 5, 5, 2 ; Pop back to caller
165 : LD 1, 2(5) ; Load parameter 'privateKey' into R1
166 : ST 1, 5(5) ; Spill left operand at depth 0
167 : LD 1, 3(5) ; Load parameter 'commonFactor' into R1
168 : LD 2, 5(5) ; Restore left operand from depth 0
169 : DIV 1, 2, 1 ; R1 = left / right
170 : LDA 4, 3(5) ; Callee base for built-in print
171 : LDA 6, 175(0) ; Return address
172 : ST 6, 0(4) ; Store return address in callee frame
173 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
174 : LDA 7, 11(0) ; Call built-in print
175 : LDC 2, 3(0) ; Callee frame size (print)
176 : SUB 5, 5, 2 ; Pop back to caller
177 : LD 1, 3(5) ; Load parameter 'commonFactor' into R1
178 : ST 1, 4(5) ; Store function result into frame return slot
179 : LD 6, 0(5) ; Load return address
180 : LDA 7, 0(6) ; Return to caller
181 : LD 1, 1(5) ; Load parameter 'publicKey' into R1
182 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2)
183 : LDA 4, 5(5) ; Callee base for arg copy
184 : LD 1, 4(5) ; Load staged arg 0 from caller temp
185 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
186 : LD 1, 2(5) ; Load parameter 'privateKey' into R1
187 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2)
188 : LDA 4, 5(5) ; Callee base for arg copy
189 : LD 1, 4(5) ; Load staged arg 1 from caller temp
190 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
191 : LD 1, 1(5) ; Load parameter 'publicKey' into R1
192 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2)
193 : LDA 4, 5(5) ; Callee base for arg copy
194 : LD 1, 4(5) ; Load staged arg 0 from caller temp
195 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
196 : LD 1, 2(5) ; Load parameter 'privateKey' into R1
197 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2)
198 : LDA 4, 5(5) ; Callee base for arg copy
199 : LD 1, 4(5) ; Load staged arg 1 from caller temp
200 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
201 : LDA 4, 5(5) ; Callee base for call
202 : LDA 6, 206(0) ; Return address
203 : ST 6, 0(4) ; Store return in callee frame
204 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
205 : LDA 7, 103(0) ; Call gcd
206 : LD 1, 3(5) ; Load callee result into R1
207 : LDC 2, 5(0) ; Callee frame size
208 : SUB 5, 5, 2 ; Pop callee frame
209 : ST 1, 4(5) ; Stage arg 2 in caller temp (P+2)
210 : LDA 4, 5(5) ; Callee base for arg copy
211 : LD 1, 4(5) ; Load staged arg 2 from caller temp
212 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
213 : LDA 4, 5(5) ; Callee base for call
214 : LDA 6, 218(0) ; Return address
215 : ST 6, 0(4) ; Store return in callee frame
216 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
217 : LDA 7, 153(0) ; Call displayAndPrint
218 : LD 1, 4(5) ; Load callee result into R1
219 : LDC 2, 5(0) ; Callee frame size
220 : SUB 5, 5, 2 ; Pop callee frame
221 : ST 1, 3(5) ; Store function result into frame return slot
222 : LD 6, 0(5) ; Load return address
223 : LDA 7, 0(6) ; Return to caller
