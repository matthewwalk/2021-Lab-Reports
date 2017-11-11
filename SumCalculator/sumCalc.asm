;write program that calculates the sum of k, from
;k = n to 2n.

p5: DC "int"		;parameter p5 of type DC(string) holds "int"

ld x5,x0,p5 		;load p5 into temp register

ecall x10,x5,5 	;read input and store to x10 with prompt in x5 of type int

;now n = x10 = userInput
;calculate stopping value

addi x6,x0,2 		;add constant to mul with x10
mul x7,x10,x6		;perform mul and store in x7
addi x11,x0,0		;x11 = 0 = sum

;x10 = n
;x7 = 2n
;x11 = sum
;begin sol^n

BEGIN:
add x11,x11,x10 ;sum = sum + n
beq x10,x7,EXIT	;if n = 2n, stop
addi x10,x10,1  ;n++
beq x0,x0,BEGIN	;do again
EXIT:
add x1,x0,x11 	 ;store result in return address

ecall x0,x1,0   ;print result





