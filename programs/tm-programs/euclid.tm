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
15 : LDA 4, 4(5) ; Recompute callee base from caller size
16 : ST 1, 1(4) ; Store argument 0 in callee frame
17 : LD 1, 2(5) ; Load parameter 'b' into R1
18 : LDA 4, 4(5) ; Recompute callee base from caller size
19 : ST 1, 2(4) ; Store argument 1 in callee frame
20 : LDA 4, 4(5) ; Recompute callee base from caller size
21 : LDA 6, 25(0) ; Return address
22 : ST 6, 0(4) ; Store return address into callee frame
23 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
24 : LDA 7, 35(0) ; Call gcd
25 : LD 1, 3(5) ; Load callee result into R1
26 : LDC 2, 5(0) ; Callee frame size
27 : SUB 5, 5, 2 ; Pop back to caller
28 : ST 1, 3(5) ; Store result into caller’s return slot
29 : LDC 5, 3(0) ; Anchor R5 to main frame base (DMEM[N+1])
30 : ST 1, 3(5) ; Store final result into MAIN frame's return slot
31 : LDC 5, 3(0) ; Reset R5 to main frame base (DMEM[N+1])
32 : LD 1, 3(5) ; Load main return value into R1
33 : LD 6, 0(5) ; Load root return address from main frame
34 : LDA 7, 0(6) ; Return from main to runtime epilogue
35 : LD 1, 2(5) ; Load parameter 'b' into R1
36 : ST 1, 4(5) ; Spill left operand at depth 0
37 : LDC 1, 0(0) ; Load integer-literal into R1
38 : LD 2, 4(5) ; Restore left operand from depth 0
39 : SUB 1, 2, 1 ; left - right for equality check
40 : JEQ 1, 2(7) ; If R1 == 0, jump to true
41 : LDC 1, 0(0) ; false
42 : LDA 7, 1(7) ; skip setting true
43 : LDC 1, 1(0) ; true
44 : JEQ 1, 47(0) ; If condition is false, jump to ELSE
45 : LD 1, 1(5) ; Load parameter 'a' into R1
46 : LDA 7, 74(0) ; Skip ELSE block
47 : LD 1, 2(5) ; Load parameter 'b' into R1
48 : LDA 4, 5(5) ; Recompute callee base from caller size
49 : ST 1, 1(4) ; Store argument 0 in callee frame
50 : LD 1, 1(5) ; Load parameter 'a' into R1
51 : LDA 4, 5(5) ; Recompute callee base from caller size
52 : ST 1, 1(4) ; Store argument 0 in callee frame
53 : LD 1, 2(5) ; Load parameter 'b' into R1
54 : LDA 4, 5(5) ; Recompute callee base from caller size
55 : ST 1, 2(4) ; Store argument 1 in callee frame
56 : LDA 4, 5(5) ; Recompute callee base from caller size
57 : LDA 6, 61(0) ; Return address
58 : ST 6, 0(4) ; Store return address into callee frame
59 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
60 : LDA 7, 77(0) ; Call remainder
61 : LD 1, 3(5) ; Load callee result into R1
62 : LDC 2, 5(0) ; Callee frame size
63 : SUB 5, 5, 2 ; Pop back to caller
64 : LDA 4, 5(5) ; Recompute callee base from caller size
65 : ST 1, 2(4) ; Store argument 1 in callee frame
66 : LDA 4, 5(5) ; Recompute callee base from caller size
67 : LDA 6, 71(0) ; Return address
68 : ST 6, 0(4) ; Store return address into callee frame
69 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
70 : LDA 7, 35(0) ; Call gcd
71 : LD 1, 3(5) ; Load callee result into R1
72 : LDC 2, 5(0) ; Callee frame size
73 : SUB 5, 5, 2 ; Pop back to caller
74 : ST 1, 3(5) ; Store function result into frame return slot
75 : LD 6, 0(5) ; Load return address
76 : LDA 7, 0(6) ; Return to caller
77 : LD 1, 1(5) ; Load parameter 'a' into R1
78 : ST 1, 4(5) ; Spill left operand at depth 0
79 : LD 1, 2(5) ; Load parameter 'b' into R1
80 : LD 2, 4(5) ; Restore left operand from depth 0
81 : SUB 1, 2, 1 ; left - right for less-than check
82 : JLT 1, 2(7) ; If R1 < 0, jump to true
83 : LDC 1, 0(0) ; false
84 : LDA 7, 1(7) ; skip setting true
85 : LDC 1, 1(0) ; true
86 : JEQ 1, 89(0) ; If condition is false, jump to ELSE
87 : LD 1, 1(5) ; Load parameter 'a' into R1
88 : LDA 7, 107(0) ; Skip ELSE block
89 : LD 1, 1(5) ; Load parameter 'a' into R1
90 : ST 1, 4(5) ; Spill left operand at depth 0
91 : LD 1, 2(5) ; Load parameter 'b' into R1
92 : LD 2, 4(5) ; Restore left operand from depth 0
93 : SUB 1, 2, 1 ; R1 = left - right
94 : LDA 4, 5(5) ; Recompute callee base from caller size
95 : ST 1, 1(4) ; Store argument 0 in callee frame
96 : LD 1, 2(5) ; Load parameter 'b' into R1
97 : LDA 4, 5(5) ; Recompute callee base from caller size
98 : ST 1, 2(4) ; Store argument 1 in callee frame
99 : LDA 4, 5(5) ; Recompute callee base from caller size
100 : LDA 6, 104(0) ; Return address
101 : ST 6, 0(4) ; Store return address into callee frame
102 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
103 : LDA 7, 77(0) ; Call remainder
104 : LD 1, 3(5) ; Load callee result into R1
105 : LDC 2, 5(0) ; Callee frame size
106 : SUB 5, 5, 2 ; Pop back to caller
107 : ST 1, 3(5) ; Store function result into frame return slot
108 : LD 6, 0(5) ; Load return address
109 : LDA 7, 0(6) ; Return to caller
