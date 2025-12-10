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
23 : JEQ 1, 38(0) ; If condition is false, jump to ELSE
24 : LDA 4, 5(5) ; Compute callee base from caller size
25 : LDC 1, 2147481647(0) ; Load integer-literal into R1
26 : ST 1, 1(4) ; Store argument 0 in callee frame
27 : LDC 1, 2047483747(0) ; Load integer-literal into R1
28 : ST 1, 2(4) ; Store argument 1 in callee frame
29 : LDA 6, 33(0) ; Return address
30 : ST 6, 0(4) ; Store return address into callee frame
31 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
32 : LDA 7, 151(0) ; Call factor
33 : LD 1, 3(5) ; Load callee result into R1
34 : LDC 2, 5(0) ; Caller frame size
35 : SUB 5, 5, 2 ; Pop back to caller
36 : ST 1, 3(5) ; Store result into caller’s return slot
37 : LDA 7, 51(0) ; Skip ELSE block
38 : LDA 4, 5(5) ; Compute callee base from caller size
39 : LD 1, 1(5) ; Load parameter 'publicKey' into R1
40 : ST 1, 1(4) ; Store argument 0 in callee frame
41 : LD 1, 2(5) ; Load parameter 'privateKey' into R1
42 : ST 1, 2(4) ; Store argument 1 in callee frame
43 : LDA 6, 47(0) ; Return address
44 : ST 6, 0(4) ; Store return address into callee frame
45 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
46 : LDA 7, 151(0) ; Call factor
47 : LD 1, 3(5) ; Load callee result into R1
48 : LDC 2, 5(0) ; Caller frame size
49 : SUB 5, 5, 2 ; Pop back to caller
50 : ST 1, 3(5) ; Store result into caller’s return slot
51 : LD 1, 3(5) ; Load main return value into R1
52 : LD 6, 0(5) ; Load main return address
53 : LDA 7, 0(6) ; Return from main
54 : LD 1, 1(5) ; Load parameter 'a' into R1
55 : ST 1, 4(5) ; Spill left operand at depth 0
56 : LD 1, 2(5) ; Load parameter 'b' into R1
57 : LD 2, 4(5) ; Restore left operand from depth 0
58 : SUB 1, 2, 1 ; left - right for less-than check
59 : JLT 1, 2(7) ; If R1 < 0, jump to true
60 : LDC 1, 0(0) ; false
61 : LDA 7, 1(7) ; skip setting true
62 : LDC 1, 1(0) ; true
63 : JEQ 1, 66(0) ; If condition is false, jump to ELSE
64 : LD 1, 1(5) ; Load parameter 'a' into R1
65 : LDA 7, 82(0) ; Skip ELSE block
66 : LDA 4, 5(5) ; Compute callee base from caller size
67 : LD 1, 1(5) ; Load parameter 'a' into R1
68 : ST 1, 4(5) ; Spill left operand at depth 0
69 : LD 1, 2(5) ; Load parameter 'b' into R1
70 : LD 2, 4(5) ; Restore left operand from depth 0
71 : SUB 1, 2, 1 ; R1 = left - right
72 : ST 1, 1(4) ; Store argument 0 in callee frame
73 : LD 1, 2(5) ; Load parameter 'b' into R1
74 : ST 1, 2(4) ; Store argument 1 in callee frame
75 : LDA 6, 79(0) ; Return address
76 : ST 6, 0(4) ; Store return address into callee frame
77 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
78 : LDA 7, 54(0) ; Call remainder
79 : LD 1, 3(5) ; Load callee result into R1
80 : LDC 2, 5(0) ; Caller frame size
81 : SUB 5, 5, 2 ; Pop back to caller
82 : ST 1, 3(5) ; Store function result into frame return slot
83 : LD 6, 0(5) ; Load return address
84 : LDA 7, 0(6) ; Return to caller
85 : LD 1, 2(5) ; Load parameter 'b' into R1
86 : ST 1, 4(5) ; Spill left operand at depth 0
87 : LDC 1, 0(0) ; Load integer-literal into R1
88 : LD 2, 4(5) ; Restore left operand from depth 0
89 : SUB 1, 2, 1 ; left - right for equality check
90 : JEQ 1, 2(7) ; If R1 == 0, jump to true
91 : LDC 1, 0(0) ; false
92 : LDA 7, 1(7) ; skip setting true
93 : LDC 1, 1(0) ; true
94 : JEQ 1, 97(0) ; If condition is false, jump to ELSE
95 : LD 1, 1(5) ; Load parameter 'a' into R1
96 : LDA 7, 120(0) ; Skip ELSE block
97 : LDA 4, 5(5) ; Compute callee base from caller size
98 : LD 1, 2(5) ; Load parameter 'b' into R1
99 : ST 1, 1(4) ; Store argument 0 in callee frame
100 : LDA 4, 5(5) ; Compute callee base from caller size
101 : LD 1, 1(5) ; Load parameter 'a' into R1
102 : ST 1, 1(4) ; Store argument 0 in callee frame
103 : LD 1, 2(5) ; Load parameter 'b' into R1
104 : ST 1, 2(4) ; Store argument 1 in callee frame
105 : LDA 6, 109(0) ; Return address
106 : ST 6, 0(4) ; Store return address into callee frame
107 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
108 : LDA 7, 54(0) ; Call remainder
109 : LD 1, 3(5) ; Load callee result into R1
110 : LDC 2, 5(0) ; Caller frame size
111 : SUB 5, 5, 2 ; Pop back to caller
112 : ST 1, 2(4) ; Store argument 1 in callee frame
113 : LDA 6, 117(0) ; Return address
114 : ST 6, 0(4) ; Store return address into callee frame
115 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
116 : LDA 7, 85(0) ; Call gcd
117 : LD 1, 3(5) ; Load callee result into R1
118 : LDC 2, 5(0) ; Caller frame size
119 : SUB 5, 5, 2 ; Pop back to caller
120 : ST 1, 3(5) ; Store function result into frame return slot
121 : LD 6, 0(5) ; Load return address
122 : LDA 7, 0(6) ; Return to caller
123 : LD 1, 1(5) ; Load parameter 'publicKey' into R1
124 : ST 1, 5(5) ; Spill left operand at depth 0
125 : LD 1, 3(5) ; Load parameter 'commonFactor' into R1
126 : LD 2, 5(5) ; Restore left operand from depth 0
127 : DIV 1, 2, 1 ; R1 = left / right
128 : LDA 4, 5(5) ; Compute callee base from caller size
129 : LDA 6, 133(0) ; Return address
130 : ST 6, 0(4) ; Store return address into callee frame
131 : ADD 5, 4, 0 ; Push new frame (R5 := callee base)
132 : LDA 7, 11(0) ; Call built-in print
133 : LDC 2, 5(0) ; Caller frame size
134 : SUB 5, 5, 2 ; Pop back to caller
135 : LD 1, 2(5) ; Load parameter 'privateKey' into R1
136 : ST 1, 5(5) ; Spill left operand at depth 0
137 : LD 1, 3(5) ; Load parameter 'commonFactor' into R1
138 : LD 2, 5(5) ; Restore left operand from depth 0
139 : DIV 1, 2, 1 ; R1 = left / right
140 : LDA 4, 5(5) ; Compute callee base from caller size
141 : LDA 6, 145(0) ; Return address
142 : ST 6, 0(4) ; Store return address into callee frame
143 : ADD 5, 4, 0 ; Push new frame (R5 := callee base)
144 : LDA 7, 11(0) ; Call built-in print
145 : LDC 2, 5(0) ; Caller frame size
146 : SUB 5, 5, 2 ; Pop back to caller
147 : LD 1, 3(5) ; Load parameter 'commonFactor' into R1
148 : ST 1, 4(5) ; Store function result into frame return slot
149 : LD 6, 0(5) ; Load return address
150 : LDA 7, 0(6) ; Return to caller
151 : LDA 4, 4(5) ; Compute callee base from caller size
152 : LD 1, 1(5) ; Load parameter 'publicKey' into R1
153 : ST 1, 1(4) ; Store argument 0 in callee frame
154 : LD 1, 2(5) ; Load parameter 'privateKey' into R1
155 : ST 1, 2(4) ; Store argument 1 in callee frame
156 : LDA 4, 4(5) ; Compute callee base from caller size
157 : LD 1, 1(5) ; Load parameter 'publicKey' into R1
158 : ST 1, 1(4) ; Store argument 0 in callee frame
159 : LD 1, 2(5) ; Load parameter 'privateKey' into R1
160 : ST 1, 2(4) ; Store argument 1 in callee frame
161 : LDA 6, 165(0) ; Return address
162 : ST 6, 0(4) ; Store return address into callee frame
163 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
164 : LDA 7, 85(0) ; Call gcd
165 : LD 1, 3(5) ; Load callee result into R1
166 : LDC 2, 4(0) ; Caller frame size
167 : SUB 5, 5, 2 ; Pop back to caller
168 : ST 1, 3(4) ; Store argument 2 in callee frame
169 : LDA 6, 173(0) ; Return address
170 : ST 6, 0(4) ; Store return address into callee frame
171 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
172 : LDA 7, 123(0) ; Call displayAndPrint
173 : LD 1, 4(5) ; Load callee result into R1
174 : LDC 2, 4(0) ; Caller frame size
175 : SUB 5, 5, 2 ; Pop back to caller
176 : ST 1, 3(5) ; Store function result into frame return slot
177 : LD 6, 0(5) ; Load return address
178 : LDA 7, 0(6) ; Return to caller
