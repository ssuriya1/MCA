ORG 000H
UP: MOV p2, #09H
ACALL DELAY
mov P2, #06H
SJMP UP
DELAY: MOV R4, #18
H1: MOV R3, #255
H2: DJNZ R3, h1
DJNZ R4, h1
RET
END