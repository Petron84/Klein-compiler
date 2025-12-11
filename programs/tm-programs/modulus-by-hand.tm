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
15 : LD 1, 1(5) ; Load parameter 'm' into R1
16 : ST 1, 4(5) ; Spill left operand at depth 0
17 : LD 1, 2(5) ; Load parameter 'n' into R1
18 : LD 2, 4(5) ; Restore left operand from depth 0
19 : DIV 1, 2, 1 ; R1 = left / right
20 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
21 : LDA 6, 27(0) ; Return address
22 : ST 6, 0(2) ; Store return address in callee frame
23 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
24 : LDC 3, 3(0) ; Callee frame size
25 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
26 : LDA 7, 12(0) ; Call built-in print
27 : LDC 2, 3(0) ; Callee frame size
28 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
29 : LDC 3, 4(0) ; Caller frame size
30 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
31 : LD 1, 1(5) ; Load parameter 'm' into R1
32 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
33 : ST 1, 1(2) ; Store argument 0 in callee
34 : LD 1, 2(5) ; Load parameter 'n' into R1
35 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
36 : ST 1, 2(2) ; Store argument 1 in callee
37 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
38 : LDA 6, 44(0) ; Return address
39 : ST 6, 0(2) ; Store return in callee frame
40 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
41 : LDC 3, 5(0) ; Callee frame size
42 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
43 : LDA 7, 53(0) ; Call mod
44 : LD 1, 3(5) ; Load callee result into R1
45 : LDC 2, 5(0) ; Callee frame size
46 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
47 : LDC 3, 4(0) ; Caller frame size
48 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
49 : ST 1, 3(5) ; Store result into caller’s frame
50 : LD 1, 3(5) ; Load main return value into R1
51 : LD 6, 0(5) ; Load main return address
52 : LDA 7, 0(6) ; Return from main
53 : LD 1, 1(5) ; Load parameter 'm' into R1
54 : ST 1, 4(5) ; Spill left operand at depth 0
55 : LD 1, 2(5) ; Load parameter 'n' into R1
56 : LD 2, 4(5) ; Restore left operand from depth 0
57 : SUB 1, 2, 1 ; left - right for less-than check
58 : JLT 1, 2(7) ; If R1 < 0, jump to true
59 : LDC 1, 0(0) ; false
60 : LDA 7, 1(7) ; skip setting true
61 : LDC 1, 1(0) ; true
62 : JEQ 1, 65(0) ; If condition is false, jump to ELSE
63 : LD 1, 1(5) ; Load parameter 'm' into R1
64 : LDA 7, 87(0) ; Skip ELSE block
65 : LD 1, 1(5) ; Load parameter 'm' into R1
66 : ST 1, 4(5) ; Spill left operand at depth 0
67 : LD 1, 2(5) ; Load parameter 'n' into R1
68 : LD 2, 4(5) ; Restore left operand from depth 0
69 : SUB 1, 2, 1 ; R1 = left - right
70 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
71 : ST 1, 1(2) ; Store argument 0 in callee
72 : LD 1, 2(5) ; Load parameter 'n' into R1
73 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
74 : ST 1, 2(2) ; Store argument 1 in callee
75 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
76 : LDA 6, 82(0) ; Return address
77 : ST 6, 0(2) ; Store return in callee frame
78 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
79 : LDC 3, 5(0) ; Callee frame size
80 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
81 : LDA 7, 53(0) ; Call mod
82 : LD 1, 3(5) ; Load callee result into R1
83 : LDC 2, 5(0) ; Callee frame size
84 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
85 : LDC 3, 5(0) ; Caller frame size
86 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
87 : ST 1, 3(5) ; Store function result into frame return slot
88 : LD 6, 0(5) ; Load return address
89 : LDA 7, 0(6) ; Return to caller
