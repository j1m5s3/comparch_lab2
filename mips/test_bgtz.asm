li $t0, 42
j  goal
mybranch: j exit

goal: bgtz $t0, mybranch

exit: li $t1, -1