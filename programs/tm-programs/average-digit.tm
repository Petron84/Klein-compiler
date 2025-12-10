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
25 : LDA 7, 87(0) ; Call average_digit
26 : LD 1, 4(5) ; Load callee result into R1
27 : LDC 2, 6(0) ; Callee frame size
28 : SUB 5, 5, 2 ; Pop back to caller
29 : ST 1, 2(5) ; Store result into caller’s return slot
30 : LDC 5, 2(0) ; Reset R5 to main frame base (DMEM[N+1])
31 : LD 1, 2(5) ; Load main return value into R1
32 : LD 6, 0(5) ; Load root return address from main frame
33 : LDA 7, 0(6) ; Return from main to runtime epilogue
34 : LD 1, 1(5) ; Load parameter 'm' into R1
35 : ST 1, 4(5) ; Spill left operand at depth 0
36 : LD 1, 1(5) ; Load parameter 'm' into R1
37 : ST 1, 5(5) ; Spill left operand at depth 1
38 : LD 1, 2(5) ; Load parameter 'n' into R1
39 : LD 2, 5(5) ; Restore left operand from depth 1
40 : DIV 1, 2, 1 ; R1 = left / right
41 : ST 1, 5(5) ; Spill left operand at depth 1
42 : LD 1, 2(5) ; Load parameter 'n' into R1
43 : LD 2, 5(5) ; Restore left operand from depth 1
44 : MUL 1, 2, 1 ; R1 = left * right
45 : LD 2, 4(5) ; Restore left operand from depth 0
46 : SUB 1, 2, 1 ; R1 = left - right
47 : ST 1, 3(5) ; Store function result into frame return slot
48 : LD 6, 0(5) ; Load return address
49 : LDA 7, 0(6) ; Return to caller
50 : LD 1, 1(5) ; Load parameter 'sum' into R1
51 : ST 1, 4(5) ; Spill left operand at depth 0
52 : LD 1, 2(5) ; Load parameter 'n' into R1
53 : LD 2, 4(5) ; Restore left operand from depth 0
54 : DIV 1, 2, 1 ; R1 = left / right
55 : LDA 4, 4(5) ; Recompute callee base from caller size
56 : LDA 6, 60(0) ; Return address
57 : ST 6, 0(4) ; Store return address in callee frame
58 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
59 : LDA 7, 9(0) ; Call built-in print
60 : LDC 2, 3(0) ; Callee frame size
61 : SUB 5, 5, 2 ; Pop back to caller
62 : LD 1, 1(5) ; Load parameter 'sum' into R1
63 : LDA 4, 4(5) ; Recompute callee base from caller size
64 : ST 1, 1(4) ; Store argument 0 in callee frame
65 : LD 1, 2(5) ; Load parameter 'n' into R1
66 : LDA 4, 4(5) ; Recompute callee base from caller size
67 : ST 1, 2(4) ; Store argument 1 in callee frame
68 : LDA 4, 4(5) ; Recompute callee base from caller size
69 : LDA 6, 73(0) ; Return address
70 : ST 6, 0(4) ; Store return address into callee frame
71 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
72 : LDA 7, 34(0) ; Call MOD
73 : LD 1, 3(5) ; Load callee result into R1
74 : LDC 2, 6(0) ; Callee frame size
75 : SUB 5, 5, 2 ; Pop back to caller
76 : LDA 4, 4(5) ; Recompute callee base from caller size
77 : LDA 6, 81(0) ; Return address
78 : ST 6, 0(4) ; Store return address in callee frame
79 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
80 : LDA 7, 9(0) ; Call built-in print
81 : LDC 2, 3(0) ; Callee frame size
82 : SUB 5, 5, 2 ; Pop back to caller
83 : LD 1, 2(5) ; Load parameter 'n' into R1
84 : ST 1, 3(5) ; Store function result into frame return slot
85 : LD 6, 0(5) ; Load return address
86 : LDA 7, 0(6) ; Return to caller
87 : LD 1, 1(5) ; Load parameter 'n' into R1
88 : ST 1, 5(5) ; Spill left operand at depth 0
89 : LDC 1, 10(0) ; Load integer-literal into R1
90 : LD 2, 5(5) ; Restore left operand from depth 0
91 : SUB 1, 2, 1 ; left - right for less-than check
92 : JLT 1, 2(7) ; If R1 < 0, jump to true
93 : LDC 1, 0(0) ; false
94 : LDA 7, 1(7) ; skip setting true
95 : LDC 1, 1(0) ; true
96 : JEQ 1, 120(0) ; If condition is false, jump to ELSE
97 : LD 1, 2(5) ; Load parameter 'sum' into R1
98 : ST 1, 5(5) ; Spill left operand at depth 0
99 : LD 1, 1(5) ; Load parameter 'n' into R1
100 : LD 2, 5(5) ; Restore left operand from depth 0
101 : ADD 1, 2, 1 ; R1 = left + right
102 : LDA 4, 6(5) ; Recompute callee base from caller size
103 : ST 1, 1(4) ; Store argument 0 in callee frame
104 : LD 1, 3(5) ; Load parameter 'i' into R1
105 : ST 1, 5(5) ; Spill left operand at depth 0
106 : LDC 1, 1(0) ; Load integer-literal into R1
107 : LD 2, 5(5) ; Restore left operand from depth 0
108 : ADD 1, 2, 1 ; R1 = left + right
109 : LDA 4, 6(5) ; Recompute callee base from caller size
110 : ST 1, 2(4) ; Store argument 1 in callee frame
111 : LDA 4, 6(5) ; Recompute callee base from caller size
112 : LDA 6, 116(0) ; Return address
113 : ST 6, 0(4) ; Store return address into callee frame
114 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
115 : LDA 7, 50(0) ; Call print_and_return
116 : LD 1, 3(5) ; Load callee result into R1
117 : LDC 2, 4(0) ; Callee frame size
118 : SUB 5, 5, 2 ; Pop back to caller
119 : LDA 7, 162(0) ; Skip ELSE block
120 : LD 1, 1(5) ; Load parameter 'n' into R1
121 : ST 1, 5(5) ; Spill left operand at depth 0
122 : LDC 1, 10(0) ; Load integer-literal into R1
123 : LD 2, 5(5) ; Restore left operand from depth 0
124 : DIV 1, 2, 1 ; R1 = left / right
125 : LDA 4, 6(5) ; Recompute callee base from caller size
126 : ST 1, 1(4) ; Store argument 0 in callee frame
127 : LD 1, 2(5) ; Load parameter 'sum' into R1
128 : ST 1, 5(5) ; Spill left operand at depth 0
129 : LD 1, 1(5) ; Load parameter 'n' into R1
130 : LDA 4, 6(5) ; Recompute callee base from caller size
131 : ST 1, 1(4) ; Store argument 0 in callee frame
132 : LDC 1, 10(0) ; Load integer-literal into R1
133 : LDA 4, 6(5) ; Recompute callee base from caller size
134 : ST 1, 2(4) ; Store argument 1 in callee frame
135 : LDA 4, 6(5) ; Recompute callee base from caller size
136 : LDA 6, 140(0) ; Return address
137 : ST 6, 0(4) ; Store return address into callee frame
138 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
139 : LDA 7, 34(0) ; Call MOD
140 : LD 1, 3(5) ; Load callee result into R1
141 : LDC 2, 6(0) ; Callee frame size
142 : SUB 5, 5, 2 ; Pop back to caller
143 : LD 2, 5(5) ; Restore left operand from depth 0
144 : ADD 1, 2, 1 ; R1 = left + right
145 : LDA 4, 6(5) ; Recompute callee base from caller size
146 : ST 1, 2(4) ; Store argument 1 in callee frame
147 : LD 1, 3(5) ; Load parameter 'i' into R1
148 : ST 1, 5(5) ; Spill left operand at depth 0
149 : LDC 1, 1(0) ; Load integer-literal into R1
150 : LD 2, 5(5) ; Restore left operand from depth 0
151 : ADD 1, 2, 1 ; R1 = left + right
152 : LDA 4, 6(5) ; Recompute callee base from caller size
153 : ST 1, 3(4) ; Store argument 2 in callee frame
154 : LDA 4, 6(5) ; Recompute callee base from caller size
155 : LDA 6, 159(0) ; Return address
156 : ST 6, 0(4) ; Store return address into callee frame
157 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
158 : LDA 7, 87(0) ; Call average_digit
159 : LD 1, 4(5) ; Load callee result into R1
160 : LDC 2, 6(0) ; Callee frame size
161 : SUB 5, 5, 2 ; Pop back to caller
162 : ST 1, 4(5) ; Store function result into frame return slot
163 : LD 6, 0(5) ; Load return address
164 : LDA 7, 0(6) ; Return to caller
