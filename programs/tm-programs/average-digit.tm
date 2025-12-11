0 : LDC 5, 2(0) ; Set DMEM pointer (R5) to main stack frame base
1 : LDC 2, 3(0) ; Main frame size
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
14 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
15 : ST 1, 1(2) ; Store argument 0 in callee
16 : LDC 1, 0(0) ; Load integer-literal into R1
17 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
18 : ST 1, 2(2) ; Store argument 1 in callee
19 : LDC 1, 0(0) ; Load integer-literal into R1
20 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
21 : ST 1, 3(2) ; Store argument 2 in callee
22 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
23 : LDA 6, 29(0) ; Return address
24 : ST 6, 0(2) ; Store return in callee frame
25 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
26 : LDC 3, 6(0) ; Callee frame size
27 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
28 : LDA 7, 103(0) ; Call average_digit
29 : LD 1, 4(5) ; Load callee result into R1
30 : LDC 2, 6(0) ; Callee frame size
31 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
32 : LDC 3, 3(0) ; Caller frame size
33 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
34 : ST 1, 2(5) ; Store result into caller’s frame
35 : LD 1, 2(5) ; Load main return value into R1
36 : LD 6, 0(5) ; Load main return address
37 : LDA 7, 0(6) ; Return from main
38 : LD 1, 1(5) ; Load parameter 'm' into R1
39 : ST 1, 4(5) ; Spill left operand at depth 0
40 : LD 1, 1(5) ; Load parameter 'm' into R1
41 : ST 1, 5(5) ; Spill left operand at depth 1
42 : LD 1, 2(5) ; Load parameter 'n' into R1
43 : LD 2, 5(5) ; Restore left operand from depth 1
44 : DIV 1, 2, 1 ; R1 = left / right
45 : ST 1, 5(5) ; Spill left operand at depth 1
46 : LD 1, 2(5) ; Load parameter 'n' into R1
47 : LD 2, 5(5) ; Restore left operand from depth 1
48 : MUL 1, 2, 1 ; R1 = left * right
49 : LD 2, 4(5) ; Restore left operand from depth 0
50 : SUB 1, 2, 1 ; R1 = left - right
51 : ST 1, 3(5) ; Store function result into frame return slot
52 : LD 6, 0(5) ; Load return address
53 : LDA 7, 0(6) ; Return to caller
54 : LD 1, 1(5) ; Load parameter 'sum' into R1
55 : ST 1, 4(5) ; Spill left operand at depth 0
56 : LD 1, 2(5) ; Load parameter 'n' into R1
57 : LD 2, 4(5) ; Restore left operand from depth 0
58 : DIV 1, 2, 1 ; R1 = left / right
59 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
60 : LDA 6, 66(0) ; Return address
61 : ST 6, 0(2) ; Store return address in callee frame
62 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
63 : LDC 3, 3(0) ; Callee frame size
64 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
65 : LDA 7, 10(0) ; Call built-in print
66 : LDC 2, 3(0) ; Callee frame size
67 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
68 : LDC 3, 4(0) ; Caller frame size
69 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
70 : LD 1, 1(5) ; Load parameter 'sum' into R1
71 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
72 : ST 1, 1(2) ; Store argument 0 in callee
73 : LD 1, 2(5) ; Load parameter 'n' into R1
74 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
75 : ST 1, 2(2) ; Store argument 1 in callee
76 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
77 : LDA 6, 83(0) ; Return address
78 : ST 6, 0(2) ; Store return in callee frame
79 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
80 : LDC 3, 6(0) ; Callee frame size
81 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
82 : LDA 7, 38(0) ; Call MOD
83 : LD 1, 3(5) ; Load callee result into R1
84 : LDC 2, 6(0) ; Callee frame size
85 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
86 : LDC 3, 4(0) ; Caller frame size
87 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
88 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
89 : LDA 6, 95(0) ; Return address
90 : ST 6, 0(2) ; Store return address in callee frame
91 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
92 : LDC 3, 3(0) ; Callee frame size
93 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
94 : LDA 7, 10(0) ; Call built-in print
95 : LDC 2, 3(0) ; Callee frame size
96 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
97 : LDC 3, 4(0) ; Caller frame size
98 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
99 : LD 1, 2(5) ; Load parameter 'n' into R1
100 : ST 1, 3(5) ; Store function result into frame return slot
101 : LD 6, 0(5) ; Load return address
102 : LDA 7, 0(6) ; Return to caller
103 : LD 1, 1(5) ; Load parameter 'n' into R1
104 : ST 1, 5(5) ; Spill left operand at depth 0
105 : LDC 1, 10(0) ; Load integer-literal into R1
106 : LD 2, 5(5) ; Restore left operand from depth 0
107 : SUB 1, 2, 1 ; left - right for less-than check
108 : JLT 1, 2(7) ; If R1 < 0, jump to true
109 : LDC 1, 0(0) ; false
110 : LDA 7, 1(7) ; skip setting true
111 : LDC 1, 1(0) ; true
112 : JEQ 1, 140(0) ; If condition is false, jump to ELSE
113 : LD 1, 2(5) ; Load parameter 'sum' into R1
114 : ST 1, 5(5) ; Spill left operand at depth 0
115 : LD 1, 1(5) ; Load parameter 'n' into R1
116 : LD 2, 5(5) ; Restore left operand from depth 0
117 : ADD 1, 2, 1 ; R1 = left + right
118 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
119 : ST 1, 1(2) ; Store argument 0 in callee
120 : LD 1, 3(5) ; Load parameter 'i' into R1
121 : ST 1, 5(5) ; Spill left operand at depth 0
122 : LDC 1, 1(0) ; Load integer-literal into R1
123 : LD 2, 5(5) ; Restore left operand from depth 0
124 : ADD 1, 2, 1 ; R1 = left + right
125 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
126 : ST 1, 2(2) ; Store argument 1 in callee
127 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
128 : LDA 6, 134(0) ; Return address
129 : ST 6, 0(2) ; Store return in callee frame
130 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
131 : LDC 3, 4(0) ; Callee frame size
132 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
133 : LDA 7, 54(0) ; Call print_and_return
134 : LD 1, 3(5) ; Load callee result into R1
135 : LDC 2, 4(0) ; Callee frame size
136 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
137 : LDC 3, 6(0) ; Caller frame size
138 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
139 : LDA 7, 190(0) ; Skip ELSE block
140 : LD 1, 1(5) ; Load parameter 'n' into R1
141 : ST 1, 5(5) ; Spill left operand at depth 0
142 : LDC 1, 10(0) ; Load integer-literal into R1
143 : LD 2, 5(5) ; Restore left operand from depth 0
144 : DIV 1, 2, 1 ; R1 = left / right
145 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
146 : ST 1, 1(2) ; Store argument 0 in callee
147 : LD 1, 2(5) ; Load parameter 'sum' into R1
148 : ST 1, 5(5) ; Spill left operand at depth 0
149 : LD 1, 1(5) ; Load parameter 'n' into R1
150 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
151 : ST 1, 1(2) ; Store argument 0 in callee
152 : LDC 1, 10(0) ; Load integer-literal into R1
153 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
154 : ST 1, 2(2) ; Store argument 1 in callee
155 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
156 : LDA 6, 162(0) ; Return address
157 : ST 6, 0(2) ; Store return in callee frame
158 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
159 : LDC 3, 6(0) ; Callee frame size
160 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
161 : LDA 7, 38(0) ; Call MOD
162 : LD 1, 3(5) ; Load callee result into R1
163 : LDC 2, 6(0) ; Callee frame size
164 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
165 : LDC 3, 6(0) ; Caller frame size
166 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
167 : LD 2, 5(5) ; Restore left operand from depth 0
168 : ADD 1, 2, 1 ; R1 = left + right
169 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
170 : ST 1, 2(2) ; Store argument 1 in callee
171 : LD 1, 3(5) ; Load parameter 'i' into R1
172 : ST 1, 5(5) ; Spill left operand at depth 0
173 : LDC 1, 1(0) ; Load integer-literal into R1
174 : LD 2, 5(5) ; Restore left operand from depth 0
175 : ADD 1, 2, 1 ; R1 = left + right
176 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
177 : ST 1, 3(2) ; Store argument 2 in callee
178 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
179 : LDA 6, 185(0) ; Return address
180 : ST 6, 0(2) ; Store return in callee frame
181 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
182 : LDC 3, 6(0) ; Callee frame size
183 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
184 : LDA 7, 103(0) ; Call average_digit
185 : LD 1, 4(5) ; Load callee result into R1
186 : LDC 2, 6(0) ; Callee frame size
187 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
188 : LDC 3, 6(0) ; Caller frame size
189 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
190 : ST 1, 4(5) ; Store function result into frame return slot
191 : LD 6, 0(5) ; Load return address
192 : LDA 7, 0(6) ; Return to caller
