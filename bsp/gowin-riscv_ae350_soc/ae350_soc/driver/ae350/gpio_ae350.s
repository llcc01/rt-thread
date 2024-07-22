	.file	"gpio_ae350.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/lc/git/rt-thread/bsp/gowin-riscv_ae350_soc" "ae350_soc/driver/ae350/gpio_ae350.c"
	.section	.srodata.gpio_driver_version,"a"
	.align	2
	.type	gpio_driver_version, @object
	.size	gpio_driver_version, 4
gpio_driver_version:
	.half	514
	.half	521
	.section	.sbss.gpio_info,"aw",@nobits
	.align	2
	.type	gpio_info, @object
	.size	gpio_info, 4
gpio_info:
	.zero	4
	.section	.text.gpio_set_intr_mode,"ax",@progbits
	.align	1
	.type	gpio_set_intr_mode, @function
gpio_set_intr_mode:
.LFB15:
	.file 1 "ae350_soc/driver/ae350/gpio_ae350.c"
	.loc 1 36 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,44(sp)
	.cfi_offset 8, -4
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	.loc 1 39 9
	sw	zero,-20(s0)
	.loc 1 39 2
	j	.L2
.L7:
	.loc 1 41 19
	lw	a5,-20(s0)
	li	a4,1
	sll	a5,a4,a5
	mv	a4,a5
	.loc 1 41 12
	lw	a5,-40(s0)
	and	a5,a4,a5
	.loc 1 41 6
	beq	a5,zero,.L3
	.loc 1 43 7
	lw	a4,-20(s0)
	li	a5,7
	bgtu	a4,a5,.L4
	.loc 1 45 36
	li	a5,-261095424
	lw	a4,84(a5)
	.loc 1 45 61
	lw	a5,-20(s0)
	slli	a5,a5,2
	.loc 1 45 55
	li	a3,7
	sll	a5,a3,a5
	.loc 1 45 51
	not	a5,a5
	mv	a3,a5
	.loc 1 45 36
	li	a5,-261095424
	.loc 1 45 48
	and	a4,a4,a3
	sw	a4,84(a5)
	.loc 1 46 36
	li	a5,-261095424
	lw	a3,84(a5)
	.loc 1 46 68
	lw	a5,-20(s0)
	slli	a5,a5,2
	.loc 1 46 62
	lw	a4,-36(s0)
	sll	a4,a4,a5
	.loc 1 46 36
	li	a5,-261095424
	.loc 1 46 48
	or	a4,a3,a4
	sw	a4,84(a5)
	j	.L3
.L4:
	.loc 1 48 22
	lw	a5,-20(s0)
	sltiu	a5,a5,8
	seqz	a5,a5
	andi	a4,a5,0xff
	lw	a5,-20(s0)
	sltiu	a5,a5,16
	andi	a5,a5,0xff
	and	a5,a4,a5
	andi	a5,a5,0xff
	.loc 1 48 12
	beq	a5,zero,.L5
	.loc 1 50 36
	li	a5,-261095424
	lw	a4,88(a5)
	.loc 1 50 61
	lw	a5,-20(s0)
	addi	a5,a5,-8
	.loc 1 50 65
	slli	a5,a5,2
	.loc 1 50 55
	li	a3,7
	sll	a5,a3,a5
	.loc 1 50 51
	not	a5,a5
	mv	a3,a5
	.loc 1 50 36
	li	a5,-261095424
	.loc 1 50 48
	and	a4,a4,a3
	sw	a4,88(a5)
	.loc 1 51 36
	li	a5,-261095424
	lw	a3,88(a5)
	.loc 1 51 68
	lw	a5,-20(s0)
	addi	a5,a5,-8
	.loc 1 51 72
	slli	a5,a5,2
	.loc 1 51 62
	lw	a4,-36(s0)
	sll	a4,a4,a5
	.loc 1 51 36
	li	a5,-261095424
	.loc 1 51 48
	or	a4,a3,a4
	sw	a4,88(a5)
	j	.L3
.L5:
	.loc 1 53 23
	lw	a5,-20(s0)
	sltiu	a5,a5,16
	seqz	a5,a5
	andi	a4,a5,0xff
	lw	a5,-20(s0)
	sltiu	a5,a5,24
	andi	a5,a5,0xff
	and	a5,a4,a5
	andi	a5,a5,0xff
	.loc 1 53 12
	beq	a5,zero,.L6
	.loc 1 55 36
	li	a5,-261095424
	lw	a4,92(a5)
	.loc 1 55 61
	lw	a5,-20(s0)
	addi	a5,a5,-16
	.loc 1 55 66
	slli	a5,a5,2
	.loc 1 55 55
	li	a3,7
	sll	a5,a3,a5
	.loc 1 55 51
	not	a5,a5
	mv	a3,a5
	.loc 1 55 36
	li	a5,-261095424
	.loc 1 55 48
	and	a4,a4,a3
	sw	a4,92(a5)
	.loc 1 56 36
	li	a5,-261095424
	lw	a3,92(a5)
	.loc 1 56 68
	lw	a5,-20(s0)
	addi	a5,a5,-16
	.loc 1 56 73
	slli	a5,a5,2
	.loc 1 56 62
	lw	a4,-36(s0)
	sll	a4,a4,a5
	.loc 1 56 36
	li	a5,-261095424
	.loc 1 56 48
	or	a4,a3,a4
	sw	a4,92(a5)
	j	.L3
.L6:
	.loc 1 58 23
	lw	a5,-20(s0)
	sltiu	a5,a5,24
	seqz	a5,a5
	andi	a4,a5,0xff
	lw	a5,-20(s0)
	sltiu	a5,a5,32
	andi	a5,a5,0xff
	and	a5,a4,a5
	andi	a5,a5,0xff
	.loc 1 58 12
	beq	a5,zero,.L3
	.loc 1 60 36
	li	a5,-261095424
	lw	a4,96(a5)
	.loc 1 60 61
	lw	a5,-20(s0)
	addi	a5,a5,-24
	.loc 1 60 66
	slli	a5,a5,2
	.loc 1 60 55
	li	a3,7
	sll	a5,a3,a5
	.loc 1 60 51
	not	a5,a5
	mv	a3,a5
	.loc 1 60 36
	li	a5,-261095424
	.loc 1 60 48
	and	a4,a4,a3
	sw	a4,96(a5)
	.loc 1 61 36
	li	a5,-261095424
	lw	a3,96(a5)
	.loc 1 61 68
	lw	a5,-20(s0)
	addi	a5,a5,-24
	.loc 1 61 73
	slli	a5,a5,2
	.loc 1 61 62
	lw	a4,-36(s0)
	sll	a4,a4,a5
	.loc 1 61 36
	li	a5,-261095424
	.loc 1 61 48
	or	a4,a3,a4
	sw	a4,96(a5)
.L3:
	.loc 1 39 23 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L2:
	.loc 1 39 16 discriminator 1
	lw	a4,-20(s0)
	li	a5,31
	bleu	a4,a5,.L7
	.loc 1 65 1
	nop
	nop
	lw	s0,44(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE15:
	.size	gpio_set_intr_mode, .-gpio_set_intr_mode
	.section	.text.gpio_get_version,"ax",@progbits
	.align	1
	.globl	gpio_get_version
	.type	gpio_get_version, @function
gpio_get_version:
.LFB16:
	.loc 1 72 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 73 9
	li	a5,514
	sh	a5,-20(s0)
	li	a5,521
	sh	a5,-18(s0)
	.loc 1 73 9 is_stmt 0 discriminator 1
	li	a5,0
	lhu	a3,-20(s0)
	li	a4,65536
	addi	a4,a4,-1
	and	a4,a3,a4
	li	a3,-65536
	and	a5,a5,a3
	or	a5,a5,a4
	lhu	a4,-18(s0)
	slli	a4,a4,16
	li	a3,65536
	addi	a3,a3,-1
	and	a5,a5,a3
	or	a5,a5,a4
	.loc 1 74 1 is_stmt 1
	mv	a0,a5
	lw	s0,28(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE16:
	.size	gpio_get_version, .-gpio_get_version
	.section	.text.gpio_initialize,"ax",@progbits
	.align	1
	.globl	gpio_initialize
	.type	gpio_initialize, @function
gpio_initialize:
.LFB17:
	.loc 1 82 1
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	s0,76(sp)
	.cfi_offset 8, -4
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sw	a0,-68(s0)
	.loc 1 84 33
	li	a5,-261095424
	.loc 1 84 42
	sw	zero,80(a5)
	.loc 1 87 33
	li	a5,-261095424
	.loc 1 87 46
	li	a4,-1
	sw	a4,100(a5)
	li	a5,7
	sw	a5,-48(s0)
	li	a5,1
	sw	a5,-52(s0)
.LBB12:
.LBB13:
	.file 2 "ae350_soc/driver/ae350/../../../ae350_soc/driver/ae350/../../../ae350_soc/ae350/../../ae350_soc/ae350/../../ae350_soc/ae350/plic.h"
	.loc 2 68 75
	lw	a5,-48(s0)
	slli	a4,a5,2
	.loc 2 67 82
	li	a5,-469762048
	add	a5,a4,a5
	.loc 2 66 26
	sw	a5,-56(s0)
	.loc 2 70 17
	lw	a5,-56(s0)
	lw	a4,-52(s0)
	sw	a4,0(a5)
	.loc 2 71 1
	nop
	li	a5,7
	sw	a5,-28(s0)
.LBE13:
.LBE12:
.LBB14:
.LBB15:
.LBB16:
	.loc 2 84 50
 #APP
# 84 "ae350_soc/driver/ae350/../../../ae350_soc/driver/ae350/../../../ae350_soc/ae350/../../ae350_soc/ae350/../../ae350_soc/ae350/plic.h" 1
	csrr a5, 0xf14
# 0 "" 2
 #NO_APP
	sw	a5,-32(s0)
	.loc 2 84 100
	lw	a5,-32(s0)
.LBE16:
	.loc 2 84 16
	sw	a5,-36(s0)
	.loc 2 87 75
	lw	a5,-36(s0)
	slli	a4,a5,7
	.loc 2 88 75
	lw	a5,-28(s0)
	srli	a5,a5,5
	.loc 2 88 81
	slli	a5,a5,2
	.loc 2 87 81
	add	a4,a4,a5
	li	a5,-469753856
	add	a5,a4,a5
	.loc 2 85 26
	sw	a5,-40(s0)
	.loc 2 90 16
	lw	a5,-40(s0)
	lw	a5,0(a5)
	sw	a5,-44(s0)
	.loc 2 91 37
	lw	a5,-28(s0)
	andi	a5,a5,31
	.loc 2 91 26
	li	a4,1
	sll	a5,a4,a5
	mv	a4,a5
	.loc 2 91 11
	lw	a5,-44(s0)
	or	a5,a5,a4
	sw	a5,-44(s0)
	.loc 2 92 16
	lw	a5,-40(s0)
	lw	a4,-44(s0)
	sw	a4,0(a5)
	.loc 2 93 1
	nop
.LBE15:
.LBE14:
.LBB17:
	.loc 1 96 26
	li	a5,4096
	addi	a5,a5,-2048
 #APP
# 96 "ae350_soc/driver/ae350/gpio_ae350.c" 1
	csrrs a5, 0x304, a5
# 0 "" 2
 #NO_APP
	sw	a5,-20(s0)
.LBE17:
.LBB18:
	.loc 1 99 26
 #APP
# 99 "ae350_soc/driver/ae350/gpio_ae350.c" 1
	csrrs a5, 0x300, 8
# 0 "" 2
 #NO_APP
	sw	a5,-24(s0)
.LBE18:
	.loc 1 102 21
	lla	a5,gpio_info
	lw	a4,-68(s0)
	sw	a4,0(a5)
	.loc 1 104 9
	li	a5,0
	.loc 1 105 1
	mv	a0,a5
	lw	s0,76(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE17:
	.size	gpio_initialize, .-gpio_initialize
	.section	.text.gpio_uninitialize,"ax",@progbits
	.align	1
	.globl	gpio_uninitialize
	.type	gpio_uninitialize, @function
gpio_uninitialize:
.LFB18:
	.loc 1 112 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,44(sp)
	.cfi_offset 8, -4
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	.loc 1 114 33
	li	a5,-261095424
	.loc 1 114 42
	sw	zero,80(a5)
	.loc 1 117 33
	li	a5,-261095424
	.loc 1 117 46
	li	a4,-1
	sw	a4,100(a5)
	li	a5,7
	sw	a5,-20(s0)
.LBB19:
.LBB20:
.LBB21:
	.loc 2 97 50
 #APP
# 97 "ae350_soc/driver/ae350/../../../ae350_soc/driver/ae350/../../../ae350_soc/ae350/../../ae350_soc/ae350/../../ae350_soc/ae350/plic.h" 1
	csrr a5, 0xf14
# 0 "" 2
 #NO_APP
	sw	a5,-24(s0)
	.loc 2 97 100
	lw	a5,-24(s0)
.LBE21:
	.loc 2 97 16
	sw	a5,-28(s0)
	.loc 2 100 75
	lw	a5,-28(s0)
	slli	a4,a5,7
	.loc 2 101 75
	lw	a5,-20(s0)
	srli	a5,a5,5
	.loc 2 101 81
	slli	a5,a5,2
	.loc 2 100 81
	add	a4,a4,a5
	li	a5,-469753856
	add	a5,a4,a5
	.loc 2 98 26
	sw	a5,-32(s0)
	.loc 2 103 16
	lw	a5,-32(s0)
	lw	a5,0(a5)
	sw	a5,-36(s0)
	.loc 2 104 39
	lw	a5,-20(s0)
	andi	a5,a5,31
	.loc 2 104 28
	li	a4,1
	sll	a5,a4,a5
	.loc 2 104 23
	not	a5,a5
	mv	a4,a5
	.loc 2 104 11
	lw	a5,-36(s0)
	and	a5,a5,a4
	sw	a5,-36(s0)
	.loc 2 105 16
	lw	a5,-32(s0)
	lw	a4,-36(s0)
	sw	a4,0(a5)
	.loc 2 106 1
	nop
.LBE20:
.LBE19:
	.loc 1 122 21
	lla	a5,gpio_info
	sw	zero,0(a5)
	.loc 1 124 9
	li	a5,0
	.loc 1 125 1
	mv	a0,a5
	lw	s0,44(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE18:
	.size	gpio_uninitialize, .-gpio_uninitialize
	.section	.text.gpio_pinwrite,"ax",@progbits
	.align	1
	.globl	gpio_pinwrite
	.type	gpio_pinwrite, @function
gpio_pinwrite:
.LFB19:
	.loc 1 133 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	.loc 1 134 68
	lw	a5,-24(s0)
	beq	a5,zero,.L15
	.loc 1 134 40 discriminator 1
	li	a5,-261095424
	.loc 1 134 56 discriminator 1
	lw	a4,-20(s0)
	li	a3,1
	sll	a4,a3,a4
	.loc 1 134 50 discriminator 1
	sw	a4,48(a5)
	.loc 1 135 1
	j	.L17
.L15:
	.loc 1 134 102 discriminator 2
	li	a5,-261095424
	.loc 1 134 121 discriminator 2
	lw	a4,-20(s0)
	li	a3,1
	sll	a4,a3,a4
	.loc 1 134 114 discriminator 2
	sw	a4,44(a5)
.L17:
	.loc 1 135 1
	nop
	lw	s0,28(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE19:
	.size	gpio_pinwrite, .-gpio_pinwrite
	.section	.text.gpio_pinread,"ax",@progbits
	.align	1
	.globl	gpio_pinread
	.type	gpio_pinread, @function
gpio_pinread:
.LFB20:
	.loc 1 143 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	.loc 1 144 42
	li	a5,-261095424
	lw	a4,32(a5)
	.loc 1 144 71
	lw	a5,-20(s0)
	srl	a5,a4,a5
	andi	a5,a5,1
	.loc 1 144 77
	snez	a5,a5
	andi	a5,a5,0xff
	.loc 1 145 1
	mv	a0,a5
	lw	s0,28(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE20:
	.size	gpio_pinread, .-gpio_pinread
	.section	.text.gpio_write,"ax",@progbits
	.align	1
	.globl	gpio_write
	.type	gpio_write, @function
gpio_write:
.LFB21:
	.loc 1 153 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	.loc 1 154 58
	lw	a5,-24(s0)
	beq	a5,zero,.L21
	.loc 1 154 40 discriminator 1
	li	a5,-261095424
	.loc 1 154 50 discriminator 1
	lw	a4,-20(s0)
	sw	a4,48(a5)
	.loc 1 155 1
	j	.L23
.L21:
	.loc 1 154 92 discriminator 2
	li	a5,-261095424
	.loc 1 154 104 discriminator 2
	lw	a4,-20(s0)
	sw	a4,44(a5)
.L23:
	.loc 1 155 1
	nop
	lw	s0,28(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE21:
	.size	gpio_write, .-gpio_write
	.section	.text.gpio_read,"ax",@progbits
	.align	1
	.globl	gpio_read
	.type	gpio_read, @function
gpio_read:
.LFB22:
	.loc 1 162 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 163 41
	li	a5,-261095424
	lw	a5,32(a5)
	.loc 1 164 1
	mv	a0,a5
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE22:
	.size	gpio_read, .-gpio_read
	.section	.text.gpio_setdir,"ax",@progbits
	.align	1
	.globl	gpio_setdir
	.type	gpio_setdir, @function
gpio_setdir:
.LFB23:
	.loc 1 172 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	.loc 1 173 62
	lw	a5,-24(s0)
	beq	a5,zero,.L27
	.loc 1 173 40 discriminator 1
	li	a5,-261095424
	lw	a3,40(a5)
	li	a5,-261095424
	.loc 1 173 53 discriminator 1
	lw	a4,-20(s0)
	or	a4,a3,a4
	sw	a4,40(a5)
	.loc 1 174 1
	j	.L29
.L27:
	.loc 1 173 96 discriminator 2
	li	a5,-261095424
	lw	a3,40(a5)
	.loc 1 173 112 discriminator 2
	lw	a5,-20(s0)
	not	a4,a5
	.loc 1 173 96 discriminator 2
	li	a5,-261095424
	.loc 1 173 109 discriminator 2
	and	a4,a3,a4
	sw	a4,40(a5)
.L29:
	.loc 1 174 1
	nop
	lw	s0,28(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE23:
	.size	gpio_setdir, .-gpio_setdir
	.section	.text.gpio_control,"ax",@progbits
	.align	1
	.globl	gpio_control
	.type	gpio_control, @function
gpio_control:
.LFB24:
	.loc 1 185 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	.loc 1 188 11
	lw	a5,-20(s0)
	andi	a5,a5,8
	.loc 1 188 5
	beq	a5,zero,.L31
	.loc 1 190 3
	lw	a1,-24(s0)
	li	a0,2
	call	gpio_set_intr_mode
	j	.L32
.L31:
	.loc 1 192 16
	lw	a5,-20(s0)
	andi	a5,a5,4
	.loc 1 192 10
	beq	a5,zero,.L33
	.loc 1 194 3
	lw	a1,-24(s0)
	li	a0,3
	call	gpio_set_intr_mode
	j	.L32
.L33:
	.loc 1 196 16
	lw	a5,-20(s0)
	andi	a5,a5,16
	.loc 1 196 10
	beq	a5,zero,.L34
	.loc 1 198 3
	lw	a1,-24(s0)
	li	a0,5
	call	gpio_set_intr_mode
	j	.L32
.L34:
	.loc 1 200 16
	lw	a5,-20(s0)
	andi	a5,a5,32
	.loc 1 200 10
	beq	a5,zero,.L35
	.loc 1 202 3
	lw	a1,-24(s0)
	li	a0,6
	call	gpio_set_intr_mode
	j	.L32
.L35:
	.loc 1 204 16
	lw	a5,-20(s0)
	andi	a5,a5,64
	.loc 1 204 10
	beq	a5,zero,.L32
	.loc 1 206 3
	lw	a1,-24(s0)
	li	a0,7
	call	gpio_set_intr_mode
.L32:
	.loc 1 210 11
	lw	a5,-20(s0)
	andi	a5,a5,2
	.loc 1 210 5
	beq	a5,zero,.L36
	.loc 1 212 34
	li	a5,-261095424
	lw	a3,80(a5)
	.loc 1 212 46
	lw	a5,-24(s0)
	not	a4,a5
	.loc 1 212 34
	li	a5,-261095424
	.loc 1 212 43
	and	a4,a3,a4
	sw	a4,80(a5)
	j	.L37
.L36:
	.loc 1 214 16
	lw	a5,-20(s0)
	andi	a5,a5,1
	.loc 1 214 10
	beq	a5,zero,.L37
	.loc 1 216 34
	li	a5,-261095424
	lw	a3,80(a5)
	li	a5,-261095424
	.loc 1 216 43
	lw	a4,-24(s0)
	or	a4,a3,a4
	sw	a4,80(a5)
.L37:
	.loc 1 220 11
	lw	a5,-20(s0)
	andi	a5,a5,128
	.loc 1 220 5
	beq	a5,zero,.L38
	.loc 1 222 34
	li	a5,-261095424
	lw	a3,100(a5)
	li	a5,-261095424
	.loc 1 222 47
	lw	a4,-24(s0)
	or	a4,a3,a4
	sw	a4,100(a5)
.L38:
	.loc 1 228 11
	lw	a5,-20(s0)
	andi	a5,a5,512
	.loc 1 228 5
	beq	a5,zero,.L39
	.loc 1 230 34
	li	a5,-261095424
	lw	a3,64(a5)
	.loc 1 230 46
	lw	a5,-24(s0)
	not	a4,a5
	.loc 1 230 34
	li	a5,-261095424
	.loc 1 230 43
	and	a4,a3,a4
	sw	a4,64(a5)
	j	.L40
.L39:
	.loc 1 232 16
	lw	a5,-20(s0)
	andi	a5,a5,256
	.loc 1 232 10
	beq	a5,zero,.L40
	.loc 1 234 34
	li	a5,-261095424
	lw	a3,64(a5)
	li	a5,-261095424
	.loc 1 234 43
	lw	a4,-24(s0)
	or	a4,a3,a4
	sw	a4,64(a5)
.L40:
	.loc 1 238 11
	lw	a5,-20(s0)
	andi	a5,a5,1024
	.loc 1 238 5
	beq	a5,zero,.L41
	.loc 1 240 34
	li	a5,-261095424
	lw	a3,68(a5)
	.loc 1 240 48
	lw	a5,-24(s0)
	not	a4,a5
	.loc 1 240 34
	li	a5,-261095424
	.loc 1 240 45
	and	a4,a3,a4
	sw	a4,68(a5)
	j	.L42
.L41:
	.loc 1 242 16
	lw	a4,-20(s0)
	li	a5,4096
	addi	a5,a5,-2048
	and	a5,a4,a5
	.loc 1 242 10
	beq	a5,zero,.L42
	.loc 1 244 34
	li	a5,-261095424
	lw	a3,68(a5)
	li	a5,-261095424
	.loc 1 244 45
	lw	a4,-24(s0)
	or	a4,a3,a4
	sw	a4,68(a5)
.L42:
	.loc 1 250 11
	lw	a4,-20(s0)
	li	a5,8192
	and	a5,a4,a5
	.loc 1 250 5
	beq	a5,zero,.L43
	.loc 1 252 34
	li	a5,-261095424
	lw	a3,112(a5)
	.loc 1 252 50
	lw	a5,-24(s0)
	not	a4,a5
	.loc 1 252 34
	li	a5,-261095424
	.loc 1 252 47
	and	a4,a3,a4
	sw	a4,112(a5)
	j	.L44
.L43:
	.loc 1 254 16
	lw	a4,-20(s0)
	li	a5,4096
	and	a5,a4,a5
	.loc 1 254 10
	beq	a5,zero,.L44
	.loc 1 256 34
	li	a5,-261095424
	lw	a3,112(a5)
	li	a5,-261095424
	.loc 1 256 47
	lw	a4,-24(s0)
	or	a4,a3,a4
	sw	a4,112(a5)
.L44:
	.loc 1 260 11
	lw	a4,-20(s0)
	li	a5,16384
	and	a5,a4,a5
	.loc 1 260 5
	beq	a5,zero,.L45
	.loc 1 262 34
	li	a5,-261095424
	lw	a3,116(a5)
	li	a5,-261095424
	.loc 1 262 49
	li	a4,-2147483648
	addi	a4,a4,-1
	and	a4,a3,a4
	sw	a4,116(a5)
	.loc 1 264 34
	li	a5,-261095424
	lw	a3,116(a5)
	.loc 1 264 68
	lw	a5,-28(s0)
	slli	a4,a5,31
	.loc 1 264 34
	li	a5,-261095424
	.loc 1 264 49
	or	a4,a3,a4
	sw	a4,116(a5)
.L45:
	.loc 1 268 11
	lw	a4,-20(s0)
	li	a5,32768
	and	a5,a4,a5
	.loc 1 268 5
	beq	a5,zero,.L46
	.loc 1 270 34
	li	a5,-261095424
	lw	a4,116(a5)
	li	a5,-261095424
	.loc 1 270 49
	andi	a4,a4,-256
	sw	a4,116(a5)
	.loc 1 271 34
	li	a5,-261095424
	lw	a3,116(a5)
	.loc 1 271 59
	lw	a5,-32(s0)
	andi	a4,a5,255
	.loc 1 271 34
	li	a5,-261095424
	.loc 1 271 49
	or	a4,a3,a4
	sw	a4,116(a5)
.L46:
	.loc 1 274 9
	li	a5,0
	.loc 1 275 1
	mv	a0,a5
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE24:
	.size	gpio_control, .-gpio_control
	.section	.text.gpio_get_status,"ax",@progbits
	.align	1
	.globl	gpio_get_status
	.type	gpio_get_status, @function
gpio_get_status:
.LFB25:
	.loc 1 283 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,44(sp)
	.cfi_offset 8, -4
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	.loc 1 284 52
	li	a5,-261095424
	.loc 1 284 11
	lw	a5,16(a5)
	sw	a5,-20(s0)
	.loc 1 287 46
	lw	a5,-20(s0)
	srli	a5,a5,31
	andi	a5,a5,1
	andi	a4,a5,0xff
	.loc 1 287 21
	lw	a5,-36(s0)
	andi	a4,a4,1
	lhu	a3,0(a5)
	andi	a3,a3,-2
	or	a4,a3,a4
	sh	a4,0(a5)
	.loc 1 290 46
	lw	a5,-20(s0)
	srli	a5,a5,30
	andi	a5,a5,1
	andi	a4,a5,0xff
	.loc 1 290 21
	lw	a5,-36(s0)
	andi	a4,a4,1
	slli	a4,a4,1
	lhu	a3,0(a5)
	andi	a3,a3,-3
	or	a4,a3,a4
	sh	a4,0(a5)
	.loc 1 293 50
	lw	a5,-20(s0)
	srli	a5,a5,29
	andi	a5,a5,1
	andi	a4,a5,0xff
	.loc 1 293 25
	lw	a5,-36(s0)
	andi	a4,a4,1
	slli	a4,a4,2
	lhu	a3,0(a5)
	andi	a3,a3,-5
	or	a4,a3,a4
	sh	a4,0(a5)
	.loc 1 296 34
	lw	a5,-20(s0)
	andi	a5,a5,63
	andi	a4,a5,0xff
	.loc 1 296 24
	lw	a5,-36(s0)
	andi	a4,a4,63
	slli	a4,a4,3
	lhu	a3,0(a5)
	andi	a3,a3,-505
	or	a4,a3,a4
	sh	a4,0(a5)
	.loc 1 298 9
	li	a5,0
	.loc 1 299 1
	mv	a0,a5
	lw	s0,44(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE25:
	.size	gpio_get_status, .-gpio_get_status
	.section	.text.gpio_irq_handler,"ax",@progbits
	.align	1
	.globl	gpio_irq_handler
	.type	gpio_irq_handler, @function
gpio_irq_handler:
.LFB26:
	.loc 1 305 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 310 42
	li	a5,-261095424
	.loc 1 310 9
	lw	a5,100(a5)
	sw	a5,-24(s0)
	.loc 1 313 33
	li	a5,-261095424
	.loc 1 313 46
	lw	a4,-24(s0)
	sw	a4,100(a5)
	.loc 1 315 9
	sw	zero,-20(s0)
	.loc 1 315 2
	j	.L51
.L53:
	.loc 1 318 21
	lw	a5,-20(s0)
	li	a4,1
	sll	a5,a4,a5
	mv	a4,a5
	.loc 1 318 14
	lw	a5,-24(s0)
	and	a5,a4,a5
	.loc 1 318 6
	beq	a5,zero,.L52
	.loc 1 320 13
	lla	a5,gpio_info
	lw	a5,0(a5)
	.loc 1 320 4
	lw	a4,-20(s0)
	li	a3,1
	sll	a4,a3,a4
	mv	a0,a4
	jalr	a5
.LVL0:
.L52:
	.loc 1 315 23 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L51:
	.loc 1 315 16 discriminator 1
	lw	a4,-20(s0)
	li	a5,31
	bleu	a4,a5,.L53
	.loc 1 323 1
	nop
	nop
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE26:
	.size	gpio_irq_handler, .-gpio_irq_handler
	.globl	Driver_GPIO
	.section	.rodata.Driver_GPIO,"a"
	.align	2
	.type	Driver_GPIO, @object
	.size	Driver_GPIO, 40
Driver_GPIO:
	.word	gpio_get_version
	.word	gpio_initialize
	.word	gpio_uninitialize
	.word	gpio_pinwrite
	.word	gpio_pinread
	.word	gpio_write
	.word	gpio_read
	.word	gpio_setdir
	.word	gpio_control
	.word	gpio_get_status
	.text
.Letext0:
	.file 3 "/home/lc/tools/riscv32-unknown-elf/lib/gcc/riscv32-unknown-elf/13.2.0/include/stdint-gcc.h"
	.file 4 "ae350_soc/driver/ae350/../../../ae350_soc/driver/ae350/../../../ae350_soc/driver/include/../../../ae350_soc/driver/include/Driver_Common.h"
	.file 5 "ae350_soc/driver/ae350/../../../ae350_soc/driver/ae350/../../../ae350_soc/driver/include/Driver_GPIO.h"
	.file 6 "ae350_soc/driver/ae350/../../../ae350_soc/driver/ae350/../../../ae350_soc/ae350/../../ae350_soc/ae350/ae350.h"
	.file 7 "ae350_soc/driver/ae350/../../../ae350_soc/driver/ae350/gpio_ae350.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x81c
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x21
	.4byte	.LASF1281
	.byte	0x1d
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x22
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1190
	.uleb128 0x23
	.4byte	0x31
	.uleb128 0xf
	.4byte	0x38
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.4byte	.LASF1191
	.uleb128 0x6
	.byte	0x10
	.byte	0x4
	.4byte	.LASF1192
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1193
	.uleb128 0x6
	.byte	0x2
	.byte	0x5
	.4byte	.LASF1194
	.uleb128 0x7
	.4byte	.LASF1196
	.byte	0x3
	.byte	0x28
	.byte	0x12
	.4byte	0x6a
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.4byte	.LASF1195
	.uleb128 0x7
	.4byte	.LASF1197
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x7d
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1198
	.uleb128 0x7
	.4byte	.LASF1199
	.byte	0x3
	.byte	0x31
	.byte	0x1c
	.4byte	0x90
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1200
	.uleb128 0x7
	.4byte	.LASF1201
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0xa3
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1202
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.4byte	.LASF1203
	.uleb128 0x10
	.4byte	.LASF1211
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.4byte	0xd8
	.uleb128 0x11
	.string	"api"
	.byte	0x4
	.byte	0x1e
	.byte	0xb
	.4byte	0x84
	.byte	0
	.uleb128 0x11
	.string	"drv"
	.byte	0x4
	.byte	0x1f
	.byte	0xb
	.4byte	0x84
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.4byte	.LASF1204
	.byte	0x4
	.byte	0x20
	.byte	0x3
	.4byte	0xb1
	.uleb128 0xf
	.4byte	0xd8
	.uleb128 0x17
	.byte	0x4
	.byte	0x5
	.byte	0x5b
	.4byte	0x122
	.uleb128 0xa
	.4byte	.LASF1205
	.byte	0x5d
	.4byte	0x97
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.4byte	.LASF1206
	.byte	0x5e
	.4byte	0x97
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF1207
	.byte	0x5f
	.4byte	0x97
	.byte	0x1
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF1208
	.byte	0x60
	.4byte	0x97
	.byte	0x6
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.4byte	.LASF1209
	.byte	0x5
	.byte	0x61
	.byte	0x3
	.4byte	0xe9
	.uleb128 0x7
	.4byte	.LASF1210
	.byte	0x5
	.byte	0x65
	.byte	0x10
	.4byte	0x13a
	.uleb128 0x3
	.4byte	0x13f
	.uleb128 0x12
	.4byte	0x14a
	.uleb128 0x4
	.4byte	0x97
	.byte	0
	.uleb128 0x10
	.4byte	.LASF1212
	.byte	0x28
	.byte	0x5
	.byte	0x69
	.4byte	0x1d9
	.uleb128 0x2
	.4byte	.LASF1213
	.byte	0x5
	.byte	0x6b
	.byte	0x19
	.4byte	0x1e3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF1214
	.byte	0x5
	.byte	0x6c
	.byte	0xc
	.4byte	0x1f7
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF1215
	.byte	0x5
	.byte	0x6d
	.byte	0xc
	.4byte	0x201
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF1216
	.byte	0x5
	.byte	0x6e
	.byte	0xc
	.4byte	0x216
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF1217
	.byte	0x5
	.byte	0x6f
	.byte	0xc
	.4byte	0x22a
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF1218
	.byte	0x5
	.byte	0x70
	.byte	0x9
	.4byte	0x23f
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF1219
	.byte	0x5
	.byte	0x71
	.byte	0xd
	.4byte	0x249
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF1220
	.byte	0x5
	.byte	0x72
	.byte	0x9
	.4byte	0x216
	.byte	0x1c
	.uleb128 0x2
	.4byte	.LASF1221
	.byte	0x5
	.byte	0x73
	.byte	0xc
	.4byte	0x26c
	.byte	0x20
	.uleb128 0x2
	.4byte	.LASF1222
	.byte	0x5
	.byte	0x74
	.byte	0xc
	.4byte	0x285
	.byte	0x24
	.byte	0
	.uleb128 0xf
	.4byte	0x14a
	.uleb128 0x13
	.4byte	0xd8
	.uleb128 0x3
	.4byte	0x1de
	.uleb128 0xb
	.4byte	0x5e
	.4byte	0x1f7
	.uleb128 0x4
	.4byte	0x12e
	.byte	0
	.uleb128 0x3
	.4byte	0x1e8
	.uleb128 0x13
	.4byte	0x5e
	.uleb128 0x3
	.4byte	0x1fc
	.uleb128 0x12
	.4byte	0x216
	.uleb128 0x4
	.4byte	0x97
	.uleb128 0x4
	.4byte	0x5e
	.byte	0
	.uleb128 0x3
	.4byte	0x206
	.uleb128 0xb
	.4byte	0x71
	.4byte	0x22a
	.uleb128 0x4
	.4byte	0x97
	.byte	0
	.uleb128 0x3
	.4byte	0x21b
	.uleb128 0x12
	.4byte	0x23f
	.uleb128 0x4
	.4byte	0x97
	.uleb128 0x4
	.4byte	0x97
	.byte	0
	.uleb128 0x3
	.4byte	0x22f
	.uleb128 0x13
	.4byte	0x97
	.uleb128 0x3
	.4byte	0x244
	.uleb128 0xb
	.4byte	0x5e
	.4byte	0x26c
	.uleb128 0x4
	.4byte	0x97
	.uleb128 0x4
	.4byte	0x97
	.uleb128 0x4
	.4byte	0x97
	.uleb128 0x4
	.4byte	0x97
	.byte	0
	.uleb128 0x3
	.4byte	0x24e
	.uleb128 0xb
	.4byte	0x5e
	.4byte	0x280
	.uleb128 0x4
	.4byte	0x280
	.byte	0
	.uleb128 0x3
	.4byte	0x122
	.uleb128 0x3
	.4byte	0x271
	.uleb128 0x7
	.4byte	.LASF1223
	.byte	0x5
	.byte	0x75
	.byte	0x9
	.4byte	0x1d9
	.uleb128 0x18
	.4byte	0x31
	.4byte	0x2a6
	.uleb128 0x19
	.4byte	0x31
	.byte	0x2
	.byte	0
	.uleb128 0x18
	.4byte	0x31
	.4byte	0x2b6
	.uleb128 0x19
	.4byte	0x31
	.byte	0x1
	.byte	0
	.uleb128 0x17
	.byte	0x80
	.byte	0x6
	.byte	0xfa
	.4byte	0x3ea
	.uleb128 0x2
	.4byte	.LASF1224
	.byte	0x6
	.byte	0xfc
	.byte	0x1e
	.4byte	0x3d
	.byte	0
	.uleb128 0x2
	.4byte	.LASF1225
	.byte	0x6
	.byte	0xfd
	.byte	0x14
	.4byte	0x296
	.byte	0x4
	.uleb128 0x11
	.string	"CFG"
	.byte	0x6
	.byte	0xfe
	.byte	0x1e
	.4byte	0x3d
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF1226
	.byte	0x6
	.byte	0xff
	.byte	0x14
	.4byte	0x296
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF1227
	.2byte	0x100
	.byte	0x1e
	.4byte	0x3d
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF1228
	.2byte	0x101
	.byte	0x18
	.4byte	0x38
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF1229
	.2byte	0x102
	.byte	0x18
	.4byte	0x38
	.byte	0x28
	.uleb128 0x1
	.4byte	.LASF1230
	.2byte	0x103
	.byte	0x18
	.4byte	0x38
	.byte	0x2c
	.uleb128 0x1
	.4byte	.LASF1231
	.2byte	0x104
	.byte	0x18
	.4byte	0x38
	.byte	0x30
	.uleb128 0x1
	.4byte	.LASF1232
	.2byte	0x105
	.byte	0x14
	.4byte	0x296
	.byte	0x34
	.uleb128 0x1
	.4byte	.LASF1233
	.2byte	0x106
	.byte	0x18
	.4byte	0x38
	.byte	0x40
	.uleb128 0x1
	.4byte	.LASF1234
	.2byte	0x107
	.byte	0x18
	.4byte	0x38
	.byte	0x44
	.uleb128 0x1
	.4byte	.LASF1235
	.2byte	0x108
	.byte	0x14
	.4byte	0x2a6
	.byte	0x48
	.uleb128 0x1
	.4byte	.LASF1236
	.2byte	0x109
	.byte	0x18
	.4byte	0x38
	.byte	0x50
	.uleb128 0x1
	.4byte	.LASF1237
	.2byte	0x10a
	.byte	0x18
	.4byte	0x38
	.byte	0x54
	.uleb128 0x1
	.4byte	.LASF1238
	.2byte	0x10b
	.byte	0x18
	.4byte	0x38
	.byte	0x58
	.uleb128 0x1
	.4byte	.LASF1239
	.2byte	0x10c
	.byte	0x18
	.4byte	0x38
	.byte	0x5c
	.uleb128 0x1
	.4byte	.LASF1240
	.2byte	0x10d
	.byte	0x18
	.4byte	0x38
	.byte	0x60
	.uleb128 0x1
	.4byte	.LASF1241
	.2byte	0x10e
	.byte	0x18
	.4byte	0x38
	.byte	0x64
	.uleb128 0x1
	.4byte	.LASF1242
	.2byte	0x10f
	.byte	0x17
	.4byte	0x2a6
	.byte	0x68
	.uleb128 0x1
	.4byte	.LASF1243
	.2byte	0x110
	.byte	0x18
	.4byte	0x38
	.byte	0x70
	.uleb128 0x1
	.4byte	.LASF1244
	.2byte	0x111
	.byte	0x18
	.4byte	0x38
	.byte	0x74
	.uleb128 0x1
	.4byte	.LASF1245
	.2byte	0x112
	.byte	0x14
	.4byte	0x2a6
	.byte	0x78
	.byte	0
	.uleb128 0x24
	.4byte	.LASF1246
	.byte	0x6
	.2byte	0x113
	.byte	0x3
	.4byte	0x2b6
	.uleb128 0x10
	.4byte	.LASF1247
	.byte	0x4
	.byte	0x7
	.byte	0x22
	.4byte	0x411
	.uleb128 0x2
	.4byte	.LASF1248
	.byte	0x7
	.byte	0x24
	.byte	0x1b
	.4byte	0x12e
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	.LASF1249
	.byte	0x7
	.byte	0x25
	.byte	0x3
	.4byte	0x3f7
	.uleb128 0xc
	.4byte	.LASF1250
	.byte	0x17
	.byte	0x23
	.4byte	0xe4
	.uleb128 0x5
	.byte	0x3
	.4byte	gpio_driver_version
	.uleb128 0xc
	.4byte	.LASF1251
	.byte	0x19
	.byte	0x12
	.4byte	0x411
	.uleb128 0x5
	.byte	0x3
	.4byte	gpio_info
	.uleb128 0x25
	.4byte	.LASF1282
	.byte	0x1
	.2byte	0x147
	.byte	0x13
	.4byte	0x28a
	.uleb128 0x5
	.byte	0x3
	.4byte	Driver_GPIO
	.uleb128 0x26
	.4byte	.LASF1261
	.byte	0x1
	.2byte	0x130
	.byte	0x6
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x486
	.uleb128 0x1a
	.4byte	.LASF1252
	.2byte	0x133
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.2byte	0x134
	.byte	0xb
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x28
	.4byte	.LASF1254
	.byte	0x1
	.2byte	0x11a
	.byte	0x9
	.4byte	0x5e
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4c0
	.uleb128 0x29
	.4byte	.LASF1256
	.byte	0x1
	.2byte	0x11a
	.byte	0x2b
	.4byte	0x280
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1a
	.4byte	.LASF1253
	.2byte	0x11c
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF1255
	.byte	0x1
	.byte	0xb8
	.byte	0x9
	.4byte	0x5e
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x513
	.uleb128 0x5
	.4byte	.LASF1257
	.byte	0xb8
	.byte	0x1f
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF1258
	.byte	0xb8
	.byte	0x2e
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.4byte	.LASF1259
	.byte	0xb8
	.byte	0x3d
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.4byte	.LASF1260
	.byte	0xb8
	.byte	0x4e
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x14
	.4byte	.LASF1262
	.byte	0xab
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x544
	.uleb128 0x5
	.4byte	.LASF1258
	.byte	0xab
	.byte	0x1b
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.string	"dir"
	.byte	0xab
	.byte	0x29
	.4byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF1270
	.byte	0xa1
	.byte	0xa
	.4byte	0x97
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x14
	.4byte	.LASF1263
	.byte	0x98
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x58a
	.uleb128 0x5
	.4byte	.LASF1258
	.byte	0x98
	.byte	0x1a
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.string	"val"
	.byte	0x98
	.byte	0x29
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x16
	.4byte	.LASF1264
	.byte	0x8e
	.4byte	0x71
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5b1
	.uleb128 0x5
	.4byte	.LASF1265
	.byte	0x8e
	.byte	0x1f
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x14
	.4byte	.LASF1266
	.byte	0x84
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5e2
	.uleb128 0x5
	.4byte	.LASF1265
	.byte	0x84
	.byte	0x1d
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.string	"val"
	.byte	0x84
	.byte	0x2e
	.4byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x16
	.4byte	.LASF1267
	.byte	0x6f
	.4byte	0x5e
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x640
	.uleb128 0x1c
	.4byte	0x767
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.byte	0x78
	.uleb128 0xd
	.4byte	0x771
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	0x77c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x8
	.4byte	0x787
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x8
	.4byte	0x792
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1d
	.4byte	0x79d
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.uleb128 0x8
	.4byte	0x79e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF1268
	.byte	0x51
	.4byte	0x5e
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x712
	.uleb128 0x5
	.4byte	.LASF1248
	.byte	0x51
	.byte	0x32
	.4byte	0x12e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1e
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.4byte	0x683
	.uleb128 0xc
	.4byte	.LASF1269
	.byte	0x60
	.byte	0x13
	.4byte	0xa3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1e
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.4byte	0x69f
	.uleb128 0xc
	.4byte	.LASF1269
	.byte	0x63
	.byte	0x13
	.4byte	0xa3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2b
	.4byte	0x7f4
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.4byte	0x6cc
	.uleb128 0xd
	.4byte	0x808
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xd
	.4byte	0x7fd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x8
	.4byte	0x813
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x1c
	.4byte	0x7b0
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.byte	0x5d
	.uleb128 0xd
	.4byte	0x7ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x8
	.4byte	0x7c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.4byte	0x7d0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.4byte	0x7db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1d
	.4byte	0x7e6
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.uleb128 0x8
	.4byte	0x7e7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF1271
	.byte	0x47
	.byte	0x16
	.4byte	0xd8
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2c
	.4byte	.LASF1283
	.byte	0x1
	.byte	0x23
	.byte	0xd
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x767
	.uleb128 0x5
	.4byte	.LASF1272
	.byte	0x23
	.byte	0x29
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.4byte	.LASF1258
	.byte	0x23
	.byte	0x3d
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.byte	0x25
	.byte	0xb
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF1276
	.byte	0x5f
	.4byte	0x7ab
	.uleb128 0xe
	.4byte	.LASF1278
	.byte	0x5f
	.byte	0x5f
	.4byte	0x31
	.uleb128 0x9
	.4byte	.LASF1273
	.byte	0x61
	.byte	0x10
	.4byte	0x31
	.uleb128 0x9
	.4byte	.LASF1274
	.byte	0x62
	.byte	0x1a
	.4byte	0x7ab
	.uleb128 0x9
	.4byte	.LASF1275
	.byte	0x67
	.byte	0x10
	.4byte	0x31
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF1269
	.byte	0x61
	.byte	0x2b
	.4byte	0xa3
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	0x38
	.uleb128 0x1f
	.4byte	.LASF1277
	.byte	0x52
	.4byte	0x7f4
	.uleb128 0xe
	.4byte	.LASF1278
	.byte	0x52
	.byte	0x5e
	.4byte	0x31
	.uleb128 0x9
	.4byte	.LASF1273
	.byte	0x54
	.byte	0x10
	.4byte	0x31
	.uleb128 0x9
	.4byte	.LASF1274
	.byte	0x55
	.byte	0x1a
	.4byte	0x7ab
	.uleb128 0x9
	.4byte	.LASF1275
	.byte	0x5a
	.byte	0x10
	.4byte	0x31
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF1269
	.byte	0x54
	.byte	0x2b
	.4byte	0xa3
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF1284
	.byte	0x2
	.byte	0x40
	.byte	0x33
	.byte	0x3
	.uleb128 0xe
	.4byte	.LASF1278
	.byte	0x40
	.byte	0x5a
	.4byte	0x31
	.uleb128 0xe
	.4byte	.LASF1279
	.byte	0x40
	.byte	0x6f
	.4byte	0x31
	.uleb128 0x9
	.4byte	.LASF1280
	.byte	0x42
	.byte	0x1a
	.4byte	0x7ab
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 11
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0x6b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 16
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 11
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0x21
	.sleb128 2
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 51
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x1f
	.uleb128 0x1b
	.uleb128 0x1f
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.uleb128 0x79
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x74
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	0
	.4byte	0
	.section	.debug_rnglists,"",@progbits
.Ldebug_ranges0:
	.4byte	.Ldebug_ranges3-.Ldebug_ranges2
.Ldebug_ranges2:
	.2byte	0x5
	.byte	0x4
	.byte	0
	.4byte	0
.LLRL0:
	.byte	0x7
	.4byte	.LFB15
	.uleb128 .LFE15-.LFB15
	.byte	0x7
	.4byte	.LFB16
	.uleb128 .LFE16-.LFB16
	.byte	0x7
	.4byte	.LFB17
	.uleb128 .LFE17-.LFB17
	.byte	0x7
	.4byte	.LFB18
	.uleb128 .LFE18-.LFB18
	.byte	0x7
	.4byte	.LFB19
	.uleb128 .LFE19-.LFB19
	.byte	0x7
	.4byte	.LFB20
	.uleb128 .LFE20-.LFB20
	.byte	0x7
	.4byte	.LFB21
	.uleb128 .LFE21-.LFB21
	.byte	0x7
	.4byte	.LFB22
	.uleb128 .LFE22-.LFB22
	.byte	0x7
	.4byte	.LFB23
	.uleb128 .LFE23-.LFB23
	.byte	0x7
	.4byte	.LFB24
	.uleb128 .LFE24-.LFB24
	.byte	0x7
	.4byte	.LFB25
	.uleb128 .LFE25-.LFB25
	.byte	0x7
	.4byte	.LFB26
	.uleb128 .LFE26-.LFB26
	.byte	0
.Ldebug_ranges3:
	.section	.debug_macro,"",@progbits
.Ldebug_macro0:
	.2byte	0x5
	.byte	0x2
	.4byte	.Ldebug_line0
	.byte	0x3
	.uleb128 0
	.uleb128 0x1
	.byte	0x5
	.uleb128 0
	.4byte	.LASF2
	.byte	0x5
	.uleb128 0
	.4byte	.LASF3
	.byte	0x5
	.uleb128 0
	.4byte	.LASF4
	.byte	0x5
	.uleb128 0
	.4byte	.LASF5
	.byte	0x5
	.uleb128 0
	.4byte	.LASF6
	.byte	0x5
	.uleb128 0
	.4byte	.LASF7
	.byte	0x5
	.uleb128 0
	.4byte	.LASF8
	.byte	0x5
	.uleb128 0
	.4byte	.LASF9
	.byte	0x5
	.uleb128 0
	.4byte	.LASF10
	.byte	0x5
	.uleb128 0
	.4byte	.LASF11
	.byte	0x5
	.uleb128 0
	.4byte	.LASF12
	.byte	0x5
	.uleb128 0
	.4byte	.LASF13
	.byte	0x5
	.uleb128 0
	.4byte	.LASF14
	.byte	0x5
	.uleb128 0
	.4byte	.LASF15
	.byte	0x5
	.uleb128 0
	.4byte	.LASF16
	.byte	0x5
	.uleb128 0
	.4byte	.LASF17
	.byte	0x5
	.uleb128 0
	.4byte	.LASF18
	.byte	0x5
	.uleb128 0
	.4byte	.LASF19
	.byte	0x5
	.uleb128 0
	.4byte	.LASF20
	.byte	0x5
	.uleb128 0
	.4byte	.LASF21
	.byte	0x5
	.uleb128 0
	.4byte	.LASF22
	.byte	0x5
	.uleb128 0
	.4byte	.LASF23
	.byte	0x5
	.uleb128 0
	.4byte	.LASF24
	.byte	0x5
	.uleb128 0
	.4byte	.LASF25
	.byte	0x5
	.uleb128 0
	.4byte	.LASF26
	.byte	0x5
	.uleb128 0
	.4byte	.LASF27
	.byte	0x5
	.uleb128 0
	.4byte	.LASF28
	.byte	0x5
	.uleb128 0
	.4byte	.LASF29
	.byte	0x5
	.uleb128 0
	.4byte	.LASF30
	.byte	0x5
	.uleb128 0
	.4byte	.LASF31
	.byte	0x5
	.uleb128 0
	.4byte	.LASF32
	.byte	0x5
	.uleb128 0
	.4byte	.LASF33
	.byte	0x5
	.uleb128 0
	.4byte	.LASF34
	.byte	0x5
	.uleb128 0
	.4byte	.LASF35
	.byte	0x5
	.uleb128 0
	.4byte	.LASF36
	.byte	0x5
	.uleb128 0
	.4byte	.LASF37
	.byte	0x5
	.uleb128 0
	.4byte	.LASF38
	.byte	0x5
	.uleb128 0
	.4byte	.LASF39
	.byte	0x5
	.uleb128 0
	.4byte	.LASF40
	.byte	0x5
	.uleb128 0
	.4byte	.LASF41
	.byte	0x5
	.uleb128 0
	.4byte	.LASF42
	.byte	0x5
	.uleb128 0
	.4byte	.LASF43
	.byte	0x5
	.uleb128 0
	.4byte	.LASF44
	.byte	0x5
	.uleb128 0
	.4byte	.LASF45
	.byte	0x5
	.uleb128 0
	.4byte	.LASF46
	.byte	0x5
	.uleb128 0
	.4byte	.LASF47
	.byte	0x5
	.uleb128 0
	.4byte	.LASF48
	.byte	0x5
	.uleb128 0
	.4byte	.LASF49
	.byte	0x5
	.uleb128 0
	.4byte	.LASF50
	.byte	0x5
	.uleb128 0
	.4byte	.LASF51
	.byte	0x5
	.uleb128 0
	.4byte	.LASF52
	.byte	0x5
	.uleb128 0
	.4byte	.LASF53
	.byte	0x5
	.uleb128 0
	.4byte	.LASF54
	.byte	0x5
	.uleb128 0
	.4byte	.LASF55
	.byte	0x5
	.uleb128 0
	.4byte	.LASF56
	.byte	0x5
	.uleb128 0
	.4byte	.LASF57
	.byte	0x5
	.uleb128 0
	.4byte	.LASF58
	.byte	0x5
	.uleb128 0
	.4byte	.LASF59
	.byte	0x5
	.uleb128 0
	.4byte	.LASF60
	.byte	0x5
	.uleb128 0
	.4byte	.LASF61
	.byte	0x5
	.uleb128 0
	.4byte	.LASF62
	.byte	0x5
	.uleb128 0
	.4byte	.LASF63
	.byte	0x5
	.uleb128 0
	.4byte	.LASF64
	.byte	0x5
	.uleb128 0
	.4byte	.LASF65
	.byte	0x5
	.uleb128 0
	.4byte	.LASF66
	.byte	0x5
	.uleb128 0
	.4byte	.LASF67
	.byte	0x5
	.uleb128 0
	.4byte	.LASF68
	.byte	0x5
	.uleb128 0
	.4byte	.LASF69
	.byte	0x5
	.uleb128 0
	.4byte	.LASF70
	.byte	0x5
	.uleb128 0
	.4byte	.LASF71
	.byte	0x5
	.uleb128 0
	.4byte	.LASF72
	.byte	0x5
	.uleb128 0
	.4byte	.LASF73
	.byte	0x5
	.uleb128 0
	.4byte	.LASF74
	.byte	0x5
	.uleb128 0
	.4byte	.LASF75
	.byte	0x5
	.uleb128 0
	.4byte	.LASF76
	.byte	0x5
	.uleb128 0
	.4byte	.LASF77
	.byte	0x5
	.uleb128 0
	.4byte	.LASF78
	.byte	0x5
	.uleb128 0
	.4byte	.LASF79
	.byte	0x5
	.uleb128 0
	.4byte	.LASF80
	.byte	0x5
	.uleb128 0
	.4byte	.LASF81
	.byte	0x5
	.uleb128 0
	.4byte	.LASF82
	.byte	0x5
	.uleb128 0
	.4byte	.LASF83
	.byte	0x5
	.uleb128 0
	.4byte	.LASF84
	.byte	0x5
	.uleb128 0
	.4byte	.LASF85
	.byte	0x5
	.uleb128 0
	.4byte	.LASF86
	.byte	0x5
	.uleb128 0
	.4byte	.LASF87
	.byte	0x5
	.uleb128 0
	.4byte	.LASF88
	.byte	0x5
	.uleb128 0
	.4byte	.LASF89
	.byte	0x5
	.uleb128 0
	.4byte	.LASF90
	.byte	0x5
	.uleb128 0
	.4byte	.LASF91
	.byte	0x5
	.uleb128 0
	.4byte	.LASF92
	.byte	0x5
	.uleb128 0
	.4byte	.LASF93
	.byte	0x5
	.uleb128 0
	.4byte	.LASF94
	.byte	0x5
	.uleb128 0
	.4byte	.LASF95
	.byte	0x5
	.uleb128 0
	.4byte	.LASF96
	.byte	0x5
	.uleb128 0
	.4byte	.LASF97
	.byte	0x5
	.uleb128 0
	.4byte	.LASF98
	.byte	0x5
	.uleb128 0
	.4byte	.LASF99
	.byte	0x5
	.uleb128 0
	.4byte	.LASF100
	.byte	0x5
	.uleb128 0
	.4byte	.LASF101
	.byte	0x5
	.uleb128 0
	.4byte	.LASF102
	.byte	0x5
	.uleb128 0
	.4byte	.LASF103
	.byte	0x5
	.uleb128 0
	.4byte	.LASF104
	.byte	0x5
	.uleb128 0
	.4byte	.LASF105
	.byte	0x5
	.uleb128 0
	.4byte	.LASF106
	.byte	0x5
	.uleb128 0
	.4byte	.LASF107
	.byte	0x5
	.uleb128 0
	.4byte	.LASF108
	.byte	0x5
	.uleb128 0
	.4byte	.LASF109
	.byte	0x5
	.uleb128 0
	.4byte	.LASF110
	.byte	0x5
	.uleb128 0
	.4byte	.LASF111
	.byte	0x5
	.uleb128 0
	.4byte	.LASF112
	.byte	0x5
	.uleb128 0
	.4byte	.LASF113
	.byte	0x5
	.uleb128 0
	.4byte	.LASF114
	.byte	0x5
	.uleb128 0
	.4byte	.LASF115
	.byte	0x5
	.uleb128 0
	.4byte	.LASF116
	.byte	0x5
	.uleb128 0
	.4byte	.LASF117
	.byte	0x5
	.uleb128 0
	.4byte	.LASF118
	.byte	0x5
	.uleb128 0
	.4byte	.LASF119
	.byte	0x5
	.uleb128 0
	.4byte	.LASF120
	.byte	0x5
	.uleb128 0
	.4byte	.LASF121
	.byte	0x5
	.uleb128 0
	.4byte	.LASF122
	.byte	0x5
	.uleb128 0
	.4byte	.LASF123
	.byte	0x5
	.uleb128 0
	.4byte	.LASF124
	.byte	0x5
	.uleb128 0
	.4byte	.LASF125
	.byte	0x5
	.uleb128 0
	.4byte	.LASF126
	.byte	0x5
	.uleb128 0
	.4byte	.LASF127
	.byte	0x5
	.uleb128 0
	.4byte	.LASF128
	.byte	0x5
	.uleb128 0
	.4byte	.LASF129
	.byte	0x5
	.uleb128 0
	.4byte	.LASF130
	.byte	0x5
	.uleb128 0
	.4byte	.LASF131
	.byte	0x5
	.uleb128 0
	.4byte	.LASF132
	.byte	0x5
	.uleb128 0
	.4byte	.LASF133
	.byte	0x5
	.uleb128 0
	.4byte	.LASF134
	.byte	0x5
	.uleb128 0
	.4byte	.LASF135
	.byte	0x5
	.uleb128 0
	.4byte	.LASF136
	.byte	0x5
	.uleb128 0
	.4byte	.LASF137
	.byte	0x5
	.uleb128 0
	.4byte	.LASF138
	.byte	0x5
	.uleb128 0
	.4byte	.LASF139
	.byte	0x5
	.uleb128 0
	.4byte	.LASF140
	.byte	0x5
	.uleb128 0
	.4byte	.LASF141
	.byte	0x5
	.uleb128 0
	.4byte	.LASF142
	.byte	0x5
	.uleb128 0
	.4byte	.LASF143
	.byte	0x5
	.uleb128 0
	.4byte	.LASF144
	.byte	0x5
	.uleb128 0
	.4byte	.LASF145
	.byte	0x5
	.uleb128 0
	.4byte	.LASF146
	.byte	0x5
	.uleb128 0
	.4byte	.LASF147
	.byte	0x5
	.uleb128 0
	.4byte	.LASF148
	.byte	0x5
	.uleb128 0
	.4byte	.LASF149
	.byte	0x5
	.uleb128 0
	.4byte	.LASF150
	.byte	0x5
	.uleb128 0
	.4byte	.LASF151
	.byte	0x5
	.uleb128 0
	.4byte	.LASF152
	.byte	0x5
	.uleb128 0
	.4byte	.LASF153
	.byte	0x5
	.uleb128 0
	.4byte	.LASF154
	.byte	0x5
	.uleb128 0
	.4byte	.LASF155
	.byte	0x5
	.uleb128 0
	.4byte	.LASF156
	.byte	0x5
	.uleb128 0
	.4byte	.LASF157
	.byte	0x5
	.uleb128 0
	.4byte	.LASF158
	.byte	0x5
	.uleb128 0
	.4byte	.LASF159
	.byte	0x5
	.uleb128 0
	.4byte	.LASF160
	.byte	0x5
	.uleb128 0
	.4byte	.LASF161
	.byte	0x5
	.uleb128 0
	.4byte	.LASF162
	.byte	0x5
	.uleb128 0
	.4byte	.LASF163
	.byte	0x5
	.uleb128 0
	.4byte	.LASF164
	.byte	0x5
	.uleb128 0
	.4byte	.LASF165
	.byte	0x5
	.uleb128 0
	.4byte	.LASF166
	.byte	0x5
	.uleb128 0
	.4byte	.LASF167
	.byte	0x5
	.uleb128 0
	.4byte	.LASF168
	.byte	0x5
	.uleb128 0
	.4byte	.LASF169
	.byte	0x5
	.uleb128 0
	.4byte	.LASF170
	.byte	0x5
	.uleb128 0
	.4byte	.LASF171
	.byte	0x5
	.uleb128 0
	.4byte	.LASF172
	.byte	0x5
	.uleb128 0
	.4byte	.LASF173
	.byte	0x5
	.uleb128 0
	.4byte	.LASF174
	.byte	0x5
	.uleb128 0
	.4byte	.LASF175
	.byte	0x5
	.uleb128 0
	.4byte	.LASF176
	.byte	0x5
	.uleb128 0
	.4byte	.LASF177
	.byte	0x5
	.uleb128 0
	.4byte	.LASF178
	.byte	0x5
	.uleb128 0
	.4byte	.LASF179
	.byte	0x5
	.uleb128 0
	.4byte	.LASF180
	.byte	0x5
	.uleb128 0
	.4byte	.LASF181
	.byte	0x5
	.uleb128 0
	.4byte	.LASF182
	.byte	0x5
	.uleb128 0
	.4byte	.LASF183
	.byte	0x5
	.uleb128 0
	.4byte	.LASF184
	.byte	0x5
	.uleb128 0
	.4byte	.LASF185
	.byte	0x5
	.uleb128 0
	.4byte	.LASF186
	.byte	0x5
	.uleb128 0
	.4byte	.LASF187
	.byte	0x5
	.uleb128 0
	.4byte	.LASF188
	.byte	0x5
	.uleb128 0
	.4byte	.LASF189
	.byte	0x5
	.uleb128 0
	.4byte	.LASF190
	.byte	0x5
	.uleb128 0
	.4byte	.LASF191
	.byte	0x5
	.uleb128 0
	.4byte	.LASF192
	.byte	0x5
	.uleb128 0
	.4byte	.LASF193
	.byte	0x5
	.uleb128 0
	.4byte	.LASF194
	.byte	0x5
	.uleb128 0
	.4byte	.LASF195
	.byte	0x5
	.uleb128 0
	.4byte	.LASF196
	.byte	0x5
	.uleb128 0
	.4byte	.LASF197
	.byte	0x5
	.uleb128 0
	.4byte	.LASF198
	.byte	0x5
	.uleb128 0
	.4byte	.LASF199
	.byte	0x5
	.uleb128 0
	.4byte	.LASF200
	.byte	0x5
	.uleb128 0
	.4byte	.LASF201
	.byte	0x5
	.uleb128 0
	.4byte	.LASF202
	.byte	0x5
	.uleb128 0
	.4byte	.LASF203
	.byte	0x5
	.uleb128 0
	.4byte	.LASF204
	.byte	0x5
	.uleb128 0
	.4byte	.LASF205
	.byte	0x5
	.uleb128 0
	.4byte	.LASF206
	.byte	0x5
	.uleb128 0
	.4byte	.LASF207
	.byte	0x5
	.uleb128 0
	.4byte	.LASF208
	.byte	0x5
	.uleb128 0
	.4byte	.LASF209
	.byte	0x5
	.uleb128 0
	.4byte	.LASF210
	.byte	0x5
	.uleb128 0
	.4byte	.LASF211
	.byte	0x5
	.uleb128 0
	.4byte	.LASF212
	.byte	0x5
	.uleb128 0
	.4byte	.LASF213
	.byte	0x5
	.uleb128 0
	.4byte	.LASF214
	.byte	0x5
	.uleb128 0
	.4byte	.LASF215
	.byte	0x5
	.uleb128 0
	.4byte	.LASF216
	.byte	0x5
	.uleb128 0
	.4byte	.LASF217
	.byte	0x5
	.uleb128 0
	.4byte	.LASF218
	.byte	0x5
	.uleb128 0
	.4byte	.LASF219
	.byte	0x5
	.uleb128 0
	.4byte	.LASF220
	.byte	0x5
	.uleb128 0
	.4byte	.LASF221
	.byte	0x5
	.uleb128 0
	.4byte	.LASF222
	.byte	0x5
	.uleb128 0
	.4byte	.LASF223
	.byte	0x5
	.uleb128 0
	.4byte	.LASF224
	.byte	0x5
	.uleb128 0
	.4byte	.LASF225
	.byte	0x5
	.uleb128 0
	.4byte	.LASF226
	.byte	0x5
	.uleb128 0
	.4byte	.LASF227
	.byte	0x5
	.uleb128 0
	.4byte	.LASF228
	.byte	0x5
	.uleb128 0
	.4byte	.LASF229
	.byte	0x5
	.uleb128 0
	.4byte	.LASF230
	.byte	0x5
	.uleb128 0
	.4byte	.LASF231
	.byte	0x5
	.uleb128 0
	.4byte	.LASF232
	.byte	0x5
	.uleb128 0
	.4byte	.LASF233
	.byte	0x5
	.uleb128 0
	.4byte	.LASF234
	.byte	0x5
	.uleb128 0
	.4byte	.LASF235
	.byte	0x5
	.uleb128 0
	.4byte	.LASF236
	.byte	0x5
	.uleb128 0
	.4byte	.LASF237
	.byte	0x5
	.uleb128 0
	.4byte	.LASF238
	.byte	0x5
	.uleb128 0
	.4byte	.LASF239
	.byte	0x5
	.uleb128 0
	.4byte	.LASF240
	.byte	0x5
	.uleb128 0
	.4byte	.LASF241
	.byte	0x5
	.uleb128 0
	.4byte	.LASF242
	.byte	0x5
	.uleb128 0
	.4byte	.LASF243
	.byte	0x5
	.uleb128 0
	.4byte	.LASF244
	.byte	0x5
	.uleb128 0
	.4byte	.LASF245
	.byte	0x5
	.uleb128 0
	.4byte	.LASF246
	.byte	0x5
	.uleb128 0
	.4byte	.LASF247
	.byte	0x5
	.uleb128 0
	.4byte	.LASF248
	.byte	0x5
	.uleb128 0
	.4byte	.LASF249
	.byte	0x5
	.uleb128 0
	.4byte	.LASF250
	.byte	0x5
	.uleb128 0
	.4byte	.LASF251
	.byte	0x5
	.uleb128 0
	.4byte	.LASF252
	.byte	0x5
	.uleb128 0
	.4byte	.LASF253
	.byte	0x5
	.uleb128 0
	.4byte	.LASF254
	.byte	0x5
	.uleb128 0
	.4byte	.LASF255
	.byte	0x5
	.uleb128 0
	.4byte	.LASF256
	.byte	0x5
	.uleb128 0
	.4byte	.LASF257
	.byte	0x5
	.uleb128 0
	.4byte	.LASF258
	.byte	0x5
	.uleb128 0
	.4byte	.LASF259
	.byte	0x5
	.uleb128 0
	.4byte	.LASF260
	.byte	0x5
	.uleb128 0
	.4byte	.LASF261
	.byte	0x5
	.uleb128 0
	.4byte	.LASF262
	.byte	0x5
	.uleb128 0
	.4byte	.LASF263
	.byte	0x5
	.uleb128 0
	.4byte	.LASF264
	.byte	0x5
	.uleb128 0
	.4byte	.LASF265
	.byte	0x5
	.uleb128 0
	.4byte	.LASF266
	.byte	0x5
	.uleb128 0
	.4byte	.LASF267
	.byte	0x5
	.uleb128 0
	.4byte	.LASF268
	.byte	0x5
	.uleb128 0
	.4byte	.LASF269
	.byte	0x5
	.uleb128 0
	.4byte	.LASF270
	.byte	0x5
	.uleb128 0
	.4byte	.LASF271
	.byte	0x5
	.uleb128 0
	.4byte	.LASF272
	.byte	0x5
	.uleb128 0
	.4byte	.LASF273
	.byte	0x5
	.uleb128 0
	.4byte	.LASF274
	.byte	0x5
	.uleb128 0
	.4byte	.LASF275
	.byte	0x5
	.uleb128 0
	.4byte	.LASF276
	.byte	0x5
	.uleb128 0
	.4byte	.LASF277
	.byte	0x5
	.uleb128 0
	.4byte	.LASF278
	.byte	0x5
	.uleb128 0
	.4byte	.LASF279
	.byte	0x5
	.uleb128 0
	.4byte	.LASF280
	.byte	0x5
	.uleb128 0
	.4byte	.LASF281
	.byte	0x5
	.uleb128 0
	.4byte	.LASF282
	.byte	0x5
	.uleb128 0
	.4byte	.LASF283
	.byte	0x5
	.uleb128 0
	.4byte	.LASF284
	.byte	0x5
	.uleb128 0
	.4byte	.LASF285
	.byte	0x5
	.uleb128 0
	.4byte	.LASF286
	.byte	0x5
	.uleb128 0
	.4byte	.LASF287
	.byte	0x5
	.uleb128 0
	.4byte	.LASF288
	.byte	0x5
	.uleb128 0
	.4byte	.LASF289
	.byte	0x5
	.uleb128 0
	.4byte	.LASF290
	.byte	0x5
	.uleb128 0
	.4byte	.LASF291
	.byte	0x5
	.uleb128 0
	.4byte	.LASF292
	.byte	0x5
	.uleb128 0
	.4byte	.LASF293
	.byte	0x5
	.uleb128 0
	.4byte	.LASF294
	.byte	0x5
	.uleb128 0
	.4byte	.LASF295
	.byte	0x5
	.uleb128 0
	.4byte	.LASF296
	.byte	0x5
	.uleb128 0
	.4byte	.LASF297
	.byte	0x5
	.uleb128 0
	.4byte	.LASF298
	.byte	0x5
	.uleb128 0
	.4byte	.LASF299
	.byte	0x5
	.uleb128 0
	.4byte	.LASF300
	.byte	0x5
	.uleb128 0
	.4byte	.LASF301
	.byte	0x5
	.uleb128 0
	.4byte	.LASF302
	.byte	0x5
	.uleb128 0
	.4byte	.LASF303
	.byte	0x5
	.uleb128 0
	.4byte	.LASF304
	.byte	0x5
	.uleb128 0
	.4byte	.LASF305
	.byte	0x5
	.uleb128 0
	.4byte	.LASF306
	.byte	0x5
	.uleb128 0
	.4byte	.LASF307
	.byte	0x5
	.uleb128 0
	.4byte	.LASF308
	.byte	0x5
	.uleb128 0
	.4byte	.LASF309
	.byte	0x5
	.uleb128 0
	.4byte	.LASF310
	.byte	0x5
	.uleb128 0
	.4byte	.LASF311
	.byte	0x5
	.uleb128 0
	.4byte	.LASF312
	.byte	0x5
	.uleb128 0
	.4byte	.LASF313
	.byte	0x5
	.uleb128 0
	.4byte	.LASF314
	.byte	0x5
	.uleb128 0
	.4byte	.LASF315
	.byte	0x5
	.uleb128 0
	.4byte	.LASF316
	.byte	0x5
	.uleb128 0
	.4byte	.LASF317
	.byte	0x5
	.uleb128 0
	.4byte	.LASF318
	.byte	0x5
	.uleb128 0
	.4byte	.LASF319
	.byte	0x5
	.uleb128 0
	.4byte	.LASF320
	.byte	0x5
	.uleb128 0
	.4byte	.LASF321
	.byte	0x5
	.uleb128 0
	.4byte	.LASF322
	.byte	0x5
	.uleb128 0
	.4byte	.LASF323
	.byte	0x5
	.uleb128 0
	.4byte	.LASF324
	.byte	0x5
	.uleb128 0
	.4byte	.LASF325
	.byte	0x5
	.uleb128 0
	.4byte	.LASF326
	.byte	0x5
	.uleb128 0
	.4byte	.LASF327
	.byte	0x5
	.uleb128 0
	.4byte	.LASF328
	.byte	0x5
	.uleb128 0
	.4byte	.LASF329
	.byte	0x5
	.uleb128 0
	.4byte	.LASF330
	.byte	0x5
	.uleb128 0
	.4byte	.LASF331
	.byte	0x5
	.uleb128 0
	.4byte	.LASF332
	.byte	0x5
	.uleb128 0
	.4byte	.LASF333
	.byte	0x5
	.uleb128 0
	.4byte	.LASF334
	.byte	0x5
	.uleb128 0
	.4byte	.LASF335
	.byte	0x5
	.uleb128 0
	.4byte	.LASF336
	.byte	0x5
	.uleb128 0
	.4byte	.LASF337
	.byte	0x5
	.uleb128 0
	.4byte	.LASF338
	.byte	0x5
	.uleb128 0
	.4byte	.LASF339
	.byte	0x5
	.uleb128 0
	.4byte	.LASF340
	.byte	0x5
	.uleb128 0
	.4byte	.LASF341
	.byte	0x5
	.uleb128 0
	.4byte	.LASF342
	.byte	0x5
	.uleb128 0
	.4byte	.LASF343
	.byte	0x5
	.uleb128 0
	.4byte	.LASF344
	.byte	0x5
	.uleb128 0
	.4byte	.LASF345
	.byte	0x5
	.uleb128 0
	.4byte	.LASF346
	.byte	0x5
	.uleb128 0
	.4byte	.LASF347
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x7
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF348
	.byte	0x3
	.uleb128 0xf
	.uleb128 0x5
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF349
	.byte	0x3
	.uleb128 0xf
	.uleb128 0x4
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF350
	.file 8 "/home/lc/tools/riscv32-unknown-elf/lib/gcc/riscv32-unknown-elf/13.2.0/include/stddef.h"
	.byte	0x3
	.uleb128 0xf
	.uleb128 0x8
	.byte	0x7
	.4byte	.Ldebug_macro2
	.byte	0x4
	.file 9 "/home/lc/tools/riscv32-unknown-elf/lib/gcc/riscv32-unknown-elf/13.2.0/include/stdint.h"
	.byte	0x3
	.uleb128 0x10
	.uleb128 0x9
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x3
	.byte	0x7
	.4byte	.Ldebug_macro3
	.byte	0x4
	.byte	0x5
	.uleb128 0xd
	.4byte	.LASF531
	.byte	0x4
	.file 10 "/home/lc/tools/riscv32-unknown-elf/lib/gcc/riscv32-unknown-elf/13.2.0/include/stdbool.h"
	.byte	0x3
	.uleb128 0x11
	.uleb128 0xa
	.byte	0x7
	.4byte	.Ldebug_macro4
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro5
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro6
	.byte	0x4
	.file 11 "ae350_soc/driver/ae350/../../../ae350_soc/driver/ae350/../../../ae350_soc/ae350/platform.h"
	.byte	0x3
	.uleb128 0x10
	.uleb128 0xb
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF598
	.file 12 "ae350_soc/driver/ae350/../../../ae350_soc/driver/ae350/../../../ae350_soc/ae350/../../ae350_soc/config/config.h"
	.byte	0x3
	.uleb128 0x14
	.uleb128 0xc
	.byte	0x7
	.4byte	.Ldebug_macro7
	.byte	0x4
	.file 13 "ae350_soc/driver/ae350/../../../ae350_soc/driver/ae350/../../../ae350_soc/ae350/../../ae350_soc/ae350/core_v5.h"
	.byte	0x3
	.uleb128 0x15
	.uleb128 0xd
	.byte	0x7
	.4byte	.Ldebug_macro8
	.file 14 "ae350_soc/driver/ae350/../../../ae350_soc/driver/ae350/../../../ae350_soc/ae350/../../ae350_soc/ae350/../../ae350_soc/ae350/csr.h"
	.byte	0x3
	.uleb128 0x94
	.uleb128 0xe
	.byte	0x7
	.4byte	.Ldebug_macro9
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro10
	.byte	0x4
	.byte	0x3
	.uleb128 0x16
	.uleb128 0x6
	.byte	0x7
	.4byte	.Ldebug_macro11
	.byte	0x4
	.file 15 "ae350_soc/driver/ae350/../../../ae350_soc/driver/ae350/../../../ae350_soc/ae350/../../ae350_soc/ae350/interrupt.h"
	.byte	0x3
	.uleb128 0x17
	.uleb128 0xf
	.byte	0x7
	.4byte	.Ldebug_macro12
	.byte	0x3
	.uleb128 0x1f
	.uleb128 0x2
	.byte	0x7
	.4byte	.Ldebug_macro13
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro14
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro15
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro16
	.byte	0x4
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF1189
	.byte	0x4
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stddef.h.39.0dc9006b34572d4d9cae4c8b422c4971,comdat
.Ldebug_macro2:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF351
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF352
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF353
	.byte	0x5
	.uleb128 0x84
	.4byte	.LASF354
	.byte	0x5
	.uleb128 0x85
	.4byte	.LASF355
	.byte	0x5
	.uleb128 0x86
	.4byte	.LASF356
	.byte	0x5
	.uleb128 0x87
	.4byte	.LASF357
	.byte	0x5
	.uleb128 0x88
	.4byte	.LASF358
	.byte	0x5
	.uleb128 0x89
	.4byte	.LASF359
	.byte	0x5
	.uleb128 0x8a
	.4byte	.LASF360
	.byte	0x5
	.uleb128 0x8b
	.4byte	.LASF361
	.byte	0x5
	.uleb128 0x8c
	.4byte	.LASF362
	.byte	0x5
	.uleb128 0x8d
	.4byte	.LASF363
	.byte	0x6
	.uleb128 0x9e
	.4byte	.LASF364
	.byte	0x5
	.uleb128 0xb9
	.4byte	.LASF365
	.byte	0x5
	.uleb128 0xba
	.4byte	.LASF366
	.byte	0x5
	.uleb128 0xbb
	.4byte	.LASF367
	.byte	0x5
	.uleb128 0xbc
	.4byte	.LASF368
	.byte	0x5
	.uleb128 0xbd
	.4byte	.LASF369
	.byte	0x5
	.uleb128 0xbe
	.4byte	.LASF370
	.byte	0x5
	.uleb128 0xbf
	.4byte	.LASF371
	.byte	0x5
	.uleb128 0xc0
	.4byte	.LASF372
	.byte	0x5
	.uleb128 0xc1
	.4byte	.LASF373
	.byte	0x5
	.uleb128 0xc2
	.4byte	.LASF374
	.byte	0x5
	.uleb128 0xc3
	.4byte	.LASF375
	.byte	0x5
	.uleb128 0xc4
	.4byte	.LASF376
	.byte	0x5
	.uleb128 0xc5
	.4byte	.LASF377
	.byte	0x5
	.uleb128 0xc6
	.4byte	.LASF378
	.byte	0x5
	.uleb128 0xc7
	.4byte	.LASF379
	.byte	0x5
	.uleb128 0xc8
	.4byte	.LASF380
	.byte	0x5
	.uleb128 0xc9
	.4byte	.LASF381
	.byte	0x5
	.uleb128 0xd0
	.4byte	.LASF382
	.byte	0x6
	.uleb128 0xed
	.4byte	.LASF383
	.byte	0x5
	.uleb128 0x10b
	.4byte	.LASF384
	.byte	0x5
	.uleb128 0x10c
	.4byte	.LASF385
	.byte	0x5
	.uleb128 0x10d
	.4byte	.LASF386
	.byte	0x5
	.uleb128 0x10e
	.4byte	.LASF387
	.byte	0x5
	.uleb128 0x10f
	.4byte	.LASF388
	.byte	0x5
	.uleb128 0x110
	.4byte	.LASF389
	.byte	0x5
	.uleb128 0x111
	.4byte	.LASF390
	.byte	0x5
	.uleb128 0x112
	.4byte	.LASF391
	.byte	0x5
	.uleb128 0x113
	.4byte	.LASF392
	.byte	0x5
	.uleb128 0x114
	.4byte	.LASF393
	.byte	0x5
	.uleb128 0x115
	.4byte	.LASF394
	.byte	0x5
	.uleb128 0x116
	.4byte	.LASF395
	.byte	0x5
	.uleb128 0x117
	.4byte	.LASF396
	.byte	0x5
	.uleb128 0x118
	.4byte	.LASF397
	.byte	0x5
	.uleb128 0x119
	.4byte	.LASF398
	.byte	0x5
	.uleb128 0x11a
	.4byte	.LASF399
	.byte	0x6
	.uleb128 0x127
	.4byte	.LASF400
	.byte	0x6
	.uleb128 0x15d
	.4byte	.LASF401
	.byte	0x6
	.uleb128 0x18f
	.4byte	.LASF402
	.byte	0x5
	.uleb128 0x194
	.4byte	.LASF403
	.byte	0x6
	.uleb128 0x19a
	.4byte	.LASF404
	.byte	0x6
	.uleb128 0x19f
	.4byte	.LASF405
	.byte	0x5
	.uleb128 0x1a0
	.4byte	.LASF406
	.byte	0x5
	.uleb128 0x1a5
	.4byte	.LASF407
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdintgcc.h.29.6d480f4ba0f60596e88234283d42444f,comdat
.Ldebug_macro3:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x1d
	.4byte	.LASF408
	.byte	0x6
	.uleb128 0x64
	.4byte	.LASF409
	.byte	0x5
	.uleb128 0x65
	.4byte	.LASF410
	.byte	0x6
	.uleb128 0x66
	.4byte	.LASF411
	.byte	0x5
	.uleb128 0x67
	.4byte	.LASF412
	.byte	0x6
	.uleb128 0x6a
	.4byte	.LASF413
	.byte	0x5
	.uleb128 0x6b
	.4byte	.LASF414
	.byte	0x6
	.uleb128 0x6e
	.4byte	.LASF415
	.byte	0x5
	.uleb128 0x6f
	.4byte	.LASF416
	.byte	0x6
	.uleb128 0x70
	.4byte	.LASF417
	.byte	0x5
	.uleb128 0x71
	.4byte	.LASF418
	.byte	0x6
	.uleb128 0x74
	.4byte	.LASF419
	.byte	0x5
	.uleb128 0x75
	.4byte	.LASF420
	.byte	0x6
	.uleb128 0x78
	.4byte	.LASF421
	.byte	0x5
	.uleb128 0x79
	.4byte	.LASF422
	.byte	0x6
	.uleb128 0x7a
	.4byte	.LASF423
	.byte	0x5
	.uleb128 0x7b
	.4byte	.LASF424
	.byte	0x6
	.uleb128 0x7e
	.4byte	.LASF425
	.byte	0x5
	.uleb128 0x7f
	.4byte	.LASF426
	.byte	0x6
	.uleb128 0x82
	.4byte	.LASF427
	.byte	0x5
	.uleb128 0x83
	.4byte	.LASF428
	.byte	0x6
	.uleb128 0x84
	.4byte	.LASF429
	.byte	0x5
	.uleb128 0x85
	.4byte	.LASF430
	.byte	0x6
	.uleb128 0x88
	.4byte	.LASF431
	.byte	0x5
	.uleb128 0x89
	.4byte	.LASF432
	.byte	0x6
	.uleb128 0x8c
	.4byte	.LASF433
	.byte	0x5
	.uleb128 0x8d
	.4byte	.LASF434
	.byte	0x6
	.uleb128 0x8e
	.4byte	.LASF435
	.byte	0x5
	.uleb128 0x8f
	.4byte	.LASF436
	.byte	0x6
	.uleb128 0x90
	.4byte	.LASF437
	.byte	0x5
	.uleb128 0x91
	.4byte	.LASF438
	.byte	0x6
	.uleb128 0x92
	.4byte	.LASF439
	.byte	0x5
	.uleb128 0x93
	.4byte	.LASF440
	.byte	0x6
	.uleb128 0x94
	.4byte	.LASF441
	.byte	0x5
	.uleb128 0x95
	.4byte	.LASF442
	.byte	0x6
	.uleb128 0x96
	.4byte	.LASF443
	.byte	0x5
	.uleb128 0x97
	.4byte	.LASF444
	.byte	0x6
	.uleb128 0x98
	.4byte	.LASF445
	.byte	0x5
	.uleb128 0x99
	.4byte	.LASF446
	.byte	0x6
	.uleb128 0x9a
	.4byte	.LASF447
	.byte	0x5
	.uleb128 0x9b
	.4byte	.LASF448
	.byte	0x6
	.uleb128 0x9c
	.4byte	.LASF449
	.byte	0x5
	.uleb128 0x9d
	.4byte	.LASF450
	.byte	0x6
	.uleb128 0x9e
	.4byte	.LASF451
	.byte	0x5
	.uleb128 0x9f
	.4byte	.LASF452
	.byte	0x6
	.uleb128 0xa0
	.4byte	.LASF453
	.byte	0x5
	.uleb128 0xa1
	.4byte	.LASF454
	.byte	0x6
	.uleb128 0xa2
	.4byte	.LASF455
	.byte	0x5
	.uleb128 0xa3
	.4byte	.LASF456
	.byte	0x6
	.uleb128 0xa5
	.4byte	.LASF457
	.byte	0x5
	.uleb128 0xa6
	.4byte	.LASF458
	.byte	0x6
	.uleb128 0xa7
	.4byte	.LASF459
	.byte	0x5
	.uleb128 0xa8
	.4byte	.LASF460
	.byte	0x6
	.uleb128 0xa9
	.4byte	.LASF461
	.byte	0x5
	.uleb128 0xaa
	.4byte	.LASF462
	.byte	0x6
	.uleb128 0xab
	.4byte	.LASF463
	.byte	0x5
	.uleb128 0xac
	.4byte	.LASF464
	.byte	0x6
	.uleb128 0xad
	.4byte	.LASF465
	.byte	0x5
	.uleb128 0xae
	.4byte	.LASF466
	.byte	0x6
	.uleb128 0xaf
	.4byte	.LASF467
	.byte	0x5
	.uleb128 0xb0
	.4byte	.LASF468
	.byte	0x6
	.uleb128 0xb1
	.4byte	.LASF469
	.byte	0x5
	.uleb128 0xb2
	.4byte	.LASF470
	.byte	0x6
	.uleb128 0xb3
	.4byte	.LASF471
	.byte	0x5
	.uleb128 0xb4
	.4byte	.LASF472
	.byte	0x6
	.uleb128 0xb5
	.4byte	.LASF473
	.byte	0x5
	.uleb128 0xb6
	.4byte	.LASF474
	.byte	0x6
	.uleb128 0xb7
	.4byte	.LASF475
	.byte	0x5
	.uleb128 0xb8
	.4byte	.LASF476
	.byte	0x6
	.uleb128 0xb9
	.4byte	.LASF477
	.byte	0x5
	.uleb128 0xba
	.4byte	.LASF478
	.byte	0x6
	.uleb128 0xbb
	.4byte	.LASF479
	.byte	0x5
	.uleb128 0xbc
	.4byte	.LASF480
	.byte	0x6
	.uleb128 0xbf
	.4byte	.LASF481
	.byte	0x5
	.uleb128 0xc0
	.4byte	.LASF482
	.byte	0x6
	.uleb128 0xc1
	.4byte	.LASF483
	.byte	0x5
	.uleb128 0xc2
	.4byte	.LASF484
	.byte	0x6
	.uleb128 0xc5
	.4byte	.LASF485
	.byte	0x5
	.uleb128 0xc6
	.4byte	.LASF486
	.byte	0x6
	.uleb128 0xc9
	.4byte	.LASF487
	.byte	0x5
	.uleb128 0xca
	.4byte	.LASF488
	.byte	0x6
	.uleb128 0xcb
	.4byte	.LASF489
	.byte	0x5
	.uleb128 0xcc
	.4byte	.LASF490
	.byte	0x6
	.uleb128 0xcd
	.4byte	.LASF491
	.byte	0x5
	.uleb128 0xce
	.4byte	.LASF492
	.byte	0x6
	.uleb128 0xd2
	.4byte	.LASF493
	.byte	0x5
	.uleb128 0xd3
	.4byte	.LASF494
	.byte	0x6
	.uleb128 0xd4
	.4byte	.LASF495
	.byte	0x5
	.uleb128 0xd5
	.4byte	.LASF496
	.byte	0x6
	.uleb128 0xd7
	.4byte	.LASF497
	.byte	0x5
	.uleb128 0xd8
	.4byte	.LASF498
	.byte	0x6
	.uleb128 0xd9
	.4byte	.LASF499
	.byte	0x5
	.uleb128 0xda
	.4byte	.LASF500
	.byte	0x6
	.uleb128 0xdc
	.4byte	.LASF501
	.byte	0x5
	.uleb128 0xdd
	.4byte	.LASF502
	.byte	0x6
	.uleb128 0xdf
	.4byte	.LASF503
	.byte	0x5
	.uleb128 0xe0
	.4byte	.LASF504
	.byte	0x6
	.uleb128 0xe1
	.4byte	.LASF505
	.byte	0x5
	.uleb128 0xe2
	.4byte	.LASF506
	.byte	0x6
	.uleb128 0xe4
	.4byte	.LASF507
	.byte	0x5
	.uleb128 0xe5
	.4byte	.LASF508
	.byte	0x6
	.uleb128 0xe6
	.4byte	.LASF509
	.byte	0x5
	.uleb128 0xe7
	.4byte	.LASF510
	.byte	0x6
	.uleb128 0xef
	.4byte	.LASF511
	.byte	0x5
	.uleb128 0xf0
	.4byte	.LASF512
	.byte	0x6
	.uleb128 0xf1
	.4byte	.LASF513
	.byte	0x5
	.uleb128 0xf2
	.4byte	.LASF514
	.byte	0x6
	.uleb128 0xf3
	.4byte	.LASF515
	.byte	0x5
	.uleb128 0xf4
	.4byte	.LASF516
	.byte	0x6
	.uleb128 0xf5
	.4byte	.LASF517
	.byte	0x5
	.uleb128 0xf6
	.4byte	.LASF518
	.byte	0x6
	.uleb128 0xf7
	.4byte	.LASF519
	.byte	0x5
	.uleb128 0xf8
	.4byte	.LASF520
	.byte	0x6
	.uleb128 0xf9
	.4byte	.LASF521
	.byte	0x5
	.uleb128 0xfa
	.4byte	.LASF522
	.byte	0x6
	.uleb128 0xfb
	.4byte	.LASF523
	.byte	0x5
	.uleb128 0xfc
	.4byte	.LASF524
	.byte	0x6
	.uleb128 0xfd
	.4byte	.LASF525
	.byte	0x5
	.uleb128 0xfe
	.4byte	.LASF526
	.byte	0x6
	.uleb128 0xff
	.4byte	.LASF527
	.byte	0x5
	.uleb128 0x100
	.4byte	.LASF528
	.byte	0x6
	.uleb128 0x101
	.4byte	.LASF529
	.byte	0x5
	.uleb128 0x102
	.4byte	.LASF530
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdbool.h.29.c08aa3eec75cf5b9b5003883f43253f0,comdat
.Ldebug_macro4:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x1d
	.4byte	.LASF532
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF533
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF534
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF535
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF536
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.Driver_Common.h.23.56d88958bff1e0a4ec5a3384fdb2e314,comdat
.Ldebug_macro5:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF537
	.byte	0x5
	.uleb128 0x23
	.4byte	.LASF538
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF539
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF540
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF541
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF542
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF543
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF544
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.Driver_GPIO.h.21.c6f0ec967b6c710657b3355d12ee410a,comdat
.Ldebug_macro6:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF545
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF546
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF547
	.byte	0x5
	.uleb128 0x1d
	.4byte	.LASF548
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF549
	.byte	0x5
	.uleb128 0x22
	.4byte	.LASF550
	.byte	0x5
	.uleb128 0x23
	.4byte	.LASF551
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF552
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF553
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF554
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF555
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF556
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF557
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF558
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF559
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF560
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF561
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF562
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF563
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF564
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF565
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF566
	.byte	0x5
	.uleb128 0x39
	.4byte	.LASF567
	.byte	0x5
	.uleb128 0x3a
	.4byte	.LASF568
	.byte	0x5
	.uleb128 0x3b
	.4byte	.LASF569
	.byte	0x5
	.uleb128 0x3c
	.4byte	.LASF570
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF571
	.byte	0x5
	.uleb128 0x3e
	.4byte	.LASF572
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF573
	.byte	0x5
	.uleb128 0x40
	.4byte	.LASF574
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF575
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF576
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF577
	.byte	0x5
	.uleb128 0x44
	.4byte	.LASF578
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF579
	.byte	0x5
	.uleb128 0x46
	.4byte	.LASF580
	.byte	0x5
	.uleb128 0x47
	.4byte	.LASF581
	.byte	0x5
	.uleb128 0x48
	.4byte	.LASF582
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF583
	.byte	0x5
	.uleb128 0x4a
	.4byte	.LASF584
	.byte	0x5
	.uleb128 0x4b
	.4byte	.LASF585
	.byte	0x5
	.uleb128 0x4c
	.4byte	.LASF586
	.byte	0x5
	.uleb128 0x4d
	.4byte	.LASF587
	.byte	0x5
	.uleb128 0x4e
	.4byte	.LASF588
	.byte	0x5
	.uleb128 0x4f
	.4byte	.LASF589
	.byte	0x5
	.uleb128 0x50
	.4byte	.LASF590
	.byte	0x5
	.uleb128 0x51
	.4byte	.LASF591
	.byte	0x5
	.uleb128 0x52
	.4byte	.LASF592
	.byte	0x5
	.uleb128 0x53
	.4byte	.LASF593
	.byte	0x5
	.uleb128 0x54
	.4byte	.LASF594
	.byte	0x5
	.uleb128 0x55
	.4byte	.LASF595
	.byte	0x5
	.uleb128 0x56
	.4byte	.LASF596
	.byte	0x5
	.uleb128 0x57
	.4byte	.LASF597
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.config.h.11.0e2fcb6d4f76322eee6d47d049ae416c,comdat
.Ldebug_macro7:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF599
	.byte	0x5
	.uleb128 0x1c
	.4byte	.LASF600
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF601
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF602
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF603
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF604
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF605
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF606
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF607
	.byte	0x5
	.uleb128 0x48
	.4byte	.LASF608
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF609
	.byte	0x5
	.uleb128 0x4a
	.4byte	.LASF610
	.byte	0x5
	.uleb128 0x4c
	.4byte	.LASF611
	.byte	0x5
	.uleb128 0x4d
	.4byte	.LASF612
	.byte	0x5
	.uleb128 0x4e
	.4byte	.LASF613
	.byte	0x5
	.uleb128 0x52
	.4byte	.LASF614
	.byte	0x5
	.uleb128 0x55
	.4byte	.LASF615
	.byte	0x5
	.uleb128 0x56
	.4byte	.LASF616
	.byte	0x5
	.uleb128 0x57
	.4byte	.LASF617
	.byte	0x5
	.uleb128 0x59
	.4byte	.LASF618
	.byte	0x5
	.uleb128 0x5a
	.4byte	.LASF619
	.byte	0x5
	.uleb128 0x5b
	.4byte	.LASF620
	.byte	0x5
	.uleb128 0x5f
	.4byte	.LASF621
	.byte	0x5
	.uleb128 0x62
	.4byte	.LASF622
	.byte	0x5
	.uleb128 0x63
	.4byte	.LASF623
	.byte	0x5
	.uleb128 0x64
	.4byte	.LASF624
	.byte	0x5
	.uleb128 0x66
	.4byte	.LASF625
	.byte	0x5
	.uleb128 0x67
	.4byte	.LASF626
	.byte	0x5
	.uleb128 0x68
	.4byte	.LASF627
	.byte	0x5
	.uleb128 0x6c
	.4byte	.LASF628
	.byte	0x5
	.uleb128 0x6f
	.4byte	.LASF629
	.byte	0x5
	.uleb128 0x70
	.4byte	.LASF630
	.byte	0x5
	.uleb128 0x71
	.4byte	.LASF631
	.byte	0x5
	.uleb128 0x73
	.4byte	.LASF632
	.byte	0x5
	.uleb128 0x74
	.4byte	.LASF633
	.byte	0x5
	.uleb128 0x75
	.4byte	.LASF634
	.byte	0x5
	.uleb128 0x79
	.4byte	.LASF635
	.byte	0x5
	.uleb128 0x7d
	.4byte	.LASF636
	.byte	0x5
	.uleb128 0x81
	.4byte	.LASF637
	.byte	0x5
	.uleb128 0x85
	.4byte	.LASF638
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.core_v5.h.11.a8b399720fcf062b67213f6b9bf6855a,comdat
.Ldebug_macro8:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF639
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF640
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF641
	.byte	0x5
	.uleb128 0x14
	.4byte	.LASF642
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF643
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF644
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF645
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF646
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF647
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF648
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF649
	.byte	0x5
	.uleb128 0x1c
	.4byte	.LASF650
	.byte	0x5
	.uleb128 0x1d
	.4byte	.LASF651
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF652
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF653
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF654
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF655
	.byte	0x5
	.uleb128 0x22
	.4byte	.LASF656
	.byte	0x5
	.uleb128 0x23
	.4byte	.LASF657
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF658
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF659
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF660
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF661
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF662
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF663
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF664
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF665
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF666
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF667
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF668
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF669
	.byte	0x5
	.uleb128 0x37
	.4byte	.LASF670
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF671
	.byte	0x5
	.uleb128 0x39
	.4byte	.LASF672
	.byte	0x5
	.uleb128 0x3c
	.4byte	.LASF673
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF674
	.byte	0x5
	.uleb128 0x3e
	.4byte	.LASF675
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF676
	.byte	0x5
	.uleb128 0x40
	.4byte	.LASF677
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF678
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF679
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF680
	.byte	0x5
	.uleb128 0x44
	.4byte	.LASF681
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF682
	.byte	0x5
	.uleb128 0x46
	.4byte	.LASF683
	.byte	0x5
	.uleb128 0x47
	.4byte	.LASF684
	.byte	0x5
	.uleb128 0x4a
	.4byte	.LASF685
	.byte	0x5
	.uleb128 0x4b
	.4byte	.LASF686
	.byte	0x5
	.uleb128 0x4c
	.4byte	.LASF687
	.byte	0x5
	.uleb128 0x4d
	.4byte	.LASF688
	.byte	0x5
	.uleb128 0x4e
	.4byte	.LASF689
	.byte	0x5
	.uleb128 0x4f
	.4byte	.LASF690
	.byte	0x5
	.uleb128 0x51
	.4byte	.LASF691
	.byte	0x5
	.uleb128 0x52
	.4byte	.LASF692
	.byte	0x5
	.uleb128 0x53
	.4byte	.LASF693
	.byte	0x5
	.uleb128 0x54
	.4byte	.LASF694
	.byte	0x5
	.uleb128 0x55
	.4byte	.LASF695
	.byte	0x5
	.uleb128 0x56
	.4byte	.LASF696
	.byte	0x5
	.uleb128 0x57
	.4byte	.LASF697
	.byte	0x5
	.uleb128 0x58
	.4byte	.LASF698
	.byte	0x5
	.uleb128 0x59
	.4byte	.LASF699
	.byte	0x5
	.uleb128 0x5c
	.4byte	.LASF700
	.byte	0x5
	.uleb128 0x5d
	.4byte	.LASF701
	.byte	0x5
	.uleb128 0x66
	.4byte	.LASF702
	.byte	0x5
	.uleb128 0x67
	.4byte	.LASF703
	.byte	0x5
	.uleb128 0x68
	.4byte	.LASF704
	.byte	0x5
	.uleb128 0x69
	.4byte	.LASF705
	.byte	0x5
	.uleb128 0x6a
	.4byte	.LASF706
	.byte	0x5
	.uleb128 0x6c
	.4byte	.LASF707
	.byte	0x5
	.uleb128 0x6f
	.4byte	.LASF708
	.byte	0x5
	.uleb128 0x70
	.4byte	.LASF709
	.byte	0x5
	.uleb128 0x71
	.4byte	.LASF710
	.byte	0x5
	.uleb128 0x77
	.4byte	.LASF711
	.byte	0x5
	.uleb128 0x79
	.4byte	.LASF712
	.byte	0x5
	.uleb128 0x7a
	.4byte	.LASF713
	.byte	0x5
	.uleb128 0x7c
	.4byte	.LASF714
	.byte	0x5
	.uleb128 0x7d
	.4byte	.LASF715
	.byte	0x5
	.uleb128 0x7e
	.4byte	.LASF716
	.byte	0x5
	.uleb128 0x7f
	.4byte	.LASF717
	.byte	0x5
	.uleb128 0x80
	.4byte	.LASF718
	.byte	0x5
	.uleb128 0x81
	.4byte	.LASF719
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.csr.h.12.6a8b6193f73193013bdb0f434483b5c6,comdat
.Ldebug_macro9:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF720
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF721
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF722
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF723
	.byte	0x5
	.uleb128 0x14
	.4byte	.LASF724
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF725
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF726
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF727
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF728
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF729
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF730
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF731
	.byte	0x5
	.uleb128 0x1c
	.4byte	.LASF732
	.byte	0x5
	.uleb128 0x1d
	.4byte	.LASF733
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF734
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF735
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF736
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF737
	.byte	0x5
	.uleb128 0x22
	.4byte	.LASF738
	.byte	0x5
	.uleb128 0x23
	.4byte	.LASF739
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF740
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF741
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF742
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF743
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF744
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF745
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF746
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF747
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF748
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF749
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF750
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF751
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF752
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF753
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF754
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF755
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF756
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF757
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF758
	.byte	0x5
	.uleb128 0x37
	.4byte	.LASF759
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF760
	.byte	0x5
	.uleb128 0x39
	.4byte	.LASF761
	.byte	0x5
	.uleb128 0x3a
	.4byte	.LASF762
	.byte	0x5
	.uleb128 0x3b
	.4byte	.LASF763
	.byte	0x5
	.uleb128 0x3c
	.4byte	.LASF764
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF765
	.byte	0x5
	.uleb128 0x3e
	.4byte	.LASF766
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF767
	.byte	0x5
	.uleb128 0x40
	.4byte	.LASF768
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF769
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF770
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF771
	.byte	0x5
	.uleb128 0x44
	.4byte	.LASF772
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF773
	.byte	0x5
	.uleb128 0x46
	.4byte	.LASF774
	.byte	0x5
	.uleb128 0x47
	.4byte	.LASF775
	.byte	0x5
	.uleb128 0x48
	.4byte	.LASF776
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF777
	.byte	0x5
	.uleb128 0x4a
	.4byte	.LASF778
	.byte	0x5
	.uleb128 0x4b
	.4byte	.LASF779
	.byte	0x5
	.uleb128 0x4c
	.4byte	.LASF780
	.byte	0x5
	.uleb128 0x4d
	.4byte	.LASF781
	.byte	0x5
	.uleb128 0x4e
	.4byte	.LASF782
	.byte	0x5
	.uleb128 0x4f
	.4byte	.LASF783
	.byte	0x5
	.uleb128 0x50
	.4byte	.LASF784
	.byte	0x5
	.uleb128 0x51
	.4byte	.LASF785
	.byte	0x5
	.uleb128 0x52
	.4byte	.LASF786
	.byte	0x5
	.uleb128 0x53
	.4byte	.LASF787
	.byte	0x5
	.uleb128 0x54
	.4byte	.LASF788
	.byte	0x5
	.uleb128 0x55
	.4byte	.LASF789
	.byte	0x5
	.uleb128 0x56
	.4byte	.LASF790
	.byte	0x5
	.uleb128 0x57
	.4byte	.LASF791
	.byte	0x5
	.uleb128 0x58
	.4byte	.LASF792
	.byte	0x5
	.uleb128 0x59
	.4byte	.LASF793
	.byte	0x5
	.uleb128 0x5a
	.4byte	.LASF794
	.byte	0x5
	.uleb128 0x5b
	.4byte	.LASF795
	.byte	0x5
	.uleb128 0x5c
	.4byte	.LASF796
	.byte	0x5
	.uleb128 0x5d
	.4byte	.LASF797
	.byte	0x5
	.uleb128 0x5e
	.4byte	.LASF798
	.byte	0x5
	.uleb128 0x5f
	.4byte	.LASF799
	.byte	0x5
	.uleb128 0x60
	.4byte	.LASF800
	.byte	0x5
	.uleb128 0x61
	.4byte	.LASF801
	.byte	0x5
	.uleb128 0x62
	.4byte	.LASF802
	.byte	0x5
	.uleb128 0x63
	.4byte	.LASF803
	.byte	0x5
	.uleb128 0x64
	.4byte	.LASF804
	.byte	0x5
	.uleb128 0x65
	.4byte	.LASF805
	.byte	0x5
	.uleb128 0x66
	.4byte	.LASF806
	.byte	0x5
	.uleb128 0x67
	.4byte	.LASF807
	.byte	0x5
	.uleb128 0x68
	.4byte	.LASF808
	.byte	0x5
	.uleb128 0x69
	.4byte	.LASF809
	.byte	0x5
	.uleb128 0x6a
	.4byte	.LASF810
	.byte	0x5
	.uleb128 0x6b
	.4byte	.LASF811
	.byte	0x5
	.uleb128 0x6c
	.4byte	.LASF812
	.byte	0x5
	.uleb128 0x6d
	.4byte	.LASF813
	.byte	0x5
	.uleb128 0x6e
	.4byte	.LASF814
	.byte	0x5
	.uleb128 0x6f
	.4byte	.LASF815
	.byte	0x5
	.uleb128 0x70
	.4byte	.LASF816
	.byte	0x5
	.uleb128 0x71
	.4byte	.LASF817
	.byte	0x5
	.uleb128 0x72
	.4byte	.LASF818
	.byte	0x5
	.uleb128 0x73
	.4byte	.LASF819
	.byte	0x5
	.uleb128 0x74
	.4byte	.LASF820
	.byte	0x5
	.uleb128 0x75
	.4byte	.LASF821
	.byte	0x5
	.uleb128 0x76
	.4byte	.LASF822
	.byte	0x5
	.uleb128 0x77
	.4byte	.LASF823
	.byte	0x5
	.uleb128 0x78
	.4byte	.LASF824
	.byte	0x5
	.uleb128 0x79
	.4byte	.LASF825
	.byte	0x5
	.uleb128 0x7a
	.4byte	.LASF826
	.byte	0x5
	.uleb128 0x7b
	.4byte	.LASF827
	.byte	0x5
	.uleb128 0x7c
	.4byte	.LASF828
	.byte	0x5
	.uleb128 0x7d
	.4byte	.LASF829
	.byte	0x5
	.uleb128 0x7e
	.4byte	.LASF830
	.byte	0x5
	.uleb128 0x7f
	.4byte	.LASF831
	.byte	0x5
	.uleb128 0x80
	.4byte	.LASF832
	.byte	0x5
	.uleb128 0x81
	.4byte	.LASF833
	.byte	0x5
	.uleb128 0x82
	.4byte	.LASF834
	.byte	0x5
	.uleb128 0x83
	.4byte	.LASF835
	.byte	0x5
	.uleb128 0x84
	.4byte	.LASF836
	.byte	0x5
	.uleb128 0x85
	.4byte	.LASF837
	.byte	0x5
	.uleb128 0x86
	.4byte	.LASF838
	.byte	0x5
	.uleb128 0x87
	.4byte	.LASF839
	.byte	0x5
	.uleb128 0x88
	.4byte	.LASF840
	.byte	0x5
	.uleb128 0x89
	.4byte	.LASF841
	.byte	0x5
	.uleb128 0x8a
	.4byte	.LASF842
	.byte	0x5
	.uleb128 0x8b
	.4byte	.LASF843
	.byte	0x5
	.uleb128 0x8c
	.4byte	.LASF844
	.byte	0x5
	.uleb128 0x8d
	.4byte	.LASF845
	.byte	0x5
	.uleb128 0x8e
	.4byte	.LASF846
	.byte	0x5
	.uleb128 0x8f
	.4byte	.LASF847
	.byte	0x5
	.uleb128 0x90
	.4byte	.LASF848
	.byte	0x5
	.uleb128 0x91
	.4byte	.LASF849
	.byte	0x5
	.uleb128 0x92
	.4byte	.LASF850
	.byte	0x5
	.uleb128 0x93
	.4byte	.LASF851
	.byte	0x5
	.uleb128 0x94
	.4byte	.LASF852
	.byte	0x5
	.uleb128 0x95
	.4byte	.LASF853
	.byte	0x5
	.uleb128 0x96
	.4byte	.LASF854
	.byte	0x5
	.uleb128 0x97
	.4byte	.LASF855
	.byte	0x5
	.uleb128 0x98
	.4byte	.LASF856
	.byte	0x5
	.uleb128 0x99
	.4byte	.LASF857
	.byte	0x5
	.uleb128 0x9a
	.4byte	.LASF858
	.byte	0x5
	.uleb128 0x9b
	.4byte	.LASF859
	.byte	0x5
	.uleb128 0x9c
	.4byte	.LASF860
	.byte	0x5
	.uleb128 0x9d
	.4byte	.LASF861
	.byte	0x5
	.uleb128 0x9e
	.4byte	.LASF862
	.byte	0x5
	.uleb128 0x9f
	.4byte	.LASF863
	.byte	0x5
	.uleb128 0xa0
	.4byte	.LASF864
	.byte	0x5
	.uleb128 0xa1
	.4byte	.LASF865
	.byte	0x5
	.uleb128 0xa2
	.4byte	.LASF866
	.byte	0x5
	.uleb128 0xa3
	.4byte	.LASF867
	.byte	0x5
	.uleb128 0xa4
	.4byte	.LASF868
	.byte	0x5
	.uleb128 0xa5
	.4byte	.LASF869
	.byte	0x5
	.uleb128 0xa6
	.4byte	.LASF870
	.byte	0x5
	.uleb128 0xa7
	.4byte	.LASF871
	.byte	0x5
	.uleb128 0xa8
	.4byte	.LASF872
	.byte	0x5
	.uleb128 0xa9
	.4byte	.LASF873
	.byte	0x5
	.uleb128 0xaa
	.4byte	.LASF874
	.byte	0x5
	.uleb128 0xab
	.4byte	.LASF875
	.byte	0x5
	.uleb128 0xac
	.4byte	.LASF876
	.byte	0x5
	.uleb128 0xad
	.4byte	.LASF877
	.byte	0x5
	.uleb128 0xae
	.4byte	.LASF878
	.byte	0x5
	.uleb128 0xaf
	.4byte	.LASF879
	.byte	0x5
	.uleb128 0xb0
	.4byte	.LASF880
	.byte	0x5
	.uleb128 0xb1
	.4byte	.LASF881
	.byte	0x5
	.uleb128 0xb2
	.4byte	.LASF882
	.byte	0x5
	.uleb128 0xb3
	.4byte	.LASF883
	.byte	0x5
	.uleb128 0xb4
	.4byte	.LASF884
	.byte	0x5
	.uleb128 0xb5
	.4byte	.LASF885
	.byte	0x5
	.uleb128 0xb6
	.4byte	.LASF886
	.byte	0x5
	.uleb128 0xb7
	.4byte	.LASF887
	.byte	0x5
	.uleb128 0xb8
	.4byte	.LASF888
	.byte	0x5
	.uleb128 0xb9
	.4byte	.LASF889
	.byte	0x5
	.uleb128 0xba
	.4byte	.LASF890
	.byte	0x5
	.uleb128 0xbb
	.4byte	.LASF891
	.byte	0x5
	.uleb128 0xbc
	.4byte	.LASF892
	.byte	0x5
	.uleb128 0xbd
	.4byte	.LASF893
	.byte	0x5
	.uleb128 0xbe
	.4byte	.LASF894
	.byte	0x5
	.uleb128 0xbf
	.4byte	.LASF895
	.byte	0x5
	.uleb128 0xc0
	.4byte	.LASF896
	.byte	0x5
	.uleb128 0xc1
	.4byte	.LASF897
	.byte	0x5
	.uleb128 0xc2
	.4byte	.LASF898
	.byte	0x5
	.uleb128 0xc3
	.4byte	.LASF899
	.byte	0x5
	.uleb128 0xc4
	.4byte	.LASF900
	.byte	0x5
	.uleb128 0xc5
	.4byte	.LASF901
	.byte	0x5
	.uleb128 0xc6
	.4byte	.LASF902
	.byte	0x5
	.uleb128 0xc7
	.4byte	.LASF903
	.byte	0x5
	.uleb128 0xc8
	.4byte	.LASF904
	.byte	0x5
	.uleb128 0xc9
	.4byte	.LASF905
	.byte	0x5
	.uleb128 0xca
	.4byte	.LASF906
	.byte	0x5
	.uleb128 0xcb
	.4byte	.LASF907
	.byte	0x5
	.uleb128 0xcc
	.4byte	.LASF908
	.byte	0x5
	.uleb128 0xcd
	.4byte	.LASF909
	.byte	0x5
	.uleb128 0xce
	.4byte	.LASF910
	.byte	0x5
	.uleb128 0xcf
	.4byte	.LASF911
	.byte	0x5
	.uleb128 0xd0
	.4byte	.LASF912
	.byte	0x5
	.uleb128 0xd1
	.4byte	.LASF913
	.byte	0x5
	.uleb128 0xd2
	.4byte	.LASF914
	.byte	0x5
	.uleb128 0xd3
	.4byte	.LASF915
	.byte	0x5
	.uleb128 0xd4
	.4byte	.LASF916
	.byte	0x5
	.uleb128 0xd5
	.4byte	.LASF917
	.byte	0x5
	.uleb128 0xd6
	.4byte	.LASF918
	.byte	0x5
	.uleb128 0xd7
	.4byte	.LASF919
	.byte	0x5
	.uleb128 0xd8
	.4byte	.LASF920
	.byte	0x5
	.uleb128 0xd9
	.4byte	.LASF921
	.byte	0x5
	.uleb128 0xda
	.4byte	.LASF922
	.byte	0x5
	.uleb128 0xdb
	.4byte	.LASF923
	.byte	0x5
	.uleb128 0xdc
	.4byte	.LASF924
	.byte	0x5
	.uleb128 0xdd
	.4byte	.LASF925
	.byte	0x5
	.uleb128 0xde
	.4byte	.LASF926
	.byte	0x5
	.uleb128 0xdf
	.4byte	.LASF927
	.byte	0x5
	.uleb128 0xe0
	.4byte	.LASF928
	.byte	0x5
	.uleb128 0xe1
	.4byte	.LASF929
	.byte	0x5
	.uleb128 0xe2
	.4byte	.LASF930
	.byte	0x5
	.uleb128 0xe3
	.4byte	.LASF931
	.byte	0x5
	.uleb128 0xe4
	.4byte	.LASF932
	.byte	0x5
	.uleb128 0xe5
	.4byte	.LASF933
	.byte	0x5
	.uleb128 0xe6
	.4byte	.LASF934
	.byte	0x5
	.uleb128 0xe7
	.4byte	.LASF935
	.byte	0x5
	.uleb128 0xe8
	.4byte	.LASF936
	.byte	0x5
	.uleb128 0xe9
	.4byte	.LASF937
	.byte	0x5
	.uleb128 0xea
	.4byte	.LASF938
	.byte	0x5
	.uleb128 0xeb
	.4byte	.LASF939
	.byte	0x5
	.uleb128 0xec
	.4byte	.LASF940
	.byte	0x5
	.uleb128 0xed
	.4byte	.LASF941
	.byte	0x5
	.uleb128 0xee
	.4byte	.LASF942
	.byte	0x5
	.uleb128 0xef
	.4byte	.LASF943
	.byte	0x5
	.uleb128 0xf0
	.4byte	.LASF944
	.byte	0x5
	.uleb128 0xf1
	.4byte	.LASF945
	.byte	0x5
	.uleb128 0xf2
	.4byte	.LASF946
	.byte	0x5
	.uleb128 0xf3
	.4byte	.LASF947
	.byte	0x5
	.uleb128 0xf4
	.4byte	.LASF948
	.byte	0x5
	.uleb128 0xf5
	.4byte	.LASF949
	.byte	0x5
	.uleb128 0xf6
	.4byte	.LASF950
	.byte	0x5
	.uleb128 0xf7
	.4byte	.LASF951
	.byte	0x5
	.uleb128 0xf8
	.4byte	.LASF952
	.byte	0x5
	.uleb128 0xf9
	.4byte	.LASF953
	.byte	0x5
	.uleb128 0xfa
	.4byte	.LASF954
	.byte	0x5
	.uleb128 0xfb
	.4byte	.LASF955
	.byte	0x5
	.uleb128 0xfc
	.4byte	.LASF956
	.byte	0x5
	.uleb128 0xfd
	.4byte	.LASF957
	.byte	0x5
	.uleb128 0xfe
	.4byte	.LASF958
	.byte	0x5
	.uleb128 0xff
	.4byte	.LASF959
	.byte	0x5
	.uleb128 0x100
	.4byte	.LASF960
	.byte	0x5
	.uleb128 0x101
	.4byte	.LASF961
	.byte	0x5
	.uleb128 0x102
	.4byte	.LASF962
	.byte	0x5
	.uleb128 0x103
	.4byte	.LASF963
	.byte	0x5
	.uleb128 0x104
	.4byte	.LASF964
	.byte	0x5
	.uleb128 0x105
	.4byte	.LASF965
	.byte	0x5
	.uleb128 0x106
	.4byte	.LASF966
	.byte	0x5
	.uleb128 0x107
	.4byte	.LASF967
	.byte	0x5
	.uleb128 0x108
	.4byte	.LASF968
	.byte	0x5
	.uleb128 0x109
	.4byte	.LASF969
	.byte	0x5
	.uleb128 0x10a
	.4byte	.LASF970
	.byte	0x5
	.uleb128 0x10b
	.4byte	.LASF971
	.byte	0x5
	.uleb128 0x10c
	.4byte	.LASF972
	.byte	0x5
	.uleb128 0x10d
	.4byte	.LASF973
	.byte	0x5
	.uleb128 0x10e
	.4byte	.LASF974
	.byte	0x5
	.uleb128 0x10f
	.4byte	.LASF975
	.byte	0x5
	.uleb128 0x110
	.4byte	.LASF976
	.byte	0x5
	.uleb128 0x111
	.4byte	.LASF977
	.byte	0x5
	.uleb128 0x112
	.4byte	.LASF978
	.byte	0x5
	.uleb128 0x113
	.4byte	.LASF979
	.byte	0x5
	.uleb128 0x114
	.4byte	.LASF980
	.byte	0x5
	.uleb128 0x115
	.4byte	.LASF981
	.byte	0x5
	.uleb128 0x116
	.4byte	.LASF982
	.byte	0x5
	.uleb128 0x117
	.4byte	.LASF983
	.byte	0x5
	.uleb128 0x118
	.4byte	.LASF984
	.byte	0x5
	.uleb128 0x119
	.4byte	.LASF985
	.byte	0x5
	.uleb128 0x11a
	.4byte	.LASF986
	.byte	0x5
	.uleb128 0x11b
	.4byte	.LASF987
	.byte	0x5
	.uleb128 0x11c
	.4byte	.LASF988
	.byte	0x5
	.uleb128 0x11d
	.4byte	.LASF989
	.byte	0x5
	.uleb128 0x11e
	.4byte	.LASF990
	.byte	0x5
	.uleb128 0x11f
	.4byte	.LASF991
	.byte	0x5
	.uleb128 0x120
	.4byte	.LASF992
	.byte	0x5
	.uleb128 0x121
	.4byte	.LASF993
	.byte	0x5
	.uleb128 0x122
	.4byte	.LASF994
	.byte	0x5
	.uleb128 0x123
	.4byte	.LASF995
	.byte	0x5
	.uleb128 0x124
	.4byte	.LASF996
	.byte	0x5
	.uleb128 0x125
	.4byte	.LASF997
	.byte	0x5
	.uleb128 0x126
	.4byte	.LASF998
	.byte	0x5
	.uleb128 0x127
	.4byte	.LASF999
	.byte	0x5
	.uleb128 0x128
	.4byte	.LASF1000
	.byte	0x5
	.uleb128 0x129
	.4byte	.LASF1001
	.byte	0x5
	.uleb128 0x12a
	.4byte	.LASF1002
	.byte	0x5
	.uleb128 0x12b
	.4byte	.LASF1003
	.byte	0x5
	.uleb128 0x12c
	.4byte	.LASF1004
	.byte	0x5
	.uleb128 0x12d
	.4byte	.LASF1005
	.byte	0x5
	.uleb128 0x12e
	.4byte	.LASF1006
	.byte	0x5
	.uleb128 0x12f
	.4byte	.LASF1007
	.byte	0x5
	.uleb128 0x130
	.4byte	.LASF1008
	.byte	0x5
	.uleb128 0x131
	.4byte	.LASF1009
	.byte	0x5
	.uleb128 0x132
	.4byte	.LASF1010
	.byte	0x5
	.uleb128 0x133
	.4byte	.LASF1011
	.byte	0x5
	.uleb128 0x134
	.4byte	.LASF1012
	.byte	0x5
	.uleb128 0x135
	.4byte	.LASF1013
	.byte	0x5
	.uleb128 0x136
	.4byte	.LASF1014
	.byte	0x5
	.uleb128 0x137
	.4byte	.LASF1015
	.byte	0x5
	.uleb128 0x138
	.4byte	.LASF1016
	.byte	0x5
	.uleb128 0x139
	.4byte	.LASF1017
	.byte	0x5
	.uleb128 0x13a
	.4byte	.LASF1018
	.byte	0x5
	.uleb128 0x13b
	.4byte	.LASF1019
	.byte	0x5
	.uleb128 0x13c
	.4byte	.LASF1020
	.byte	0x5
	.uleb128 0x13d
	.4byte	.LASF1021
	.byte	0x5
	.uleb128 0x13e
	.4byte	.LASF1022
	.byte	0x5
	.uleb128 0x13f
	.4byte	.LASF1023
	.byte	0x5
	.uleb128 0x140
	.4byte	.LASF1024
	.byte	0x5
	.uleb128 0x141
	.4byte	.LASF1025
	.byte	0x5
	.uleb128 0x142
	.4byte	.LASF1026
	.byte	0x5
	.uleb128 0x143
	.4byte	.LASF1027
	.byte	0x5
	.uleb128 0x144
	.4byte	.LASF1028
	.byte	0x5
	.uleb128 0x145
	.4byte	.LASF1029
	.byte	0x5
	.uleb128 0x146
	.4byte	.LASF1030
	.byte	0x5
	.uleb128 0x147
	.4byte	.LASF1031
	.byte	0x5
	.uleb128 0x148
	.4byte	.LASF1032
	.byte	0x5
	.uleb128 0x149
	.4byte	.LASF1033
	.byte	0x5
	.uleb128 0x14a
	.4byte	.LASF1034
	.byte	0x5
	.uleb128 0x14b
	.4byte	.LASF1035
	.byte	0x5
	.uleb128 0x14c
	.4byte	.LASF1036
	.byte	0x5
	.uleb128 0x14d
	.4byte	.LASF1037
	.byte	0x5
	.uleb128 0x14e
	.4byte	.LASF1038
	.byte	0x5
	.uleb128 0x14f
	.4byte	.LASF1039
	.byte	0x5
	.uleb128 0x150
	.4byte	.LASF1040
	.byte	0x5
	.uleb128 0x151
	.4byte	.LASF1041
	.byte	0x5
	.uleb128 0x152
	.4byte	.LASF1042
	.byte	0x5
	.uleb128 0x153
	.4byte	.LASF1043
	.byte	0x5
	.uleb128 0x154
	.4byte	.LASF1044
	.byte	0x5
	.uleb128 0x155
	.4byte	.LASF1045
	.byte	0x5
	.uleb128 0x156
	.4byte	.LASF1046
	.byte	0x5
	.uleb128 0x157
	.4byte	.LASF1047
	.byte	0x5
	.uleb128 0x158
	.4byte	.LASF1048
	.byte	0x5
	.uleb128 0x159
	.4byte	.LASF1049
	.byte	0x5
	.uleb128 0x15a
	.4byte	.LASF1050
	.byte	0x5
	.uleb128 0x15b
	.4byte	.LASF1051
	.byte	0x5
	.uleb128 0x15c
	.4byte	.LASF1052
	.byte	0x5
	.uleb128 0x15d
	.4byte	.LASF1053
	.byte	0x5
	.uleb128 0x15e
	.4byte	.LASF1054
	.byte	0x5
	.uleb128 0x15f
	.4byte	.LASF1055
	.byte	0x5
	.uleb128 0x160
	.4byte	.LASF1056
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.core_v5.h.150.770dc028d3bf75340a52b83e3c75b7f1,comdat
.Ldebug_macro10:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x96
	.4byte	.LASF1057
	.byte	0x5
	.uleb128 0x9a
	.4byte	.LASF1058
	.byte	0x5
	.uleb128 0x9d
	.4byte	.LASF1059
	.byte	0x5
	.uleb128 0xa1
	.4byte	.LASF1060
	.byte	0x5
	.uleb128 0xa5
	.4byte	.LASF1061
	.byte	0x5
	.uleb128 0xa9
	.4byte	.LASF1062
	.byte	0x5
	.uleb128 0xad
	.4byte	.LASF1063
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.ae350.h.11.9b8ade9cb9a3aa721d571ace2684b93e,comdat
.Ldebug_macro11:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF1064
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF1065
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF1066
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF1067
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF1068
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF1069
	.byte	0x5
	.uleb128 0x1c
	.4byte	.LASF1070
	.byte	0x5
	.uleb128 0x1d
	.4byte	.LASF1071
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF1072
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF1073
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF1074
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF1075
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF1076
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF1077
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF1078
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF1079
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF1080
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF1081
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF1082
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF1083
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF1084
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF1085
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF1086
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF1087
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF1088
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF1089
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF1090
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF1091
	.byte	0x5
	.uleb128 0x37
	.4byte	.LASF1092
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF1093
	.byte	0x5
	.uleb128 0x39
	.4byte	.LASF1094
	.byte	0x5
	.uleb128 0x3a
	.4byte	.LASF1095
	.byte	0x5
	.uleb128 0x3b
	.4byte	.LASF1096
	.byte	0x5
	.uleb128 0x3c
	.4byte	.LASF1097
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF1098
	.byte	0x5
	.uleb128 0x3e
	.4byte	.LASF1099
	.byte	0x5
	.uleb128 0x46
	.4byte	.LASF1100
	.byte	0x5
	.uleb128 0x47
	.4byte	.LASF1101
	.byte	0x5
	.uleb128 0x48
	.4byte	.LASF1102
	.byte	0x5
	.uleb128 0x147
	.4byte	.LASF1103
	.byte	0x5
	.uleb128 0x149
	.4byte	.LASF1104
	.byte	0x5
	.uleb128 0x14a
	.4byte	.LASF1105
	.byte	0x5
	.uleb128 0x14b
	.4byte	.LASF1106
	.byte	0x5
	.uleb128 0x14c
	.4byte	.LASF1107
	.byte	0x5
	.uleb128 0x14e
	.4byte	.LASF1108
	.byte	0x5
	.uleb128 0x14f
	.4byte	.LASF1109
	.byte	0x5
	.uleb128 0x150
	.4byte	.LASF1110
	.byte	0x5
	.uleb128 0x151
	.4byte	.LASF1111
	.byte	0x5
	.uleb128 0x152
	.4byte	.LASF1112
	.byte	0x5
	.uleb128 0x153
	.4byte	.LASF1113
	.byte	0x5
	.uleb128 0x154
	.4byte	.LASF1114
	.byte	0x5
	.uleb128 0x155
	.4byte	.LASF1115
	.byte	0x5
	.uleb128 0x156
	.4byte	.LASF1116
	.byte	0x5
	.uleb128 0x157
	.4byte	.LASF1117
	.byte	0x5
	.uleb128 0x158
	.4byte	.LASF1118
	.byte	0x5
	.uleb128 0x15a
	.4byte	.LASF1119
	.byte	0x5
	.uleb128 0x15b
	.4byte	.LASF1120
	.byte	0x5
	.uleb128 0x15d
	.4byte	.LASF1121
	.byte	0x5
	.uleb128 0x15e
	.4byte	.LASF1122
	.byte	0x5
	.uleb128 0x160
	.4byte	.LASF1123
	.byte	0x5
	.uleb128 0x161
	.4byte	.LASF1124
	.byte	0x5
	.uleb128 0x162
	.4byte	.LASF1125
	.byte	0x5
	.uleb128 0x163
	.4byte	.LASF1126
	.byte	0x5
	.uleb128 0x169
	.4byte	.LASF1127
	.byte	0x5
	.uleb128 0x16a
	.4byte	.LASF1128
	.byte	0x5
	.uleb128 0x16b
	.4byte	.LASF1129
	.byte	0x5
	.uleb128 0x16c
	.4byte	.LASF1130
	.byte	0x5
	.uleb128 0x16d
	.4byte	.LASF1131
	.byte	0x5
	.uleb128 0x16e
	.4byte	.LASF1132
	.byte	0x5
	.uleb128 0x16f
	.4byte	.LASF1133
	.byte	0x5
	.uleb128 0x170
	.4byte	.LASF1134
	.byte	0x5
	.uleb128 0x171
	.4byte	.LASF1135
	.byte	0x5
	.uleb128 0x172
	.4byte	.LASF1136
	.byte	0x5
	.uleb128 0x173
	.4byte	.LASF1137
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.interrupt.h.13.0dcee1073ff8cb36d3a72d2ab9d9af28,comdat
.Ldebug_macro12:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0xd
	.4byte	.LASF1138
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF1139
	.byte	0x5
	.uleb128 0x1d
	.4byte	.LASF1140
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF1141
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.plic.h.11.044d38cfc207efadf096698b73e4934d,comdat
.Ldebug_macro13:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF1142
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF1143
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF1144
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF1145
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF1146
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF1147
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF1148
	.byte	0x5
	.uleb128 0x22
	.4byte	.LASF1149
	.byte	0x5
	.uleb128 0x23
	.4byte	.LASF1150
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF1151
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF1152
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF1153
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF1154
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.interrupt.h.36.00b89799e9184a0d7dc8454548c339a0,comdat
.Ldebug_macro14:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF1155
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF1156
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF1157
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF1158
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF1159
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF1160
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF1161
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF1162
	.byte	0x5
	.uleb128 0x3c
	.4byte	.LASF1163
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF1164
	.byte	0x5
	.uleb128 0x3e
	.4byte	.LASF1165
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF1166
	.byte	0x5
	.uleb128 0x40
	.4byte	.LASF1167
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF1168
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF1169
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF1170
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.platform.h.31.95a025a6ce47078ae8baeaf811f70af5,comdat
.Ldebug_macro15:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF1171
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF1172
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF1173
	.byte	0x5
	.uleb128 0x22
	.4byte	.LASF1174
	.byte	0x5
	.uleb128 0x23
	.4byte	.LASF1175
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF1176
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF1177
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF1178
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF1179
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF1180
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF1181
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.gpio_ae350.h.22.f4df52d71ab6d81aa3e03960f9daf438,comdat
.Ldebug_macro16:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF1182
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF1183
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF1184
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF1185
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF1186
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF1187
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF1188
	.byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF660:
	.string	"MCAUSE_INT 0x80000000UL"
.LASF1164:
	.string	"HAL_MIE_DISABLE() clear_csr(NDS_MSTATUS, MSTATUS_MIE)"
.LASF248:
	.string	"__FP_FAST_FMAF64 1"
.LASF665:
	.string	"IRQ_S_TIMER 5"
.LASF702:
	.string	"SLL32 sll"
.LASF1024:
	.string	"NDS_MNXTI 0x345"
.LASF264:
	.string	"__FLT128_HAS_QUIET_NAN__ 1"
.LASF323:
	.string	"__riscv 1"
.LASF253:
	.string	"__FLT128_MIN_10_EXP__ (-4931)"
.LASF1065:
	.string	"KHz 1000"
.LASF654:
	.string	"MSTATUS_MPRV 0x00020000"
.LASF303:
	.string	"__CHAR_UNSIGNED__ 1"
.LASF1052:
	.string	"NDS_PMAADDR12 0xbdc"
.LASF1176:
	.string	"DEV_PIT AE350_PIT"
.LASF550:
	.string	"AE350_GPIO_INTR_ENABLE (1UL << 0)"
.LASF256:
	.string	"__FLT128_DECIMAL_DIG__ 36"
.LASF246:
	.string	"__FLT64_HAS_INFINITY__ 1"
.LASF804:
	.string	"NDS_SCAUSE 0x142"
.LASF977:
	.string	"NDS_MCACHE_CTL 0x7ca"
.LASF1096:
	.string	"IRQ_GP14_SOURCE 24"
.LASF932:
	.string	"NDS_MHPMEVENT29 0x33d"
.LASF594:
	.string	"AE350_GPIO_EVENT_PIN28 (1UL << 28)"
.LASF81:
	.string	"__PTRDIFF_MAX__ 0x7fffffff"
.LASF1046:
	.string	"NDS_PMAADDR6 0xbd6"
.LASF1272:
	.string	"intr_mode"
.LASF1274:
	.string	"current_ptr"
.LASF93:
	.string	"__INTMAX_C(c) c ## LL"
.LASF92:
	.string	"__INTMAX_MAX__ 0x7fffffffffffffffLL"
.LASF1223:
	.string	"AE350_DRIVER_GPIO"
.LASF782:
	.string	"NDS_HPMCOUNTER18H 0xc92"
.LASF268:
	.string	"__FLT32X_MIN_EXP__ (-1021)"
.LASF667:
	.string	"IRQ_M_TIMER 7"
.LASF1237:
	.string	"INTRMODE0"
.LASF1238:
	.string	"INTRMODE1"
.LASF1239:
	.string	"INTRMODE2"
.LASF1240:
	.string	"INTRMODE3"
.LASF16:
	.string	"__ATOMIC_CONSUME 1"
.LASF785:
	.string	"NDS_HPMCOUNTER21H 0xc95"
.LASF826:
	.string	"NDS_PMPCFG2 0x3a2"
.LASF284:
	.string	"__FLT64X_DIG__ 33"
.LASF265:
	.string	"__FLT128_IS_IEC_60559__ 1"
.LASF293:
	.string	"__FLT64X_EPSILON__ 1.92592994438723585305597794258492732e-34F64x"
.LASF895:
	.string	"NDS_MHPMCOUNTER21H 0xb95"
.LASF1196:
	.string	"int32_t"
.LASF428:
	.string	"INT64_MAX __INT64_MAX__"
.LASF489:
	.string	"INTMAX_MIN"
.LASF20:
	.string	"__SIZEOF_LONG_LONG__ 8"
.LASF565:
	.string	"AE350_GPIO_SET_DB_PRESCALE (1UL << 15)"
.LASF171:
	.string	"__DBL_MAX_10_EXP__ 308"
.LASF767:
	.string	"NDS_HPMCOUNTER3H 0xc83"
.LASF919:
	.string	"NDS_MHPMEVENT16 0x330"
.LASF835:
	.string	"NDS_PMPADDR7 0x3b7"
.LASF635:
	.string	"DRV_PWM 1"
.LASF641:
	.string	"MSTATUS_UIE 0x00000001"
.LASF96:
	.string	"__INTMAX_WIDTH__ 64"
.LASF861:
	.string	"NDS_MHPMCOUNTER18 0xb12"
.LASF30:
	.string	"__ORDER_PDP_ENDIAN__ 3412"
.LASF506:
	.string	"WCHAR_MIN __WCHAR_MIN__"
.LASF584:
	.string	"AE350_GPIO_EVENT_PIN18 (1UL << 18)"
.LASF552:
	.string	"AE350_GPIO_SET_INTR_LOW_LEVEL (1UL << 2)"
.LASF181:
	.string	"__FP_FAST_FMA 1"
.LASF161:
	.string	"__FLT_HAS_DENORM__ 1"
.LASF45:
	.string	"__INT8_TYPE__ signed char"
.LASF908:
	.string	"NDS_MHPMEVENT5 0x325"
.LASF718:
	.string	"FPPOP XSTR(FPLOAD)"
.LASF222:
	.string	"__FLT32_DECIMAL_DIG__ 9"
.LASF1032:
	.string	"NDS_MINTSEL_JAL 0x7ed"
.LASF315:
	.string	"__GCC_ATOMIC_LLONG_LOCK_FREE 1"
.LASF289:
	.string	"__FLT64X_DECIMAL_DIG__ 36"
.LASF928:
	.string	"NDS_MHPMEVENT25 0x339"
.LASF4:
	.string	"__STDC_UTF_16__ 1"
.LASF207:
	.string	"__FLT16_MAX__ 6.55040000000000000000000000000000000e+4F16"
.LASF430:
	.string	"INT64_MIN (-INT64_MAX - 1)"
.LASF121:
	.string	"__UINT8_C(c) c"
.LASF46:
	.string	"__INT16_TYPE__ short int"
.LASF1249:
	.string	"GPIO_INFO"
.LASF1132:
	.string	"AE350_PIT ((PIT_RegDef *) PIT_BASE )"
.LASF716:
	.string	"REGSIZE XSTR(REGBYTES)"
.LASF982:
	.string	"NDS_MRANDSEQH 0x7fd"
.LASF677:
	.string	"TRAP_S_ECALL 9"
.LASF627:
	.string	"DRV_UART2_DMA_RX_REQID 7"
.LASF290:
	.string	"__FLT64X_MAX__ 1.18973149535723176508575932662800702e+4932F64x"
.LASF1089:
	.string	"IRQ_GP7_SOURCE 17"
.LASF787:
	.string	"NDS_HPMCOUNTER23H 0xc97"
.LASF476:
	.string	"INT_FAST64_MAX __INT_FAST64_MAX__"
.LASF304:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1"
.LASF189:
	.string	"__DECIMAL_DIG__ 36"
.LASF1219:
	.string	"Read"
.LASF6:
	.string	"__STDC_HOSTED__ 0"
.LASF1047:
	.string	"NDS_PMAADDR7 0xbd7"
.LASF1072:
	.string	"UCLKFREQ (OSCFREQ )"
.LASF760:
	.string	"NDS_HPMCOUNTER28 0xc1c"
.LASF64:
	.string	"__INT_FAST64_TYPE__ long long int"
.LASF684:
	.string	"TRAP_M_STACKUDF 33"
.LASF1073:
	.string	"IRQ_RTCPERIOD_SOURCE 1"
.LASF366:
	.string	"__SIZE_T__ "
.LASF225:
	.string	"__FLT32_MIN__ 1.17549435082228750796873653722224568e-38F32"
.LASF424:
	.string	"INT32_MIN (-INT32_MAX - 1)"
.LASF794:
	.string	"NDS_HPMCOUNTER30H 0xc9e"
.LASF221:
	.string	"__FLT32_MAX_10_EXP__ 38"
.LASF912:
	.string	"NDS_MHPMEVENT9 0x329"
.LASF1187:
	.string	"GPIO_INTR_DUAL_EDGE 0x7"
.LASF616:
	.string	"DRV_UART1_DMA_TX_CH 0"
.LASF712:
	.string	"STR(S) #S"
.LASF157:
	.string	"__FLT_NORM_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF1021:
	.string	"NDS_MPPIB 0x7f0"
.LASF231:
	.string	"__FP_FAST_FMAF32 1"
.LASF936:
	.string	"NDS_TDATA1 0x7a1"
.LASF142:
	.string	"__UINTPTR_MAX__ 0xffffffffU"
.LASF1068:
	.string	"CPUFREQ (800 * MHz)"
.LASF633:
	.string	"DRV_SPI_DMA_RX_CH 1"
.LASF1205:
	.string	"pull_opt"
.LASF897:
	.string	"NDS_MHPMCOUNTER23H 0xb97"
.LASF571:
	.string	"AE350_GPIO_EVENT_PIN5 (1UL << 5)"
.LASF1168:
	.string	"HAL_INTERRUPT_DISABLE(vector) __nds__plic_disable_interrupt(vector)"
.LASF889:
	.string	"NDS_MHPMCOUNTER15H 0xb8f"
.LASF905:
	.string	"NDS_MHPMCOUNTER31H 0xb9f"
.LASF549:
	.string	"AE350_GPIO_DB_CLKSRC_P 0x1"
.LASF426:
	.string	"UINT32_MAX __UINT32_MAX__"
.LASF851:
	.string	"NDS_MHPMCOUNTER8 0xb08"
.LASF359:
	.string	"_BSD_PTRDIFF_T_ "
.LASF1010:
	.string	"NDS_SHPMEVENT6 0x9e6"
.LASF389:
	.string	"__WCHAR_T "
.LASF862:
	.string	"NDS_MHPMCOUNTER19 0xb13"
.LASF741:
	.string	"NDS_HPMCOUNTER9 0xc09"
.LASF637:
	.string	"DRV_WDT 1"
.LASF34:
	.string	"__GNUC_EXECUTION_CHARSET_NAME \"UTF-8\""
.LASF135:
	.string	"__INT_FAST64_WIDTH__ 64"
.LASF239:
	.string	"__FLT64_DECIMAL_DIG__ 17"
.LASF452:
	.string	"INT_LEAST64_MAX __INT_LEAST64_MAX__"
.LASF569:
	.string	"AE350_GPIO_EVENT_PIN3 (1UL << 3)"
.LASF574:
	.string	"AE350_GPIO_EVENT_PIN8 (1UL << 8)"
.LASF959:
	.string	"NDS_MSCOUNTEREN 0x321"
.LASF1043:
	.string	"NDS_PMAADDR3 0xbd3"
.LASF236:
	.string	"__FLT64_MIN_10_EXP__ (-307)"
.LASF903:
	.string	"NDS_MHPMCOUNTER29H 0xb9d"
.LASF370:
	.string	"_T_SIZE "
.LASF169:
	.string	"__DBL_MIN_10_EXP__ (-307)"
.LASF524:
	.string	"UINT32_C(c) __UINT32_C(c)"
.LASF29:
	.string	"__ORDER_BIG_ENDIAN__ 4321"
.LASF501:
	.string	"SIZE_MAX"
.LASF560:
	.string	"AE350_GPIO_SET_PULL_UP (1UL << 10)"
.LASF786:
	.string	"NDS_HPMCOUNTER22H 0xc96"
.LASF779:
	.string	"NDS_HPMCOUNTER15H 0xc8f"
.LASF448:
	.string	"INT_LEAST32_MIN (-INT_LEAST32_MAX - 1)"
.LASF1109:
	.string	"SMU_BASE _IO_(0xF0100000)"
.LASF1144:
	.string	"NDS_PLIC_FEATURE_VECTORED (1 << 1)"
.LASF282:
	.string	"__FLT32X_IS_IEC_60559__ 1"
.LASF949:
	.string	"NDS_HCAUSE 0x242"
.LASF334:
	.string	"__riscv_cmodel_medany 1"
.LASF553:
	.string	"AE350_GPIO_SET_INTR_HIGH_LEVEL (1UL << 3)"
.LASF235:
	.string	"__FLT64_MIN_EXP__ (-1021)"
.LASF662:
	.string	"IRQ_S_SOFT 1"
.LASF90:
	.string	"__PTRDIFF_WIDTH__ 32"
.LASF589:
	.string	"AE350_GPIO_EVENT_PIN23 (1UL << 23)"
.LASF136:
	.string	"__UINT_FAST8_MAX__ 0xffffffffU"
.LASF1033:
	.string	"NDS_PUSHMCAUSE 0x7ee"
.LASF997:
	.string	"NDS_SLIE 0x9c4"
.LASF522:
	.string	"UINT16_C(c) __UINT16_C(c)"
.LASF1002:
	.string	"NDS_SCOUNTERMASK_S 0x9d2"
.LASF56:
	.string	"__INT_LEAST64_TYPE__ long long int"
.LASF682:
	.string	"TRAP_M_S_PAGE_FAULT 15"
.LASF288:
	.string	"__FLT64X_MAX_10_EXP__ 4932"
.LASF83:
	.string	"__SCHAR_WIDTH__ 8"
.LASF761:
	.string	"NDS_HPMCOUNTER29 0xc1d"
.LASF131:
	.string	"__INT_FAST16_WIDTH__ 32"
.LASF1098:
	.string	"IRQ_STANDBY_SOURCE 26"
.LASF527:
	.string	"INTMAX_C"
.LASF457:
	.string	"INT_FAST8_MAX"
.LASF1023:
	.string	"NDS_MTVT 0x307"
.LASF686:
	.string	"TRAP_S_L_ACC_FAULT 5"
.LASF137:
	.string	"__UINT_FAST16_MAX__ 0xffffffffU"
.LASF1105:
	.string	"DLM_BASE 0xA0200000"
.LASF706:
	.string	"LOG_REGBYTES 2"
.LASF140:
	.string	"__INTPTR_MAX__ 0x7fffffff"
.LASF212:
	.string	"__FLT16_HAS_DENORM__ 1"
.LASF968:
	.string	"NDS_MDLMB 0x7c1"
.LASF258:
	.string	"__FLT128_NORM_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF388:
	.string	"_T_WCHAR "
.LASF649:
	.string	"MSTATUS_SPP 0x00000100"
.LASF504:
	.string	"WCHAR_MAX __WCHAR_MAX__"
.LASF279:
	.string	"__FLT32X_HAS_INFINITY__ 1"
.LASF468:
	.string	"UINT_FAST16_MAX __UINT_FAST16_MAX__"
.LASF1234:
	.string	"PULLTYPE"
.LASF837:
	.string	"NDS_PMPADDR9 0x3b9"
.LASF797:
	.string	"NDS_SEDELEG 0x102"
.LASF57:
	.string	"__UINT_LEAST8_TYPE__ unsigned char"
.LASF564:
	.string	"AE350_GPIO_SET_DB_CLKSRC (1UL << 14)"
.LASF579:
	.string	"AE350_GPIO_EVENT_PIN13 (1UL << 13)"
.LASF562:
	.string	"AE350_GPIO_DB_ENABLE (1UL << 12)"
.LASF840:
	.string	"NDS_PMPADDR12 0x3bc"
.LASF328:
	.string	"__riscv_muldiv 1"
.LASF1195:
	.string	"long int"
.LASF413:
	.string	"UINT8_MAX"
.LASF606:
	.string	"DRV_GPIO 1"
.LASF502:
	.string	"SIZE_MAX __SIZE_MAX__"
.LASF821:
	.string	"NDS_MCAUSE 0x342"
.LASF134:
	.string	"__INT_FAST64_MAX__ 0x7fffffffffffffffLL"
.LASF272:
	.string	"__FLT32X_DECIMAL_DIG__ 17"
.LASF983:
	.string	"NDS_MRANDSTATE 0x7fe"
.LASF1116:
	.string	"I2C_BASE _IO_(0xF0A00000)"
.LASF280:
	.string	"__FLT32X_HAS_QUIET_NAN__ 1"
.LASF867:
	.string	"NDS_MHPMCOUNTER24 0xb18"
.LASF1215:
	.string	"Uninitialize"
.LASF714:
	.string	"PUSH XSTR(STORE)"
.LASF1009:
	.string	"NDS_SHPMEVENT5 0x9e5"
.LASF541:
	.string	"AE350_DRIVER_ERROR_TIMEOUT -3"
.LASF1064:
	.string	"__AE350_H__ "
.LASF61:
	.string	"__INT_FAST8_TYPE__ int"
.LASF1100:
	.string	"__I volatile const"
.LASF365:
	.string	"__size_t__ "
.LASF252:
	.string	"__FLT128_MIN_EXP__ (-16381)"
.LASF95:
	.string	"__UINTMAX_C(c) c ## ULL"
.LASF1170:
	.string	"HAL_INTERRUPT_SET_LEVEL(vector,level) __nds__plic_set_priority(vector, level)"
.LASF33:
	.string	"__SIZEOF_POINTER__ 4"
.LASF53:
	.string	"__INT_LEAST8_TYPE__ signed char"
.LASF1099:
	.string	"IRQ_WAKEUP_SOURCE 27"
.LASF307:
	.string	"__GCC_ATOMIC_BOOL_LOCK_FREE 2"
.LASF318:
	.string	"__GCC_HAVE_DWARF2_CFI_ASM 1"
.LASF739:
	.string	"NDS_HPMCOUNTER7 0xc07"
.LASF479:
	.string	"UINT_FAST64_MAX"
.LASF469:
	.string	"INT_FAST32_MAX"
.LASF1019:
	.string	"NDS_SLEEPVALUE 0x811"
.LASF220:
	.string	"__FLT32_MAX_EXP__ 128"
.LASF438:
	.string	"UINT_LEAST8_MAX __UINT_LEAST8_MAX__"
.LASF991:
	.string	"NDS_MSLIDELEG 0x7d5"
.LASF41:
	.string	"__UINTMAX_TYPE__ long long unsigned int"
.LASF687:
	.string	"TRAP_S_S_ACC_FAULT 7"
.LASF195:
	.string	"__LDBL_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966L"
.LASF1253:
	.string	"cfg_reg"
.LASF35:
	.string	"__GNUC_WIDE_EXECUTION_CHARSET_NAME \"UTF-32LE\""
.LASF462:
	.string	"UINT_FAST8_MAX __UINT_FAST8_MAX__"
.LASF360:
	.string	"___int_ptrdiff_t_h "
.LASF377:
	.string	"_SIZE_T_DECLARED "
.LASF414:
	.string	"UINT8_MAX __UINT8_MAX__"
.LASF43:
	.string	"__CHAR32_TYPE__ long unsigned int"
.LASF499:
	.string	"SIG_ATOMIC_MIN"
.LASF1163:
	.string	"HAL_MIE_ENABLE() set_csr(NDS_MSTATUS, MSTATUS_MIE)"
.LASF1057:
	.string	"read_csr(reg) ({ unsigned long __tmp; asm volatile (\"csrr %0, \" XSTR(reg) : \"=r\"(__tmp)); __tmp; })"
.LASF1281:
	.string	"GNU C17 13.2.0 -mabi=ilp32d -mcmodel=medany -mtune=rocket -misa-spec=20191213 -march=rv32imafdc_zicsr -g3 -O0 -ffreestanding -flax-vector-conversions -fno-common -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF182:
	.string	"__DBL_IS_IEC_60559__ 1"
.LASF678:
	.string	"TRAP_H_ECALL 10"
.LASF138:
	.string	"__UINT_FAST32_MAX__ 0xffffffffU"
.LASF153:
	.string	"__FLT_MAX_EXP__ 128"
.LASF19:
	.string	"__SIZEOF_LONG__ 4"
.LASF773:
	.string	"NDS_HPMCOUNTER9H 0xc89"
.LASF1268:
	.string	"gpio_initialize"
.LASF630:
	.string	"DRV_SPI_DMA_TX_CH 0"
.LASF820:
	.string	"NDS_MEPC 0x341"
.LASF1243:
	.string	"DEBOUNCEEN"
.LASF488:
	.string	"INTMAX_MAX __INTMAX_MAX__"
.LASF116:
	.string	"__INT_LEAST32_WIDTH__ 32"
.LASF188:
	.string	"__LDBL_MAX_10_EXP__ 4932"
.LASF1114:
	.string	"RTC_BASE _IO_(0xF0600000)"
.LASF783:
	.string	"NDS_HPMCOUNTER19H 0xc93"
.LASF693:
	.string	"MIP_MSIP (1 << IRQ_M_SOFT)"
.LASF910:
	.string	"NDS_MHPMEVENT7 0x327"
.LASF1254:
	.string	"gpio_get_status"
.LASF244:
	.string	"__FLT64_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F64"
.LASF653:
	.string	"MSTATUS_XS 0x00018000"
.LASF1118:
	.string	"SPI_BASE _IO_(0xF0F00000)"
.LASF327:
	.string	"__riscv_div 1"
.LASF1161:
	.string	"HAL_MSWI_PENDING() __nds__plic_sw_set_pending(1)"
.LASF152:
	.string	"__FLT_MIN_10_EXP__ (-37)"
.LASF241:
	.string	"__FLT64_NORM_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF636:
	.string	"DRV_RTC 1"
.LASF708:
	.string	"FPSTORE fsd"
.LASF155:
	.string	"__FLT_DECIMAL_DIG__ 9"
.LASF954:
	.string	"NDS_MIBASE 0x382"
.LASF1171:
	.string	"DEV_PLMT AE350_PLMT"
.LASF1092:
	.string	"IRQ_GP10_SOURCE 20"
.LASF554:
	.string	"AE350_GPIO_SET_INTR_NEGATIVE_EDGE (1UL << 4)"
.LASF1193:
	.string	"signed char"
.LASF1081:
	.string	"IRQ_UART2_SOURCE 9"
.LASF746:
	.string	"NDS_HPMCOUNTER14 0xc0e"
.LASF1197:
	.string	"uint8_t"
.LASF409:
	.string	"INT8_MAX"
.LASF490:
	.string	"INTMAX_MIN (-INTMAX_MAX - 1)"
.LASF516:
	.string	"INT32_C(c) __INT32_C(c)"
.LASF227:
	.string	"__FLT32_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F32"
.LASF990:
	.string	"NDS_MCOUNTEROVF 0x7d4"
.LASF301:
	.string	"__GNUC_STDC_INLINE__ 1"
.LASF1222:
	.string	"GetStatus"
.LASF163:
	.string	"__FLT_HAS_QUIET_NAN__ 1"
.LASF9:
	.string	"__GNUC_PATCHLEVEL__ 0"
.LASF538:
	.string	"AE350_DRIVER_OK 0"
.LASF310:
	.string	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2"
.LASF495:
	.string	"PTRDIFF_MIN"
.LASF218:
	.string	"__FLT32_MIN_EXP__ (-125)"
.LASF122:
	.string	"__UINT_LEAST16_MAX__ 0xffff"
.LASF486:
	.string	"UINTPTR_MAX __UINTPTR_MAX__"
.LASF3:
	.string	"__STDC_VERSION__ 201710L"
.LASF1183:
	.string	"GPIO_INTR_HIGH_LEVEL 0x2"
.LASF1248:
	.string	"cb_event"
.LASF1270:
	.string	"gpio_read"
.LASF1120:
	.string	"AHB_EXT_BASE _IO_(0xE8000000)"
.LASF277:
	.string	"__FLT32X_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F32x"
.LASF1273:
	.string	"hart_id"
.LASF238:
	.string	"__FLT64_MAX_10_EXP__ 308"
.LASF1227:
	.string	"DATAIN"
.LASF509:
	.string	"WINT_MIN"
.LASF813:
	.string	"NDS_MISA 0x301"
.LASF1282:
	.string	"Driver_GPIO"
.LASF376:
	.string	"_BSD_SIZE_T_DEFINED_ "
.LASF1225:
	.string	"RESERVED0"
.LASF1256:
	.string	"cfg_info"
.LASF1232:
	.string	"RESERVED2"
.LASF5:
	.string	"__STDC_UTF_32__ 1"
.LASF1236:
	.string	"INTREN"
.LASF226:
	.string	"__FLT32_EPSILON__ 1.19209289550781250000000000000000000e-7F32"
.LASF431:
	.string	"UINT64_MAX"
.LASF154:
	.string	"__FLT_MAX_10_EXP__ 38"
.LASF967:
	.string	"NDS_MILMB 0x7c0"
.LASF446:
	.string	"INT_LEAST32_MAX __INT_LEAST32_MAX__"
.LASF848:
	.string	"NDS_MHPMCOUNTER5 0xb05"
.LASF628:
	.string	"DRV_SPI 1"
.LASF811:
	.string	"NDS_MHARTID 0xf14"
.LASF285:
	.string	"__FLT64X_MIN_EXP__ (-16381)"
.LASF12:
	.string	"__ATOMIC_SEQ_CST 5"
.LASF1012:
	.string	"NDS_MSAVEEPC1 0x7d7"
.LASF378:
	.string	"__DEFINED_size_t "
.LASF998:
	.string	"NDS_SLIP 0x9c5"
.LASF162:
	.string	"__FLT_HAS_INFINITY__ 1"
.LASF758:
	.string	"NDS_HPMCOUNTER26 0xc1a"
.LASF956:
	.string	"NDS_MDBASE 0x384"
.LASF262:
	.string	"__FLT128_HAS_DENORM__ 1"
.LASF657:
	.string	"MSTATUS_VM 0x1F000000"
.LASF555:
	.string	"AE350_GPIO_SET_INTR_POSITIVE_EDGE (1UL << 5)"
.LASF911:
	.string	"NDS_MHPMEVENT8 0x328"
.LASF105:
	.string	"__UINT16_MAX__ 0xffff"
.LASF593:
	.string	"AE350_GPIO_EVENT_PIN27 (1UL << 27)"
.LASF192:
	.string	"__LDBL_NORM_MAX__ 1.18973149535723176508575932662800702e+4932L"
.LASF73:
	.string	"__SHRT_MAX__ 0x7fff"
.LASF672:
	.string	"IRQ_HOST 13"
.LASF508:
	.string	"WINT_MAX __WINT_MAX__"
.LASF799:
	.string	"NDS_SIE 0x104"
.LASF465:
	.string	"INT_FAST16_MIN"
.LASF938:
	.string	"NDS_TDATA3 0x7a3"
.LASF187:
	.string	"__LDBL_MAX_EXP__ 16384"
.LASF958:
	.string	"NDS_MUCOUNTEREN 0x320"
.LASF21:
	.string	"__SIZEOF_SHORT__ 2"
.LASF972:
	.string	"NDS_MPFT_CTL 0x7c5"
.LASF542:
	.string	"AE350_DRIVER_ERROR_UNSUPPORTED -4"
.LASF934:
	.string	"NDS_MHPMEVENT31 0x33f"
.LASF747:
	.string	"NDS_HPMCOUNTER15 0xc0f"
.LASF699:
	.string	"MIP_MEIP (1 << IRQ_M_EXT)"
.LASF472:
	.string	"INT_FAST32_MIN (-INT_FAST32_MAX - 1)"
.LASF374:
	.string	"_SIZE_T_DEFINED_ "
.LASF402:
	.string	"NULL"
.LASF1226:
	.string	"RESERVED1"
.LASF437:
	.string	"UINT_LEAST8_MAX"
.LASF1235:
	.string	"RESERVED3"
.LASF520:
	.string	"UINT8_C(c) __UINT8_C(c)"
.LASF1242:
	.string	"RESERVED4"
.LASF1246:
	.string	"GPIO_RegDef"
.LASF259:
	.string	"__FLT128_MIN__ 3.36210314311209350626267781732175260e-4932F128"
.LASF815:
	.string	"NDS_MIDELEG 0x303"
.LASF319:
	.string	"__PRAGMA_REDEFINE_EXTNAME 1"
.LASF352:
	.string	"_STDDEF_H_ "
.LASF659:
	.string	"MSTATUS64_SD 0x8000000000000000"
.LASF545:
	.string	"AE350_GPIO_API_VERSION AE350_DRIVER_VERSION_MAJOR_MINOR(2, 02)"
.LASF72:
	.string	"__SCHAR_MAX__ 0x7f"
.LASF540:
	.string	"AE350_DRIVER_ERROR_BUSY -2"
.LASF1182:
	.string	"GPIO_INTER_NONE 0x0"
.LASF305:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1"
.LASF496:
	.string	"PTRDIFF_MIN (-PTRDIFF_MAX - 1)"
.LASF792:
	.string	"NDS_HPMCOUNTER28H 0xc9c"
.LASF1040:
	.string	"NDS_PMAADDR0 0xbd0"
.LASF824:
	.string	"NDS_PMPCFG0 0x3a0"
.LASF68:
	.string	"__UINT_FAST64_TYPE__ long long unsigned int"
.LASF1051:
	.string	"NDS_PMAADDR11 0xbdb"
.LASF1121:
	.string	"PLIC_BASE _IO_(0xE4000000)"
.LASF734:
	.string	"NDS_INSTRET 0xc02"
.LASF679:
	.string	"TRAP_M_ECALL 11"
.LASF724:
	.string	"NDS_USCRATCH 0x040"
.LASF802:
	.string	"NDS_SSCRATCH 0x140"
.LASF849:
	.string	"NDS_MHPMCOUNTER6 0xb06"
.LASF232:
	.string	"__FLT32_IS_IEC_60559__ 1"
.LASF27:
	.string	"__BIGGEST_ALIGNMENT__ 16"
.LASF10:
	.string	"__VERSION__ \"13.2.0\""
.LASF331:
	.string	"__riscv_fdiv 1"
.LASF992:
	.string	"NDS_MCCTLBEGINADDR 0x7cb"
.LASF205:
	.string	"__FLT16_MAX_10_EXP__ 4"
.LASF1129:
	.string	"AE350_SMU ((SMU_RegDef *) SMU_BASE )"
.LASF477:
	.string	"INT_FAST64_MIN"
.LASF531:
	.string	"_GCC_WRAP_STDINT_H "
.LASF115:
	.string	"__INT32_C(c) c ## L"
.LASF876:
	.string	"NDS_MINSTRETH 0xb82"
.LASF863:
	.string	"NDS_MHPMCOUNTER20 0xb14"
.LASF979:
	.string	"NDS_DEXC2DBG 0x7e0"
.LASF1050:
	.string	"NDS_PMAADDR10 0xbda"
.LASF1016:
	.string	"NDS_SCOUNTINHIBIT 0x9e0"
.LASF104:
	.string	"__UINT8_MAX__ 0xff"
.LASF159:
	.string	"__FLT_EPSILON__ 1.19209289550781250000000000000000000e-7F"
.LASF1152:
	.string	"PLIC_THRESHOLD_SHIFT_PER_TARGET 12"
.LASF1221:
	.string	"Control"
.LASF719:
	.string	"FPREGSIZE XSTR(FPREGBYTES)"
.LASF1245:
	.string	"RESERVED5"
.LASF178:
	.string	"__DBL_HAS_DENORM__ 1"
.LASF599:
	.string	"__CONFIG_H__ "
.LASF765:
	.string	"NDS_TIMEH 0xc81"
.LASF615:
	.string	"DRV_UART1_DMA_TX_EN 0"
.LASF650:
	.string	"MSTATUS_HPP 0x00000600"
.LASF730:
	.string	"NDS_FRM 0x002"
.LASF711:
	.string	"FPREGBYTES (1 << LOG_FPREGBYTES)"
.LASF473:
	.string	"UINT_FAST32_MAX"
.LASF632:
	.string	"DRV_SPI_DMA_RX_EN 0"
.LASF878:
	.string	"NDS_MHPMCOUNTER4H 0xb84"
.LASF71:
	.string	"__GXX_ABI_VERSION 1018"
.LASF111:
	.string	"__INT_LEAST16_MAX__ 0x7fff"
.LASF893:
	.string	"NDS_MHPMCOUNTER19H 0xb93"
.LASF939:
	.string	"NDS_TINFO 0x7a4"
.LASF254:
	.string	"__FLT128_MAX_EXP__ 16384"
.LASF784:
	.string	"NDS_HPMCOUNTER20H 0xc94"
.LASF748:
	.string	"NDS_HPMCOUNTER16 0xc10"
.LASF1214:
	.string	"Initialize"
.LASF929:
	.string	"NDS_MHPMEVENT26 0x33a"
.LASF434:
	.string	"INT_LEAST8_MAX __INT_LEAST8_MAX__"
.LASF125:
	.string	"__UINT32_C(c) c ## UL"
.LASF620:
	.string	"DRV_UART1_DMA_RX_REQID 5"
.LASF1269:
	.string	"__tmp"
.LASF1264:
	.string	"gpio_pinread"
.LASF1275:
	.string	"current"
.LASF825:
	.string	"NDS_PMPCFG1 0x3a1"
.LASF206:
	.string	"__FLT16_DECIMAL_DIG__ 5"
.LASF692:
	.string	"MIP_HSIP (1 << IRQ_H_SOFT)"
.LASF23:
	.string	"__SIZEOF_DOUBLE__ 8"
.LASF604:
	.string	"BUILD_XIP 3"
.LASF639:
	.string	"__CORE_V5_H__ "
.LASF822:
	.string	"NDS_MTVAL 0x343"
.LASF830:
	.string	"NDS_PMPADDR2 0x3b2"
.LASF640:
	.string	"SUPPORT_PFT_ARCH 1"
.LASF1167:
	.string	"HAL_INTERRUPT_ENABLE(vector) __nds__plic_enable_interrupt(vector)"
.LASF557:
	.string	"AE350_GPIO_INTR_CLEAR (1UL << 7)"
.LASF1279:
	.string	"priority"
.LASF312:
	.string	"__GCC_ATOMIC_SHORT_LOCK_FREE 2"
.LASF845:
	.string	"NDS_MINSTRET 0xb02"
.LASF539:
	.string	"AE350_DRIVER_ERROR -1"
.LASF950:
	.string	"NDS_HBADADDR 0x243"
.LASF674:
	.string	"TRAP_M_L_ACC_FAULT 5"
.LASF1220:
	.string	"SetDir"
.LASF316:
	.string	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1"
.LASF537:
	.string	"AE350_DRIVER_VERSION_MAJOR_MINOR(major,minor) (((major) << 8) | (minor))"
.LASF731:
	.string	"NDS_FCSR 0x003"
.LASF343:
	.string	"__ELF__ 1"
.LASF900:
	.string	"NDS_MHPMCOUNTER26H 0xb9a"
.LASF1123:
	.string	"BMC_BASE _IO_(0xC0000000)"
.LASF664:
	.string	"IRQ_M_SOFT 3"
.LASF78:
	.string	"__WCHAR_MIN__ (-__WCHAR_MAX__ - 1)"
.LASF766:
	.string	"NDS_INSTRETH 0xc82"
.LASF675:
	.string	"TRAP_M_S_ACC_FAULT 7"
.LASF230:
	.string	"__FLT32_HAS_QUIET_NAN__ 1"
.LASF591:
	.string	"AE350_GPIO_EVENT_PIN25 (1UL << 25)"
.LASF764:
	.string	"NDS_CYCLEH 0xc80"
.LASF197:
	.string	"__LDBL_HAS_INFINITY__ 1"
.LASF1153:
	.string	"PLIC_CLAIM_OFFSET (0x00200004UL)"
.LASF1137:
	.string	"AE350_SPI ((SPI_RegDef *) SPI_BASE )"
.LASF420:
	.string	"UINT16_MAX __UINT16_MAX__"
.LASF339:
	.string	"__riscv_f 2002000"
.LASF559:
	.string	"AE350_GPIO_PULL_DISABLE (1UL << 9)"
.LASF703:
	.string	"STORE sw"
.LASF993:
	.string	"NDS_MCCTLCOMMAND 0x7cc"
.LASF671:
	.string	"IRQ_COP 12"
.LASF533:
	.string	"bool _Bool"
.LASF1115:
	.string	"GPIO_BASE _IO_(0xF0700000)"
.LASF1157:
	.string	"HAL_MTIME_DISABLE() clear_csr(NDS_MIE, MIP_MTIP);"
.LASF492:
	.string	"UINTMAX_MAX __UINTMAX_MAX__"
.LASF98:
	.string	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)"
.LASF922:
	.string	"NDS_MHPMEVENT19 0x333"
.LASF120:
	.string	"__UINT_LEAST8_MAX__ 0xff"
.LASF314:
	.string	"__GCC_ATOMIC_LONG_LOCK_FREE 2"
.LASF1062:
	.string	"read_fcsr() ({ unsigned long __tmp; asm volatile (\"frcsr %0\" : \"=r\"(__tmp)); __tmp; })"
.LASF1101:
	.string	"__O volatile"
.LASF416:
	.string	"INT16_MAX __INT16_MAX__"
.LASF296:
	.string	"__FLT64X_HAS_INFINITY__ 1"
.LASF164:
	.string	"__FP_FAST_FMAF 1"
.LASF749:
	.string	"NDS_HPMCOUNTER17 0xc11"
.LASF173:
	.string	"__DBL_MAX__ ((double)1.79769313486231570814527423731704357e+308L)"
.LASF828:
	.string	"NDS_PMPADDR0 0x3b0"
.LASF1185:
	.string	"GPIO_INTR_NEGATIVE_EDGE 0x5"
.LASF892:
	.string	"NDS_MHPMCOUNTER18H 0xb92"
.LASF425:
	.string	"UINT32_MAX"
.LASF1143:
	.string	"NDS_PLIC_FEATURE_PREEMPT (1 << 0)"
.LASF581:
	.string	"AE350_GPIO_EVENT_PIN15 (1UL << 15)"
.LASF113:
	.string	"__INT_LEAST16_WIDTH__ 16"
.LASF147:
	.string	"__DEC_EVAL_METHOD__ 2"
.LASF974:
	.string	"NDS_MSP_BOUND 0x7c7"
.LASF348:
	.string	"__GPIO_AE350_H__ "
.LASF1053:
	.string	"NDS_PMAADDR13 0xbdd"
.LASF819:
	.string	"NDS_MSCRATCH 0x340"
.LASF1218:
	.string	"Write"
.LASF885:
	.string	"NDS_MHPMCOUNTER11H 0xb8b"
.LASF403:
	.string	"NULL ((void *)0)"
.LASF858:
	.string	"NDS_MHPMCOUNTER15 0xb0f"
.LASF945:
	.string	"NDS_HIE 0x204"
.LASF904:
	.string	"NDS_MHPMCOUNTER30H 0xb9e"
.LASF753:
	.string	"NDS_HPMCOUNTER21 0xc15"
.LASF638:
	.string	"DRV_PIT 1"
.LASF624:
	.string	"DRV_UART2_DMA_TX_REQID 6"
.LASF920:
	.string	"NDS_MHPMEVENT17 0x331"
.LASF865:
	.string	"NDS_MHPMCOUNTER22 0xb16"
.LASF404:
	.string	"__need_NULL"
.LASF558:
	.string	"AE350_GPIO_PULL_ENABLE (1UL << 8)"
.LASF646:
	.string	"MSTATUS_SPIE 0x00000020"
.LASF525:
	.string	"UINT64_C"
.LASF300:
	.string	"__USER_LABEL_PREFIX__ "
.LASF107:
	.string	"__UINT64_MAX__ 0xffffffffffffffffULL"
.LASF459:
	.string	"INT_FAST8_MIN"
.LASF458:
	.string	"INT_FAST8_MAX __INT_FAST8_MAX__"
.LASF781:
	.string	"NDS_HPMCOUNTER17H 0xc91"
.LASF106:
	.string	"__UINT32_MAX__ 0xffffffffUL"
.LASF1048:
	.string	"NDS_PMAADDR8 0xbd8"
.LASF814:
	.string	"NDS_MEDELEG 0x302"
.LASF518:
	.string	"INT64_C(c) __INT64_C(c)"
.LASF1133:
	.string	"AE350_WDT ((WDT_RegDef *) WDT_BASE )"
.LASF108:
	.string	"__INT_LEAST8_MAX__ 0x7f"
.LASF317:
	.string	"__GCC_ATOMIC_POINTER_LOCK_FREE 2"
.LASF13:
	.string	"__ATOMIC_ACQUIRE 2"
.LASF844:
	.string	"NDS_MCYCLE 0xb00"
.LASF717:
	.string	"FPPUSH XSTR(FPSTORE)"
.LASF896:
	.string	"NDS_MHPMCOUNTER22H 0xb96"
.LASF347:
	.string	"__RTTHREAD__ 1"
.LASF984:
	.string	"NDS_MRANDSTATEH 0x7ff"
.LASF1103:
	.string	"_IO_(addr) (addr)"
.LASF877:
	.string	"NDS_MHPMCOUNTER3H 0xb83"
.LASF270:
	.string	"__FLT32X_MAX_EXP__ 1024"
.LASF626:
	.string	"DRV_UART2_DMA_RX_CH 1"
.LASF344:
	.string	"USE_M_TIME 1"
.LASF124:
	.string	"__UINT_LEAST32_MAX__ 0xffffffffUL"
.LASF629:
	.string	"DRV_SPI_DMA_TX_EN 0"
.LASF1038:
	.string	"NDS_PMACFG2 0xbc2"
.LASF1067:
	.string	"OSCFREQ (100 * MHz)"
.LASF119:
	.string	"__INT_LEAST64_WIDTH__ 64"
.LASF478:
	.string	"INT_FAST64_MIN (-INT_FAST64_MAX - 1)"
.LASF850:
	.string	"NDS_MHPMCOUNTER7 0xb07"
.LASF1029:
	.string	"NDS_MSAVEDCAUSE2 0x7dc"
.LASF100:
	.string	"__INT8_MAX__ 0x7f"
.LASF710:
	.string	"LOG_FPREGBYTES 3"
.LASF1056:
	.string	"NDS_MMSC_CFG2 0xfc3"
.LASF62:
	.string	"__INT_FAST16_TYPE__ int"
.LASF1277:
	.string	"__nds__plic_enable_interrupt"
.LASF800:
	.string	"NDS_STVEC 0x105"
.LASF596:
	.string	"AE350_GPIO_EVENT_PIN30 (1UL << 30)"
.LASF84:
	.string	"__SHRT_WIDTH__ 16"
.LASF643:
	.string	"MSTATUS_HIE 0x00000004"
.LASF144:
	.string	"__GCC_IEC_559_COMPLEX 2"
.LASF50:
	.string	"__UINT16_TYPE__ short unsigned int"
.LASF1005:
	.string	"NDS_SMISC_CTL 0x9d0"
.LASF607:
	.string	"DRV_I2C 1"
.LASF190:
	.string	"__LDBL_DECIMAL_DIG__ 36"
.LASF132:
	.string	"__INT_FAST32_MAX__ 0x7fffffff"
.LASF286:
	.string	"__FLT64X_MIN_10_EXP__ (-4931)"
.LASF1263:
	.string	"gpio_write"
.LASF1252:
	.string	"status"
.LASF827:
	.string	"NDS_PMPCFG3 0x3a3"
.LASF1151:
	.string	"PLIC_THRESHOLD_OFFSET (0x00200000UL)"
.LASF471:
	.string	"INT_FAST32_MIN"
.LASF369:
	.string	"_T_SIZE_ "
.LASF146:
	.string	"__FLT_EVAL_METHOD_TS_18661_3__ 0"
.LASF988:
	.string	"NDS_MCOUNTERMASK_S 0x7d2"
.LASF194:
	.string	"__LDBL_EPSILON__ 1.92592994438723585305597794258492732e-34L"
.LASF467:
	.string	"UINT_FAST16_MAX"
.LASF996:
	.string	"NDS_UCCTLCOMMAND 0x80c"
.LASF65:
	.string	"__UINT_FAST8_TYPE__ unsigned int"
.LASF210:
	.string	"__FLT16_EPSILON__ 9.76562500000000000000000000000000000e-4F16"
.LASF805:
	.string	"NDS_STVAL 0x143"
.LASF866:
	.string	"NDS_MHPMCOUNTER23 0xb17"
.LASF1139:
	.string	"USE_PLIC "
.LASF102:
	.string	"__INT32_MAX__ 0x7fffffffL"
.LASF491:
	.string	"UINTMAX_MAX"
.LASF1058:
	.string	"write_csr(reg,val) ({ asm volatile (\"csrw \" XSTR(reg) \", %0\" :: \"rK\"(val)); })"
.LASF117:
	.string	"__INT_LEAST64_MAX__ 0x7fffffffffffffffLL"
.LASF1224:
	.string	"IDREV"
.LASF1088:
	.string	"IRQ_GP6_SOURCE 16"
.LASF743:
	.string	"NDS_HPMCOUNTER11 0xc0b"
.LASF961:
	.string	"NDS_UITB 0x800"
.LASF1074:
	.string	"IRQ_RTCALARM_SOURCE 2"
.LASF586:
	.string	"AE350_GPIO_EVENT_PIN20 (1UL << 20)"
.LASF215:
	.string	"__FLT16_IS_IEC_60559__ 1"
.LASF216:
	.string	"__FLT32_MANT_DIG__ 24"
.LASF1001:
	.string	"NDS_SCOUNTERINTEN 0x9cf"
.LASF433:
	.string	"INT_LEAST8_MAX"
.LASF727:
	.string	"NDS_UTVAL 0x043"
.LASF406:
	.string	"offsetof(TYPE,MEMBER) __builtin_offsetof (TYPE, MEMBER)"
.LASF127:
	.string	"__UINT64_C(c) c ## ULL"
.LASF60:
	.string	"__UINT_LEAST64_TYPE__ long long unsigned int"
.LASF942:
	.string	"NDS_HSTATUS 0x200"
.LASF957:
	.string	"NDS_MDBOUND 0x385"
.LASF410:
	.string	"INT8_MAX __INT8_MAX__"
.LASF283:
	.string	"__FLT64X_MANT_DIG__ 113"
.LASF1031:
	.string	"NDS_MIRQ_ENTRY 0x7ec"
.LASF924:
	.string	"NDS_MHPMEVENT21 0x335"
.LASF704:
	.string	"LOAD lw"
.LASF309:
	.string	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2"
.LASF528:
	.string	"INTMAX_C(c) __INTMAX_C(c)"
.LASF1030:
	.string	"NDS_PUSHMXSTATUS 0x7eb"
.LASF943:
	.string	"NDS_HEDELEG 0x202"
.LASF170:
	.string	"__DBL_MAX_EXP__ 1024"
.LASF890:
	.string	"NDS_MHPMCOUNTER16H 0xb90"
.LASF14:
	.string	"__ATOMIC_RELEASE 3"
.LASF461:
	.string	"UINT_FAST8_MAX"
.LASF149:
	.string	"__FLT_MANT_DIG__ 24"
.LASF63:
	.string	"__INT_FAST32_TYPE__ int"
.LASF605:
	.string	"CFG_BURN "
.LASF740:
	.string	"NDS_HPMCOUNTER8 0xc08"
.LASF669:
	.string	"IRQ_H_EXT 10"
.LASF1136:
	.string	"AE350_I2C ((I2C_RegDef *) I2C_BASE )"
.LASF1104:
	.string	"ILM_BASE 0xA0000000"
.LASF546:
	.string	"AE350_GPIO_DIR_INPUT 0x0"
.LASF751:
	.string	"NDS_HPMCOUNTER19 0xc13"
.LASF544:
	.string	"AE350_DRIVER_ERROR_SPECIFIC -6"
.LASF1069:
	.string	"RTCFREQ (32768 )"
.LASF242:
	.string	"__FLT64_MIN__ 2.22507385850720138309023271733240406e-308F64"
.LASF485:
	.string	"UINTPTR_MAX"
.LASF355:
	.string	"_T_PTRDIFF_ "
.LASF1244:
	.string	"DEBOUNCECTRL"
.LASF576:
	.string	"AE350_GPIO_EVENT_PIN10 (1UL << 10)"
.LASF103:
	.string	"__INT64_MAX__ 0x7fffffffffffffffLL"
.LASF203:
	.string	"__FLT16_MIN_10_EXP__ (-4)"
.LASF595:
	.string	"AE350_GPIO_EVENT_PIN29 (1UL << 29)"
.LASF778:
	.string	"NDS_HPMCOUNTER14H 0xc8e"
.LASF269:
	.string	"__FLT32X_MIN_10_EXP__ (-307)"
.LASF353:
	.string	"_ANSI_STDDEF_H "
.LASF909:
	.string	"NDS_MHPMEVENT6 0x326"
.LASF1231:
	.string	"DOUTSET"
.LASF1184:
	.string	"GPIO_INTR_LOW_LEVEL 0x3"
.LASF648:
	.string	"MSTATUS_MPIE 0x00000080"
.LASF1147:
	.string	"PLIC_PENDING_OFFSET (0x00001000UL)"
.LASF634:
	.string	"DRV_SPI_DMA_RX_REQID 3"
.LASF295:
	.string	"__FLT64X_HAS_DENORM__ 1"
.LASF1126:
	.string	"APBBRG_BASE _IO_(0xF0000000)"
.LASF7:
	.string	"__GNUC__ 13"
.LASF1061:
	.string	"clear_csr(reg,bit) ({ unsigned long __tmp; asm volatile (\"csrrc %0, \" XSTR(reg) \", %1\" : \"=r\"(__tmp) : \"rK\"(bit)); __tmp; })"
.LASF503:
	.string	"WCHAR_MAX"
.LASF1022:
	.string	"NDS_MFIOB 0x7f1"
.LASF86:
	.string	"__LONG_WIDTH__ 32"
.LASF1159:
	.string	"HAL_MSWI_ENABLE() set_csr(NDS_MIE, MIP_MSIP)"
.LASF387:
	.string	"_T_WCHAR_ "
.LASF422:
	.string	"INT32_MAX __INT32_MAX__"
.LASF1014:
	.string	"NDS_MSAVEEPC2 0x7d9"
.LASF937:
	.string	"NDS_TDATA2 0x7a2"
.LASF697:
	.string	"MIP_SEIP (1 << IRQ_S_EXT)"
.LASF271:
	.string	"__FLT32X_MAX_10_EXP__ 308"
.LASF1086:
	.string	"IRQ_GP4_SOURCE 14"
.LASF609:
	.string	"DRV_I2C_DMA_TX_CH 2"
.LASF335:
	.string	"__riscv_arch_test 1"
.LASF383:
	.string	"__need_size_t"
.LASF567:
	.string	"AE350_GPIO_EVENT_PIN1 (1UL << 1)"
.LASF572:
	.string	"AE350_GPIO_EVENT_PIN6 (1UL << 6)"
.LASF372:
	.string	"_SIZE_T_ "
.LASF148:
	.string	"__FLT_RADIX__ 2"
.LASF1191:
	.string	"long long int"
.LASF715:
	.string	"POP XSTR(LOAD)"
.LASF585:
	.string	"AE350_GPIO_EVENT_PIN19 (1UL << 19)"
.LASF415:
	.string	"INT16_MAX"
.LASF481:
	.string	"INTPTR_MAX"
.LASF1036:
	.string	"NDS_PMACFG0 0xbc0"
.LASF384:
	.string	"__wchar_t__ "
.LASF198:
	.string	"__LDBL_HAS_QUIET_NAN__ 1"
.LASF809:
	.string	"NDS_MARCHID 0xf12"
.LASF899:
	.string	"NDS_MHPMCOUNTER25H 0xb99"
.LASF709:
	.string	"FPLOAD fld"
.LASF87:
	.string	"__LONG_LONG_WIDTH__ 64"
.LASF676:
	.string	"TRAP_U_ECALL 8"
.LASF354:
	.string	"_PTRDIFF_T "
.LASF763:
	.string	"NDS_HPMCOUNTER31 0xc1f"
.LASF1142:
	.string	"__PLIC_H__ "
.LASF336:
	.string	"__riscv_i 2001000"
.LASF1284:
	.string	"__nds__plic_set_priority"
.LASF1271:
	.string	"gpio_get_version"
.LASF1127:
	.string	"AE350_PLMT ((PLMT_RegDef *) PLMT_BASE )"
.LASF141:
	.string	"__INTPTR_WIDTH__ 32"
.LASF2:
	.string	"__STDC__ 1"
.LASF621:
	.string	"DRV_UART2 1"
.LASF1066:
	.string	"MHz 1000000"
.LASF952:
	.string	"NDS_MBASE 0x380"
.LASF873:
	.string	"NDS_MHPMCOUNTER30 0xb1e"
.LASF460:
	.string	"INT_FAST8_MIN (-INT_FAST8_MAX - 1)"
.LASF237:
	.string	"__FLT64_MAX_EXP__ 1024"
.LASF419:
	.string	"UINT16_MAX"
.LASF1266:
	.string	"gpio_pinwrite"
.LASF1084:
	.string	"IRQ_GP2_SOURCE 12"
.LASF191:
	.string	"__LDBL_MAX__ 1.18973149535723176508575932662800702e+4932L"
.LASF89:
	.string	"__WINT_WIDTH__ 32"
.LASF48:
	.string	"__INT64_TYPE__ long long int"
.LASF1280:
	.string	"priority_ptr"
.LASF26:
	.string	"__CHAR_BIT__ 8"
.LASF320:
	.string	"__SIZEOF_WCHAR_T__ 4"
.LASF1107:
	.string	"DDRMEM_BASE 0x00000000"
.LASF1141:
	.string	"NDS_PLIC_SW_BASE PLIC_SW_BASE"
.LASF1258:
	.string	"mask"
.LASF989:
	.string	"NDS_MCOUNTERMASK_U 0x7d3"
.LASF612:
	.string	"DRV_I2C_DMA_RX_CH 3"
.LASF752:
	.string	"NDS_HPMCOUNTER20 0xc14"
.LASF973:
	.string	"NDS_MHSP_CTL 0x7c6"
.LASF1017:
	.string	"NDS_UDCAUSE 0x809"
.LASF1000:
	.string	"NDS_SCCTLDATA 0x9cd"
.LASF165:
	.string	"__FLT_IS_IEC_60559__ 1"
.LASF427:
	.string	"INT64_MAX"
.LASF204:
	.string	"__FLT16_MAX_EXP__ 16"
.LASF906:
	.string	"NDS_MHPMEVENT3 0x323"
.LASF696:
	.string	"MIP_MTIP (1 << IRQ_M_TIMER)"
.LASF926:
	.string	"NDS_MHPMEVENT23 0x337"
.LASF1083:
	.string	"IRQ_GP1_SOURCE 11"
.LASF881:
	.string	"NDS_MHPMCOUNTER7H 0xb87"
.LASF1208:
	.string	"channel_num"
.LASF31:
	.string	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF484:
	.string	"INTPTR_MIN (-INTPTR_MAX - 1)"
.LASF480:
	.string	"UINT_FAST64_MAX __UINT_FAST64_MAX__"
.LASF38:
	.string	"__WCHAR_TYPE__ int"
.LASF923:
	.string	"NDS_MHPMEVENT20 0x334"
.LASF772:
	.string	"NDS_HPMCOUNTER8H 0xc88"
.LASF964:
	.string	"NDS_MICM_CFG 0xfc0"
.LASF864:
	.string	"NDS_MHPMCOUNTER21 0xb15"
.LASF946:
	.string	"NDS_HTVEC 0x205"
.LASF808:
	.string	"NDS_MVENDORID 0xf11"
.LASF798:
	.string	"NDS_SIDELEG 0x103"
.LASF39:
	.string	"__WINT_TYPE__ unsigned int"
.LASF1049:
	.string	"NDS_PMAADDR9 0xbd9"
.LASF418:
	.string	"INT16_MIN (-INT16_MAX - 1)"
.LASF655:
	.string	"MSTATUS_PUM 0x00040000"
.LASF623:
	.string	"DRV_UART2_DMA_TX_CH 0"
.LASF614:
	.string	"DRV_UART1 1"
.LASF886:
	.string	"NDS_MHPMCOUNTER12H 0xb8c"
.LASF701:
	.string	"MDLMB_DEN (0x1UL)"
.LASF1190:
	.string	"unsigned int"
.LASF1035:
	.string	"NDS_UCODE 0x801"
.LASF689:
	.string	"TRAP_S_L_PAGE_FAULT 13"
.LASF1028:
	.string	"NDS_MSAVEDCAUSE1 0x7db"
.LASF1013:
	.string	"NDS_MSAVECAUSE1 0x7d8"
.LASF847:
	.string	"NDS_MHPMCOUNTER4 0xb04"
.LASF151:
	.string	"__FLT_MIN_EXP__ (-125)"
.LASF247:
	.string	"__FLT64_HAS_QUIET_NAN__ 1"
.LASF570:
	.string	"AE350_GPIO_EVENT_PIN4 (1UL << 4)"
.LASF575:
	.string	"AE350_GPIO_EVENT_PIN9 (1UL << 9)"
.LASF875:
	.string	"NDS_MCYCLEH 0xb80"
.LASF291:
	.string	"__FLT64X_NORM_MAX__ 1.18973149535723176508575932662800702e+4932F64x"
.LASF273:
	.string	"__FLT32X_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF245:
	.string	"__FLT64_HAS_DENORM__ 1"
.LASF150:
	.string	"__FLT_DIG__ 6"
.LASF532:
	.string	"_STDBOOL_H "
.LASF398:
	.string	"_WCHAR_T_DECLARED "
.LASF543:
	.string	"AE350_DRIVER_ERROR_PARAMETER -5"
.LASF145:
	.string	"__FLT_EVAL_METHOD__ 0"
.LASF829:
	.string	"NDS_PMPADDR1 0x3b1"
.LASF156:
	.string	"__FLT_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF1211:
	.string	"_AE350_DRIVER_VERSION"
.LASF447:
	.string	"INT_LEAST32_MIN"
.LASF129:
	.string	"__INT_FAST8_WIDTH__ 32"
.LASF658:
	.string	"MSTATUS32_SD 0x80000000"
.LASF725:
	.string	"NDS_UEPC 0x041"
.LASF356:
	.string	"_T_PTRDIFF "
.LASF513:
	.string	"INT16_C"
.LASF1241:
	.string	"INTRSTATUS"
.LASF255:
	.string	"__FLT128_MAX_10_EXP__ 4932"
.LASF202:
	.string	"__FLT16_MIN_EXP__ (-13)"
.LASF143:
	.string	"__GCC_IEC_559 2"
.LASF436:
	.string	"INT_LEAST8_MIN (-INT_LEAST8_MAX - 1)"
.LASF440:
	.string	"INT_LEAST16_MAX __INT_LEAST16_MAX__"
.LASF1124:
	.string	"AHBDEC_BASE _IO_(0xE0000000)"
.LASF322:
	.string	"__SIZEOF_PTRDIFF_T__ 4"
.LASF362:
	.string	"_PTRDIFF_T_DECLARED "
.LASF962:
	.string	"NDS_DSCRATCH0 0x7b2"
.LASF32:
	.string	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF1173:
	.string	"DEV_SMU AE350_SMU"
.LASF397:
	.string	"_GCC_WCHAR_T "
.LASF583:
	.string	"AE350_GPIO_EVENT_PIN17 (1UL << 17)"
.LASF917:
	.string	"NDS_MHPMEVENT14 0x32e"
.LASF44:
	.string	"__SIG_ATOMIC_TYPE__ int"
.LASF432:
	.string	"UINT64_MAX __UINT64_MAX__"
.LASF535:
	.string	"false 0"
.LASF330:
	.string	"__riscv_flen 64"
.LASF411:
	.string	"INT8_MIN"
.LASF1122:
	.string	"PLIC_SW_BASE _IO_(0xE6400000)"
.LASF774:
	.string	"NDS_HPMCOUNTER10H 0xc8a"
.LASF1206:
	.string	"intr_opt"
.LASF510:
	.string	"WINT_MIN __WINT_MIN__"
.LASF530:
	.string	"UINTMAX_C(c) __UINTMAX_C(c)"
.LASF695:
	.string	"MIP_HTIP (1 << IRQ_H_TIMER)"
.LASF1027:
	.string	"NDS_MSCRATCHCSWL 0x349"
.LASF442:
	.string	"INT_LEAST16_MIN (-INT_LEAST16_MAX - 1)"
.LASF1125:
	.string	"PLDM_BASE _IO_(0xE6800000)"
.LASF1181:
	.string	"DEV_SPI AE350_SPI"
.LASF308:
	.string	"__GCC_ATOMIC_CHAR_LOCK_FREE 2"
.LASF1106:
	.string	"SPIMEM_BASE 0x80000000"
.LASF806:
	.string	"NDS_SIP 0x144"
.LASF902:
	.string	"NDS_MHPMCOUNTER28H 0xb9c"
.LASF1071:
	.string	"PCLKFREQ (OSCFREQ )"
.LASF281:
	.string	"__FP_FAST_FMAF32x 1"
.LASF1045:
	.string	"NDS_PMAADDR5 0xbd5"
.LASF1198:
	.string	"unsigned char"
.LASF801:
	.string	"NDS_SCOUNTEREN 0x106"
.LASF1079:
	.string	"IRQ_GPIO_SOURCE 7"
.LASF475:
	.string	"INT_FAST64_MAX"
.LASF625:
	.string	"DRV_UART2_DMA_RX_EN 0"
.LASF1213:
	.string	"GetVersion"
.LASF219:
	.string	"__FLT32_MIN_10_EXP__ (-37)"
.LASF379:
	.string	"___int_size_t_h "
.LASF1094:
	.string	"IRQ_GP12_SOURCE 22"
.LASF386:
	.string	"_WCHAR_T "
.LASF342:
	.string	"__riscv_zicsr 2000000"
.LASF160:
	.string	"__FLT_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F"
.LASF916:
	.string	"NDS_MHPMEVENT13 0x32d"
.LASF512:
	.string	"INT8_C(c) __INT8_C(c)"
.LASF1015:
	.string	"NDS_MSAVECAUSE2 0x7da"
.LASF361:
	.string	"_GCC_PTRDIFF_T "
.LASF183:
	.string	"__LDBL_MANT_DIG__ 113"
.LASF791:
	.string	"NDS_HPMCOUNTER27H 0xc9b"
.LASF853:
	.string	"NDS_MHPMCOUNTER10 0xb0a"
.LASF1008:
	.string	"NDS_SHPMEVENT4 0x9e4"
.LASF573:
	.string	"AE350_GPIO_EVENT_PIN7 (1UL << 7)"
.LASF1091:
	.string	"IRQ_GP9_SOURCE 19"
.LASF894:
	.string	"NDS_MHPMCOUNTER20H 0xb94"
.LASF947:
	.string	"NDS_HSCRATCH 0x240"
.LASF367:
	.string	"_SIZE_T "
.LASF394:
	.string	"_WCHAR_T_H "
.LASF921:
	.string	"NDS_MHPMEVENT18 0x332"
.LASF963:
	.string	"NDS_DSCRATCH1 0x7b3"
.LASF735:
	.string	"NDS_HPMCOUNTER3 0xc03"
.LASF770:
	.string	"NDS_HPMCOUNTER6H 0xc86"
.LASF76:
	.string	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL"
.LASF925:
	.string	"NDS_MHPMEVENT22 0x336"
.LASF200:
	.string	"__FLT16_MANT_DIG__ 11"
.LASF1192:
	.string	"long double"
.LASF498:
	.string	"SIG_ATOMIC_MAX __SIG_ATOMIC_MAX__"
.LASF859:
	.string	"NDS_MHPMCOUNTER16 0xb10"
.LASF732:
	.string	"NDS_CYCLE 0xc00"
.LASF948:
	.string	"NDS_HEPC 0x241"
.LASF443:
	.string	"UINT_LEAST16_MAX"
.LASF1162:
	.string	"HAL_MSWI_CLEAR() __nds__plic_sw_claim_interrupt()"
.LASF1140:
	.string	"NDS_PLIC_BASE PLIC_BASE"
.LASF297:
	.string	"__FLT64X_HAS_QUIET_NAN__ 1"
.LASF251:
	.string	"__FLT128_DIG__ 33"
.LASF109:
	.string	"__INT8_C(c) c"
.LASF729:
	.string	"NDS_FFLAGS 0x001"
.LASF500:
	.string	"SIG_ATOMIC_MIN __SIG_ATOMIC_MIN__"
.LASF870:
	.string	"NDS_MHPMCOUNTER27 0xb1b"
.LASF1200:
	.string	"short unsigned int"
.LASF454:
	.string	"INT_LEAST64_MIN (-INT_LEAST64_MAX - 1)"
.LASF294:
	.string	"__FLT64X_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F64x"
.LASF168:
	.string	"__DBL_MIN_EXP__ (-1021)"
.LASF371:
	.string	"__SIZE_T "
.LASF1251:
	.string	"gpio_info"
.LASF587:
	.string	"AE350_GPIO_EVENT_PIN21 (1UL << 21)"
.LASF412:
	.string	"INT8_MIN (-INT8_MAX - 1)"
.LASF1160:
	.string	"HAL_MSWI_DISABLE() clear_csr(NDS_MIE, MIP_MSIP)"
.LASF613:
	.string	"DRV_I2C_DMA_RX_REQID 8"
.LASF208:
	.string	"__FLT16_NORM_MAX__ 6.55040000000000000000000000000000000e+4F16"
.LASF217:
	.string	"__FLT32_DIG__ 6"
.LASF985:
	.string	"NDS_MCOUNTERWEN 0x7ce"
.LASF439:
	.string	"INT_LEAST16_MAX"
.LASF455:
	.string	"UINT_LEAST64_MAX"
.LASF1165:
	.string	"HAL_MEIP_ENABLE() set_csr(NDS_MIE, MIP_MEIP)"
.LASF563:
	.string	"AE350_GPIO_DB_DISABLE (1UL << 13)"
.LASF901:
	.string	"NDS_MHPMCOUNTER27H 0xb9b"
.LASF1217:
	.string	"PinRead"
.LASF588:
	.string	"AE350_GPIO_EVENT_PIN22 (1UL << 22)"
.LASF1004:
	.string	"NDS_SCOUNTEROVF 0x9d4"
.LASF688:
	.string	"TRAP_S_I_PAGE_FAULT 12"
.LASF1093:
	.string	"IRQ_GP11_SOURCE 21"
.LASF713:
	.string	"XSTR(S) STR(S)"
.LASF769:
	.string	"NDS_HPMCOUNTER5H 0xc85"
.LASF196:
	.string	"__LDBL_HAS_DENORM__ 1"
.LASF306:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1"
.LASF421:
	.string	"INT32_MAX"
.LASF275:
	.string	"__FLT32X_MIN__ 2.22507385850720138309023271733240406e-308F32x"
.LASF274:
	.string	"__FLT32X_NORM_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF341:
	.string	"__riscv_c 2000000"
.LASF768:
	.string	"NDS_HPMCOUNTER4H 0xc84"
.LASF474:
	.string	"UINT_FAST32_MAX __UINT_FAST32_MAX__"
.LASF55:
	.string	"__INT_LEAST32_TYPE__ long int"
.LASF1026:
	.string	"NDS_MSCRATCHCSW 0x348"
.LASF742:
	.string	"NDS_HPMCOUNTER10 0xc0a"
.LASF126:
	.string	"__UINT_LEAST64_MAX__ 0xffffffffffffffffULL"
.LASF263:
	.string	"__FLT128_HAS_INFINITY__ 1"
.LASF139:
	.string	"__UINT_FAST64_MAX__ 0xffffffffffffffffULL"
.LASF854:
	.string	"NDS_MHPMCOUNTER11 0xb0b"
.LASF249:
	.string	"__FLT64_IS_IEC_60559__ 1"
.LASF590:
	.string	"AE350_GPIO_EVENT_PIN24 (1UL << 24)"
.LASF816:
	.string	"NDS_MIE 0x304"
.LASF1204:
	.string	"AE350_DRIVER_VERSION"
.LASF28:
	.string	"__ORDER_LITTLE_ENDIAN__ 1234"
.LASF823:
	.string	"NDS_MIP 0x344"
.LASF1082:
	.string	"IRQ_DMA_SOURCE 10"
.LASF1203:
	.string	"long long unsigned int"
.LASF1076:
	.string	"IRQ_GP0_SOURCE 4"
.LASF736:
	.string	"NDS_HPMCOUNTER4 0xc04"
.LASF726:
	.string	"NDS_UCAUSE 0x042"
.LASF578:
	.string	"AE350_GPIO_EVENT_PIN12 (1UL << 12)"
.LASF199:
	.string	"__LDBL_IS_IEC_60559__ 1"
.LASF37:
	.string	"__PTRDIFF_TYPE__ int"
.LASF375:
	.string	"_SIZE_T_DEFINED "
.LASF79:
	.string	"__WINT_MAX__ 0xffffffffU"
.LASF451:
	.string	"INT_LEAST64_MAX"
.LASF1199:
	.string	"uint16_t"
.LASF1007:
	.string	"NDS_SHPMEVENT3 0x9e3"
.LASF357:
	.string	"__PTRDIFF_T "
.LASF67:
	.string	"__UINT_FAST32_TYPE__ unsigned int"
.LASF975:
	.string	"NDS_MSP_BASE 0x7c8"
.LASF435:
	.string	"INT_LEAST8_MIN"
.LASF1207:
	.string	"debounce_opt"
.LASF1202:
	.string	"long unsigned int"
.LASF211:
	.string	"__FLT16_DENORM_MIN__ 5.96046447753906250000000000000000000e-8F16"
.LASF871:
	.string	"NDS_MHPMCOUNTER28 0xb1c"
.LASF602:
	.string	"BUILD_LOAD 1"
.LASF656:
	.string	"MSTATUS_MXR 0x00080000"
.LASF517:
	.string	"INT64_C"
.LASF868:
	.string	"NDS_MHPMCOUNTER25 0xb19"
.LASF58:
	.string	"__UINT_LEAST16_TYPE__ short unsigned int"
.LASF42:
	.string	"__CHAR16_TYPE__ short unsigned int"
.LASF721:
	.string	"NDS_USTATUS 0x000"
.LASF298:
	.string	"__FLT64X_IS_IEC_60559__ 1"
.LASF267:
	.string	"__FLT32X_DIG__ 15"
.LASF1212:
	.string	"_AE350_DRIVER_GPIO"
.LASF795:
	.string	"NDS_HPMCOUNTER31H 0xc9f"
.LASF1150:
	.string	"PLIC_ENABLE_SHIFT_PER_TARGET 7"
.LASF17:
	.string	"__FINITE_MATH_ONLY__ 0"
.LASF966:
	.string	"NDS_MMSC_CFG 0xfc2"
.LASF130:
	.string	"__INT_FAST16_MAX__ 0x7fffffff"
.LASF622:
	.string	"DRV_UART2_DMA_TX_EN 0"
.LASF700:
	.string	"MILMB_IEN (0x1UL)"
.LASF494:
	.string	"PTRDIFF_MAX __PTRDIFF_MAX__"
.LASF329:
	.string	"__riscv_xlen 32"
.LASF841:
	.string	"NDS_PMPADDR13 0x3bd"
.LASF382:
	.string	"__size_t "
.LASF393:
	.string	"_WCHAR_T_DEFINED "
.LASF1034:
	.string	"NDS_PUSHMEPC 0x7ef"
.LASF960:
	.string	"NDS_MHCOUNTEREN 0x322"
.LASF1078:
	.string	"IRQ_I2C_SOURCE 6"
.LASF408:
	.string	"_GCC_STDINT_H "
.LASF645:
	.string	"MSTATUS_UPIE 0x00000010"
.LASF705:
	.string	"LWU lw"
.LASF855:
	.string	"NDS_MHPMCOUNTER12 0xb0c"
.LASF1090:
	.string	"IRQ_GP8_SOURCE 18"
.LASF423:
	.string	"INT32_MIN"
.LASF1130:
	.string	"AE350_UART1 ((UART_RegDef *) UART1_BASE )"
.LASF338:
	.string	"__riscv_a 2001000"
.LASF373:
	.string	"_BSD_SIZE_T_ "
.LASF505:
	.string	"WCHAR_MIN"
.LASF1278:
	.string	"source"
.LASF1011:
	.string	"NDS_MSAVESTATUS 0x7d6"
.LASF390:
	.string	"_WCHAR_T_ "
.LASF534:
	.string	"true 1"
.LASF444:
	.string	"UINT_LEAST16_MAX __UINT_LEAST16_MAX__"
.LASF1003:
	.string	"NDS_SCOUNTERMASK_U 0x9d3"
.LASF737:
	.string	"NDS_HPMCOUNTER5 0xc05"
.LASF935:
	.string	"NDS_TSELECT 0x7a0"
.LASF611:
	.string	"DRV_I2C_DMA_RX_EN 0"
.LASF651:
	.string	"MSTATUS_MPP 0x00001800"
.LASF1156:
	.string	"HAL_MTIME_ENABLE() set_csr(NDS_MIE, MIP_MTIP)"
.LASF647:
	.string	"MSTATUS_HPIE 0x00000040"
.LASF470:
	.string	"INT_FAST32_MAX __INT_FAST32_MAX__"
.LASF780:
	.string	"NDS_HPMCOUNTER16H 0xc90"
.LASF396:
	.string	"__INT_WCHAR_T_H "
.LASF1077:
	.string	"IRQ_SPI_SOURCE 5"
.LASF796:
	.string	"NDS_SSTATUS 0x100"
.LASF1055:
	.string	"NDS_PMAADDR15 0xbdf"
.LASF547:
	.string	"AE350_GPIO_DIR_OUTPUT 0x1"
.LASF872:
	.string	"NDS_MHPMCOUNTER29 0xb1d"
.LASF707:
	.string	"REGBYTES (1 << LOG_REGBYTES)"
.LASF417:
	.string	"INT16_MIN"
.LASF483:
	.string	"INTPTR_MIN"
.LASF631:
	.string	"DRV_SPI_DMA_TX_REQID 2"
.LASF722:
	.string	"NDS_UIE 0x004"
.LASF1155:
	.string	"HAL_MTIMER_INITIAL() "
.LASF391:
	.string	"_BSD_WCHAR_T_ "
.LASF175:
	.string	"__DBL_MIN__ ((double)2.22507385850720138309023271733240406e-308L)"
.LASF325:
	.string	"__riscv_atomic 1"
.LASF292:
	.string	"__FLT64X_MIN__ 3.36210314311209350626267781732175260e-4932F64x"
.LASF1006:
	.string	"NDS_SCOUNTERMASK_M 0x9d1"
.LASF1158:
	.string	"HAL_MSWI_INITIAL() { __nds__plic_sw_set_priority(1, 1); __nds__plic_sw_enable_interrupt(1); }"
.LASF77:
	.string	"__WCHAR_MAX__ 0x7fffffff"
.LASF214:
	.string	"__FLT16_HAS_QUIET_NAN__ 1"
.LASF1041:
	.string	"NDS_PMAADDR1 0xbd1"
.LASF1070:
	.string	"HCLKFREQ (OSCFREQ )"
.LASF8:
	.string	"__GNUC_MINOR__ 2"
.LASF1146:
	.string	"PLIC_PRIORITY_SHIFT_PER_SOURCE 2"
.LASF874:
	.string	"NDS_MHPMCOUNTER31 0xb1f"
.LASF59:
	.string	"__UINT_LEAST32_TYPE__ long unsigned int"
.LASF186:
	.string	"__LDBL_MIN_10_EXP__ (-4931)"
.LASF40:
	.string	"__INTMAX_TYPE__ long long int"
.LASF842:
	.string	"NDS_PMPADDR14 0x3be"
.LASF313:
	.string	"__GCC_ATOMIC_INT_LOCK_FREE 2"
.LASF1209:
	.string	"AE350_CFG_STATUS"
.LASF1018:
	.string	"NDS_WFE 0x810"
.LASF276:
	.string	"__FLT32X_EPSILON__ 2.22044604925031308084726333618164062e-16F32x"
.LASF487:
	.string	"INTMAX_MAX"
.LASF788:
	.string	"NDS_HPMCOUNTER24H 0xc98"
.LASF260:
	.string	"__FLT128_EPSILON__ 1.92592994438723585305597794258492732e-34F128"
.LASF407:
	.string	"_GCC_MAX_ALIGN_T "
.LASF598:
	.string	"__PLATFORM_H__ "
.LASF381:
	.string	"_SIZET_ "
.LASF1087:
	.string	"IRQ_GP5_SOURCE 15"
.LASF1210:
	.string	"AE350_GPIO_SignalEvent_t"
.LASF180:
	.string	"__DBL_HAS_QUIET_NAN__ 1"
.LASF898:
	.string	"NDS_MHPMCOUNTER24H 0xb98"
.LASF1255:
	.string	"gpio_control"
.LASF856:
	.string	"NDS_MHPMCOUNTER13 0xb0d"
.LASF515:
	.string	"INT32_C"
.LASF1276:
	.string	"__nds__plic_disable_interrupt"
.LASF1260:
	.string	"scale"
.LASF261:
	.string	"__FLT128_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F128"
.LASF429:
	.string	"INT64_MIN"
.LASF907:
	.string	"NDS_MHPMEVENT4 0x324"
.LASF69:
	.string	"__INTPTR_TYPE__ int"
.LASF519:
	.string	"UINT8_C"
.LASF70:
	.string	"__UINTPTR_TYPE__ unsigned int"
.LASF592:
	.string	"AE350_GPIO_EVENT_PIN26 (1UL << 26)"
.LASF521:
	.string	"UINT16_C"
.LASF299:
	.string	"__REGISTER_PREFIX__ "
.LASF167:
	.string	"__DBL_DIG__ 15"
.LASF1044:
	.string	"NDS_PMAADDR4 0xbd4"
.LASF25:
	.string	"__SIZEOF_SIZE_T__ 4"
.LASF52:
	.string	"__UINT64_TYPE__ long long unsigned int"
.LASF755:
	.string	"NDS_HPMCOUNTER23 0xc17"
.LASF118:
	.string	"__INT64_C(c) c ## LL"
.LASF1188:
	.string	"GPIO_MAX_PIN_NUM 32"
.LASF243:
	.string	"__FLT64_EPSILON__ 2.22044604925031308084726333618164062e-16F64"
.LASF987:
	.string	"NDS_MCOUNTERMASK_M 0x7d1"
.LASF1148:
	.string	"PLIC_PENDING_SHIFT_PER_SOURCE 0"
.LASF1149:
	.string	"PLIC_ENABLE_OFFSET (0x00002000UL)"
.LASF75:
	.string	"__LONG_MAX__ 0x7fffffffL"
.LASF965:
	.string	"NDS_MDCM_CFG 0xfc1"
.LASF1250:
	.string	"gpio_driver_version"
.LASF698:
	.string	"MIP_HEIP (1 << IRQ_H_EXT)"
.LASF1166:
	.string	"HAL_MEIP_DISABLE() clear_csr(NDS_MIE, MIP_MEIP)"
.LASF883:
	.string	"NDS_MHPMCOUNTER9H 0xb89"
.LASF838:
	.string	"NDS_PMPADDR10 0x3ba"
.LASF995:
	.string	"NDS_UCCTLBEGINADDR 0x80b"
.LASF1172:
	.string	"DEV_DMA AE350_DMA"
.LASF668:
	.string	"IRQ_S_EXT 9"
.LASF1194:
	.string	"short int"
.LASF351:
	.string	"_STDDEF_H "
.LASF1042:
	.string	"NDS_PMAADDR2 0xbd2"
.LASF368:
	.string	"_SYS_SIZE_T_H "
.LASF123:
	.string	"__UINT16_C(c) c"
.LASF941:
	.string	"NDS_DPC 0x7b1"
.LASF209:
	.string	"__FLT16_MIN__ 6.10351562500000000000000000000000000e-5F16"
.LASF582:
	.string	"AE350_GPIO_EVENT_PIN16 (1UL << 16)"
.LASF1257:
	.string	"mode"
.LASF812:
	.string	"NDS_MSTATUS 0x300"
.LASF302:
	.string	"__NO_INLINE__ 1"
.LASF449:
	.string	"UINT_LEAST32_MAX"
.LASF843:
	.string	"NDS_PMPADDR15 0x3bf"
.LASF287:
	.string	"__FLT64X_MAX_EXP__ 16384"
.LASF681:
	.string	"TRAP_M_L_PAGE_FAULT 13"
.LASF940:
	.string	"NDS_DCSR 0x7b0"
.LASF11:
	.string	"__ATOMIC_RELAXED 0"
.LASF981:
	.string	"NDS_MRANDSEQ 0x7fc"
.LASF738:
	.string	"NDS_HPMCOUNTER6 0xc06"
.LASF224:
	.string	"__FLT32_NORM_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF179:
	.string	"__DBL_HAS_INFINITY__ 1"
.LASF1216:
	.string	"PinWrite"
.LASF97:
	.string	"__SIG_ATOMIC_MAX__ 0x7fffffff"
.LASF450:
	.string	"UINT_LEAST32_MAX __UINT_LEAST32_MAX__"
.LASF233:
	.string	"__FLT64_MANT_DIG__ 53"
.LASF745:
	.string	"NDS_HPMCOUNTER13 0xc0d"
.LASF777:
	.string	"NDS_HPMCOUNTER13H 0xc8d"
.LASF1102:
	.string	"__IO volatile"
.LASF663:
	.string	"IRQ_H_SOFT 2"
.LASF857:
	.string	"NDS_MHPMCOUNTER14 0xb0e"
.LASF511:
	.string	"INT8_C"
.LASF445:
	.string	"INT_LEAST32_MAX"
.LASF1097:
	.string	"IRQ_GP15_SOURCE 25"
.LASF22:
	.string	"__SIZEOF_FLOAT__ 4"
.LASF831:
	.string	"NDS_PMPADDR3 0x3b3"
.LASF1135:
	.string	"AE350_GPIO ((GPIO_RegDef *) GPIO_BASE )"
.LASF364:
	.string	"__need_ptrdiff_t"
.LASF694:
	.string	"MIP_STIP (1 << IRQ_S_TIMER)"
.LASF172:
	.string	"__DBL_DECIMAL_DIG__ 17"
.LASF1110:
	.string	"UART1_BASE _IO_(0xF0200000)"
.LASF358:
	.string	"_PTRDIFF_T_ "
.LASF744:
	.string	"NDS_HPMCOUNTER12 0xc0c"
.LASF514:
	.string	"INT16_C(c) __INT16_C(c)"
.LASF608:
	.string	"DRV_I2C_DMA_TX_EN 0"
.LASF174:
	.string	"__DBL_NORM_MAX__ ((double)1.79769313486231570814527423731704357e+308L)"
.LASF101:
	.string	"__INT16_MAX__ 0x7fff"
.LASF326:
	.string	"__riscv_mul 1"
.LASF618:
	.string	"DRV_UART1_DMA_RX_EN 0"
.LASF951:
	.string	"NDS_HIP 0x244"
.LASF1233:
	.string	"PULLEN"
.LASF556:
	.string	"AE350_GPIO_SET_INTR_DUAL_EDGE (1UL << 6)"
.LASF385:
	.string	"__WCHAR_T__ "
.LASF85:
	.string	"__INT_WIDTH__ 32"
.LASF756:
	.string	"NDS_HPMCOUNTER24 0xc18"
.LASF728:
	.string	"NDS_UIP 0x044"
.LASF652:
	.string	"MSTATUS_FS 0x00006000"
.LASF333:
	.string	"__riscv_float_abi_double 1"
.LASF250:
	.string	"__FLT128_MANT_DIG__ 113"
.LASF887:
	.string	"NDS_MHPMCOUNTER13H 0xb8d"
.LASF670:
	.string	"IRQ_M_EXT 11"
.LASF690:
	.string	"TRAP_S_S_PAGE_FAULT 15"
.LASF944:
	.string	"NDS_HIDELEG 0x203"
.LASF99:
	.string	"__SIG_ATOMIC_WIDTH__ 32"
.LASF969:
	.string	"NDS_MECC_CODE 0x7c2"
.LASF1283:
	.string	"gpio_set_intr_mode"
.LASF971:
	.string	"NDS_MXSTATUS 0x7c4"
.LASF399:
	.string	"__DEFINED_wchar_t "
.LASF955:
	.string	"NDS_MIBOUND 0x383"
.LASF931:
	.string	"NDS_MHPMEVENT28 0x33c"
.LASF759:
	.string	"NDS_HPMCOUNTER27 0xc1b"
.LASF1186:
	.string	"GPIO_INTR_POSITIVE_EDGE 0x6"
.LASF673:
	.string	"TRAP_M_I_ACC_FAULT 1"
.LASF818:
	.string	"NDS_MCOUNTEREN 0x306"
.LASF597:
	.string	"AE350_GPIO_EVENT_PIN31 (1UL << 31)"
.LASF1108:
	.string	"PLMT_BASE _IO_(0xE6000000)"
.LASF321:
	.string	"__SIZEOF_WINT_T__ 4"
.LASF976:
	.string	"NDS_MDCAUSE 0x7c9"
.LASF114:
	.string	"__INT_LEAST32_MAX__ 0x7fffffffL"
.LASF566:
	.string	"AE350_GPIO_EVENT_PIN0 (1UL << 0)"
.LASF1037:
	.string	"NDS_PMACFG1 0xbc1"
.LASF1054:
	.string	"NDS_PMAADDR14 0xbde"
.LASF869:
	.string	"NDS_MHPMCOUNTER26 0xb1a"
.LASF836:
	.string	"NDS_PMPADDR8 0x3b8"
.LASF1262:
	.string	"gpio_setdir"
.LASF128:
	.string	"__INT_FAST8_MAX__ 0x7fffffff"
.LASF228:
	.string	"__FLT32_HAS_DENORM__ 1"
.LASF776:
	.string	"NDS_HPMCOUNTER12H 0xc8c"
.LASF278:
	.string	"__FLT32X_HAS_DENORM__ 1"
.LASF1138:
	.string	"__INTERRUPT_H__ "
.LASF133:
	.string	"__INT_FAST32_WIDTH__ 32"
.LASF395:
	.string	"___int_wchar_t_h "
.LASF311:
	.string	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2"
.LASF754:
	.string	"NDS_HPMCOUNTER22 0xc16"
.LASF24:
	.string	"__SIZEOF_LONG_DOUBLE__ 16"
.LASF1189:
	.string	"AE350_GPIO_DRV_VERSION AE350_DRIVER_VERSION_MAJOR_MINOR(2,9)"
.LASF846:
	.string	"NDS_MHPMCOUNTER3 0xb03"
.LASF810:
	.string	"NDS_MIMPID 0xf13"
.LASF337:
	.string	"__riscv_m 2000000"
.LASF257:
	.string	"__FLT128_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF51:
	.string	"__UINT32_TYPE__ long unsigned int"
.LASF482:
	.string	"INTPTR_MAX __INTPTR_MAX__"
.LASF832:
	.string	"NDS_PMPADDR4 0x3b4"
.LASF839:
	.string	"NDS_PMPADDR11 0x3bb"
.LASF240:
	.string	"__FLT64_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF380:
	.string	"_GCC_SIZE_T "
.LASF1025:
	.string	"NDS_MINTSTATUS 0x346"
.LASF927:
	.string	"NDS_MHPMEVENT24 0x338"
.LASF661:
	.string	"MCAUSE_CAUSE 0x7FFFFFFFUL"
.LASF1059:
	.string	"swap_csr(reg,val) ({ unsigned long __tmp; asm volatile (\"csrrw %0, \" XSTR(reg) \", %1\" : \"=r\"(__tmp) : \"rK\"(val)); __tmp; })"
.LASF1154:
	.string	"PLIC_CLAIM_SHIFT_PER_TARGET 12"
.LASF913:
	.string	"NDS_MHPMEVENT10 0x32a"
.LASF750:
	.string	"NDS_HPMCOUNTER18 0xc12"
.LASF453:
	.string	"INT_LEAST64_MIN"
.LASF953:
	.string	"NDS_MBOUND 0x381"
.LASF18:
	.string	"__SIZEOF_INT__ 4"
.LASF400:
	.string	"_BSD_WCHAR_T_"
.LASF1080:
	.string	"IRQ_UART1_SOURCE 8"
.LASF880:
	.string	"NDS_MHPMCOUNTER6H 0xb86"
.LASF1117:
	.string	"DMAC_BASE _IO_(0xF0C00000)"
.LASF1201:
	.string	"uint32_t"
.LASF757:
	.string	"NDS_HPMCOUNTER25 0xc19"
.LASF771:
	.string	"NDS_HPMCOUNTER7H 0xc87"
.LASF807:
	.string	"NDS_SATP 0x180"
.LASF340:
	.string	"__riscv_d 2002000"
.LASF201:
	.string	"__FLT16_DIG__ 3"
.LASF775:
	.string	"NDS_HPMCOUNTER11H 0xc8b"
.LASF793:
	.string	"NDS_HPMCOUNTER29H 0xc9d"
.LASF1180:
	.string	"DEV_I2C AE350_I2C"
.LASF401:
	.string	"__need_wchar_t"
.LASF193:
	.string	"__LDBL_MIN__ 3.36210314311209350626267781732175260e-4932L"
.LASF888:
	.string	"NDS_MHPMCOUNTER14H 0xb8e"
.LASF1111:
	.string	"UART2_BASE _IO_(0xF0300000)"
.LASF66:
	.string	"__UINT_FAST16_TYPE__ unsigned int"
.LASF1174:
	.string	"DEV_UART1 AE350_UART1"
.LASF548:
	.string	"AE350_GPIO_DB_CLKSRC_EXT 0x0"
.LASF930:
	.string	"NDS_MHPMEVENT27 0x33b"
.LASF580:
	.string	"AE350_GPIO_EVENT_PIN14 (1UL << 14)"
.LASF91:
	.string	"__SIZE_WIDTH__ 32"
.LASF497:
	.string	"SIG_ATOMIC_MAX"
.LASF601:
	.string	"BUILD_MODE BUILD_BURN"
.LASF577:
	.string	"AE350_GPIO_EVENT_PIN11 (1UL << 11)"
.LASF80:
	.string	"__WINT_MIN__ 0U"
.LASF441:
	.string	"INT_LEAST16_MIN"
.LASF456:
	.string	"UINT_LEAST64_MAX __UINT_LEAST64_MAX__"
.LASF1145:
	.string	"PLIC_PRIORITY_OFFSET (0x00000000UL)"
.LASF234:
	.string	"__FLT64_DIG__ 15"
.LASF852:
	.string	"NDS_MHPMCOUNTER9 0xb09"
.LASF158:
	.string	"__FLT_MIN__ 1.17549435082228750796873653722224568e-38F"
.LASF110:
	.string	"__INT_LEAST8_WIDTH__ 8"
.LASF332:
	.string	"__riscv_fsqrt 1"
.LASF346:
	.string	"_POSIX_C_SOURCE 1"
.LASF54:
	.string	"__INT_LEAST16_TYPE__ short int"
.LASF603:
	.string	"BUILD_BURN 2"
.LASF551:
	.string	"AE350_GPIO_INTR_DISABLE (1UL << 1)"
.LASF213:
	.string	"__FLT16_HAS_INFINITY__ 1"
.LASF229:
	.string	"__FLT32_HAS_INFINITY__ 1"
.LASF1267:
	.string	"gpio_uninitialize"
.LASF529:
	.string	"UINTMAX_C"
.LASF350:
	.string	"__DRIVER_COMMON_H__ "
.LASF680:
	.string	"TRAP_M_I_PAGE_FAULT 12"
.LASF464:
	.string	"INT_FAST16_MAX __INT_FAST16_MAX__"
.LASF324:
	.string	"__riscv_compressed 1"
.LASF691:
	.string	"MIP_SSIP (1 << IRQ_S_SOFT)"
.LASF185:
	.string	"__LDBL_MIN_EXP__ (-16381)"
.LASF642:
	.string	"MSTATUS_SIE 0x00000002"
.LASF1229:
	.string	"CHANNELDIR"
.LASF536:
	.string	"__bool_true_false_are_defined 1"
.LASF833:
	.string	"NDS_PMPADDR5 0x3b5"
.LASF176:
	.string	"__DBL_EPSILON__ ((double)2.22044604925031308084726333618164062e-16L)"
.LASF1228:
	.string	"DATAOUT"
.LASF82:
	.string	"__SIZE_MAX__ 0xffffffffU"
.LASF879:
	.string	"NDS_MHPMCOUNTER5H 0xb85"
.LASF683:
	.string	"TRAP_M_STACKOVF 32"
.LASF884:
	.string	"NDS_MHPMCOUNTER10H 0xb8a"
.LASF994:
	.string	"NDS_MCCTLDATA 0x7cd"
.LASF970:
	.string	"NDS_MNVEC 0x7c3"
.LASF914:
	.string	"NDS_MHPMEVENT11 0x32b"
.LASF363:
	.string	"__DEFINED_ptrdiff_t "
.LASF1259:
	.string	"clksel"
.LASF1247:
	.string	"_GPIO_INFO"
.LASF405:
	.string	"offsetof"
.LASF1265:
	.string	"pin_num"
.LASF891:
	.string	"NDS_MHPMCOUNTER17H 0xb91"
.LASF345:
	.string	"NO_INIT 1"
.LASF223:
	.string	"__FLT32_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF1177:
	.string	"DEV_WDT AE350_WDT"
.LASF644:
	.string	"MSTATUS_MIE 0x00000008"
.LASF568:
	.string	"AE350_GPIO_EVENT_PIN2 (1UL << 2)"
.LASF789:
	.string	"NDS_HPMCOUNTER25H 0xc99"
.LASF493:
	.string	"PTRDIFF_MAX"
.LASF803:
	.string	"NDS_SEPC 0x141"
.LASF36:
	.string	"__SIZE_TYPE__ unsigned int"
.LASF980:
	.string	"NDS_DDCAUSE 0x7e1"
.LASF349:
	.string	"__DRIVER_GPIO_H__ "
.LASF1230:
	.string	"DOUTCLEAR"
.LASF49:
	.string	"__UINT8_TYPE__ unsigned char"
.LASF266:
	.string	"__FLT32X_MANT_DIG__ 53"
.LASF723:
	.string	"NDS_UTVEC 0x005"
.LASF88:
	.string	"__WCHAR_WIDTH__ 32"
.LASF882:
	.string	"NDS_MHPMCOUNTER8H 0xb88"
.LASF1060:
	.string	"set_csr(reg,bit) ({ unsigned long __tmp; asm volatile (\"csrrs %0, \" XSTR(reg) \", %1\" : \"=r\"(__tmp) : \"rK\"(bit)); __tmp; })"
.LASF507:
	.string	"WINT_MAX"
.LASF1075:
	.string	"IRQ_PIT_SOURCE 3"
.LASF112:
	.string	"__INT16_C(c) c"
.LASF1169:
	.string	"HAL_INTERRUPT_THRESHOLD(threshold) __nds__plic_set_threshold(threshold)"
.LASF918:
	.string	"NDS_MHPMEVENT15 0x32f"
.LASF466:
	.string	"INT_FAST16_MIN (-INT_FAST16_MAX - 1)"
.LASF600:
	.string	"CFG_CACHE_ENABLE "
.LASF1112:
	.string	"PIT_BASE _IO_(0xF0400000)"
.LASF685:
	.string	"TRAP_S_I_ACC_FAULT 1"
.LASF1261:
	.string	"gpio_irq_handler"
.LASF1039:
	.string	"NDS_PMACFG3 0xbc3"
.LASF666:
	.string	"IRQ_H_TIMER 6"
.LASF15:
	.string	"__ATOMIC_ACQ_REL 4"
.LASF47:
	.string	"__INT32_TYPE__ long int"
.LASF1119:
	.string	"APB_EXT_BASE _IO_(0xF8000000)"
.LASF392:
	.string	"_WCHAR_T_DEFINED_ "
.LASF617:
	.string	"DRV_UART1_DMA_TX_REQID 4"
.LASF1020:
	.string	"NDS_TXEVT 0x812"
.LASF610:
	.string	"DRV_I2C_DMA_TX_REQID 8"
.LASF1131:
	.string	"AE350_UART2 ((UART_RegDef *) UART2_BASE )"
.LASF177:
	.string	"__DBL_DENORM_MIN__ ((double)4.94065645841246544176568792868221372e-324L)"
.LASF1175:
	.string	"DEV_UART2 AE350_UART2"
.LASF184:
	.string	"__LDBL_DIG__ 33"
.LASF619:
	.string	"DRV_UART1_DMA_RX_CH 1"
.LASF999:
	.string	"NDS_SDCAUSE 0x9c9"
.LASF733:
	.string	"NDS_TIME 0xc01"
.LASF561:
	.string	"AE350_GPIO_SET_PULL_DOWN (1UL << 11)"
.LASF1085:
	.string	"IRQ_GP3_SOURCE 13"
.LASF1179:
	.string	"DEV_GPIO AE350_GPIO"
.LASF526:
	.string	"UINT64_C(c) __UINT64_C(c)"
.LASF1113:
	.string	"WDT_BASE _IO_(0xF0500000)"
.LASF1134:
	.string	"AE350_RTC ((RTC_RegDef *) RTC_BASE )"
.LASF94:
	.string	"__UINTMAX_MAX__ 0xffffffffffffffffULL"
.LASF933:
	.string	"NDS_MHPMEVENT30 0x33e"
.LASF166:
	.string	"__DBL_MANT_DIG__ 53"
.LASF762:
	.string	"NDS_HPMCOUNTER30 0xc1e"
.LASF834:
	.string	"NDS_PMPADDR6 0x3b6"
.LASF817:
	.string	"NDS_MTVEC 0x305"
.LASF1095:
	.string	"IRQ_GP13_SOURCE 23"
.LASF986:
	.string	"NDS_MCOUNTERINTEN 0x7cf"
.LASF463:
	.string	"INT_FAST16_MAX"
.LASF1063:
	.string	"write_fcsr(val) ({ asm volatile (\"fscsr %0\" :: \"rK\"(val)); })"
.LASF860:
	.string	"NDS_MHPMCOUNTER17 0xb11"
.LASF74:
	.string	"__INT_MAX__ 0x7fffffff"
.LASF1128:
	.string	"AE350_DMA ((DMA_RegDef *) DMAC_BASE )"
.LASF790:
	.string	"NDS_HPMCOUNTER26H 0xc9a"
.LASF915:
	.string	"NDS_MHPMEVENT12 0x32c"
.LASF1178:
	.string	"DEV_RTC AE350_RTC"
.LASF720:
	.string	"__CSR_V5_H__ "
.LASF523:
	.string	"UINT32_C"
.LASF978:
	.string	"NDS_MMISC_CTL 0x7d0"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/lc/git/rt-thread/bsp/gowin-riscv_ae350_soc"
.LASF0:
	.string	"ae350_soc/driver/ae350/gpio_ae350.c"
	.ident	"GCC: () 13.2.0"
