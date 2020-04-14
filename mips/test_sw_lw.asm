li $t4, 0x10000000
li $t0, -5
sw $t0, 0($t4)
addi $t4, $t4, 1
lw $t1, -1($t4)