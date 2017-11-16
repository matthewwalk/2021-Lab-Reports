;Store D,L,M,X
DD 12,3,11
s: DM 1; storage for result

;Immediately load values of YZC to register
addi x5,x0, 15
addi x6,x0, 6 
addi x7,x0,-5

;load values from memory into register
ld x8,x0,0
ld x9,x0,8
ld x10,x0,16
ld x11,x0,24

;Begin calculations in braces
add x12,x5,x10;(Y+M)
sub x13,x9,x8;(L-D)
add x14,x6,x7;(Z+C)

;Calculate secondary steps
sub x15,x12,x13
add x16,x15,x14
sub x17,x16,x8

;Store result in memory
sd x17,48(x1)

;X = (Y+M) - (L-D) + (Z+C) - D

