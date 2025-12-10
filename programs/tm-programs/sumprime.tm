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
10 : LDA 4, 2(5) ; Compute callee base from caller size
11 : LDC 1, 2(0) ; Load integer-literal into R1
12 : ST 1, 1(4) ; Store argument 0 in callee frame
13 : LDC 1, 20(0) ; Load integer-literal into R1
14 : ST 1, 2(4) ; Store argument 1 in callee frame
15 : LDA 6, 19(0) ; Return address
16 : ST 6, 0(4) ; Store return address into callee frame
17 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
18 : LDA 7, 26(0) ; Call sumPrimes
19 : LD 1, 3(5) ; Load callee result into R1
20 : LDC 2, 2(0) ; Caller frame size
21 : SUB 5, 5, 2 ; Pop back to caller
22 : ST 1, 1(5) ; Store result into caller’s return slot
23 : LD 1, 1(5) ; Load main return value into R1
24 : LD 6, 0(5) ; Load main return address
25 : LDA 7, 0(6) ; Return from main
26 : LD 1, 2(5) ; Load parameter 'b' into R1
27 : ST 1, 4(5) ; Spill left operand at depth 0
28 : LD 1, 1(5) ; Load parameter 'a' into R1
29 : LD 2, 4(5) ; Restore left operand from depth 0
30 : SUB 1, 2, 1 ; left - right for less-than check
31 : JLT 1, 2(7) ; If R1 < 0, jump to true
32 : LDC 1, 0(0) ; false
33 : LDA 7, 1(7) ; skip setting true
34 : LDC 1, 1(0) ; true
35 : JEQ 1, 38(0) ; If condition is false, jump to ELSE
36 : LDC 1, 0(0) ; Load integer-literal into R1
37 : LDA 7, 86(0) ; Skip ELSE block
38 : LDA 4, 6(5) ; Compute callee base from caller size
39 : LD 1, 1(5) ; Load parameter 'a' into R1
40 : ST 1, 1(4) ; Store argument 0 in callee frame
41 : LDA 6, 45(0) ; Return address
42 : ST 6, 0(4) ; Store return address into callee frame
43 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
44 : LDA 7, 89(0) ; Call isPrime
45 : LD 1, 2(5) ; Load callee result into R1
46 : LDC 2, 6(0) ; Caller frame size
47 : SUB 5, 5, 2 ; Pop back to caller
48 : JEQ 1, 70(0) ; If condition is false, jump to ELSE
49 : LD 1, 1(5) ; Load parameter 'a' into R1
50 : ST 1, 4(5) ; Spill left operand at depth 0
51 : LDA 4, 6(5) ; Compute callee base from caller size
52 : LD 1, 1(5) ; Load parameter 'a' into R1
53 : ST 1, 5(5) ; Spill left operand at depth 1
54 : LDC 1, 1(0) ; Load integer-literal into R1
55 : LD 2, 5(5) ; Restore left operand from depth 1
56 : ADD 1, 2, 1 ; R1 = left + right
57 : ST 1, 1(4) ; Store argument 0 in callee frame
58 : LD 1, 2(5) ; Load parameter 'b' into R1
59 : ST 1, 2(4) ; Store argument 1 in callee frame
60 : LDA 6, 64(0) ; Return address
61 : ST 6, 0(4) ; Store return address into callee frame
62 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
63 : LDA 7, 26(0) ; Call sumPrimes
64 : LD 1, 3(5) ; Load callee result into R1
65 : LDC 2, 6(0) ; Caller frame size
66 : SUB 5, 5, 2 ; Pop back to caller
67 : LD 2, 4(5) ; Restore left operand from depth 0
68 : ADD 1, 2, 1 ; R1 = left + right
69 : LDA 7, 86(0) ; Skip ELSE block
70 : LDA 4, 6(5) ; Compute callee base from caller size
71 : LD 1, 1(5) ; Load parameter 'a' into R1
72 : ST 1, 4(5) ; Spill left operand at depth 0
73 : LDC 1, 1(0) ; Load integer-literal into R1
74 : LD 2, 4(5) ; Restore left operand from depth 0
75 : ADD 1, 2, 1 ; R1 = left + right
76 : ST 1, 1(4) ; Store argument 0 in callee frame
77 : LD 1, 2(5) ; Load parameter 'b' into R1
78 : ST 1, 2(4) ; Store argument 1 in callee frame
79 : LDA 6, 83(0) ; Return address
80 : ST 6, 0(4) ; Store return address into callee frame
81 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
82 : LDA 7, 26(0) ; Call sumPrimes
83 : LD 1, 3(5) ; Load callee result into R1
84 : LDC 2, 6(0) ; Caller frame size
85 : SUB 5, 5, 2 ; Pop back to caller
86 : ST 1, 3(5) ; Store function result into frame return slot
87 : LD 6, 0(5) ; Load return address
88 : LDA 7, 0(6) ; Return to caller
89 : LD 1, 1(5) ; Load parameter 'n' into R1
90 : ST 1, 3(5) ; Spill left operand at depth 0
91 : LDC 1, 2(0) ; Load integer-literal into R1
92 : LD 2, 3(5) ; Restore left operand from depth 0
93 : SUB 1, 2, 1 ; left - right for less-than check
94 : JLT 1, 2(7) ; If R1 < 0, jump to true
95 : LDC 1, 0(0) ; false
96 : LDA 7, 1(7) ; skip setting true
97 : LDC 1, 1(0) ; true
98 : JEQ 1, 101(0) ; If condition is false, jump to ELSE
99 : LDC 1, 0(0) ; Load boolean-literal into R1
100 : LDA 7, 159(0) ; Skip ELSE block
101 : LD 1, 1(5) ; Load parameter 'n' into R1
102 : ST 1, 3(5) ; Spill left operand at depth 0
103 : LDC 1, 2(0) ; Load integer-literal into R1
104 : LD 2, 3(5) ; Restore left operand from depth 0
105 : SUB 1, 2, 1 ; left - right for equality check
106 : JEQ 1, 2(7) ; If R1 == 0, jump to true
107 : LDC 1, 0(0) ; false
108 : LDA 7, 1(7) ; skip setting true
109 : LDC 1, 1(0) ; true
110 : JEQ 1, 113(0) ; If condition is false, jump to ELSE
111 : LDC 1, 1(0) ; Load boolean-literal into R1
112 : LDA 7, 159(0) ; Skip ELSE block
113 : LDA 4, 4(5) ; Compute callee base from caller size
114 : LD 1, 1(5) ; Load parameter 'n' into R1
115 : ST 1, 1(4) ; Store argument 0 in callee frame
116 : LDC 1, 2(0) ; Load integer-literal into R1
117 : ST 1, 2(4) ; Store argument 1 in callee frame
118 : LDA 6, 122(0) ; Return address
119 : ST 6, 0(4) ; Store return address into callee frame
120 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
121 : LDA 7, 162(0) ; Call divisible
122 : LD 1, 3(5) ; Load callee result into R1
123 : LDC 2, 4(0) ; Caller frame size
124 : SUB 5, 5, 2 ; Pop back to caller
125 : ST 1, 3(5) ; Spill left operand at depth 0
126 : LDA 4, 4(5) ; Compute callee base from caller size
127 : LD 1, 1(5) ; Load parameter 'n' into R1
128 : ST 1, 1(4) ; Store argument 0 in callee frame
129 : LDC 1, 3(0) ; Load integer-literal into R1
130 : ST 1, 2(4) ; Store argument 1 in callee frame
131 : LDA 6, 135(0) ; Return address
132 : ST 6, 0(4) ; Store return address into callee frame
133 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
134 : LDA 7, 162(0) ; Call divisible
135 : LD 1, 3(5) ; Load callee result into R1
136 : LDC 2, 4(0) ; Caller frame size
137 : SUB 5, 5, 2 ; Pop back to caller
138 : LD 2, 3(5) ; Restore left operand from depth 0
139 : ADD 1, 2, 1 ; R1 = left OR right
140 : ST 1, 3(5) ; Spill left operand at depth 0
141 : LDA 4, 4(5) ; Compute callee base from caller size
142 : LD 1, 1(5) ; Load parameter 'n' into R1
143 : ST 1, 1(4) ; Store argument 0 in callee frame
144 : LDC 1, 5(0) ; Load integer-literal into R1
145 : ST 1, 2(4) ; Store argument 1 in callee frame
146 : LDA 6, 150(0) ; Return address
147 : ST 6, 0(4) ; Store return address into callee frame
148 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
149 : LDA 7, 162(0) ; Call divisible
150 : LD 1, 3(5) ; Load callee result into R1
151 : LDC 2, 4(0) ; Caller frame size
152 : SUB 5, 5, 2 ; Pop back to caller
153 : LD 2, 3(5) ; Restore left operand from depth 0
154 : ADD 1, 2, 1 ; R1 = left OR right
155 : JEQ 1, 158(0) ; If condition is false, jump to ELSE
156 : LDC 1, 0(0) ; Load boolean-literal into R1
157 : LDA 7, 159(0) ; Skip ELSE block
158 : LDC 1, 1(0) ; Load boolean-literal into R1
159 : ST 1, 2(5) ; Store function result into frame return slot
160 : LD 6, 0(5) ; Load return address
161 : LDA 7, 0(6) ; Return to caller
162 : LD 1, 1(5) ; Load parameter 'x' into R1
163 : ST 1, 4(5) ; Spill left operand at depth 0
164 : LD 1, 2(5) ; Load parameter 'y' into R1
165 : LD 2, 4(5) ; Restore left operand from depth 0
166 : DIV 1, 2, 1 ; R1 = left / right
167 : ST 1, 4(5) ; Spill left operand at depth 0
168 : LD 1, 2(5) ; Load parameter 'y' into R1
169 : LD 2, 4(5) ; Restore left operand from depth 0
170 : MUL 1, 2, 1 ; R1 = left * right
171 : ST 1, 4(5) ; Spill left operand at depth 0
172 : LD 1, 1(5) ; Load parameter 'x' into R1
173 : LD 2, 4(5) ; Restore left operand from depth 0
174 : SUB 1, 2, 1 ; left - right for equality check
175 : JEQ 1, 2(7) ; If R1 == 0, jump to true
176 : LDC 1, 0(0) ; false
177 : LDA 7, 1(7) ; skip setting true
178 : LDC 1, 1(0) ; true
179 : JEQ 1, 182(0) ; If condition is false, jump to ELSE
180 : LDC 1, 1(0) ; Load boolean-literal into R1
181 : LDA 7, 183(0) ; Skip ELSE block
182 : LDC 1, 0(0) ; Load boolean-literal into R1
183 : ST 1, 3(5) ; Store function result into frame return slot
184 : LD 6, 0(5) ; Load return address
185 : LDA 7, 0(6) ; Return to caller
