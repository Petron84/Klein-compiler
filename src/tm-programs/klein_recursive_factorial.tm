0 : LDC 5, 2(0) ; Set DMEM pointer (R5) to main stack frame base
1 : ADD 4, 5, 0 ; Set top of caller frame (R4 := R5)
2 : LD 2, 1(0) ; Load CLI arg 1 into R2
3 : ST 2, 1(5) ; Store arg 1 into main frame parameter slot
4 : LDA 6, 2(7) ; Calculate return address (PC + 2)
5 : ST 6, 0(5) ; Store return address in main frame
6 : LDA 7, 12(0) ; Branch to main function
7 : OUT 1, 0, 0 ; Return/print result from main in R1
8 : HALT 0, 0, 0 ; Terminate program
9 : OUT 1, 0, 0 ; Hardcoded print: output R1
10 : LD 6, 0(5) ; Load return address from current frame
11 : LDA 7, 0(6) ; Jump back to caller
12 : LD 1, 1(5) ; Load parameter 'n' into R1
13 : LDA 4, 3(5) ; Compute callee base = FP + caller_size
14 : ST 1, 1(4) ; Store argument 0 in callee param slot
15 : LDA 4, 3(5) ; Compute callee base = FP + caller_size
16 : LDA 6, 20(0) ; Return address
17 : ST 6, 0(4) ; Store return in callee frame
18 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
19 : LDA 7, 27(0) ; Call factorial
20 : LD 1, 2(5) ; Load callee result into R1
21 : LDC 2, 3(0) ; Caller frame size
22 : SUB 5, 5, 2 ; Pop callee frame back to caller
23 : ST 1, 2(5) ; Store result into caller’s frame return slot
24 : LD 1, 2(5) ; Load main return value into R1
25 : LD 6, 0(5) ; Load main return address
26 : LDA 7, 0(6) ; Return from main
27 : LD 1, 1(5) ; Load parameter 'n' into R1
28 : ST 1, 3(5) ; Spill left operand at depth 0
29 : LDC 1, 0(0) ; Load integer-literal into R1
30 : LD 2, 3(5) ; Restore left operand from depth 0
31 : SUB 1, 2, 1 ; left - right for equality check
32 : JEQ 1, 2(7) ; If R1 == 0, jump to true
33 : LDC 1, 0(0) ; false
34 : LDA 7, 1(7) ; skip setting true
35 : LDC 1, 1(0) ; true
36 : ST 1, 3(5) ; Spill left operand at depth 0
37 : LD 1, 1(5) ; Load parameter 'n' into R1
38 : ST 1, 4(5) ; Spill left operand at depth 1
39 : LDC 1, 1(0) ; Load integer-literal into R1
40 : LD 2, 4(5) ; Restore left operand from depth 1
41 : SUB 1, 2, 1 ; left - right for equality check
42 : JEQ 1, 2(7) ; If R1 == 0, jump to true
43 : LDC 1, 0(0) ; false
44 : LDA 7, 1(7) ; skip setting true
45 : LDC 1, 1(0) ; true
46 : LD 2, 3(5) ; Restore left operand from depth 0
47 : ADD 1, 2, 1 ; R1 = left OR right
48 : JEQ 1, 51(0) ; If condition is false, jump to ELSE
49 : LDC 1, 1(0) ; Load integer-literal into R1
50 : LDA 7, 70(0) ; Skip ELSE block
51 : LD 1, 1(5) ; Load parameter 'n' into R1
52 : ST 1, 3(5) ; Spill left operand at depth 0
53 : LD 1, 1(5) ; Load parameter 'n' into R1
54 : ST 1, 4(5) ; Spill left operand at depth 1
55 : LDC 1, 1(0) ; Load integer-literal into R1
56 : LD 2, 4(5) ; Restore left operand from depth 1
57 : SUB 1, 2, 1 ; R1 = left - right
58 : LDA 4, 5(5) ; Compute callee base = FP + caller_size
59 : ST 1, 1(4) ; Store argument 0 in callee param slot
60 : LDA 4, 5(5) ; Compute callee base = FP + caller_size
61 : LDA 6, 65(0) ; Return address
62 : ST 6, 0(4) ; Store return in callee frame
63 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
64 : LDA 7, 27(0) ; Call factorial
65 : LD 1, 2(5) ; Load callee result into R1
66 : LDC 2, 5(0) ; Caller frame size
67 : SUB 5, 5, 2 ; Pop callee frame back to caller
68 : LD 2, 3(5) ; Restore left operand from depth 0
69 : MUL 1, 2, 1 ; R1 = left * right
70 : ST 1, 2(5) ; Store function result into frame return slot
71 : LD 6, 0(5) ; Load return address
72 : LDA 7, 0(6) ; Return to caller
