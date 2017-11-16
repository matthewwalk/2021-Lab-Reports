;define start point for memory storage
ORG 96

;Store variable values in the memory
DD 15,6,-5,12,3,11

;Create space for result of calculation (X)
s: DM 1

;create reference to memory
addi x1,x0,96;

;Load values from memory into register
ld x5,0(x1);  Y = 15
ld x6,8(x1);  Z =  6
ld x7,16(x1); C = -5
ld x8,24(x1); D=  12
ld x9,32(x1); L=   3
ld x10,40(x1);M=  11
ld x11,48(x1);X : loads empty space in memory

;Begin to calculate values in braces
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
