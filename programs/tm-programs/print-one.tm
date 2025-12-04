0 : LDA  7, 4(0) ;  Load address of main IMEM block - branch to function
1 :  OUT  1, 0, 0 ;  Hardcoded print function
2 :  LD   6, 0(5) ;  Load return addess from previous function call/stack frame.
3 :  LDA  7, 0(6) ;  Load address of previous function call into register 7.
4 : LDA  6, 8(0) ;  Load return address into R6
5 : ST   6, 0(5) ;  Store current return address into DMEM
6 : LDC  1, 1(0) ;  Load integer-literal value into register 1
7 : LDA  7, 1(0) ;  Load address of print IMEM block - branch to function
8 : LDC  5, 1022(0) ;  Store the memory location of main return value
9 : ST   1, 0(5) ;  Store return value of into DMEM
10 : LDC  1, 1(0) ;  Load integer-literal value into register 1
11 : LDC  5, 1022(0) ;  Store the memory location of main return value
12 : ST   1, 0(5) ;  Store return value of into DMEM
13 : LDC  5, 1022(0) ;  Store the memory location of main return value
14 : ST   1, 0(5) ;  Store return value of into DMEM
15 : LD   1, 0(5) ;  Load Return Value from DMEM
16 : OUT  1, 0, 0 ;  Output value from register 1.
17 : HALT 0, 0, 0 ;  Terminate program execution.
