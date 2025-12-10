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
14 : LDA 4, 4(5) ; Compute callee base from caller size
15 : LD 1, 1(5) ; Load parameter 'a' into R1
16 : ST 1, 1(4) ; Store argument 0 in callee frame
17 : LD 1, 2(5) ; Load parameter 'b' into R1
18 : ST 1, 2(4) ; Store argument 1 in callee frame
19 : LDA 6, 23(0) ; Return address
20 : ST 6, 0(4) ; Store return address into callee frame
21 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
22 : LDA 7, 30(0) ; Call gcd
23 : LD 1, 3(5) ; Load callee result into R1
24 : LDC 2, 4(0) ; Caller frame size
25 : SUB 5, 5, 2 ; Pop back to caller
26 : ST 1, 3(5) ; Store result into caller’s return slot
27 : LD 1, 3(5) ; Load main return value into R1
28 : LD 6, 0(5) ; Load main return address
29 : LDA 7, 0(6) ; Return from main
30 : LD 1, 2(5) ; Load parameter 'b' into R1
31 : ST 1, 4(5) ; Spill left operand at depth 0
32 : LDC 1, 0(0) ; Load integer-literal into R1
33 : LD 2, 4(5) ; Restore left operand from depth 0
34 : SUB 1, 2, 1 ; left - right for equality check
35 : JEQ 1, 2(7) ; If R1 == 0, jump to true
36 : LDC 1, 0(0) ; false
37 : LDA 7, 1(7) ; skip setting true
38 : LDC 1, 1(0) ; true
39 : JEQ 1, 42(0) ; If condition is false, jump to ELSE
40 : LD 1, 1(5) ; Load parameter 'a' into R1
41 : LDA 7, 65(0) ; Skip ELSE block
42 : LDA 4, 5(5) ; Compute callee base from caller size
43 : LD 1, 2(5) ; Load parameter 'b' into R1
44 : ST 1, 1(4) ; Store argument 0 in callee frame
45 : LDA 4, 5(5) ; Compute callee base from caller size
46 : LD 1, 1(5) ; Load parameter 'a' into R1
47 : ST 1, 1(4) ; Store argument 0 in callee frame
48 : LD 1, 2(5) ; Load parameter 'b' into R1
49 : ST 1, 2(4) ; Store argument 1 in callee frame
50 : LDA 6, 54(0) ; Return address
51 : ST 6, 0(4) ; Store return address into callee frame
52 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
53 : LDA 7, 68(0) ; Call remainder
54 : LD 1, 3(5) ; Load callee result into R1
55 : LDC 2, 5(0) ; Caller frame size
56 : SUB 5, 5, 2 ; Pop back to caller
57 : ST 1, 2(4) ; Store argument 1 in callee frame
58 : LDA 6, 62(0) ; Return address
59 : ST 6, 0(4) ; Store return address into callee frame
60 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
61 : LDA 7, 30(0) ; Call gcd
62 : LD 1, 3(5) ; Load callee result into R1
63 : LDC 2, 5(0) ; Caller frame size
64 : SUB 5, 5, 2 ; Pop back to caller
65 : ST 1, 3(5) ; Store function result into frame return slot
66 : LD 6, 0(5) ; Load return address
67 : LDA 7, 0(6) ; Return to caller
68 : LD 1, 1(5) ; Load parameter 'a' into R1
69 : ST 1, 4(5) ; Spill left operand at depth 0
70 : LD 1, 2(5) ; Load parameter 'b' into R1
71 : LD 2, 4(5) ; Restore left operand from depth 0
72 : SUB 1, 2, 1 ; left - right for less-than check
73 : JLT 1, 2(7) ; If R1 < 0, jump to true
74 : LDC 1, 0(0) ; false
75 : LDA 7, 1(7) ; skip setting true
76 : LDC 1, 1(0) ; true
77 : JEQ 1, 80(0) ; If condition is false, jump to ELSE
78 : LD 1, 1(5) ; Load parameter 'a' into R1
79 : LDA 7, 96(0) ; Skip ELSE block
80 : LDA 4, 5(5) ; Compute callee base from caller size
81 : LD 1, 1(5) ; Load parameter 'a' into R1
82 : ST 1, 4(5) ; Spill left operand at depth 0
83 : LD 1, 2(5) ; Load parameter 'b' into R1
84 : LD 2, 4(5) ; Restore left operand from depth 0
85 : SUB 1, 2, 1 ; R1 = left - right
86 : ST 1, 1(4) ; Store argument 0 in callee frame
87 : LD 1, 2(5) ; Load parameter 'b' into R1
88 : ST 1, 2(4) ; Store argument 1 in callee frame
89 : LDA 6, 93(0) ; Return address
90 : ST 6, 0(4) ; Store return address into callee frame
91 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
92 : LDA 7, 68(0) ; Call remainder
93 : LD 1, 3(5) ; Load callee result into R1
94 : LDC 2, 5(0) ; Caller frame size
95 : SUB 5, 5, 2 ; Pop back to caller
96 : ST 1, 3(5) ; Store function result into frame return slot
97 : LD 6, 0(5) ; Load return address
98 : LDA 7, 0(6) ; Return to caller
