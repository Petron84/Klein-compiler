0 : LDC 5, 3(0) ;  Set DMEM pointer to main frame BASE
1 : LD 2, 1(0) ;  Load CLI arg 1 into register
2 : ST 2, 1(5) ;  Store the argument into main frame
3 : LD 2, 2(0) ;  Load CLI arg 2 into register
4 : ST 2, 2(5) ;  Store the argument into main frame
5 : LDA 6, 2(7) ;  Calculate return address
6 : ST 6, 0(5) ;  Store return address in main frame
7 : LDC 4, 4(0) ;  Size of main frame (RA + params + ret)
8 : ADD 5, 5, 4 ;  Advance R5 to FREE POINTER above main
9 : LDA 7, 17(0) ;  Load address of main IMEM block - branch to function
10 : OUT 1, 0, 0 ;  Return result
11 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
12 : OUT 1, 0, 0 ;  Hardcoded print function
13 : LDC 4, 3(0) ;  print frame size
14 : SUB 4, 5, 4 ;  BASE of print frame
15 : LD 6, 0(4) ;  Load return address from print frame base
16 : LDA 7, 0(6) ;  Jump to return address.
17 : LDA 4, 0(5) ;  BASE(callee) = FREE POINTER
18 : LDC 4, 4(0) ;  size(curr)
19 : SUB 4, 5, 4 ;  BASE(curr)
20 : LD 1, 1(4) ;  Load parameter 'a' into R1
21 : ST 1, 1(4) ;  Store argument 0 into callee frame
22 : LDC 4, 4(0) ;  size(curr)
23 : SUB 4, 5, 4 ;  BASE(curr)
24 : LD 1, 2(4) ;  Load parameter 'b' into R1
25 : ST 1, 2(4) ;  Store argument 1 into callee frame
26 : LDA 6, 31(0) ;  Compute return address
27 : ST 6, 0(4) ;  Store return address in callee frame
28 : LDA 2, 4(4) ;  end-of-callee-frame
29 : ADD 5, 2, 0 ;  Advance FREE POINTER
30 : LDA 7, 72(0) ;  Call multiply_and_square
31 : LDC 4, 4(0) ;  size(callee)
32 : SUB 4, 5, 4 ;  BASE(callee)
33 : LD 1, 3(4) ;  Load callee return value into R1
34 : LDC 4, 4(0) ;  size(callee)
35 : SUB 5, 5, 4 ;  Restore FREE POINTER
36 : LDC 4, 4(0) ;  size(curr)
37 : SUB 4, 5, 4 ;  BASE(curr)
38 : ST 1, 3(4) ;  Store result into current frame's return slot
39 : LDC 4, 4(0) ;  size(main)
40 : SUB 4, 5, 4 ;  BASE(main)
41 : LD 1, 3(4) ;  Load main return value into R1
42 : LD 6, 0(4) ;  Load return address for main function into R6
43 : LDA 7, 0(6) ;  Jump to return address of main function
44 : LDC 4, 3(0) ;  size(curr)
45 : SUB 4, 5, 4 ;  BASE(curr)
46 : LD 1, 1(4) ;  Load parameter 'a' into R1
47 : ADD 3, 1, 0 ;  Save left operand in R3
48 : LDC 4, 3(0) ;  size(curr)
49 : SUB 4, 5, 4 ;  BASE(curr)
50 : LD 1, 1(4) ;  Load parameter 'a' into R1
51 : ADD 2, 3, 0 ;  Restore left operand into R2
52 : MUL 1, 2, 1 ;  R1 = left * right
53 : LDC 4, 3(0) ;  size(square)
54 : SUB 4, 5, 4 ;  BASE(square)
55 : ST 1, 2(4) ;  Store square result into return slot
56 : LD 6, 0(4) ;  Load return address
57 : LDA 7, 0(6) ;  Return to caller
58 : LDC 4, 4(0) ;  size(curr)
59 : SUB 4, 5, 4 ;  BASE(curr)
60 : LD 1, 1(4) ;  Load parameter 'a' into R1
61 : ADD 3, 1, 0 ;  Save left operand in R3
62 : LDC 4, 4(0) ;  size(curr)
63 : SUB 4, 5, 4 ;  BASE(curr)
64 : LD 1, 2(4) ;  Load parameter 'b' into R1
65 : ADD 2, 3, 0 ;  Restore left operand into R2
66 : MUL 1, 2, 1 ;  R1 = left * right
67 : LDC 4, 4(0) ;  size(multiply)
68 : SUB 4, 5, 4 ;  BASE(multiply)
69 : ST 1, 3(4) ;  Store multiply result into return slot
70 : LD 6, 0(4) ;  Load return address
71 : LDA 7, 0(6) ;  Return to caller
72 : LDA 4, 0(5) ;  BASE(callee) = FREE POINTER
73 : LDA 4, 0(5) ;  BASE(callee) = FREE POINTER
74 : LDC 4, 4(0) ;  size(curr)
75 : SUB 4, 5, 4 ;  BASE(curr)
76 : LD 1, 1(4) ;  Load parameter 'a' into R1
77 : ST 1, 1(4) ;  Store argument 0 into callee frame
78 : LDA 6, 83(0) ;  Compute return address
79 : ST 6, 0(4) ;  Store return address in callee frame
80 : LDA 2, 3(4) ;  end-of-callee-frame
81 : ADD 5, 2, 0 ;  Advance FREE POINTER
82 : LDA 7, 44(0) ;  Call square
83 : LDC 4, 3(0) ;  size(callee)
84 : SUB 4, 5, 4 ;  BASE(callee)
85 : LD 1, 2(4) ;  Load callee return value into R1
86 : LDC 4, 3(0) ;  size(callee)
87 : SUB 5, 5, 4 ;  Restore FREE POINTER
88 : ST 1, 1(4) ;  Store argument 0 into callee frame
89 : LDA 4, 0(5) ;  BASE(callee) = FREE POINTER
90 : LDC 4, 4(0) ;  size(curr)
91 : SUB 4, 5, 4 ;  BASE(curr)
92 : LD 1, 2(4) ;  Load parameter 'b' into R1
93 : ST 1, 1(4) ;  Store argument 0 into callee frame
94 : LDA 6, 99(0) ;  Compute return address
95 : ST 6, 0(4) ;  Store return address in callee frame
96 : LDA 2, 3(4) ;  end-of-callee-frame
97 : ADD 5, 2, 0 ;  Advance FREE POINTER
98 : LDA 7, 44(0) ;  Call square
99 : LDC 4, 3(0) ;  size(callee)
100 : SUB 4, 5, 4 ;  BASE(callee)
101 : LD 1, 2(4) ;  Load callee return value into R1
102 : LDC 4, 3(0) ;  size(callee)
103 : SUB 5, 5, 4 ;  Restore FREE POINTER
104 : ST 1, 2(4) ;  Store argument 1 into callee frame
105 : LDA 6, 110(0) ;  Compute return address
106 : ST 6, 0(4) ;  Store return address in callee frame
107 : LDA 2, 4(4) ;  end-of-callee-frame
108 : ADD 5, 2, 0 ;  Advance FREE POINTER
109 : LDA 7, 58(0) ;  Call multiply
110 : LDC 4, 4(0) ;  size(callee)
111 : SUB 4, 5, 4 ;  BASE(callee)
112 : LD 1, 3(4) ;  Load callee return value into R1
113 : LDC 4, 4(0) ;  size(callee)
114 : SUB 5, 5, 4 ;  Restore FREE POINTER
115 : LDC 4, 4(0) ;  size(multiply_and_square)
116 : SUB 4, 5, 4 ;  BASE(multiply_and_square)
117 : ST 1, 3(4) ;  Store multiply_and_square result into return slot
118 : LD 6, 0(4) ;  Load return address
119 : LDA 7, 0(6) ;  Return to caller
