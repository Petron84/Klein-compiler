0 : LDC 5, 0(0) ; Set DMEM pointer (R5) to main stack frame base
1 : ADD 4, 5, 0 ; Set R4 := R5 (alias)
2 : LD 2, 1(0) ; Load CLI arg 1 into R2
3 : ST 2, 1(5) ; Store arg 1 into main frame parameter slot
4 : LDA 6, 2(7) ; Calculate return address (PC + 2)
5 : ST 6, 0(5) ; Store return address in main frame
6 : LDA 7, 12(0) ; Branch to main function
7 : OUT 1, 0, 0 ; Return/print result from main in R1
8 : HALT 0, 0, 0 ; Terminate program
9 : OUT 1, 0, 0 ; Built-in print: output R1
10 : LD 6, 0(5) ; Load return address from current frame
11 : LDA 7, 0(6) ; Return to caller
12 : LD 1, 1(5) ; Load parameter 'n' into R1
13 : ST 1, 3(5) ; Spill left operand at depth 0
14 : LDC 1, 10(0) ; Load integer literal into R1
15 : LD 2, 3(5) ; Restore left operand from depth 0
16 : SUB 1, 2, 1 ; Compute left - right for less-than
17 : JLT 1, 2(7) ; If < 0, jump to true
18 : LDC 1, 0(0) ; false
19 : LDA 7, 1(7) ; skip true assignment
20 : LDC 1, 1(0) ; true
21 : JEQ 1, 46(0) ; If condition false jump to ELSE
22 : LD 1, 1(5) ; Load parameter 'n' into R1
23 : ST 1, 3(5) ; Spill left operand at depth 0
24 : LDC 1, 5(0) ; Load integer literal into R1
25 : LD 2, 3(5) ; Restore left operand from depth 0
26 : SUB 1, 2, 1 ; Compute left - right for less-than
27 : JLT 1, 2(7) ; If < 0, jump to true
28 : LDC 1, 0(0) ; false
29 : LDA 7, 1(7) ; skip true assignment
30 : LDC 1, 1(0) ; true
31 : JEQ 1, 39(0) ; If condition false jump to ELSE
32 : LD 1, 1(5) ; Load parameter 'n' into R1
33 : ST 1, 3(5) ; Spill left operand at depth 0
34 : LDC 1, 2(0) ; Load integer literal into R1
35 : LD 2, 3(5) ; Restore left operand from depth 0
36 : MUL 1, 2, 1 ; R1 = left * right
37 : ST 1, 2(5) ; Store binary result into return slot
38 : LDA 7, 45(0) ; Skip ELSE block
39 : LD 1, 1(5) ; Load parameter 'n' into R1
40 : ST 1, 3(5) ; Spill left operand at depth 0
41 : LDC 1, 1(0) ; Load integer literal into R1
42 : LD 2, 3(5) ; Restore left operand from depth 0
43 : SUB 1, 2, 1 ; R1 = left - right
44 : ST 1, 2(5) ; Store binary result into return slot
45 : LDA 7, 48(0) ; Skip ELSE block
46 : LDC 1, 1(0) ; Load integer literal into R1
47 : ST 1, 2(5) ; Store literal result into current frame return slot
48 : LD 1, 2(5) ; Load main return value into R1
49 : LD 6, 0(5) ; Load main return address
50 : LDA 7, 0(6) ; Return from main
