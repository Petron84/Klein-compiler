0 : LDC 5, 0(0) ; Set DMEM pointer (R5) to main stack frame base
1 : ADD 4, 5, 0 ; Set R4 := R5 (caller base)
2 : LDA 6, 2(7) ; Calculate return address (PC + 2)
3 : ST 6, 0(5) ; Store return address in main frame
4 : LDA 7, 10(0) ; Branch to main function
5 : OUT 1, 0, 0 ; Return/print result from main in R1
6 : HALT 0, 0, 0 ; Terminate program
7 : OUT 1, 0, 0 ; Hardcoded print: output R1
8 : LD 6, 0(5) ; Load return address from current frame
9 : LDA 7, 0(6) ; Jump back to caller
10 : LDC 1, 2(0) ; Load integer-literal into R1
11 : LDA 4, 2(5) ; Compute future callee base using caller_size
12 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
13 : LDC 1, 20(0) ; Load integer-literal into R1
14 : LDA 4, 2(5) ; Compute future callee base using caller_size
15 : ST 1, 2(4) ; Store argument 1 into callee's param slot (future frame)
16 : LDA 4, 2(5) ; Compute future callee base (caller_size)
17 : LDA 6, 21(0) ; Return address
18 : ST 6, 0(4) ; Store return in callee frame
19 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
20 : LDA 7, 28(0) ; Call sumPrimes
21 : LD 1, 3(5) ; Load callee result into R1
22 : LDC 2, 6(0) ; Callee frame size
23 : SUB 5, 5, 2 ; Pop callee frame
24 : ST 1, 1(5) ; Store result into caller’s frame
25 : LD 1, 1(5) ; Load main return value into R1
26 : LD 6, 0(5) ; Load main return address
27 : LDA 7, 0(6) ; Return from main
28 : LD 1, 2(5) ; Load parameter 'b' into R1
29 : ST 1, 4(5) ; Spill left operand at depth 0
30 : LD 1, 1(5) ; Load parameter 'a' into R1
31 : LD 2, 4(5) ; Restore left operand from depth 0
32 : SUB 1, 2, 1 ; left - right for less-than check
33 : JLT 1, 2(7) ; If R1 < 0, jump to true
34 : LDC 1, 0(0) ; false
35 : LDA 7, 1(7) ; skip setting true
36 : LDC 1, 1(0) ; true
37 : JEQ 1, 40(0) ; If condition is false, jump to ELSE
38 : LDC 1, 0(0) ; Load integer-literal into R1
39 : LDA 7, 92(0) ; Skip ELSE block
40 : LDA 4, 6(5) ; Compute future callee base using caller_size
41 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
42 : LDA 4, 6(5) ; Compute future callee base (caller_size)
43 : LDA 6, 47(0) ; Return address
44 : ST 6, 0(4) ; Store return in callee frame
45 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
46 : LDA 7, 95(0) ; Call isPrime
47 : LD 1, 2(5) ; Load callee result into R1
48 : LDC 2, 4(0) ; Callee frame size
49 : SUB 5, 5, 2 ; Pop callee frame
50 : JEQ 1, 74(0) ; If condition is false, jump to ELSE
51 : LD 1, 1(5) ; Load parameter 'a' into R1
52 : ST 1, 4(5) ; Spill left operand at depth 0
53 : LD 1, 1(5) ; Load parameter 'a' into R1
54 : ST 1, 5(5) ; Spill left operand at depth 1
55 : LDC 1, 1(0) ; Load integer-literal into R1
56 : LD 2, 5(5) ; Restore left operand from depth 1
57 : ADD 1, 2, 1 ; R1 = left + right
58 : LDA 4, 6(5) ; Compute future callee base using caller_size
59 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
60 : LD 1, 2(5) ; Load parameter 'b' into R1
61 : LDA 4, 6(5) ; Compute future callee base using caller_size
62 : ST 1, 2(4) ; Store argument 1 into callee's param slot (future frame)
63 : LDA 4, 6(5) ; Compute future callee base (caller_size)
64 : LDA 6, 68(0) ; Return address
65 : ST 6, 0(4) ; Store return in callee frame
66 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
67 : LDA 7, 28(0) ; Call sumPrimes
68 : LD 1, 3(5) ; Load callee result into R1
69 : LDC 2, 6(0) ; Callee frame size
70 : SUB 5, 5, 2 ; Pop callee frame
71 : LD 2, 4(5) ; Restore left operand from depth 0
72 : ADD 1, 2, 1 ; R1 = left + right
73 : LDA 7, 92(0) ; Skip ELSE block
74 : LD 1, 1(5) ; Load parameter 'a' into R1
75 : ST 1, 4(5) ; Spill left operand at depth 0
76 : LDC 1, 1(0) ; Load integer-literal into R1
77 : LD 2, 4(5) ; Restore left operand from depth 0
78 : ADD 1, 2, 1 ; R1 = left + right
79 : LDA 4, 6(5) ; Compute future callee base using caller_size
80 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
81 : LD 1, 2(5) ; Load parameter 'b' into R1
82 : LDA 4, 6(5) ; Compute future callee base using caller_size
83 : ST 1, 2(4) ; Store argument 1 into callee's param slot (future frame)
84 : LDA 4, 6(5) ; Compute future callee base (caller_size)
85 : LDA 6, 89(0) ; Return address
86 : ST 6, 0(4) ; Store return in callee frame
87 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
88 : LDA 7, 28(0) ; Call sumPrimes
89 : LD 1, 3(5) ; Load callee result into R1
90 : LDC 2, 6(0) ; Callee frame size
91 : SUB 5, 5, 2 ; Pop callee frame
92 : ST 1, 3(5) ; Store function result into frame return slot
93 : LD 6, 0(5) ; Load return address
94 : LDA 7, 0(6) ; Return to caller
95 : LD 1, 1(5) ; Load parameter 'n' into R1
96 : ST 1, 3(5) ; Spill left operand at depth 0
97 : LDC 1, 2(0) ; Load integer-literal into R1
98 : LD 2, 3(5) ; Restore left operand from depth 0
99 : SUB 1, 2, 1 ; left - right for less-than check
100 : JLT 1, 2(7) ; If R1 < 0, jump to true
101 : LDC 1, 0(0) ; false
102 : LDA 7, 1(7) ; skip setting true
103 : LDC 1, 1(0) ; true
104 : JEQ 1, 107(0) ; If condition is false, jump to ELSE
105 : LDC 1, 0(0) ; Load boolean-literal into R1
106 : LDA 7, 168(0) ; Skip ELSE block
107 : LD 1, 1(5) ; Load parameter 'n' into R1
108 : ST 1, 3(5) ; Spill left operand at depth 0
109 : LDC 1, 2(0) ; Load integer-literal into R1
110 : LD 2, 3(5) ; Restore left operand from depth 0
111 : SUB 1, 2, 1 ; left - right for equality check
112 : JEQ 1, 2(7) ; If R1 == 0, jump to true
113 : LDC 1, 0(0) ; false
114 : LDA 7, 1(7) ; skip setting true
115 : LDC 1, 1(0) ; true
116 : JEQ 1, 119(0) ; If condition is false, jump to ELSE
117 : LDC 1, 1(0) ; Load boolean-literal into R1
118 : LDA 7, 168(0) ; Skip ELSE block
119 : LDA 4, 4(5) ; Compute future callee base using caller_size
120 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
121 : LDC 1, 2(0) ; Load integer-literal into R1
122 : LDA 4, 4(5) ; Compute future callee base using caller_size
123 : ST 1, 2(4) ; Store argument 1 into callee's param slot (future frame)
124 : LDA 4, 4(5) ; Compute future callee base (caller_size)
125 : LDA 6, 129(0) ; Return address
126 : ST 6, 0(4) ; Store return in callee frame
127 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
128 : LDA 7, 171(0) ; Call divisible
129 : LD 1, 3(5) ; Load callee result into R1
130 : LDC 2, 5(0) ; Callee frame size
131 : SUB 5, 5, 2 ; Pop callee frame
132 : ST 1, 3(5) ; Spill left operand at depth 0
133 : LDA 4, 4(5) ; Compute future callee base using caller_size
134 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
135 : LDC 1, 3(0) ; Load integer-literal into R1
136 : LDA 4, 4(5) ; Compute future callee base using caller_size
137 : ST 1, 2(4) ; Store argument 1 into callee's param slot (future frame)
138 : LDA 4, 4(5) ; Compute future callee base (caller_size)
139 : LDA 6, 143(0) ; Return address
140 : ST 6, 0(4) ; Store return in callee frame
141 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
142 : LDA 7, 171(0) ; Call divisible
143 : LD 1, 3(5) ; Load callee result into R1
144 : LDC 2, 5(0) ; Callee frame size
145 : SUB 5, 5, 2 ; Pop callee frame
146 : LD 2, 3(5) ; Restore left operand from depth 0
147 : ADD 1, 2, 1 ; R1 = left OR right
148 : ST 1, 3(5) ; Spill left operand at depth 0
149 : LDA 4, 4(5) ; Compute future callee base using caller_size
150 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
151 : LDC 1, 5(0) ; Load integer-literal into R1
152 : LDA 4, 4(5) ; Compute future callee base using caller_size
153 : ST 1, 2(4) ; Store argument 1 into callee's param slot (future frame)
154 : LDA 4, 4(5) ; Compute future callee base (caller_size)
155 : LDA 6, 159(0) ; Return address
156 : ST 6, 0(4) ; Store return in callee frame
157 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
158 : LDA 7, 171(0) ; Call divisible
159 : LD 1, 3(5) ; Load callee result into R1
160 : LDC 2, 5(0) ; Callee frame size
161 : SUB 5, 5, 2 ; Pop callee frame
162 : LD 2, 3(5) ; Restore left operand from depth 0
163 : ADD 1, 2, 1 ; R1 = left OR right
164 : JEQ 1, 167(0) ; If condition is false, jump to ELSE
165 : LDC 1, 0(0) ; Load boolean-literal into R1
166 : LDA 7, 168(0) ; Skip ELSE block
167 : LDC 1, 1(0) ; Load boolean-literal into R1
168 : ST 1, 2(5) ; Store function result into frame return slot
169 : LD 6, 0(5) ; Load return address
170 : LDA 7, 0(6) ; Return to caller
171 : LD 1, 1(5) ; Load parameter 'x' into R1
172 : ST 1, 4(5) ; Spill left operand at depth 0
173 : LD 1, 2(5) ; Load parameter 'y' into R1
174 : LD 2, 4(5) ; Restore left operand from depth 0
175 : DIV 1, 2, 1 ; R1 = left / right
176 : ST 1, 4(5) ; Spill left operand at depth 0
177 : LD 1, 2(5) ; Load parameter 'y' into R1
178 : LD 2, 4(5) ; Restore left operand from depth 0
179 : MUL 1, 2, 1 ; R1 = left * right
180 : ST 1, 4(5) ; Spill left operand at depth 0
181 : LD 1, 1(5) ; Load parameter 'x' into R1
182 : LD 2, 4(5) ; Restore left operand from depth 0
183 : SUB 1, 2, 1 ; left - right for equality check
184 : JEQ 1, 2(7) ; If R1 == 0, jump to true
185 : LDC 1, 0(0) ; false
186 : LDA 7, 1(7) ; skip setting true
187 : LDC 1, 1(0) ; true
188 : JEQ 1, 191(0) ; If condition is false, jump to ELSE
189 : LDC 1, 1(0) ; Load boolean-literal into R1
190 : LDA 7, 192(0) ; Skip ELSE block
191 : LDC 1, 0(0) ; Load boolean-literal into R1
192 : ST 1, 3(5) ; Store function result into frame return slot
193 : LD 6, 0(5) ; Load return address
194 : LDA 7, 0(6) ; Return to caller
