0 : LDC 5, 4(0) ; Set DMEM pointer (R5) to main stack frame base
1 : ADD 4, 5, 0 ; Set top of caller frame (R4 := R5)
2 : LD 2, 1(0) ; Load CLI arg 1 into R2
3 : ST 2, 1(5) ; Store arg 1 into main frame parameter slot
4 : LD 2, 2(0) ; Load CLI arg 2 into R2
5 : ST 2, 2(5) ; Store arg 2 into main frame parameter slot
6 : LD 2, 3(0) ; Load CLI arg 3 into R2
7 : ST 2, 3(5) ; Store arg 3 into main frame parameter slot
8 : LDA 6, 2(7) ; Calculate return address (PC + 2)
9 : ST 6, 0(5) ; Store return address in main frame
10 : LDA 7, 16(0) ; Branch to main function
11 : OUT 1, 0, 0 ; Return/print result from main in R1
12 : HALT 0, 0, 0 ; Terminate program
13 : OUT 1, 0, 0 ; Hardcoded print: output R1
14 : LD 6, 0(5) ; Load return address from current frame
15 : LDA 7, 0(6) ; Jump back to caller
16 : LD 1, 1(5) ; Load parameter 'n' into R1
17 : LDA 4, 5(5) ; Recompute callee base from callee size
18 : ST 1, 1(4) ; Store argument 0 in callee
19 : LDC 1, 0(0) ; Load integer-literal into R1
20 : LDA 4, 5(5) ; Recompute callee base from callee size
21 : ST 1, 2(4) ; Store argument 1 in callee
22 : LDC 1, 0(0) ; Load integer-literal into R1
23 : LDA 4, 5(5) ; Recompute callee base from callee size
24 : ST 1, 3(4) ; Store argument 2 in callee
25 : LDA 4, 5(5) ; Recompute callee base from callee size
26 : LDA 6, 30(0) ; Return address
27 : ST 6, 0(4) ; Store return in callee frame
28 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
29 : LDA 7, 93(0) ; Call average_digit
30 : LD 1, 4(5) ; Load callee result into R1
31 : LDC 2, 5(0) ; Callee frame size
32 : SUB 5, 5, 2 ; Pop callee frame
33 : ST 1, 4(5) ; Store result into caller’s frame
34 : LD 1, 4(5) ; Load main return value into R1
35 : LD 6, 0(5) ; Load main return address
36 : LDA 7, 0(6) ; Return from main
37 : LD 1, 1(5) ; Load parameter 'm' into R1
38 : ST 1, 5(5) ; Spill left operand at depth 0
39 : LD 1, 1(5) ; Load parameter 'm' into R1
40 : ST 1, 6(5) ; Spill left operand at depth 1
41 : LD 1, 2(5) ; Load parameter 'n' into R1
42 : LD 2, 6(5) ; Restore left operand from depth 1
43 : DIV 1, 2, 1 ; R1 = left / right
44 : ST 1, 6(5) ; Spill left operand at depth 1
45 : LD 1, 2(5) ; Load parameter 'n' into R1
46 : LD 2, 6(5) ; Restore left operand from depth 1
47 : MUL 1, 2, 1 ; R1 = left * right
48 : LD 2, 5(5) ; Restore left operand from depth 0
49 : SUB 1, 2, 1 ; R1 = left - right
50 : ST 1, 4(5) ; Store function result into frame return slot
51 : LD 6, 0(5) ; Load return address
52 : LDA 7, 0(6) ; Return to caller
53 : LD 1, 1(5) ; Load parameter 'sum' into R1
54 : ST 1, 5(5) ; Spill left operand at depth 0
55 : LD 1, 2(5) ; Load parameter 'n' into R1
56 : LD 2, 5(5) ; Restore left operand from depth 0
57 : DIV 1, 2, 1 ; R1 = left / right
58 : LDA 4, 5(5) ; Recompute callee base from caller size
59 : LDA 6, 63(0) ; Return address
60 : ST 6, 0(4) ; Store return address in callee frame
61 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
62 : LDA 7, 13(0) ; Call built-in print
63 : LDC 2, 5(0) ; Caller frame size
64 : SUB 5, 5, 2 ; Pop back to caller
65 : LD 1, 1(5) ; Load parameter 'sum' into R1
66 : LDA 4, 5(5) ; Recompute callee base from callee size
67 : ST 1, 1(4) ; Store argument 0 in callee
68 : LD 1, 2(5) ; Load parameter 'n' into R1
69 : LDA 4, 5(5) ; Recompute callee base from callee size
70 : ST 1, 2(4) ; Store argument 1 in callee
71 : LDC 1, 0(0) ; Load integer-literal into R1
72 : LDA 4, 5(5) ; Recompute callee base from callee size
73 : ST 1, 3(4) ; Store argument 2 in callee
74 : LDA 4, 5(5) ; Recompute callee base from callee size
75 : LDA 6, 79(0) ; Return address
76 : ST 6, 0(4) ; Store return in callee frame
77 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
78 : LDA 7, 37(0) ; Call MOD
79 : LD 1, 4(5) ; Load callee result into R1
80 : LDC 2, 5(0) ; Callee frame size
81 : SUB 5, 5, 2 ; Pop callee frame
82 : LDA 4, 5(5) ; Recompute callee base from caller size
83 : LDA 6, 87(0) ; Return address
84 : ST 6, 0(4) ; Store return address in callee frame
85 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
86 : LDA 7, 13(0) ; Call built-in print
87 : LDC 2, 5(0) ; Caller frame size
88 : SUB 5, 5, 2 ; Pop back to caller
89 : LD 1, 2(5) ; Load parameter 'n' into R1
90 : ST 1, 4(5) ; Store function result into frame return slot
91 : LD 6, 0(5) ; Load return address
92 : LDA 7, 0(6) ; Return to caller
93 : LD 1, 1(5) ; Load parameter 'n' into R1
94 : ST 1, 5(5) ; Spill left operand at depth 0
95 : LDC 1, 10(0) ; Load integer-literal into R1
96 : LD 2, 5(5) ; Restore left operand from depth 0
97 : SUB 1, 2, 1 ; left - right for less-than check
98 : JLT 1, 2(7) ; If R1 < 0, jump to true
99 : LDC 1, 0(0) ; false
100 : LDA 7, 1(7) ; skip setting true
101 : LDC 1, 1(0) ; true
102 : JEQ 1, 129(0) ; If condition is false, jump to ELSE
103 : LD 1, 2(5) ; Load parameter 'sum' into R1
104 : ST 1, 5(5) ; Spill left operand at depth 0
105 : LD 1, 1(5) ; Load parameter 'n' into R1
106 : LD 2, 5(5) ; Restore left operand from depth 0
107 : ADD 1, 2, 1 ; R1 = left + right
108 : LDA 4, 6(5) ; Recompute callee base from callee size
109 : ST 1, 1(4) ; Store argument 0 in callee
110 : LD 1, 3(5) ; Load parameter 'i' into R1
111 : ST 1, 5(5) ; Spill left operand at depth 0
112 : LDC 1, 1(0) ; Load integer-literal into R1
113 : LD 2, 5(5) ; Restore left operand from depth 0
114 : ADD 1, 2, 1 ; R1 = left + right
115 : LDA 4, 6(5) ; Recompute callee base from callee size
116 : ST 1, 2(4) ; Store argument 1 in callee
117 : LDC 1, 0(0) ; Load integer-literal into R1
118 : LDA 4, 6(5) ; Recompute callee base from callee size
119 : ST 1, 3(4) ; Store argument 2 in callee
120 : LDA 4, 6(5) ; Recompute callee base from callee size
121 : LDA 6, 125(0) ; Return address
122 : ST 6, 0(4) ; Store return in callee frame
123 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
124 : LDA 7, 53(0) ; Call print_and_return
125 : LD 1, 4(5) ; Load callee result into R1
126 : LDC 2, 6(0) ; Callee frame size
127 : SUB 5, 5, 2 ; Pop callee frame
128 : LDA 7, 171(0) ; Skip ELSE block
129 : LD 1, 1(5) ; Load parameter 'n' into R1
130 : ST 1, 5(5) ; Spill left operand at depth 0
131 : LDC 1, 10(0) ; Load integer-literal into R1
132 : LD 2, 5(5) ; Restore left operand from depth 0
133 : DIV 1, 2, 1 ; R1 = left / right
134 : LDA 4, 6(5) ; Recompute callee base from callee size
135 : ST 1, 1(4) ; Store argument 0 in callee
136 : LD 1, 2(5) ; Load parameter 'sum' into R1
137 : ST 1, 5(5) ; Spill left operand at depth 0
138 : LD 1, 1(5) ; Load parameter 'n' into R1
139 : LDA 4, 6(5) ; Recompute callee base from callee size
140 : ST 1, 1(4) ; Store argument 0 in callee
141 : LDC 1, 10(0) ; Load integer-literal into R1
142 : LDA 4, 6(5) ; Recompute callee base from callee size
143 : ST 1, 2(4) ; Store argument 1 in callee
144 : LDA 4, 6(5) ; Recompute callee base from callee size
145 : LDA 6, 149(0) ; Return address
146 : ST 6, 0(4) ; Store return in callee frame
147 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
148 : LDA 7, 37(0) ; Call MOD
149 : LD 1, 4(5) ; Load callee result into R1
150 : LDC 2, 6(0) ; Callee frame size
151 : SUB 5, 5, 2 ; Pop callee frame
152 : LD 2, 5(5) ; Restore left operand from depth 0
153 : ADD 1, 2, 1 ; R1 = left + right
154 : LDA 4, 6(5) ; Recompute callee base from callee size
155 : ST 1, 2(4) ; Store argument 1 in callee
156 : LD 1, 3(5) ; Load parameter 'i' into R1
157 : ST 1, 5(5) ; Spill left operand at depth 0
158 : LDC 1, 1(0) ; Load integer-literal into R1
159 : LD 2, 5(5) ; Restore left operand from depth 0
160 : ADD 1, 2, 1 ; R1 = left + right
161 : LDA 4, 6(5) ; Recompute callee base from callee size
162 : ST 1, 3(4) ; Store argument 2 in callee
163 : LDA 4, 6(5) ; Recompute callee base from callee size
164 : LDA 6, 168(0) ; Return address
165 : ST 6, 0(4) ; Store return in callee frame
166 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
167 : LDA 7, 93(0) ; Call average_digit
168 : LD 1, 4(5) ; Load callee result into R1
169 : LDC 2, 6(0) ; Callee frame size
170 : SUB 5, 5, 2 ; Pop callee frame
171 : ST 1, 4(5) ; Store function result into frame return slot
172 : LD 6, 0(5) ; Load return address
173 : LDA 7, 0(6) ; Return to caller
