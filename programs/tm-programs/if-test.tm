0 : LDC 5, 2(0) ; Set DMEM pointer (R5) to main stack frame base
1 : LDC 2, 4(0) ; Main frame size
2 : ADD 4, 5, 2 ; Initialize stack-top (R4) to end of main frame
3 : LD 2, 1(0) ; Load CLI arg 1 into R2
4 : ST 2, 1(5) ; Store arg 1 into main frame parameter slot
5 : LDA 6, 2(7) ; Calculate return address (PC + 2)
6 : ST 6, 0(5) ; Store return address in main frame
7 : LDA 7, 13(0) ; Branch to main function
8 : OUT 1, 0, 0 ; Return/print result from main in R1
9 : HALT 0, 0, 0 ; Terminate program
10 : OUT 1, 0, 0 ; Hardcoded print: output R1
11 : LD 6, 0(5) ; Load return address from current frame
12 : LDA 7, 0(6) ; Jump back to caller
13 : LD 1, 1(5) ; Load parameter 'n' into R1
14 : ST 1, 3(5) ; Spill left operand at depth 0
15 : LDC 1, 10(0) ; Load integer-literal into R1
16 : LD 2, 3(5) ; Restore left operand from depth 0
17 : SUB 1, 2, 1 ; left - right for less-than check
18 : JLT 1, 2(7) ; If R1 < 0, jump to true
19 : LDC 1, 0(0) ; false
20 : LDA 7, 1(7) ; skip setting true
21 : LDC 1, 1(0) ; true
22 : JEQ 1, 47(0) ; If condition is false, jump to ELSE
23 : LD 1, 1(5) ; Load parameter 'n' into R1
24 : ST 1, 3(5) ; Spill left operand at depth 0
25 : LDC 1, 5(0) ; Load integer-literal into R1
26 : LD 2, 3(5) ; Restore left operand from depth 0
27 : SUB 1, 2, 1 ; left - right for less-than check
28 : JLT 1, 2(7) ; If R1 < 0, jump to true
29 : LDC 1, 0(0) ; false
30 : LDA 7, 1(7) ; skip setting true
31 : LDC 1, 1(0) ; true
32 : JEQ 1, 40(0) ; If condition is false, jump to ELSE
33 : LD 1, 1(5) ; Load parameter 'n' into R1
34 : ST 1, 3(5) ; Spill left operand at depth 0
35 : LDC 1, 2(0) ; Load integer-literal into R1
36 : LD 2, 3(5) ; Restore left operand from depth 0
37 : MUL 1, 2, 1 ; R1 = left * right
38 : ST 1, 2(5) ; Store result into current frame's return slot
39 : LDA 7, 46(0) ; Skip ELSE block
40 : LD 1, 1(5) ; Load parameter 'n' into R1
41 : ST 1, 3(5) ; Spill left operand at depth 0
42 : LDC 1, 1(0) ; Load integer-literal into R1
43 : LD 2, 3(5) ; Restore left operand from depth 0
44 : SUB 1, 2, 1 ; R1 = left - right
45 : ST 1, 2(5) ; Store result into current frame's return slot
46 : LDA 7, 49(0) ; Skip ELSE block
47 : LDC 1, 1(0) ; Load integer-literal into R1
48 : ST 1, 2(5) ; Store result into current frame's return slot
49 : LD 1, 2(5) ; Load main return value into R1
50 : LD 6, 0(5) ; Load main return address
51 : LDA 7, 0(6) ; Return from main
