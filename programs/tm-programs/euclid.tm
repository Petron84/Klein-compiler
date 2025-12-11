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
26 : LDA 7, 34(0) ; Call gcd
27 : LD 1, 3(5) ; Load callee result into R1
28 : LDC 2, 6(0) ; Callee frame size
29 : SUB 5, 5, 2 ; Pop callee frame
30 : ST 1, 3(5) ; Store result into caller’s frame
31 : LD 1, 3(5) ; Load main return value into R1
32 : LD 6, 0(5) ; Load main return address
33 : LDA 7, 0(6) ; Return from main
34 : LD 1, 2(5) ; Load parameter 'b' into R1
35 : ST 1, 4(5) ; Spill left operand at depth 0
36 : LDC 1, 0(0) ; Load integer-literal into R1
37 : LD 2, 4(5) ; Restore left operand from depth 0
38 : SUB 1, 2, 1 ; left - right for equality check
39 : JEQ 1, 2(7) ; If R1 == 0, jump to true
40 : LDC 1, 0(0) ; false
41 : LDA 7, 1(7) ; skip setting true
42 : LDC 1, 1(0) ; true
43 : JEQ 1, 46(0) ; If condition is false, jump to ELSE
44 : LD 1, 1(5) ; Load parameter 'a' into R1
45 : LDA 7, !temp_2(0) ; Skip ELSE block
46 : LD 1, 2(5) ; Load parameter 'b' into R1
47 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2+i)
48 : LD 1, 1(5) ; Load parameter 'a' into R1
49 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2+i)
50 : LD 1, 2(5) ; Load parameter 'b' into R1
51 : ST 1, 5(5) ; Stage arg 1 in caller temp (P+2+i)
52 : LDA 4, 6(5) ; Callee base for arg copy
53 : LD 1, 4(5) ; Load staged arg 0 from caller temp
54 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
55 : LD 1, 5(5) ; Load staged arg 1 from caller temp
56 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
57 : LDA 6, 61(0) ; Return address
58 : ST 6, 0(4) ; Store return in callee frame
59 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
60 : LDA 7, 80(0) ; Call remainder
61 : LD 1, 3(5) ; Load callee result into R1
62 : LDC 2, 6(0) ; Callee frame size
63 : SUB 5, 5, 2 ; Pop callee frame
64 : ST 1, 5(5) ; Stage arg 1 in caller temp (P+2+i)
65 : LDA 4, 6(5) ; Callee base for arg copy
66 : LD 1, 4(5) ; Load staged arg 0 from caller temp
67 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
68 : LD 1, 5(5) ; Load staged arg 1 from caller temp
69 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
70 : LDA 6, 74(0) ; Return address
71 : ST 6, 0(4) ; Store return in callee frame
72 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
73 : LDA 7, 34(0) ; Call gcd
74 : LD 1, 3(5) ; Load callee result into R1
75 : LDC 2, 6(0) ; Callee frame size
76 : SUB 5, 5, 2 ; Pop callee frame
77 : ST 1, 3(5) ; Store function result into frame return slot
78 : LD 6, 0(5) ; Load return address
79 : LDA 7, 0(6) ; Return to caller
80 : LD 1, 1(5) ; Load parameter 'a' into R1
81 : ST 1, 4(5) ; Spill left operand at depth 0
82 : LD 1, 2(5) ; Load parameter 'b' into R1
83 : LD 2, 4(5) ; Restore left operand from depth 0
84 : SUB 1, 2, 1 ; left - right for less-than check
85 : JLT 1, 2(7) ; If R1 < 0, jump to true
86 : LDC 1, 0(0) ; false
87 : LDA 7, 1(7) ; skip setting true
88 : LDC 1, 1(0) ; true
89 : JEQ 1, 92(0) ; If condition is false, jump to ELSE
90 : LD 1, 1(5) ; Load parameter 'a' into R1
91 : LDA 7, !temp_6(0) ; Skip ELSE block
92 : LD 1, 1(5) ; Load parameter 'a' into R1
93 : ST 1, 4(5) ; Spill left operand at depth 0
94 : LD 1, 2(5) ; Load parameter 'b' into R1
95 : LD 2, 4(5) ; Restore left operand from depth 0
96 : SUB 1, 2, 1 ; R1 = left - right
97 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2+i)
98 : LD 1, 2(5) ; Load parameter 'b' into R1
99 : ST 1, 5(5) ; Stage arg 1 in caller temp (P+2+i)
100 : LDA 4, 6(5) ; Callee base for arg copy
101 : LD 1, 4(5) ; Load staged arg 0 from caller temp
102 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
103 : LD 1, 5(5) ; Load staged arg 1 from caller temp
104 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
105 : LDA 6, 109(0) ; Return address
106 : ST 6, 0(4) ; Store return in callee frame
107 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
108 : LDA 7, 80(0) ; Call remainder
109 : LD 1, 3(5) ; Load callee result into R1
110 : LDC 2, 6(0) ; Callee frame size
111 : SUB 5, 5, 2 ; Pop callee frame
112 : ST 1, 3(5) ; Store function result into frame return slot
113 : LD 6, 0(5) ; Load return address
114 : LDA 7, 0(6) ; Return to caller
