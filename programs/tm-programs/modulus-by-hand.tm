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
14 : LD 1, 1(5) ; Load parameter 'm' into R1
15 : ST 1, 4(5) ; Spill left operand at depth 0
16 : LD 1, 2(5) ; Load parameter 'n' into R1
17 : LD 2, 4(5) ; Restore left operand from depth 0
18 : DIV 1, 2, 1 ; R1 = left / right
19 : LDA 4, 4(5) ; Compute callee base from caller size
20 : LDA 6, 24(0) ; Return address
21 : ST 6, 0(4) ; Store return address into callee frame
22 : ADD 5, 4, 0 ; Push new frame (R5 := callee base)
23 : LDA 7, 11(0) ; Call built-in print
24 : LDC 2, 4(0) ; Caller frame size
25 : SUB 5, 5, 2 ; Pop back to caller
26 : LDA 4, 4(5) ; Compute callee base from caller size
27 : LD 1, 1(5) ; Load parameter 'm' into R1
28 : ST 1, 1(4) ; Store argument 0 in callee frame
29 : LD 1, 2(5) ; Load parameter 'n' into R1
30 : ST 1, 2(4) ; Store argument 1 in callee frame
31 : LDA 6, 35(0) ; Return address
32 : ST 6, 0(4) ; Store return address into callee frame
33 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
34 : LDA 7, 42(0) ; Call mod
35 : LD 1, 3(5) ; Load callee result into R1
36 : LDC 2, 4(0) ; Caller frame size
37 : SUB 5, 5, 2 ; Pop back to caller
38 : ST 1, 3(5) ; Store result into caller’s return slot
39 : LD 1, 3(5) ; Load main return value into R1
40 : LD 6, 0(5) ; Load main return address
41 : LDA 7, 0(6) ; Return from main
42 : LD 1, 1(5) ; Load parameter 'm' into R1
43 : ST 1, 4(5) ; Spill left operand at depth 0
44 : LD 1, 2(5) ; Load parameter 'n' into R1
45 : LD 2, 4(5) ; Restore left operand from depth 0
46 : SUB 1, 2, 1 ; left - right for less-than check
47 : JLT 1, 2(7) ; If R1 < 0, jump to true
48 : LDC 1, 0(0) ; false
49 : LDA 7, 1(7) ; skip setting true
50 : LDC 1, 1(0) ; true
51 : JEQ 1, 54(0) ; If condition is false, jump to ELSE
52 : LD 1, 1(5) ; Load parameter 'm' into R1
53 : LDA 7, 70(0) ; Skip ELSE block
54 : LDA 4, 5(5) ; Compute callee base from caller size
55 : LD 1, 1(5) ; Load parameter 'm' into R1
56 : ST 1, 4(5) ; Spill left operand at depth 0
57 : LD 1, 2(5) ; Load parameter 'n' into R1
58 : LD 2, 4(5) ; Restore left operand from depth 0
59 : SUB 1, 2, 1 ; R1 = left - right
60 : ST 1, 1(4) ; Store argument 0 in callee frame
61 : LD 1, 2(5) ; Load parameter 'n' into R1
62 : ST 1, 2(4) ; Store argument 1 in callee frame
63 : LDA 6, 67(0) ; Return address
64 : ST 6, 0(4) ; Store return address into callee frame
65 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
66 : LDA 7, 42(0) ; Call mod
67 : LD 1, 3(5) ; Load callee result into R1
68 : LDC 2, 5(0) ; Caller frame size
69 : SUB 5, 5, 2 ; Pop back to caller
70 : ST 1, 3(5) ; Store function result into frame return slot
71 : LD 6, 0(5) ; Load return address
72 : LDA 7, 0(6) ; Return to caller
