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
14 : LD 1, 1(5) ; Load parameter 'n' into R1
15 : LDA 4, 5(5) ; Recompute callee base from caller size
16 : LDA 6, 20(0) ; Return address
17 : ST 6, 0(4) ; Store return address in callee frame
18 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
19 : LDA 7, 11(0) ; Call built-in print
20 : LDC 2, 5(0) ; Caller frame size
21 : SUB 5, 5, 2 ; Pop back to caller
22 : LD 1, 1(5) ; Load parameter 'n' into R1
23 : ST 1, 4(5) ; Spill left operand at depth 0
24 : LD 1, 2(5) ; Load parameter 'k' into R1
25 : LD 2, 4(5) ; Restore left operand from depth 0
26 : SUB 1, 2, 1 ; left - right for less-than check
27 : JLT 1, 2(7) ; If R1 < 0, jump to true
28 : LDC 1, 0(0) ; false
29 : LDA 7, 1(7) ; skip setting true
30 : LDC 1, 1(0) ; true
31 : JEQ 1, 35(0) ; If condition is false, jump to ELSE
32 : LD 1, 1(5) ; Load parameter 'n' into R1
33 : ST 1, 3(5) ; Store result into current frame's return slot
34 : LDA 7, 50(0) ; Skip ELSE block
35 : LD 1, 1(5) ; Load parameter 'n' into R1
36 : LDA 4, 5(5) ; Recompute callee base from callee size
37 : ST 1, 1(4) ; Store argument 0 in callee
38 : LD 1, 2(5) ; Load parameter 'k' into R1
39 : LDA 4, 5(5) ; Recompute callee base from callee size
40 : ST 1, 2(4) ; Store argument 1 in callee
41 : LDA 4, 5(5) ; Recompute callee base from callee size
42 : LDA 6, 46(0) ; Return address
43 : ST 6, 0(4) ; Store return in callee frame
44 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
45 : LDA 7, 70(0) ; Call sub
46 : LD 1, 3(5) ; Load callee result into R1
47 : LDC 2, 5(0) ; Callee frame size
48 : SUB 5, 5, 2 ; Pop callee frame
49 : ST 1, 3(5) ; Store result into caller’s frame
50 : LD 1, 3(5) ; Load main return value into R1
51 : LD 6, 0(5) ; Load main return address
52 : LDA 7, 0(6) ; Return from main
53 : LD 1, 1(5) ; Load parameter 'n' into R1
54 : LDA 4, 4(5) ; Recompute callee base from callee size
55 : ST 1, 1(4) ; Store argument 0 in callee
56 : LD 1, 2(5) ; Load parameter 'k' into R1
57 : LDA 4, 4(5) ; Recompute callee base from callee size
58 : ST 1, 2(4) ; Store argument 1 in callee
59 : LDA 4, 4(5) ; Recompute callee base from callee size
60 : LDA 6, 64(0) ; Return address
61 : ST 6, 0(4) ; Store return in callee frame
62 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
63 : LDA 7, 14(0) ; Call main
64 : LD 1, 3(5) ; Load callee result into R1
65 : LDC 2, 4(0) ; Callee frame size
66 : SUB 5, 5, 2 ; Pop callee frame
67 : ST 1, 3(5) ; Store function result into frame return slot
68 : LD 6, 0(5) ; Load return address
69 : LDA 7, 0(6) ; Return to caller
70 : LD 1, 1(5) ; Load parameter 'n' into R1
71 : ST 1, 4(5) ; Spill left operand at depth 0
72 : LDC 1, 1(0) ; Load integer-literal into R1
73 : LD 2, 4(5) ; Restore left operand from depth 0
74 : SUB 1, 2, 1 ; R1 = left - right
75 : LDA 4, 5(5) ; Recompute callee base from callee size
76 : ST 1, 1(4) ; Store argument 0 in callee
77 : LD 1, 2(5) ; Load parameter 'k' into R1
78 : LDA 4, 5(5) ; Recompute callee base from callee size
79 : ST 1, 2(4) ; Store argument 1 in callee
80 : LDA 4, 5(5) ; Recompute callee base from callee size
81 : LDA 6, 85(0) ; Return address
82 : ST 6, 0(4) ; Store return in callee frame
83 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
84 : LDA 7, 53(0) ; Call recurse
85 : LD 1, 3(5) ; Load callee result into R1
86 : LDC 2, 5(0) ; Callee frame size
87 : SUB 5, 5, 2 ; Pop callee frame
88 : ST 1, 3(5) ; Store function result into frame return slot
89 : LD 6, 0(5) ; Load return address
90 : LDA 7, 0(6) ; Return to caller
