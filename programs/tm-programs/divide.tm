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
28 : LDA 7, !temp_1(0) ; Skip ELSE block
29 : LD 1, 1(5) ; Load parameter 'a' into R1
30 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2+i)
31 : LD 1, 2(5) ; Load parameter 'b' into R1
32 : ST 1, 6(5) ; Stage arg 1 in caller temp (P+2+i)
33 : LD 1, 3(5) ; Load parameter 'n' into R1
34 : ST 1, 7(5) ; Stage arg 2 in caller temp (P+2+i)
35 : LDA 4, 8(5) ; Callee base for arg copy
36 : LD 1, 5(5) ; Load staged arg 0 from caller temp
37 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
38 : LD 1, 6(5) ; Load staged arg 1 from caller temp
39 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
40 : LD 1, 7(5) ; Load staged arg 2 from caller temp
41 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
42 : LDA 6, 46(0) ; Return address
43 : ST 6, 0(4) ; Store return in callee frame
44 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
45 : LDA 7, 69(0) ; Call printAndDivide
46 : LD 1, 4(5) ; Load callee result into R1
47 : LDC 2, 8(0) ; Callee frame size
48 : SUB 5, 5, 2 ; Pop callee frame
49 : ST 1, 4(5) ; Store result into caller’s frame
50 : LD 1, 4(5) ; Load main return value into R1
51 : LD 6, 0(5) ; Load main return address
52 : LDA 7, 0(6) ; Return from main
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
78 : LDA 4, 3(5) ; Callee base for built-in print
79 : LDA 6, 83(0) ; Return address
80 : ST 6, 0(4) ; Store return address in callee frame
81 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
82 : LDA 7, 13(0) ; Call built-in print
83 : LDC 2, 3(0) ; Callee frame size (print)
84 : SUB 5, 5, 2 ; Pop back to caller
85 : LD 1, 1(5) ; Load parameter 'a' into R1
86 : ST 1, 5(5) ; Spill left operand at depth 0
87 : LDC 1, 10(0) ; Load integer-literal into R1
88 : LD 2, 5(5) ; Restore left operand from depth 0
89 : MUL 1, 2, 1 ; R1 = left * right
90 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2+i)
91 : LD 1, 2(5) ; Load parameter 'b' into R1
92 : ST 1, 6(5) ; Stage arg 1 in caller temp (P+2+i)
93 : LDA 4, 6(5) ; Callee base for arg copy
94 : LD 1, 5(5) ; Load staged arg 0 from caller temp
95 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
96 : LD 1, 6(5) ; Load staged arg 1 from caller temp
97 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
98 : LDA 6, 102(0) ; Return address
99 : ST 6, 0(4) ; Store return in callee frame
100 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
101 : LDA 7, 53(0) ; Call MOD
102 : LD 1, 3(5) ; Load callee result into R1
103 : LDC 2, 6(0) ; Callee frame size
104 : SUB 5, 5, 2 ; Pop callee frame
105 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2+i)
106 : LD 1, 2(5) ; Load parameter 'b' into R1
107 : ST 1, 6(5) ; Stage arg 1 in caller temp (P+2+i)
108 : LD 1, 3(5) ; Load parameter 'n' into R1
109 : ST 1, 5(5) ; Spill left operand at depth 0
110 : LDC 1, 1(0) ; Load integer-literal into R1
111 : LD 2, 5(5) ; Restore left operand from depth 0
112 : SUB 1, 2, 1 ; R1 = left - right
113 : ST 1, 7(5) ; Stage arg 2 in caller temp (P+2+i)
114 : LDA 4, 8(5) ; Callee base for arg copy
115 : LD 1, 5(5) ; Load staged arg 0 from caller temp
116 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
117 : LD 1, 6(5) ; Load staged arg 1 from caller temp
118 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
119 : LD 1, 7(5) ; Load staged arg 2 from caller temp
120 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
121 : LDA 6, 125(0) ; Return address
122 : ST 6, 0(4) ; Store return in callee frame
123 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
124 : LDA 7, 16(0) ; Call main
125 : LD 1, 4(5) ; Load callee result into R1
126 : LDC 2, 8(0) ; Callee frame size
127 : SUB 5, 5, 2 ; Pop callee frame
128 : ST 1, 4(5) ; Store function result into frame return slot
129 : LD 6, 0(5) ; Load return address
130 : LDA 7, 0(6) ; Return to caller
