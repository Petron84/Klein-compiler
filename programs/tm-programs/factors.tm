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
13 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2+i)
14 : LDC 1, 1(0) ; Load integer-literal into R1
15 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2+i)
16 : LDA 4, 6(5) ; Callee base for arg copy
17 : LD 1, 3(5) ; Load staged arg 0 from caller temp
18 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
19 : LD 1, 4(5) ; Load staged arg 1 from caller temp
20 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
21 : LDA 6, 25(0) ; Return address
22 : ST 6, 0(4) ; Store return in callee frame
23 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
24 : LDA 7, 182(0) ; Call loopToN
25 : LD 1, 3(5) ; Load callee result into R1
26 : LDC 2, 6(0) ; Callee frame size
27 : SUB 5, 5, 2 ; Pop callee frame
28 : ST 1, 2(5) ; Store result into caller’s frame
29 : LD 1, 2(5) ; Load main return value into R1
30 : LD 6, 0(5) ; Load main return address
31 : LDA 7, 0(6) ; Return from main
32 : LD 1, 1(5) ; Load parameter 'num' into R1
33 : ST 1, 4(5) ; Spill left operand at depth 0
34 : LD 1, 2(5) ; Load parameter 'den' into R1
35 : LD 2, 4(5) ; Restore left operand from depth 0
36 : SUB 1, 2, 1 ; left - right for less-than check
37 : JLT 1, 2(7) ; If R1 < 0, jump to true
38 : LDC 1, 0(0) ; false
39 : LDA 7, 1(7) ; skip setting true
40 : LDC 1, 1(0) ; true
41 : JEQ 1, 44(0) ; If condition is false, jump to ELSE
42 : LD 1, 1(5) ; Load parameter 'num' into R1
43 : LDA 7, 64(0) ; Skip ELSE block
44 : LD 1, 1(5) ; Load parameter 'num' into R1
45 : ST 1, 4(5) ; Spill left operand at depth 0
46 : LD 1, 2(5) ; Load parameter 'den' into R1
47 : LD 2, 4(5) ; Restore left operand from depth 0
48 : SUB 1, 2, 1 ; R1 = left - right
49 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2+i)
50 : LD 1, 2(5) ; Load parameter 'den' into R1
51 : ST 1, 5(5) ; Stage arg 1 in caller temp (P+2+i)
52 : LDA 4, 6(5) ; Callee base for arg copy
53 : LD 1, 4(5) ; Load staged arg 0 from caller temp
54 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
55 : LD 1, 5(5) ; Load staged arg 1 from caller temp
56 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
57 : LDA 6, 61(0) ; Return address
58 : ST 6, 0(4) ; Store return in callee frame
59 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
60 : LDA 7, 32(0) ; Call remainder
61 : LD 1, 3(5) ; Load callee result into R1
62 : LDC 2, 6(0) ; Callee frame size
63 : SUB 5, 5, 2 ; Pop callee frame
64 : ST 1, 3(5) ; Store function result into frame return slot
65 : LD 6, 0(5) ; Load return address
66 : LDA 7, 0(6) ; Return to caller
67 : LD 1, 2(5) ; Load parameter 'b' into R1
68 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2+i)
69 : LD 1, 1(5) ; Load parameter 'a' into R1
70 : ST 1, 5(5) ; Stage arg 1 in caller temp (P+2+i)
71 : LDA 4, 6(5) ; Callee base for arg copy
72 : LD 1, 4(5) ; Load staged arg 0 from caller temp
73 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
74 : LD 1, 5(5) ; Load staged arg 1 from caller temp
75 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
76 : LDA 6, 80(0) ; Return address
77 : ST 6, 0(4) ; Store return in callee frame
78 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
79 : LDA 7, 32(0) ; Call remainder
80 : LD 1, 3(5) ; Load callee result into R1
81 : LDC 2, 6(0) ; Callee frame size
82 : SUB 5, 5, 2 ; Pop callee frame
83 : ST 1, 4(5) ; Spill left operand at depth 0
84 : LDC 1, 0(0) ; Load integer-literal into R1
85 : LD 2, 4(5) ; Restore left operand from depth 0
86 : SUB 1, 2, 1 ; left - right for equality check
87 : JEQ 1, 2(7) ; If R1 == 0, jump to true
88 : LDC 1, 0(0) ; false
89 : LDA 7, 1(7) ; skip setting true
90 : LDC 1, 1(0) ; true
91 : ST 1, 3(5) ; Store function result into frame return slot
92 : LD 6, 0(5) ; Load return address
93 : LDA 7, 0(6) ; Return to caller
94 : LD 1, 2(5) ; Load parameter 'current' into R1
95 : LDA 4, 3(5) ; Callee base for built-in print
96 : LDA 6, 100(0) ; Return address
97 : ST 6, 0(4) ; Store return address in callee frame
98 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
99 : LDA 7, 9(0) ; Call built-in print
100 : LDC 2, 3(0) ; Callee frame size (print)
101 : SUB 5, 5, 2 ; Pop back to caller
102 : LD 1, 1(5) ; Load parameter 'n' into R1
103 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2+i)
104 : LD 1, 2(5) ; Load parameter 'current' into R1
105 : ST 1, 4(5) ; Spill left operand at depth 0
106 : LDC 1, 1(0) ; Load integer-literal into R1
107 : LD 2, 4(5) ; Restore left operand from depth 0
108 : ADD 1, 2, 1 ; R1 = left + right
109 : ST 1, 5(5) ; Stage arg 1 in caller temp (P+2+i)
110 : LDA 4, 6(5) ; Callee base for arg copy
111 : LD 1, 4(5) ; Load staged arg 0 from caller temp
112 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
113 : LD 1, 5(5) ; Load staged arg 1 from caller temp
114 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
115 : LDA 6, 119(0) ; Return address
116 : ST 6, 0(4) ; Store return in callee frame
117 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
118 : LDA 7, 182(0) ; Call loopToN
119 : LD 1, 3(5) ; Load callee result into R1
120 : LDC 2, 6(0) ; Callee frame size
121 : SUB 5, 5, 2 ; Pop callee frame
122 : ST 1, 3(5) ; Store function result into frame return slot
123 : LD 6, 0(5) ; Load return address
124 : LDA 7, 0(6) ; Return to caller
125 : LD 1, 2(5) ; Load parameter 'current' into R1
126 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2+i)
127 : LD 1, 1(5) ; Load parameter 'n' into R1
128 : ST 1, 5(5) ; Stage arg 1 in caller temp (P+2+i)
129 : LDA 4, 6(5) ; Callee base for arg copy
130 : LD 1, 4(5) ; Load staged arg 0 from caller temp
131 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
132 : LD 1, 5(5) ; Load staged arg 1 from caller temp
133 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
134 : LDA 6, 138(0) ; Return address
135 : ST 6, 0(4) ; Store return in callee frame
136 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
137 : LDA 7, 67(0) ; Call divides
138 : LD 1, 3(5) ; Load callee result into R1
139 : LDC 2, 6(0) ; Callee frame size
140 : SUB 5, 5, 2 ; Pop callee frame
141 : JEQ 1, 159(0) ; If condition is false, jump to ELSE
142 : LD 1, 1(5) ; Load parameter 'n' into R1
143 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2+i)
144 : LD 1, 2(5) ; Load parameter 'current' into R1
145 : ST 1, 5(5) ; Stage arg 1 in caller temp (P+2+i)
146 : LDA 4, 6(5) ; Callee base for arg copy
147 : LD 1, 4(5) ; Load staged arg 0 from caller temp
148 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
149 : LD 1, 5(5) ; Load staged arg 1 from caller temp
150 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
151 : LDA 6, 155(0) ; Return address
152 : ST 6, 0(4) ; Store return in callee frame
153 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
154 : LDA 7, 94(0) ; Call printAndLoop
155 : LD 1, 3(5) ; Load callee result into R1
156 : LDC 2, 6(0) ; Callee frame size
157 : SUB 5, 5, 2 ; Pop callee frame
158 : LDA 7, 179(0) ; Skip ELSE block
159 : LD 1, 1(5) ; Load parameter 'n' into R1
160 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2+i)
161 : LD 1, 2(5) ; Load parameter 'current' into R1
162 : ST 1, 4(5) ; Spill left operand at depth 0
163 : LDC 1, 1(0) ; Load integer-literal into R1
164 : LD 2, 4(5) ; Restore left operand from depth 0
165 : ADD 1, 2, 1 ; R1 = left + right
166 : ST 1, 5(5) ; Stage arg 1 in caller temp (P+2+i)
167 : LDA 4, 6(5) ; Callee base for arg copy
168 : LD 1, 4(5) ; Load staged arg 0 from caller temp
169 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
170 : LD 1, 5(5) ; Load staged arg 1 from caller temp
171 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
172 : LDA 6, 176(0) ; Return address
173 : ST 6, 0(4) ; Store return in callee frame
174 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
175 : LDA 7, 182(0) ; Call loopToN
176 : LD 1, 3(5) ; Load callee result into R1
177 : LDC 2, 6(0) ; Callee frame size
178 : SUB 5, 5, 2 ; Pop callee frame
179 : ST 1, 3(5) ; Store function result into frame return slot
180 : LD 6, 0(5) ; Load return address
181 : LDA 7, 0(6) ; Return to caller
182 : LD 1, 1(5) ; Load parameter 'n' into R1
183 : ST 1, 4(5) ; Spill left operand at depth 0
184 : LD 1, 2(5) ; Load parameter 'current' into R1
185 : LD 2, 4(5) ; Restore left operand from depth 0
186 : SUB 1, 2, 1 ; left - right for equality check
187 : JEQ 1, 2(7) ; If R1 == 0, jump to true
188 : LDC 1, 0(0) ; false
189 : LDA 7, 1(7) ; skip setting true
190 : LDC 1, 1(0) ; true
191 : JEQ 1, 194(0) ; If condition is false, jump to ELSE
192 : LD 1, 1(5) ; Load parameter 'n' into R1
193 : LDA 7, 210(0) ; Skip ELSE block
194 : LD 1, 1(5) ; Load parameter 'n' into R1
195 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2+i)
196 : LD 1, 2(5) ; Load parameter 'current' into R1
197 : ST 1, 5(5) ; Stage arg 1 in caller temp (P+2+i)
198 : LDA 4, 6(5) ; Callee base for arg copy
199 : LD 1, 4(5) ; Load staged arg 0 from caller temp
200 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
201 : LD 1, 5(5) ; Load staged arg 1 from caller temp
202 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
203 : LDA 6, 207(0) ; Return address
204 : ST 6, 0(4) ; Store return in callee frame
205 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
206 : LDA 7, 125(0) ; Call testAndLoop
207 : LD 1, 3(5) ; Load callee result into R1
208 : LDC 2, 6(0) ; Callee frame size
209 : SUB 5, 5, 2 ; Pop callee frame
210 : ST 1, 3(5) ; Store function result into frame return slot
211 : LD 6, 0(5) ; Load return address
212 : LDA 7, 0(6) ; Return to caller
