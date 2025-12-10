0 : LDC 5, 0(0) ; Set DMEM pointer (R5) to main stack frame base
1 : ADD 4, 5, 0 ; Set R4 := R5 (caller base)
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
13 : LDA 4, 3(5) ; Compute future callee base using caller_size
14 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
15 : LDC 1, 0(0) ; Load integer-literal into R1
16 : LDA 4, 3(5) ; Compute future callee base using caller_size
17 : ST 1, 2(4) ; Store argument 1 into callee's param slot (future frame)
18 : LDC 1, 0(0) ; Load integer-literal into R1
19 : LDA 4, 3(5) ; Compute future callee base using caller_size
20 : ST 1, 3(4) ; Store argument 2 into callee's param slot (future frame)
21 : LDA 4, 3(5) ; Compute future callee base (caller_size)
22 : LDA 6, 26(0) ; Return address
23 : ST 6, 0(4) ; Store return in callee frame
24 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
25 : LDA 7, 85(0) ; Call average_digit
26 : LD 1, 4(5) ; Load callee result into R1
27 : LDC 2, 6(0) ; Callee frame size
28 : SUB 5, 5, 2 ; Pop callee frame
29 : ST 1, 2(5) ; Store result into caller’s frame
30 : LD 1, 2(5) ; Load main return value into R1
31 : LD 6, 0(5) ; Load main return address
32 : LDA 7, 0(6) ; Return from main
33 : LD 1, 1(5) ; Load parameter 'm' into R1
34 : ST 1, 4(5) ; Spill left operand at depth 0
35 : LD 1, 1(5) ; Load parameter 'm' into R1
36 : ST 1, 5(5) ; Spill left operand at depth 1
37 : LD 1, 2(5) ; Load parameter 'n' into R1
38 : LD 2, 5(5) ; Restore left operand from depth 1
39 : DIV 1, 2, 1 ; R1 = left / right
40 : ST 1, 5(5) ; Spill left operand at depth 1
41 : LD 1, 2(5) ; Load parameter 'n' into R1
42 : LD 2, 5(5) ; Restore left operand from depth 1
43 : MUL 1, 2, 1 ; R1 = left * right
44 : LD 2, 4(5) ; Restore left operand from depth 0
45 : SUB 1, 2, 1 ; R1 = left - right
46 : ST 1, 3(5) ; Store function result into frame return slot
47 : LD 6, 0(5) ; Load return address
48 : LDA 7, 0(6) ; Return to caller
49 : LD 1, 1(5) ; Load parameter 'sum' into R1
50 : ST 1, 4(5) ; Spill left operand at depth 0
51 : LD 1, 2(5) ; Load parameter 'n' into R1
52 : LD 2, 4(5) ; Restore left operand from depth 0
53 : DIV 1, 2, 1 ; R1 = left / right
54 : LDA 4, 4(5) ; Compute future callee base (caller_size)
55 : LDA 6, 59(0) ; Return address
56 : ST 6, 0(4) ; Store return address in callee frame
57 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
58 : LDA 7, 9(0) ; Call built-in print
59 : LDC 2, 4(0) ; Caller frame size
60 : SUB 5, 5, 2 ; Pop back to caller
61 : LDA 4, 4(5) ; Compute future callee base using caller_size
62 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
63 : LD 1, 2(5) ; Load parameter 'n' into R1
64 : LDA 4, 4(5) ; Compute future callee base using caller_size
65 : ST 1, 2(4) ; Store argument 1 into callee's param slot (future frame)
66 : LDA 4, 4(5) ; Compute future callee base (caller_size)
67 : LDA 6, 71(0) ; Return address
68 : ST 6, 0(4) ; Store return in callee frame
69 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
70 : LDA 7, 33(0) ; Call MOD
71 : LD 1, 3(5) ; Load callee result into R1
72 : LDC 2, 6(0) ; Callee frame size
73 : SUB 5, 5, 2 ; Pop callee frame
74 : LDA 4, 4(5) ; Compute future callee base (caller_size)
75 : LDA 6, 79(0) ; Return address
76 : ST 6, 0(4) ; Store return address in callee frame
77 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
78 : LDA 7, 9(0) ; Call built-in print
79 : LDC 2, 4(0) ; Caller frame size
80 : SUB 5, 5, 2 ; Pop back to caller
81 : LD 1, 2(5) ; Load parameter 'n' into R1
82 : ST 1, 3(5) ; Store function result into frame return slot
83 : LD 6, 0(5) ; Load return address
84 : LDA 7, 0(6) ; Return to caller
85 : LD 1, 1(5) ; Load parameter 'n' into R1
86 : ST 1, 5(5) ; Spill left operand at depth 0
87 : LDC 1, 10(0) ; Load integer-literal into R1
88 : LD 2, 5(5) ; Restore left operand from depth 0
89 : SUB 1, 2, 1 ; left - right for less-than check
90 : JLT 1, 2(7) ; If R1 < 0, jump to true
91 : LDC 1, 0(0) ; false
92 : LDA 7, 1(7) ; skip setting true
93 : LDC 1, 1(0) ; true
94 : JEQ 1, 117(0) ; If condition is false, jump to ELSE
95 : LD 1, 1(5) ; Load parameter 'sum' into R1
96 : ST 1, 4(5) ; Spill left operand at depth 0
97 : LD 1, 2(5) ; Load parameter 'n' into R1
98 : LD 2, 4(5) ; Restore left operand from depth 0
99 : ADD 1, 2, 1 ; R1 = left + right
100 : LDA 4, 6(5) ; Compute future callee base using caller_size
101 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
102 : ST 1, 4(5) ; Spill left operand at depth 0
103 : LDC 1, 1(0) ; Load integer-literal into R1
104 : LD 2, 4(5) ; Restore left operand from depth 0
105 : ADD 1, 2, 1 ; R1 = left + right
106 : LDA 4, 6(5) ; Compute future callee base using caller_size
107 : ST 1, 2(4) ; Store argument 1 into callee's param slot (future frame)
108 : LDA 4, 6(5) ; Compute future callee base (caller_size)
109 : LDA 6, 113(0) ; Return address
110 : ST 6, 0(4) ; Store return in callee frame
111 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
112 : LDA 7, 49(0) ; Call print_and_return
113 : LD 1, 3(5) ; Load callee result into R1
114 : LDC 2, 4(0) ; Callee frame size
115 : SUB 5, 5, 2 ; Pop callee frame
116 : LDA 7, 159(0) ; Skip ELSE block
117 : LD 1, 1(5) ; Load parameter 'n' into R1
118 : ST 1, 5(5) ; Spill left operand at depth 0
119 : LDC 1, 10(0) ; Load integer-literal into R1
120 : LD 2, 5(5) ; Restore left operand from depth 0
121 : DIV 1, 2, 1 ; R1 = left / right
122 : LDA 4, 6(5) ; Compute future callee base using caller_size
123 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
124 : LD 1, 2(5) ; Load parameter 'sum' into R1
125 : ST 1, 5(5) ; Spill left operand at depth 0
126 : LD 1, 2(5) ; Load parameter 'n' into R1
127 : LDA 4, 6(5) ; Compute future callee base using caller_size
128 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
129 : LDC 1, 10(0) ; Load integer-literal into R1
130 : LDA 4, 6(5) ; Compute future callee base using caller_size
131 : ST 1, 2(4) ; Store argument 1 into callee's param slot (future frame)
132 : LDA 4, 6(5) ; Compute future callee base (caller_size)
133 : LDA 6, 137(0) ; Return address
134 : ST 6, 0(4) ; Store return in callee frame
135 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
136 : LDA 7, 33(0) ; Call MOD
137 : LD 1, 3(5) ; Load callee result into R1
138 : LDC 2, 6(0) ; Callee frame size
139 : SUB 5, 5, 2 ; Pop callee frame
140 : LD 2, 5(5) ; Restore left operand from depth 0
141 : ADD 1, 2, 1 ; R1 = left + right
142 : LDA 4, 6(5) ; Compute future callee base using caller_size
143 : ST 1, 2(4) ; Store argument 1 into callee's param slot (future frame)
144 : LD 1, 3(5) ; Load parameter 'i' into R1
145 : ST 1, 5(5) ; Spill left operand at depth 0
146 : LDC 1, 1(0) ; Load integer-literal into R1
147 : LD 2, 5(5) ; Restore left operand from depth 0
148 : ADD 1, 2, 1 ; R1 = left + right
149 : LDA 4, 6(5) ; Compute future callee base using caller_size
150 : ST 1, 3(4) ; Store argument 2 into callee's param slot (future frame)
151 : LDA 4, 6(5) ; Compute future callee base (caller_size)
152 : LDA 6, 156(0) ; Return address
153 : ST 6, 0(4) ; Store return in callee frame
154 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
155 : LDA 7, 85(0) ; Call average_digit
156 : LD 1, 4(5) ; Load callee result into R1
157 : LDC 2, 6(0) ; Callee frame size
158 : SUB 5, 5, 2 ; Pop callee frame
159 : ST 1, 4(5) ; Store function result into frame return slot
160 : LD 6, 0(5) ; Load return address
161 : LDA 7, 0(6) ; Return to caller
