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
22 : LDA 7, 30(0) ; Call add_till_n
23 : LD 1, 3(5) ; Load callee result into R1
24 : LDC 2, 4(0) ; Caller frame size
25 : SUB 5, 5, 2 ; Pop back to caller
26 : ST 1, 3(5) ; Store result into caller’s return slot
27 : LD 1, 3(5) ; Load main return value into R1
28 : LD 6, 0(5) ; Load main return address
29 : LDA 7, 0(6) ; Return from main
30 : LD 1, 1(5) ; Load parameter 'a' into R1
31 : LDA 4, 5(5) ; Compute callee base from caller size
32 : LDA 6, 36(0) ; Return address
33 : ST 6, 0(4) ; Store return address into callee frame
34 : ADD 5, 4, 0 ; Push new frame (R5 := callee base)
35 : LDA 7, 11(0) ; Call built-in print
36 : LDC 2, 5(0) ; Caller frame size
37 : SUB 5, 5, 2 ; Pop back to caller
38 : LD 1, 1(5) ; Load parameter 'a' into R1
39 : ST 1, 4(5) ; Spill left operand at depth 0
40 : LD 1, 2(5) ; Load parameter 'b' into R1
41 : LD 2, 4(5) ; Restore left operand from depth 0
42 : SUB 1, 2, 1 ; left - right for equality check
43 : JEQ 1, 2(7) ; If R1 == 0, jump to true
44 : LDC 1, 0(0) ; false
45 : LDA 7, 1(7) ; skip setting true
46 : LDC 1, 1(0) ; true
47 : JEQ 1, 50(0) ; If condition is false, jump to ELSE
48 : LD 1, 1(5) ; Load parameter 'a' into R1
49 : LDA 7, 66(0) ; Skip ELSE block
50 : LDA 4, 5(5) ; Compute callee base from caller size
51 : LD 1, 1(5) ; Load parameter 'a' into R1
52 : ST 1, 4(5) ; Spill left operand at depth 0
53 : LDC 1, 1(0) ; Load integer-literal into R1
54 : LD 2, 4(5) ; Restore left operand from depth 0
55 : ADD 1, 2, 1 ; R1 = left + right
56 : ST 1, 1(4) ; Store argument 0 in callee frame
57 : LD 1, 2(5) ; Load parameter 'b' into R1
58 : ST 1, 2(4) ; Store argument 1 in callee frame
59 : LDA 6, 63(0) ; Return address
60 : ST 6, 0(4) ; Store return address into callee frame
61 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
62 : LDA 7, 30(0) ; Call add_till_n
63 : LD 1, 3(5) ; Load callee result into R1
64 : LDC 2, 5(0) ; Caller frame size
65 : SUB 5, 5, 2 ; Pop back to caller
66 : ST 1, 3(5) ; Store function result into frame return slot
67 : LD 6, 0(5) ; Load return address
68 : LDA 7, 0(6) ; Return to caller
