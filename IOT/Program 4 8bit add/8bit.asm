ORG 00H
Mov p0, #0FFH
Mov p1, #0FFH
Mov p2, #00H
Mov p3, #00H
L1: Mov R1, #00H
Mov B,p0
Mov A,P1
CLR C 
Add A,B
JNC L2
INC R1
L2: Mov P2,P1
Mov P3,A
SJMP L1
END
