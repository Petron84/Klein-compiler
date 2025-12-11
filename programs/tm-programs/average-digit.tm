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
28 : LDA 7, 52(0) ; Call average_digit
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
52 : LD 1, 1(5) ; Load parameter 'n' into R1
53 : ST 1, 5(5) ; Spill left operand at depth 0
54 : LDC 1, 10(0) ; Load integer-literal into R1
55 : LD 2, 5(5) ; Restore left operand from depth 0
56 : SUB 1, 2, 1 ; left - right for less-than check
57 : JLT 1, 2(7) ; If R1 < 0, jump to true
58 : LDC 1, 0(0) ; false
59 : LDA 7, 1(7) ; skip setting true
60 : LDC 1, 1(0) ; true
61 : JEQ 1, 68(0) ; If condition is false, jump to ELSE
62 : LD 1, 3(5) ; Load parameter 'i' into R1
63 : ST 1, 5(5) ; Spill left operand at depth 0
64 : LDC 1, 1(0) ; Load integer-literal into R1
65 : LD 2, 5(5) ; Restore left operand from depth 0
66 : ADD 1, 2, 1 ; R1 = left + right
67 : LDA 7, 115(0) ; Skip ELSE block
68 : LD 1, 1(5) ; Load parameter 'n' into R1
69 : ST 1, 5(5) ; Spill left operand at depth 0
70 : LDC 1, 10(0) ; Load integer-literal into R1
71 : LD 2, 5(5) ; Restore left operand from depth 0
72 : DIV 1, 2, 1 ; R1 = left / right
73 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2+i)
74 : LD 1, 2(5) ; Load parameter 'sum' into R1
75 : ST 1, 5(5) ; Spill left operand at depth 0
76 : LD 1, 1(5) ; Load parameter 'n' into R1
77 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2+i)
78 : LDC 1, 10(0) ; Load integer-literal into R1
79 : ST 1, 6(5) ; Stage arg 1 in caller temp (P+2+i)
80 : LDA 4, 6(5) ; Callee base for arg copy
81 : LD 1, 5(5) ; Load staged arg 0 from caller temp
82 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
83 : LD 1, 6(5) ; Load staged arg 1 from caller temp
84 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
85 : LDA 6, 89(0) ; Return address
86 : ST 6, 0(4) ; Store return in callee frame
87 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
88 : LDA 7, 36(0) ; Call MOD
89 : LD 1, 3(5) ; Load callee result into R1
90 : LDC 2, 6(0) ; Callee frame size
91 : SUB 5, 5, 2 ; Pop callee frame
92 : LD 2, 5(5) ; Restore left operand from depth 0
93 : ADD 1, 2, 1 ; R1 = left + right
94 : ST 1, 6(5) ; Stage arg 1 in caller temp (P+2+i)
95 : LD 1, 3(5) ; Load parameter 'i' into R1
96 : ST 1, 5(5) ; Spill left operand at depth 0
97 : LDC 1, 1(0) ; Load integer-literal into R1
98 : LD 2, 5(5) ; Restore left operand from depth 0
99 : ADD 1, 2, 1 ; R1 = left + right
100 : ST 1, 7(5) ; Stage arg 2 in caller temp (P+2+i)
101 : LDA 4, 8(5) ; Callee base for arg copy
102 : LD 1, 5(5) ; Load staged arg 0 from caller temp
103 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
104 : LD 1, 6(5) ; Load staged arg 1 from caller temp
105 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
106 : LD 1, 7(5) ; Load staged arg 2 from caller temp
107 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
108 : LDA 6, 112(0) ; Return address
109 : ST 6, 0(4) ; Store return in callee frame
110 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
111 : LDA 7, 52(0) ; Call average_digit
112 : LD 1, 4(5) ; Load callee result into R1
113 : LDC 2, 8(0) ; Callee frame size
114 : SUB 5, 5, 2 ; Pop callee frame
115 : ST 1, 4(5) ; Store function result into frame return slot
116 : LD 6, 0(5) ; Load return address
117 : LDA 7, 0(6) ; Return to caller
