0 : LDC 5, 3(0) ; Set DMEM pointer (R5) to main stack frame base
1 : LDC 2, 4(0) ; Main frame size
2 : ADD 4, 5, 2 ; Initialize stack-top (R4) to end of main frame
3 : LD 2, 1(0) ; Load CLI arg 1 into R2
4 : ST 2, 1(5) ; Store arg 1 into main frame parameter slot
5 : LD 2, 2(0) ; Load CLI arg 2 into R2
6 : ST 2, 2(5) ; Store arg 2 into main frame parameter slot
7 : LDA 6, 2(7) ; Calculate return address (PC + 2)
8 : ST 6, 0(5) ; Store return address in main frame
9 : LDA 7, 15(0) ; Branch to main function
10 : OUT 1, 0, 0 ; Return/print result from main in R1
11 : HALT 0, 0, 0 ; Terminate program
12 : OUT 1, 0, 0 ; Hardcoded print: output R1
13 : LD 6, 0(5) ; Load return address from current frame
14 : LDA 7, 0(6) ; Jump back to caller
15 : LD 1, 1(5) ; Load parameter 'a' into R1
16 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
17 : ST 1, 1(2) ; Store argument 0 in callee
18 : LD 1, 2(5) ; Load parameter 'b' into R1
19 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
20 : ST 1, 2(2) ; Store argument 1 in callee
21 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
22 : LDA 6, 28(0) ; Return address
23 : ST 6, 0(2) ; Store return in callee frame
24 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
25 : LDC 3, 5(0) ; Callee frame size
26 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
27 : LDA 7, 37(0) ; Call gcd
28 : LD 1, 3(5) ; Load callee result into R1
29 : LDC 2, 5(0) ; Callee frame size
30 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
31 : LDC 3, 4(0) ; Caller frame size
32 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
33 : ST 1, 3(5) ; Store result into caller’s frame
34 : LD 1, 3(5) ; Load main return value into R1
35 : LD 6, 0(5) ; Load main return address
36 : LDA 7, 0(6) ; Return from main
37 : LD 1, 2(5) ; Load parameter 'b' into R1
38 : ST 1, 4(5) ; Spill left operand at depth 0
39 : LDC 1, 0(0) ; Load integer-literal into R1
40 : LD 2, 4(5) ; Restore left operand from depth 0
41 : SUB 1, 2, 1 ; left - right for equality check
42 : JEQ 1, 2(7) ; If R1 == 0, jump to true
43 : LDC 1, 0(0) ; false
44 : LDA 7, 1(7) ; skip setting true
45 : LDC 1, 1(0) ; true
46 : JEQ 1, 49(0) ; If condition is false, jump to ELSE
47 : LD 1, 1(5) ; Load parameter 'a' into R1
48 : LDA 7, 84(0) ; Skip ELSE block
49 : LD 1, 2(5) ; Load parameter 'b' into R1
50 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
51 : ST 1, 1(2) ; Store argument 0 in callee
52 : LD 1, 1(5) ; Load parameter 'a' into R1
53 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
54 : ST 1, 1(2) ; Store argument 0 in callee
55 : LD 1, 2(5) ; Load parameter 'b' into R1
56 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
57 : ST 1, 2(2) ; Store argument 1 in callee
58 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
59 : LDA 6, 65(0) ; Return address
60 : ST 6, 0(2) ; Store return in callee frame
61 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
62 : LDC 3, 5(0) ; Callee frame size
63 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
64 : LDA 7, 87(0) ; Call remainder
65 : LD 1, 3(5) ; Load callee result into R1
66 : LDC 2, 5(0) ; Callee frame size
67 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
68 : LDC 3, 5(0) ; Caller frame size
69 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
70 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
71 : ST 1, 2(2) ; Store argument 1 in callee
72 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
73 : LDA 6, 79(0) ; Return address
74 : ST 6, 0(2) ; Store return in callee frame
75 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
76 : LDC 3, 5(0) ; Callee frame size
77 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
78 : LDA 7, 37(0) ; Call gcd
79 : LD 1, 3(5) ; Load callee result into R1
80 : LDC 2, 5(0) ; Callee frame size
81 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
82 : LDC 3, 5(0) ; Caller frame size
83 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
84 : ST 1, 3(5) ; Store function result into frame return slot
85 : LD 6, 0(5) ; Load return address
86 : LDA 7, 0(6) ; Return to caller
87 : LD 1, 1(5) ; Load parameter 'a' into R1
88 : ST 1, 4(5) ; Spill left operand at depth 0
89 : LD 1, 2(5) ; Load parameter 'b' into R1
90 : LD 2, 4(5) ; Restore left operand from depth 0
91 : SUB 1, 2, 1 ; left - right for less-than check
92 : JLT 1, 2(7) ; If R1 < 0, jump to true
93 : LDC 1, 0(0) ; false
94 : LDA 7, 1(7) ; skip setting true
95 : LDC 1, 1(0) ; true
96 : JEQ 1, 99(0) ; If condition is false, jump to ELSE
97 : LD 1, 1(5) ; Load parameter 'a' into R1
98 : LDA 7, 121(0) ; Skip ELSE block
99 : LD 1, 1(5) ; Load parameter 'a' into R1
100 : ST 1, 4(5) ; Spill left operand at depth 0
101 : LD 1, 2(5) ; Load parameter 'b' into R1
102 : LD 2, 4(5) ; Restore left operand from depth 0
103 : SUB 1, 2, 1 ; R1 = left - right
104 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
105 : ST 1, 1(2) ; Store argument 0 in callee
106 : LD 1, 2(5) ; Load parameter 'b' into R1
107 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
108 : ST 1, 2(2) ; Store argument 1 in callee
109 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
110 : LDA 6, 116(0) ; Return address
111 : ST 6, 0(2) ; Store return in callee frame
112 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
113 : LDC 3, 5(0) ; Callee frame size
114 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
115 : LDA 7, 87(0) ; Call remainder
116 : LD 1, 3(5) ; Load callee result into R1
117 : LDC 2, 5(0) ; Callee frame size
118 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
119 : LDC 3, 5(0) ; Caller frame size
120 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
121 : ST 1, 3(5) ; Store function result into frame return slot
122 : LD 6, 0(5) ; Load return address
123 : LDA 7, 0(6) ; Return to caller
