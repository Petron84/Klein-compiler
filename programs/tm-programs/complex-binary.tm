0 : LDC 5, 1(0) ; Set DMEM pointer (R5) to main stack frame base
1 : ADD 4, 5, 0 ; Set top of caller frame (R4 := R5)
2 : LDA 6, 2(7) ; Calculate return address (PC + 2)
3 : ST 6, 0(5) ; Store return address in main frame
4 : LDA 7, 10(0) ; Branch to main function
5 : OUT 1, 0, 0 ; Return/print result from main in R1
6 : HALT 0, 0, 0 ; Terminate program
7 : OUT 1, 0, 0 ; Hardcoded print: output R1
8 : LD 6, 0(5) ; Load return address from current frame
9 : LDA 7, 0(6) ; Jump back to caller
10 : LDA 4, 4(5) ; Compute callee base from caller size
11 : LDC 1, 2(0) ; Load integer-literal into R1
12 : ST 1, 1(4) ; Store argument 0 in callee frame
13 : LDC 1, 2(0) ; Load integer-literal into R1
14 : ST 1, 2(4) ; Store argument 1 in callee frame
15 : LDA 6, 19(0) ; Return address
16 : ST 6, 0(4) ; Store return address into callee frame
17 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
18 : LDA 7, 67(0) ; Call MOD
19 : LD 1, 3(5) ; Load callee result into R1
20 : LDC 2, 4(0) ; Caller frame size
21 : SUB 5, 5, 2 ; Pop back to caller
22 : ST 1, 2(5) ; Spill left operand at depth 0
23 : LDC 1, 3(0) ; Load integer-literal into R1
24 : LD 2, 2(5) ; Restore left operand from depth 0
25 : MUL 1, 2, 1 ; R1 = left * right
26 : ST 1, 2(5) ; Spill left operand at depth 0
27 : LDC 1, 4(0) ; Load integer-literal into R1
28 : LD 2, 2(5) ; Restore left operand from depth 0
29 : SUB 1, 2, 1 ; left - right for less-than check
30 : JLT 1, 2(7) ; If R1 < 0, jump to true
31 : LDC 1, 0(0) ; false
32 : LDA 7, 1(7) ; skip setting true
33 : LDC 1, 1(0) ; true
34 : ST 1, 2(5) ; Spill left operand at depth 0
35 : LDA 4, 4(5) ; Compute callee base from caller size
36 : LDC 1, 5(0) ; Load integer-literal into R1
37 : ST 1, 1(4) ; Store argument 0 in callee frame
38 : LDC 1, 3(0) ; Load integer-literal into R1
39 : ST 1, 2(4) ; Store argument 1 in callee frame
40 : LDA 6, 44(0) ; Return address
41 : ST 6, 0(4) ; Store return address into callee frame
42 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
43 : LDA 7, 67(0) ; Call MOD
44 : LD 1, 3(5) ; Load callee result into R1
45 : LDC 2, 4(0) ; Caller frame size
46 : SUB 5, 5, 2 ; Pop back to caller
47 : ST 1, 3(5) ; Spill left operand at depth 1
48 : LDC 1, 2(0) ; Load integer-literal into R1
49 : LD 2, 3(5) ; Restore left operand from depth 1
50 : MUL 1, 2, 1 ; R1 = left * right
51 : ST 1, 3(5) ; Spill left operand at depth 1
52 : LDC 1, 5(0) ; Load integer-literal into R1
53 : LD 2, 3(5) ; Restore left operand from depth 1
54 : SUB 1, 2, 1 ; left - right for less-than check
55 : JLT 1, 2(7) ; If R1 < 0, jump to true
56 : LDC 1, 0(0) ; false
57 : LDA 7, 1(7) ; skip setting true
58 : LDC 1, 1(0) ; true
59 : LDC 2, 1(0) ; Load 1 into R2
60 : SUB 1, 2, 1 ; Logical NOT: 1 - R1
61 : LD 2, 2(5) ; Restore left operand from depth 0
62 : ADD 1, 2, 1 ; R1 = left OR right
63 : ST 1, 1(5) ; Store result into current frame's return slot
64 : LD 1, 1(5) ; Load main return value into R1
65 : LD 6, 0(5) ; Load main return address
66 : LDA 7, 0(6) ; Return from main
67 : LD 1, 1(5) ; Load parameter 'm' into R1
68 : ST 1, 4(5) ; Spill left operand at depth 0
69 : LD 1, 1(5) ; Load parameter 'm' into R1
70 : ST 1, 5(5) ; Spill left operand at depth 1
71 : LD 1, 2(5) ; Load parameter 'n' into R1
72 : LD 2, 5(5) ; Restore left operand from depth 1
73 : DIV 1, 2, 1 ; R1 = left / right
74 : ST 1, 5(5) ; Spill left operand at depth 1
75 : LD 1, 2(5) ; Load parameter 'n' into R1
76 : LD 2, 5(5) ; Restore left operand from depth 1
77 : MUL 1, 2, 1 ; R1 = left * right
78 : LD 2, 4(5) ; Restore left operand from depth 0
79 : SUB 1, 2, 1 ; R1 = left - right
80 : ST 1, 3(5) ; Store function result into frame return slot
81 : LD 6, 0(5) ; Load return address
82 : LDA 7, 0(6) ; Return to caller
