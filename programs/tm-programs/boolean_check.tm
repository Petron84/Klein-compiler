0 : LDC 5, 3(0) ; Set DMEM pointer (R5) to main stack frame base
1 : LDC 2, 5(0) ; Main frame size
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
16 : ST 1, 4(5) ; Spill left operand at depth 0
17 : LD 1, 2(5) ; Load parameter 'b' into R1
18 : LD 2, 4(5) ; Restore left operand from depth 0
19 : MUL 1, 2, 1 ; R1 = left AND right
20 : ST 1, 3(5) ; Store result into current frame's return slot
21 : LD 1, 3(5) ; Load main return value into R1
22 : LD 6, 0(5) ; Load main return address
23 : LDA 7, 0(6) ; Return from main
