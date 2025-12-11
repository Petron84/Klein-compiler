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
13 : LDA 4, 3(5) ; Recompute callee base from callee size
14 : ST 1, 1(4) ; Store argument 0 in callee
15 : LDC 1, 0(0) ; Load integer-literal into R1
16 : LDA 4, 3(5) ; Recompute callee base from callee size
17 : ST 1, 2(4) ; Store argument 1 in callee
18 : LDC 1, 0(0) ; Load integer-literal into R1
19 : LDA 4, 3(5) ; Recompute callee base from callee size
20 : ST 1, 3(4) ; Store argument 2 in callee
21 : LDA 4, 3(5) ; Recompute callee base from callee size
22 : LDA 6, 26(0) ; Return address
23 : ST 6, 0(4) ; Store return in callee frame
24 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
25 : LDA 7, 89(0) ; Call average_digit
26 : LD 1, 4(5) ; Load callee result into R1
27 : LDC 2, 3(0) ; Callee frame size
28 : SUB 5, 5, 2 ; Pop callee frame
29 : ST 1, 2(5) ; Store result into caller’s frame
30 : LD 1, 2(5) ; Load main return value into R1
31 : LD 6, 0(5) ; Load main return address
32 : LDA 7, 0(6) ; Return from main
33 : LD 1, 1(5) ; Load parameter 'm' into R1
34 : ST 1, 5(5) ; Spill left operand at depth 0
35 : LD 1, 1(5) ; Load parameter 'm' into R1
36 : ST 1, 6(5) ; Spill left operand at depth 1
37 : LD 1, 2(5) ; Load parameter 'n' into R1
38 : LD 2, 6(5) ; Restore left operand from depth 1
39 : DIV 1, 2, 1 ; R1 = left / right
40 : ST 1, 6(5) ; Spill left operand at depth 1
41 : LD 1, 2(5) ; Load parameter 'n' into R1
42 : LD 2, 6(5) ; Restore left operand from depth 1
43 : MUL 1, 2, 1 ; R1 = left * right
44 : LD 2, 5(5) ; Restore left operand from depth 0
45 : SUB 1, 2, 1 ; R1 = left - right
46 : ST 1, 4(5) ; Store function result into frame return slot
47 : LD 6, 0(5) ; Load return address
48 : LDA 7, 0(6) ; Return to caller
49 : LD 1, 1(5) ; Load parameter 'sum' into R1
50 : ST 1, 5(5) ; Spill left operand at depth 0
51 : LD 1, 2(5) ; Load parameter 'n' into R1
52 : LD 2, 5(5) ; Restore left operand from depth 0
53 : DIV 1, 2, 1 ; R1 = left / right
54 : LDA 4, 5(5) ; Recompute callee base from caller size
55 : LDA 6, 59(0) ; Return address
56 : ST 6, 0(4) ; Store return address in callee frame
57 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
58 : LDA 7, 9(0) ; Call built-in print
59 : LDC 2, 5(0) ; Caller frame size
60 : SUB 5, 5, 2 ; Pop back to caller
61 : LD 1, 1(5) ; Load parameter 'sum' into R1
62 : LDA 4, 5(5) ; Recompute callee base from callee size
63 : ST 1, 1(4) ; Store argument 0 in callee
64 : LD 1, 2(5) ; Load parameter 'n' into R1
65 : LDA 4, 5(5) ; Recompute callee base from callee size
66 : ST 1, 2(4) ; Store argument 1 in callee
67 : LDC 1, 0(0) ; Load integer-literal into R1
68 : LDA 4, 5(5) ; Recompute callee base from callee size
69 : ST 1, 3(4) ; Store argument 2 in callee
70 : LDA 4, 5(5) ; Recompute callee base from callee size
71 : LDA 6, 75(0) ; Return address
72 : ST 6, 0(4) ; Store return in callee frame
73 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
74 : LDA 7, 33(0) ; Call MOD
75 : LD 1, 4(5) ; Load callee result into R1
76 : LDC 2, 5(0) ; Callee frame size
77 : SUB 5, 5, 2 ; Pop callee frame
78 : LDA 4, 5(5) ; Recompute callee base from caller size
79 : LDA 6, 83(0) ; Return address
80 : ST 6, 0(4) ; Store return address in callee frame
81 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
82 : LDA 7, 9(0) ; Call built-in print
83 : LDC 2, 5(0) ; Caller frame size
84 : SUB 5, 5, 2 ; Pop back to caller
85 : LD 1, 2(5) ; Load parameter 'n' into R1
86 : ST 1, 4(5) ; Store function result into frame return slot
87 : LD 6, 0(5) ; Load return address
88 : LDA 7, 0(6) ; Return to caller
89 : LD 1, 1(5) ; Load parameter 'n' into R1
90 : ST 1, 5(5) ; Spill left operand at depth 0
91 : LDC 1, 10(0) ; Load integer-literal into R1
92 : LD 2, 5(5) ; Restore left operand from depth 0
93 : SUB 1, 2, 1 ; left - right for less-than check
94 : JLT 1, 2(7) ; If R1 < 0, jump to true
95 : LDC 1, 0(0) ; false
96 : LDA 7, 1(7) ; skip setting true
97 : LDC 1, 1(0) ; true
98 : JEQ 1, 125(0) ; If condition is false, jump to ELSE
99 : LD 1, 2(5) ; Load parameter 'sum' into R1
100 : ST 1, 5(5) ; Spill left operand at depth 0
101 : LD 1, 1(5) ; Load parameter 'n' into R1
102 : LD 2, 5(5) ; Restore left operand from depth 0
103 : ADD 1, 2, 1 ; R1 = left + right
104 : LDA 4, 6(5) ; Recompute callee base from callee size
105 : ST 1, 1(4) ; Store argument 0 in callee
106 : LD 1, 3(5) ; Load parameter 'i' into R1
107 : ST 1, 5(5) ; Spill left operand at depth 0
108 : LDC 1, 1(0) ; Load integer-literal into R1
109 : LD 2, 5(5) ; Restore left operand from depth 0
110 : ADD 1, 2, 1 ; R1 = left + right
111 : LDA 4, 6(5) ; Recompute callee base from callee size
112 : ST 1, 2(4) ; Store argument 1 in callee
113 : LDC 1, 0(0) ; Load integer-literal into R1
114 : LDA 4, 6(5) ; Recompute callee base from callee size
115 : ST 1, 3(4) ; Store argument 2 in callee
116 : LDA 4, 6(5) ; Recompute callee base from callee size
117 : LDA 6, 121(0) ; Return address
118 : ST 6, 0(4) ; Store return in callee frame
119 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
120 : LDA 7, 49(0) ; Call print_and_return
121 : LD 1, 4(5) ; Load callee result into R1
122 : LDC 2, 6(0) ; Callee frame size
123 : SUB 5, 5, 2 ; Pop callee frame
124 : LDA 7, 167(0) ; Skip ELSE block
125 : LD 1, 1(5) ; Load parameter 'n' into R1
126 : ST 1, 5(5) ; Spill left operand at depth 0
127 : LDC 1, 10(0) ; Load integer-literal into R1
128 : LD 2, 5(5) ; Restore left operand from depth 0
129 : DIV 1, 2, 1 ; R1 = left / right
130 : LDA 4, 6(5) ; Recompute callee base from callee size
131 : ST 1, 1(4) ; Store argument 0 in callee
132 : LD 1, 2(5) ; Load parameter 'sum' into R1
133 : ST 1, 5(5) ; Spill left operand at depth 0
134 : LD 1, 1(5) ; Load parameter 'n' into R1
135 : LDA 4, 6(5) ; Recompute callee base from callee size
136 : ST 1, 1(4) ; Store argument 0 in callee
137 : LDC 1, 10(0) ; Load integer-literal into R1
138 : LDA 4, 6(5) ; Recompute callee base from callee size
139 : ST 1, 2(4) ; Store argument 1 in callee
140 : LDA 4, 6(5) ; Recompute callee base from callee size
141 : LDA 6, 145(0) ; Return address
142 : ST 6, 0(4) ; Store return in callee frame
143 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
144 : LDA 7, 33(0) ; Call MOD
145 : LD 1, 4(5) ; Load callee result into R1
146 : LDC 2, 6(0) ; Callee frame size
147 : SUB 5, 5, 2 ; Pop callee frame
148 : LD 2, 5(5) ; Restore left operand from depth 0
149 : ADD 1, 2, 1 ; R1 = left + right
150 : LDA 4, 6(5) ; Recompute callee base from callee size
151 : ST 1, 2(4) ; Store argument 1 in callee
152 : LD 1, 3(5) ; Load parameter 'i' into R1
153 : ST 1, 5(5) ; Spill left operand at depth 0
154 : LDC 1, 1(0) ; Load integer-literal into R1
155 : LD 2, 5(5) ; Restore left operand from depth 0
156 : ADD 1, 2, 1 ; R1 = left + right
157 : LDA 4, 6(5) ; Recompute callee base from callee size
158 : ST 1, 3(4) ; Store argument 2 in callee
159 : LDA 4, 6(5) ; Recompute callee base from callee size
160 : LDA 6, 164(0) ; Return address
161 : ST 6, 0(4) ; Store return in callee frame
162 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
163 : LDA 7, 89(0) ; Call average_digit
164 : LD 1, 4(5) ; Load callee result into R1
165 : LDC 2, 6(0) ; Callee frame size
166 : SUB 5, 5, 2 ; Pop callee frame
167 : ST 1, 4(5) ; Store function result into frame return slot
168 : LD 6, 0(5) ; Load return address
169 : LDA 7, 0(6) ; Return to caller
