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
13 : LDA 4, 3(5) ; Compute callee base = FP + caller_size
14 : ST 1, 1(4) ; Store argument 0 in callee param slot
15 : LDC 1, 0(0) ; Load integer-literal into R1
16 : LDA 4, 3(5) ; Compute callee base = FP + caller_size
17 : ST 1, 2(4) ; Store argument 1 in callee param slot
18 : LDC 1, 0(0) ; Load integer-literal into R1
19 : LDA 4, 3(5) ; Compute callee base = FP + caller_size
20 : ST 1, 3(4) ; Store argument 2 in callee param slot
21 : LDA 4, 3(5) ; Compute callee base = FP + caller_size
22 : LDA 6, 26(0) ; Return address
23 : ST 6, 0(4) ; Store return in callee frame
24 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
25 : LDA 7, 86(0) ; Call average_digit
26 : LD 1, 4(5) ; Load callee result into R1
27 : LDC 2, 3(0) ; Caller frame size
28 : SUB 5, 5, 2 ; Pop callee frame back to caller
29 : ST 1, 2(5) ; Store result into caller’s frame return slot
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
54 : LDA 4, 4(5) ; Compute callee base = FP + caller_size
55 : LDA 6, 59(0) ; Return address
56 : ST 6, 0(4) ; Store return address in callee frame
57 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
58 : LDA 7, 9(0) ; Call built-in print
59 : LDC 2, 4(0) ; Caller frame size
60 : SUB 5, 5, 2 ; Pop back to caller
61 : LD 1, 1(5) ; Load parameter 'sum' into R1
62 : LDA 4, 4(5) ; Compute callee base = FP + caller_size
63 : ST 1, 1(4) ; Store argument 0 in callee param slot
64 : LD 1, 2(5) ; Load parameter 'n' into R1
65 : LDA 4, 4(5) ; Compute callee base = FP + caller_size
66 : ST 1, 2(4) ; Store argument 1 in callee param slot
67 : LDA 4, 4(5) ; Compute callee base = FP + caller_size
68 : LDA 6, 72(0) ; Return address
69 : ST 6, 0(4) ; Store return in callee frame
70 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
71 : LDA 7, 33(0) ; Call MOD
72 : LD 1, 3(5) ; Load callee result into R1
73 : LDC 2, 4(0) ; Caller frame size
74 : SUB 5, 5, 2 ; Pop callee frame back to caller
75 : LDA 4, 4(5) ; Compute callee base = FP + caller_size
76 : LDA 6, 80(0) ; Return address
77 : ST 6, 0(4) ; Store return address in callee frame
78 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
79 : LDA 7, 9(0) ; Call built-in print
80 : LDC 2, 4(0) ; Caller frame size
81 : SUB 5, 5, 2 ; Pop back to caller
82 : LD 1, 2(5) ; Load parameter 'n' into R1
83 : ST 1, 3(5) ; Store function result into frame return slot
84 : LD 6, 0(5) ; Load return address
85 : LDA 7, 0(6) ; Return to caller
86 : LD 1, 1(5) ; Load parameter 'n' into R1
87 : ST 1, 5(5) ; Spill left operand at depth 0
88 : LDC 1, 10(0) ; Load integer-literal into R1
89 : LD 2, 5(5) ; Restore left operand from depth 0
90 : SUB 1, 2, 1 ; left - right for less-than check
91 : JLT 1, 2(7) ; If R1 < 0, jump to true
92 : LDC 1, 0(0) ; false
93 : LDA 7, 1(7) ; skip setting true
94 : LDC 1, 1(0) ; true
95 : JEQ 1, 119(0) ; If condition is false, jump to ELSE
96 : LD 1, 2(5) ; Load parameter 'sum' into R1
97 : ST 1, 5(5) ; Spill left operand at depth 0
98 : LD 1, 1(5) ; Load parameter 'n' into R1
99 : LD 2, 5(5) ; Restore left operand from depth 0
100 : ADD 1, 2, 1 ; R1 = left + right
101 : LDA 4, 6(5) ; Compute callee base = FP + caller_size
102 : ST 1, 1(4) ; Store argument 0 in callee param slot
103 : LD 1, 3(5) ; Load parameter 'i' into R1
104 : ST 1, 5(5) ; Spill left operand at depth 0
105 : LDC 1, 1(0) ; Load integer-literal into R1
106 : LD 2, 5(5) ; Restore left operand from depth 0
107 : ADD 1, 2, 1 ; R1 = left + right
108 : LDA 4, 6(5) ; Compute callee base = FP + caller_size
109 : ST 1, 2(4) ; Store argument 1 in callee param slot
110 : LDA 4, 6(5) ; Compute callee base = FP + caller_size
111 : LDA 6, 115(0) ; Return address
112 : ST 6, 0(4) ; Store return in callee frame
113 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
114 : LDA 7, 49(0) ; Call print_and_return
115 : LD 1, 3(5) ; Load callee result into R1
116 : LDC 2, 6(0) ; Caller frame size
117 : SUB 5, 5, 2 ; Pop callee frame back to caller
118 : LDA 7, 161(0) ; Skip ELSE block
119 : LD 1, 1(5) ; Load parameter 'n' into R1
120 : ST 1, 5(5) ; Spill left operand at depth 0
121 : LDC 1, 10(0) ; Load integer-literal into R1
122 : LD 2, 5(5) ; Restore left operand from depth 0
123 : DIV 1, 2, 1 ; R1 = left / right
124 : LDA 4, 6(5) ; Compute callee base = FP + caller_size
125 : ST 1, 1(4) ; Store argument 0 in callee param slot
126 : LD 1, 2(5) ; Load parameter 'sum' into R1
127 : ST 1, 5(5) ; Spill left operand at depth 0
128 : LD 1, 1(5) ; Load parameter 'n' into R1
129 : LDA 4, 6(5) ; Compute callee base = FP + caller_size
130 : ST 1, 1(4) ; Store argument 0 in callee param slot
131 : LDC 1, 10(0) ; Load integer-literal into R1
132 : LDA 4, 6(5) ; Compute callee base = FP + caller_size
133 : ST 1, 2(4) ; Store argument 1 in callee param slot
134 : LDA 4, 6(5) ; Compute callee base = FP + caller_size
135 : LDA 6, 139(0) ; Return address
136 : ST 6, 0(4) ; Store return in callee frame
137 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
138 : LDA 7, 33(0) ; Call MOD
139 : LD 1, 3(5) ; Load callee result into R1
140 : LDC 2, 6(0) ; Caller frame size
141 : SUB 5, 5, 2 ; Pop callee frame back to caller
142 : LD 2, 5(5) ; Restore left operand from depth 0
143 : ADD 1, 2, 1 ; R1 = left + right
144 : LDA 4, 6(5) ; Compute callee base = FP + caller_size
145 : ST 1, 2(4) ; Store argument 1 in callee param slot
146 : LD 1, 3(5) ; Load parameter 'i' into R1
147 : ST 1, 5(5) ; Spill left operand at depth 0
148 : LDC 1, 1(0) ; Load integer-literal into R1
149 : LD 2, 5(5) ; Restore left operand from depth 0
150 : ADD 1, 2, 1 ; R1 = left + right
151 : LDA 4, 6(5) ; Compute callee base = FP + caller_size
152 : ST 1, 3(4) ; Store argument 2 in callee param slot
153 : LDA 4, 6(5) ; Compute callee base = FP + caller_size
154 : LDA 6, 158(0) ; Return address
155 : ST 6, 0(4) ; Store return in callee frame
156 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
157 : LDA 7, 86(0) ; Call average_digit
158 : LD 1, 4(5) ; Load callee result into R1
159 : LDC 2, 6(0) ; Caller frame size
160 : SUB 5, 5, 2 ; Pop callee frame back to caller
161 : ST 1, 4(5) ; Store function result into frame return slot
162 : LD 6, 0(5) ; Load return address
163 : LDA 7, 0(6) ; Return to caller
