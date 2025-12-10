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
42 : LDA 7, 69(0) ; Call printAndDivide
43 : LD 1, 4(5) ; Load callee result into R1
44 : LDC 2, 6(0) ; Callee frame size
45 : SUB 5, 5, 2 ; Pop back to caller
46 : ST 1, 4(5) ; Store result into caller’s return slot
47 : LDC 5, 4(0) ; Anchor R5 to main frame base (DMEM[N+1])
48 : ST 1, 4(5) ; Store final result into MAIN frame's return slot
49 : LDC 5, 4(0) ; Reset R5 to main frame base (DMEM[N+1])
50 : LD 1, 4(5) ; Load main return value into R1
51 : LD 6, 0(5) ; Load root return address from main frame
52 : LDA 7, 0(6) ; Return from main to runtime epilogue
53 : LD 1, 1(5) ; Load parameter 'm' into R1
54 : ST 1, 4(5) ; Spill left operand at depth 0
55 : LD 1, 1(5) ; Load parameter 'm' into R1
56 : ST 1, 5(5) ; Spill left operand at depth 1
57 : LD 1, 2(5) ; Load parameter 'n' into R1
58 : LD 2, 5(5) ; Restore left operand from depth 1
59 : DIV 1, 2, 1 ; R1 = left / right
60 : ST 1, 5(5) ; Spill left operand at depth 1
61 : LD 1, 2(5) ; Load parameter 'n' into R1
62 : LD 2, 5(5) ; Restore left operand from depth 1
63 : MUL 1, 2, 1 ; R1 = left * right
64 : LD 2, 4(5) ; Restore left operand from depth 0
65 : SUB 1, 2, 1 ; R1 = left - right
66 : ST 1, 3(5) ; Store function result into frame return slot
67 : LD 6, 0(5) ; Load return address
68 : LDA 7, 0(6) ; Return to caller
69 : LDC 1, 10(0) ; Load integer-literal into R1
70 : ST 1, 5(5) ; Spill left operand at depth 0
71 : LD 1, 1(5) ; Load parameter 'a' into R1
72 : LD 2, 5(5) ; Restore left operand from depth 0
73 : MUL 1, 2, 1 ; R1 = left * right
74 : ST 1, 5(5) ; Spill left operand at depth 0
75 : LD 1, 2(5) ; Load parameter 'b' into R1
76 : LD 2, 5(5) ; Restore left operand from depth 0
77 : DIV 1, 2, 1 ; R1 = left / right
78 : LDA 4, 6(5) ; Recompute callee base from caller size
79 : LDA 6, 83(0) ; Return address
80 : ST 6, 0(4) ; Store return address in callee frame
81 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
82 : LDA 7, 13(0) ; Call built-in print
83 : LDC 2, 3(0) ; Callee frame size
84 : SUB 5, 5, 2 ; Pop back to caller
85 : LD 1, 1(5) ; Load parameter 'a' into R1
86 : ST 1, 5(5) ; Spill left operand at depth 0
87 : LDC 1, 10(0) ; Load integer-literal into R1
88 : LD 2, 5(5) ; Restore left operand from depth 0
89 : MUL 1, 2, 1 ; R1 = left * right
90 : LDA 4, 6(5) ; Recompute callee base from caller size
91 : ST 1, 1(4) ; Store argument 0 in callee frame
92 : LD 1, 2(5) ; Load parameter 'b' into R1
93 : LDA 4, 6(5) ; Recompute callee base from caller size
94 : ST 1, 2(4) ; Store argument 1 in callee frame
95 : LDA 4, 6(5) ; Recompute callee base from caller size
96 : LDA 6, 100(0) ; Return address
97 : ST 6, 0(4) ; Store return address into callee frame
98 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
99 : LDA 7, 53(0) ; Call MOD
100 : LD 1, 3(5) ; Load callee result into R1
101 : LDC 2, 6(0) ; Callee frame size
102 : SUB 5, 5, 2 ; Pop back to caller
103 : LDA 4, 6(5) ; Recompute callee base from caller size
104 : ST 1, 1(4) ; Store argument 0 in callee frame
105 : LD 1, 2(5) ; Load parameter 'b' into R1
106 : LDA 4, 6(5) ; Recompute callee base from caller size
107 : ST 1, 2(4) ; Store argument 1 in callee frame
108 : LD 1, 3(5) ; Load parameter 'n' into R1
109 : ST 1, 5(5) ; Spill left operand at depth 0
110 : LDC 1, 1(0) ; Load integer-literal into R1
111 : LD 2, 5(5) ; Restore left operand from depth 0
112 : SUB 1, 2, 1 ; R1 = left - right
113 : LDA 4, 6(5) ; Recompute callee base from caller size
114 : ST 1, 3(4) ; Store argument 2 in callee frame
115 : LDA 4, 6(5) ; Recompute callee base from caller size
116 : LDA 6, 120(0) ; Return address
117 : ST 6, 0(4) ; Store return address into callee frame
118 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
119 : LDA 7, 16(0) ; Call main
120 : LD 1, 4(5) ; Load callee result into R1
121 : LDC 2, 6(0) ; Callee frame size
122 : SUB 5, 5, 2 ; Pop back to caller
123 : ST 1, 4(5) ; Store function result into frame return slot
124 : LD 6, 0(5) ; Load return address
125 : LDA 7, 0(6) ; Return to caller
