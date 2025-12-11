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
12 : LDC 1, 5(0) ; Load integer-literal into R1
13 : ST 1, 3(5) ; Spill left operand at depth 0
14 : LD 1, 1(5) ; Load parameter 'n' into R1
15 : LD 2, 3(5) ; Restore left operand from depth 0
16 : SUB 1, 2, 1 ; left - right for less-than check
17 : JLT 1, 2(7) ; If R1 < 0, jump to true
18 : LDC 1, 0(0) ; false
19 : LDA 7, 1(7) ; skip setting true
20 : LDC 1, 1(0) ; true
21 : JEQ 1, 35(0) ; If condition is false, jump to ELSE
22 : LD 1, 1(5) ; Load parameter 'n' into R1
23 : LDA 4, 4(5) ; Recompute callee base from callee size
24 : ST 1, 1(4) ; Store argument 0 in callee
25 : LDA 4, 4(5) ; Recompute callee base from callee size
26 : LDA 6, 30(0) ; Return address
27 : ST 6, 0(4) ; Store return in callee frame
28 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
29 : LDA 7, 58(0) ; Call addone
30 : LD 1, 2(5) ; Load callee result into R1
31 : LDC 2, 4(0) ; Callee frame size
32 : SUB 5, 5, 2 ; Pop callee frame
33 : ST 1, 2(5) ; Store result into caller’s frame
34 : LDA 7, 47(0) ; Skip ELSE block
35 : LD 1, 1(5) ; Load parameter 'n' into R1
36 : LDA 4, 4(5) ; Recompute callee base from callee size
37 : ST 1, 1(4) ; Store argument 0 in callee
38 : LDA 4, 4(5) ; Recompute callee base from callee size
39 : LDA 6, 43(0) ; Return address
40 : ST 6, 0(4) ; Store return in callee frame
41 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
42 : LDA 7, 50(0) ; Call addtwo
43 : LD 1, 2(5) ; Load callee result into R1
44 : LDC 2, 4(0) ; Callee frame size
45 : SUB 5, 5, 2 ; Pop callee frame
46 : ST 1, 2(5) ; Store result into caller’s frame
47 : LD 1, 2(5) ; Load main return value into R1
48 : LD 6, 0(5) ; Load main return address
49 : LDA 7, 0(6) ; Return from main
50 : LD 1, 1(5) ; Load parameter 'n' into R1
51 : ST 1, 3(5) ; Spill left operand at depth 0
52 : LDC 1, 2(0) ; Load integer-literal into R1
53 : LD 2, 3(5) ; Restore left operand from depth 0
54 : ADD 1, 2, 1 ; R1 = left + right
55 : ST 1, 2(5) ; Store function result into frame return slot
56 : LD 6, 0(5) ; Load return address
57 : LDA 7, 0(6) ; Return to caller
58 : LD 1, 1(5) ; Load parameter 'n' into R1
59 : ST 1, 3(5) ; Spill left operand at depth 0
60 : LDC 1, 1(0) ; Load integer-literal into R1
61 : LD 2, 3(5) ; Restore left operand from depth 0
62 : ADD 1, 2, 1 ; R1 = left + right
63 : ST 1, 2(5) ; Store function result into frame return slot
64 : LD 6, 0(5) ; Load return address
65 : LDA 7, 0(6) ; Return to caller
