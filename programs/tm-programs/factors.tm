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
12 : LD 1, 1(5) ; Load parameter 'n' into R1
13 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2)
14 : LDA 4, 5(5) ; Callee base for arg copy
15 : LD 1, 3(5) ; Load staged arg 0 from caller temp
16 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
17 : LDC 1, 1(0) ; Load integer-literal into R1
18 : ST 1, 3(5) ; Stage arg 1 in caller temp (P+2)
19 : LDA 4, 5(5) ; Callee base for arg copy
20 : LD 1, 3(5) ; Load staged arg 1 from caller temp
21 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
22 : LDA 4, 5(5) ; Callee base for call
23 : LDA 6, 27(0) ; Return address
24 : ST 6, 0(4) ; Store return in callee frame
25 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
26 : LDA 7, 196(0) ; Call loopToN
27 : LD 1, 3(5) ; Load callee result into R1
28 : LDC 2, 5(0) ; Callee frame size
29 : SUB 5, 5, 2 ; Pop callee frame
30 : ST 1, 2(5) ; Store result into caller’s frame
31 : LD 1, 2(5) ; Load main return value into R1
32 : LD 6, 0(5) ; Load main return address
33 : LDA 7, 0(6) ; Return from main
34 : LD 1, 1(5) ; Load parameter 'num' into R1
35 : ST 1, 4(5) ; Spill left operand at depth 0
36 : LD 1, 2(5) ; Load parameter 'den' into R1
37 : LD 2, 4(5) ; Restore left operand from depth 0
38 : SUB 1, 2, 1 ; left - right for less-than check
39 : JLT 1, 2(7) ; If R1 < 0, jump to true
40 : LDC 1, 0(0) ; false
41 : LDA 7, 1(7) ; skip setting true
42 : LDC 1, 1(0) ; true
43 : JEQ 1, 46(0) ; If condition is false, jump to ELSE
44 : LD 1, 1(5) ; Load parameter 'num' into R1
45 : LDA 7, 68(0) ; Skip ELSE block
46 : LD 1, 1(5) ; Load parameter 'num' into R1
47 : ST 1, 4(5) ; Spill left operand at depth 0
48 : LD 1, 2(5) ; Load parameter 'den' into R1
49 : LD 2, 4(5) ; Restore left operand from depth 0
50 : SUB 1, 2, 1 ; R1 = left - right
51 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2)
52 : LDA 4, 5(5) ; Callee base for arg copy
53 : LD 1, 4(5) ; Load staged arg 0 from caller temp
54 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
55 : LD 1, 2(5) ; Load parameter 'den' into R1
56 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2)
57 : LDA 4, 5(5) ; Callee base for arg copy
58 : LD 1, 4(5) ; Load staged arg 1 from caller temp
59 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
60 : LDA 4, 5(5) ; Callee base for call
61 : LDA 6, 65(0) ; Return address
62 : ST 6, 0(4) ; Store return in callee frame
63 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
64 : LDA 7, 34(0) ; Call remainder
65 : LD 1, 3(5) ; Load callee result into R1
66 : LDC 2, 5(0) ; Callee frame size
67 : SUB 5, 5, 2 ; Pop callee frame
68 : ST 1, 3(5) ; Store function result into frame return slot
69 : LD 6, 0(5) ; Load return address
70 : LDA 7, 0(6) ; Return to caller
71 : LD 1, 2(5) ; Load parameter 'b' into R1
72 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2)
73 : LDA 4, 5(5) ; Callee base for arg copy
74 : LD 1, 4(5) ; Load staged arg 0 from caller temp
75 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
76 : LD 1, 1(5) ; Load parameter 'a' into R1
77 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2)
78 : LDA 4, 5(5) ; Callee base for arg copy
79 : LD 1, 4(5) ; Load staged arg 1 from caller temp
80 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
81 : LDA 4, 5(5) ; Callee base for call
82 : LDA 6, 86(0) ; Return address
83 : ST 6, 0(4) ; Store return in callee frame
84 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
85 : LDA 7, 34(0) ; Call remainder
86 : LD 1, 3(5) ; Load callee result into R1
87 : LDC 2, 5(0) ; Callee frame size
88 : SUB 5, 5, 2 ; Pop callee frame
89 : ST 1, 4(5) ; Spill left operand at depth 0
90 : LDC 1, 0(0) ; Load integer-literal into R1
91 : LD 2, 4(5) ; Restore left operand from depth 0
92 : SUB 1, 2, 1 ; left - right for equality check
93 : JEQ 1, 2(7) ; If R1 == 0, jump to true
94 : LDC 1, 0(0) ; false
95 : LDA 7, 1(7) ; skip setting true
96 : LDC 1, 1(0) ; true
97 : ST 1, 3(5) ; Store function result into frame return slot
98 : LD 6, 0(5) ; Load return address
99 : LDA 7, 0(6) ; Return to caller
100 : LD 1, 2(5) ; Load parameter 'current' into R1
101 : LDA 4, 3(5) ; Callee base for built-in print
102 : LDA 6, 106(0) ; Return address
103 : ST 6, 0(4) ; Store return address in callee frame
104 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
105 : LDA 7, 9(0) ; Call built-in print
106 : LDC 2, 3(0) ; Callee frame size (print)
107 : SUB 5, 5, 2 ; Pop back to caller
108 : LD 1, 1(5) ; Load parameter 'n' into R1
109 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2)
110 : LDA 4, 5(5) ; Callee base for arg copy
111 : LD 1, 4(5) ; Load staged arg 0 from caller temp
112 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
113 : LD 1, 2(5) ; Load parameter 'current' into R1
114 : ST 1, 4(5) ; Spill left operand at depth 0
115 : LDC 1, 1(0) ; Load integer-literal into R1
116 : LD 2, 4(5) ; Restore left operand from depth 0
117 : ADD 1, 2, 1 ; R1 = left + right
118 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2)
119 : LDA 4, 5(5) ; Callee base for arg copy
120 : LD 1, 4(5) ; Load staged arg 1 from caller temp
121 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
122 : LDA 4, 5(5) ; Callee base for call
123 : LDA 6, 127(0) ; Return address
124 : ST 6, 0(4) ; Store return in callee frame
125 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
126 : LDA 7, 196(0) ; Call loopToN
127 : LD 1, 3(5) ; Load callee result into R1
128 : LDC 2, 5(0) ; Callee frame size
129 : SUB 5, 5, 2 ; Pop callee frame
130 : ST 1, 3(5) ; Store function result into frame return slot
131 : LD 6, 0(5) ; Load return address
132 : LDA 7, 0(6) ; Return to caller
133 : LD 1, 2(5) ; Load parameter 'current' into R1
134 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2)
135 : LDA 4, 5(5) ; Callee base for arg copy
136 : LD 1, 4(5) ; Load staged arg 0 from caller temp
137 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
138 : LD 1, 1(5) ; Load parameter 'n' into R1
139 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2)
140 : LDA 4, 5(5) ; Callee base for arg copy
141 : LD 1, 4(5) ; Load staged arg 1 from caller temp
142 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
143 : LDA 4, 5(5) ; Callee base for call
144 : LDA 6, 148(0) ; Return address
145 : ST 6, 0(4) ; Store return in callee frame
146 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
147 : LDA 7, 71(0) ; Call divides
148 : LD 1, 3(5) ; Load callee result into R1
149 : LDC 2, 5(0) ; Callee frame size
150 : SUB 5, 5, 2 ; Pop callee frame
151 : JEQ 1, 171(0) ; If condition is false, jump to ELSE
152 : LD 1, 1(5) ; Load parameter 'n' into R1
153 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2)
154 : LDA 4, 5(5) ; Callee base for arg copy
155 : LD 1, 4(5) ; Load staged arg 0 from caller temp
156 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
157 : LD 1, 2(5) ; Load parameter 'current' into R1
158 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2)
159 : LDA 4, 5(5) ; Callee base for arg copy
160 : LD 1, 4(5) ; Load staged arg 1 from caller temp
161 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
162 : LDA 4, 5(5) ; Callee base for call
163 : LDA 6, 167(0) ; Return address
164 : ST 6, 0(4) ; Store return in callee frame
165 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
166 : LDA 7, 100(0) ; Call printAndLoop
167 : LD 1, 3(5) ; Load callee result into R1
168 : LDC 2, 5(0) ; Callee frame size
169 : SUB 5, 5, 2 ; Pop callee frame
170 : LDA 7, 193(0) ; Skip ELSE block
171 : LD 1, 1(5) ; Load parameter 'n' into R1
172 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2)
173 : LDA 4, 5(5) ; Callee base for arg copy
174 : LD 1, 4(5) ; Load staged arg 0 from caller temp
175 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
176 : LD 1, 2(5) ; Load parameter 'current' into R1
177 : ST 1, 4(5) ; Spill left operand at depth 0
178 : LDC 1, 1(0) ; Load integer-literal into R1
179 : LD 2, 4(5) ; Restore left operand from depth 0
180 : ADD 1, 2, 1 ; R1 = left + right
181 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2)
182 : LDA 4, 5(5) ; Callee base for arg copy
183 : LD 1, 4(5) ; Load staged arg 1 from caller temp
184 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
185 : LDA 4, 5(5) ; Callee base for call
186 : LDA 6, 190(0) ; Return address
187 : ST 6, 0(4) ; Store return in callee frame
188 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
189 : LDA 7, 196(0) ; Call loopToN
190 : LD 1, 3(5) ; Load callee result into R1
191 : LDC 2, 5(0) ; Callee frame size
192 : SUB 5, 5, 2 ; Pop callee frame
193 : ST 1, 3(5) ; Store function result into frame return slot
194 : LD 6, 0(5) ; Load return address
195 : LDA 7, 0(6) ; Return to caller
196 : LD 1, 1(5) ; Load parameter 'n' into R1
197 : ST 1, 4(5) ; Spill left operand at depth 0
198 : LD 1, 2(5) ; Load parameter 'current' into R1
199 : LD 2, 4(5) ; Restore left operand from depth 0
200 : SUB 1, 2, 1 ; left - right for equality check
201 : JEQ 1, 2(7) ; If R1 == 0, jump to true
202 : LDC 1, 0(0) ; false
203 : LDA 7, 1(7) ; skip setting true
204 : LDC 1, 1(0) ; true
205 : JEQ 1, 208(0) ; If condition is false, jump to ELSE
206 : LD 1, 1(5) ; Load parameter 'n' into R1
207 : LDA 7, 226(0) ; Skip ELSE block
208 : LD 1, 1(5) ; Load parameter 'n' into R1
209 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2)
210 : LDA 4, 5(5) ; Callee base for arg copy
211 : LD 1, 4(5) ; Load staged arg 0 from caller temp
212 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
213 : LD 1, 2(5) ; Load parameter 'current' into R1
214 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2)
215 : LDA 4, 5(5) ; Callee base for arg copy
216 : LD 1, 4(5) ; Load staged arg 1 from caller temp
217 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
218 : LDA 4, 5(5) ; Callee base for call
219 : LDA 6, 223(0) ; Return address
220 : ST 6, 0(4) ; Store return in callee frame
221 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
222 : LDA 7, 133(0) ; Call testAndLoop
223 : LD 1, 3(5) ; Load callee result into R1
224 : LDC 2, 5(0) ; Callee frame size
225 : SUB 5, 5, 2 ; Pop callee frame
226 : ST 1, 3(5) ; Store function result into frame return slot
227 : LD 6, 0(5) ; Load return address
228 : LDA 7, 0(6) ; Return to caller
