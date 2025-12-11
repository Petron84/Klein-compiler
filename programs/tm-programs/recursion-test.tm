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
14 : LD 1, 1(5) ; Load parameter 'a' into R1
15 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2+i)
16 : LD 1, 2(5) ; Load parameter 'b' into R1
17 : ST 1, 5(5) ; Stage arg 1 in caller temp (P+2+i)
18 : LDA 4, 6(5) ; Callee base for arg copy
19 : LD 1, 4(5) ; Load staged arg 0 from caller temp
20 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
21 : LD 1, 5(5) ; Load staged arg 1 from caller temp
22 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
23 : LDA 6, 27(0) ; Return address
24 : ST 6, 0(4) ; Store return in callee frame
25 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
26 : LDA 7, 34(0) ; Call add_till_n
27 : LD 1, 3(5) ; Load callee result into R1
28 : LDC 2, 6(0) ; Callee frame size
29 : SUB 5, 5, 2 ; Pop callee frame
30 : ST 1, 3(5) ; Store result into caller’s frame
31 : LD 1, 3(5) ; Load main return value into R1
32 : LD 6, 0(5) ; Load main return address
33 : LDA 7, 0(6) ; Return from main
34 : LD 1, 1(5) ; Load parameter 'a' into R1
35 : LDA 4, 3(5) ; Callee base for built-in print
36 : LDA 6, 40(0) ; Return address
37 : ST 6, 0(4) ; Store return address in callee frame
38 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
39 : LDA 7, 11(0) ; Call built-in print
40 : LDC 2, 3(0) ; Callee frame size (print)
41 : SUB 5, 5, 2 ; Pop back to caller
42 : LD 1, 1(5) ; Load parameter 'a' into R1
43 : ST 1, 4(5) ; Spill left operand at depth 0
44 : LD 1, 2(5) ; Load parameter 'b' into R1
45 : LD 2, 4(5) ; Restore left operand from depth 0
46 : SUB 1, 2, 1 ; left - right for equality check
47 : JEQ 1, 2(7) ; If R1 == 0, jump to true
48 : LDC 1, 0(0) ; false
49 : LDA 7, 1(7) ; skip setting true
50 : LDC 1, 1(0) ; true
51 : JEQ 1, 54(0) ; If condition is false, jump to ELSE
52 : LD 1, 1(5) ; Load parameter 'a' into R1
53 : LDA 7, !temp_3(0) ; Skip ELSE block
54 : LD 1, 1(5) ; Load parameter 'a' into R1
55 : ST 1, 4(5) ; Spill left operand at depth 0
56 : LDC 1, 1(0) ; Load integer-literal into R1
57 : LD 2, 4(5) ; Restore left operand from depth 0
58 : ADD 1, 2, 1 ; R1 = left + right
59 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2+i)
60 : LD 1, 2(5) ; Load parameter 'b' into R1
61 : ST 1, 5(5) ; Stage arg 1 in caller temp (P+2+i)
62 : LDA 4, 6(5) ; Callee base for arg copy
63 : LD 1, 4(5) ; Load staged arg 0 from caller temp
64 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
65 : LD 1, 5(5) ; Load staged arg 1 from caller temp
66 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
67 : LDA 6, 71(0) ; Return address
68 : ST 6, 0(4) ; Store return in callee frame
69 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
70 : LDA 7, 34(0) ; Call add_till_n
71 : LD 1, 3(5) ; Load callee result into R1
72 : LDC 2, 6(0) ; Callee frame size
73 : SUB 5, 5, 2 ; Pop callee frame
74 : ST 1, 3(5) ; Store function result into frame return slot
75 : LD 6, 0(5) ; Load return address
76 : LDA 7, 0(6) ; Return to caller
