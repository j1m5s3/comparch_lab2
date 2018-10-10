li $t0, -5
li $t1, -5
li $t2, 0

start:
	bne $t0, $t1, start
	j   next
next2:
	li $t4, 1
	j exit
next:
	li $t3, 1
	bne $t1, $t2, next2
exit: