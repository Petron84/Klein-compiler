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
15 : LD 1, 1(5) ; Load parameter 'x' into R1
16 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
17 : ST 1, 1(2) ; Store argument 0 in callee
18 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
19 : LDA 6, 25(0) ; Return address
20 : ST 6, 0(2) ; Store return in callee frame
21 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
22 : LDC 3, 3(0) ; Callee frame size
23 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
24 : LDA 7, 108(0) ; Call double
25 : LD 1, 2(5) ; Load callee result into R1
26 : LDC 2, 3(0) ; Callee frame size
27 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
28 : LDC 3, 4(0) ; Caller frame size
29 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
30 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
31 : ST 1, 1(2) ; Store argument 0 in callee
32 : LD 1, 2(5) ; Load parameter 'y' into R1
33 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
34 : ST 1, 1(2) ; Store argument 0 in callee
35 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
36 : LDA 6, 42(0) ; Return address
37 : ST 6, 0(2) ; Store return in callee frame
38 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
39 : LDC 3, 3(0) ; Callee frame size
40 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
41 : LDA 7, 73(0) ; Call triple
42 : LD 1, 2(5) ; Load callee result into R1
43 : LDC 2, 3(0) ; Callee frame size
44 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
45 : LDC 3, 4(0) ; Caller frame size
46 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
47 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
48 : ST 1, 2(2) ; Store argument 1 in callee
49 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
50 : LDA 6, 56(0) ; Return address
51 : ST 6, 0(2) ; Store return in callee frame
52 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
53 : LDC 3, 5(0) ; Callee frame size
54 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
55 : LDA 7, 126(0) ; Call add
56 : LD 1, 3(5) ; Load callee result into R1
57 : LDC 2, 5(0) ; Callee frame size
58 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
59 : LDC 3, 4(0) ; Caller frame size
60 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
61 : ST 1, 3(5) ; Store result into caller’s frame
62 : LD 1, 3(5) ; Load main return value into R1
63 : LD 6, 0(5) ; Load main return address
64 : LDA 7, 0(6) ; Return from main
65 : LD 1, 1(5) ; Load parameter 'k' into R1
66 : ST 1, 3(5) ; Spill left operand at depth 0
67 : LDC 1, 2(0) ; Load integer-literal into R1
68 : LD 2, 3(5) ; Restore left operand from depth 0
69 : MUL 1, 2, 1 ; R1 = left * right
70 : ST 1, 2(5) ; Store function result into frame return slot
71 : LD 6, 0(5) ; Load return address
72 : LDA 7, 0(6) ; Return to caller
73 : LD 1, 1(5) ; Load parameter 'n' into R1
74 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
75 : ST 1, 1(2) ; Store argument 0 in callee
76 : LD 1, 1(5) ; Load parameter 'n' into R1
77 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
78 : ST 1, 1(2) ; Store argument 0 in callee
79 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
80 : LDA 6, 86(0) ; Return address
81 : ST 6, 0(2) ; Store return in callee frame
82 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
83 : LDC 3, 4(0) ; Callee frame size
84 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
85 : LDA 7, 65(0) ; Call mul2
86 : LD 1, 2(5) ; Load callee result into R1
87 : LDC 2, 4(0) ; Callee frame size
88 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
89 : LDC 3, 3(0) ; Caller frame size
90 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
91 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
92 : ST 1, 2(2) ; Store argument 1 in callee
93 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
94 : LDA 6, 100(0) ; Return address
95 : ST 6, 0(2) ; Store return in callee frame
96 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
97 : LDC 3, 5(0) ; Callee frame size
98 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
99 : LDA 7, 126(0) ; Call add
100 : LD 1, 3(5) ; Load callee result into R1
101 : LDC 2, 5(0) ; Callee frame size
102 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
103 : LDC 3, 3(0) ; Caller frame size
104 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
105 : ST 1, 2(5) ; Store function result into frame return slot
106 : LD 6, 0(5) ; Load return address
107 : LDA 7, 0(6) ; Return to caller
108 : LD 1, 1(5) ; Load parameter 'n' into R1
109 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
110 : ST 1, 1(2) ; Store argument 0 in callee
111 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
112 : LDA 6, 118(0) ; Return address
113 : ST 6, 0(2) ; Store return in callee frame
114 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
115 : LDC 3, 4(0) ; Callee frame size
116 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
117 : LDA 7, 65(0) ; Call mul2
118 : LD 1, 2(5) ; Load callee result into R1
119 : LDC 2, 4(0) ; Callee frame size
120 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
121 : LDC 3, 3(0) ; Caller frame size
122 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
123 : ST 1, 2(5) ; Store function result into frame return slot
124 : LD 6, 0(5) ; Load return address
125 : LDA 7, 0(6) ; Return to caller
126 : LD 1, 1(5) ; Load parameter 'a' into R1
127 : ST 1, 4(5) ; Spill left operand at depth 0
128 : LD 1, 2(5) ; Load parameter 'b' into R1
129 : LD 2, 4(5) ; Restore left operand from depth 0
130 : ADD 1, 2, 1 ; R1 = left + right
131 : ST 1, 3(5) ; Store function result into frame return slot
132 : LD 6, 0(5) ; Load return address
133 : LDA 7, 0(6) ; Return to caller
