.text
loop:
    #循环体
    slt		$s1, $0, $s0
    slt     $s2, $s0, 100 #第三位操作数可以是Imm16
    and     $s3, $s1, $s2
    bne     $s3, $0, loop
#2
loop1:
    #循环体
    blez $s0, loop_end
    slti  $s1, $s0, 100
    beq  $s1, $0, loop_end
    j loop
loop_end1:
