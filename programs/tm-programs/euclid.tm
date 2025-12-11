0 : LDC 5, 3(0) ; Set DMEM pointer (R5) to main stack frame base
1 : ADD 4, 5, 0 ; Set top of caller frame (R4 := R5)
2 : LD 2, 1(0) ; Load CLI arg 1 into R2
3 : ST 2, 1(5) ; Store arg 1 into main frame parameter slot
4 : LD 2, 2(0) ; Load CLI arg 2 into R2
5 : ST 2, 2(5) ; Store arg 2 into main frame parameter slot
6 : LDA 6, 2(7) ; Calculate return address (PC + 2)
7 : ST 6, 0(5) ; Store return address in main frame
8 : LDA 7, 14(0) ; Branch to main function
9 : OUT 1, 0, 0 ; Return/print result from main in R1
10 : HALT 0, 0, 0 ; Terminate program
11 : OUT 1, 0, 0 ; Hardcoded print: output R1
12 : LD 6, 0(5) ; Load return address from current frame
13 : LDA 7, 0(6) ; Jump back to caller
14 : LD 1, 1(5) ; Load parameter 'a' into R1
15 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2)
16 : LDA 4, 5(5) ; Callee base for arg copy
17 : LD 1, 4(5) ; Load staged arg 0 from caller temp
18 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
19 : LD 1, 2(5) ; Load parameter 'b' into R1
20 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2)
21 : LDA 4, 5(5) ; Callee base for arg copy
22 : LD 1, 4(5) ; Load staged arg 1 from caller temp
23 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
24 : LDA 4, 5(5) ; Callee base for call
25 : LDA 6, 29(0) ; Return address
26 : ST 6, 0(4) ; Store return in callee frame
27 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
28 : LDA 7, 36(0) ; Call gcd
29 : LD 1, 3(5) ; Load callee result into R1
30 : LDC 2, 5(0) ; Callee frame size
31 : SUB 5, 5, 2 ; Pop callee frame
32 : ST 1, 3(5) ; Store result into caller’s frame
33 : LD 1, 3(5) ; Load main return value into R1
34 : LD 6, 0(5) ; Load main return address
35 : LDA 7, 0(6) ; Return from main
36 : LD 1, 2(5) ; Load parameter 'b' into R1
37 : ST 1, 4(5) ; Spill left operand at depth 0
38 : LDC 1, 0(0) ; Load integer-literal into R1
39 : LD 2, 4(5) ; Restore left operand from depth 0
40 : SUB 1, 2, 1 ; left - right for equality check
41 : JEQ 1, 2(7) ; If R1 == 0, jump to true
42 : LDC 1, 0(0) ; false
43 : LDA 7, 1(7) ; skip setting true
44 : LDC 1, 1(0) ; true
45 : JEQ 1, 48(0) ; If condition is false, jump to ELSE
46 : LD 1, 1(5) ; Load parameter 'a' into R1
47 : LDA 7, 83(0) ; Skip ELSE block
48 : LD 1, 2(5) ; Load parameter 'b' into R1
49 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2)
50 : LDA 4, 5(5) ; Callee base for arg copy
51 : LD 1, 4(5) ; Load staged arg 0 from caller temp
52 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
53 : LD 1, 1(5) ; Load parameter 'a' into R1
54 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2)
55 : LDA 4, 5(5) ; Callee base for arg copy
56 : LD 1, 4(5) ; Load staged arg 0 from caller temp
57 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
58 : LD 1, 2(5) ; Load parameter 'b' into R1
59 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2)
60 : LDA 4, 5(5) ; Callee base for arg copy
61 : LD 1, 4(5) ; Load staged arg 1 from caller temp
62 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
63 : LDA 4, 5(5) ; Callee base for call
64 : LDA 6, 68(0) ; Return address
65 : ST 6, 0(4) ; Store return in callee frame
66 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
67 : LDA 7, 86(0) ; Call remainder
68 : LD 1, 3(5) ; Load callee result into R1
69 : LDC 2, 5(0) ; Callee frame size
70 : SUB 5, 5, 2 ; Pop callee frame
71 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2)
72 : LDA 4, 5(5) ; Callee base for arg copy
73 : LD 1, 4(5) ; Load staged arg 1 from caller temp
74 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
75 : LDA 4, 5(5) ; Callee base for call
76 : LDA 6, 80(0) ; Return address
77 : ST 6, 0(4) ; Store return in callee frame
78 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
79 : LDA 7, 36(0) ; Call gcd
80 : LD 1, 3(5) ; Load callee result into R1
81 : LDC 2, 5(0) ; Callee frame size
82 : SUB 5, 5, 2 ; Pop callee frame
83 : ST 1, 3(5) ; Store function result into frame return slot
84 : LD 6, 0(5) ; Load return address
85 : LDA 7, 0(6) ; Return to caller
86 : LD 1, 1(5) ; Load parameter 'a' into R1
87 : ST 1, 4(5) ; Spill left operand at depth 0
88 : LD 1, 2(5) ; Load parameter 'b' into R1
89 : LD 2, 4(5) ; Restore left operand from depth 0
90 : SUB 1, 2, 1 ; left - right for less-than check
91 : JLT 1, 2(7) ; If R1 < 0, jump to true
92 : LDC 1, 0(0) ; false
93 : LDA 7, 1(7) ; skip setting true
94 : LDC 1, 1(0) ; true
95 : JEQ 1, 98(0) ; If condition is false, jump to ELSE
96 : LD 1, 1(5) ; Load parameter 'a' into R1
97 : LDA 7, 120(0) ; Skip ELSE block
98 : LD 1, 1(5) ; Load parameter 'a' into R1
99 : ST 1, 4(5) ; Spill left operand at depth 0
100 : LD 1, 2(5) ; Load parameter 'b' into R1
101 : LD 2, 4(5) ; Restore left operand from depth 0
102 : SUB 1, 2, 1 ; R1 = left - right
103 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2)
104 : LDA 4, 5(5) ; Callee base for arg copy
105 : LD 1, 4(5) ; Load staged arg 0 from caller temp
106 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
107 : LD 1, 2(5) ; Load parameter 'b' into R1
108 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2)
109 : LDA 4, 5(5) ; Callee base for arg copy
110 : LD 1, 4(5) ; Load staged arg 1 from caller temp
111 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
112 : LDA 4, 5(5) ; Callee base for call
113 : LDA 6, 117(0) ; Return address
114 : ST 6, 0(4) ; Store return in callee frame
115 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
116 : LDA 7, 86(0) ; Call remainder
117 : LD 1, 3(5) ; Load callee result into R1
118 : LDC 2, 5(0) ; Callee frame size
119 : SUB 5, 5, 2 ; Pop callee frame
120 : ST 1, 3(5) ; Store function result into frame return slot
121 : LD 6, 0(5) ; Load return address
122 : LDA 7, 0(6) ; Return to caller
