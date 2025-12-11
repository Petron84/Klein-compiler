0 : LDC 5, 1(0) ; Set DMEM pointer (R5) to main stack frame base
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
13 : ST 1, 3(5) ; Stage arg 0 in caller frame outgoing area
14 : LDC 1, 0(0) ; Load integer-literal into R1
15 : ST 1, 4(5) ; Stage arg 1 in caller frame outgoing area
16 : LDC 1, 0(0) ; Load integer-literal into R1
17 : ST 1, 5(5) ; Stage arg 2 in caller frame outgoing area
18 : LDA 4, 6(5) ; Compute future callee base from caller size
19 : LD 2, 3(5) ; Load staged arg 0 from caller frame
20 : ST 2, 1(4) ; Store arg 0 into callee frame
21 : LD 2, 4(5) ; Load staged arg 1 from caller frame
22 : ST 2, 2(4) ; Store arg 1 into callee frame
23 : LD 2, 5(5) ; Load staged arg 2 from caller frame
24 : ST 2, 3(4) ; Store arg 2 into callee frame
25 : LDA 6, 29(0) ; Return address
26 : ST 6, 0(4) ; Store return in callee frame
27 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
28 : LDA 7, 80(0) ; Call average_digit
29 : LD 1, 4(5) ; Load callee result into R1
30 : LDC 2, 6(0) ; Callee frame size
31 : SUB 5, 5, 2 ; Pop callee frame
32 : ST 1, 2(5) ; Store result into caller’s frame
33 : LD 1, 2(5) ; Load main return value into R1
34 : LD 6, 0(5) ; Load main return address
35 : LDA 7, 0(6) ; Return from main
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
53 : ST 1, 4(5) ; Stage arg 0 in caller frame outgoing area
54 : LD 1, 2(5) ; Load parameter 'n' into R1
55 : ST 1, 5(5) ; Stage arg 1 in caller frame outgoing area
56 : LDA 4, 6(5) ; Compute future callee base from caller size
57 : LD 2, 4(5) ; Load staged arg 0 from caller frame
58 : ST 2, 1(4) ; Store arg 0 into callee frame
59 : LDA 6, 63(0) ; Return address
60 : ST 6, 0(4) ; Store return in callee frame
61 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
62 : LDA 7, 9(0) ; Call built-in print
63 : LDC 2, 3(0) ; Callee frame size
64 : SUB 5, 5, 2 ; Pop callee frame
65 : ST 1, 4(5) ; Stage arg 0 in caller frame outgoing area
66 : ST 1, 5(5) ; Stage arg 1 in caller frame outgoing area
67 : LDA 4, 6(5) ; Compute future callee base from caller size
68 : LD 2, 4(5) ; Load staged arg 0 from caller frame
69 : ST 2, 1(4) ; Store arg 0 into callee frame
70 : LDA 6, 74(0) ; Return address
71 : ST 6, 0(4) ; Store return in callee frame
72 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
73 : LDA 7, 9(0) ; Call built-in print
74 : LDC 2, 3(0) ; Callee frame size
75 : SUB 5, 5, 2 ; Pop callee frame
76 : LD 1, 2(5) ; Load parameter 'n' into R1
77 : ST 1, 3(5) ; Store function result into frame return slot
78 : LD 6, 0(5) ; Load return address
79 : LDA 7, 0(6) ; Return to caller
80 : LD 1, 1(5) ; Load parameter 'n' into R1
81 : ST 1, 5(5) ; Spill left operand at depth 0
82 : LDC 1, 10(0) ; Load integer-literal into R1
83 : LD 2, 5(5) ; Restore left operand from depth 0
84 : SUB 1, 2, 1 ; left - right for less-than check
85 : JLT 1, 2(7) ; If R1 < 0, jump to true
86 : LDC 1, 0(0) ; false
87 : LDA 7, 1(7) ; skip setting true
88 : LDC 1, 1(0) ; true
89 : JEQ 1, 115(0) ; If condition is false, jump to ELSE
90 : LD 1, 2(5) ; Load parameter 'sum' into R1
91 : ST 1, 5(5) ; Spill left operand at depth 0
92 : LD 1, 1(5) ; Load parameter 'n' into R1
93 : LD 2, 5(5) ; Restore left operand from depth 0
94 : ADD 1, 2, 1 ; R1 = left + right
95 : ST 1, 6(5) ; Stage arg 0 in caller frame outgoing area
96 : LD 1, 3(5) ; Load parameter 'i' into R1
97 : ST 1, 5(5) ; Spill left operand at depth 0
98 : LDC 1, 1(0) ; Load integer-literal into R1
99 : LD 2, 5(5) ; Restore left operand from depth 0
100 : ADD 1, 2, 1 ; R1 = left + right
101 : ST 1, 7(5) ; Stage arg 1 in caller frame outgoing area
102 : LDA 4, 9(5) ; Compute future callee base from caller size
103 : LD 2, 6(5) ; Load staged arg 0 from caller frame
104 : ST 2, 1(4) ; Store arg 0 into callee frame
105 : LD 2, 7(5) ; Load staged arg 1 from caller frame
106 : ST 2, 2(4) ; Store arg 1 into callee frame
107 : LDA 6, 111(0) ; Return address
108 : ST 6, 0(4) ; Store return in callee frame
109 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
110 : LDA 7, 52(0) ; Call print_and_return
111 : LD 1, 3(5) ; Load callee result into R1
112 : LDC 2, 4(0) ; Callee frame size
113 : SUB 5, 5, 2 ; Pop callee frame
114 : LDA 7, 162(0) ; Skip ELSE block
115 : LD 1, 1(5) ; Load parameter 'n' into R1
116 : ST 1, 5(5) ; Spill left operand at depth 0
117 : LDC 1, 10(0) ; Load integer-literal into R1
118 : LD 2, 5(5) ; Restore left operand from depth 0
119 : DIV 1, 2, 1 ; R1 = left / right
120 : ST 1, 6(5) ; Stage arg 0 in caller frame outgoing area
121 : LD 1, 2(5) ; Load parameter 'sum' into R1
122 : ST 1, 5(5) ; Spill left operand at depth 0
123 : LD 1, 1(5) ; Load parameter 'n' into R1
124 : ST 1, 6(5) ; Stage arg 0 in caller frame outgoing area
125 : LDC 1, 10(0) ; Load integer-literal into R1
126 : ST 1, 7(5) ; Stage arg 1 in caller frame outgoing area
127 : LDA 4, 9(5) ; Compute future callee base from caller size
128 : LD 2, 6(5) ; Load staged arg 0 from caller frame
129 : ST 2, 1(4) ; Store arg 0 into callee frame
130 : LD 2, 7(5) ; Load staged arg 1 from caller frame
131 : ST 2, 2(4) ; Store arg 1 into callee frame
132 : LDA 6, 136(0) ; Return address
133 : ST 6, 0(4) ; Store return in callee frame
134 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
135 : LDA 7, 36(0) ; Call MOD
136 : LD 1, 3(5) ; Load callee result into R1
137 : LDC 2, 6(0) ; Callee frame size
138 : SUB 5, 5, 2 ; Pop callee frame
139 : LD 2, 5(5) ; Restore left operand from depth 0
140 : ADD 1, 2, 1 ; R1 = left + right
141 : ST 1, 7(5) ; Stage arg 1 in caller frame outgoing area
142 : LD 1, 3(5) ; Load parameter 'i' into R1
143 : ST 1, 5(5) ; Spill left operand at depth 0
144 : LDC 1, 1(0) ; Load integer-literal into R1
145 : LD 2, 5(5) ; Restore left operand from depth 0
146 : ADD 1, 2, 1 ; R1 = left + right
147 : ST 1, 8(5) ; Stage arg 2 in caller frame outgoing area
148 : LDA 4, 9(5) ; Compute future callee base from caller size
149 : LD 2, 6(5) ; Load staged arg 0 from caller frame
150 : ST 2, 1(4) ; Store arg 0 into callee frame
151 : LD 2, 7(5) ; Load staged arg 1 from caller frame
152 : ST 2, 2(4) ; Store arg 1 into callee frame
153 : LD 2, 8(5) ; Load staged arg 2 from caller frame
154 : ST 2, 3(4) ; Store arg 2 into callee frame
155 : LDA 6, 159(0) ; Return address
156 : ST 6, 0(4) ; Store return in callee frame
157 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
158 : LDA 7, 80(0) ; Call average_digit
159 : LD 1, 4(5) ; Load callee result into R1
160 : LDC 2, 6(0) ; Callee frame size
161 : SUB 5, 5, 2 ; Pop callee frame
162 : ST 1, 4(5) ; Store function result into frame return slot
163 : LD 6, 0(5) ; Load return address
164 : LDA 7, 0(6) ; Return to caller
