0 : LDC 5, 1(0) ; Set DMEM pointer (R5) to main stack frame base
1 : ADD 4, 5, 0 ; Set top of caller frame (R4 := R5)
2 : LDA 6, 2(7) ; Calculate return address (PC + 2)
3 : ST 6, 0(5) ; Store return address in main frame
4 : LDA 7, 10(0) ; Branch to main function
5 : OUT 1, 0, 0 ; Return/print result from main in R1
6 : HALT 0, 0, 0 ; Terminate program
7 : OUT 1, 0, 0 ; Hardcoded print: output R1
8 : LD 6, 0(5) ; Load return address from current frame
9 : LDA 7, 0(6) ; Jump back to caller
10 : LDC 1, 318817047(0) ; Load integer-literal into R1
11 : ST 1, 2(5) ; Spill left operand at depth 0
12 : LDC 1, 11(0) ; Load integer-literal into R1
13 : ST 1, 3(5) ; Spill left operand at depth 1
14 : LDC 1, 1461(0) ; Load integer-literal into R1
15 : LD 2, 3(5) ; Restore left operand from depth 1
16 : MUL 1, 2, 1 ; R1 = left * right
17 : ST 1, 3(5) ; Spill left operand at depth 1
18 : LDC 1, 24(0) ; Load integer-literal into R1
19 : LD 2, 3(5) ; Restore left operand from depth 1
20 : MUL 1, 2, 1 ; R1 = left * right
21 : ST 1, 3(5) ; Spill left operand at depth 1
22 : LDC 1, 60(0) ; Load integer-literal into R1
23 : LD 2, 3(5) ; Restore left operand from depth 1
24 : MUL 1, 2, 1 ; R1 = left * right
25 : ST 1, 3(5) ; Spill left operand at depth 1
26 : LDC 1, 60(0) ; Load integer-literal into R1
27 : LD 2, 3(5) ; Restore left operand from depth 1
28 : MUL 1, 2, 1 ; R1 = left * right
29 : ST 1, 3(5) ; Spill left operand at depth 1
30 : LDC 1, 4(0) ; Load integer-literal into R1
31 : LD 2, 3(5) ; Restore left operand from depth 1
32 : DIV 1, 2, 1 ; R1 = left / right
33 : ST 1, 3(5) ; Spill left operand at depth 1
34 : LDC 1, 8(0) ; Load integer-literal into R1
35 : LD 2, 3(5) ; Restore left operand from depth 1
36 : DIV 1, 2, 1 ; R1 = left / right
37 : LD 2, 2(5) ; Restore left operand from depth 0
38 : ADD 1, 2, 1 ; R1 = left + right
39 : ST 1, 2(5) ; Spill left operand at depth 0
40 : LDC 1, 11(0) ; Load integer-literal into R1
41 : ST 1, 3(5) ; Spill left operand at depth 1
42 : LDC 1, 1461(0) ; Load integer-literal into R1
43 : LD 2, 3(5) ; Restore left operand from depth 1
44 : MUL 1, 2, 1 ; R1 = left * right
45 : ST 1, 3(5) ; Spill left operand at depth 1
46 : LDC 1, 24(0) ; Load integer-literal into R1
47 : LD 2, 3(5) ; Restore left operand from depth 1
48 : MUL 1, 2, 1 ; R1 = left * right
49 : ST 1, 3(5) ; Spill left operand at depth 1
50 : LDC 1, 60(0) ; Load integer-literal into R1
51 : LD 2, 3(5) ; Restore left operand from depth 1
52 : MUL 1, 2, 1 ; R1 = left * right
53 : ST 1, 3(5) ; Spill left operand at depth 1
54 : LDC 1, 60(0) ; Load integer-literal into R1
55 : LD 2, 3(5) ; Restore left operand from depth 1
56 : MUL 1, 2, 1 ; R1 = left * right
57 : ST 1, 3(5) ; Spill left operand at depth 1
58 : LDC 1, 4(0) ; Load integer-literal into R1
59 : LD 2, 3(5) ; Restore left operand from depth 1
60 : DIV 1, 2, 1 ; R1 = left / right
61 : ST 1, 3(5) ; Spill left operand at depth 1
62 : LDC 1, 13(0) ; Load integer-literal into R1
63 : LD 2, 3(5) ; Restore left operand from depth 1
64 : DIV 1, 2, 1 ; R1 = left / right
65 : LD 2, 2(5) ; Restore left operand from depth 0
66 : SUB 1, 2, 1 ; R1 = left - right
67 : ST 1, 2(5) ; Spill left operand at depth 0
68 : LDC 1, 11(0) ; Load integer-literal into R1
69 : ST 1, 3(5) ; Spill left operand at depth 1
70 : LDC 1, 1461(0) ; Load integer-literal into R1
71 : LD 2, 3(5) ; Restore left operand from depth 1
72 : MUL 1, 2, 1 ; R1 = left * right
73 : ST 1, 3(5) ; Spill left operand at depth 1
74 : LDC 1, 24(0) ; Load integer-literal into R1
75 : LD 2, 3(5) ; Restore left operand from depth 1
76 : MUL 1, 2, 1 ; R1 = left * right
77 : ST 1, 3(5) ; Spill left operand at depth 1
78 : LDC 1, 60(0) ; Load integer-literal into R1
79 : LD 2, 3(5) ; Restore left operand from depth 1
80 : MUL 1, 2, 1 ; R1 = left * right
81 : ST 1, 3(5) ; Spill left operand at depth 1
82 : LDC 1, 60(0) ; Load integer-literal into R1
83 : LD 2, 3(5) ; Restore left operand from depth 1
84 : MUL 1, 2, 1 ; R1 = left * right
85 : ST 1, 3(5) ; Spill left operand at depth 1
86 : LDC 1, 4(0) ; Load integer-literal into R1
87 : LD 2, 3(5) ; Restore left operand from depth 1
88 : DIV 1, 2, 1 ; R1 = left / right
89 : ST 1, 3(5) ; Spill left operand at depth 1
90 : LDC 1, 38(0) ; Load integer-literal into R1
91 : LD 2, 3(5) ; Restore left operand from depth 1
92 : DIV 1, 2, 1 ; R1 = left / right
93 : LD 2, 2(5) ; Restore left operand from depth 0
94 : ADD 1, 2, 1 ; R1 = left + right
95 : ST 1, 1(5) ; Store result into current frame's return slot
96 : LD 1, 1(5) ; Load main return value into R1
97 : LD 6, 0(5) ; Load main return address
98 : LDA 7, 0(6) ; Return from main
