main:
	li $t0, -287
	li $t1, -287
	li $t2, 452
	li $t3, 452
	j  test1
test2:
	beq $t1, $t2, test3
	li $t4, 1
	beq $t2, $t3, exit
test3:
	li  $t4, -1
test1:
	beq $t0, $t1, test2
exit:
	li $t5, 1