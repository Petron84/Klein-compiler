0 : LDC 5, 2(0) ; Set DMEM pointer (R5) to main stack frame base
1 : LDC 2, 4(0) ; Main frame size
2 : ADD 4, 5, 2 ; Initialize stack-top (R4) to end of main frame
3 : LD 2, 1(0) ; Load CLI arg 1 into R2
4 : ST 2, 1(5) ; Store arg 1 into main frame parameter slot
5 : LDA 6, 2(7) ; Calculate return address (PC + 2)
6 : ST 6, 0(5) ; Store return address in main frame
7 : LDA 7, 13(0) ; Branch to main function
8 : OUT 1, 0, 0 ; Return/print result from main in R1
9 : HALT 0, 0, 0 ; Terminate program
10 : OUT 1, 0, 0 ; Hardcoded print: output R1
11 : LD 6, 0(5) ; Load return address from current frame
12 : LDA 7, 0(6) ; Jump back to caller
13 : LD 1, 1(5) ; Load parameter 'n' into R1
14 : ST 1, 3(5) ; Spill left operand at depth 0
15 : LDC 1, 10(0) ; Load integer-literal into R1
16 : LD 2, 3(5) ; Restore left operand from depth 0
17 : DIV 1, 2, 1 ; R1 = left / right
18 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
19 : ST 1, 1(2) ; Store argument 0 in callee
20 : LD 1, 1(5) ; Load parameter 'n' into R1
21 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
22 : ST 1, 1(2) ; Store argument 0 in callee
23 : LDC 1, 10(0) ; Load integer-literal into R1
24 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
25 : ST 1, 2(2) ; Store argument 1 in callee
26 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
27 : LDA 6, 33(0) ; Return address
28 : ST 6, 0(2) ; Store return in callee frame
29 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
30 : LDC 3, 6(0) ; Callee frame size
31 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
32 : LDA 7, 56(0) ; Call MOD
33 : LD 1, 3(5) ; Load callee result into R1
34 : LDC 2, 6(0) ; Callee frame size
35 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
36 : LDC 3, 4(0) ; Caller frame size
37 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
38 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
39 : ST 1, 2(2) ; Store argument 1 in callee
40 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
41 : LDA 6, 47(0) ; Return address
42 : ST 6, 0(2) ; Store return in callee frame
43 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
44 : LDC 3, 6(0) ; Callee frame size
45 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
46 : LDA 7, 152(0) ; Call divisibleByParts
47 : LD 1, 3(5) ; Load callee result into R1
48 : LDC 2, 6(0) ; Callee frame size
49 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
50 : LDC 3, 4(0) ; Caller frame size
51 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
52 : ST 1, 2(5) ; Store result into caller’s frame
53 : LD 1, 2(5) ; Load main return value into R1
54 : LD 6, 0(5) ; Load main return address
55 : LDA 7, 0(6) ; Return from main
56 : LD 1, 1(5) ; Load parameter 'm' into R1
57 : ST 1, 4(5) ; Spill left operand at depth 0
58 : LD 1, 1(5) ; Load parameter 'm' into R1
59 : ST 1, 5(5) ; Spill left operand at depth 1
60 : LD 1, 2(5) ; Load parameter 'n' into R1
61 : LD 2, 5(5) ; Restore left operand from depth 1
62 : DIV 1, 2, 1 ; R1 = left / right
63 : ST 1, 5(5) ; Spill left operand at depth 1
64 : LD 1, 2(5) ; Load parameter 'n' into R1
65 : LD 2, 5(5) ; Restore left operand from depth 1
66 : MUL 1, 2, 1 ; R1 = left * right
67 : LD 2, 4(5) ; Restore left operand from depth 0
68 : SUB 1, 2, 1 ; R1 = left - right
69 : ST 1, 3(5) ; Store function result into frame return slot
70 : LD 6, 0(5) ; Load return address
71 : LDA 7, 0(6) ; Return to caller
72 : LD 1, 1(5) ; Load parameter 'diff' into R1
73 : ST 1, 3(5) ; Spill left operand at depth 0
74 : LDC 1, 7(0) ; Load integer-literal into R1
75 : LD 2, 3(5) ; Restore left operand from depth 0
76 : SUB 1, 2, 1 ; left - right for equality check
77 : JEQ 1, 2(7) ; If R1 == 0, jump to true
78 : LDC 1, 0(0) ; false
79 : LDA 7, 1(7) ; skip setting true
80 : LDC 1, 1(0) ; true
81 : ST 1, 3(5) ; Spill left operand at depth 0
82 : LD 1, 1(5) ; Load parameter 'diff' into R1
83 : ST 1, 4(5) ; Spill left operand at depth 1
84 : LDC 1, 0(0) ; Load integer-literal into R1
85 : LD 2, 4(5) ; Restore left operand from depth 1
86 : SUB 1, 2, 1 ; left - right for equality check
87 : JEQ 1, 2(7) ; If R1 == 0, jump to true
88 : LDC 1, 0(0) ; false
89 : LDA 7, 1(7) ; skip setting true
90 : LDC 1, 1(0) ; true
91 : LD 2, 3(5) ; Restore left operand from depth 0
92 : ADD 1, 2, 1 ; R1 = left OR right
93 : ST 1, 3(5) ; Spill left operand at depth 0
94 : LD 1, 1(5) ; Load parameter 'diff' into R1
95 : ST 1, 4(5) ; Spill left operand at depth 1
96 : LDC 1, 7(0) ; Load integer-literal into R1
97 : SUB 1, 0, 1 ; Negate value in R1
98 : LD 2, 4(5) ; Restore left operand from depth 1
99 : SUB 1, 2, 1 ; left - right for equality check
100 : JEQ 1, 2(7) ; If R1 == 0, jump to true
101 : LDC 1, 0(0) ; false
102 : LDA 7, 1(7) ; skip setting true
103 : LDC 1, 1(0) ; true
104 : LD 2, 3(5) ; Restore left operand from depth 0
105 : ADD 1, 2, 1 ; R1 = left OR right
106 : ST 1, 3(5) ; Spill left operand at depth 0
107 : LD 1, 1(5) ; Load parameter 'diff' into R1
108 : ST 1, 4(5) ; Spill left operand at depth 1
109 : LDC 1, 14(0) ; Load integer-literal into R1
110 : SUB 1, 0, 1 ; Negate value in R1
111 : LD 2, 4(5) ; Restore left operand from depth 1
112 : SUB 1, 2, 1 ; left - right for equality check
113 : JEQ 1, 2(7) ; If R1 == 0, jump to true
114 : LDC 1, 0(0) ; false
115 : LDA 7, 1(7) ; skip setting true
116 : LDC 1, 1(0) ; true
117 : LD 2, 3(5) ; Restore left operand from depth 0
118 : ADD 1, 2, 1 ; R1 = left OR right
119 : JEQ 1, 122(0) ; If condition is false, jump to ELSE
120 : LDC 1, 1(0) ; Load boolean-literal into R1
121 : LDA 7, 149(0) ; Skip ELSE block
122 : LD 1, 1(5) ; Load parameter 'diff' into R1
123 : ST 1, 3(5) ; Spill left operand at depth 0
124 : LDC 1, 14(0) ; Load integer-literal into R1
125 : LD 2, 3(5) ; Restore left operand from depth 0
126 : SUB 1, 2, 1 ; left - right for less-than check
127 : JLT 1, 2(7) ; If R1 < 0, jump to true
128 : LDC 1, 0(0) ; false
129 : LDA 7, 1(7) ; skip setting true
130 : LDC 1, 1(0) ; true
131 : JEQ 1, 134(0) ; If condition is false, jump to ELSE
132 : LDC 1, 0(0) ; Load boolean-literal into R1
133 : LDA 7, 149(0) ; Skip ELSE block
134 : LD 1, 1(5) ; Load parameter 'diff' into R1
135 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
136 : ST 1, 1(2) ; Store argument 0 in callee
137 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
138 : LDA 6, 144(0) ; Return address
139 : ST 6, 0(2) ; Store return in callee frame
140 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
141 : LDC 3, 4(0) ; Callee frame size
142 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
143 : LDA 7, 13(0) ; Call main
144 : LD 1, 2(5) ; Load callee result into R1
145 : LDC 2, 4(0) ; Callee frame size
146 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
147 : LDC 3, 5(0) ; Caller frame size
148 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
149 : ST 1, 2(5) ; Store function result into frame return slot
150 : LD 6, 0(5) ; Load return address
151 : LDA 7, 0(6) ; Return to caller
152 : LD 1, 1(5) ; Load parameter 'left' into R1
153 : ST 1, 4(5) ; Spill left operand at depth 0
154 : LD 1, 2(5) ; Load parameter 'right' into R1
155 : ST 1, 5(5) ; Spill left operand at depth 1
156 : LDC 1, 2(0) ; Load integer-literal into R1
157 : LD 2, 5(5) ; Restore left operand from depth 1
158 : MUL 1, 2, 1 ; R1 = left * right
159 : LD 2, 4(5) ; Restore left operand from depth 0
160 : SUB 1, 2, 1 ; R1 = left - right
161 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
162 : ST 1, 1(2) ; Store argument 0 in callee
163 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
164 : LDA 6, 170(0) ; Return address
165 : ST 6, 0(2) ; Store return in callee frame
166 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
167 : LDC 3, 5(0) ; Callee frame size
168 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
169 : LDA 7, 72(0) ; Call divisibleByDifference
170 : LD 1, 2(5) ; Load callee result into R1
171 : LDC 2, 5(0) ; Callee frame size
172 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
173 : LDC 3, 6(0) ; Caller frame size
174 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
175 : ST 1, 3(5) ; Store function result into frame return slot
176 : LD 6, 0(5) ; Load return address
177 : LDA 7, 0(6) ; Return to caller
