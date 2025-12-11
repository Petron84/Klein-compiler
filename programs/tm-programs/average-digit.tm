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
13 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2+i)
14 : LDC 1, 0(0) ; Load integer-literal into R1
15 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2+i)
16 : LDC 1, 0(0) ; Load integer-literal into R1
17 : ST 1, 5(5) ; Stage arg 2 in caller temp (P+2+i)
18 : LDA 4, 8(5) ; Callee base for arg copy
19 : LD 1, 3(5) ; Load staged arg 0 from caller temp
20 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
21 : LD 1, 4(5) ; Load staged arg 1 from caller temp
22 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
23 : LD 1, 5(5) ; Load staged arg 2 from caller temp
24 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
25 : LDA 6, 29(0) ; Return address
26 : ST 6, 0(4) ; Store return in callee frame
27 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
28 : LDA 7, 91(0) ; Call average_digit
29 : LD 1, 4(5) ; Load callee result into R1
30 : LDC 2, 8(0) ; Callee frame size
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
53 : ST 1, 4(5) ; Spill left operand at depth 0
54 : LD 1, 2(5) ; Load parameter 'n' into R1
55 : LD 2, 4(5) ; Restore left operand from depth 0
56 : DIV 1, 2, 1 ; R1 = left / right
57 : LDA 4, 3(5) ; Callee base for built-in print
58 : LDA 6, 62(0) ; Return address
59 : ST 6, 0(4) ; Store return address in callee frame
60 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
61 : LDA 7, 9(0) ; Call built-in print
62 : LDC 2, 3(0) ; Callee frame size (print)
63 : SUB 5, 5, 2 ; Pop back to caller
64 : LD 1, 1(5) ; Load parameter 'sum' into R1
65 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2+i)
66 : LD 1, 2(5) ; Load parameter 'n' into R1
67 : ST 1, 5(5) ; Stage arg 1 in caller temp (P+2+i)
68 : LDA 4, 6(5) ; Callee base for arg copy
69 : LD 1, 4(5) ; Load staged arg 0 from caller temp
70 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
71 : LD 1, 5(5) ; Load staged arg 1 from caller temp
72 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
73 : LDA 6, 77(0) ; Return address
74 : ST 6, 0(4) ; Store return in callee frame
75 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
76 : LDA 7, 36(0) ; Call MOD
77 : LD 1, 3(5) ; Load callee result into R1
78 : LDC 2, 6(0) ; Callee frame size
79 : SUB 5, 5, 2 ; Pop callee frame
80 : LDA 4, 3(5) ; Callee base for built-in print
81 : LDA 6, 85(0) ; Return address
82 : ST 6, 0(4) ; Store return address in callee frame
83 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
84 : LDA 7, 9(0) ; Call built-in print
85 : LDC 2, 3(0) ; Callee frame size (print)
86 : SUB 5, 5, 2 ; Pop back to caller
87 : LD 1, 2(5) ; Load parameter 'n' into R1
88 : ST 1, 3(5) ; Store function result into frame return slot
89 : LD 6, 0(5) ; Load return address
90 : LDA 7, 0(6) ; Return to caller
91 : LD 1, 1(5) ; Load parameter 'n' into R1
92 : ST 1, 5(5) ; Spill left operand at depth 0
93 : LDC 1, 10(0) ; Load integer-literal into R1
94 : LD 2, 5(5) ; Restore left operand from depth 0
95 : SUB 1, 2, 1 ; left - right for less-than check
96 : JLT 1, 2(7) ; If R1 < 0, jump to true
97 : LDC 1, 0(0) ; false
98 : LDA 7, 1(7) ; skip setting true
99 : LDC 1, 1(0) ; true
100 : JEQ 1, 126(0) ; If condition is false, jump to ELSE
101 : LD 1, 2(5) ; Load parameter 'sum' into R1
102 : ST 1, 5(5) ; Spill left operand at depth 0
103 : LD 1, 1(5) ; Load parameter 'n' into R1
104 : LD 2, 5(5) ; Restore left operand from depth 0
105 : ADD 1, 2, 1 ; R1 = left + right
106 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2+i)
107 : LD 1, 3(5) ; Load parameter 'i' into R1
108 : ST 1, 5(5) ; Spill left operand at depth 0
109 : LDC 1, 1(0) ; Load integer-literal into R1
110 : LD 2, 5(5) ; Restore left operand from depth 0
111 : ADD 1, 2, 1 ; R1 = left + right
112 : ST 1, 6(5) ; Stage arg 1 in caller temp (P+2+i)
113 : LDA 4, 6(5) ; Callee base for arg copy
114 : LD 1, 5(5) ; Load staged arg 0 from caller temp
115 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
116 : LD 1, 6(5) ; Load staged arg 1 from caller temp
117 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
118 : LDA 6, 122(0) ; Return address
119 : ST 6, 0(4) ; Store return in callee frame
120 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
121 : LDA 7, 52(0) ; Call print_and_return
122 : LD 1, 3(5) ; Load callee result into R1
123 : LDC 2, 6(0) ; Callee frame size
124 : SUB 5, 5, 2 ; Pop callee frame
125 : LDA 7, !temp_6(0) ; Skip ELSE block
126 : LD 1, 1(5) ; Load parameter 'n' into R1
127 : ST 1, 5(5) ; Spill left operand at depth 0
128 : LDC 1, 10(0) ; Load integer-literal into R1
129 : LD 2, 5(5) ; Restore left operand from depth 0
130 : DIV 1, 2, 1 ; R1 = left / right
131 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2+i)
132 : LD 1, 2(5) ; Load parameter 'sum' into R1
133 : ST 1, 5(5) ; Spill left operand at depth 0
134 : LD 1, 1(5) ; Load parameter 'n' into R1
135 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2+i)
136 : LDC 1, 10(0) ; Load integer-literal into R1
137 : ST 1, 6(5) ; Stage arg 1 in caller temp (P+2+i)
138 : LDA 4, 6(5) ; Callee base for arg copy
139 : LD 1, 5(5) ; Load staged arg 0 from caller temp
140 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
141 : LD 1, 6(5) ; Load staged arg 1 from caller temp
142 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
143 : LDA 6, 147(0) ; Return address
144 : ST 6, 0(4) ; Store return in callee frame
145 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
146 : LDA 7, 36(0) ; Call MOD
147 : LD 1, 3(5) ; Load callee result into R1
148 : LDC 2, 6(0) ; Callee frame size
149 : SUB 5, 5, 2 ; Pop callee frame
150 : LD 2, 5(5) ; Restore left operand from depth 0
151 : ADD 1, 2, 1 ; R1 = left + right
152 : ST 1, 6(5) ; Stage arg 1 in caller temp (P+2+i)
153 : LD 1, 3(5) ; Load parameter 'i' into R1
154 : ST 1, 5(5) ; Spill left operand at depth 0
155 : LDC 1, 1(0) ; Load integer-literal into R1
156 : LD 2, 5(5) ; Restore left operand from depth 0
157 : ADD 1, 2, 1 ; R1 = left + right
158 : ST 1, 7(5) ; Stage arg 2 in caller temp (P+2+i)
159 : LDA 4, 8(5) ; Callee base for arg copy
160 : LD 1, 5(5) ; Load staged arg 0 from caller temp
161 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
162 : LD 1, 6(5) ; Load staged arg 1 from caller temp
163 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
164 : LD 1, 7(5) ; Load staged arg 2 from caller temp
165 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
166 : LDA 6, 170(0) ; Return address
167 : ST 6, 0(4) ; Store return in callee frame
168 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
169 : LDA 7, 91(0) ; Call average_digit
170 : LD 1, 4(5) ; Load callee result into R1
171 : LDC 2, 8(0) ; Callee frame size
172 : SUB 5, 5, 2 ; Pop callee frame
173 : ST 1, 4(5) ; Store function result into frame return slot
174 : LD 6, 0(5) ; Load return address
175 : LDA 7, 0(6) ; Return to caller
