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
12 : LDA 4, 3(5) ; Compute callee base from caller size
13 : LD 1, 1(5) ; Load parameter 'n' into R1
14 : ST 1, 1(4) ; Store argument 0 in callee frame
15 : LDC 1, 1(0) ; Load integer-literal into R1
16 : ST 1, 2(4) ; Store argument 1 in callee frame
17 : LDA 6, 21(0) ; Return address
18 : ST 6, 0(4) ; Store return address into callee frame
19 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
20 : LDA 7, 154(0) ; Call loopToN
21 : LD 1, 3(5) ; Load callee result into R1
22 : LDC 2, 3(0) ; Caller frame size
23 : SUB 5, 5, 2 ; Pop back to caller
24 : ST 1, 2(5) ; Store result into caller’s return slot
25 : LD 1, 2(5) ; Load main return value into R1
26 : LD 6, 0(5) ; Load main return address
27 : LDA 7, 0(6) ; Return from main
28 : LD 1, 1(5) ; Load parameter 'num' into R1
29 : ST 1, 4(5) ; Spill left operand at depth 0
30 : LD 1, 2(5) ; Load parameter 'den' into R1
31 : LD 2, 4(5) ; Restore left operand from depth 0
32 : SUB 1, 2, 1 ; left - right for less-than check
33 : JLT 1, 2(7) ; If R1 < 0, jump to true
34 : LDC 1, 0(0) ; false
35 : LDA 7, 1(7) ; skip setting true
36 : LDC 1, 1(0) ; true
37 : JEQ 1, 40(0) ; If condition is false, jump to ELSE
38 : LD 1, 1(5) ; Load parameter 'num' into R1
39 : LDA 7, 56(0) ; Skip ELSE block
40 : LDA 4, 5(5) ; Compute callee base from caller size
41 : LD 1, 1(5) ; Load parameter 'num' into R1
42 : ST 1, 4(5) ; Spill left operand at depth 0
43 : LD 1, 2(5) ; Load parameter 'den' into R1
44 : LD 2, 4(5) ; Restore left operand from depth 0
45 : SUB 1, 2, 1 ; R1 = left - right
46 : ST 1, 1(4) ; Store argument 0 in callee frame
47 : LD 1, 2(5) ; Load parameter 'den' into R1
48 : ST 1, 2(4) ; Store argument 1 in callee frame
49 : LDA 6, 53(0) ; Return address
50 : ST 6, 0(4) ; Store return address into callee frame
51 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
52 : LDA 7, 28(0) ; Call remainder
53 : LD 1, 3(5) ; Load callee result into R1
54 : LDC 2, 5(0) ; Caller frame size
55 : SUB 5, 5, 2 ; Pop back to caller
56 : ST 1, 3(5) ; Store function result into frame return slot
57 : LD 6, 0(5) ; Load return address
58 : LDA 7, 0(6) ; Return to caller
59 : LDA 4, 5(5) ; Compute callee base from caller size
60 : LD 1, 2(5) ; Load parameter 'b' into R1
61 : ST 1, 1(4) ; Store argument 0 in callee frame
62 : LD 1, 1(5) ; Load parameter 'a' into R1
63 : ST 1, 2(4) ; Store argument 1 in callee frame
64 : LDA 6, 68(0) ; Return address
65 : ST 6, 0(4) ; Store return address into callee frame
66 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
67 : LDA 7, 28(0) ; Call remainder
68 : LD 1, 3(5) ; Load callee result into R1
69 : LDC 2, 5(0) ; Caller frame size
70 : SUB 5, 5, 2 ; Pop back to caller
71 : ST 1, 4(5) ; Spill left operand at depth 0
72 : LDC 1, 0(0) ; Load integer-literal into R1
73 : LD 2, 4(5) ; Restore left operand from depth 0
74 : SUB 1, 2, 1 ; left - right for equality check
75 : JEQ 1, 2(7) ; If R1 == 0, jump to true
76 : LDC 1, 0(0) ; false
77 : LDA 7, 1(7) ; skip setting true
78 : LDC 1, 1(0) ; true
79 : ST 1, 3(5) ; Store function result into frame return slot
80 : LD 6, 0(5) ; Load return address
81 : LDA 7, 0(6) ; Return to caller
82 : LD 1, 2(5) ; Load parameter 'current' into R1
83 : LDA 4, 5(5) ; Compute callee base from caller size
84 : LDA 6, 88(0) ; Return address
85 : ST 6, 0(4) ; Store return address into callee frame
86 : ADD 5, 4, 0 ; Push new frame (R5 := callee base)
87 : LDA 7, 9(0) ; Call built-in print
88 : LDC 2, 5(0) ; Caller frame size
89 : SUB 5, 5, 2 ; Pop back to caller
90 : LDA 4, 5(5) ; Compute callee base from caller size
91 : LD 1, 1(5) ; Load parameter 'n' into R1
92 : ST 1, 1(4) ; Store argument 0 in callee frame
93 : LD 1, 2(5) ; Load parameter 'current' into R1
94 : ST 1, 4(5) ; Spill left operand at depth 0
95 : LDC 1, 1(0) ; Load integer-literal into R1
96 : LD 2, 4(5) ; Restore left operand from depth 0
97 : ADD 1, 2, 1 ; R1 = left + right
98 : ST 1, 2(4) ; Store argument 1 in callee frame
99 : LDA 6, 103(0) ; Return address
100 : ST 6, 0(4) ; Store return address into callee frame
101 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
102 : LDA 7, 154(0) ; Call loopToN
103 : LD 1, 3(5) ; Load callee result into R1
104 : LDC 2, 5(0) ; Caller frame size
105 : SUB 5, 5, 2 ; Pop back to caller
106 : ST 1, 3(5) ; Store function result into frame return slot
107 : LD 6, 0(5) ; Load return address
108 : LDA 7, 0(6) ; Return to caller
109 : LDA 4, 5(5) ; Compute callee base from caller size
110 : LD 1, 2(5) ; Load parameter 'current' into R1
111 : ST 1, 1(4) ; Store argument 0 in callee frame
112 : LD 1, 1(5) ; Load parameter 'n' into R1
113 : ST 1, 2(4) ; Store argument 1 in callee frame
114 : LDA 6, 118(0) ; Return address
115 : ST 6, 0(4) ; Store return address into callee frame
116 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
117 : LDA 7, 59(0) ; Call divides
118 : LD 1, 3(5) ; Load callee result into R1
119 : LDC 2, 5(0) ; Caller frame size
120 : SUB 5, 5, 2 ; Pop back to caller
121 : JEQ 1, 135(0) ; If condition is false, jump to ELSE
122 : LDA 4, 5(5) ; Compute callee base from caller size
123 : LD 1, 1(5) ; Load parameter 'n' into R1
124 : ST 1, 1(4) ; Store argument 0 in callee frame
125 : LD 1, 2(5) ; Load parameter 'current' into R1
126 : ST 1, 2(4) ; Store argument 1 in callee frame
127 : LDA 6, 131(0) ; Return address
128 : ST 6, 0(4) ; Store return address into callee frame
129 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
130 : LDA 7, 82(0) ; Call printAndLoop
131 : LD 1, 3(5) ; Load callee result into R1
132 : LDC 2, 5(0) ; Caller frame size
133 : SUB 5, 5, 2 ; Pop back to caller
134 : LDA 7, 151(0) ; Skip ELSE block
135 : LDA 4, 5(5) ; Compute callee base from caller size
136 : LD 1, 1(5) ; Load parameter 'n' into R1
137 : ST 1, 1(4) ; Store argument 0 in callee frame
138 : LD 1, 2(5) ; Load parameter 'current' into R1
139 : ST 1, 4(5) ; Spill left operand at depth 0
140 : LDC 1, 1(0) ; Load integer-literal into R1
141 : LD 2, 4(5) ; Restore left operand from depth 0
142 : ADD 1, 2, 1 ; R1 = left + right
143 : ST 1, 2(4) ; Store argument 1 in callee frame
144 : LDA 6, 148(0) ; Return address
145 : ST 6, 0(4) ; Store return address into callee frame
146 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
147 : LDA 7, 154(0) ; Call loopToN
148 : LD 1, 3(5) ; Load callee result into R1
149 : LDC 2, 5(0) ; Caller frame size
150 : SUB 5, 5, 2 ; Pop back to caller
151 : ST 1, 3(5) ; Store function result into frame return slot
152 : LD 6, 0(5) ; Load return address
153 : LDA 7, 0(6) ; Return to caller
154 : LD 1, 1(5) ; Load parameter 'n' into R1
155 : ST 1, 4(5) ; Spill left operand at depth 0
156 : LD 1, 2(5) ; Load parameter 'current' into R1
157 : LD 2, 4(5) ; Restore left operand from depth 0
158 : SUB 1, 2, 1 ; left - right for equality check
159 : JEQ 1, 2(7) ; If R1 == 0, jump to true
160 : LDC 1, 0(0) ; false
161 : LDA 7, 1(7) ; skip setting true
162 : LDC 1, 1(0) ; true
163 : JEQ 1, 166(0) ; If condition is false, jump to ELSE
164 : LD 1, 1(5) ; Load parameter 'n' into R1
165 : LDA 7, 178(0) ; Skip ELSE block
166 : LDA 4, 5(5) ; Compute callee base from caller size
167 : LD 1, 1(5) ; Load parameter 'n' into R1
168 : ST 1, 1(4) ; Store argument 0 in callee frame
169 : LD 1, 2(5) ; Load parameter 'current' into R1
170 : ST 1, 2(4) ; Store argument 1 in callee frame
171 : LDA 6, 175(0) ; Return address
172 : ST 6, 0(4) ; Store return address into callee frame
173 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
174 : LDA 7, 109(0) ; Call testAndLoop
175 : LD 1, 3(5) ; Load callee result into R1
176 : LDC 2, 5(0) ; Caller frame size
177 : SUB 5, 5, 2 ; Pop back to caller
178 : ST 1, 3(5) ; Store function result into frame return slot
179 : LD 6, 0(5) ; Load return address
180 : LDA 7, 0(6) ; Return to caller
