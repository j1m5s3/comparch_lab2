li $8, -1
li $9, 2
sltu $10, $9, $8 # $8 should overflow and therefore be greater than $9
