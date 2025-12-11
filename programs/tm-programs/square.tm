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
15 : LD 1, 1(5) ; Load parameter 'n' into R1
16 : LD 2, 3(5) ; Restore left operand from depth 0
17 : MUL 1, 2, 1 ; R1 = left * right
18 : ST 1, 2(5) ; Store result into current frame's return slot
19 : LD 1, 2(5) ; Load main return value into R1
20 : LD 6, 0(5) ; Load main return address
21 : LDA 7, 0(6) ; Return from main
