li $t0, 0x10000000
li $t1, 0xFFFFFFFF
li $t2, 0x000000eB
li $t3, 0x0000002B

sw $t1, 0($t0)
sb $t2, 0($t0)
sb $t3, 1($t0)
lb $t4, 1($t0)
lb $t5, 0($t0)
