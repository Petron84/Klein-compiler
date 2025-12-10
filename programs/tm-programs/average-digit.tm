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
13 : LDA 4, 3(5) ; Recompute callee base from caller size
14 : ST 1, 1(4) ; Store argument 0 in callee frame
15 : LDC 1, 0(0) ; Load integer-literal into R1
16 : LDA 4, 3(5) ; Recompute callee base from caller size
17 : ST 1, 2(4) ; Store argument 1 in callee frame
18 : LDC 1, 0(0) ; Load integer-literal into R1
19 : LDA 4, 3(5) ; Recompute callee base from caller size
20 : ST 1, 3(4) ; Store argument 2 in callee frame
21 : LDA 4, 3(5) ; Recompute callee base from caller size
22 : LDA 6, 26(0) ; Return address
23 : ST 6, 0(4) ; Store return address into callee frame
24 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
25 : LDA 7, 89(0) ; Call average_digit
26 : LD 1, 4(5) ; Load callee result into R1
27 : LDC 2, 6(0) ; Callee frame size
28 : SUB 5, 5, 2 ; Pop back to caller
29 : ST 1, 2(5) ; Store result into caller’s return slot
30 : LDC 5, 2(0) ; Anchor R5 to main frame base (DMEM[N+1])
31 : ST 1, 2(5) ; Store final result into MAIN frame's return slot
32 : LDC 5, 2(0) ; Reset R5 to main frame base (DMEM[N+1])
33 : LD 1, 2(5) ; Load main return value into R1
34 : LD 6, 0(5) ; Load root return address from main frame
35 : LDA 7, 0(6) ; Return from main to runtime epilogue
36 : LD 1, 1(5) ; Load parameter 'm' into R1
37 : ST 1, 4(5) ; Spill left operand at depth 0
38 : LD 1, 1(5) ; Load parameter 'm' into R1
39 : ST 1, 5(5) ; Spill left operand at depth 1
40 : LD 1, 2(5) ; Load parameter 'n' into R1
41 : LD 2, 5(5) ; Restore left operand from depth 1
42 : DIV 1, 2, 1 ; R1 = left / right
43 : ST 1, 5(5) ; Spill left operand at depth 1
44 : LD 1, 2(5) ; Load parameter 'n' into R1
45 : LD 2, 5(5) ; Restore left operand from depth 1
46 : MUL 1, 2, 1 ; R1 = left * right
47 : LD 2, 4(5) ; Restore left operand from depth 0
48 : SUB 1, 2, 1 ; R1 = left - right
49 : ST 1, 3(5) ; Store function result into frame return slot
50 : LD 6, 0(5) ; Load return address
51 : LDA 7, 0(6) ; Return to caller
52 : LD 1, 1(5) ; Load parameter 'sum' into R1
53 : ST 1, 4(5) ; Spill left operand at depth 0
54 : LD 1, 2(5) ; Load parameter 'n' into R1
55 : LD 2, 4(5) ; Restore left operand from depth 0
56 : DIV 1, 2, 1 ; R1 = left / right
57 : LDA 4, 4(5) ; Recompute callee base from caller size
58 : LDA 6, 62(0) ; Return address
59 : ST 6, 0(4) ; Store return address in callee frame
60 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
61 : LDA 7, 9(0) ; Call built-in print
62 : LDC 2, 3(0) ; Callee frame size
63 : SUB 5, 5, 2 ; Pop back to caller
64 : LD 1, 1(5) ; Load parameter 'sum' into R1
65 : LDA 4, 4(5) ; Recompute callee base from caller size
66 : ST 1, 1(4) ; Store argument 0 in callee frame
67 : LD 1, 2(5) ; Load parameter 'n' into R1
68 : LDA 4, 4(5) ; Recompute callee base from caller size
69 : ST 1, 2(4) ; Store argument 1 in callee frame
70 : LDA 4, 4(5) ; Recompute callee base from caller size
71 : LDA 6, 75(0) ; Return address
72 : ST 6, 0(4) ; Store return address into callee frame
73 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
74 : LDA 7, 36(0) ; Call MOD
75 : LD 1, 3(5) ; Load callee result into R1
76 : LDC 2, 6(0) ; Callee frame size
77 : SUB 5, 5, 2 ; Pop back to caller
78 : LDA 4, 4(5) ; Recompute callee base from caller size
79 : LDA 6, 83(0) ; Return address
80 : ST 6, 0(4) ; Store return address in callee frame
81 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
82 : LDA 7, 9(0) ; Call built-in print
83 : LDC 2, 3(0) ; Callee frame size
84 : SUB 5, 5, 2 ; Pop back to caller
85 : LD 1, 2(5) ; Load parameter 'n' into R1
86 : ST 1, 3(5) ; Store function result into frame return slot
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
98 : JEQ 1, 122(0) ; If condition is false, jump to ELSE
99 : LD 1, 2(5) ; Load parameter 'sum' into R1
100 : ST 1, 5(5) ; Spill left operand at depth 0
101 : LD 1, 1(5) ; Load parameter 'n' into R1
102 : LD 2, 5(5) ; Restore left operand from depth 0
103 : ADD 1, 2, 1 ; R1 = left + right
104 : LDA 4, 6(5) ; Recompute callee base from caller size
105 : ST 1, 1(4) ; Store argument 0 in callee frame
106 : LD 1, 3(5) ; Load parameter 'i' into R1
107 : ST 1, 5(5) ; Spill left operand at depth 0
108 : LDC 1, 1(0) ; Load integer-literal into R1
109 : LD 2, 5(5) ; Restore left operand from depth 0
110 : ADD 1, 2, 1 ; R1 = left + right
111 : LDA 4, 6(5) ; Recompute callee base from caller size
112 : ST 1, 2(4) ; Store argument 1 in callee frame
113 : LDA 4, 6(5) ; Recompute callee base from caller size
114 : LDA 6, 118(0) ; Return address
115 : ST 6, 0(4) ; Store return address into callee frame
116 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
117 : LDA 7, 52(0) ; Call print_and_return
118 : LD 1, 3(5) ; Load callee result into R1
119 : LDC 2, 4(0) ; Callee frame size
120 : SUB 5, 5, 2 ; Pop back to caller
121 : LDA 7, 164(0) ; Skip ELSE block
122 : LD 1, 1(5) ; Load parameter 'n' into R1
123 : ST 1, 5(5) ; Spill left operand at depth 0
124 : LDC 1, 10(0) ; Load integer-literal into R1
125 : LD 2, 5(5) ; Restore left operand from depth 0
126 : DIV 1, 2, 1 ; R1 = left / right
127 : LDA 4, 6(5) ; Recompute callee base from caller size
128 : ST 1, 1(4) ; Store argument 0 in callee frame
129 : LD 1, 2(5) ; Load parameter 'sum' into R1
130 : ST 1, 5(5) ; Spill left operand at depth 0
131 : LD 1, 1(5) ; Load parameter 'n' into R1
132 : LDA 4, 6(5) ; Recompute callee base from caller size
133 : ST 1, 1(4) ; Store argument 0 in callee frame
134 : LDC 1, 10(0) ; Load integer-literal into R1
135 : LDA 4, 6(5) ; Recompute callee base from caller size
136 : ST 1, 2(4) ; Store argument 1 in callee frame
137 : LDA 4, 6(5) ; Recompute callee base from caller size
138 : LDA 6, 142(0) ; Return address
139 : ST 6, 0(4) ; Store return address into callee frame
140 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
141 : LDA 7, 36(0) ; Call MOD
142 : LD 1, 3(5) ; Load callee result into R1
143 : LDC 2, 6(0) ; Callee frame size
144 : SUB 5, 5, 2 ; Pop back to caller
145 : LD 2, 5(5) ; Restore left operand from depth 0
146 : ADD 1, 2, 1 ; R1 = left + right
147 : LDA 4, 6(5) ; Recompute callee base from caller size
148 : ST 1, 2(4) ; Store argument 1 in callee frame
149 : LD 1, 3(5) ; Load parameter 'i' into R1
150 : ST 1, 5(5) ; Spill left operand at depth 0
151 : LDC 1, 1(0) ; Load integer-literal into R1
152 : LD 2, 5(5) ; Restore left operand from depth 0
153 : ADD 1, 2, 1 ; R1 = left + right
154 : LDA 4, 6(5) ; Recompute callee base from caller size
155 : ST 1, 3(4) ; Store argument 2 in callee frame
156 : LDA 4, 6(5) ; Recompute callee base from caller size
157 : LDA 6, 161(0) ; Return address
158 : ST 6, 0(4) ; Store return address into callee frame
159 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
160 : LDA 7, 89(0) ; Call average_digit
161 : LD 1, 4(5) ; Load callee result into R1
162 : LDC 2, 6(0) ; Callee frame size
163 : SUB 5, 5, 2 ; Pop back to caller
164 : ST 1, 4(5) ; Store function result into frame return slot
165 : LD 6, 0(5) ; Load return address
166 : LDA 7, 0(6) ; Return to caller
