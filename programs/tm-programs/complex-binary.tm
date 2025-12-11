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
10 : LDC 1, 2(0) ; Load integer-literal into R1
11 : LDA 4, 4(5) ; Compute callee base = FP + caller_size
12 : ST 1, 1(4) ; Store argument 0 in callee param slot
13 : LDC 1, 2(0) ; Load integer-literal into R1
14 : LDA 4, 4(5) ; Compute callee base = FP + caller_size
15 : ST 1, 2(4) ; Store argument 1 in callee param slot
16 : LDA 4, 4(5) ; Compute callee base = FP + caller_size
17 : LDA 6, 21(0) ; Return address
18 : ST 6, 0(4) ; Store return in callee frame
19 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
20 : LDA 7, 71(0) ; Call MOD
21 : LD 1, 3(5) ; Load callee result into R1
22 : LDC 2, 4(0) ; Caller frame size
23 : SUB 5, 5, 2 ; Pop callee frame back to caller
24 : ST 1, 2(5) ; Spill left operand at depth 0
25 : LDC 1, 3(0) ; Load integer-literal into R1
26 : LD 2, 2(5) ; Restore left operand from depth 0
27 : MUL 1, 2, 1 ; R1 = left * right
28 : ST 1, 2(5) ; Spill left operand at depth 0
29 : LDC 1, 4(0) ; Load integer-literal into R1
30 : LD 2, 2(5) ; Restore left operand from depth 0
31 : SUB 1, 2, 1 ; left - right for less-than check
32 : JLT 1, 2(7) ; If R1 < 0, jump to true
33 : LDC 1, 0(0) ; false
34 : LDA 7, 1(7) ; skip setting true
35 : LDC 1, 1(0) ; true
36 : ST 1, 2(5) ; Spill left operand at depth 0
37 : LDC 1, 5(0) ; Load integer-literal into R1
38 : LDA 4, 4(5) ; Compute callee base = FP + caller_size
39 : ST 1, 1(4) ; Store argument 0 in callee param slot
40 : LDC 1, 3(0) ; Load integer-literal into R1
41 : LDA 4, 4(5) ; Compute callee base = FP + caller_size
42 : ST 1, 2(4) ; Store argument 1 in callee param slot
43 : LDA 4, 4(5) ; Compute callee base = FP + caller_size
44 : LDA 6, 48(0) ; Return address
45 : ST 6, 0(4) ; Store return in callee frame
46 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
47 : LDA 7, 71(0) ; Call MOD
48 : LD 1, 3(5) ; Load callee result into R1
49 : LDC 2, 4(0) ; Caller frame size
50 : SUB 5, 5, 2 ; Pop callee frame back to caller
51 : ST 1, 3(5) ; Spill left operand at depth 1
52 : LDC 1, 2(0) ; Load integer-literal into R1
53 : LD 2, 3(5) ; Restore left operand from depth 1
54 : MUL 1, 2, 1 ; R1 = left * right
55 : ST 1, 3(5) ; Spill left operand at depth 1
56 : LDC 1, 5(0) ; Load integer-literal into R1
57 : LD 2, 3(5) ; Restore left operand from depth 1
58 : SUB 1, 2, 1 ; left - right for less-than check
59 : JLT 1, 2(7) ; If R1 < 0, jump to true
60 : LDC 1, 0(0) ; false
61 : LDA 7, 1(7) ; skip setting true
62 : LDC 1, 1(0) ; true
63 : LDC 2, 1(0) ; Load 1 into R2
64 : SUB 1, 2, 1 ; Logical NOT: 1 - R1
65 : LD 2, 2(5) ; Restore left operand from depth 0
66 : ADD 1, 2, 1 ; R1 = left OR right
67 : ST 1, 1(5) ; Store result into current frame's return slot
68 : LD 1, 1(5) ; Load main return value into R1
69 : LD 6, 0(5) ; Load main return address
70 : LDA 7, 0(6) ; Return from main
71 : LD 1, 1(5) ; Load parameter 'm' into R1
72 : ST 1, 4(5) ; Spill left operand at depth 0
73 : LD 1, 1(5) ; Load parameter 'm' into R1
74 : ST 1, 5(5) ; Spill left operand at depth 1
75 : LD 1, 2(5) ; Load parameter 'n' into R1
76 : LD 2, 5(5) ; Restore left operand from depth 1
77 : DIV 1, 2, 1 ; R1 = left / right
78 : ST 1, 5(5) ; Spill left operand at depth 1
79 : LD 1, 2(5) ; Load parameter 'n' into R1
80 : LD 2, 5(5) ; Restore left operand from depth 1
81 : MUL 1, 2, 1 ; R1 = left * right
82 : LD 2, 4(5) ; Restore left operand from depth 0
83 : SUB 1, 2, 1 ; R1 = left - right
84 : ST 1, 3(5) ; Store function result into frame return slot
85 : LD 6, 0(5) ; Load return address
86 : LDA 7, 0(6) ; Return to caller
