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
27 : LDA 7, 37(0) ; Call add_till_n
28 : LD 1, 3(5) ; Load callee result into R1
29 : LDC 2, 5(0) ; Callee frame size
30 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
31 : LDC 3, 4(0) ; Caller frame size
32 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
33 : ST 1, 3(5) ; Store result into caller’s frame
34 : LD 1, 3(5) ; Load main return value into R1
35 : LD 6, 0(5) ; Load main return address
36 : LDA 7, 0(6) ; Return from main
37 : LD 1, 1(5) ; Load parameter 'a' into R1
38 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
39 : LDA 6, 45(0) ; Return address
40 : ST 6, 0(2) ; Store return address in callee frame
41 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
42 : LDC 3, 3(0) ; Callee frame size
43 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
44 : LDA 7, 12(0) ; Call built-in print
45 : LDC 2, 3(0) ; Callee frame size
46 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
47 : LDC 3, 5(0) ; Caller frame size
48 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
49 : LD 1, 1(5) ; Load parameter 'a' into R1
50 : ST 1, 4(5) ; Spill left operand at depth 0
51 : LD 1, 2(5) ; Load parameter 'b' into R1
52 : LD 2, 4(5) ; Restore left operand from depth 0
53 : SUB 1, 2, 1 ; left - right for equality check
54 : JEQ 1, 2(7) ; If R1 == 0, jump to true
55 : LDC 1, 0(0) ; false
56 : LDA 7, 1(7) ; skip setting true
57 : LDC 1, 1(0) ; true
58 : JEQ 1, 61(0) ; If condition is false, jump to ELSE
59 : LD 1, 1(5) ; Load parameter 'a' into R1
60 : LDA 7, 83(0) ; Skip ELSE block
61 : LD 1, 1(5) ; Load parameter 'a' into R1
62 : ST 1, 4(5) ; Spill left operand at depth 0
63 : LDC 1, 1(0) ; Load integer-literal into R1
64 : LD 2, 4(5) ; Restore left operand from depth 0
65 : ADD 1, 2, 1 ; R1 = left + right
66 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
67 : ST 1, 1(2) ; Store argument 0 in callee
68 : LD 1, 2(5) ; Load parameter 'b' into R1
69 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
70 : ST 1, 2(2) ; Store argument 1 in callee
71 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
72 : LDA 6, 78(0) ; Return address
73 : ST 6, 0(2) ; Store return in callee frame
74 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
75 : LDC 3, 5(0) ; Callee frame size
76 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
77 : LDA 7, 37(0) ; Call add_till_n
78 : LD 1, 3(5) ; Load callee result into R1
79 : LDC 2, 5(0) ; Callee frame size
80 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
81 : LDC 3, 5(0) ; Caller frame size
82 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
83 : ST 1, 3(5) ; Store function result into frame return slot
84 : LD 6, 0(5) ; Load return address
85 : LDA 7, 0(6) ; Return to caller
