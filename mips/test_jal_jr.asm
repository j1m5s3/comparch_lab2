main:
	jal  myfunc
	addi $t0, $t0, 1
	j    exit
	
myfunc:
	li   $t0, 1
	jr   $ra

exit: