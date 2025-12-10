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
24 : LDA 7, 33(0) ; Call gcd
25 : LD 1, 3(5) ; Load callee result into R1
26 : LDC 2, 5(0) ; Callee frame size
27 : SUB 5, 5, 2 ; Pop back to caller
28 : ST 1, 3(5) ; Store result into caller’s return slot
29 : LDC 5, 3(0) ; Reset R5 to main frame base (DMEM[N+1])
30 : LD 1, 3(5) ; Load main return value into R1
31 : LD 6, 0(5) ; Load root return address from main frame
32 : LDA 7, 0(6) ; Return from main to runtime epilogue
33 : LD 1, 2(5) ; Load parameter 'b' into R1
34 : ST 1, 4(5) ; Spill left operand at depth 0
35 : LDC 1, 0(0) ; Load integer-literal into R1
36 : LD 2, 4(5) ; Restore left operand from depth 0
37 : SUB 1, 2, 1 ; left - right for equality check
38 : JEQ 1, 2(7) ; If R1 == 0, jump to true
39 : LDC 1, 0(0) ; false
40 : LDA 7, 1(7) ; skip setting true
41 : LDC 1, 1(0) ; true
42 : JEQ 1, 45(0) ; If condition is false, jump to ELSE
43 : LD 1, 1(5) ; Load parameter 'a' into R1
44 : LDA 7, 72(0) ; Skip ELSE block
45 : LD 1, 2(5) ; Load parameter 'b' into R1
46 : LDA 4, 5(5) ; Recompute callee base from caller size
47 : ST 1, 1(4) ; Store argument 0 in callee frame
48 : LD 1, 1(5) ; Load parameter 'a' into R1
49 : LDA 4, 5(5) ; Recompute callee base from caller size
50 : ST 1, 1(4) ; Store argument 0 in callee frame
51 : LD 1, 2(5) ; Load parameter 'b' into R1
52 : LDA 4, 5(5) ; Recompute callee base from caller size
53 : ST 1, 2(4) ; Store argument 1 in callee frame
54 : LDA 4, 5(5) ; Recompute callee base from caller size
55 : LDA 6, 59(0) ; Return address
56 : ST 6, 0(4) ; Store return address into callee frame
57 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
58 : LDA 7, 75(0) ; Call remainder
59 : LD 1, 3(5) ; Load callee result into R1
60 : LDC 2, 5(0) ; Callee frame size
61 : SUB 5, 5, 2 ; Pop back to caller
62 : LDA 4, 5(5) ; Recompute callee base from caller size
63 : ST 1, 2(4) ; Store argument 1 in callee frame
64 : LDA 4, 5(5) ; Recompute callee base from caller size
65 : LDA 6, 69(0) ; Return address
66 : ST 6, 0(4) ; Store return address into callee frame
67 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
68 : LDA 7, 33(0) ; Call gcd
69 : LD 1, 3(5) ; Load callee result into R1
70 : LDC 2, 5(0) ; Callee frame size
71 : SUB 5, 5, 2 ; Pop back to caller
72 : ST 1, 3(5) ; Store function result into frame return slot
73 : LD 6, 0(5) ; Load return address
74 : LDA 7, 0(6) ; Return to caller
75 : LD 1, 1(5) ; Load parameter 'a' into R1
76 : ST 1, 4(5) ; Spill left operand at depth 0
77 : LD 1, 2(5) ; Load parameter 'b' into R1
78 : LD 2, 4(5) ; Restore left operand from depth 0
79 : SUB 1, 2, 1 ; left - right for less-than check
80 : JLT 1, 2(7) ; If R1 < 0, jump to true
81 : LDC 1, 0(0) ; false
82 : LDA 7, 1(7) ; skip setting true
83 : LDC 1, 1(0) ; true
84 : JEQ 1, 87(0) ; If condition is false, jump to ELSE
85 : LD 1, 1(5) ; Load parameter 'a' into R1
86 : LDA 7, 105(0) ; Skip ELSE block
87 : LD 1, 1(5) ; Load parameter 'a' into R1
88 : ST 1, 4(5) ; Spill left operand at depth 0
89 : LD 1, 2(5) ; Load parameter 'b' into R1
90 : LD 2, 4(5) ; Restore left operand from depth 0
91 : SUB 1, 2, 1 ; R1 = left - right
92 : LDA 4, 5(5) ; Recompute callee base from caller size
93 : ST 1, 1(4) ; Store argument 0 in callee frame
94 : LD 1, 2(5) ; Load parameter 'b' into R1
95 : LDA 4, 5(5) ; Recompute callee base from caller size
96 : ST 1, 2(4) ; Store argument 1 in callee frame
97 : LDA 4, 5(5) ; Recompute callee base from caller size
98 : LDA 6, 102(0) ; Return address
99 : ST 6, 0(4) ; Store return address into callee frame
100 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
101 : LDA 7, 75(0) ; Call remainder
102 : LD 1, 3(5) ; Load callee result into R1
103 : LDC 2, 5(0) ; Callee frame size
104 : SUB 5, 5, 2 ; Pop back to caller
105 : ST 1, 3(5) ; Store function result into frame return slot
106 : LD 6, 0(5) ; Load return address
107 : LDA 7, 0(6) ; Return to caller
