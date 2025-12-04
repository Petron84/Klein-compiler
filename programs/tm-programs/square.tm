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
10 : LDC   3, 1022(0) ;  Load offset for parameter n into register 3
11 : LD  1, 0(3) ;  Load parameter n value into register 1
12 : LDC  4, 1(0) ;  Load value 1 into temporary register 4
13 : SUB  5, 5, 4 ;  Decrement memory offset
14 : ST   1, 0(5) ;  Store left expression value into memory
15 : LDC   3, 1022(0) ;  Load offset for parameter n into register 3
16 : LD  1, 0(3) ;  Load parameter n value into register 1
17 : LD   2, 0(5) ;  Load left expression value from memory into register 2
18 : ADD  5, 5, 4 ;  Increment memory offset
19 : MUL  1, 2, 1 ;  Multiply left and right expression values
20 : LDC  5, 1021(0) ;  Store the memory location of main return value
21 : ST   1, 0(5) ;  Store return value of into DMEM
22 : LDC  5, 1021(0) ;  Store the memory location of main return value
23 : ST   1, 0(5) ;  Store return value of into DMEM
24 : LD   1, 0(5) ;  Load Return Value from DMEM
25 : OUT  1, 0, 0 ;  Output value from register 1.
26 : HALT 0, 0, 0 ;  Terminate program execution.
