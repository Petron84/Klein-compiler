0 : LDC  3, 1(0) ;  Load target memory location for command line argument {index}
1 : LD   1, 0(3) ;  Load command line argument 1 into register 1
2 : ST   0, 0(3) ;  Replace DMEM[1] with 0
3 : ST   1, 0(5) ;  Store command line argument into MAIN stack frame
4 : LDC  4, 1(0) ;  Load value 1 in temp register 4
5 : SUB  5, 5, 4 ;  Decrement memory offset
6 : LDC  3, 2(0) ;  Load target memory location for command line argument {index}
7 : LD   1, 0(3) ;  Load command line argument 2 into register 1
8 : ST   0, 0(3) ;  Replace DMEM[2] with 0
9 : ST   1, 0(5) ;  Store command line argument into MAIN stack frame
10 : LDC  4, 2(0) ;  Load value 2 in temp register 4
11 : SUB  5, 5, 4 ;  Decrement memory offset
12 : LDA  7, 16(0) ;  Load address of main IMEM block - branch to function
13 :  OUT  1, 0, 0 ;  Hardcoded print function
14 :  LD   6, 0(5) ;  Load return addess from previous function call/stack frame.
15 :  LDA  7, 0(6) ;  Load address of previous function call into register 7.
16 : LDC   3, 1022(0) ;  Load offset for parameter a into register 3
17 : LD  1, 0(3) ;  Load parameter a value into register 1
18 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
19 : SUB  5, 5, 4 ;  Decrement memory offset
20 : ST   1, 0(5) ;  Store left expression value into memory
21 : LDC   3, 1021(0) ;  Load offset for parameter b into register 3
22 : LD  1, 0(3) ;  Load parameter b value into register 1
23 : LD   2, 0(5) ;  Load left expression value from memory into register 2
24 : ADD  5, 5, 4 ;  Increment memory offset
25 : MUL  1, 2, 1 ;  Compute logical AND for left and right expression values
26 : LDC  5, 1020(0) ;  Store the memory location of main return value
27 : ST   1, 0(5) ;  Store return value of into DMEM
28 : LDC  5, 1020(0) ;  Store the memory location of main return value
29 : ST   1, 0(5) ;  Store return value of into DMEM
30 : LD   1, 0(5) ;  Load Return Value from DMEM
31 : OUT  1, 0, 0 ;  Output value from register 1.
32 : HALT 0, 0, 0 ;  Terminate program execution.
