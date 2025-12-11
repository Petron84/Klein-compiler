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
10 : LDC 1, 5(0) ; Load integer-literal into R1
11 : ST 1, 2(5) ; Spill left operand at depth 0
12 : LDC 1, 6(0) ; Load integer-literal into R1
13 : ST 1, 2(5) ; Stage arg 0 in caller temp (P+2+i)
14 : LDA 4, 3(5) ; Callee base for arg copy
15 : LD 1, 2(5) ; Load staged arg 0 from caller temp
16 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
17 : LDA 6, 21(0) ; Return address
18 : ST 6, 0(4) ; Store return in callee frame
19 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
20 : LDA 7, 41(0) ; Call break_program
21 : LD 1, 2(5) ; Load callee result into R1
22 : LDC 2, 3(0) ; Callee frame size
23 : SUB 5, 5, 2 ; Pop callee frame
24 : LD 2, 2(5) ; Restore left operand from depth 0
25 : SUB 1, 2, 1 ; R1 = left - right
26 : ST 1, 2(5) ; Stage arg 0 in caller temp (P+2+i)
27 : LDA 4, 3(5) ; Callee base for arg copy
28 : LD 1, 2(5) ; Load staged arg 0 from caller temp
29 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
30 : LDA 6, 34(0) ; Return address
31 : ST 6, 0(4) ; Store return in callee frame
32 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
33 : LDA 7, 45(0) ; Call bad_call
34 : LD 1, 2(5) ; Load callee result into R1
35 : LDC 2, 3(0) ; Callee frame size
36 : SUB 5, 5, 2 ; Pop callee frame
37 : ST 1, 1(5) ; Store result into caller’s frame
38 : LD 1, 1(5) ; Load main return value into R1
39 : LD 6, 0(5) ; Load main return address
40 : LDA 7, 0(6) ; Return from main
41 : LD 1, 1(5) ; Load parameter 'n' into R1
42 : ST 1, 2(5) ; Store function result into frame return slot
43 : LD 6, 0(5) ; Load return address
44 : LDA 7, 0(6) ; Return to caller
45 : LD 1, 1(5) ; Load parameter 'n' into R1
46 : ST 1, 2(5) ; Store function result into frame return slot
47 : LD 6, 0(5) ; Load return address
48 : LDA 7, 0(6) ; Return to caller
