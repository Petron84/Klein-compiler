0 : LDC  3, 1(0) ;  Load target memory location for command line argument {index}
1 : LD   1, 0(3) ;  Load command line argument 1 into register 1
2 : ST   0, 0(3) ;  Replace DMEM[1] with 0
3 : ST   1, 0(5) ;  Store command line argument into MAIN stack frame
4 : LDC  4, 2(0) ;  Load value 2 in temp register 4
5 : SUB  5, 5, 4 ;  Decrement memory offset
6 : LDA  7, 10(0) ;  Load address of main IMEM block - branch to function
7 :  OUT  1, 0, 0 ;  Hardcoded print function
8 :  LD   6, 0(5) ;  Load return addess from previous function call/stack frame.
9 :  LDA  7, 0(6) ;  Load address of previous function call into register 7.
10 : LDA  6, 15(0) ;  Load return address into R6
11 : ST   6, 0(5) ;  Store current return address into DMEM
12 : LDC   3, 1022(0) ;  Load offset for parameter n into register 3
13 : LD  1, 0(3) ;  Load parameter n value into register 1
14 : LDA  7, 7(0) ;  Load address of print IMEM block - branch to function
15 : LDC  5, 1021(0) ;  Store the memory location of main return value
16 : ST   1, 0(5) ;  Store return value of into DMEM
17 : LDC  1, 10(0) ;  Load integer-literal value into register 1
18 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
19 : SUB  5, 5, 4 ;  Decrement memory offset
20 : ST   1, 0(5) ;  Store left expression value into memory
21 : LDC   3, 1022(0) ;  Load offset for parameter n into register 3
22 : LD  1, 0(3) ;  Load parameter n value into register 1
23 : LD   2, 0(5) ;  Load left expression value from memory into register 2
24 : ADD  5, 5, 4 ;  Increment memory offset
25 : SUB  1, 2, 1 ;  Subtract right expression from left expression value for less-than check
26 : JLT  1, 2(7) ;  If Register 1 is negative, then jump to true handling
27 : LDC  1, 0(0) ;  Load false (0) into register 1
28 : LDA  7, 1(7) ;  Jump to end of less-than handling
29 : LDC  1, 1(0) ;  Load true (1) into register 1
30 : JEQ  1, 41(0) ;  If condition is false, skip to ELSE block
31 : LDC   3, 1022(0) ;  Load offset for parameter n into register 3
32 : LD  1, 0(3) ;  Load parameter n value into register 1
33 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
34 : SUB  5, 5, 4 ;  Decrement memory offset
35 : ST   1, 0(5) ;  Store left expression value into memory
36 : LDC  1, 2(0) ;  Load integer-literal value into register 1
37 : LD   2, 0(5) ;  Load left expression value from memory into register 2
38 : ADD  5, 5, 4 ;  Increment memory offset
39 : MUL  1, 2, 1 ;  Multiply left and right expression values
40 : LDA  7, 42(0) ;  Skip the ELSE block
41 : LDC  1, 1(0) ;  Load integer-literal value into register 1
42 : LDC  5, 1021(0) ;  Store the memory location of main return value
43 : ST   1, 0(5) ;  Store return value of into DMEM
44 : LDC  5, 1021(0) ;  Store the memory location of main return value
45 : ST   1, 0(5) ;  Store return value of into DMEM
46 : LD   1, 0(5) ;  Load Return Value from DMEM
47 : OUT  1, 0, 0 ;  Output value from register 1.
48 : HALT 0, 0, 0 ;  Terminate program execution.
