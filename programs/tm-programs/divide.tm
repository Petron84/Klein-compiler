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
28 : LDA 7, 44(0) ; Skip ELSE block
29 : LDA 4, 6(5) ; Compute callee base from caller size
30 : LD 1, 1(5) ; Load parameter 'a' into R1
31 : ST 1, 1(4) ; Store argument 0 in callee frame
32 : LD 1, 2(5) ; Load parameter 'b' into R1
33 : ST 1, 2(4) ; Store argument 1 in callee frame
34 : LD 1, 3(5) ; Load parameter 'n' into R1
35 : ST 1, 3(4) ; Store argument 2 in callee frame
36 : LDA 6, 40(0) ; Return address
37 : ST 6, 0(4) ; Store return address into callee frame
38 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
39 : LDA 7, 63(0) ; Call printAndDivide
40 : LD 1, 4(5) ; Load callee result into R1
41 : LDC 2, 6(0) ; Caller frame size
42 : SUB 5, 5, 2 ; Pop back to caller
43 : ST 1, 4(5) ; Store result into caller’s return slot
44 : LD 1, 4(5) ; Load main return value into R1
45 : LD 6, 0(5) ; Load main return address
46 : LDA 7, 0(6) ; Return from main
47 : LD 1, 1(5) ; Load parameter 'm' into R1
48 : ST 1, 4(5) ; Spill left operand at depth 0
49 : LD 1, 1(5) ; Load parameter 'm' into R1
50 : ST 1, 5(5) ; Spill left operand at depth 1
51 : LD 1, 2(5) ; Load parameter 'n' into R1
52 : LD 2, 5(5) ; Restore left operand from depth 1
53 : DIV 1, 2, 1 ; R1 = left / right
54 : ST 1, 5(5) ; Spill left operand at depth 1
55 : LD 1, 2(5) ; Load parameter 'n' into R1
56 : LD 2, 5(5) ; Restore left operand from depth 1
57 : MUL 1, 2, 1 ; R1 = left * right
58 : LD 2, 4(5) ; Restore left operand from depth 0
59 : SUB 1, 2, 1 ; R1 = left - right
60 : ST 1, 3(5) ; Store function result into frame return slot
61 : LD 6, 0(5) ; Load return address
62 : LDA 7, 0(6) ; Return to caller
63 : LDC 1, 10(0) ; Load integer-literal into R1
64 : ST 1, 5(5) ; Spill left operand at depth 0
65 : LD 1, 1(5) ; Load parameter 'a' into R1
66 : LD 2, 5(5) ; Restore left operand from depth 0
67 : MUL 1, 2, 1 ; R1 = left * right
68 : ST 1, 5(5) ; Spill left operand at depth 0
69 : LD 1, 2(5) ; Load parameter 'b' into R1
70 : LD 2, 5(5) ; Restore left operand from depth 0
71 : DIV 1, 2, 1 ; R1 = left / right
72 : LDA 4, 6(5) ; Compute callee base from caller size
73 : LDA 6, 77(0) ; Return address
74 : ST 6, 0(4) ; Store return address into callee frame
75 : ADD 5, 4, 0 ; Push new frame (R5 := callee base)
76 : LDA 7, 13(0) ; Call built-in print
77 : LDC 2, 6(0) ; Caller frame size
78 : SUB 5, 5, 2 ; Pop back to caller
79 : LDA 4, 6(5) ; Compute callee base from caller size
80 : LDA 4, 6(5) ; Compute callee base from caller size
81 : LD 1, 1(5) ; Load parameter 'a' into R1
82 : ST 1, 5(5) ; Spill left operand at depth 0
83 : LDC 1, 10(0) ; Load integer-literal into R1
84 : LD 2, 5(5) ; Restore left operand from depth 0
85 : MUL 1, 2, 1 ; R1 = left * right
86 : ST 1, 1(4) ; Store argument 0 in callee frame
87 : LD 1, 2(5) ; Load parameter 'b' into R1
88 : ST 1, 2(4) ; Store argument 1 in callee frame
89 : LDA 6, 93(0) ; Return address
90 : ST 6, 0(4) ; Store return address into callee frame
91 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
92 : LDA 7, 47(0) ; Call MOD
93 : LD 1, 3(5) ; Load callee result into R1
94 : LDC 2, 6(0) ; Caller frame size
95 : SUB 5, 5, 2 ; Pop back to caller
96 : ST 1, 1(4) ; Store argument 0 in callee frame
97 : LD 1, 2(5) ; Load parameter 'b' into R1
98 : ST 1, 2(4) ; Store argument 1 in callee frame
99 : LD 1, 3(5) ; Load parameter 'n' into R1
100 : ST 1, 5(5) ; Spill left operand at depth 0
101 : LDC 1, 1(0) ; Load integer-literal into R1
102 : LD 2, 5(5) ; Restore left operand from depth 0
103 : SUB 1, 2, 1 ; R1 = left - right
104 : ST 1, 3(4) ; Store argument 2 in callee frame
105 : LDA 6, 109(0) ; Return address
106 : ST 6, 0(4) ; Store return address into callee frame
107 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
108 : LDA 7, 16(0) ; Call main
109 : LD 1, 4(5) ; Load callee result into R1
110 : LDC 2, 6(0) ; Caller frame size
111 : SUB 5, 5, 2 ; Pop back to caller
112 : ST 1, 4(5) ; Store function result into frame return slot
113 : LD 6, 0(5) ; Load return address
114 : LDA 7, 0(6) ; Return to caller
