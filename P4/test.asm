.data
.text
.globl main
main:
ori $t1, $0, 0x1234
ori $t2, $0, 0x5678
ori $t3, $0, 0x9abc
ori $t4, $0, 0def0
ori $t0, $0, 0x0
# ===== 计算类指令测试 =====
# ori test
ori $t5, $0, 0
sw $t5, 0($t0)
addi $t0, $t0, 4
ori $t5, $0, 1
sw $t5, 0($t0)
addi $t0, $t0, 4
ori $t5, $0, 2
sw $t5, 0($t0)
addi $t0, $t0, 4
ori $t5, $0, 3
sw $t5, 0($t0)
addi $t0, $t0, 4
ori $t5, $0, 65533
sw $t5, 0($t0)
addi $t0, $t0, 4
ori $t5, $0, 65534
sw $t5, 0($t0)
addi $t0, $t0, 4
ori $t5, $0, 65535
sw $t5, 0($t0)
addi $t0, $t0, 4
ori $t5, $0, 25779
sw $t5, 0($t0)
addi $t0, $t0, 4
ori $t5, $0, 42528
sw $t5, 0($t0)
addi $t0, $t0, 4
ori $0, $t1, 0xffff
sw $0, 0($t0)
addi $t0, $t0, 4
# lui test
lui $t6, 4660
sw $t6, 0($t0)
addi $t0, $t0, 4
ori $t6, $t6, 0x7890
sw $t6, 0($t0)
addi $t0, $t0, 4
lui $t6, 32768
sw $t6, 0($t0)
addi $t0, $t0, 4
ori $t6, $t6, 0x7890
sw $t6, 0($t0)
addi $t0, $t0, 4
lui $t6, 65535
sw $t6, 0($t0)
addi $t0, $t0, 4
ori $t6, $t6, 0x7890
sw $t6, 0($t0)
addi $t0, $t0, 4
lui $t6, -2
sw $t6, 0($t0)
addi $t0, $t0, 4
ori $t6, $t6, 0x7890
sw $t6, 0($t0)
addi $t0, $t0, 4
lui $t6, -1
sw $t6, 0($t0)
addi $t0, $t0, 4
ori $t6, $t6, 0x7890
sw $t6, 0($t0)
addi $t0, $t0, 4
lui $t6, 0
sw $t6, 0($t0)
addi $t0, $t0, 4
ori $t6, $t6, 0x7890
sw $t6, 0($t0)
addi $t0, $t0, 4
lui $t6, 1
sw $t6, 0($t0)
addi $t0, $t0, 4
ori $t6, $t6, 0x7890
sw $t6, 0($t0)
addi $t0, $t0, 4
lui $t6, 2
sw $t6, 0($t0)
addi $t0, $t0, 4
ori $t6, $t6, 0x7890
sw $t6, 0($t0)
addi $t0, $t0, 4
lui $t6, -32768
sw $t6, 0($t0)
addi $t0, $t0, 4
ori $t6, $t6, 0x7890
sw $t6, 0($t0)
addi $t0, $t0, 4
lui $t6, -32767
sw $t6, 0($t0)
addi $t0, $t0, 4
ori $t6, $t6, 0x7890
sw $t6, 0($t0)
addi $t0, $t0, 4
lui $t6, 32766
sw $t6, 0($t0)
addi $t0, $t0, 4
ori $t6, $t6, 0x7890
sw $t6, 0($t0)
addi $t0, $t0, 4
lui $t6, 32767
sw $t6, 0($t0)
addi $t0, $t0, 4
ori $t6, $t6, 0x7890
sw $t6, 0($t0)
addi $t0, $t0, 4
lui $t6, -5329
sw $t6, 0($t0)
addi $t0, $t0, 4
ori $t6, $t6, 0x7890
sw $t6, 0($t0)
addi $t0, $t0, 4
lui $t6, 25299
sw $t6, 0($t0)
addi $t0, $t0, 4
ori $t6, $t6, 0x7890
sw $t6, 0($t0)
addi $t0, $t0, 4
# add test
li $t7, 1
li $t8, 2
add $t9, $t7, $t8
sw $t9, 0($t0)
addi $t0, $t0, 4
li $t7, -1
li $t8, -2
add $t9, $t7, $t8
sw $t9, 0($t0)
addi $t0, $t0, 4
li $t7, 2147483647
li $t8, 1
add $t9, $t7, $t8
sw $t9, 0($t0)
addi $t0, $t0, 4
li $t7, -2147483648
li $t8, -1
add $t9, $t7, $t8
sw $t9, 0($t0)
addi $t0, $t0, 4
li $t7, -1000786109
li $t8, 1919156834
add $t9, $t7, $t8
sw $t9, 0($t0)
addi $t0, $t0, 4
# sub test
li $s0, 1
li $s1, 2
sub $s2, $s0, $s1
sw $s2, 0($t0)
addi $t0, $t0, 4
li $s0, -1
li $s1, -2
sub $s2, $s0, $s1
sw $s2, 0($t0)
addi $t0, $t0, 4
li $s0, 2147483647
li $s1, 1
sub $s2, $s0, $s1
sw $s2, 0($t0)
addi $t0, $t0, 4
li $s0, -2147483648
li $s1, -1
sub $s2, $s0, $s1
sw $s2, 0($t0)
addi $t0, $t0, 4
li $s0, -1000786109
li $s1, 1919156834
sub $s2, $s0, $s1
sw $s2, 0($t0)
addi $t0, $t0, 4
# 
===== 随机化 lw/sw 测试 =====
# 随机测试：base_reg=$19, base=0x1184, offset=-994, 地址=0xda2
li $19, 4484
li $9, 0xb413928d
sw $9, -994($19)
lw $29, -994($19)
sw $29, 0($t0)
addi $t0, $t0, 4
# 随机测试：base_reg=$16, base=0x1d05, offset=-1572, 地址=0x16e1
li $16, 7429
li $4, 0xd0a8defd
sw $4, -1572($16)
lw $0, -1572($16)
sw $0, 0($t0)
addi $t0, $t0, 4
# 随机测试：base_reg=$24, base=-0x540, offset=10977, 地址=0x25a1
li $24, -1344
li $15, 0xb95cdf40
sw $15, 10977($24)
lw $11, 10977($24)
sw $11, 0($t0)
addi $t0, $t0, 4
# 
===== 随机化 beq/j 测试 =====
# beq测试 0：$31=0x41555699, $13=0xdc1ca7c9，不等不跳转
li $31, 0x41555699
li $13, 0xdc1ca7c9
beq $31, $13, beq_target_0
li $4, 0x24e71c58
j beq_end_0
beq_target_0:
li $4, 0xfb2cc3cf
beq_end_0:
sw $4, 0($t0)
addi $t0, $t0, 4
# beq测试 1：$11=0x80838844, $19=0x80838844，相等跳转
li $11, 0x80838844
li $19, 0x80838844
beq $11, $19, beq_target_1
li $4, 0xf831b685
j beq_end_1
beq_target_1:
li $4, 0xde3a4a03
beq_end_1:
sw $4, 0($t0)
addi $t0, $t0, 4
# beq测试 2：$10=0x4ee80371, $29=0x36f4b3d1，不等不跳转
li $10, 0x4ee80371
li $29, 0x36f4b3d1
beq $10, $29, beq_target_2
li $20, 0xff6e0fa0
j beq_end_2
beq_target_2:
li $20, 0x4ee38017
beq_end_2:
sw $20, 0($t0)
addi $t0, $t0, 4
# beq测试 3：$20=0x67e50d25, $11=0x38a4261b，不等不跳转
li $20, 0x67e50d25
li $11, 0x38a4261b
beq $20, $11, beq_target_3
li $20, 0xd3206f19
j beq_end_3
beq_target_3:
li $20, 0x4f7d6af5
beq_end_3:
sw $20, 0($t0)
addi $t0, $t0, 4
# beq测试 4：$27=0x90d2eb6d, $1=0xe7ad76c7，不等不跳转
li $27, 0x90d2eb6d
li $1, 0xe7ad76c7
beq $27, $1, beq_target_4
li $29, 0x2e8f4fa2
j beq_end_4
beq_target_4:
li $29, 0x4f860c0f
beq_end_4:
sw $29, 0($t0)
addi $t0, $t0, 4
# j 0：向后跳转
j_target_0:
j j_target_0
li $23, 0xf9462b3b
li $23, 0x712c9c7
sw $23, 0($t0)
addi $t0, $t0, 4
# j 1：向前跳转
j j_target_1
li $4, 0xb0e3f40b
j_target_1:
li $4, 0x15b746b
sw $4, 0($t0)
addi $t0, $t0, 4
# j 2：向后跳转
j_target_2:
j j_target_2
li $21, 0x8dc46422
li $21, 0x1a5e9a94
sw $21, 0($t0)
addi $t0, $t0, 4
li $v0, 10
syscall