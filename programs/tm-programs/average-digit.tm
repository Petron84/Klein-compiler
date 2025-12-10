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
15 : LDC 1, 0(0) ; Load integer-literal into R1
16 : ST 1, 2(4) ; Store argument 1 in callee frame
17 : LDC 1, 0(0) ; Load integer-literal into R1
18 : ST 1, 3(4) ; Store argument 2 in callee frame
19 : LDA 6, 23(0) ; Return address
20 : ST 6, 0(4) ; Store return address into callee frame
21 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
22 : LDA 7, 81(0) ; Call average_digit
23 : LD 1, 4(5) ; Load callee result into R1
24 : LDC 2, 3(0) ; Caller frame size
25 : SUB 5, 5, 2 ; Pop back to caller
26 : ST 1, 2(5) ; Store result into caller’s return slot
27 : LD 1, 2(5) ; Load main return value into R1
28 : LD 6, 0(5) ; Load main return address
29 : LDA 7, 0(6) ; Return from main
30 : LD 1, 1(5) ; Load parameter 'm' into R1
31 : ST 1, 4(5) ; Spill left operand at depth 0
32 : LD 1, 1(5) ; Load parameter 'm' into R1
33 : ST 1, 5(5) ; Spill left operand at depth 1
34 : LD 1, 2(5) ; Load parameter 'n' into R1
35 : LD 2, 5(5) ; Restore left operand from depth 1
36 : DIV 1, 2, 1 ; R1 = left / right
37 : ST 1, 5(5) ; Spill left operand at depth 1
38 : LD 1, 2(5) ; Load parameter 'n' into R1
39 : LD 2, 5(5) ; Restore left operand from depth 1
40 : MUL 1, 2, 1 ; R1 = left * right
41 : LD 2, 4(5) ; Restore left operand from depth 0
42 : SUB 1, 2, 1 ; R1 = left - right
43 : ST 1, 3(5) ; Store function result into frame return slot
44 : LD 6, 0(5) ; Load return address
45 : LDA 7, 0(6) ; Return to caller
46 : LD 1, 1(5) ; Load parameter 'sum' into R1
47 : ST 1, 4(5) ; Spill left operand at depth 0
48 : LD 1, 2(5) ; Load parameter 'n' into R1
49 : LD 2, 4(5) ; Restore left operand from depth 0
50 : DIV 1, 2, 1 ; R1 = left / right
51 : LDA 4, 4(5) ; Compute callee base from caller size
52 : LDA 6, 56(0) ; Return address
53 : ST 6, 0(4) ; Store return address into callee frame
54 : ADD 5, 4, 0 ; Push new frame (R5 := callee base)
55 : LDA 7, 9(0) ; Call built-in print
56 : LDC 2, 4(0) ; Caller frame size
57 : SUB 5, 5, 2 ; Pop back to caller
58 : LDA 4, 4(5) ; Compute callee base from caller size
59 : LD 1, 1(5) ; Load parameter 'sum' into R1
60 : ST 1, 1(4) ; Store argument 0 in callee frame
61 : LD 1, 2(5) ; Load parameter 'n' into R1
62 : ST 1, 2(4) ; Store argument 1 in callee frame
63 : LDA 6, 67(0) ; Return address
64 : ST 6, 0(4) ; Store return address into callee frame
65 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
66 : LDA 7, 30(0) ; Call MOD
67 : LD 1, 3(5) ; Load callee result into R1
68 : LDC 2, 4(0) ; Caller frame size
69 : SUB 5, 5, 2 ; Pop back to caller
70 : LDA 4, 4(5) ; Compute callee base from caller size
71 : LDA 6, 75(0) ; Return address
72 : ST 6, 0(4) ; Store return address into callee frame
73 : ADD 5, 4, 0 ; Push new frame (R5 := callee base)
74 : LDA 7, 9(0) ; Call built-in print
75 : LDC 2, 4(0) ; Caller frame size
76 : SUB 5, 5, 2 ; Pop back to caller
77 : LD 1, 2(5) ; Load parameter 'n' into R1
78 : ST 1, 3(5) ; Store function result into frame return slot
79 : LD 6, 0(5) ; Load return address
80 : LDA 7, 0(6) ; Return to caller
81 : LD 1, 1(5) ; Load parameter 'n' into R1
82 : ST 1, 5(5) ; Spill left operand at depth 0
83 : LDC 1, 10(0) ; Load integer-literal into R1
84 : LD 2, 5(5) ; Restore left operand from depth 0
85 : SUB 1, 2, 1 ; left - right for less-than check
86 : JLT 1, 2(7) ; If R1 < 0, jump to true
87 : LDC 1, 0(0) ; false
88 : LDA 7, 1(7) ; skip setting true
89 : LDC 1, 1(0) ; true
90 : JEQ 1, 112(0) ; If condition is false, jump to ELSE
91 : LDA 4, 6(5) ; Compute callee base from caller size
92 : LD 1, 2(5) ; Load parameter 'sum' into R1
93 : ST 1, 5(5) ; Spill left operand at depth 0
94 : LD 1, 1(5) ; Load parameter 'n' into R1
95 : LD 2, 5(5) ; Restore left operand from depth 0
96 : ADD 1, 2, 1 ; R1 = left + right
97 : ST 1, 1(4) ; Store argument 0 in callee frame
98 : LD 1, 3(5) ; Load parameter 'i' into R1
99 : ST 1, 5(5) ; Spill left operand at depth 0
100 : LDC 1, 1(0) ; Load integer-literal into R1
101 : LD 2, 5(5) ; Restore left operand from depth 0
102 : ADD 1, 2, 1 ; R1 = left + right
103 : ST 1, 2(4) ; Store argument 1 in callee frame
104 : LDA 6, 108(0) ; Return address
105 : ST 6, 0(4) ; Store return address into callee frame
106 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
107 : LDA 7, 46(0) ; Call print_and_return
108 : LD 1, 3(5) ; Load callee result into R1
109 : LDC 2, 6(0) ; Caller frame size
110 : SUB 5, 5, 2 ; Pop back to caller
111 : LDA 7, 149(0) ; Skip ELSE block
112 : LDA 4, 6(5) ; Compute callee base from caller size
113 : LD 1, 1(5) ; Load parameter 'n' into R1
114 : ST 1, 5(5) ; Spill left operand at depth 0
115 : LDC 1, 10(0) ; Load integer-literal into R1
116 : LD 2, 5(5) ; Restore left operand from depth 0
117 : DIV 1, 2, 1 ; R1 = left / right
118 : ST 1, 1(4) ; Store argument 0 in callee frame
119 : LD 1, 2(5) ; Load parameter 'sum' into R1
120 : ST 1, 5(5) ; Spill left operand at depth 0
121 : LDA 4, 6(5) ; Compute callee base from caller size
122 : LD 1, 1(5) ; Load parameter 'n' into R1
123 : ST 1, 1(4) ; Store argument 0 in callee frame
124 : LDC 1, 10(0) ; Load integer-literal into R1
125 : ST 1, 2(4) ; Store argument 1 in callee frame
126 : LDA 6, 130(0) ; Return address
127 : ST 6, 0(4) ; Store return address into callee frame
128 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
129 : LDA 7, 30(0) ; Call MOD
130 : LD 1, 3(5) ; Load callee result into R1
131 : LDC 2, 6(0) ; Caller frame size
132 : SUB 5, 5, 2 ; Pop back to caller
133 : LD 2, 5(5) ; Restore left operand from depth 0
134 : ADD 1, 2, 1 ; R1 = left + right
135 : ST 1, 2(4) ; Store argument 1 in callee frame
136 : LD 1, 3(5) ; Load parameter 'i' into R1
137 : ST 1, 5(5) ; Spill left operand at depth 0
138 : LDC 1, 1(0) ; Load integer-literal into R1
139 : LD 2, 5(5) ; Restore left operand from depth 0
140 : ADD 1, 2, 1 ; R1 = left + right
141 : ST 1, 3(4) ; Store argument 2 in callee frame
142 : LDA 6, 146(0) ; Return address
143 : ST 6, 0(4) ; Store return address into callee frame
144 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
145 : LDA 7, 81(0) ; Call average_digit
146 : LD 1, 4(5) ; Load callee result into R1
147 : LDC 2, 6(0) ; Caller frame size
148 : SUB 5, 5, 2 ; Pop back to caller
149 : ST 1, 4(5) ; Store function result into frame return slot
150 : LD 6, 0(5) ; Load return address
151 : LDA 7, 0(6) ; Return to caller
