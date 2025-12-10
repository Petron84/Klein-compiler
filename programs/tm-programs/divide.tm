0 : LDC 5, 4(0) ; Set DMEM pointer (R5) to main stack frame base
1 : ADD 4, 5, 0 ; Set top of caller frame (R4 := R5)
2 : LD 2, 1(0) ; Load CLI arg 1 into R2
3 : ST 2, 1(5) ; Store arg 1 into main frame parameter slot
4 : LD 2, 2(0) ; Load CLI arg 2 into R2
5 : ST 2, 2(5) ; Store arg 2 into main frame parameter slot
6 : LD 2, 3(0) ; Load CLI arg 3 into R2
7 : ST 2, 3(5) ; Store arg 3 into main frame parameter slot
8 : LDA 6, 2(7) ; Calculate return address (PC + 2)
9 : ST 6, 0(5) ; Store return address in main frame
10 : LDA 7, 16(0) ; Branch to main function
11 : OUT 1, 0, 0 ; Return/print result from main in R1
12 : HALT 0, 0, 0 ; Terminate program
13 : OUT 1, 0, 0 ; Hardcoded print: output R1
14 : LD 6, 0(5) ; Load return address from current frame
15 : LDA 7, 0(6) ; Jump back to caller
16 : LD 1, 3(5) ; Load parameter 'n' into R1
17 : ST 1, 5(5) ; Spill left operand at depth 0
18 : LDC 1, 0(0) ; Load integer-literal into R1
19 : LD 2, 5(5) ; Restore left operand from depth 0
20 : SUB 1, 2, 1 ; left - right for equality check
21 : JEQ 1, 2(7) ; If R1 == 0, jump to true
22 : LDC 1, 0(0) ; false
23 : LDA 7, 1(7) ; skip setting true
24 : LDC 1, 1(0) ; true
25 : JEQ 1, 29(0) ; If condition is false, jump to ELSE
26 : LD 1, 1(5) ; Load parameter 'a' into R1
27 : ST 1, 4(5) ; Store result into current frame's return slot
28 : LDA 7, 47(0) ; Skip ELSE block
29 : LD 1, 1(5) ; Load parameter 'a' into R1
30 : LDA 4, 6(5) ; Recompute callee base from caller size
31 : ST 1, 1(4) ; Store argument 0 in callee frame
32 : LD 1, 2(5) ; Load parameter 'b' into R1
33 : LDA 4, 6(5) ; Recompute callee base from caller size
34 : ST 1, 2(4) ; Store argument 1 in callee frame
35 : LD 1, 3(5) ; Load parameter 'n' into R1
36 : LDA 4, 6(5) ; Recompute callee base from caller size
37 : ST 1, 3(4) ; Store argument 2 in callee frame
38 : LDA 4, 6(5) ; Recompute callee base from caller size
39 : LDA 6, 43(0) ; Return address
40 : ST 6, 0(4) ; Store return address into callee frame
41 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
42 : LDA 7, 67(0) ; Call printAndDivide
43 : LD 1, 4(5) ; Load callee result into R1
44 : LDC 2, 6(0) ; Callee frame size
45 : SUB 5, 5, 2 ; Pop back to caller
46 : ST 1, 4(5) ; Store result into caller’s return slot
47 : LDC 5, 4(0) ; Reset R5 to main frame base (DMEM[N+1])
48 : LD 1, 4(5) ; Load main return value into R1
49 : LD 6, 0(5) ; Load root return address from main frame
50 : LDA 7, 0(6) ; Return from main to runtime epilogue
51 : LD 1, 1(5) ; Load parameter 'm' into R1
52 : ST 1, 4(5) ; Spill left operand at depth 0
53 : LD 1, 1(5) ; Load parameter 'm' into R1
54 : ST 1, 5(5) ; Spill left operand at depth 1
55 : LD 1, 2(5) ; Load parameter 'n' into R1
56 : LD 2, 5(5) ; Restore left operand from depth 1
57 : DIV 1, 2, 1 ; R1 = left / right
58 : ST 1, 5(5) ; Spill left operand at depth 1
59 : LD 1, 2(5) ; Load parameter 'n' into R1
60 : LD 2, 5(5) ; Restore left operand from depth 1
61 : MUL 1, 2, 1 ; R1 = left * right
62 : LD 2, 4(5) ; Restore left operand from depth 0
63 : SUB 1, 2, 1 ; R1 = left - right
64 : ST 1, 3(5) ; Store function result into frame return slot
65 : LD 6, 0(5) ; Load return address
66 : LDA 7, 0(6) ; Return to caller
67 : LDC 1, 10(0) ; Load integer-literal into R1
68 : ST 1, 5(5) ; Spill left operand at depth 0
69 : LD 1, 1(5) ; Load parameter 'a' into R1
70 : LD 2, 5(5) ; Restore left operand from depth 0
71 : MUL 1, 2, 1 ; R1 = left * right
72 : ST 1, 5(5) ; Spill left operand at depth 0
73 : LD 1, 2(5) ; Load parameter 'b' into R1
74 : LD 2, 5(5) ; Restore left operand from depth 0
75 : DIV 1, 2, 1 ; R1 = left / right
76 : LDA 4, 6(5) ; Recompute callee base from caller size
77 : LDA 6, 81(0) ; Return address
78 : ST 6, 0(4) ; Store return address in callee frame
79 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
80 : LDA 7, 13(0) ; Call built-in print
81 : LDC 2, 3(0) ; Callee frame size
82 : SUB 5, 5, 2 ; Pop back to caller
83 : LD 1, 1(5) ; Load parameter 'a' into R1
84 : ST 1, 5(5) ; Spill left operand at depth 0
85 : LDC 1, 10(0) ; Load integer-literal into R1
86 : LD 2, 5(5) ; Restore left operand from depth 0
87 : MUL 1, 2, 1 ; R1 = left * right
88 : LDA 4, 6(5) ; Recompute callee base from caller size
89 : ST 1, 1(4) ; Store argument 0 in callee frame
90 : LD 1, 2(5) ; Load parameter 'b' into R1
91 : LDA 4, 6(5) ; Recompute callee base from caller size
92 : ST 1, 2(4) ; Store argument 1 in callee frame
93 : LDA 4, 6(5) ; Recompute callee base from caller size
94 : LDA 6, 98(0) ; Return address
95 : ST 6, 0(4) ; Store return address into callee frame
96 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
97 : LDA 7, 51(0) ; Call MOD
98 : LD 1, 3(5) ; Load callee result into R1
99 : LDC 2, 6(0) ; Callee frame size
100 : SUB 5, 5, 2 ; Pop back to caller
101 : LDA 4, 6(5) ; Recompute callee base from caller size
102 : ST 1, 1(4) ; Store argument 0 in callee frame
103 : LD 1, 2(5) ; Load parameter 'b' into R1
104 : LDA 4, 6(5) ; Recompute callee base from caller size
105 : ST 1, 2(4) ; Store argument 1 in callee frame
106 : LD 1, 3(5) ; Load parameter 'n' into R1
107 : ST 1, 5(5) ; Spill left operand at depth 0
108 : LDC 1, 1(0) ; Load integer-literal into R1
109 : LD 2, 5(5) ; Restore left operand from depth 0
110 : SUB 1, 2, 1 ; R1 = left - right
111 : LDA 4, 6(5) ; Recompute callee base from caller size
112 : ST 1, 3(4) ; Store argument 2 in callee frame
113 : LDA 4, 6(5) ; Recompute callee base from caller size
114 : LDA 6, 118(0) ; Return address
115 : ST 6, 0(4) ; Store return address into callee frame
116 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
117 : LDA 7, 16(0) ; Call main
118 : LD 1, 4(5) ; Load callee result into R1
119 : LDC 2, 6(0) ; Callee frame size
120 : SUB 5, 5, 2 ; Pop back to caller
121 : ST 1, 4(5) ; Store function result into frame return slot
122 : LD 6, 0(5) ; Load return address
123 : LDA 7, 0(6) ; Return to caller
