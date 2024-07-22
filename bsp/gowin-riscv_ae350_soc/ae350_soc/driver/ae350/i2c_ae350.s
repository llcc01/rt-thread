	.file	"i2c_ae350.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/lc/git/rt-thread/bsp/gowin-riscv_ae350_soc" "ae350_soc/driver/ae350/i2c_ae350.c"
	.section	.srodata.DriverVersion,"a"
	.align	2
	.type	DriverVersion, @object
	.size	DriverVersion, 4
DriverVersion:
	.half	514
	.half	521
	.section	.srodata.DriverCapabilities,"a"
	.align	2
	.type	DriverCapabilities, @object
	.size	DriverCapabilities, 4
DriverCapabilities:
	.byte	1
	.zero	3
	.section	.bss.I2C_Info,"aw",@nobits
	.align	2
	.type	I2C_Info, @object
	.size	I2C_Info, 332
I2C_Info:
	.zero	332
	.section	.rodata.I2C_Resources,"a"
	.align	2
	.type	I2C_Resources, @object
	.size	I2C_Resources, 16
I2C_Resources:
	.word	-257949696
	.word	0
	.word	0
	.word	I2C_Info
	.section	.text.i2cx_initialize,"ax",@progbits
	.align	1
	.globl	i2cx_initialize
	.type	i2cx_initialize, @function
i2cx_initialize:
.LFB15:
	.file 1 "ae350_soc/driver/ae350/i2c_ae350.c"
	.loc 1 94 1
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	ra,76(sp)
	sw	s0,72(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sw	a0,-68(s0)
	sw	a1,-72(s0)
	.loc 1 95 9
	lw	a5,-72(s0)
	lw	a5,12(a5)
	.loc 1 95 15
	lw	a5,8(a5)
	.loc 1 95 30
	andi	a5,a5,1
	.loc 1 95 5
	beq	a5,zero,.L2
	.loc 1 97 10
	li	a5,0
	j	.L3
.L2:
	li	a5,6
	sw	a5,-48(s0)
	li	a5,1
	sw	a5,-52(s0)
.LBB15:
.LBB16:
	.file 2 "ae350_soc/driver/ae350/../../../ae350_soc/driver/ae350/../../../ae350_soc/driver/ae350/../../../ae350_soc/ae350/../../ae350_soc/ae350/../../ae350_soc/ae350/plic.h"
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
	li	a5,6
	sw	a5,-28(s0)
.LBE16:
.LBE15:
.LBB17:
.LBB18:
.LBB19:
	.loc 2 84 50
 #APP
# 84 "ae350_soc/driver/ae350/../../../ae350_soc/driver/ae350/../../../ae350_soc/driver/ae350/../../../ae350_soc/ae350/../../ae350_soc/ae350/../../ae350_soc/ae350/plic.h" 1
	csrr a5, 0xf14
# 0 "" 2
 #NO_APP
	sw	a5,-32(s0)
	.loc 2 84 100
	lw	a5,-32(s0)
.LBE19:
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
.LBE18:
.LBE17:
.LBB20:
	.loc 1 107 26
	li	a5,4096
	addi	a5,a5,-2048
 #APP
# 107 "ae350_soc/driver/ae350/i2c_ae350.c" 1
	csrrs a5, 0x304, a5
# 0 "" 2
 #NO_APP
	sw	a5,-20(s0)
.LBE20:
.LBB21:
	.loc 1 110 26
 #APP
# 110 "ae350_soc/driver/ae350/i2c_ae350.c" 1
	csrrs a5, 0x300, 8
# 0 "" 2
 #NO_APP
	sw	a5,-24(s0)
.LBE21:
	.loc 1 112 5
	lw	a5,-72(s0)
	lw	a5,12(a5)
	.loc 1 112 24
	lw	a4,-68(s0)
	sw	a4,0(a5)
	.loc 1 113 5
	lw	a5,-72(s0)
	lw	a5,12(a5)
	.loc 1 113 23
	li	a4,2
	sw	a4,12(a5)
	.loc 1 114 5
	lw	a5,-72(s0)
	lw	a5,12(a5)
	.loc 1 114 30
	lbu	a4,324(a5)
	andi	a4,a4,-13
	sb	a4,324(a5)
	.loc 1 117 9
	lw	a5,-72(s0)
	lw	a5,4(a5)
	.loc 1 117 5
	bne	a5,zero,.L4
	.loc 1 117 24 discriminator 1
	lw	a5,-72(s0)
	lw	a5,8(a5)
	.loc 1 117 18 discriminator 1
	beq	a5,zero,.L5
.L4:
	.loc 1 119 3
	call	dma_initialize
.L5:
	.loc 1 122 5
	lw	a5,-72(s0)
	lw	a5,12(a5)
	.loc 1 122 11
	lw	a4,8(a5)
	.loc 1 122 5
	lw	a5,-72(s0)
	lw	a5,12(a5)
	.loc 1 122 26
	ori	a4,a4,1
	sw	a4,8(a5)
	.loc 1 132 5
	lw	a5,-72(s0)
	lw	a5,0(a5)
	.loc 1 132 16
	sw	zero,48(a5)
	.loc 1 138 9
	li	a5,0
.L3:
	.loc 1 139 1
	mv	a0,a5
	lw	ra,76(sp)
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE15:
	.size	i2cx_initialize, .-i2cx_initialize
	.section	.text.i2cx_uninitialize,"ax",@progbits
	.align	1
	.globl	i2cx_uninitialize
	.type	i2cx_uninitialize, @function
i2cx_uninitialize:
.LFB16:
	.loc 1 143 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-52(s0)
	.loc 1 145 9
	lw	a5,-52(s0)
	lw	a5,4(a5)
	.loc 1 145 5
	bne	a5,zero,.L7
	.loc 1 145 24 discriminator 1
	lw	a5,-52(s0)
	lw	a5,8(a5)
	.loc 1 145 18 discriminator 1
	beq	a5,zero,.L8
.L7:
	.loc 1 147 3
	call	dma_uninitialize
	.loc 1 149 10
	lw	a5,-52(s0)
	lw	a5,4(a5)
	.loc 1 149 6
	beq	a5,zero,.L9
	.loc 1 149 26 discriminator 1
	lw	a5,-52(s0)
	lw	a5,12(a5)
	.loc 1 149 40 discriminator 1
	lw	a5,324(a5)
	andi	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 149 19 discriminator 1
	beq	a5,zero,.L9
	.loc 1 151 27
	lw	a5,-52(s0)
	lw	a5,4(a5)
	.loc 1 151 35
	lbu	a5,0(a5)
	.loc 1 151 4
	mv	a0,a5
	call	dma_channel_disable
.L9:
	.loc 1 154 10
	lw	a5,-52(s0)
	lw	a5,8(a5)
	.loc 1 154 6
	beq	a5,zero,.L8
	.loc 1 154 26 discriminator 1
	lw	a5,-52(s0)
	lw	a5,12(a5)
	.loc 1 154 40 discriminator 1
	lw	a5,324(a5)
	andi	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 154 19 discriminator 1
	beq	a5,zero,.L8
	.loc 1 156 27
	lw	a5,-52(s0)
	lw	a5,8(a5)
	.loc 1 156 35
	lbu	a5,0(a5)
	.loc 1 156 4
	mv	a0,a5
	call	dma_channel_disable
.L8:
	li	a5,6
	sw	a5,-20(s0)
.LBB22:
.LBB23:
.LBB24:
	.loc 2 97 50
 #APP
# 97 "ae350_soc/driver/ae350/../../../ae350_soc/driver/ae350/../../../ae350_soc/driver/ae350/../../../ae350_soc/ae350/../../ae350_soc/ae350/../../ae350_soc/ae350/plic.h" 1
	csrr a5, 0xf14
# 0 "" 2
 #NO_APP
	sw	a5,-24(s0)
	.loc 2 97 100
	lw	a5,-24(s0)
.LBE24:
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
.LBE23:
.LBE22:
	.loc 1 163 5
	lw	a5,-52(s0)
	lw	a5,12(a5)
	.loc 1 163 24
	sw	zero,0(a5)
	.loc 1 164 5
	lw	a5,-52(s0)
	lw	a5,12(a5)
	.loc 1 164 23
	sw	zero,12(a5)
	.loc 1 167 5
	lw	a5,-52(s0)
	lw	a5,12(a5)
	.loc 1 167 26
	sw	zero,8(a5)
	.loc 1 169 9
	li	a5,0
	.loc 1 170 1
	mv	a0,a5
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE16:
	.size	i2cx_uninitialize, .-i2cx_uninitialize
	.section	.text.i2cx_power_control,"ax",@progbits
	.align	1
	.globl	i2cx_power_control
	.type	i2cx_power_control, @function
i2cx_power_control:
.LFB17:
	.loc 1 174 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	.loc 1 175 11
	sw	zero,-20(s0)
	.loc 1 175 22
	sw	zero,-24(s0)
	.loc 1 177 5
	lw	a5,-56(s0)
	lw	a5,12(a5)
	.loc 1 177 23
	lw	a4,-52(s0)
	sw	a4,12(a5)
	.loc 1 179 2
	lw	a4,-52(s0)
	li	a5,2
	beq	a4,a5,.L12
	lw	a4,-52(s0)
	li	a5,2
	bgtu	a4,a5,.L13
	lw	a5,-52(s0)
	beq	a5,zero,.L14
	lw	a4,-52(s0)
	li	a5,1
	beq	a4,a5,.L31
	j	.L13
.L14:
	.loc 1 183 10
	lw	a5,-56(s0)
	lw	a5,4(a5)
	.loc 1 183 6
	bne	a5,zero,.L16
	.loc 1 183 25 discriminator 1
	lw	a5,-56(s0)
	lw	a5,8(a5)
	.loc 1 183 19 discriminator 1
	beq	a5,zero,.L17
.L16:
	.loc 1 185 4
	call	dma_uninitialize
	.loc 1 187 11
	lw	a5,-56(s0)
	lw	a5,4(a5)
	.loc 1 187 7
	beq	a5,zero,.L18
	.loc 1 187 27 discriminator 1
	lw	a5,-56(s0)
	lw	a5,12(a5)
	.loc 1 187 41 discriminator 1
	lw	a5,324(a5)
	andi	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 187 20 discriminator 1
	beq	a5,zero,.L18
	.loc 1 189 28
	lw	a5,-56(s0)
	lw	a5,4(a5)
	.loc 1 189 36
	lbu	a5,0(a5)
	.loc 1 189 5
	mv	a0,a5
	call	dma_channel_disable
.L18:
	.loc 1 192 11
	lw	a5,-56(s0)
	lw	a5,8(a5)
	.loc 1 192 7
	beq	a5,zero,.L17
	.loc 1 192 27 discriminator 1
	lw	a5,-56(s0)
	lw	a5,12(a5)
	.loc 1 192 41 discriminator 1
	lw	a5,324(a5)
	andi	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 192 20 discriminator 1
	beq	a5,zero,.L17
	.loc 1 194 28
	lw	a5,-56(s0)
	lw	a5,8(a5)
	.loc 1 194 36
	lbu	a5,0(a5)
	.loc 1 194 5
	mv	a0,a5
	call	dma_channel_disable
.L17:
	li	a5,6
	sw	a5,-28(s0)
.LBB25:
.LBB26:
.LBB27:
	.loc 2 97 50
 #APP
# 97 "ae350_soc/driver/ae350/../../../ae350_soc/driver/ae350/../../../ae350_soc/driver/ae350/../../../ae350_soc/ae350/../../ae350_soc/ae350/../../ae350_soc/ae350/plic.h" 1
	csrr a5, 0xf14
# 0 "" 2
 #NO_APP
	sw	a5,-32(s0)
	.loc 2 97 100
	lw	a5,-32(s0)
.LBE27:
	.loc 2 97 16
	sw	a5,-36(s0)
	.loc 2 100 75
	lw	a5,-36(s0)
	slli	a4,a5,7
	.loc 2 101 75
	lw	a5,-28(s0)
	srli	a5,a5,5
	.loc 2 101 81
	slli	a5,a5,2
	.loc 2 100 81
	add	a4,a4,a5
	li	a5,-469753856
	add	a5,a4,a5
	.loc 2 98 26
	sw	a5,-40(s0)
	.loc 2 103 16
	lw	a5,-40(s0)
	lw	a5,0(a5)
	sw	a5,-44(s0)
	.loc 2 104 39
	lw	a5,-28(s0)
	andi	a5,a5,31
	.loc 2 104 28
	li	a4,1
	sll	a5,a4,a5
	.loc 2 104 23
	not	a5,a5
	mv	a4,a5
	.loc 2 104 11
	lw	a5,-44(s0)
	and	a5,a5,a4
	sw	a5,-44(s0)
	.loc 2 105 16
	lw	a5,-40(s0)
	lw	a4,-44(s0)
	sw	a4,0(a5)
	.loc 2 106 1
	nop
.LBE26:
.LBE25:
	.loc 1 202 14
	lw	a5,-56(s0)
	lw	a5,0(a5)
	.loc 1 202 9
	lw	a5,40(a5)
	sw	a5,-20(s0)
	.loc 1 203 9
	lw	a5,-20(s0)
	andi	a5,a5,-8
	sw	a5,-20(s0)
	.loc 1 204 9
	lw	a5,-20(s0)
	ori	a5,a5,5
	sw	a5,-20(s0)
	.loc 1 205 6
	lw	a5,-56(s0)
	lw	a5,0(a5)
	.loc 1 205 17
	lw	a4,-20(s0)
	sw	a4,40(a5)
	.loc 1 208 14
	lw	a5,-56(s0)
	lw	a5,0(a5)
	.loc 1 208 9
	lw	a5,44(a5)
	sw	a5,-20(s0)
	.loc 1 209 10
	lw	a5,-56(s0)
	lw	a5,4(a5)
	.loc 1 209 6
	bne	a5,zero,.L19
	.loc 1 209 25 discriminator 1
	lw	a5,-56(s0)
	lw	a5,8(a5)
	.loc 1 209 19 discriminator 1
	beq	a5,zero,.L20
.L19:
	.loc 1 211 10
	lw	a5,-20(s0)
	andi	a5,a5,-9
	sw	a5,-20(s0)
.L20:
	.loc 1 213 9
	lw	a5,-20(s0)
	andi	a5,a5,-2
	sw	a5,-20(s0)
	.loc 1 214 6
	lw	a5,-56(s0)
	lw	a5,0(a5)
	.loc 1 214 19
	lw	a4,-20(s0)
	sw	a4,44(a5)
	.loc 1 216 6
	lw	a5,-56(s0)
	lw	a5,12(a5)
	.loc 1 216 12
	lw	a4,8(a5)
	.loc 1 216 6
	lw	a5,-56(s0)
	lw	a5,12(a5)
	.loc 1 216 27
	andi	a4,a4,-3
	sw	a4,8(a5)
	.loc 1 218 3
	j	.L21
.L12:
	.loc 1 226 15
	lw	a5,-56(s0)
	lw	a5,0(a5)
	.loc 1 226 10
	lw	a5,16(a5)
	sw	a5,-24(s0)
	.loc 1 227 18
	lw	a5,-24(s0)
	andi	a5,a5,3
	li	a4,3
	beq	a5,a4,.L22
	li	a4,3
	bgtu	a5,a4,.L32
	li	a4,2
	beq	a5,a4,.L24
	li	a4,2
	bgtu	a5,a4,.L32
	beq	a5,zero,.L25
	li	a4,1
	beq	a5,a4,.L26
	.loc 1 242 4
	j	.L32
.L25:
	.loc 1 230 10
	lw	a5,-56(s0)
	lw	a5,12(a5)
	.loc 1 230 29
	li	a4,2
	sw	a4,36(a5)
	.loc 1 231 7
	j	.L27
.L26:
	.loc 1 233 10
	lw	a5,-56(s0)
	lw	a5,12(a5)
	.loc 1 233 29
	li	a4,4
	sw	a4,36(a5)
	.loc 1 234 7
	j	.L27
.L24:
	.loc 1 236 10
	lw	a5,-56(s0)
	lw	a5,12(a5)
	.loc 1 236 29
	li	a4,8
	sw	a4,36(a5)
	.loc 1 237 7
	j	.L27
.L22:
	.loc 1 239 10
	lw	a5,-56(s0)
	lw	a5,12(a5)
	.loc 1 239 29
	li	a4,16
	sw	a4,36(a5)
	.loc 1 240 7
	j	.L27
.L32:
	.loc 1 242 4
	nop
.L27:
	.loc 1 246 14
	lw	a5,-56(s0)
	lw	a5,0(a5)
	.loc 1 246 9
	lw	a5,40(a5)
	sw	a5,-20(s0)
	.loc 1 247 9
	lw	a5,-20(s0)
	andi	a5,a5,-8
	sw	a5,-20(s0)
	.loc 1 248 9
	lw	a5,-20(s0)
	ori	a5,a5,5
	sw	a5,-20(s0)
	.loc 1 249 6
	lw	a5,-56(s0)
	lw	a5,0(a5)
	.loc 1 249 17
	lw	a4,-20(s0)
	sw	a4,40(a5)
	.loc 1 253 6
	lw	a5,-56(s0)
	lw	a5,0(a5)
	.loc 1 253 19
	sw	zero,44(a5)
	.loc 1 254 14
	lw	a5,-56(s0)
	lw	a5,0(a5)
	.loc 1 254 9
	lw	a5,44(a5)
	sw	a5,-20(s0)
	.loc 1 255 10
	lw	a5,-56(s0)
	lw	a5,4(a5)
	.loc 1 255 6
	bne	a5,zero,.L28
	.loc 1 255 25 discriminator 1
	lw	a5,-56(s0)
	lw	a5,8(a5)
	.loc 1 255 19 discriminator 1
	beq	a5,zero,.L29
.L28:
	.loc 1 257 10
	lw	a5,-20(s0)
	ori	a5,a5,8
	sw	a5,-20(s0)
.L29:
	.loc 1 259 9
	lw	a4,-20(s0)
	li	a5,280313856
	addi	a5,a5,-335
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 265 6
	lw	a5,-56(s0)
	lw	a5,0(a5)
	.loc 1 265 19
	lw	a4,-20(s0)
	sw	a4,44(a5)
	.loc 1 268 14
	lw	a5,-56(s0)
	lw	a5,0(a5)
	.loc 1 268 9
	lw	a5,20(a5)
	sw	a5,-20(s0)
	.loc 1 270 9
	lw	a5,-20(s0)
	ori	a5,a5,520
	sw	a5,-20(s0)
	.loc 1 271 6
	lw	a5,-56(s0)
	lw	a5,0(a5)
	.loc 1 271 19
	lw	a4,-20(s0)
	sw	a4,20(a5)
	.loc 1 274 6
	lw	a5,-56(s0)
	lw	a5,12(a5)
	.loc 1 274 26
	lbu	a4,324(a5)
	andi	a4,a4,-2
	sb	a4,324(a5)
	.loc 1 276 6
	lw	a5,-56(s0)
	lw	a5,12(a5)
	.loc 1 276 26
	lbu	a4,324(a5)
	andi	a4,a4,-3
	sb	a4,324(a5)
	.loc 1 278 6
	lw	a5,-56(s0)
	lw	a5,12(a5)
	.loc 1 278 31
	lbu	a4,324(a5)
	andi	a4,a4,-13
	sb	a4,324(a5)
	.loc 1 279 6
	lw	a5,-56(s0)
	lw	a5,12(a5)
	.loc 1 279 38
	lbu	a4,324(a5)
	andi	a4,a4,-33
	sb	a4,324(a5)
	.loc 1 280 6
	lw	a5,-56(s0)
	lw	a5,12(a5)
	.loc 1 280 31
	lbu	a4,324(a5)
	andi	a4,a4,-65
	sb	a4,324(a5)
	.loc 1 282 6
	lw	a5,-56(s0)
	lw	a5,12(a5)
	.loc 1 282 27
	li	a4,2
	sw	a4,8(a5)
	.loc 1 284 3
	j	.L21
.L13:
	.loc 1 287 10
	li	a5,-4
	j	.L30
.L31:
	.loc 1 221 3
	nop
.L21:
	.loc 1 290 9
	li	a5,0
.L30:
	.loc 1 291 1
	mv	a0,a5
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE17:
	.size	i2cx_power_control, .-i2cx_power_control
	.section	.text.i2cx_master_transmit,"ax",@progbits
	.align	1
	.globl	i2cx_master_transmit
	.type	i2cx_master_transmit, @function
i2cx_master_transmit:
.LFB18:
	.loc 1 295 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	mv	a5,a3
	sw	a4,-52(s0)
	sb	a5,-45(s0)
	.loc 1 296 11
	sw	zero,-20(s0)
	.loc 1 297 10
	sw	zero,-24(s0)
	.loc 1 301 5
	lw	a4,-36(s0)
	li	a5,1023
	bleu	a4,a5,.L34
	.loc 1 303 10
	li	a5,-5
	j	.L35
.L34:
	.loc 1 306 9
	lw	a5,-52(s0)
	lw	a5,12(a5)
	.loc 1 306 15
	lw	a4,12(a5)
	.loc 1 306 5
	li	a5,2
	beq	a4,a5,.L36
	.loc 1 308 10
	li	a5,-4
	j	.L35
.L36:
	.loc 1 312 9
	lw	a5,-52(s0)
	lw	a5,12(a5)
	.loc 1 312 23
	lw	a5,324(a5)
	andi	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 312 5
	beq	a5,zero,.L37
	.loc 1 314 10
	li	a5,-2
	j	.L35
.L37:
	.loc 1 317 5
	lw	a5,-52(s0)
	lw	a5,12(a5)
	.loc 1 317 25
	lbu	a4,324(a5)
	ori	a4,a4,1
	sb	a4,324(a5)
	.loc 1 319 5
	lw	a5,-52(s0)
	lw	a5,12(a5)
	.loc 1 319 25
	lbu	a4,324(a5)
	ori	a4,a4,2
	sb	a4,324(a5)
	.loc 1 321 5
	lw	a5,-52(s0)
	lw	a5,12(a5)
	.loc 1 321 30
	lbu	a4,324(a5)
	andi	a4,a4,-13
	ori	a4,a4,8
	sb	a4,324(a5)
	.loc 1 322 5
	lw	a5,-52(s0)
	lw	a5,12(a5)
	.loc 1 322 37
	lbu	a4,324(a5)
	andi	a4,a4,-33
	sb	a4,324(a5)
	.loc 1 323 5
	lw	a5,-52(s0)
	lw	a5,12(a5)
	.loc 1 323 30
	lbu	a4,324(a5)
	andi	a4,a4,-65
	sb	a4,324(a5)
	.loc 1 326 5
	lw	a5,-52(s0)
	lw	a5,12(a5)
	.loc 1 326 26
	li	a4,8
	sw	a4,8(a5)
	.loc 1 330 13
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 330 8
	lw	a5,40(a5)
	sw	a5,-20(s0)
	.loc 1 331 8
	lw	a5,-20(s0)
	andi	a5,a5,-8
	sw	a5,-20(s0)
	.loc 1 332 8
	lw	a5,-20(s0)
	ori	a5,a5,5
	sw	a5,-20(s0)
	.loc 1 333 5
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 333 16
	lw	a4,-20(s0)
	sw	a4,40(a5)
	.loc 1 337 13
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 337 8
	lw	a5,44(a5)
	sw	a5,-20(s0)
	.loc 1 338 9
	lw	a5,-52(s0)
	lw	a5,4(a5)
	.loc 1 338 5
	beq	a5,zero,.L38
	.loc 1 340 9
	lw	a5,-20(s0)
	ori	a5,a5,8
	sw	a5,-20(s0)
	j	.L39
.L38:
	.loc 1 344 9
	lw	a5,-20(s0)
	andi	a5,a5,-9
	sw	a5,-20(s0)
.L39:
	.loc 1 346 8
	lw	a5,-20(s0)
	ori	a5,a5,5
	sw	a5,-20(s0)
	.loc 1 347 5
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 347 18
	lw	a4,-20(s0)
	sw	a4,44(a5)
	.loc 1 358 13
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 358 8
	lw	a5,36(a5)
	sw	a5,-20(s0)
	.loc 1 359 8
	lw	a5,-20(s0)
	andi	a5,a5,-1024
	sw	a5,-20(s0)
	.loc 1 360 71
	lbu	a5,-45(s0)
	xori	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 360 68
	beq	a5,zero,.L40
	.loc 1 360 68 is_stmt 0 discriminator 1
	li	a5,8192
	addi	a5,a5,-1536
	j	.L41
.L40:
	.loc 1 360 68 discriminator 2
	li	a5,8192
	addi	a5,a5,-2048
.L41:
	.loc 1 360 98 is_stmt 1 discriminator 4
	lw	a4,-44(s0)
	andi	a4,a4,255
	.loc 1 360 91 discriminator 4
	or	a5,a5,a4
	.loc 1 360 8 discriminator 4
	lw	a4,-20(s0)
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 361 5
	lw	a5,-44(s0)
	bne	a5,zero,.L42
	.loc 1 364 9
	lw	a5,-20(s0)
	andi	a5,a5,-1025
	sw	a5,-20(s0)
	j	.L43
.L42:
	.loc 1 368 9
	lw	a5,-20(s0)
	ori	a5,a5,1024
	sw	a5,-20(s0)
.L43:
	.loc 1 370 5
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 370 17
	lw	a4,-20(s0)
	sw	a4,36(a5)
	.loc 1 373 5
	lw	a5,-52(s0)
	lw	a5,12(a5)
	.loc 1 373 24
	lw	a4,-36(s0)
	sw	a4,40(a5)
	.loc 1 374 5
	lw	a5,-52(s0)
	lw	a5,12(a5)
	.loc 1 374 32
	sw	zero,52(a5)
	.loc 1 375 5
	lw	a5,-52(s0)
	lw	a5,12(a5)
	.loc 1 375 25
	lw	a4,-44(s0)
	sw	a4,44(a5)
	.loc 1 376 5
	lw	a5,-52(s0)
	lw	a5,12(a5)
	.loc 1 376 29
	sw	zero,328(a5)
	.loc 1 377 5
	lw	a5,-52(s0)
	lw	a5,12(a5)
	.loc 1 377 31
	lw	a4,-40(s0)
	sw	a4,20(a5)
	.loc 1 380 13
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 380 8
	lw	a5,28(a5)
	sw	a5,-20(s0)
	.loc 1 381 8
	lw	a5,-20(s0)
	andi	a5,a5,-1024
	sw	a5,-20(s0)
	.loc 1 382 15
	lw	a5,-52(s0)
	lw	a5,12(a5)
	.loc 1 382 21
	lw	a5,40(a5)
	.loc 1 382 34
	andi	a5,a5,1023
	.loc 1 382 8
	lw	a4,-20(s0)
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 383 5
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 383 17
	lw	a4,-20(s0)
	sw	a4,28(a5)
	.loc 1 388 13
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 388 8
	lw	a5,20(a5)
	sw	a5,-20(s0)
	.loc 1 389 9
	lw	a5,-52(s0)
	lw	a5,4(a5)
	.loc 1 389 5
	beq	a5,zero,.L44
	.loc 1 393 9
	lw	a5,-20(s0)
	ori	a5,a5,528
	sw	a5,-20(s0)
	j	.L45
.L44:
	.loc 1 400 3
	li	a1,1
	lw	a0,-52(s0)
	call	i2cx_master_fifo_write
	.loc 1 402 9
	lw	a5,-20(s0)
	ori	a5,a5,528
	sw	a5,-20(s0)
	.loc 1 403 6
	lw	a5,-44(s0)
	beq	a5,zero,.L46
	.loc 1 406 10
	lw	a5,-20(s0)
	ori	a5,a5,1
	sw	a5,-20(s0)
	j	.L45
.L46:
	.loc 1 411 10
	lw	a5,-20(s0)
	andi	a5,a5,-2
	sw	a5,-20(s0)
.L45:
	.loc 1 414 5
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 414 18
	lw	a4,-20(s0)
	sw	a4,20(a5)
	.loc 1 418 13
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 418 8
	lw	a5,40(a5)
	sw	a5,-20(s0)
	.loc 1 419 8
	lw	a5,-20(s0)
	andi	a5,a5,-8
	sw	a5,-20(s0)
	.loc 1 420 8
	lw	a5,-20(s0)
	ori	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 421 5
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 421 16
	lw	a4,-20(s0)
	sw	a4,40(a5)
	.loc 1 424 9
	lw	a5,-52(s0)
	lw	a5,4(a5)
	.loc 1 424 5
	beq	a5,zero,.L47
	.loc 1 427 35
	lw	a5,-52(s0)
	lw	a5,4(a5)
	.loc 1 427 43
	lbu	a0,0(a5)
	.loc 1 428 53
	lw	a5,-52(s0)
	lw	a5,12(a5)
	.loc 1 428 59
	lw	a5,20(a5)
	.loc 1 427 10
	mv	a1,a5
	.loc 1 429 54
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 429 49
	addi	a5,a5,32
	.loc 1 427 10
	mv	a2,a5
	.loc 1 439 38
	lw	a5,-52(s0)
	lw	a5,4(a5)
	.loc 1 439 46
	lbu	a5,1(a5)
	.loc 1 439 56
	slli	a5,a5,4
	.loc 1 439 65
	andi	a4,a5,255
	.loc 1 442 42
	li	a5,-1073668096
	addi	a5,a5,1
	or	a5,a4,a5
	.loc 1 427 10
	mv	a4,a5
	.loc 1 444 35
	lw	a5,-52(s0)
	lw	a5,4(a5)
	.loc 1 444 43
	lw	a5,4(a5)
	.loc 1 427 10
	lw	a3,-44(s0)
	call	dma_channel_configure
	sw	a0,-24(s0)
	.loc 1 446 6
	lw	a4,-24(s0)
	li	a5,-1
	bne	a4,a5,.L47
	.loc 1 448 11
	li	a5,-1
	j	.L35
.L47:
	.loc 1 454 9
	li	a5,0
.L35:
	.loc 1 455 1
	mv	a0,a5
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE18:
	.size	i2cx_master_transmit, .-i2cx_master_transmit
	.section	.text.i2cx_master_receive,"ax",@progbits
	.align	1
	.globl	i2cx_master_receive
	.type	i2cx_master_receive, @function
i2cx_master_receive:
.LFB19:
	.loc 1 459 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	mv	a5,a3
	sw	a4,-52(s0)
	sb	a5,-45(s0)
	.loc 1 460 11
	sw	zero,-20(s0)
	.loc 1 461 10
	sw	zero,-24(s0)
	.loc 1 465 5
	lw	a4,-36(s0)
	li	a5,1023
	bleu	a4,a5,.L49
	.loc 1 467 10
	li	a5,-5
	j	.L50
.L49:
	.loc 1 470 9
	lw	a5,-52(s0)
	lw	a5,12(a5)
	.loc 1 470 15
	lw	a4,12(a5)
	.loc 1 470 5
	li	a5,2
	beq	a4,a5,.L51
	.loc 1 472 10
	li	a5,-4
	j	.L50
.L51:
	.loc 1 476 9
	lw	a5,-52(s0)
	lw	a5,12(a5)
	.loc 1 476 23
	lw	a5,324(a5)
	andi	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 476 5
	beq	a5,zero,.L52
	.loc 1 478 10
	li	a5,-2
	j	.L50
.L52:
	.loc 1 481 5
	lw	a5,-52(s0)
	lw	a5,12(a5)
	.loc 1 481 25
	lbu	a4,324(a5)
	ori	a4,a4,1
	sb	a4,324(a5)
	.loc 1 483 5
	lw	a5,-52(s0)
	lw	a5,12(a5)
	.loc 1 483 25
	lbu	a4,324(a5)
	ori	a4,a4,2
	sb	a4,324(a5)
	.loc 1 485 5
	lw	a5,-52(s0)
	lw	a5,12(a5)
	.loc 1 485 30
	lbu	a4,324(a5)
	andi	a4,a4,-13
	ori	a4,a4,4
	sb	a4,324(a5)
	.loc 1 486 5
	lw	a5,-52(s0)
	lw	a5,12(a5)
	.loc 1 486 37
	lbu	a4,324(a5)
	andi	a4,a4,-33
	sb	a4,324(a5)
	.loc 1 487 5
	lw	a5,-52(s0)
	lw	a5,12(a5)
	.loc 1 487 30
	lbu	a4,324(a5)
	andi	a4,a4,-65
	sb	a4,324(a5)
	.loc 1 490 5
	lw	a5,-52(s0)
	lw	a5,12(a5)
	.loc 1 490 26
	li	a4,16
	sw	a4,8(a5)
	.loc 1 494 13
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 494 8
	lw	a5,40(a5)
	sw	a5,-20(s0)
	.loc 1 495 8
	lw	a5,-20(s0)
	andi	a5,a5,-8
	sw	a5,-20(s0)
	.loc 1 496 8
	lw	a5,-20(s0)
	ori	a5,a5,5
	sw	a5,-20(s0)
	.loc 1 497 5
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 497 16
	lw	a4,-20(s0)
	sw	a4,40(a5)
	.loc 1 501 13
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 501 8
	lw	a5,44(a5)
	sw	a5,-20(s0)
	.loc 1 502 9
	lw	a5,-52(s0)
	lw	a5,8(a5)
	.loc 1 502 5
	beq	a5,zero,.L53
	.loc 1 504 9
	lw	a5,-20(s0)
	ori	a5,a5,8
	sw	a5,-20(s0)
	j	.L54
.L53:
	.loc 1 508 9
	lw	a5,-20(s0)
	andi	a5,a5,-9
	sw	a5,-20(s0)
.L54:
	.loc 1 510 8
	lw	a5,-20(s0)
	ori	a5,a5,5
	sw	a5,-20(s0)
	.loc 1 511 5
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 511 18
	lw	a4,-20(s0)
	sw	a4,44(a5)
	.loc 1 522 13
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 522 8
	lw	a5,36(a5)
	sw	a5,-20(s0)
	.loc 1 523 8
	lw	a5,-20(s0)
	andi	a5,a5,-768
	sw	a5,-20(s0)
	.loc 1 524 71
	lbu	a5,-45(s0)
	xori	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 524 68
	beq	a5,zero,.L55
	.loc 1 524 68 is_stmt 0 discriminator 1
	li	a5,8192
	addi	a5,a5,-1536
	j	.L56
.L55:
	.loc 1 524 68 discriminator 2
	li	a5,8192
	addi	a5,a5,-2048
.L56:
	.loc 1 524 98 is_stmt 1 discriminator 4
	lw	a4,-44(s0)
	andi	a4,a4,255
	.loc 1 524 91 discriminator 4
	or	a4,a5,a4
	.loc 1 524 8 discriminator 4
	lw	a5,-20(s0)
	or	a5,a4,a5
	ori	a5,a5,256
	sw	a5,-20(s0)
	.loc 1 525 5
	lw	a5,-44(s0)
	bne	a5,zero,.L57
	.loc 1 528 9
	lw	a5,-20(s0)
	andi	a5,a5,-1025
	sw	a5,-20(s0)
	j	.L58
.L57:
	.loc 1 532 9
	lw	a5,-20(s0)
	ori	a5,a5,1024
	sw	a5,-20(s0)
.L58:
	.loc 1 534 5
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 534 17
	lw	a4,-20(s0)
	sw	a4,36(a5)
	.loc 1 537 5
	lw	a5,-52(s0)
	lw	a5,12(a5)
	.loc 1 537 24
	lw	a4,-36(s0)
	sw	a4,40(a5)
	.loc 1 538 5
	lw	a5,-52(s0)
	lw	a5,12(a5)
	.loc 1 538 32
	sw	zero,56(a5)
	.loc 1 539 5
	lw	a5,-52(s0)
	lw	a5,12(a5)
	.loc 1 539 25
	lw	a4,-44(s0)
	sw	a4,48(a5)
	.loc 1 540 5
	lw	a5,-52(s0)
	lw	a5,12(a5)
	.loc 1 540 29
	sw	zero,328(a5)
	.loc 1 541 5
	lw	a5,-52(s0)
	lw	a5,12(a5)
	.loc 1 541 31
	lw	a4,-40(s0)
	sw	a4,16(a5)
	.loc 1 544 13
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 544 8
	lw	a5,28(a5)
	sw	a5,-20(s0)
	.loc 1 545 8
	lw	a5,-20(s0)
	andi	a5,a5,-1024
	sw	a5,-20(s0)
	.loc 1 546 15
	lw	a5,-52(s0)
	lw	a5,12(a5)
	.loc 1 546 21
	lw	a5,40(a5)
	.loc 1 546 34
	andi	a5,a5,1023
	.loc 1 546 8
	lw	a4,-20(s0)
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 547 5
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 547 17
	lw	a4,-20(s0)
	sw	a4,28(a5)
	.loc 1 552 13
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 552 8
	lw	a5,20(a5)
	sw	a5,-20(s0)
	.loc 1 553 9
	lw	a5,-52(s0)
	lw	a5,8(a5)
	.loc 1 553 5
	beq	a5,zero,.L59
	.loc 1 557 9
	lw	a5,-20(s0)
	ori	a5,a5,528
	sw	a5,-20(s0)
	j	.L60
.L59:
	.loc 1 561 9
	lw	a5,-20(s0)
	ori	a5,a5,530
	sw	a5,-20(s0)
.L60:
	.loc 1 563 5
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 563 18
	lw	a4,-20(s0)
	sw	a4,20(a5)
	.loc 1 567 13
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 567 8
	lw	a5,40(a5)
	sw	a5,-20(s0)
	.loc 1 568 8
	lw	a5,-20(s0)
	andi	a5,a5,-8
	sw	a5,-20(s0)
	.loc 1 569 8
	lw	a5,-20(s0)
	ori	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 570 5
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 570 16
	lw	a4,-20(s0)
	sw	a4,40(a5)
	.loc 1 573 9
	lw	a5,-52(s0)
	lw	a5,8(a5)
	.loc 1 573 5
	beq	a5,zero,.L61
	.loc 1 576 35
	lw	a5,-52(s0)
	lw	a5,8(a5)
	.loc 1 576 43
	lbu	a0,0(a5)
	.loc 1 577 54
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 577 49
	addi	a5,a5,32
	.loc 1 576 10
	mv	a1,a5
	.loc 1 578 53
	lw	a5,-52(s0)
	lw	a5,12(a5)
	.loc 1 578 59
	lw	a5,16(a5)
	.loc 1 576 10
	mv	a2,a5
	.loc 1 588 38
	lw	a5,-52(s0)
	lw	a5,8(a5)
	.loc 1 588 46
	lbu	a5,1(a5)
	.loc 1 588 56
	slli	a4,a5,8
	.loc 1 588 65
	li	a5,4096
	addi	a5,a5,-256
	and	a4,a4,a5
	.loc 1 591 42
	li	a5,-1073577984
	addi	a5,a5,1
	or	a5,a4,a5
	.loc 1 576 10
	mv	a4,a5
	.loc 1 593 35
	lw	a5,-52(s0)
	lw	a5,8(a5)
	.loc 1 593 43
	lw	a5,4(a5)
	.loc 1 576 10
	lw	a3,-44(s0)
	call	dma_channel_configure
	sw	a0,-24(s0)
	.loc 1 595 6
	lw	a4,-24(s0)
	li	a5,-1
	bne	a4,a5,.L61
	.loc 1 597 11
	li	a5,-1
	j	.L50
.L61:
	.loc 1 603 9
	li	a5,0
.L50:
	.loc 1 604 1
	mv	a0,a5
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE19:
	.size	i2cx_master_receive, .-i2cx_master_receive
	.section	.text.i2cx_slave_transmit,"ax",@progbits
	.align	1
	.globl	i2cx_slave_transmit
	.type	i2cx_slave_transmit, @function
i2cx_slave_transmit:
.LFB20:
	.loc 1 608 1
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
	.loc 1 609 9
	lw	a5,-28(s0)
	lw	a5,12(a5)
	.loc 1 609 15
	lw	a4,12(a5)
	.loc 1 609 5
	li	a5,2
	beq	a4,a5,.L63
	.loc 1 611 10
	li	a5,-4
	j	.L64
.L63:
	.loc 1 615 9
	lw	a5,-28(s0)
	lw	a5,12(a5)
	.loc 1 615 23
	lw	a5,324(a5)
	andi	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 615 5
	beq	a5,zero,.L65
	.loc 1 617 10
	li	a5,-2
	j	.L64
.L65:
	.loc 1 620 5
	lw	a5,-28(s0)
	lw	a5,12(a5)
	.loc 1 620 25
	lbu	a4,324(a5)
	ori	a4,a4,1
	sb	a4,324(a5)
	.loc 1 622 5
	lw	a5,-28(s0)
	lw	a5,12(a5)
	.loc 1 622 25
	lbu	a4,324(a5)
	andi	a4,a4,-3
	sb	a4,324(a5)
	.loc 1 623 5
	lw	a5,-28(s0)
	lw	a5,12(a5)
	.loc 1 623 30
	lbu	a4,324(a5)
	andi	a4,a4,-65
	sb	a4,324(a5)
	.loc 1 635 5
	lw	a5,-28(s0)
	lw	a5,12(a5)
	.loc 1 635 32
	sw	zero,52(a5)
	.loc 1 636 5
	lw	a5,-28(s0)
	lw	a5,12(a5)
	.loc 1 636 25
	lw	a4,-24(s0)
	sw	a4,44(a5)
	.loc 1 637 5
	lw	a5,-28(s0)
	lw	a5,12(a5)
	.loc 1 637 29
	sw	zero,328(a5)
	.loc 1 638 5
	lw	a5,-28(s0)
	lw	a5,12(a5)
	.loc 1 638 31
	lw	a4,-20(s0)
	sw	a4,20(a5)
	.loc 1 640 2
	lw	a0,-28(s0)
	call	i2cx_slave_fifo_write
	.loc 1 642 9
	li	a5,0
.L64:
	.loc 1 643 1
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
.LFE20:
	.size	i2cx_slave_transmit, .-i2cx_slave_transmit
	.section	.text.i2cx_slave_receive,"ax",@progbits
	.align	1
	.globl	i2cx_slave_receive
	.type	i2cx_slave_receive, @function
i2cx_slave_receive:
.LFB21:
	.loc 1 647 1
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
	.loc 1 648 9
	lw	a5,-28(s0)
	lw	a5,12(a5)
	.loc 1 648 15
	lw	a4,12(a5)
	.loc 1 648 5
	li	a5,2
	beq	a4,a5,.L67
	.loc 1 650 10
	li	a5,-4
	j	.L68
.L67:
	.loc 1 658 5
	lw	a5,-28(s0)
	lw	a5,12(a5)
	.loc 1 658 25
	lbu	a4,324(a5)
	andi	a4,a4,-3
	sb	a4,324(a5)
	.loc 1 659 5
	lw	a5,-28(s0)
	lw	a5,12(a5)
	.loc 1 659 30
	lbu	a4,324(a5)
	andi	a4,a4,-65
	sb	a4,324(a5)
	.loc 1 674 5
	lw	a4,-24(s0)
	li	a5,256
	bleu	a4,a5,.L69
	.loc 1 676 10
	li	a5,-1
	j	.L68
.L69:
	.loc 1 678 32
	lw	a5,-28(s0)
	lw	a4,12(a5)
	.loc 1 678 60
	lw	a5,-28(s0)
	lw	a5,12(a5)
	.loc 1 678 66
	lw	a5,28(a5)
	.loc 1 678 28
	addi	a5,a5,64
	add	a5,a4,a5
	.loc 1 678 2
	lw	a4,-20(s0)
	mv	a3,a5
	lw	a5,-24(s0)
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	memcpy
	.loc 1 680 5
	lw	a5,-28(s0)
	lw	a5,12(a5)
	.loc 1 680 25
	lw	a4,-24(s0)
	sw	a4,48(a5)
	.loc 1 681 5
	lw	a5,-28(s0)
	lw	a5,12(a5)
	.loc 1 681 29
	sw	zero,328(a5)
	.loc 1 682 5
	lw	a5,-28(s0)
	lw	a5,12(a5)
	.loc 1 682 11
	lw	a3,28(a5)
	.loc 1 682 5
	lw	a5,-28(s0)
	lw	a5,12(a5)
	.loc 1 682 31
	lw	a4,-24(s0)
	add	a4,a3,a4
	sw	a4,28(a5)
	.loc 1 686 9
	li	a5,0
.L68:
	.loc 1 687 1
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
.LFE21:
	.size	i2cx_slave_receive, .-i2cx_slave_receive
	.section	.text.i2cx_get_datacount,"ax",@progbits
	.align	1
	.globl	i2cx_get_datacount
	.type	i2cx_get_datacount, @function
i2cx_get_datacount:
.LFB22:
	.loc 1 691 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	.loc 1 692 13
	lw	a5,-20(s0)
	lw	a5,12(a5)
	.loc 1 692 19
	lw	a5,328(a5)
	.loc 1 693 1
	mv	a0,a5
	lw	s0,28(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE22:
	.size	i2cx_get_datacount, .-i2cx_get_datacount
	.section	.text.i2cx_control,"ax",@progbits
	.align	1
	.globl	i2cx_control
	.type	i2cx_control, @function
i2cx_control:
.LFB23:
	.loc 1 697 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,44(sp)
	.cfi_offset 8, -4
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	.loc 1 698 11
	sw	zero,-20(s0)
	.loc 1 699 10
	sw	zero,-24(s0)
	.loc 1 701 9
	lw	a5,-48(s0)
	lw	a5,12(a5)
	.loc 1 701 15
	lw	a4,12(a5)
	.loc 1 701 5
	li	a5,2
	beq	a4,a5,.L73
	.loc 1 703 10
	li	a5,-4
	j	.L74
.L73:
	.loc 1 706 2
	lw	a4,-36(s0)
	li	a5,4
	beq	a4,a5,.L75
	lw	a4,-36(s0)
	li	a5,4
	bgtu	a4,a5,.L76
	lw	a4,-36(s0)
	li	a5,3
	beq	a4,a5,.L77
	lw	a4,-36(s0)
	li	a5,3
	bgtu	a4,a5,.L76
	lw	a4,-36(s0)
	li	a5,1
	beq	a4,a5,.L78
	lw	a4,-36(s0)
	li	a5,2
	beq	a4,a5,.L79
	j	.L76
.L78:
	.loc 1 711 14
	lw	a5,-48(s0)
	lw	a5,0(a5)
	.loc 1 711 9
	lw	a5,44(a5)
	sw	a5,-20(s0)
	.loc 1 712 12
	lw	a5,-40(s0)
	andi	a5,a5,1024
	.loc 1 712 6
	beq	a5,zero,.L80
	.loc 1 715 10
	lw	a5,-20(s0)
	ori	a5,a5,2
	sw	a5,-20(s0)
	j	.L81
.L80:
	.loc 1 720 10
	lw	a5,-20(s0)
	andi	a5,a5,-3
	sw	a5,-20(s0)
.L81:
	.loc 1 722 6
	lw	a5,-48(s0)
	lw	a5,0(a5)
	.loc 1 722 19
	lw	a4,-20(s0)
	sw	a4,44(a5)
	.loc 1 725 14
	lw	a5,-48(s0)
	lw	a5,0(a5)
	.loc 1 725 9
	lw	a5,28(a5)
	sw	a5,-20(s0)
	.loc 1 726 9
	lw	a5,-20(s0)
	andi	a5,a5,-1024
	sw	a5,-20(s0)
	.loc 1 727 18
	lw	a5,-40(s0)
	andi	a5,a5,1023
	.loc 1 727 9
	lw	a4,-20(s0)
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 728 6
	lw	a5,-48(s0)
	lw	a5,0(a5)
	.loc 1 728 18
	lw	a4,-20(s0)
	sw	a4,28(a5)
	.loc 1 730 3
	j	.L82
.L79:
	.loc 1 733 14
	lw	a5,-48(s0)
	lw	a5,0(a5)
	.loc 1 733 9
	lw	a5,44(a5)
	sw	a5,-20(s0)
	.loc 1 735 12
	lw	a4,-20(s0)
	li	a5,-536821760
	addi	a5,a5,15
	and	a5,a4,a5
	sw	a5,-20(s0)
	lw	a4,-40(s0)
	li	a5,3
	beq	a4,a5,.L83
	lw	a4,-40(s0)
	li	a5,3
	bgtu	a4,a5,.L84
	lw	a4,-40(s0)
	li	a5,1
	beq	a4,a5,.L85
	lw	a4,-40(s0)
	li	a5,2
	beq	a4,a5,.L86
	j	.L84
.L85:
	.loc 1 742 10
	lw	a4,-20(s0)
	li	a5,280313856
	addi	a5,a5,-336
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 747 4
	j	.L87
.L86:
	.loc 1 751 10
	lw	a4,-20(s0)
	li	a5,28663808
	addi	a5,a5,816
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 756 4
	j	.L87
.L83:
	.loc 1 760 10
	lw	a4,-20(s0)
	li	a5,10510336
	addi	a5,a5,272
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 765 4
	j	.L87
.L84:
	.loc 1 767 11
	li	a5,-4
	j	.L74
.L87:
	.loc 1 771 6
	lw	a5,-48(s0)
	lw	a5,0(a5)
	.loc 1 771 19
	lw	a4,-20(s0)
	sw	a4,44(a5)
	.loc 1 773 3
	j	.L82
.L77:
	.loc 1 777 14
	lw	a5,-48(s0)
	lw	a5,0(a5)
	.loc 1 777 9
	lw	a5,40(a5)
	sw	a5,-20(s0)
	.loc 1 778 9
	lw	a5,-20(s0)
	andi	a5,a5,-8
	sw	a5,-20(s0)
	.loc 1 779 9
	lw	a5,-20(s0)
	ori	a5,a5,5
	sw	a5,-20(s0)
	.loc 1 780 6
	lw	a5,-48(s0)
	lw	a5,0(a5)
	.loc 1 780 17
	lw	a4,-20(s0)
	sw	a4,40(a5)
	.loc 1 782 3
	j	.L82
.L75:
	.loc 1 786 14
	lw	a5,-48(s0)
	lw	a5,0(a5)
	.loc 1 786 9
	lw	a5,40(a5)
	sw	a5,-20(s0)
	.loc 1 787 9
	lw	a5,-20(s0)
	andi	a5,a5,-8
	sw	a5,-20(s0)
	.loc 1 788 9
	lw	a5,-20(s0)
	ori	a5,a5,5
	sw	a5,-20(s0)
	.loc 1 789 6
	lw	a5,-48(s0)
	lw	a5,0(a5)
	.loc 1 789 17
	lw	a4,-20(s0)
	sw	a4,40(a5)
	.loc 1 791 3
	j	.L82
.L76:
	.loc 1 794 10
	li	a5,-4
	j	.L74
.L82:
	.loc 1 797 5
	lw	a5,-48(s0)
	lw	a5,12(a5)
	.loc 1 797 11
	lw	a4,8(a5)
	.loc 1 797 5
	lw	a5,-48(s0)
	lw	a5,12(a5)
	.loc 1 797 26
	ori	a4,a4,4
	sw	a4,8(a5)
	.loc 1 799 9
	lw	a5,-24(s0)
.L74:
	.loc 1 800 1
	mv	a0,a5
	lw	s0,44(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE23:
	.size	i2cx_control, .-i2cx_control
	.section	.text.i2cx_getstatus,"ax",@progbits
	.align	1
	.globl	i2cx_getstatus
	.type	i2cx_getstatus, @function
i2cx_getstatus:
.LFB24:
	.loc 1 804 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	.loc 1 805 12
	lw	a5,-20(s0)
	lw	a5,12(a5)
	.loc 1 805 18
	lw	a5,324(a5)
	.loc 1 806 1
	mv	a0,a5
	lw	s0,28(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE24:
	.size	i2cx_getstatus, .-i2cx_getstatus
	.section	.text.i2cx_signalevent,"ax",@progbits
	.align	1
	.globl	i2cx_signalevent
	.type	i2cx_signalevent, @function
i2cx_signalevent:
.LFB25:
	.loc 1 809 1
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
	.loc 1 811 9
	lw	a5,-24(s0)
	lw	a5,12(a5)
	.loc 1 811 15
	lw	a5,0(a5)
	.loc 1 811 5
	beq	a5,zero,.L92
	.loc 1 813 6
	lw	a5,-24(s0)
	lw	a5,12(a5)
	.loc 1 813 12
	lw	a5,0(a5)
	.loc 1 813 3
	lw	a0,-20(s0)
	jalr	a5
.LVL0:
.L92:
	.loc 1 815 1
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
.LFE25:
	.size	i2cx_signalevent, .-i2cx_signalevent
	.globl	check
	.section	.sbss.check,"aw",@nobits
	.align	2
	.type	check, @object
	.size	check, 4
check:
	.zero	4
	.section	.text.i2c_cmpl_handler,"ax",@progbits
	.align	1
	.globl	i2c_cmpl_handler
	.type	i2c_cmpl_handler, @function
i2c_cmpl_handler:
.LFB26:
	.loc 1 820 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	.loc 1 821 11
	sw	zero,-20(s0)
	.loc 1 821 22
	sw	zero,-24(s0)
	.loc 1 821 34
	sw	zero,-28(s0)
	.loc 1 823 13
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 823 8
	lw	a5,44(a5)
	sw	a5,-20(s0)
	.loc 1 826 12
	lw	a5,-20(s0)
	andi	a5,a5,4
	.loc 1 826 5
	beq	a5,zero,.L94
	.loc 1 829 14
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 829 9
	lw	a5,20(a5)
	sw	a5,-28(s0)
	.loc 1 830 9
	lw	a5,-28(s0)
	andi	a5,a5,-1024
	sw	a5,-28(s0)
	.loc 1 831 6
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 831 19
	lw	a4,-28(s0)
	sw	a4,20(a5)
.L94:
	.loc 1 844 10
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 844 16
	lw	a5,8(a5)
	.loc 1 844 31
	andi	a5,a5,8
	.loc 1 844 5
	bne	a5,zero,.L95
	.loc 1 844 59 discriminator 1
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 844 65 discriminator 1
	lw	a5,8(a5)
	.loc 1 844 80 discriminator 1
	andi	a5,a5,16
	.loc 1 844 52 discriminator 1
	beq	a5,zero,.L96
.L95:
	.loc 1 846 14
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 846 9
	lw	a5,36(a5)
	sw	a5,-20(s0)
	.loc 1 848 10
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 848 16
	lw	a5,8(a5)
	.loc 1 848 31
	andi	a5,a5,8
	.loc 1 848 6
	beq	a5,zero,.L97
	.loc 1 850 11
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 1 850 7
	beq	a5,zero,.L98
	.loc 1 852 8
	lw	a5,-36(s0)
	lw	s1,12(a5)
	.loc 1 852 37
	li	a0,2
	call	dma_channel_get_count
	mv	a5,a0
	.loc 1 852 35 discriminator 1
	sw	a5,52(s1)
	.loc 1 853 8
	lw	a5,-36(s0)
	lw	s1,12(a5)
	.loc 1 853 34
	li	a0,2
	call	dma_channel_get_count
	mv	a5,a0
	.loc 1 853 32 discriminator 1
	sw	a5,328(s1)
	j	.L99
.L98:
	.loc 1 857 37
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 857 43
	lw	a3,44(a5)
	.loc 1 857 66
	lw	a5,-20(s0)
	andi	a4,a5,255
	.loc 1 857 8
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 857 57
	sub	a4,a3,a4
	.loc 1 857 32
	sw	a4,328(a5)
.L99:
	.loc 1 861 7
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 861 28
	li	a4,128
	sw	a4,8(a5)
	.loc 1 864 7
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 864 27
	lbu	a4,324(a5)
	andi	a4,a4,-2
	sb	a4,324(a5)
.L97:
	.loc 1 867 10
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 867 16
	lw	a5,8(a5)
	.loc 1 867 31
	andi	a5,a5,16
	.loc 1 867 6
	beq	a5,zero,.L96
	.loc 1 869 11
	lw	a5,-36(s0)
	lw	a5,8(a5)
	.loc 1 869 7
	beq	a5,zero,.L100
	.loc 1 871 8
	lw	a5,-36(s0)
	lw	s1,12(a5)
	.loc 1 871 37
	li	a0,3
	call	dma_channel_get_count
	mv	a5,a0
	.loc 1 871 35 discriminator 1
	sw	a5,56(s1)
	.loc 1 872 8
	lw	a5,-36(s0)
	lw	s1,12(a5)
	.loc 1 872 34
	li	a0,3
	call	dma_channel_get_count
	mv	a5,a0
	.loc 1 872 32 discriminator 1
	sw	a5,328(s1)
	.loc 1 875 8
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 875 29
	li	a4,256
	sw	a4,8(a5)
	j	.L96
.L100:
	.loc 1 879 5
	lw	a0,-36(s0)
	call	i2cx_master_fifo_read
	.loc 1 881 37
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 881 43
	lw	a3,48(a5)
	.loc 1 881 66
	lw	a5,-20(s0)
	andi	a4,a5,255
	.loc 1 881 8
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 881 57
	sub	a4,a3,a4
	.loc 1 881 32
	sw	a4,328(a5)
	.loc 1 884 8
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 884 29
	li	a4,256
	sw	a4,8(a5)
	.loc 1 887 8
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 887 28
	lbu	a4,324(a5)
	andi	a4,a4,-2
	sb	a4,324(a5)
.L96:
	.loc 1 905 10
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 905 16
	lw	a5,8(a5)
	.loc 1 905 31
	andi	a5,a5,32
	.loc 1 905 5
	bne	a5,zero,.L101
	.loc 1 905 58 discriminator 1
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 905 64 discriminator 1
	lw	a5,8(a5)
	.loc 1 905 79 discriminator 1
	andi	a5,a5,64
	.loc 1 905 51 discriminator 1
	beq	a5,zero,.L102
.L101:
	.loc 1 907 15
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 907 10
	lw	a5,44(a5)
	sw	a5,-24(s0)
	.loc 1 908 14
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 908 9
	lw	a5,36(a5)
	sw	a5,-20(s0)
	.loc 1 911 16
	lw	a5,-24(s0)
	andi	a5,a5,8
	.loc 1 911 6
	bne	a5,zero,.L103
	.loc 1 913 11
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 913 17
	lw	a5,8(a5)
	.loc 1 913 32
	andi	a5,a5,32
	.loc 1 913 7
	beq	a5,zero,.L104
	.loc 1 916 16
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 916 11
	lw	a5,20(a5)
	sw	a5,-28(s0)
	.loc 1 917 11
	lw	a5,-28(s0)
	andi	a5,a5,-129
	sw	a5,-28(s0)
	.loc 1 918 8
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 918 21
	lw	a4,-28(s0)
	sw	a4,20(a5)
	.loc 1 921 8
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 921 29
	li	a4,512
	sw	a4,8(a5)
.L104:
	.loc 1 924 11
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 924 17
	lw	a5,8(a5)
	.loc 1 924 32
	andi	a5,a5,64
	.loc 1 924 7
	beq	a5,zero,.L105
	.loc 1 926 5
	li	a1,0
	lw	a0,-36(s0)
	call	i2cx_slave_fifo_read
	.loc 1 929 16
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 929 11
	lw	a5,20(a5)
	sw	a5,-28(s0)
	.loc 1 930 11
	lw	a5,-28(s0)
	andi	a5,a5,-3
	sw	a5,-28(s0)
	.loc 1 931 8
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 931 21
	lw	a4,-28(s0)
	sw	a4,20(a5)
	.loc 1 934 37
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 934 43
	lw	a3,56(a5)
	.loc 1 934 69
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 934 75
	lw	a4,28(a5)
	.loc 1 934 8
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 934 64
	sub	a4,a3,a4
	.loc 1 934 32
	sw	a4,328(a5)
	.loc 1 937 8
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 937 29
	li	a4,1024
	sw	a4,8(a5)
.L105:
	.loc 1 941 7
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 941 27
	lbu	a4,324(a5)
	andi	a4,a4,-2
	sb	a4,324(a5)
	j	.L106
.L103:
	.loc 1 946 11
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 946 17
	lw	a5,8(a5)
	.loc 1 946 32
	andi	a5,a5,32
	.loc 1 946 7
	beq	a5,zero,.L107
	.loc 1 949 16
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 949 11
	lw	a5,20(a5)
	sw	a5,-28(s0)
	.loc 1 950 11
	lw	a5,-28(s0)
	andi	a5,a5,-129
	sw	a5,-28(s0)
	.loc 1 951 8
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 951 21
	lw	a4,-28(s0)
	sw	a4,20(a5)
	.loc 1 954 8
	lw	a5,-36(s0)
	lw	s1,12(a5)
	.loc 1 954 37
	li	a0,2
	call	dma_channel_get_count
	mv	a5,a0
	.loc 1 954 35 discriminator 1
	sw	a5,52(s1)
	.loc 1 955 8
	lw	a5,-36(s0)
	lw	s1,12(a5)
	.loc 1 955 34
	li	a0,2
	call	dma_channel_get_count
	mv	a5,a0
	.loc 1 955 32 discriminator 1
	sw	a5,328(s1)
	.loc 1 958 8
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 958 29
	li	a4,512
	sw	a4,8(a5)
	.loc 1 961 8
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 961 28
	lbu	a4,324(a5)
	andi	a4,a4,-2
	sb	a4,324(a5)
.L107:
	.loc 1 964 11
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 964 17
	lw	a5,8(a5)
	.loc 1 964 32
	andi	a5,a5,64
	.loc 1 964 7
	beq	a5,zero,.L106
	.loc 1 967 8
	lw	a5,-36(s0)
	lw	s1,12(a5)
	.loc 1 967 34
	li	a0,3
	call	dma_channel_get_count
	mv	a5,a0
	.loc 1 967 32 discriminator 1
	sw	a5,328(s1)
	.loc 1 970 5
	li	a0,3
	call	dma_channel_abort
	.loc 1 972 20
	lw	a5,-20(s0)
	andi	a4,a5,255
	.loc 1 972 11
	lla	a5,check
	sw	a4,0(a5)
	.loc 1 974 8
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 974 29
	li	a4,1024
	sw	a4,8(a5)
	.loc 1 977 8
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 977 28
	lbu	a4,324(a5)
	andi	a4,a4,-2
	sb	a4,324(a5)
.L106:
	.loc 1 983 14
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 983 9
	lw	a5,40(a5)
	sw	a5,-28(s0)
	.loc 1 984 9
	lw	a5,-28(s0)
	andi	a5,a5,-8
	sw	a5,-28(s0)
	.loc 1 985 9
	lw	a5,-28(s0)
	ori	a5,a5,4
	sw	a5,-28(s0)
	.loc 1 986 6
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 986 17
	lw	a4,-28(s0)
	sw	a4,40(a5)
.L102:
	.loc 1 989 5
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 989 30
	lbu	a4,324(a5)
	andi	a4,a4,-13
	sb	a4,324(a5)
	.loc 1 990 1
	nop
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	lw	s1,36(sp)
	.cfi_restore 9
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE26:
	.size	i2c_cmpl_handler, .-i2c_cmpl_handler
	.section	.text.i2cx_master_fifo_write,"ax",@progbits
	.align	1
	.globl	i2cx_master_fifo_write
	.type	i2cx_master_fifo_write, @function
i2cx_master_fifo_write:
.LFB27:
	.loc 1 994 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,44(sp)
	.cfi_offset 8, -4
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	mv	a5,a1
	sb	a5,-37(s0)
	.loc 1 995 11
	sw	zero,-20(s0)
	.loc 1 995 18
	sw	zero,-24(s0)
	.loc 1 995 40
	sw	zero,-28(s0)
	.loc 1 997 85
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 997 91
	lw	a3,36(a5)
	.loc 1 997 26
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 997 32
	lw	a4,44(a5)
	.loc 1 997 51
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 997 57
	lw	a5,52(a5)
	.loc 1 997 46
	sub	a4,a4,a5
	.loc 1 997 19
	mv	a5,a3
	bleu	a5,a4,.L109
	mv	a5,a4
.L109:
	sw	a5,-24(s0)
	.loc 1 1000 5
	lbu	a5,-37(s0)
	beq	a5,zero,.L110
	.loc 1 1002 20
	li	a5,2
	sw	a5,-24(s0)
.L110:
	.loc 1 1007 9
	sw	zero,-20(s0)
	.loc 1 1007 2
	j	.L111
.L113:
	.loc 1 1010 24
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 1010 30
	lw	a4,20(a5)
	.loc 1 1010 53
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 1010 59
	lw	a5,52(a5)
	.loc 1 1010 49
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 1 1010 6
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 1010 18
	sw	a4,32(a5)
	.loc 1 1012 6
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 1012 12
	lw	a4,52(a5)
	.loc 1 1012 32
	addi	a4,a4,1
	sw	a4,52(a5)
	.loc 1 1015 10
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 1015 16
	lw	a4,52(a5)
	.loc 1 1015 43
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 1015 49
	lw	a5,44(a5)
	.loc 1 1015 6
	bne	a4,a5,.L112
	.loc 1 1018 15
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 1018 10
	lw	a5,20(a5)
	sw	a5,-28(s0)
	.loc 1 1019 10
	lw	a5,-28(s0)
	andi	a5,a5,-2
	sw	a5,-28(s0)
	.loc 1 1020 7
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 1020 20
	lw	a4,-28(s0)
	sw	a4,20(a5)
.L112:
	.loc 1 1007 37 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L111:
	.loc 1 1007 16 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	bltu	a4,a5,.L113
	.loc 1 1023 1
	nop
	nop
	lw	s0,44(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE27:
	.size	i2cx_master_fifo_write, .-i2cx_master_fifo_write
	.section	.text.i2cx_slave_fifo_write,"ax",@progbits
	.align	1
	.globl	i2cx_slave_fifo_write
	.type	i2cx_slave_fifo_write, @function
i2cx_slave_fifo_write:
.LFB28:
	.loc 1 1027 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	.loc 1 1028 11
	sw	zero,-20(s0)
	.loc 1 1028 18
	sw	zero,-24(s0)
	.loc 1 1028 40
	sw	zero,-28(s0)
	.loc 1 1029 10
	sw	zero,-32(s0)
	.loc 1 1034 19
	li	a5,1
	sw	a5,-24(s0)
	.loc 1 1037 9
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 1 1037 5
	beq	a5,zero,.L115
	.loc 1 1043 14
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 1043 9
	lw	a5,36(a5)
	sw	a5,-28(s0)
	.loc 1 1044 9
	lw	a5,-28(s0)
	andi	a5,a5,-256
	sw	a5,-28(s0)
	.loc 1 1045 30
	lw	a5,-24(s0)
	andi	a5,a5,255
	.loc 1 1045 9
	lw	a4,-28(s0)
	or	a5,a4,a5
	sw	a5,-28(s0)
	.loc 1 1046 6
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 1046 18
	lw	a4,-28(s0)
	sw	a4,36(a5)
	.loc 1 1049 35
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 1 1049 43
	lbu	a0,0(a5)
	.loc 1 1050 53
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 1050 59
	lw	a5,20(a5)
	.loc 1 1049 10
	mv	a1,a5
	.loc 1 1051 54
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 1051 49
	addi	a5,a5,32
	.loc 1 1049 10
	mv	a2,a5
	.loc 1 1061 38
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 1 1061 46
	lbu	a5,1(a5)
	.loc 1 1061 56
	slli	a5,a5,4
	.loc 1 1061 65
	andi	a4,a5,255
	.loc 1 1064 42
	li	a5,-1073668096
	addi	a5,a5,1
	or	a5,a4,a5
	.loc 1 1049 10
	mv	a4,a5
	.loc 1 1066 35
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 1 1066 43
	lw	a5,4(a5)
	.loc 1 1049 10
	lw	a3,-24(s0)
	call	dma_channel_configure
	sw	a0,-32(s0)
	j	.L114
.L115:
	.loc 1 1077 10
	sw	zero,-20(s0)
	.loc 1 1077 3
	j	.L117
.L118:
	.loc 1 1080 25
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 1080 31
	lw	a4,20(a5)
	.loc 1 1080 54
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 1080 60
	lw	a5,52(a5)
	.loc 1 1080 50
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 1 1080 7
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 1080 19
	sw	a4,32(a5)
	.loc 1 1082 7
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 1082 13
	lw	a4,52(a5)
	.loc 1 1082 33
	addi	a4,a4,1
	sw	a4,52(a5)
	.loc 1 1083 7
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 1083 13
	lw	a4,328(a5)
	.loc 1 1083 30
	addi	a4,a4,1
	sw	a4,328(a5)
	.loc 1 1077 38 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L117:
	.loc 1 1077 17 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	bltu	a4,a5,.L118
.L114:
	.loc 1 1086 1
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE28:
	.size	i2cx_slave_fifo_write, .-i2cx_slave_fifo_write
	.section	.text.i2cx_fifo_empty_handler,"ax",@progbits
	.align	1
	.globl	i2cx_fifo_empty_handler
	.type	i2cx_fifo_empty_handler, @function
i2cx_fifo_empty_handler:
.LFB29:
	.loc 1 1090 1
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
	.loc 1 1091 9
	lw	a5,-20(s0)
	lw	a5,12(a5)
	.loc 1 1091 15
	lw	a4,12(a5)
	.loc 1 1091 5
	li	a5,2
	bne	a4,a5,.L123
	.loc 1 1096 9
	lw	a5,-20(s0)
	lw	a5,12(a5)
	.loc 1 1096 15
	lw	a5,8(a5)
	.loc 1 1096 30
	andi	a5,a5,8
	.loc 1 1096 5
	beq	a5,zero,.L122
	.loc 1 1098 3
	li	a1,0
	lw	a0,-20(s0)
	call	i2cx_master_fifo_write
	j	.L119
.L122:
	.loc 1 1100 14
	lw	a5,-20(s0)
	lw	a5,12(a5)
	.loc 1 1100 20
	lw	a5,8(a5)
	j	.L119
.L123:
	.loc 1 1093 3
	nop
.L119:
	.loc 1 1104 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE29:
	.size	i2cx_fifo_empty_handler, .-i2cx_fifo_empty_handler
	.section	.text.i2cx_master_fifo_read,"ax",@progbits
	.align	1
	.globl	i2cx_master_fifo_read
	.type	i2cx_master_fifo_read, @function
i2cx_master_fifo_read:
.LFB30:
	.loc 1 1108 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,44(sp)
	.cfi_offset 8, -4
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	.loc 1 1109 11
	sw	zero,-20(s0)
	.loc 1 1109 18
	sw	zero,-24(s0)
	.loc 1 1109 39
	sw	zero,-28(s0)
	.loc 1 1111 84
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 1111 90
	lw	a3,36(a5)
	.loc 1 1111 25
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 1111 31
	lw	a4,48(a5)
	.loc 1 1111 50
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 1111 56
	lw	a5,56(a5)
	.loc 1 1111 45
	sub	a4,a4,a5
	.loc 1 1111 18
	mv	a5,a3
	bleu	a5,a4,.L125
	mv	a5,a4
.L125:
	sw	a5,-24(s0)
	.loc 1 1116 9
	sw	zero,-20(s0)
	.loc 1 1116 2
	j	.L126
.L128:
	.loc 1 1119 69
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 1119 74
	lw	a3,32(a5)
	.loc 1 1119 6
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 1119 12
	lw	a4,16(a5)
	.loc 1 1119 35
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 1119 41
	lw	a5,56(a5)
	.loc 1 1119 31
	add	a5,a4,a5
	.loc 1 1119 63
	andi	a4,a3,0xff
	sb	a4,0(a5)
	.loc 1 1121 6
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 1121 12
	lw	a4,56(a5)
	.loc 1 1121 32
	addi	a4,a4,1
	sw	a4,56(a5)
	.loc 1 1124 10
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 1124 16
	lw	a4,56(a5)
	.loc 1 1124 43
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 1124 49
	lw	a5,48(a5)
	.loc 1 1124 6
	bne	a4,a5,.L127
	.loc 1 1127 15
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 1127 10
	lw	a5,20(a5)
	sw	a5,-28(s0)
	.loc 1 1128 10
	lw	a5,-28(s0)
	andi	a5,a5,-3
	sw	a5,-28(s0)
	.loc 1 1129 7
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 1129 20
	lw	a4,-28(s0)
	sw	a4,20(a5)
.L127:
	.loc 1 1116 36 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L126:
	.loc 1 1116 16 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	bltu	a4,a5,.L128
	.loc 1 1132 1
	nop
	nop
	lw	s0,44(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE30:
	.size	i2cx_master_fifo_read, .-i2cx_master_fifo_read
	.section	.text.i2cx_slave_fifo_read,"ax",@progbits
	.align	1
	.globl	i2cx_slave_fifo_read
	.type	i2cx_slave_fifo_read, @function
i2cx_slave_fifo_read:
.LFB31:
	.loc 1 1136 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,44(sp)
	.cfi_offset 8, -4
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	mv	a5,a1
	sb	a5,-37(s0)
	.loc 1 1137 11
	sw	zero,-20(s0)
	.loc 1 1137 18
	sw	zero,-24(s0)
	.loc 1 1137 39
	sw	zero,-28(s0)
	.loc 1 1146 27
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 1146 33
	lw	a5,320(a5)
	.loc 1 1146 21
	andi	a5,a5,255
	sw	a5,-28(s0)
	.loc 1 1149 5
	lw	a4,-28(s0)
	li	a5,256
	bleu	a4,a5,.L130
.L131:
	.loc 1 1151 8
	j	.L131
.L130:
	.loc 1 1154 5
	lbu	a5,-37(s0)
	beq	a5,zero,.L132
	.loc 1 1156 24
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 1156 19
	lw	a5,36(a5)
	sw	a5,-24(s0)
	j	.L133
.L132:
	.loc 1 1161 45
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 1161 51
	lw	a5,24(a5)
	.loc 1 1161 19
	lw	a4,-28(s0)
	sub	a5,a4,a5
	sw	a5,-24(s0)
.L133:
	.loc 1 1165 5
	lw	a4,-24(s0)
	li	a5,256
	bleu	a4,a5,.L134
.L135:
	.loc 1 1167 8
	j	.L135
.L134:
	.loc 1 1172 9
	sw	zero,-20(s0)
	.loc 1 1172 2
	j	.L136
.L138:
	.loc 1 1175 68
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 1175 73
	lw	a4,32(a5)
	.loc 1 1175 6
	lw	a5,-36(s0)
	lw	a3,12(a5)
	.loc 1 1175 34
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 1175 40
	lw	a5,56(a5)
	.loc 1 1175 62
	andi	a4,a4,0xff
	add	a5,a3,a5
	sb	a4,64(a5)
	.loc 1 1177 6
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 1177 12
	lw	a4,56(a5)
	.loc 1 1177 32
	addi	a4,a4,1
	sw	a4,56(a5)
	.loc 1 1179 10
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 1179 16
	lw	a4,56(a5)
	.loc 1 1179 6
	li	a5,256
	bne	a4,a5,.L137
	.loc 1 1182 7
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 1182 13
	lw	a4,60(a5)
	.loc 1 1182 36
	addi	a4,a4,1
	sw	a4,60(a5)
	.loc 1 1183 7
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 1183 34
	sw	zero,56(a5)
.L137:
	.loc 1 1172 36 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L136:
	.loc 1 1172 16 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	bltu	a4,a5,.L138
	.loc 1 1187 5
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 1187 32
	lw	a4,-28(s0)
	sw	a4,24(a5)
	.loc 1 1188 1
	nop
	lw	s0,44(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE31:
	.size	i2cx_slave_fifo_read, .-i2cx_slave_fifo_read
	.section	.text.i2cx_fifo_full_handler,"ax",@progbits
	.align	1
	.globl	i2cx_fifo_full_handler
	.type	i2cx_fifo_full_handler, @function
i2cx_fifo_full_handler:
.LFB32:
	.loc 1 1191 1
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
	.loc 1 1192 9
	lw	a5,-20(s0)
	lw	a5,12(a5)
	.loc 1 1192 15
	lw	a4,12(a5)
	.loc 1 1192 5
	li	a5,2
	bne	a4,a5,.L143
	.loc 1 1197 9
	lw	a5,-20(s0)
	lw	a5,12(a5)
	.loc 1 1197 15
	lw	a5,8(a5)
	.loc 1 1197 30
	andi	a5,a5,16
	.loc 1 1197 5
	beq	a5,zero,.L142
	.loc 1 1199 3
	lw	a0,-20(s0)
	call	i2cx_master_fifo_read
	j	.L139
.L142:
	.loc 1 1201 14
	lw	a5,-20(s0)
	lw	a5,12(a5)
	.loc 1 1201 20
	lw	a5,8(a5)
	.loc 1 1201 35
	andi	a5,a5,64
	.loc 1 1201 10
	beq	a5,zero,.L139
	.loc 1 1203 3
	li	a1,1
	lw	a0,-20(s0)
	call	i2cx_slave_fifo_read
	j	.L139
.L143:
	.loc 1 1194 3
	nop
.L139:
	.loc 1 1205 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE32:
	.size	i2cx_fifo_full_handler, .-i2cx_fifo_full_handler
	.section	.text.i2cx_slave_addr_hit_handler,"ax",@progbits
	.align	1
	.globl	i2cx_slave_addr_hit_handler
	.type	i2cx_slave_addr_hit_handler, @function
i2cx_slave_addr_hit_handler:
.LFB33:
	.loc 1 1208 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	.loc 1 1209 11
	sw	zero,-20(s0)
	.loc 1 1210 10
	sw	zero,-24(s0)
	.loc 1 1212 9
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 1212 15
	lw	a4,12(a5)
	.loc 1 1212 5
	li	a5,2
	bne	a4,a5,.L149
	.loc 1 1218 9
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 1218 15
	lw	a5,8(a5)
	.loc 1 1218 30
	andi	a5,a5,64
	.loc 1 1218 5
	beq	a5,zero,.L147
	.loc 1 1221 6
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 1221 36
	sw	zero,60(a5)
	.loc 1 1222 6
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 1222 33
	sw	zero,56(a5)
	.loc 1 1224 6
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 1224 32
	sw	zero,28(a5)
	.loc 1 1225 25
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 1225 31
	addi	a5,a5,64
	.loc 1 1225 3
	mv	a4,a5
	li	a5,256
	mv	a2,a5
	li	a1,0
	mv	a0,a4
	call	memset
	.loc 1 1227 10
	lw	a5,-36(s0)
	lw	a5,8(a5)
	.loc 1 1227 6
	beq	a5,zero,.L148
	.loc 1 1229 40
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 1229 46
	lw	a4,320(a5)
	.loc 1 1229 7
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 1229 75
	andi	a4,a4,255
	.loc 1 1229 34
	sw	a4,24(a5)
	.loc 1 1235 15
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 1235 10
	lw	a5,36(a5)
	sw	a5,-20(s0)
	.loc 1 1236 10
	lw	a5,-20(s0)
	andi	a5,a5,-256
	sw	a5,-20(s0)
	.loc 1 1238 7
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 1238 19
	lw	a4,-20(s0)
	sw	a4,36(a5)
	.loc 1 1241 36
	lw	a5,-36(s0)
	lw	a5,8(a5)
	.loc 1 1241 44
	lbu	a0,0(a5)
	.loc 1 1242 55
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 1242 50
	addi	a5,a5,32
	.loc 1 1241 11
	mv	a1,a5
	.loc 1 1243 54
	lw	a5,-36(s0)
	lw	a4,12(a5)
	.loc 1 1243 82
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 1243 88
	lw	a5,56(a5)
	.loc 1 1243 50
	addi	a5,a5,64
	add	a5,a4,a5
	.loc 1 1241 11
	mv	a2,a5
	.loc 1 1253 39
	lw	a5,-36(s0)
	lw	a5,8(a5)
	.loc 1 1253 47
	lbu	a5,1(a5)
	.loc 1 1253 57
	slli	a4,a5,8
	.loc 1 1253 66
	li	a5,4096
	addi	a5,a5,-256
	and	a4,a4,a5
	.loc 1 1256 43
	li	a5,-1073577984
	addi	a5,a5,1
	or	a5,a4,a5
	.loc 1 1241 11
	mv	a4,a5
	.loc 1 1258 36
	lw	a5,-36(s0)
	lw	a5,8(a5)
	.loc 1 1258 44
	lw	a5,4(a5)
	.loc 1 1241 11
	li	a3,256
	call	dma_channel_configure
	sw	a0,-24(s0)
	j	.L144
.L148:
	.loc 1 1268 7
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 1268 34
	sw	zero,24(a5)
	.loc 1 1271 15
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 1271 10
	lw	a5,20(a5)
	sw	a5,-20(s0)
	.loc 1 1272 10
	lw	a5,-20(s0)
	ori	a5,a5,2
	sw	a5,-20(s0)
	.loc 1 1273 7
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 1273 20
	lw	a4,-20(s0)
	sw	a4,20(a5)
	j	.L144
.L147:
	.loc 1 1277 14
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 1277 20
	lw	a5,8(a5)
	.loc 1 1277 35
	andi	a5,a5,32
	.loc 1 1277 10
	beq	a5,zero,.L144
	.loc 1 1280 6
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 1280 26
	sb	zero,32(a5)
	.loc 1 1284 14
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 1284 9
	lw	a5,20(a5)
	sw	a5,-20(s0)
	.loc 1 1285 9
	lw	a5,-20(s0)
	ori	a5,a5,128
	sw	a5,-20(s0)
	.loc 1 1286 6
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 1286 19
	lw	a4,-20(s0)
	sw	a4,20(a5)
	j	.L144
.L149:
	.loc 1 1214 3
	nop
.L144:
	.loc 1 1288 1
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE33:
	.size	i2cx_slave_addr_hit_handler, .-i2cx_slave_addr_hit_handler
	.section	.text.i2cx_irq_handler,"ax",@progbits
	.align	1
	.globl	i2cx_irq_handler
	.type	i2cx_irq_handler, @function
i2cx_irq_handler:
.LFB34:
	.loc 1 1292 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-52(s0)
	.loc 1 1293 11
	sw	zero,-24(s0)
	.loc 1 1294 11
	sw	zero,-28(s0)
	.loc 1 1295 11
	sw	zero,-32(s0)
	.loc 1 1296 11
	sw	zero,-36(s0)
	.loc 1 1297 11
	sw	zero,-20(s0)
	.loc 1 1299 21
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 1299 16
	lw	a5,24(a5)
	sw	a5,-24(s0)
	.loc 1 1299 8
	lw	a5,-24(s0)
	sw	a5,-32(s0)
	.loc 1 1300 14
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 1300 9
	lw	a5,44(a5)
	sw	a5,-28(s0)
	.loc 1 1301 13
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 1301 8
	lw	a5,36(a5)
	sw	a5,-36(s0)
	.loc 1 1304 5
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 1304 28
	lw	a4,-32(s0)
	andi	a4,a4,496
	.loc 1 1304 19
	sw	a4,24(a5)
	.loc 1 1306 13
	lw	a5,-24(s0)
	andi	a5,a5,512
	.loc 1 1306 5
	beq	a5,zero,.L151
	.loc 1 1306 52 discriminator 1
	lw	a5,-24(s0)
	andi	a5,a5,8
	.loc 1 1306 42 discriminator 1
	beq	a5,zero,.L151
	.loc 1 1309 10
	lw	a5,-52(s0)
	lw	a5,12(a5)
	.loc 1 1309 24
	lw	a5,324(a5)
	srli	a5,a5,2
	andi	a5,a5,3
	andi	a5,a5,0xff
	.loc 1 1309 6
	bne	a5,zero,.L152
	.loc 1 1312 17
	lw	a5,-28(s0)
	andi	a5,a5,4
	.loc 1 1312 7
	bne	a5,zero,.L153
	.loc 1 1314 8
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 1314 22
	li	a4,8
	sw	a4,24(a5)
	.loc 1 1316 54
	lw	a5,-36(s0)
	andi	a5,a5,256
	.loc 1 1316 8
	beq	a5,zero,.L154
	.loc 1 1318 9
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 1318 23
	li	a4,512
	sw	a4,24(a5)
.L154:
	.loc 1 1322 8
	lw	a5,-52(s0)
	lw	a5,12(a5)
	.loc 1 1322 36
	lbu	a4,324(a5)
	andi	a4,a4,-17
	sb	a4,324(a5)
	.loc 1 1324 52
	lw	a5,-36(s0)
	andi	a5,a5,256
	.loc 1 1324 8
	bne	a5,zero,.L155
	.loc 1 1326 9
	lw	a5,-52(s0)
	lw	a5,12(a5)
	.loc 1 1326 44
	lw	a4,-36(s0)
	sw	a4,320(a5)
	.loc 1 1329 13
	lw	a5,-20(s0)
	ori	a5,a5,8
	sw	a5,-20(s0)
	.loc 1 1330 9
	lw	a5,-52(s0)
	lw	a5,12(a5)
	.loc 1 1330 34
	lbu	a4,324(a5)
	andi	a4,a4,-13
	ori	a4,a4,4
	sb	a4,324(a5)
	.loc 1 1333 9
	lw	a5,-52(s0)
	lw	a5,12(a5)
	.loc 1 1333 30
	li	a4,64
	sw	a4,8(a5)
	j	.L156
.L155:
	.loc 1 1335 57
	lw	a5,-36(s0)
	andi	a5,a5,256
	.loc 1 1335 13
	beq	a5,zero,.L156
	.loc 1 1338 13
	lw	a5,-20(s0)
	ori	a5,a5,4
	sw	a5,-20(s0)
	.loc 1 1339 9
	lw	a5,-52(s0)
	lw	a5,12(a5)
	.loc 1 1339 34
	lbu	a4,324(a5)
	andi	a4,a4,-13
	ori	a4,a4,8
	sb	a4,324(a5)
	.loc 1 1342 9
	lw	a5,-52(s0)
	lw	a5,12(a5)
	.loc 1 1342 30
	li	a4,32
	sw	a4,8(a5)
.L156:
	.loc 1 1346 5
	lw	a0,-52(s0)
	call	i2cx_slave_addr_hit_handler
.L153:
	.loc 1 1349 11
	lw	a5,-20(s0)
	ori	a5,a5,2
	sw	a5,-20(s0)
	.loc 1 1309 6
	j	.L158
.L152:
	.loc 1 1353 7
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 1353 21
	li	a4,512
	sw	a4,24(a5)
	.loc 1 1356 7
	lw	a5,-52(s0)
	lw	a5,12(a5)
	.loc 1 1356 42
	lw	a4,-36(s0)
	sw	a4,320(a5)
	.loc 1 1358 4
	lw	a0,-52(s0)
	call	i2c_cmpl_handler
	.loc 1 1360 11
	lw	a5,-20(s0)
	ori	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 1309 6
	j	.L158
.L151:
	.loc 1 1363 17
	lw	a5,-24(s0)
	andi	a5,a5,512
	.loc 1 1363 10
	beq	a5,zero,.L159
	.loc 1 1365 6
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 1365 20
	li	a4,512
	sw	a4,24(a5)
	.loc 1 1368 6
	lw	a5,-52(s0)
	lw	a5,12(a5)
	.loc 1 1368 41
	lw	a4,-36(s0)
	sw	a4,320(a5)
	.loc 1 1370 3
	lw	a0,-52(s0)
	call	i2c_cmpl_handler
	.loc 1 1372 10
	lw	a5,-20(s0)
	ori	a5,a5,1
	sw	a5,-20(s0)
	j	.L158
.L159:
	.loc 1 1375 17
	lw	a5,-24(s0)
	andi	a5,a5,8
	.loc 1 1375 10
	beq	a5,zero,.L160
	.loc 1 1377 16
	lw	a5,-28(s0)
	andi	a5,a5,4
	.loc 1 1377 6
	bne	a5,zero,.L161
	.loc 1 1379 7
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 1379 21
	li	a4,8
	sw	a4,24(a5)
	.loc 1 1381 53
	lw	a5,-36(s0)
	andi	a5,a5,256
	.loc 1 1381 7
	beq	a5,zero,.L162
	.loc 1 1383 8
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 1383 22
	li	a4,512
	sw	a4,24(a5)
.L162:
	.loc 1 1387 7
	lw	a5,-52(s0)
	lw	a5,12(a5)
	.loc 1 1387 35
	lbu	a4,324(a5)
	andi	a4,a4,-17
	sb	a4,324(a5)
	.loc 1 1389 51
	lw	a5,-36(s0)
	andi	a5,a5,256
	.loc 1 1389 7
	bne	a5,zero,.L163
	.loc 1 1391 8
	lw	a5,-52(s0)
	lw	a5,12(a5)
	.loc 1 1391 43
	lw	a4,-36(s0)
	sw	a4,320(a5)
	.loc 1 1394 12
	lw	a5,-20(s0)
	ori	a5,a5,8
	sw	a5,-20(s0)
	.loc 1 1395 8
	lw	a5,-52(s0)
	lw	a5,12(a5)
	.loc 1 1395 33
	lbu	a4,324(a5)
	andi	a4,a4,-13
	ori	a4,a4,4
	sb	a4,324(a5)
	.loc 1 1398 8
	lw	a5,-52(s0)
	lw	a5,12(a5)
	.loc 1 1398 29
	li	a4,64
	sw	a4,8(a5)
	j	.L164
.L163:
	.loc 1 1400 56
	lw	a5,-36(s0)
	andi	a5,a5,256
	.loc 1 1400 12
	beq	a5,zero,.L164
	.loc 1 1403 12
	lw	a5,-20(s0)
	ori	a5,a5,4
	sw	a5,-20(s0)
	.loc 1 1404 8
	lw	a5,-52(s0)
	lw	a5,12(a5)
	.loc 1 1404 33
	lbu	a4,324(a5)
	andi	a4,a4,-13
	ori	a4,a4,8
	sb	a4,324(a5)
	.loc 1 1407 8
	lw	a5,-52(s0)
	lw	a5,12(a5)
	.loc 1 1407 29
	li	a4,32
	sw	a4,8(a5)
.L164:
	.loc 1 1411 4
	lw	a0,-52(s0)
	call	i2cx_slave_addr_hit_handler
.L161:
	.loc 1 1413 10
	lw	a5,-20(s0)
	ori	a5,a5,2
	sw	a5,-20(s0)
	j	.L158
.L160:
	.loc 1 1417 10
	lw	a5,-20(s0)
	ori	a5,a5,2
	sw	a5,-20(s0)
.L158:
	.loc 1 1420 12
	lw	a5,-24(s0)
	andi	a5,a5,1
	.loc 1 1420 5
	beq	a5,zero,.L165
	.loc 1 1422 3
	lw	a0,-52(s0)
	call	i2cx_fifo_empty_handler
.L165:
	.loc 1 1425 12
	lw	a5,-24(s0)
	andi	a5,a5,2
	.loc 1 1425 5
	beq	a5,zero,.L166
	.loc 1 1428 6
	lw	a5,-52(s0)
	lw	a5,12(a5)
	.loc 1 1428 41
	lw	a4,-36(s0)
	sw	a4,320(a5)
	.loc 1 1430 3
	lw	a0,-52(s0)
	call	i2cx_fifo_full_handler
.L166:
	.loc 1 1434 14
	lw	a5,-24(s0)
	andi	a5,a5,1024
	.loc 1 1434 5
	bne	a5,zero,.L167
	.loc 1 1437 16
	lw	a5,-28(s0)
	andi	a5,a5,4
	.loc 1 1437 6
	bne	a5,zero,.L167
	.loc 1 1439 14
	lw	a5,-24(s0)
	andi	a5,a5,256
	.loc 1 1439 7
	bne	a5,zero,.L167
	.loc 1 1443 19
	lw	a5,-24(s0)
	andi	a5,a5,128
	.loc 1 1443 12
	beq	a5,zero,.L167
	.loc 1 1446 12
	lw	a5,-20(s0)
	ori	a5,a5,16
	sw	a5,-20(s0)
	.loc 1 1448 8
	lw	a5,-52(s0)
	lw	a5,12(a5)
	.loc 1 1448 28
	li	a4,1
	sb	a4,32(a5)
.L167:
	.loc 1 1458 13
	lw	a5,-24(s0)
	andi	a5,a5,8
	.loc 1 1458 5
	beq	a5,zero,.L168
	.loc 1 1458 52 discriminator 1
	lw	a4,-24(s0)
	li	a5,4096
	and	a5,a4,a5
	.loc 1 1458 42 discriminator 1
	beq	a5,zero,.L168
	.loc 1 1458 94 discriminator 2
	lw	a5,-28(s0)
	andi	a5,a5,4
	.loc 1 1458 82 discriminator 2
	bne	a5,zero,.L168
	.loc 1 1461 6
	lw	a5,-52(s0)
	lw	a5,12(a5)
	.loc 1 1461 34
	lbu	a4,324(a5)
	ori	a4,a4,16
	sb	a4,324(a5)
	.loc 1 1464 10
	lw	a5,-20(s0)
	ori	a5,a5,32
	sw	a5,-20(s0)
	.loc 1 1466 6
	lw	a5,-52(s0)
	lw	a5,12(a5)
	.loc 1 1466 31
	lbu	a4,324(a5)
	andi	a4,a4,-13
	ori	a4,a4,4
	sb	a4,324(a5)
.L168:
	.loc 1 1470 13
	lw	a5,-24(s0)
	andi	a5,a5,16
	.loc 1 1470 5
	beq	a5,zero,.L169
	.loc 1 1470 53 discriminator 1
	lw	a5,-28(s0)
	andi	a5,a5,4
	.loc 1 1470 42 discriminator 1
	beq	a5,zero,.L169
	.loc 1 1473 6
	lw	a5,-52(s0)
	lw	a5,12(a5)
	.loc 1 1473 38
	lbu	a4,324(a5)
	ori	a4,a4,32
	sb	a4,324(a5)
	.loc 1 1475 10
	lw	a5,-20(s0)
	ori	a5,a5,64
	sw	a5,-20(s0)
.L169:
	.loc 1 1479 13
	lw	a5,-24(s0)
	andi	a5,a5,128
	.loc 1 1479 5
	beq	a5,zero,.L170
	.loc 1 1479 54 discriminator 1
	lw	a5,-28(s0)
	andi	a5,a5,4
	.loc 1 1479 42 discriminator 1
	bne	a5,zero,.L170
	.loc 1 1483 14
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 1483 9
	lw	a5,40(a5)
	sw	a5,-36(s0)
	.loc 1 1484 9
	lw	a5,-36(s0)
	andi	a5,a5,-8
	sw	a5,-36(s0)
	.loc 1 1485 9
	lw	a5,-36(s0)
	ori	a5,a5,4
	sw	a5,-36(s0)
	.loc 1 1486 6
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 1486 17
	lw	a4,-36(s0)
	sw	a4,40(a5)
	.loc 1 1489 6
	lw	a5,-52(s0)
	lw	a5,12(a5)
	.loc 1 1489 26
	lbu	a4,324(a5)
	andi	a4,a4,-2
	sb	a4,324(a5)
.L170:
	.loc 1 1492 2
	lw	a1,-52(s0)
	lw	a0,-20(s0)
	call	i2cx_signalevent
	.loc 1 1493 1
	nop
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE34:
	.size	i2cx_irq_handler, .-i2cx_irq_handler
	.section	.text.i2c_get_version,"ax",@progbits
	.align	1
	.globl	i2c_get_version
	.type	i2c_get_version, @function
i2c_get_version:
.LFB35:
	.loc 1 1534 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 1535 9
	li	a5,514
	sh	a5,-20(s0)
	li	a5,521
	sh	a5,-18(s0)
	.loc 1 1535 9 is_stmt 0 discriminator 1
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
	.loc 1 1536 1 is_stmt 1
	mv	a0,a5
	lw	s0,28(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE35:
	.size	i2c_get_version, .-i2c_get_version
	.section	.text.i2c_get_capabilities,"ax",@progbits
	.align	1
	.globl	i2c_get_capabilities
	.type	i2c_get_capabilities, @function
i2c_get_capabilities:
.LFB36:
	.loc 1 1540 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 1541 9
	ori	a5,a5,1
	.loc 1 1542 1
	mv	a0,a5
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE36:
	.size	i2c_get_capabilities, .-i2c_get_capabilities
	.section	.text.i2c_initialize,"ax",@progbits
	.align	1
	.globl	i2c_initialize
	.type	i2c_initialize, @function
i2c_initialize:
.LFB37:
	.loc 1 1546 1
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
	.loc 1 1547 9
	lla	a1,I2C_Resources
	lw	a0,-20(s0)
	call	i2cx_initialize
	mv	a5,a0
	.loc 1 1548 1
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
.LFE37:
	.size	i2c_initialize, .-i2c_initialize
	.section	.text.i2c_uninitialize,"ax",@progbits
	.align	1
	.globl	i2c_uninitialize
	.type	i2c_uninitialize, @function
i2c_uninitialize:
.LFB38:
	.loc 1 1552 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 1553 9
	lla	a0,I2C_Resources
	call	i2cx_uninitialize
	mv	a5,a0
	.loc 1 1554 1
	mv	a0,a5
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE38:
	.size	i2c_uninitialize, .-i2c_uninitialize
	.section	.text.i2c_power_control,"ax",@progbits
	.align	1
	.globl	i2c_power_control
	.type	i2c_power_control, @function
i2c_power_control:
.LFB39:
	.loc 1 1558 1
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
	.loc 1 1559 9
	lla	a1,I2C_Resources
	lw	a0,-20(s0)
	call	i2cx_power_control
	mv	a5,a0
	.loc 1 1560 1
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
.LFE39:
	.size	i2c_power_control, .-i2c_power_control
	.section	.text.i2c_master_transmit,"ax",@progbits
	.align	1
	.globl	i2c_master_transmit
	.type	i2c_master_transmit, @function
i2c_master_transmit:
.LFB40:
	.loc 1 1564 1
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
	mv	a5,a3
	sb	a5,-29(s0)
	.loc 1 1565 9
	lbu	a5,-29(s0)
	lla	a4,I2C_Resources
	mv	a3,a5
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	i2cx_master_transmit
	mv	a5,a0
	.loc 1 1566 1
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
.LFE40:
	.size	i2c_master_transmit, .-i2c_master_transmit
	.section	.text.i2c_master_receive,"ax",@progbits
	.align	1
	.globl	i2c_master_receive
	.type	i2c_master_receive, @function
i2c_master_receive:
.LFB41:
	.loc 1 1570 1
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
	mv	a5,a3
	sb	a5,-29(s0)
	.loc 1 1571 9
	lbu	a5,-29(s0)
	lla	a4,I2C_Resources
	mv	a3,a5
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	i2cx_master_receive
	mv	a5,a0
	.loc 1 1572 1
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
.LFE41:
	.size	i2c_master_receive, .-i2c_master_receive
	.section	.text.i2c_slave_transmit,"ax",@progbits
	.align	1
	.globl	i2c_slave_transmit
	.type	i2c_slave_transmit, @function
i2c_slave_transmit:
.LFB42:
	.loc 1 1576 1
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
	.loc 1 1577 9
	lla	a2,I2C_Resources
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	i2cx_slave_transmit
	mv	a5,a0
	.loc 1 1578 1
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
.LFE42:
	.size	i2c_slave_transmit, .-i2c_slave_transmit
	.section	.text.i2c_slave_receive,"ax",@progbits
	.align	1
	.globl	i2c_slave_receive
	.type	i2c_slave_receive, @function
i2c_slave_receive:
.LFB43:
	.loc 1 1582 1
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
	.loc 1 1583 9
	lla	a2,I2C_Resources
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	i2cx_slave_receive
	mv	a5,a0
	.loc 1 1584 1
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
.LFE43:
	.size	i2c_slave_receive, .-i2c_slave_receive
	.section	.text.i2c_get_datacount,"ax",@progbits
	.align	1
	.globl	i2c_get_datacount
	.type	i2c_get_datacount, @function
i2c_get_datacount:
.LFB44:
	.loc 1 1588 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 1589 9
	lla	a0,I2C_Resources
	call	i2cx_get_datacount
	mv	a5,a0
	.loc 1 1590 1
	mv	a0,a5
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE44:
	.size	i2c_get_datacount, .-i2c_get_datacount
	.section	.text.i2c_control,"ax",@progbits
	.align	1
	.globl	i2c_control
	.type	i2c_control, @function
i2c_control:
.LFB45:
	.loc 1 1594 1
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
	.loc 1 1595 9
	lla	a3,I2C_Resources
	li	a2,0
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	i2cx_control
	mv	a5,a0
	.loc 1 1596 1
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
.LFE45:
	.size	i2c_control, .-i2c_control
	.section	.text.i2c_get_status,"ax",@progbits
	.align	1
	.globl	i2c_get_status
	.type	i2c_get_status, @function
i2c_get_status:
.LFB46:
	.loc 1 1600 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 1601 9
	lla	a0,I2C_Resources
	call	i2cx_getstatus
	mv	a5,a0
	.loc 1 1602 1
	mv	a0,a5
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE46:
	.size	i2c_get_status, .-i2c_get_status
	.section	.text.i2c_irq_handler,"ax",@progbits
	.align	1
	.globl	i2c_irq_handler
	.type	i2c_irq_handler, @function
i2c_irq_handler:
.LFB47:
	.loc 1 1622 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 1623 2
	lla	a0,I2C_Resources
	call	i2cx_irq_handler
	.loc 1 1624 1
	nop
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE47:
	.size	i2c_irq_handler, .-i2c_irq_handler
	.globl	Driver_I2C
	.section	.rodata.Driver_I2C,"a"
	.align	2
	.type	Driver_I2C, @object
	.size	Driver_I2C, 48
Driver_I2C:
	.word	i2c_get_version
	.word	i2c_get_capabilities
	.word	i2c_initialize
	.word	i2c_uninitialize
	.word	i2c_power_control
	.word	i2c_master_transmit
	.word	i2c_master_receive
	.word	i2c_slave_transmit
	.word	i2c_slave_receive
	.word	i2c_get_datacount
	.word	i2c_control
	.word	i2c_get_status
	.text
.Letext0:
	.file 3 "/home/lc/tools/riscv32-unknown-elf/lib/gcc/riscv32-unknown-elf/13.2.0/include/stdint-gcc.h"
	.file 4 "ae350_soc/driver/ae350/../../../ae350_soc/driver/ae350/../../../ae350_soc/driver/include/../../../ae350_soc/driver/include/Driver_Common.h"
	.file 5 "ae350_soc/driver/ae350/../../../ae350_soc/driver/ae350/../../../ae350_soc/driver/include/Driver_I2C.h"
	.file 6 "ae350_soc/driver/ae350/../../../ae350_soc/driver/ae350/../../../ae350_soc/driver/ae350/../../../ae350_soc/ae350/../../ae350_soc/ae350/ae350.h"
	.file 7 "ae350_soc/driver/ae350/../../../ae350_soc/driver/ae350/../../../ae350_soc/driver/ae350/dma_ae350.h"
	.file 8 "ae350_soc/driver/ae350/../../../ae350_soc/driver/ae350/i2c_ae350.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x11bc
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x31
	.4byte	.LASF1479
	.byte	0x1d
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x32
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xa
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1298
	.uleb128 0x1b
	.4byte	0x31
	.uleb128 0xf
	.4byte	0x38
	.uleb128 0xa
	.byte	0x8
	.byte	0x5
	.4byte	.LASF1299
	.uleb128 0xa
	.byte	0x10
	.byte	0x4
	.4byte	.LASF1300
	.uleb128 0xa
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1301
	.uleb128 0xa
	.byte	0x2
	.byte	0x5
	.4byte	.LASF1302
	.uleb128 0xb
	.4byte	.LASF1304
	.byte	0x3
	.byte	0x28
	.byte	0x12
	.4byte	0x6a
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.4byte	.LASF1303
	.uleb128 0xb
	.4byte	.LASF1305
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x82
	.uleb128 0xf
	.4byte	0x71
	.uleb128 0xa
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1306
	.uleb128 0xb
	.4byte	.LASF1307
	.byte	0x3
	.byte	0x31
	.byte	0x1c
	.4byte	0x95
	.uleb128 0xa
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1308
	.uleb128 0xb
	.4byte	.LASF1309
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0xa8
	.uleb128 0xa
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1310
	.uleb128 0xa
	.byte	0x8
	.byte	0x7
	.4byte	.LASF1311
	.uleb128 0x16
	.4byte	.LASF1317
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.4byte	0xd9
	.uleb128 0x26
	.string	"api"
	.byte	0x1e
	.4byte	0x89
	.byte	0
	.uleb128 0x26
	.string	"drv"
	.byte	0x1f
	.4byte	0x89
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.4byte	.LASF1312
	.byte	0x4
	.byte	0x20
	.byte	0x3
	.4byte	0xb6
	.uleb128 0xf
	.4byte	0xd9
	.uleb128 0x1c
	.4byte	.LASF1355
	.4byte	0x31
	.byte	0x4
	.byte	0x2e
	.4byte	0x10c
	.uleb128 0x7
	.4byte	.LASF1313
	.byte	0
	.uleb128 0x7
	.4byte	.LASF1314
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF1315
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.4byte	.LASF1316
	.byte	0x4
	.byte	0x33
	.byte	0x3
	.4byte	0xea
	.uleb128 0x16
	.4byte	.LASF1318
	.byte	0x4
	.byte	0x5
	.byte	0x2d
	.4byte	0x16d
	.uleb128 0x10
	.4byte	.LASF1319
	.byte	0x2f
	.4byte	0x9c
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.4byte	.LASF1320
	.byte	0x30
	.4byte	0x9c
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF1321
	.byte	0x31
	.4byte	0x9c
	.byte	0x2
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF1322
	.byte	0x32
	.4byte	0x9c
	.byte	0x1
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF1323
	.byte	0x33
	.4byte	0x9c
	.byte	0x1
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF1324
	.byte	0x34
	.4byte	0x9c
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xb
	.4byte	.LASF1325
	.byte	0x5
	.byte	0x35
	.byte	0x3
	.4byte	0x118
	.uleb128 0x1b
	.4byte	0x16d
	.uleb128 0xb
	.4byte	.LASF1326
	.byte	0x5
	.byte	0x4a
	.byte	0x10
	.4byte	0x18a
	.uleb128 0x6
	.4byte	0x18f
	.uleb128 0x33
	.4byte	0x19a
	.uleb128 0x2
	.4byte	0x9c
	.byte	0
	.uleb128 0x16
	.4byte	.LASF1327
	.byte	0x4
	.byte	0x5
	.byte	0x50
	.4byte	0x1b3
	.uleb128 0x10
	.4byte	.LASF1328
	.byte	0x52
	.4byte	0x9c
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF1329
	.byte	0x5
	.byte	0x53
	.byte	0x3
	.4byte	0x19a
	.uleb128 0xf
	.4byte	0x1b3
	.uleb128 0x16
	.4byte	.LASF1330
	.byte	0x30
	.byte	0x5
	.byte	0x59
	.4byte	0x261
	.uleb128 0x9
	.4byte	.LASF1331
	.byte	0x5b
	.byte	0x19
	.4byte	0x26b
	.byte	0
	.uleb128 0x9
	.4byte	.LASF1332
	.byte	0x5c
	.byte	0x1b
	.4byte	0x275
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF1333
	.byte	0x5d
	.byte	0xc
	.4byte	0x289
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF1334
	.byte	0x5e
	.byte	0xc
	.4byte	0x293
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF1335
	.byte	0x5f
	.byte	0xc
	.4byte	0x2a7
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF1336
	.byte	0x60
	.byte	0xc
	.4byte	0x2d6
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF1337
	.byte	0x61
	.byte	0xc
	.4byte	0x2fe
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF1338
	.byte	0x62
	.byte	0xc
	.4byte	0x317
	.byte	0x1c
	.uleb128 0x9
	.4byte	.LASF1339
	.byte	0x63
	.byte	0xc
	.4byte	0x330
	.byte	0x20
	.uleb128 0x9
	.4byte	.LASF1340
	.byte	0x64
	.byte	0xd
	.4byte	0x33a
	.byte	0x24
	.uleb128 0x9
	.4byte	.LASF1341
	.byte	0x65
	.byte	0xc
	.4byte	0x353
	.byte	0x28
	.uleb128 0x9
	.4byte	.LASF1342
	.byte	0x66
	.byte	0x15
	.4byte	0x35d
	.byte	0x2c
	.byte	0
	.uleb128 0xf
	.4byte	0x1c4
	.uleb128 0x13
	.4byte	0xd9
	.uleb128 0x6
	.4byte	0x266
	.uleb128 0x13
	.4byte	0x1b3
	.uleb128 0x6
	.4byte	0x270
	.uleb128 0x11
	.4byte	0x5e
	.4byte	0x289
	.uleb128 0x2
	.4byte	0x17e
	.byte	0
	.uleb128 0x6
	.4byte	0x27a
	.uleb128 0x13
	.4byte	0x5e
	.uleb128 0x6
	.4byte	0x28e
	.uleb128 0x11
	.4byte	0x5e
	.4byte	0x2a7
	.uleb128 0x2
	.4byte	0x10c
	.byte	0
	.uleb128 0x6
	.4byte	0x298
	.uleb128 0x11
	.4byte	0x5e
	.4byte	0x2ca
	.uleb128 0x2
	.4byte	0x9c
	.uleb128 0x2
	.4byte	0x2ca
	.uleb128 0x2
	.4byte	0x9c
	.uleb128 0x2
	.4byte	0x2cf
	.byte	0
	.uleb128 0x6
	.4byte	0x7d
	.uleb128 0xa
	.byte	0x1
	.byte	0x2
	.4byte	.LASF1343
	.uleb128 0x6
	.4byte	0x2ac
	.uleb128 0x11
	.4byte	0x5e
	.4byte	0x2f9
	.uleb128 0x2
	.4byte	0x9c
	.uleb128 0x2
	.4byte	0x2f9
	.uleb128 0x2
	.4byte	0x9c
	.uleb128 0x2
	.4byte	0x2cf
	.byte	0
	.uleb128 0x6
	.4byte	0x71
	.uleb128 0x6
	.4byte	0x2db
	.uleb128 0x11
	.4byte	0x5e
	.4byte	0x317
	.uleb128 0x2
	.4byte	0x2ca
	.uleb128 0x2
	.4byte	0x9c
	.byte	0
	.uleb128 0x6
	.4byte	0x303
	.uleb128 0x11
	.4byte	0x5e
	.4byte	0x330
	.uleb128 0x2
	.4byte	0x2f9
	.uleb128 0x2
	.4byte	0x9c
	.byte	0
	.uleb128 0x6
	.4byte	0x31c
	.uleb128 0x13
	.4byte	0x9c
	.uleb128 0x6
	.4byte	0x335
	.uleb128 0x11
	.4byte	0x5e
	.4byte	0x353
	.uleb128 0x2
	.4byte	0x9c
	.uleb128 0x2
	.4byte	0x9c
	.byte	0
	.uleb128 0x6
	.4byte	0x33f
	.uleb128 0x13
	.4byte	0x16d
	.uleb128 0x6
	.4byte	0x358
	.uleb128 0xb
	.4byte	.LASF1344
	.byte	0x5
	.byte	0x67
	.byte	0x9
	.4byte	0x261
	.uleb128 0x27
	.4byte	0x31
	.4byte	0x37e
	.uleb128 0x28
	.4byte	0x31
	.byte	0x2
	.byte	0
	.uleb128 0x29
	.byte	0x34
	.byte	0x6
	.2byte	0x118
	.4byte	0x422
	.uleb128 0x1
	.4byte	.LASF1345
	.byte	0x6
	.2byte	0x11a
	.byte	0x1e
	.4byte	0x3d
	.byte	0
	.uleb128 0x1
	.4byte	.LASF1346
	.byte	0x6
	.2byte	0x11b
	.byte	0x14
	.4byte	0x36e
	.byte	0x4
	.uleb128 0x17
	.string	"CFG"
	.byte	0x6
	.2byte	0x11c
	.byte	0x1e
	.4byte	0x3d
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF1347
	.byte	0x6
	.2byte	0x11d
	.byte	0x18
	.4byte	0x38
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF1348
	.byte	0x6
	.2byte	0x11e
	.byte	0x18
	.4byte	0x38
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF1349
	.byte	0x6
	.2byte	0x11f
	.byte	0x18
	.4byte	0x38
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF1350
	.byte	0x6
	.2byte	0x120
	.byte	0x18
	.4byte	0x38
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF1351
	.byte	0x6
	.2byte	0x121
	.byte	0x18
	.4byte	0x38
	.byte	0x24
	.uleb128 0x17
	.string	"CMD"
	.byte	0x6
	.2byte	0x122
	.byte	0x18
	.4byte	0x38
	.byte	0x28
	.uleb128 0x1
	.4byte	.LASF1352
	.byte	0x6
	.2byte	0x123
	.byte	0x18
	.4byte	0x38
	.byte	0x2c
	.uleb128 0x17
	.string	"TPM"
	.byte	0x6
	.2byte	0x124
	.byte	0x18
	.4byte	0x38
	.byte	0x30
	.byte	0
	.uleb128 0x14
	.4byte	.LASF1353
	.byte	0x6
	.2byte	0x125
	.byte	0x3
	.4byte	0x37e
	.uleb128 0xb
	.4byte	.LASF1354
	.byte	0x7
	.byte	0x67
	.byte	0x10
	.4byte	0x18a
	.uleb128 0x1c
	.4byte	.LASF1356
	.4byte	0x31
	.byte	0x8
	.byte	0xf3
	.4byte	0x463
	.uleb128 0x7
	.4byte	.LASF1357
	.byte	0
	.uleb128 0x7
	.4byte	.LASF1358
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF1359
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF1360
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF1361
	.4byte	0x31
	.byte	0x8
	.byte	0xfc
	.4byte	0x4be
	.uleb128 0x7
	.4byte	.LASF1362
	.byte	0
	.uleb128 0x7
	.4byte	.LASF1363
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF1364
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF1365
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF1366
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF1367
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF1368
	.byte	0x20
	.uleb128 0x7
	.4byte	.LASF1369
	.byte	0x40
	.uleb128 0x7
	.4byte	.LASF1370
	.byte	0x80
	.uleb128 0x1d
	.4byte	.LASF1371
	.2byte	0x100
	.uleb128 0x1d
	.4byte	.LASF1372
	.2byte	0x200
	.uleb128 0x1d
	.4byte	.LASF1373
	.2byte	0x400
	.byte	0
	.uleb128 0x14
	.4byte	.LASF1374
	.byte	0x8
	.2byte	0x10a
	.byte	0x3
	.4byte	0x463
	.uleb128 0x1b
	.4byte	0x4be
	.uleb128 0x34
	.4byte	.LASF1375
	.2byte	0x14c
	.byte	0x8
	.2byte	0x110
	.byte	0x10
	.4byte	0x5f8
	.uleb128 0x1
	.4byte	.LASF1376
	.byte	0x8
	.2byte	0x112
	.byte	0x1a
	.4byte	0x17e
	.byte	0
	.uleb128 0x1
	.4byte	.LASF1377
	.byte	0x8
	.2byte	0x113
	.byte	0x19
	.4byte	0x1b3
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF1378
	.byte	0x8
	.2byte	0x114
	.byte	0x1c
	.4byte	0x4cb
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF1379
	.byte	0x8
	.2byte	0x115
	.byte	0x14
	.4byte	0x10c
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF1380
	.byte	0x8
	.2byte	0x116
	.byte	0xb
	.4byte	0x2f9
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF1381
	.byte	0x8
	.2byte	0x117
	.byte	0xb
	.4byte	0x2f9
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF1382
	.byte	0x8
	.2byte	0x11a
	.byte	0xb
	.4byte	0x9c
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF1383
	.byte	0x8
	.2byte	0x11c
	.byte	0xb
	.4byte	0x9c
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF1384
	.byte	0x8
	.2byte	0x11e
	.byte	0xa
	.4byte	0x71
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF1385
	.byte	0x8
	.2byte	0x11f
	.byte	0xb
	.4byte	0x9c
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF1386
	.byte	0x8
	.2byte	0x120
	.byte	0xb
	.4byte	0x9c
	.byte	0x28
	.uleb128 0x1
	.4byte	.LASF1387
	.byte	0x8
	.2byte	0x121
	.byte	0xb
	.4byte	0x9c
	.byte	0x2c
	.uleb128 0x1
	.4byte	.LASF1388
	.byte	0x8
	.2byte	0x122
	.byte	0xb
	.4byte	0x9c
	.byte	0x30
	.uleb128 0x1
	.4byte	.LASF1389
	.byte	0x8
	.2byte	0x124
	.byte	0xb
	.4byte	0x9c
	.byte	0x34
	.uleb128 0x1
	.4byte	.LASF1390
	.byte	0x8
	.2byte	0x126
	.byte	0xb
	.4byte	0x9c
	.byte	0x38
	.uleb128 0x1
	.4byte	.LASF1391
	.byte	0x8
	.2byte	0x128
	.byte	0xb
	.4byte	0x9c
	.byte	0x3c
	.uleb128 0x1
	.4byte	.LASF1392
	.byte	0x8
	.2byte	0x129
	.byte	0xa
	.4byte	0x5f8
	.byte	0x40
	.uleb128 0x1e
	.4byte	.LASF1393
	.2byte	0x12a
	.byte	0xb
	.4byte	0x9c
	.2byte	0x140
	.uleb128 0x1e
	.4byte	.LASF1394
	.2byte	0x12b
	.byte	0x1c
	.4byte	0x179
	.2byte	0x144
	.uleb128 0x1e
	.4byte	.LASF1395
	.2byte	0x12c
	.byte	0xb
	.4byte	0x9c
	.2byte	0x148
	.byte	0
	.uleb128 0x27
	.4byte	0x71
	.4byte	0x608
	.uleb128 0x28
	.4byte	0x31
	.byte	0xff
	.byte	0
	.uleb128 0x14
	.4byte	.LASF1396
	.byte	0x8
	.2byte	0x12d
	.byte	0x3
	.4byte	0x4d0
	.uleb128 0x35
	.4byte	.LASF1397
	.byte	0x8
	.byte	0x8
	.2byte	0x130
	.byte	0x16
	.4byte	0x64e
	.uleb128 0x1
	.4byte	.LASF1398
	.byte	0x8
	.2byte	0x132
	.byte	0xa
	.4byte	0x71
	.byte	0
	.uleb128 0x1
	.4byte	.LASF1399
	.byte	0x8
	.2byte	0x133
	.byte	0xa
	.4byte	0x71
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF1400
	.byte	0x8
	.2byte	0x134
	.byte	0x14
	.4byte	0x42f
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.4byte	0x615
	.uleb128 0x14
	.4byte	.LASF1401
	.byte	0x8
	.2byte	0x135
	.byte	0x3
	.4byte	0x64e
	.uleb128 0x29
	.byte	0x10
	.byte	0x8
	.2byte	0x138
	.4byte	0x6a2
	.uleb128 0x17
	.string	"reg"
	.byte	0x8
	.2byte	0x13a
	.byte	0xe
	.4byte	0x6a7
	.byte	0
	.uleb128 0x1
	.4byte	.LASF1402
	.byte	0x8
	.2byte	0x13b
	.byte	0xb
	.4byte	0x6ac
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF1403
	.byte	0x8
	.2byte	0x13c
	.byte	0xb
	.4byte	0x6ac
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF1404
	.byte	0x8
	.2byte	0x13d
	.byte	0xc
	.4byte	0x6b1
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.4byte	0x660
	.uleb128 0x6
	.4byte	0x422
	.uleb128 0x6
	.4byte	0x653
	.uleb128 0x6
	.4byte	0x608
	.uleb128 0x14
	.4byte	.LASF1405
	.byte	0x8
	.2byte	0x13e
	.byte	0x9
	.4byte	0x6a2
	.uleb128 0xe
	.4byte	.LASF1406
	.byte	0x17
	.byte	0x23
	.4byte	0xe5
	.uleb128 0x5
	.byte	0x3
	.4byte	DriverVersion
	.uleb128 0xe
	.4byte	.LASF1407
	.byte	0x1e
	.byte	0x25
	.4byte	0x1bf
	.uleb128 0x5
	.byte	0x3
	.4byte	DriverCapabilities
	.uleb128 0xe
	.4byte	.LASF1408
	.byte	0x25
	.byte	0x11
	.4byte	0x608
	.uleb128 0x5
	.byte	0x3
	.4byte	I2C_Info
	.uleb128 0xe
	.4byte	.LASF1409
	.byte	0x3c
	.byte	0x16
	.4byte	0x6b6
	.uleb128 0x5
	.byte	0x3
	.4byte	I2C_Resources
	.uleb128 0x2a
	.4byte	.LASF1410
	.2byte	0x331
	.byte	0xa
	.4byte	0x9c
	.uleb128 0x5
	.byte	0x3
	.4byte	check
	.uleb128 0x2a
	.4byte	.LASF1411
	.2byte	0x65c
	.byte	0x12
	.4byte	0x362
	.uleb128 0x5
	.byte	0x3
	.4byte	Driver_I2C
	.uleb128 0x18
	.4byte	.LASF1412
	.byte	0xc2
	.byte	0x10
	.4byte	0x5e
	.4byte	0x740
	.uleb128 0x2
	.4byte	0x71
	.byte	0
	.uleb128 0x18
	.4byte	.LASF1413
	.byte	0xb8
	.byte	0x11
	.4byte	0x9c
	.4byte	0x755
	.uleb128 0x2
	.4byte	0x71
	.byte	0
	.uleb128 0x18
	.4byte	.LASF1414
	.byte	0x8d
	.byte	0x10
	.4byte	0x5e
	.4byte	0x783
	.uleb128 0x2
	.4byte	0x71
	.uleb128 0x2
	.4byte	0x9c
	.uleb128 0x2
	.4byte	0x9c
	.uleb128 0x2
	.4byte	0x9c
	.uleb128 0x2
	.4byte	0x9c
	.uleb128 0x2
	.4byte	0x42f
	.byte	0
	.uleb128 0x18
	.4byte	.LASF1415
	.byte	0xa6
	.byte	0x10
	.4byte	0x5e
	.4byte	0x798
	.uleb128 0x2
	.4byte	0x71
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF1416
	.byte	0x79
	.4byte	0x5e
	.uleb128 0x2b
	.4byte	.LASF1417
	.byte	0x70
	.4byte	0x5e
	.uleb128 0x36
	.4byte	.LASF1480
	.byte	0x1
	.2byte	0x655
	.byte	0x6
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1f
	.4byte	.LASF1419
	.2byte	0x63f
	.byte	0x12
	.4byte	0x16d
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xc
	.4byte	.LASF1421
	.2byte	0x639
	.4byte	0x5e
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x80d
	.uleb128 0x4
	.4byte	.LASF1418
	.2byte	0x639
	.byte	0x1e
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.string	"arg"
	.2byte	0x639
	.byte	0x30
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF1420
	.2byte	0x633
	.byte	0xa
	.4byte	0x9c
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xc
	.4byte	.LASF1422
	.2byte	0x62d
	.4byte	0x5e
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x85b
	.uleb128 0x4
	.4byte	.LASF1423
	.2byte	0x62d
	.byte	0x24
	.4byte	0x2f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.string	"num"
	.2byte	0x62d
	.byte	0x33
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xc
	.4byte	.LASF1424
	.2byte	0x627
	.4byte	0x5e
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x893
	.uleb128 0x4
	.4byte	.LASF1423
	.2byte	0x627
	.byte	0x2b
	.4byte	0x2ca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.string	"num"
	.2byte	0x627
	.byte	0x3a
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xc
	.4byte	.LASF1425
	.2byte	0x621
	.4byte	0x5e
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8e9
	.uleb128 0x4
	.4byte	.LASF1426
	.2byte	0x621
	.byte	0x25
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF1423
	.2byte	0x621
	.byte	0x34
	.4byte	0x2f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.string	"num"
	.2byte	0x621
	.byte	0x43
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.4byte	.LASF1427
	.2byte	0x621
	.byte	0x4c
	.4byte	0x2cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.byte	0
	.uleb128 0xc
	.4byte	.LASF1428
	.2byte	0x61b
	.4byte	0x5e
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x93f
	.uleb128 0x4
	.4byte	.LASF1426
	.2byte	0x61b
	.byte	0x26
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF1423
	.2byte	0x61b
	.byte	0x3b
	.4byte	0x2ca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.string	"num"
	.2byte	0x61b
	.byte	0x4a
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.4byte	.LASF1427
	.2byte	0x61b
	.byte	0x53
	.4byte	0x2cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.byte	0
	.uleb128 0xc
	.4byte	.LASF1429
	.2byte	0x615
	.4byte	0x5e
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x968
	.uleb128 0x4
	.4byte	.LASF1430
	.2byte	0x615
	.byte	0x2d
	.4byte	0x10c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF1431
	.2byte	0x60f
	.byte	0x9
	.4byte	0x5e
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xc
	.4byte	.LASF1432
	.2byte	0x609
	.4byte	0x5e
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9a7
	.uleb128 0x4
	.4byte	.LASF1400
	.2byte	0x609
	.byte	0x30
	.4byte	0x17e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF1433
	.2byte	0x603
	.byte	0x18
	.4byte	0x1b3
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2c
	.4byte	.LASF1434
	.2byte	0x5fd
	.byte	0x16
	.4byte	0xd9
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x12
	.4byte	.LASF1440
	.2byte	0x50b
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa43
	.uleb128 0x3
	.string	"i2c"
	.2byte	0x50b
	.byte	0x26
	.4byte	0xa43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x5
	.4byte	.LASF1435
	.2byte	0x50d
	.byte	0xb
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.4byte	.LASF1436
	.2byte	0x50e
	.byte	0xb
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.4byte	.LASF1437
	.2byte	0x50f
	.byte	0xb
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.4byte	.LASF1438
	.2byte	0x510
	.byte	0xb
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.4byte	.LASF1439
	.2byte	0x511
	.byte	0xb
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	0x6b6
	.uleb128 0x12
	.4byte	.LASF1441
	.2byte	0x4b7
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa8b
	.uleb128 0x3
	.string	"i2c"
	.2byte	0x4b7
	.byte	0x31
	.4byte	0xa43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.4byte	.LASF1438
	.2byte	0x4b9
	.byte	0xb
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF1442
	.2byte	0x4ba
	.byte	0xa
	.4byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x12
	.4byte	.LASF1443
	.2byte	0x4a6
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xab0
	.uleb128 0x3
	.string	"i2c"
	.2byte	0x4a6
	.byte	0x2c
	.4byte	0xa43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x20
	.4byte	.LASF1444
	.2byte	0x46f
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb0e
	.uleb128 0x3
	.string	"i2c"
	.2byte	0x46f
	.byte	0x2a
	.4byte	0xa43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF1445
	.2byte	0x46f
	.byte	0x37
	.4byte	0x71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x19
	.string	"i"
	.2byte	0x471
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF1446
	.2byte	0x471
	.byte	0x12
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.4byte	.LASF1447
	.2byte	0x471
	.byte	0x27
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x20
	.4byte	.LASF1448
	.2byte	0x453
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb5d
	.uleb128 0x3
	.string	"i2c"
	.2byte	0x453
	.byte	0x2b
	.4byte	0xa43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x19
	.string	"i"
	.2byte	0x455
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF1446
	.2byte	0x455
	.byte	0x12
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.4byte	.LASF1438
	.2byte	0x455
	.byte	0x27
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x12
	.4byte	.LASF1449
	.2byte	0x441
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb82
	.uleb128 0x3
	.string	"i2c"
	.2byte	0x441
	.byte	0x2d
	.4byte	0xa43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x12
	.4byte	.LASF1450
	.2byte	0x402
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbe0
	.uleb128 0x3
	.string	"i2c"
	.2byte	0x402
	.byte	0x2b
	.4byte	0xa43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x19
	.string	"i"
	.2byte	0x404
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF1451
	.2byte	0x404
	.byte	0x12
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.4byte	.LASF1438
	.2byte	0x404
	.byte	0x28
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.4byte	.LASF1442
	.2byte	0x405
	.byte	0xa
	.4byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x20
	.4byte	.LASF1452
	.2byte	0x3e1
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc3e
	.uleb128 0x3
	.string	"i2c"
	.2byte	0x3e1
	.byte	0x2c
	.4byte	0xa43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF1453
	.2byte	0x3e1
	.byte	0x39
	.4byte	0x71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x19
	.string	"i"
	.2byte	0x3e3
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF1451
	.2byte	0x3e3
	.byte	0x12
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.4byte	.LASF1438
	.2byte	0x3e3
	.byte	0x28
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x12
	.4byte	.LASF1454
	.2byte	0x333
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc90
	.uleb128 0x3
	.string	"i2c"
	.2byte	0x333
	.byte	0x26
	.4byte	0xa43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.4byte	.LASF1435
	.2byte	0x335
	.byte	0xb
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF1436
	.2byte	0x335
	.byte	0x16
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.4byte	.LASF1438
	.2byte	0x335
	.byte	0x22
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x12
	.4byte	.LASF1455
	.2byte	0x328
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcc4
	.uleb128 0x4
	.4byte	.LASF1456
	.2byte	0x328
	.byte	0x20
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.string	"i2c"
	.2byte	0x328
	.byte	0x36
	.4byte	0xa43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x21
	.4byte	.LASF1457
	.2byte	0x323
	.byte	0x12
	.4byte	0x16d
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcee
	.uleb128 0x3
	.string	"i2c"
	.2byte	0x323
	.byte	0x30
	.4byte	0xa43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x21
	.4byte	.LASF1458
	.2byte	0x2b8
	.byte	0x9
	.4byte	0x5e
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd63
	.uleb128 0x4
	.4byte	.LASF1418
	.2byte	0x2b8
	.byte	0x1f
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF1459
	.2byte	0x2b8
	.byte	0x31
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF1460
	.2byte	0x2b8
	.byte	0x40
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.string	"i2c"
	.2byte	0x2b8
	.byte	0x55
	.4byte	0xa43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x5
	.4byte	.LASF1438
	.2byte	0x2ba
	.byte	0xb
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF1461
	.2byte	0x2bb
	.byte	0xa
	.4byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x21
	.4byte	.LASF1462
	.2byte	0x2b2
	.byte	0xa
	.4byte	0x9c
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd8d
	.uleb128 0x3
	.string	"i2c"
	.2byte	0x2b2
	.byte	0x2c
	.4byte	0xa43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xc
	.4byte	.LASF1463
	.2byte	0x286
	.4byte	0x5e
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdd4
	.uleb128 0x4
	.4byte	.LASF1423
	.2byte	0x286
	.byte	0x25
	.4byte	0x2f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.string	"num"
	.2byte	0x286
	.byte	0x34
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.string	"i2c"
	.2byte	0x286
	.byte	0x48
	.4byte	0xa43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xc
	.4byte	.LASF1464
	.2byte	0x25f
	.4byte	0x5e
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe1b
	.uleb128 0x4
	.4byte	.LASF1423
	.2byte	0x25f
	.byte	0x2c
	.4byte	0x2ca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.string	"num"
	.2byte	0x25f
	.byte	0x3b
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.string	"i2c"
	.2byte	0x25f
	.byte	0x4f
	.4byte	0xa43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xc
	.4byte	.LASF1465
	.2byte	0x1ca
	.4byte	0x5e
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe9e
	.uleb128 0x4
	.4byte	.LASF1426
	.2byte	0x1ca
	.byte	0x26
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF1423
	.2byte	0x1ca
	.byte	0x35
	.4byte	0x2f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.string	"num"
	.2byte	0x1ca
	.byte	0x44
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.4byte	.LASF1427
	.2byte	0x1ca
	.byte	0x4d
	.4byte	0x2cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -45
	.uleb128 0x3
	.string	"i2c"
	.2byte	0x1ca
	.byte	0x6a
	.4byte	0xa43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x5
	.4byte	.LASF1438
	.2byte	0x1cc
	.byte	0xb
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF1442
	.2byte	0x1cd
	.byte	0xa
	.4byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xc
	.4byte	.LASF1466
	.2byte	0x126
	.4byte	0x5e
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf21
	.uleb128 0x4
	.4byte	.LASF1426
	.2byte	0x126
	.byte	0x27
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF1423
	.2byte	0x126
	.byte	0x3c
	.4byte	0x2ca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.string	"num"
	.2byte	0x126
	.byte	0x4b
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.4byte	.LASF1427
	.2byte	0x126
	.byte	0x54
	.4byte	0x2cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -45
	.uleb128 0x3
	.string	"i2c"
	.2byte	0x126
	.byte	0x71
	.4byte	0xa43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x5
	.4byte	.LASF1438
	.2byte	0x128
	.byte	0xb
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF1442
	.2byte	0x129
	.byte	0xa
	.4byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x22
	.4byte	.LASF1467
	.byte	0xad
	.4byte	0x5e
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfb8
	.uleb128 0x2d
	.4byte	.LASF1430
	.byte	0xad
	.byte	0x2e
	.4byte	0x10c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x23
	.string	"i2c"
	.byte	0xad
	.byte	0x44
	.4byte	0xa43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xe
	.4byte	.LASF1438
	.byte	0xaf
	.byte	0xb
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xe
	.4byte	.LASF1436
	.byte	0xaf
	.byte	0x16
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.4byte	0x1107
	.4byte	.LBB25
	.4byte	.LBE25-.LBB25
	.byte	0xc7
	.byte	0x3
	.uleb128 0x15
	.4byte	0x1111
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x8
	.4byte	0x111c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.4byte	0x1127
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.4byte	0x1132
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x25
	.4byte	0x113d
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.uleb128 0x8
	.4byte	0x113e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LASF1468
	.byte	0x8e
	.4byte	0x5e
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1025
	.uleb128 0x23
	.string	"i2c"
	.byte	0x8e
	.byte	0x2a
	.4byte	0xa43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x24
	.4byte	0x1107
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.byte	0xa1
	.byte	0x2
	.uleb128 0x15
	.4byte	0x1111
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	0x111c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x8
	.4byte	0x1127
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x8
	.4byte	0x1132
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x25
	.4byte	0x113d
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.uleb128 0x8
	.4byte	0x113e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LASF1469
	.byte	0x5d
	.4byte	0x5e
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1107
	.uleb128 0x2d
	.4byte	.LASF1400
	.byte	0x5d
	.byte	0x31
	.4byte	0x17e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x23
	.string	"i2c"
	.byte	0x5d
	.byte	0x4a
	.4byte	0xa43
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2e
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.4byte	0x1077
	.uleb128 0xe
	.4byte	.LASF1470
	.byte	0x6b
	.byte	0x13
	.4byte	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2e
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.4byte	0x1093
	.uleb128 0xe
	.4byte	.LASF1470
	.byte	0x6e
	.byte	0x13
	.4byte	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x37
	.4byte	0x1194
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.4byte	0x10c0
	.uleb128 0x15
	.4byte	0x11a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x15
	.4byte	0x119d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x8
	.4byte	0x11b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x24
	.4byte	0x1150
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.byte	0x68
	.byte	0x2
	.uleb128 0x15
	.4byte	0x115a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x8
	.4byte	0x1165
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.4byte	0x1170
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.4byte	0x117b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x25
	.4byte	0x1186
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.uleb128 0x8
	.4byte	0x1187
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF1474
	.byte	0x5f
	.4byte	0x114b
	.uleb128 0x1a
	.4byte	.LASF1476
	.byte	0x5f
	.byte	0x5f
	.4byte	0x31
	.uleb128 0xd
	.4byte	.LASF1471
	.byte	0x61
	.byte	0x10
	.4byte	0x31
	.uleb128 0xd
	.4byte	.LASF1472
	.byte	0x62
	.byte	0x1a
	.4byte	0x114b
	.uleb128 0xd
	.4byte	.LASF1473
	.byte	0x67
	.byte	0x10
	.4byte	0x31
	.uleb128 0x30
	.uleb128 0xd
	.4byte	.LASF1470
	.byte	0x61
	.byte	0x2b
	.4byte	0xa8
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x38
	.uleb128 0x2f
	.4byte	.LASF1475
	.byte	0x52
	.4byte	0x1194
	.uleb128 0x1a
	.4byte	.LASF1476
	.byte	0x52
	.byte	0x5e
	.4byte	0x31
	.uleb128 0xd
	.4byte	.LASF1471
	.byte	0x54
	.byte	0x10
	.4byte	0x31
	.uleb128 0xd
	.4byte	.LASF1472
	.byte	0x55
	.byte	0x1a
	.4byte	0x114b
	.uleb128 0xd
	.4byte	.LASF1473
	.byte	0x5a
	.byte	0x10
	.4byte	0x31
	.uleb128 0x30
	.uleb128 0xd
	.4byte	.LASF1470
	.byte	0x54
	.byte	0x2b
	.4byte	0xa8
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	.LASF1481
	.byte	0x2
	.byte	0x40
	.byte	0x33
	.byte	0x3
	.uleb128 0x1a
	.4byte	.LASF1476
	.byte	0x40
	.byte	0x5a
	.4byte	0x31
	.uleb128 0x1a
	.4byte	.LASF1477
	.byte	0x40
	.byte	0x6f
	.4byte	0x31
	.uleb128 0xd
	.4byte	.LASF1478
	.byte	0x42
	.byte	0x1a
	.4byte	0x114b
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
	.uleb128 0xb
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
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
	.uleb128 0x4
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
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
	.uleb128 0x5
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x5
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
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x5
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
	.uleb128 0x7c
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
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 7
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3e
	.uleb128 0x21
	.sleb128 7
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x7c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x5
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 11
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 7
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 16
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.4byte	0x11c
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
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
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
	.byte	0x7
	.4byte	.LFB27
	.uleb128 .LFE27-.LFB27
	.byte	0x7
	.4byte	.LFB28
	.uleb128 .LFE28-.LFB28
	.byte	0x7
	.4byte	.LFB29
	.uleb128 .LFE29-.LFB29
	.byte	0x7
	.4byte	.LFB30
	.uleb128 .LFE30-.LFB30
	.byte	0x7
	.4byte	.LFB31
	.uleb128 .LFE31-.LFB31
	.byte	0x7
	.4byte	.LFB32
	.uleb128 .LFE32-.LFB32
	.byte	0x7
	.4byte	.LFB33
	.uleb128 .LFE33-.LFB33
	.byte	0x7
	.4byte	.LFB34
	.uleb128 .LFE34-.LFB34
	.byte	0x7
	.4byte	.LFB35
	.uleb128 .LFE35-.LFB35
	.byte	0x7
	.4byte	.LFB36
	.uleb128 .LFE36-.LFB36
	.byte	0x7
	.4byte	.LFB37
	.uleb128 .LFE37-.LFB37
	.byte	0x7
	.4byte	.LFB38
	.uleb128 .LFE38-.LFB38
	.byte	0x7
	.4byte	.LFB39
	.uleb128 .LFE39-.LFB39
	.byte	0x7
	.4byte	.LFB40
	.uleb128 .LFE40-.LFB40
	.byte	0x7
	.4byte	.LFB41
	.uleb128 .LFE41-.LFB41
	.byte	0x7
	.4byte	.LFB42
	.uleb128 .LFE42-.LFB42
	.byte	0x7
	.4byte	.LFB43
	.uleb128 .LFE43-.LFB43
	.byte	0x7
	.4byte	.LFB44
	.uleb128 .LFE44-.LFB44
	.byte	0x7
	.4byte	.LFB45
	.uleb128 .LFE45-.LFB45
	.byte	0x7
	.4byte	.LFB46
	.uleb128 .LFE46-.LFB46
	.byte	0x7
	.4byte	.LFB47
	.uleb128 .LFE47-.LFB47
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
	.uleb128 0x8
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
	.file 9 "/home/lc/tools/riscv32-unknown-elf/lib/gcc/riscv32-unknown-elf/13.2.0/include/stddef.h"
	.byte	0x3
	.uleb128 0xf
	.uleb128 0x9
	.byte	0x7
	.4byte	.Ldebug_macro2
	.byte	0x4
	.file 10 "/home/lc/tools/riscv32-unknown-elf/lib/gcc/riscv32-unknown-elf/13.2.0/include/stdint.h"
	.byte	0x3
	.uleb128 0x10
	.uleb128 0xa
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
	.file 11 "/home/lc/tools/riscv32-unknown-elf/lib/gcc/riscv32-unknown-elf/13.2.0/include/stdbool.h"
	.byte	0x3
	.uleb128 0x11
	.uleb128 0xb
	.byte	0x7
	.4byte	.Ldebug_macro4
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro5
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro6
	.byte	0x4
	.byte	0x3
	.uleb128 0x10
	.uleb128 0x7
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF565
	.file 12 "ae350_soc/driver/ae350/../../../ae350_soc/driver/ae350/../../../ae350_soc/driver/ae350/../../../ae350_soc/ae350/platform.h"
	.byte	0x3
	.uleb128 0x10
	.uleb128 0xc
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF566
	.file 13 "ae350_soc/driver/ae350/../../../ae350_soc/driver/ae350/../../../ae350_soc/driver/ae350/../../../ae350_soc/ae350/../../ae350_soc/config/config.h"
	.byte	0x3
	.uleb128 0x14
	.uleb128 0xd
	.byte	0x7
	.4byte	.Ldebug_macro7
	.byte	0x4
	.file 14 "ae350_soc/driver/ae350/../../../ae350_soc/driver/ae350/../../../ae350_soc/driver/ae350/../../../ae350_soc/ae350/../../ae350_soc/ae350/core_v5.h"
	.byte	0x3
	.uleb128 0x15
	.uleb128 0xe
	.byte	0x7
	.4byte	.Ldebug_macro8
	.file 15 "ae350_soc/driver/ae350/../../../ae350_soc/driver/ae350/../../../ae350_soc/driver/ae350/../../../ae350_soc/ae350/../../ae350_soc/ae350/../../ae350_soc/ae350/csr.h"
	.byte	0x3
	.uleb128 0x94
	.uleb128 0xf
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
	.file 16 "ae350_soc/driver/ae350/../../../ae350_soc/driver/ae350/../../../ae350_soc/driver/ae350/../../../ae350_soc/ae350/../../ae350_soc/ae350/interrupt.h"
	.byte	0x3
	.uleb128 0x17
	.uleb128 0x10
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
	.file 17 "ae350_soc/driver/ae350/../../../ae350_soc/driver/ae350/../../../ae350_soc/ae350/platform.h"
	.byte	0x3
	.uleb128 0x11
	.uleb128 0x11
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro17
	.byte	0x4
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF1297
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
	.section	.debug_macro,"G",@progbits,wm4.Driver_I2C.h.20.2dc521c61415f003f125f3692a9ec519,comdat
.Ldebug_macro6:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x14
	.4byte	.LASF545
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF546
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF547
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF548
	.byte	0x5
	.uleb128 0x1c
	.4byte	.LASF549
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF550
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF551
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF552
	.byte	0x5
	.uleb128 0x22
	.4byte	.LASF553
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF554
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF555
	.byte	0x5
	.uleb128 0x39
	.4byte	.LASF556
	.byte	0x5
	.uleb128 0x3a
	.4byte	.LASF557
	.byte	0x5
	.uleb128 0x3b
	.4byte	.LASF558
	.byte	0x5
	.uleb128 0x3c
	.4byte	.LASF559
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF560
	.byte	0x5
	.uleb128 0x3e
	.4byte	.LASF561
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF562
	.byte	0x5
	.uleb128 0x40
	.4byte	.LASF563
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF564
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.config.h.11.0e2fcb6d4f76322eee6d47d049ae416c,comdat
.Ldebug_macro7:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF567
	.byte	0x5
	.uleb128 0x1c
	.4byte	.LASF568
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF569
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF570
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF571
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF572
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF573
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF574
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF575
	.byte	0x5
	.uleb128 0x48
	.4byte	.LASF576
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF577
	.byte	0x5
	.uleb128 0x4a
	.4byte	.LASF578
	.byte	0x5
	.uleb128 0x4c
	.4byte	.LASF579
	.byte	0x5
	.uleb128 0x4d
	.4byte	.LASF580
	.byte	0x5
	.uleb128 0x4e
	.4byte	.LASF581
	.byte	0x5
	.uleb128 0x52
	.4byte	.LASF582
	.byte	0x5
	.uleb128 0x55
	.4byte	.LASF583
	.byte	0x5
	.uleb128 0x56
	.4byte	.LASF584
	.byte	0x5
	.uleb128 0x57
	.4byte	.LASF585
	.byte	0x5
	.uleb128 0x59
	.4byte	.LASF586
	.byte	0x5
	.uleb128 0x5a
	.4byte	.LASF587
	.byte	0x5
	.uleb128 0x5b
	.4byte	.LASF588
	.byte	0x5
	.uleb128 0x5f
	.4byte	.LASF589
	.byte	0x5
	.uleb128 0x62
	.4byte	.LASF590
	.byte	0x5
	.uleb128 0x63
	.4byte	.LASF591
	.byte	0x5
	.uleb128 0x64
	.4byte	.LASF592
	.byte	0x5
	.uleb128 0x66
	.4byte	.LASF593
	.byte	0x5
	.uleb128 0x67
	.4byte	.LASF594
	.byte	0x5
	.uleb128 0x68
	.4byte	.LASF595
	.byte	0x5
	.uleb128 0x6c
	.4byte	.LASF596
	.byte	0x5
	.uleb128 0x6f
	.4byte	.LASF597
	.byte	0x5
	.uleb128 0x70
	.4byte	.LASF598
	.byte	0x5
	.uleb128 0x71
	.4byte	.LASF599
	.byte	0x5
	.uleb128 0x73
	.4byte	.LASF600
	.byte	0x5
	.uleb128 0x74
	.4byte	.LASF601
	.byte	0x5
	.uleb128 0x75
	.4byte	.LASF602
	.byte	0x5
	.uleb128 0x79
	.4byte	.LASF603
	.byte	0x5
	.uleb128 0x7d
	.4byte	.LASF604
	.byte	0x5
	.uleb128 0x81
	.4byte	.LASF605
	.byte	0x5
	.uleb128 0x85
	.4byte	.LASF606
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.core_v5.h.11.a8b399720fcf062b67213f6b9bf6855a,comdat
.Ldebug_macro8:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF607
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF608
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF609
	.byte	0x5
	.uleb128 0x14
	.4byte	.LASF610
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF611
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF612
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF613
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF614
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF615
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF616
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF617
	.byte	0x5
	.uleb128 0x1c
	.4byte	.LASF618
	.byte	0x5
	.uleb128 0x1d
	.4byte	.LASF619
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF620
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF621
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF622
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF623
	.byte	0x5
	.uleb128 0x22
	.4byte	.LASF624
	.byte	0x5
	.uleb128 0x23
	.4byte	.LASF625
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF626
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF627
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF628
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF629
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF630
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF631
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF632
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF633
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF634
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF635
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF636
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF637
	.byte	0x5
	.uleb128 0x37
	.4byte	.LASF638
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF639
	.byte	0x5
	.uleb128 0x39
	.4byte	.LASF640
	.byte	0x5
	.uleb128 0x3c
	.4byte	.LASF641
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF642
	.byte	0x5
	.uleb128 0x3e
	.4byte	.LASF643
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF644
	.byte	0x5
	.uleb128 0x40
	.4byte	.LASF645
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF646
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF647
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF648
	.byte	0x5
	.uleb128 0x44
	.4byte	.LASF649
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF650
	.byte	0x5
	.uleb128 0x46
	.4byte	.LASF651
	.byte	0x5
	.uleb128 0x47
	.4byte	.LASF652
	.byte	0x5
	.uleb128 0x4a
	.4byte	.LASF653
	.byte	0x5
	.uleb128 0x4b
	.4byte	.LASF654
	.byte	0x5
	.uleb128 0x4c
	.4byte	.LASF655
	.byte	0x5
	.uleb128 0x4d
	.4byte	.LASF656
	.byte	0x5
	.uleb128 0x4e
	.4byte	.LASF657
	.byte	0x5
	.uleb128 0x4f
	.4byte	.LASF658
	.byte	0x5
	.uleb128 0x51
	.4byte	.LASF659
	.byte	0x5
	.uleb128 0x52
	.4byte	.LASF660
	.byte	0x5
	.uleb128 0x53
	.4byte	.LASF661
	.byte	0x5
	.uleb128 0x54
	.4byte	.LASF662
	.byte	0x5
	.uleb128 0x55
	.4byte	.LASF663
	.byte	0x5
	.uleb128 0x56
	.4byte	.LASF664
	.byte	0x5
	.uleb128 0x57
	.4byte	.LASF665
	.byte	0x5
	.uleb128 0x58
	.4byte	.LASF666
	.byte	0x5
	.uleb128 0x59
	.4byte	.LASF667
	.byte	0x5
	.uleb128 0x5c
	.4byte	.LASF668
	.byte	0x5
	.uleb128 0x5d
	.4byte	.LASF669
	.byte	0x5
	.uleb128 0x66
	.4byte	.LASF670
	.byte	0x5
	.uleb128 0x67
	.4byte	.LASF671
	.byte	0x5
	.uleb128 0x68
	.4byte	.LASF672
	.byte	0x5
	.uleb128 0x69
	.4byte	.LASF673
	.byte	0x5
	.uleb128 0x6a
	.4byte	.LASF674
	.byte	0x5
	.uleb128 0x6c
	.4byte	.LASF675
	.byte	0x5
	.uleb128 0x6f
	.4byte	.LASF676
	.byte	0x5
	.uleb128 0x70
	.4byte	.LASF677
	.byte	0x5
	.uleb128 0x71
	.4byte	.LASF678
	.byte	0x5
	.uleb128 0x77
	.4byte	.LASF679
	.byte	0x5
	.uleb128 0x79
	.4byte	.LASF680
	.byte	0x5
	.uleb128 0x7a
	.4byte	.LASF681
	.byte	0x5
	.uleb128 0x7c
	.4byte	.LASF682
	.byte	0x5
	.uleb128 0x7d
	.4byte	.LASF683
	.byte	0x5
	.uleb128 0x7e
	.4byte	.LASF684
	.byte	0x5
	.uleb128 0x7f
	.4byte	.LASF685
	.byte	0x5
	.uleb128 0x80
	.4byte	.LASF686
	.byte	0x5
	.uleb128 0x81
	.4byte	.LASF687
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.csr.h.12.6a8b6193f73193013bdb0f434483b5c6,comdat
.Ldebug_macro9:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF688
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF689
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF690
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF691
	.byte	0x5
	.uleb128 0x14
	.4byte	.LASF692
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF693
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF694
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF695
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF696
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF697
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF698
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF699
	.byte	0x5
	.uleb128 0x1c
	.4byte	.LASF700
	.byte	0x5
	.uleb128 0x1d
	.4byte	.LASF701
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF702
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF703
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF704
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF705
	.byte	0x5
	.uleb128 0x22
	.4byte	.LASF706
	.byte	0x5
	.uleb128 0x23
	.4byte	.LASF707
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF708
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF709
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF710
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF711
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF712
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF713
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF714
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF715
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF716
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF717
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF718
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF719
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF720
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF721
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF722
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF723
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF724
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF725
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF726
	.byte	0x5
	.uleb128 0x37
	.4byte	.LASF727
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF728
	.byte	0x5
	.uleb128 0x39
	.4byte	.LASF729
	.byte	0x5
	.uleb128 0x3a
	.4byte	.LASF730
	.byte	0x5
	.uleb128 0x3b
	.4byte	.LASF731
	.byte	0x5
	.uleb128 0x3c
	.4byte	.LASF732
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF733
	.byte	0x5
	.uleb128 0x3e
	.4byte	.LASF734
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF735
	.byte	0x5
	.uleb128 0x40
	.4byte	.LASF736
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF737
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF738
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF739
	.byte	0x5
	.uleb128 0x44
	.4byte	.LASF740
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF741
	.byte	0x5
	.uleb128 0x46
	.4byte	.LASF742
	.byte	0x5
	.uleb128 0x47
	.4byte	.LASF743
	.byte	0x5
	.uleb128 0x48
	.4byte	.LASF744
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF745
	.byte	0x5
	.uleb128 0x4a
	.4byte	.LASF746
	.byte	0x5
	.uleb128 0x4b
	.4byte	.LASF747
	.byte	0x5
	.uleb128 0x4c
	.4byte	.LASF748
	.byte	0x5
	.uleb128 0x4d
	.4byte	.LASF749
	.byte	0x5
	.uleb128 0x4e
	.4byte	.LASF750
	.byte	0x5
	.uleb128 0x4f
	.4byte	.LASF751
	.byte	0x5
	.uleb128 0x50
	.4byte	.LASF752
	.byte	0x5
	.uleb128 0x51
	.4byte	.LASF753
	.byte	0x5
	.uleb128 0x52
	.4byte	.LASF754
	.byte	0x5
	.uleb128 0x53
	.4byte	.LASF755
	.byte	0x5
	.uleb128 0x54
	.4byte	.LASF756
	.byte	0x5
	.uleb128 0x55
	.4byte	.LASF757
	.byte	0x5
	.uleb128 0x56
	.4byte	.LASF758
	.byte	0x5
	.uleb128 0x57
	.4byte	.LASF759
	.byte	0x5
	.uleb128 0x58
	.4byte	.LASF760
	.byte	0x5
	.uleb128 0x59
	.4byte	.LASF761
	.byte	0x5
	.uleb128 0x5a
	.4byte	.LASF762
	.byte	0x5
	.uleb128 0x5b
	.4byte	.LASF763
	.byte	0x5
	.uleb128 0x5c
	.4byte	.LASF764
	.byte	0x5
	.uleb128 0x5d
	.4byte	.LASF765
	.byte	0x5
	.uleb128 0x5e
	.4byte	.LASF766
	.byte	0x5
	.uleb128 0x5f
	.4byte	.LASF767
	.byte	0x5
	.uleb128 0x60
	.4byte	.LASF768
	.byte	0x5
	.uleb128 0x61
	.4byte	.LASF769
	.byte	0x5
	.uleb128 0x62
	.4byte	.LASF770
	.byte	0x5
	.uleb128 0x63
	.4byte	.LASF771
	.byte	0x5
	.uleb128 0x64
	.4byte	.LASF772
	.byte	0x5
	.uleb128 0x65
	.4byte	.LASF773
	.byte	0x5
	.uleb128 0x66
	.4byte	.LASF774
	.byte	0x5
	.uleb128 0x67
	.4byte	.LASF775
	.byte	0x5
	.uleb128 0x68
	.4byte	.LASF776
	.byte	0x5
	.uleb128 0x69
	.4byte	.LASF777
	.byte	0x5
	.uleb128 0x6a
	.4byte	.LASF778
	.byte	0x5
	.uleb128 0x6b
	.4byte	.LASF779
	.byte	0x5
	.uleb128 0x6c
	.4byte	.LASF780
	.byte	0x5
	.uleb128 0x6d
	.4byte	.LASF781
	.byte	0x5
	.uleb128 0x6e
	.4byte	.LASF782
	.byte	0x5
	.uleb128 0x6f
	.4byte	.LASF783
	.byte	0x5
	.uleb128 0x70
	.4byte	.LASF784
	.byte	0x5
	.uleb128 0x71
	.4byte	.LASF785
	.byte	0x5
	.uleb128 0x72
	.4byte	.LASF786
	.byte	0x5
	.uleb128 0x73
	.4byte	.LASF787
	.byte	0x5
	.uleb128 0x74
	.4byte	.LASF788
	.byte	0x5
	.uleb128 0x75
	.4byte	.LASF789
	.byte	0x5
	.uleb128 0x76
	.4byte	.LASF790
	.byte	0x5
	.uleb128 0x77
	.4byte	.LASF791
	.byte	0x5
	.uleb128 0x78
	.4byte	.LASF792
	.byte	0x5
	.uleb128 0x79
	.4byte	.LASF793
	.byte	0x5
	.uleb128 0x7a
	.4byte	.LASF794
	.byte	0x5
	.uleb128 0x7b
	.4byte	.LASF795
	.byte	0x5
	.uleb128 0x7c
	.4byte	.LASF796
	.byte	0x5
	.uleb128 0x7d
	.4byte	.LASF797
	.byte	0x5
	.uleb128 0x7e
	.4byte	.LASF798
	.byte	0x5
	.uleb128 0x7f
	.4byte	.LASF799
	.byte	0x5
	.uleb128 0x80
	.4byte	.LASF800
	.byte	0x5
	.uleb128 0x81
	.4byte	.LASF801
	.byte	0x5
	.uleb128 0x82
	.4byte	.LASF802
	.byte	0x5
	.uleb128 0x83
	.4byte	.LASF803
	.byte	0x5
	.uleb128 0x84
	.4byte	.LASF804
	.byte	0x5
	.uleb128 0x85
	.4byte	.LASF805
	.byte	0x5
	.uleb128 0x86
	.4byte	.LASF806
	.byte	0x5
	.uleb128 0x87
	.4byte	.LASF807
	.byte	0x5
	.uleb128 0x88
	.4byte	.LASF808
	.byte	0x5
	.uleb128 0x89
	.4byte	.LASF809
	.byte	0x5
	.uleb128 0x8a
	.4byte	.LASF810
	.byte	0x5
	.uleb128 0x8b
	.4byte	.LASF811
	.byte	0x5
	.uleb128 0x8c
	.4byte	.LASF812
	.byte	0x5
	.uleb128 0x8d
	.4byte	.LASF813
	.byte	0x5
	.uleb128 0x8e
	.4byte	.LASF814
	.byte	0x5
	.uleb128 0x8f
	.4byte	.LASF815
	.byte	0x5
	.uleb128 0x90
	.4byte	.LASF816
	.byte	0x5
	.uleb128 0x91
	.4byte	.LASF817
	.byte	0x5
	.uleb128 0x92
	.4byte	.LASF818
	.byte	0x5
	.uleb128 0x93
	.4byte	.LASF819
	.byte	0x5
	.uleb128 0x94
	.4byte	.LASF820
	.byte	0x5
	.uleb128 0x95
	.4byte	.LASF821
	.byte	0x5
	.uleb128 0x96
	.4byte	.LASF822
	.byte	0x5
	.uleb128 0x97
	.4byte	.LASF823
	.byte	0x5
	.uleb128 0x98
	.4byte	.LASF824
	.byte	0x5
	.uleb128 0x99
	.4byte	.LASF825
	.byte	0x5
	.uleb128 0x9a
	.4byte	.LASF826
	.byte	0x5
	.uleb128 0x9b
	.4byte	.LASF827
	.byte	0x5
	.uleb128 0x9c
	.4byte	.LASF828
	.byte	0x5
	.uleb128 0x9d
	.4byte	.LASF829
	.byte	0x5
	.uleb128 0x9e
	.4byte	.LASF830
	.byte	0x5
	.uleb128 0x9f
	.4byte	.LASF831
	.byte	0x5
	.uleb128 0xa0
	.4byte	.LASF832
	.byte	0x5
	.uleb128 0xa1
	.4byte	.LASF833
	.byte	0x5
	.uleb128 0xa2
	.4byte	.LASF834
	.byte	0x5
	.uleb128 0xa3
	.4byte	.LASF835
	.byte	0x5
	.uleb128 0xa4
	.4byte	.LASF836
	.byte	0x5
	.uleb128 0xa5
	.4byte	.LASF837
	.byte	0x5
	.uleb128 0xa6
	.4byte	.LASF838
	.byte	0x5
	.uleb128 0xa7
	.4byte	.LASF839
	.byte	0x5
	.uleb128 0xa8
	.4byte	.LASF840
	.byte	0x5
	.uleb128 0xa9
	.4byte	.LASF841
	.byte	0x5
	.uleb128 0xaa
	.4byte	.LASF842
	.byte	0x5
	.uleb128 0xab
	.4byte	.LASF843
	.byte	0x5
	.uleb128 0xac
	.4byte	.LASF844
	.byte	0x5
	.uleb128 0xad
	.4byte	.LASF845
	.byte	0x5
	.uleb128 0xae
	.4byte	.LASF846
	.byte	0x5
	.uleb128 0xaf
	.4byte	.LASF847
	.byte	0x5
	.uleb128 0xb0
	.4byte	.LASF848
	.byte	0x5
	.uleb128 0xb1
	.4byte	.LASF849
	.byte	0x5
	.uleb128 0xb2
	.4byte	.LASF850
	.byte	0x5
	.uleb128 0xb3
	.4byte	.LASF851
	.byte	0x5
	.uleb128 0xb4
	.4byte	.LASF852
	.byte	0x5
	.uleb128 0xb5
	.4byte	.LASF853
	.byte	0x5
	.uleb128 0xb6
	.4byte	.LASF854
	.byte	0x5
	.uleb128 0xb7
	.4byte	.LASF855
	.byte	0x5
	.uleb128 0xb8
	.4byte	.LASF856
	.byte	0x5
	.uleb128 0xb9
	.4byte	.LASF857
	.byte	0x5
	.uleb128 0xba
	.4byte	.LASF858
	.byte	0x5
	.uleb128 0xbb
	.4byte	.LASF859
	.byte	0x5
	.uleb128 0xbc
	.4byte	.LASF860
	.byte	0x5
	.uleb128 0xbd
	.4byte	.LASF861
	.byte	0x5
	.uleb128 0xbe
	.4byte	.LASF862
	.byte	0x5
	.uleb128 0xbf
	.4byte	.LASF863
	.byte	0x5
	.uleb128 0xc0
	.4byte	.LASF864
	.byte	0x5
	.uleb128 0xc1
	.4byte	.LASF865
	.byte	0x5
	.uleb128 0xc2
	.4byte	.LASF866
	.byte	0x5
	.uleb128 0xc3
	.4byte	.LASF867
	.byte	0x5
	.uleb128 0xc4
	.4byte	.LASF868
	.byte	0x5
	.uleb128 0xc5
	.4byte	.LASF869
	.byte	0x5
	.uleb128 0xc6
	.4byte	.LASF870
	.byte	0x5
	.uleb128 0xc7
	.4byte	.LASF871
	.byte	0x5
	.uleb128 0xc8
	.4byte	.LASF872
	.byte	0x5
	.uleb128 0xc9
	.4byte	.LASF873
	.byte	0x5
	.uleb128 0xca
	.4byte	.LASF874
	.byte	0x5
	.uleb128 0xcb
	.4byte	.LASF875
	.byte	0x5
	.uleb128 0xcc
	.4byte	.LASF876
	.byte	0x5
	.uleb128 0xcd
	.4byte	.LASF877
	.byte	0x5
	.uleb128 0xce
	.4byte	.LASF878
	.byte	0x5
	.uleb128 0xcf
	.4byte	.LASF879
	.byte	0x5
	.uleb128 0xd0
	.4byte	.LASF880
	.byte	0x5
	.uleb128 0xd1
	.4byte	.LASF881
	.byte	0x5
	.uleb128 0xd2
	.4byte	.LASF882
	.byte	0x5
	.uleb128 0xd3
	.4byte	.LASF883
	.byte	0x5
	.uleb128 0xd4
	.4byte	.LASF884
	.byte	0x5
	.uleb128 0xd5
	.4byte	.LASF885
	.byte	0x5
	.uleb128 0xd6
	.4byte	.LASF886
	.byte	0x5
	.uleb128 0xd7
	.4byte	.LASF887
	.byte	0x5
	.uleb128 0xd8
	.4byte	.LASF888
	.byte	0x5
	.uleb128 0xd9
	.4byte	.LASF889
	.byte	0x5
	.uleb128 0xda
	.4byte	.LASF890
	.byte	0x5
	.uleb128 0xdb
	.4byte	.LASF891
	.byte	0x5
	.uleb128 0xdc
	.4byte	.LASF892
	.byte	0x5
	.uleb128 0xdd
	.4byte	.LASF893
	.byte	0x5
	.uleb128 0xde
	.4byte	.LASF894
	.byte	0x5
	.uleb128 0xdf
	.4byte	.LASF895
	.byte	0x5
	.uleb128 0xe0
	.4byte	.LASF896
	.byte	0x5
	.uleb128 0xe1
	.4byte	.LASF897
	.byte	0x5
	.uleb128 0xe2
	.4byte	.LASF898
	.byte	0x5
	.uleb128 0xe3
	.4byte	.LASF899
	.byte	0x5
	.uleb128 0xe4
	.4byte	.LASF900
	.byte	0x5
	.uleb128 0xe5
	.4byte	.LASF901
	.byte	0x5
	.uleb128 0xe6
	.4byte	.LASF902
	.byte	0x5
	.uleb128 0xe7
	.4byte	.LASF903
	.byte	0x5
	.uleb128 0xe8
	.4byte	.LASF904
	.byte	0x5
	.uleb128 0xe9
	.4byte	.LASF905
	.byte	0x5
	.uleb128 0xea
	.4byte	.LASF906
	.byte	0x5
	.uleb128 0xeb
	.4byte	.LASF907
	.byte	0x5
	.uleb128 0xec
	.4byte	.LASF908
	.byte	0x5
	.uleb128 0xed
	.4byte	.LASF909
	.byte	0x5
	.uleb128 0xee
	.4byte	.LASF910
	.byte	0x5
	.uleb128 0xef
	.4byte	.LASF911
	.byte	0x5
	.uleb128 0xf0
	.4byte	.LASF912
	.byte	0x5
	.uleb128 0xf1
	.4byte	.LASF913
	.byte	0x5
	.uleb128 0xf2
	.4byte	.LASF914
	.byte	0x5
	.uleb128 0xf3
	.4byte	.LASF915
	.byte	0x5
	.uleb128 0xf4
	.4byte	.LASF916
	.byte	0x5
	.uleb128 0xf5
	.4byte	.LASF917
	.byte	0x5
	.uleb128 0xf6
	.4byte	.LASF918
	.byte	0x5
	.uleb128 0xf7
	.4byte	.LASF919
	.byte	0x5
	.uleb128 0xf8
	.4byte	.LASF920
	.byte	0x5
	.uleb128 0xf9
	.4byte	.LASF921
	.byte	0x5
	.uleb128 0xfa
	.4byte	.LASF922
	.byte	0x5
	.uleb128 0xfb
	.4byte	.LASF923
	.byte	0x5
	.uleb128 0xfc
	.4byte	.LASF924
	.byte	0x5
	.uleb128 0xfd
	.4byte	.LASF925
	.byte	0x5
	.uleb128 0xfe
	.4byte	.LASF926
	.byte	0x5
	.uleb128 0xff
	.4byte	.LASF927
	.byte	0x5
	.uleb128 0x100
	.4byte	.LASF928
	.byte	0x5
	.uleb128 0x101
	.4byte	.LASF929
	.byte	0x5
	.uleb128 0x102
	.4byte	.LASF930
	.byte	0x5
	.uleb128 0x103
	.4byte	.LASF931
	.byte	0x5
	.uleb128 0x104
	.4byte	.LASF932
	.byte	0x5
	.uleb128 0x105
	.4byte	.LASF933
	.byte	0x5
	.uleb128 0x106
	.4byte	.LASF934
	.byte	0x5
	.uleb128 0x107
	.4byte	.LASF935
	.byte	0x5
	.uleb128 0x108
	.4byte	.LASF936
	.byte	0x5
	.uleb128 0x109
	.4byte	.LASF937
	.byte	0x5
	.uleb128 0x10a
	.4byte	.LASF938
	.byte	0x5
	.uleb128 0x10b
	.4byte	.LASF939
	.byte	0x5
	.uleb128 0x10c
	.4byte	.LASF940
	.byte	0x5
	.uleb128 0x10d
	.4byte	.LASF941
	.byte	0x5
	.uleb128 0x10e
	.4byte	.LASF942
	.byte	0x5
	.uleb128 0x10f
	.4byte	.LASF943
	.byte	0x5
	.uleb128 0x110
	.4byte	.LASF944
	.byte	0x5
	.uleb128 0x111
	.4byte	.LASF945
	.byte	0x5
	.uleb128 0x112
	.4byte	.LASF946
	.byte	0x5
	.uleb128 0x113
	.4byte	.LASF947
	.byte	0x5
	.uleb128 0x114
	.4byte	.LASF948
	.byte	0x5
	.uleb128 0x115
	.4byte	.LASF949
	.byte	0x5
	.uleb128 0x116
	.4byte	.LASF950
	.byte	0x5
	.uleb128 0x117
	.4byte	.LASF951
	.byte	0x5
	.uleb128 0x118
	.4byte	.LASF952
	.byte	0x5
	.uleb128 0x119
	.4byte	.LASF953
	.byte	0x5
	.uleb128 0x11a
	.4byte	.LASF954
	.byte	0x5
	.uleb128 0x11b
	.4byte	.LASF955
	.byte	0x5
	.uleb128 0x11c
	.4byte	.LASF956
	.byte	0x5
	.uleb128 0x11d
	.4byte	.LASF957
	.byte	0x5
	.uleb128 0x11e
	.4byte	.LASF958
	.byte	0x5
	.uleb128 0x11f
	.4byte	.LASF959
	.byte	0x5
	.uleb128 0x120
	.4byte	.LASF960
	.byte	0x5
	.uleb128 0x121
	.4byte	.LASF961
	.byte	0x5
	.uleb128 0x122
	.4byte	.LASF962
	.byte	0x5
	.uleb128 0x123
	.4byte	.LASF963
	.byte	0x5
	.uleb128 0x124
	.4byte	.LASF964
	.byte	0x5
	.uleb128 0x125
	.4byte	.LASF965
	.byte	0x5
	.uleb128 0x126
	.4byte	.LASF966
	.byte	0x5
	.uleb128 0x127
	.4byte	.LASF967
	.byte	0x5
	.uleb128 0x128
	.4byte	.LASF968
	.byte	0x5
	.uleb128 0x129
	.4byte	.LASF969
	.byte	0x5
	.uleb128 0x12a
	.4byte	.LASF970
	.byte	0x5
	.uleb128 0x12b
	.4byte	.LASF971
	.byte	0x5
	.uleb128 0x12c
	.4byte	.LASF972
	.byte	0x5
	.uleb128 0x12d
	.4byte	.LASF973
	.byte	0x5
	.uleb128 0x12e
	.4byte	.LASF974
	.byte	0x5
	.uleb128 0x12f
	.4byte	.LASF975
	.byte	0x5
	.uleb128 0x130
	.4byte	.LASF976
	.byte	0x5
	.uleb128 0x131
	.4byte	.LASF977
	.byte	0x5
	.uleb128 0x132
	.4byte	.LASF978
	.byte	0x5
	.uleb128 0x133
	.4byte	.LASF979
	.byte	0x5
	.uleb128 0x134
	.4byte	.LASF980
	.byte	0x5
	.uleb128 0x135
	.4byte	.LASF981
	.byte	0x5
	.uleb128 0x136
	.4byte	.LASF982
	.byte	0x5
	.uleb128 0x137
	.4byte	.LASF983
	.byte	0x5
	.uleb128 0x138
	.4byte	.LASF984
	.byte	0x5
	.uleb128 0x139
	.4byte	.LASF985
	.byte	0x5
	.uleb128 0x13a
	.4byte	.LASF986
	.byte	0x5
	.uleb128 0x13b
	.4byte	.LASF987
	.byte	0x5
	.uleb128 0x13c
	.4byte	.LASF988
	.byte	0x5
	.uleb128 0x13d
	.4byte	.LASF989
	.byte	0x5
	.uleb128 0x13e
	.4byte	.LASF990
	.byte	0x5
	.uleb128 0x13f
	.4byte	.LASF991
	.byte	0x5
	.uleb128 0x140
	.4byte	.LASF992
	.byte	0x5
	.uleb128 0x141
	.4byte	.LASF993
	.byte	0x5
	.uleb128 0x142
	.4byte	.LASF994
	.byte	0x5
	.uleb128 0x143
	.4byte	.LASF995
	.byte	0x5
	.uleb128 0x144
	.4byte	.LASF996
	.byte	0x5
	.uleb128 0x145
	.4byte	.LASF997
	.byte	0x5
	.uleb128 0x146
	.4byte	.LASF998
	.byte	0x5
	.uleb128 0x147
	.4byte	.LASF999
	.byte	0x5
	.uleb128 0x148
	.4byte	.LASF1000
	.byte	0x5
	.uleb128 0x149
	.4byte	.LASF1001
	.byte	0x5
	.uleb128 0x14a
	.4byte	.LASF1002
	.byte	0x5
	.uleb128 0x14b
	.4byte	.LASF1003
	.byte	0x5
	.uleb128 0x14c
	.4byte	.LASF1004
	.byte	0x5
	.uleb128 0x14d
	.4byte	.LASF1005
	.byte	0x5
	.uleb128 0x14e
	.4byte	.LASF1006
	.byte	0x5
	.uleb128 0x14f
	.4byte	.LASF1007
	.byte	0x5
	.uleb128 0x150
	.4byte	.LASF1008
	.byte	0x5
	.uleb128 0x151
	.4byte	.LASF1009
	.byte	0x5
	.uleb128 0x152
	.4byte	.LASF1010
	.byte	0x5
	.uleb128 0x153
	.4byte	.LASF1011
	.byte	0x5
	.uleb128 0x154
	.4byte	.LASF1012
	.byte	0x5
	.uleb128 0x155
	.4byte	.LASF1013
	.byte	0x5
	.uleb128 0x156
	.4byte	.LASF1014
	.byte	0x5
	.uleb128 0x157
	.4byte	.LASF1015
	.byte	0x5
	.uleb128 0x158
	.4byte	.LASF1016
	.byte	0x5
	.uleb128 0x159
	.4byte	.LASF1017
	.byte	0x5
	.uleb128 0x15a
	.4byte	.LASF1018
	.byte	0x5
	.uleb128 0x15b
	.4byte	.LASF1019
	.byte	0x5
	.uleb128 0x15c
	.4byte	.LASF1020
	.byte	0x5
	.uleb128 0x15d
	.4byte	.LASF1021
	.byte	0x5
	.uleb128 0x15e
	.4byte	.LASF1022
	.byte	0x5
	.uleb128 0x15f
	.4byte	.LASF1023
	.byte	0x5
	.uleb128 0x160
	.4byte	.LASF1024
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.core_v5.h.150.770dc028d3bf75340a52b83e3c75b7f1,comdat
.Ldebug_macro10:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x96
	.4byte	.LASF1025
	.byte	0x5
	.uleb128 0x9a
	.4byte	.LASF1026
	.byte	0x5
	.uleb128 0x9d
	.4byte	.LASF1027
	.byte	0x5
	.uleb128 0xa1
	.4byte	.LASF1028
	.byte	0x5
	.uleb128 0xa5
	.4byte	.LASF1029
	.byte	0x5
	.uleb128 0xa9
	.4byte	.LASF1030
	.byte	0x5
	.uleb128 0xad
	.4byte	.LASF1031
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.ae350.h.11.9b8ade9cb9a3aa721d571ace2684b93e,comdat
.Ldebug_macro11:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF1032
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF1033
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF1034
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF1035
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF1036
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF1037
	.byte	0x5
	.uleb128 0x1c
	.4byte	.LASF1038
	.byte	0x5
	.uleb128 0x1d
	.4byte	.LASF1039
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF1040
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF1041
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF1042
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF1043
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF1044
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF1045
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF1046
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF1047
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF1048
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF1049
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF1050
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF1051
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF1052
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF1053
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF1054
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF1055
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF1056
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF1057
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF1058
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF1059
	.byte	0x5
	.uleb128 0x37
	.4byte	.LASF1060
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF1061
	.byte	0x5
	.uleb128 0x39
	.4byte	.LASF1062
	.byte	0x5
	.uleb128 0x3a
	.4byte	.LASF1063
	.byte	0x5
	.uleb128 0x3b
	.4byte	.LASF1064
	.byte	0x5
	.uleb128 0x3c
	.4byte	.LASF1065
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF1066
	.byte	0x5
	.uleb128 0x3e
	.4byte	.LASF1067
	.byte	0x5
	.uleb128 0x46
	.4byte	.LASF1068
	.byte	0x5
	.uleb128 0x47
	.4byte	.LASF1069
	.byte	0x5
	.uleb128 0x48
	.4byte	.LASF1070
	.byte	0x5
	.uleb128 0x147
	.4byte	.LASF1071
	.byte	0x5
	.uleb128 0x149
	.4byte	.LASF1072
	.byte	0x5
	.uleb128 0x14a
	.4byte	.LASF1073
	.byte	0x5
	.uleb128 0x14b
	.4byte	.LASF1074
	.byte	0x5
	.uleb128 0x14c
	.4byte	.LASF1075
	.byte	0x5
	.uleb128 0x14e
	.4byte	.LASF1076
	.byte	0x5
	.uleb128 0x14f
	.4byte	.LASF1077
	.byte	0x5
	.uleb128 0x150
	.4byte	.LASF1078
	.byte	0x5
	.uleb128 0x151
	.4byte	.LASF1079
	.byte	0x5
	.uleb128 0x152
	.4byte	.LASF1080
	.byte	0x5
	.uleb128 0x153
	.4byte	.LASF1081
	.byte	0x5
	.uleb128 0x154
	.4byte	.LASF1082
	.byte	0x5
	.uleb128 0x155
	.4byte	.LASF1083
	.byte	0x5
	.uleb128 0x156
	.4byte	.LASF1084
	.byte	0x5
	.uleb128 0x157
	.4byte	.LASF1085
	.byte	0x5
	.uleb128 0x158
	.4byte	.LASF1086
	.byte	0x5
	.uleb128 0x15a
	.4byte	.LASF1087
	.byte	0x5
	.uleb128 0x15b
	.4byte	.LASF1088
	.byte	0x5
	.uleb128 0x15d
	.4byte	.LASF1089
	.byte	0x5
	.uleb128 0x15e
	.4byte	.LASF1090
	.byte	0x5
	.uleb128 0x160
	.4byte	.LASF1091
	.byte	0x5
	.uleb128 0x161
	.4byte	.LASF1092
	.byte	0x5
	.uleb128 0x162
	.4byte	.LASF1093
	.byte	0x5
	.uleb128 0x163
	.4byte	.LASF1094
	.byte	0x5
	.uleb128 0x169
	.4byte	.LASF1095
	.byte	0x5
	.uleb128 0x16a
	.4byte	.LASF1096
	.byte	0x5
	.uleb128 0x16b
	.4byte	.LASF1097
	.byte	0x5
	.uleb128 0x16c
	.4byte	.LASF1098
	.byte	0x5
	.uleb128 0x16d
	.4byte	.LASF1099
	.byte	0x5
	.uleb128 0x16e
	.4byte	.LASF1100
	.byte	0x5
	.uleb128 0x16f
	.4byte	.LASF1101
	.byte	0x5
	.uleb128 0x170
	.4byte	.LASF1102
	.byte	0x5
	.uleb128 0x171
	.4byte	.LASF1103
	.byte	0x5
	.uleb128 0x172
	.4byte	.LASF1104
	.byte	0x5
	.uleb128 0x173
	.4byte	.LASF1105
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.interrupt.h.13.0dcee1073ff8cb36d3a72d2ab9d9af28,comdat
.Ldebug_macro12:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0xd
	.4byte	.LASF1106
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF1107
	.byte	0x5
	.uleb128 0x1d
	.4byte	.LASF1108
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF1109
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.plic.h.11.044d38cfc207efadf096698b73e4934d,comdat
.Ldebug_macro13:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF1110
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF1111
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF1112
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF1113
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF1114
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF1115
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF1116
	.byte	0x5
	.uleb128 0x22
	.4byte	.LASF1117
	.byte	0x5
	.uleb128 0x23
	.4byte	.LASF1118
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF1119
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF1120
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF1121
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF1122
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.interrupt.h.36.00b89799e9184a0d7dc8454548c339a0,comdat
.Ldebug_macro14:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF1123
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF1124
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF1125
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF1126
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF1127
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF1128
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF1129
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF1130
	.byte	0x5
	.uleb128 0x3c
	.4byte	.LASF1131
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF1132
	.byte	0x5
	.uleb128 0x3e
	.4byte	.LASF1133
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF1134
	.byte	0x5
	.uleb128 0x40
	.4byte	.LASF1135
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF1136
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF1137
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF1138
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.platform.h.31.95a025a6ce47078ae8baeaf811f70af5,comdat
.Ldebug_macro15:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF1139
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF1140
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF1141
	.byte	0x5
	.uleb128 0x22
	.4byte	.LASF1142
	.byte	0x5
	.uleb128 0x23
	.4byte	.LASF1143
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF1144
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF1145
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF1146
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF1147
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF1148
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF1149
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.dma_ae350.h.22.955079575c03892fa738b82688ec15a9,comdat
.Ldebug_macro16:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF1150
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF1151
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF1152
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF1153
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF1154
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF1155
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF1156
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF1157
	.byte	0x5
	.uleb128 0x22
	.4byte	.LASF1158
	.byte	0x5
	.uleb128 0x23
	.4byte	.LASF1159
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF1160
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF1161
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF1162
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF1163
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF1164
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF1165
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF1166
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF1167
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF1168
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF1169
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF1170
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF1171
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF1172
	.byte	0x5
	.uleb128 0x37
	.4byte	.LASF1173
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF1174
	.byte	0x5
	.uleb128 0x39
	.4byte	.LASF1175
	.byte	0x5
	.uleb128 0x3a
	.4byte	.LASF1176
	.byte	0x5
	.uleb128 0x3b
	.4byte	.LASF1177
	.byte	0x5
	.uleb128 0x3c
	.4byte	.LASF1178
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF1179
	.byte	0x5
	.uleb128 0x3e
	.4byte	.LASF1180
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF1181
	.byte	0x5
	.uleb128 0x40
	.4byte	.LASF1182
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF1183
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF1184
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF1185
	.byte	0x5
	.uleb128 0x44
	.4byte	.LASF1186
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF1187
	.byte	0x5
	.uleb128 0x46
	.4byte	.LASF1188
	.byte	0x5
	.uleb128 0x47
	.4byte	.LASF1189
	.byte	0x5
	.uleb128 0x48
	.4byte	.LASF1190
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF1191
	.byte	0x5
	.uleb128 0x4a
	.4byte	.LASF1192
	.byte	0x5
	.uleb128 0x4b
	.4byte	.LASF1193
	.byte	0x5
	.uleb128 0x4c
	.4byte	.LASF1194
	.byte	0x5
	.uleb128 0x4d
	.4byte	.LASF1195
	.byte	0x5
	.uleb128 0x4e
	.4byte	.LASF1196
	.byte	0x5
	.uleb128 0x4f
	.4byte	.LASF1197
	.byte	0x5
	.uleb128 0x50
	.4byte	.LASF1198
	.byte	0x5
	.uleb128 0x51
	.4byte	.LASF1199
	.byte	0x5
	.uleb128 0x52
	.4byte	.LASF1200
	.byte	0x5
	.uleb128 0x53
	.4byte	.LASF1201
	.byte	0x5
	.uleb128 0x54
	.4byte	.LASF1202
	.byte	0x5
	.uleb128 0x55
	.4byte	.LASF1203
	.byte	0x5
	.uleb128 0x56
	.4byte	.LASF1204
	.byte	0x5
	.uleb128 0x57
	.4byte	.LASF1205
	.byte	0x5
	.uleb128 0x58
	.4byte	.LASF1206
	.byte	0x5
	.uleb128 0x59
	.4byte	.LASF1207
	.byte	0x5
	.uleb128 0x5a
	.4byte	.LASF1208
	.byte	0x5
	.uleb128 0x5b
	.4byte	.LASF1209
	.byte	0x5
	.uleb128 0x5c
	.4byte	.LASF1210
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.i2c_ae350.h.22.03bddb7c1b7762c8fd52e4588f6d5ede,comdat
.Ldebug_macro17:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF1211
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF1212
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF1213
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF1214
	.byte	0x5
	.uleb128 0x1d
	.4byte	.LASF1215
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF1216
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF1217
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF1218
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF1219
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF1220
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF1221
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF1222
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF1223
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF1224
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF1225
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF1226
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF1227
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF1228
	.byte	0x5
	.uleb128 0x39
	.4byte	.LASF1229
	.byte	0x5
	.uleb128 0x3a
	.4byte	.LASF1230
	.byte	0x5
	.uleb128 0x3b
	.4byte	.LASF1231
	.byte	0x5
	.uleb128 0x3c
	.4byte	.LASF1232
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF1233
	.byte	0x5
	.uleb128 0x3e
	.4byte	.LASF1234
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF1235
	.byte	0x5
	.uleb128 0x40
	.4byte	.LASF1236
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF1237
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF1238
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF1239
	.byte	0x5
	.uleb128 0x46
	.4byte	.LASF1240
	.byte	0x5
	.uleb128 0x47
	.4byte	.LASF1241
	.byte	0x5
	.uleb128 0x48
	.4byte	.LASF1242
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF1243
	.byte	0x5
	.uleb128 0x4a
	.4byte	.LASF1244
	.byte	0x5
	.uleb128 0x4b
	.4byte	.LASF1245
	.byte	0x5
	.uleb128 0x4c
	.4byte	.LASF1246
	.byte	0x5
	.uleb128 0x4d
	.4byte	.LASF1247
	.byte	0x5
	.uleb128 0x4e
	.4byte	.LASF1248
	.byte	0x5
	.uleb128 0x4f
	.4byte	.LASF1249
	.byte	0x5
	.uleb128 0x50
	.4byte	.LASF1250
	.byte	0x5
	.uleb128 0x51
	.4byte	.LASF1251
	.byte	0x5
	.uleb128 0x53
	.4byte	.LASF1252
	.byte	0x5
	.uleb128 0x54
	.4byte	.LASF1253
	.byte	0x5
	.uleb128 0x55
	.4byte	.LASF1254
	.byte	0x5
	.uleb128 0x58
	.4byte	.LASF1255
	.byte	0x5
	.uleb128 0x5b
	.4byte	.LASF1256
	.byte	0x5
	.uleb128 0x5e
	.4byte	.LASF1257
	.byte	0x5
	.uleb128 0x5f
	.4byte	.LASF1258
	.byte	0x5
	.uleb128 0x60
	.4byte	.LASF1259
	.byte	0x5
	.uleb128 0x61
	.4byte	.LASF1260
	.byte	0x5
	.uleb128 0x62
	.4byte	.LASF1261
	.byte	0x5
	.uleb128 0x63
	.4byte	.LASF1262
	.byte	0x5
	.uleb128 0x66
	.4byte	.LASF1263
	.byte	0x5
	.uleb128 0x67
	.4byte	.LASF1264
	.byte	0x5
	.uleb128 0x68
	.4byte	.LASF1265
	.byte	0x5
	.uleb128 0x69
	.4byte	.LASF1266
	.byte	0x5
	.uleb128 0x6a
	.4byte	.LASF1267
	.byte	0x5
	.uleb128 0x6b
	.4byte	.LASF1268
	.byte	0x5
	.uleb128 0x6c
	.4byte	.LASF1269
	.byte	0x5
	.uleb128 0x73
	.4byte	.LASF1270
	.byte	0x5
	.uleb128 0x74
	.4byte	.LASF1271
	.byte	0x5
	.uleb128 0x75
	.4byte	.LASF1272
	.byte	0x5
	.uleb128 0x76
	.4byte	.LASF1273
	.byte	0x5
	.uleb128 0x77
	.4byte	.LASF1274
	.byte	0x5
	.uleb128 0x78
	.4byte	.LASF1275
	.byte	0x5
	.uleb128 0x79
	.4byte	.LASF1276
	.byte	0x5
	.uleb128 0x7a
	.4byte	.LASF1277
	.byte	0x5
	.uleb128 0x7b
	.4byte	.LASF1278
	.byte	0x5
	.uleb128 0xbd
	.4byte	.LASF1279
	.byte	0x5
	.uleb128 0xbe
	.4byte	.LASF1280
	.byte	0x5
	.uleb128 0xbf
	.4byte	.LASF1281
	.byte	0x5
	.uleb128 0xc0
	.4byte	.LASF1282
	.byte	0x5
	.uleb128 0xc2
	.4byte	.LASF1283
	.byte	0x5
	.uleb128 0xc4
	.4byte	.LASF1284
	.byte	0x5
	.uleb128 0xc5
	.4byte	.LASF1285
	.byte	0x5
	.uleb128 0xc6
	.4byte	.LASF1286
	.byte	0x5
	.uleb128 0xc7
	.4byte	.LASF1287
	.byte	0x5
	.uleb128 0xc9
	.4byte	.LASF1288
	.byte	0x5
	.uleb128 0xcb
	.4byte	.LASF1289
	.byte	0x5
	.uleb128 0xcc
	.4byte	.LASF1290
	.byte	0x5
	.uleb128 0xcd
	.4byte	.LASF1291
	.byte	0x5
	.uleb128 0xce
	.4byte	.LASF1292
	.byte	0x5
	.uleb128 0xd0
	.4byte	.LASF1293
	.byte	0x5
	.uleb128 0xf1
	.4byte	.LASF1294
	.byte	0x5
	.uleb128 0x10c
	.4byte	.LASF1295
	.byte	0x5
	.uleb128 0x10d
	.4byte	.LASF1296
	.byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF628:
	.string	"MCAUSE_INT 0x80000000UL"
.LASF1104:
	.string	"AE350_I2C ((I2C_RegDef *) I2C_BASE )"
.LASF1132:
	.string	"HAL_MIE_DISABLE() clear_csr(NDS_MSTATUS, MSTATUS_MIE)"
.LASF248:
	.string	"__FP_FAST_FMAF64 1"
.LASF1295:
	.string	"MEMSET(s,c,n) __builtin_memset ((s), (c), (n))"
.LASF633:
	.string	"IRQ_S_TIMER 5"
.LASF670:
	.string	"SLL32 sll"
.LASF992:
	.string	"NDS_MNXTI 0x345"
.LASF1446:
	.string	"read_fifo_count"
.LASF323:
	.string	"__riscv 1"
.LASF253:
	.string	"__FLT128_MIN_10_EXP__ (-4931)"
.LASF1033:
	.string	"KHz 1000"
.LASF311:
	.string	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2"
.LASF303:
	.string	"__CHAR_UNSIGNED__ 1"
.LASF1377:
	.string	"I2C_Cap"
.LASF1144:
	.string	"DEV_PIT AE350_PIT"
.LASF1153:
	.string	"DMA_EVENT_ABORT (3)"
.LASF1466:
	.string	"i2cx_master_transmit"
.LASF256:
	.string	"__FLT128_DECIMAL_DIG__ 36"
.LASF246:
	.string	"__FLT64_HAS_INFINITY__ 1"
.LASF772:
	.string	"NDS_SCAUSE 0x142"
.LASF945:
	.string	"NDS_MCACHE_CTL 0x7ca"
.LASF1273:
	.string	"SETUP_T_SCL_RATIO BIT(13)"
.LASF1064:
	.string	"IRQ_GP14_SOURCE 24"
.LASF900:
	.string	"NDS_MHPMEVENT29 0x33d"
.LASF81:
	.string	"__PTRDIFF_MAX__ 0x7fffffff"
.LASF1014:
	.string	"NDS_PMAADDR6 0xbd6"
.LASF1395:
	.string	"Xfer_Cmpl_Count"
.LASF1472:
	.string	"current_ptr"
.LASF93:
	.string	"__INTMAX_C(c) c ## LL"
.LASF1160:
	.string	"DMA_BSIZE_64 (0x6)"
.LASF92:
	.string	"__INTMAX_MAX__ 0x7fffffffffffffffLL"
.LASF928:
	.string	"NDS_MHCOUNTEREN 0x322"
.LASF1235:
	.string	"IEN_ADDR_HIT BIT(3)"
.LASF750:
	.string	"NDS_HPMCOUNTER18H 0xc92"
.LASF268:
	.string	"__FLT32X_MIN_EXP__ (-1021)"
.LASF635:
	.string	"IRQ_M_TIMER 7"
.LASF510:
	.string	"WINT_MIN __WINT_MIN__"
.LASF475:
	.string	"INT_FAST64_MAX"
.LASF737:
	.string	"NDS_HPMCOUNTER5H 0xc85"
.LASF16:
	.string	"__ATOMIC_CONSUME 1"
.LASF1145:
	.string	"DEV_WDT AE350_WDT"
.LASF284:
	.string	"__FLT64X_DIG__ 33"
.LASF265:
	.string	"__FLT128_IS_IEC_60559__ 1"
.LASF293:
	.string	"__FLT64X_EPSILON__ 1.92592994438723585305597794258492732e-34F64x"
.LASF1271:
	.string	"SETUP_T_SP BITS(21,23)"
.LASF1036:
	.string	"CPUFREQ (800 * MHz)"
.LASF1301:
	.string	"signed char"
.LASF428:
	.string	"INT64_MAX __INT64_MAX__"
.LASF489:
	.string	"INTMAX_MIN"
.LASF20:
	.string	"__SIZEOF_LONG_LONG__ 8"
.LASF171:
	.string	"__DBL_MAX_10_EXP__ 308"
.LASF735:
	.string	"NDS_HPMCOUNTER3H 0xc83"
.LASF1117:
	.string	"PLIC_ENABLE_OFFSET (0x00002000UL)"
.LASF614:
	.string	"MSTATUS_SPIE 0x00000020"
.LASF803:
	.string	"NDS_PMPADDR7 0x3b7"
.LASF603:
	.string	"DRV_PWM 1"
.LASF609:
	.string	"MSTATUS_UIE 0x00000001"
.LASF96:
	.string	"__INTMAX_WIDTH__ 64"
.LASF1416:
	.string	"dma_uninitialize"
.LASF1473:
	.string	"current"
.LASF30:
	.string	"__ORDER_PDP_ENDIAN__ 3412"
.LASF1448:
	.string	"i2cx_master_fifo_read"
.LASF687:
	.string	"FPREGSIZE XSTR(FPREGBYTES)"
.LASF181:
	.string	"__FP_FAST_FMA 1"
.LASF161:
	.string	"__FLT_HAS_DENORM__ 1"
.LASF45:
	.string	"__INT8_TYPE__ signed char"
.LASF1073:
	.string	"DLM_BASE 0xA0200000"
.LASF876:
	.string	"NDS_MHPMEVENT5 0x325"
.LASF686:
	.string	"FPPOP XSTR(FPLOAD)"
.LASF222:
	.string	"__FLT32_DECIMAL_DIG__ 9"
.LASF1000:
	.string	"NDS_MINTSEL_JAL 0x7ed"
.LASF782:
	.string	"NDS_MEDELEG 0x302"
.LASF289:
	.string	"__FLT64X_DECIMAL_DIG__ 36"
.LASF724:
	.string	"NDS_HPMCOUNTER24 0xc18"
.LASF4:
	.string	"__STDC_UTF_16__ 1"
.LASF207:
	.string	"__FLT16_MAX__ 6.55040000000000000000000000000000000e+4F16"
.LASF430:
	.string	"INT64_MIN (-INT64_MAX - 1)"
.LASF1470:
	.string	"__tmp"
.LASF121:
	.string	"__UINT8_C(c) c"
.LASF46:
	.string	"__INT16_TYPE__ short int"
.LASF264:
	.string	"__FLT128_HAS_QUIET_NAN__ 1"
.LASF1100:
	.string	"AE350_PIT ((PIT_RegDef *) PIT_BASE )"
.LASF1275:
	.string	"SETUP_DMA_EN BIT(3)"
.LASF229:
	.string	"__FLT32_HAS_INFINITY__ 1"
.LASF1252:
	.string	"STATUS_FIFO_HALF BIT(2)"
.LASF645:
	.string	"TRAP_S_ECALL 9"
.LASF595:
	.string	"DRV_UART2_DMA_RX_REQID 7"
.LASF1230:
	.string	"IEN_BYTE_RECV BIT(8)"
.LASF1236:
	.string	"IEN_FIFO_HALF BIT(2)"
.LASF290:
	.string	"__FLT64X_MAX__ 1.18973149535723176508575932662800702e+4932F64x"
.LASF1057:
	.string	"IRQ_GP7_SOURCE 17"
.LASF755:
	.string	"NDS_HPMCOUNTER23H 0xc97"
.LASF476:
	.string	"INT_FAST64_MAX __INT_FAST64_MAX__"
.LASF304:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1"
.LASF189:
	.string	"__DECIMAL_DIG__ 36"
.LASF618:
	.string	"MSTATUS_HPP 0x00000600"
.LASF962:
	.string	"NDS_MCCTLDATA 0x7cd"
.LASF6:
	.string	"__STDC_HOSTED__ 0"
.LASF1015:
	.string	"NDS_PMAADDR7 0xbd7"
.LASF839:
	.string	"NDS_MHPMCOUNTER28 0xb1c"
.LASF630:
	.string	"IRQ_S_SOFT 1"
.LASF1040:
	.string	"UCLKFREQ (OSCFREQ )"
.LASF1260:
	.string	"CTRL_PHASE_STOP BIT(9)"
.LASF1430:
	.string	"state"
.LASF728:
	.string	"NDS_HPMCOUNTER28 0xc1c"
.LASF64:
	.string	"__INT_FAST64_TYPE__ long long int"
.LASF652:
	.string	"TRAP_M_STACKUDF 33"
.LASF1218:
	.string	"IIC_FIFO_DEPTH_N (16)"
.LASF1041:
	.string	"IRQ_RTCPERIOD_SOURCE 1"
.LASF366:
	.string	"__SIZE_T__ "
.LASF225:
	.string	"__FLT32_MIN__ 1.17549435082228750796873653722224568e-38F32"
.LASF424:
	.string	"INT32_MIN (-INT32_MAX - 1)"
.LASF634:
	.string	"IRQ_H_TIMER 6"
.LASF221:
	.string	"__FLT32_MAX_10_EXP__ 38"
.LASF1223:
	.string	"FIFO_SZ_2 (0x0)"
.LASF1330:
	.string	"_AE350_DRIVER_I2C"
.LASF584:
	.string	"DRV_UART1_DMA_TX_CH 0"
.LASF562:
	.string	"AE350_I2C_EVENT_ARBITRATION_LOST (1UL << 6)"
.LASF157:
	.string	"__FLT_NORM_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF348:
	.string	"__I2C_AE350_H__ "
.LASF1321:
	.string	"direction"
.LASF904:
	.string	"NDS_TDATA1 0x7a1"
.LASF142:
	.string	"__UINTPTR_MAX__ 0xffffffffU"
.LASF231:
	.string	"__FP_FAST_FMAF32 1"
.LASF401:
	.string	"__need_wchar_t"
.LASF218:
	.string	"__FLT32_MIN_EXP__ (-125)"
.LASF285:
	.string	"__FLT64X_MIN_EXP__ (-16381)"
.LASF857:
	.string	"NDS_MHPMCOUNTER15H 0xb8f"
.LASF873:
	.string	"NDS_MHPMCOUNTER31H 0xb9f"
.LASF426:
	.string	"UINT32_MAX __UINT32_MAX__"
.LASF1442:
	.string	"stat"
.LASF359:
	.string	"_BSD_PTRDIFF_T_ "
.LASF978:
	.string	"NDS_SHPMEVENT6 0x9e6"
.LASF389:
	.string	"__WCHAR_T "
.LASF830:
	.string	"NDS_MHPMCOUNTER19 0xb13"
.LASF709:
	.string	"NDS_HPMCOUNTER9 0xc09"
.LASF236:
	.string	"__FLT64_MIN_10_EXP__ (-307)"
.LASF34:
	.string	"__GNUC_EXECUTION_CHARSET_NAME \"UTF-8\""
.LASF135:
	.string	"__INT_FAST64_WIDTH__ 64"
.LASF1378:
	.string	"Driver_State"
.LASF452:
	.string	"INT_LEAST64_MAX __INT_LEAST64_MAX__"
.LASF1240:
	.string	"STATUS_LINE_SDA BIT(14)"
.LASF927:
	.string	"NDS_MSCOUNTEREN 0x321"
.LASF1011:
	.string	"NDS_PMAADDR3 0xbd3"
.LASF1407:
	.string	"DriverCapabilities"
.LASF871:
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
.LASF1084:
	.string	"I2C_BASE _IO_(0xF0A00000)"
.LASF747:
	.string	"NDS_HPMCOUNTER15H 0xc8f"
.LASF448:
	.string	"INT_LEAST32_MIN (-INT_LEAST32_MAX - 1)"
.LASF1077:
	.string	"SMU_BASE _IO_(0xF0100000)"
.LASF1112:
	.string	"NDS_PLIC_FEATURE_VECTORED (1 << 1)"
.LASF1078:
	.string	"UART1_BASE _IO_(0xF0200000)"
.LASF363:
	.string	"__DEFINED_ptrdiff_t "
.LASF917:
	.string	"NDS_HCAUSE 0x242"
.LASF334:
	.string	"__riscv_cmodel_medany 1"
.LASF1171:
	.string	"DMA_INF_IDX0 (0x0)"
.LASF559:
	.string	"AE350_I2C_EVENT_SLAVE_RECEIVE (1UL << 3)"
.LASF599:
	.string	"DRV_SPI_DMA_TX_REQID 2"
.LASF90:
	.string	"__PTRDIFF_WIDTH__ 32"
.LASF1350:
	.string	"DATA"
.LASF136:
	.string	"__UINT_FAST8_MAX__ 0xffffffffU"
.LASF1001:
	.string	"NDS_PUSHMCAUSE 0x7ee"
.LASF965:
	.string	"NDS_SLIE 0x9c4"
.LASF402:
	.string	"NULL"
.LASF56:
	.string	"__INT_LEAST64_TYPE__ long long int"
.LASF650:
	.string	"TRAP_M_S_PAGE_FAULT 15"
.LASF288:
	.string	"__FLT64X_MAX_10_EXP__ 4932"
.LASF83:
	.string	"__SCHAR_WIDTH__ 8"
.LASF729:
	.string	"NDS_HPMCOUNTER29 0xc1d"
.LASF1443:
	.string	"i2cx_fifo_full_handler"
.LASF1066:
	.string	"IRQ_STANDBY_SOURCE 26"
.LASF527:
	.string	"INTMAX_C"
.LASF989:
	.string	"NDS_MPPIB 0x7f0"
.LASF457:
	.string	"INT_FAST8_MAX"
.LASF991:
	.string	"NDS_MTVT 0x307"
.LASF654:
	.string	"TRAP_S_L_ACC_FAULT 5"
.LASF1118:
	.string	"PLIC_ENABLE_SHIFT_PER_TARGET 7"
.LASF137:
	.string	"__UINT_FAST16_MAX__ 0xffffffffU"
.LASF131:
	.string	"__INT_FAST16_WIDTH__ 32"
.LASF674:
	.string	"LOG_REGBYTES 2"
.LASF140:
	.string	"__INTPTR_MAX__ 0x7fffffff"
.LASF212:
	.string	"__FLT16_HAS_DENORM__ 1"
.LASF936:
	.string	"NDS_MDLMB 0x7c1"
.LASF784:
	.string	"NDS_MIE 0x304"
.LASF258:
	.string	"__FLT128_NORM_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF388:
	.string	"_T_WCHAR "
.LASF1237:
	.string	"IEN_FIFO_FULL BIT(1)"
.LASF597:
	.string	"DRV_SPI_DMA_TX_EN 0"
.LASF617:
	.string	"MSTATUS_SPP 0x00000100"
.LASF504:
	.string	"WCHAR_MAX __WCHAR_MAX__"
.LASF1042:
	.string	"IRQ_RTCALARM_SOURCE 2"
.LASF279:
	.string	"__FLT32X_HAS_INFINITY__ 1"
.LASF468:
	.string	"UINT_FAST16_MAX __UINT_FAST16_MAX__"
.LASF368:
	.string	"_SYS_SIZE_T_H "
.LASF805:
	.string	"NDS_PMPADDR9 0x3b9"
.LASF765:
	.string	"NDS_SEDELEG 0x102"
.LASF1163:
	.string	"DMA_BSIZE_512 (0x9)"
.LASF1231:
	.string	"IEN_BYTE_TRANS BIT(7)"
.LASF546:
	.string	"AE350_I2C_OWN_ADDRESS (0x01)"
.LASF1173:
	.string	"DMA_CH_CTRL_SBINFIDX_POS ( 31)"
.LASF1263:
	.string	"CMD_MSK BITS(0,2)"
.LASF808:
	.string	"NDS_PMPADDR12 0x3bc"
.LASF328:
	.string	"__riscv_muldiv 1"
.LASF1303:
	.string	"long int"
.LASF413:
	.string	"UINT8_MAX"
.LASF574:
	.string	"DRV_GPIO 1"
.LASF502:
	.string	"SIZE_MAX __SIZE_MAX__"
.LASF789:
	.string	"NDS_MCAUSE 0x342"
.LASF134:
	.string	"__INT_FAST64_MAX__ 0x7fffffffffffffffLL"
.LASF272:
	.string	"__FLT32X_DECIMAL_DIG__ 17"
.LASF1353:
	.string	"I2C_RegDef"
.LASF1265:
	.string	"CMD_ISSUE_TRANSACTION (0x1)"
.LASF280:
	.string	"__FLT32X_HAS_QUIET_NAN__ 1"
.LASF835:
	.string	"NDS_MHPMCOUNTER24 0xb18"
.LASF1334:
	.string	"Uninitialize"
.LASF110:
	.string	"__INT_LEAST8_WIDTH__ 8"
.LASF91:
	.string	"__SIZE_WIDTH__ 32"
.LASF541:
	.string	"AE350_DRIVER_ERROR_TIMEOUT -3"
.LASF1032:
	.string	"__AE350_H__ "
.LASF61:
	.string	"__INT_FAST8_TYPE__ int"
.LASF1184:
	.string	"DMA_CH_CTRL_SWIDTH_MASK (0x07 << DMA_CH_CTRL_SWIDTH_POS)"
.LASF1068:
	.string	"__I volatile const"
.LASF365:
	.string	"__size_t__ "
.LASF252:
	.string	"__FLT128_MIN_EXP__ (-16381)"
.LASF1452:
	.string	"i2cx_master_fifo_write"
.LASF95:
	.string	"__UINTMAX_C(c) c ## ULL"
.LASF1138:
	.string	"HAL_INTERRUPT_SET_LEVEL(vector,level) __nds__plic_set_priority(vector, level)"
.LASF33:
	.string	"__SIZEOF_POINTER__ 4"
.LASF53:
	.string	"__INT_LEAST8_TYPE__ signed char"
.LASF1207:
	.string	"DMA_CH_CTRL_INTABT ( 0 << 3)"
.LASF829:
	.string	"NDS_MHPMCOUNTER18 0xb12"
.LASF307:
	.string	"__GCC_ATOMIC_BOOL_LOCK_FREE 2"
.LASF318:
	.string	"__GCC_HAVE_DWARF2_CFI_ASM 1"
.LASF707:
	.string	"NDS_HPMCOUNTER7 0xc07"
.LASF295:
	.string	"__FLT64X_HAS_DENORM__ 1"
.LASF1327:
	.string	"_AE350_I2C_CAPABILITIES"
.LASF469:
	.string	"INT_FAST32_MAX"
.LASF220:
	.string	"__FLT32_MAX_EXP__ 128"
.LASF438:
	.string	"UINT_LEAST8_MAX __UINT_LEAST8_MAX__"
.LASF959:
	.string	"NDS_MSLIDELEG 0x7d5"
.LASF1439:
	.string	"Evt_Id"
.LASF239:
	.string	"__FLT64_DECIMAL_DIG__ 17"
.LASF195:
	.string	"__LDBL_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966L"
.LASF1308:
	.string	"short unsigned int"
.LASF1254:
	.string	"STATUS_FIFO_EMPTY BIT(0)"
.LASF35:
	.string	"__GNUC_WIDE_EXECUTION_CHARSET_NAME \"UTF-32LE\""
.LASF462:
	.string	"UINT_FAST8_MAX __UINT_FAST8_MAX__"
.LASF360:
	.string	"___int_ptrdiff_t_h "
.LASF551:
	.string	"AE350_I2C_BUS_SPEED_FAST (0x02)"
.LASF377:
	.string	"_SIZE_T_DECLARED "
.LASF414:
	.string	"UINT8_MAX __UINT8_MAX__"
.LASF43:
	.string	"__CHAR32_TYPE__ long unsigned int"
.LASF499:
	.string	"SIG_ATOMIC_MIN"
.LASF1131:
	.string	"HAL_MIE_ENABLE() set_csr(NDS_MSTATUS, MSTATUS_MIE)"
.LASF1025:
	.string	"read_csr(reg) ({ unsigned long __tmp; asm volatile (\"csrr %0, \" XSTR(reg) : \"=r\"(__tmp)); __tmp; })"
.LASF1479:
	.string	"GNU C17 13.2.0 -mabi=ilp32d -mcmodel=medany -mtune=rocket -misa-spec=20191213 -march=rv32imafdc_zicsr -g3 -O0 -ffreestanding -flax-vector-conversions -fno-common -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF182:
	.string	"__DBL_IS_IEC_60559__ 1"
.LASF646:
	.string	"TRAP_H_ECALL 10"
.LASF138:
	.string	"__UINT_FAST32_MAX__ 0xffffffffU"
.LASF1067:
	.string	"IRQ_WAKEUP_SOURCE 27"
.LASF153:
	.string	"__FLT_MAX_EXP__ 128"
.LASF19:
	.string	"__SIZEOF_LONG__ 4"
.LASF741:
	.string	"NDS_HPMCOUNTER9H 0xc89"
.LASF1219:
	.string	"IIC_ID BITS(12,31)"
.LASF1296:
	.string	"MEMCPY(des,src,n) __builtin_memcpy((des), (src), (n))"
.LASF598:
	.string	"DRV_SPI_DMA_TX_CH 0"
.LASF1423:
	.string	"data"
.LASF950:
	.string	"NDS_MRANDSEQH 0x7fd"
.LASF488:
	.string	"INTMAX_MAX __INTMAX_MAX__"
.LASF116:
	.string	"__INT_LEAST32_WIDTH__ 32"
.LASF1167:
	.string	"DMA_WIDTH_WORD (0x2)"
.LASF188:
	.string	"__LDBL_MAX_10_EXP__ 4932"
.LASF751:
	.string	"NDS_HPMCOUNTER19H 0xc93"
.LASF1427:
	.string	"xfer_pending"
.LASF878:
	.string	"NDS_MHPMEVENT7 0x327"
.LASF1356:
	.string	"_I2C_CTRL_REG_ITEM_DIR"
.LASF244:
	.string	"__FLT64_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F64"
.LASF621:
	.string	"MSTATUS_XS 0x00018000"
.LASF1086:
	.string	"SPI_BASE _IO_(0xF0F00000)"
.LASF1238:
	.string	"IEN_FIFO_EMPTY BIT(0)"
.LASF327:
	.string	"__riscv_div 1"
.LASF1233:
	.string	"IEN_STOP BIT(5)"
.LASF1129:
	.string	"HAL_MSWI_PENDING() __nds__plic_sw_set_pending(1)"
.LASF152:
	.string	"__FLT_MIN_10_EXP__ (-37)"
.LASF241:
	.string	"__FLT64_NORM_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF604:
	.string	"DRV_RTC 1"
.LASF676:
	.string	"FPSTORE fsd"
.LASF155:
	.string	"__FLT_DECIMAL_DIG__ 9"
.LASF922:
	.string	"NDS_MIBASE 0x382"
.LASF1098:
	.string	"AE350_UART1 ((UART_RegDef *) UART1_BASE )"
.LASF114:
	.string	"__INT_LEAST32_MAX__ 0x7fffffffL"
.LASF52:
	.string	"__UINT64_TYPE__ long long unsigned int"
.LASF565:
	.string	"__DMA_AE350_H__ "
.LASF714:
	.string	"NDS_HPMCOUNTER14 0xc0e"
.LASF1305:
	.string	"uint8_t"
.LASF409:
	.string	"INT8_MAX"
.LASF490:
	.string	"INTMAX_MIN (-INTMAX_MAX - 1)"
.LASF1170:
	.string	"DMA_WIDTH_EWORD (0x5)"
.LASF516:
	.string	"INT32_C(c) __INT32_C(c)"
.LASF227:
	.string	"__FLT32_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F32"
.LASF958:
	.string	"NDS_MCOUNTEROVF 0x7d4"
.LASF301:
	.string	"__GNUC_STDC_INLINE__ 1"
.LASF786:
	.string	"NDS_MCOUNTEREN 0x306"
.LASF118:
	.string	"__INT64_C(c) c ## LL"
.LASF1288:
	.string	"SETUP_T_SCLHI_FAST (51)"
.LASF163:
	.string	"__FLT_HAS_QUIET_NAN__ 1"
.LASF9:
	.string	"__GNUC_PATCHLEVEL__ 0"
.LASF538:
	.string	"AE350_DRIVER_OK 0"
.LASF1383:
	.string	"middleware_rx_ptr"
.LASF495:
	.string	"PTRDIFF_MIN"
.LASF708:
	.string	"NDS_HPMCOUNTER8 0xc08"
.LASF122:
	.string	"__UINT_LEAST16_MAX__ 0xffff"
.LASF1244:
	.string	"STATUS_ACK BIT(10)"
.LASF1406:
	.string	"DriverVersion"
.LASF486:
	.string	"UINTPTR_MAX __UINTPTR_MAX__"
.LASF3:
	.string	"__STDC_VERSION__ 201710L"
.LASF1400:
	.string	"cb_event"
.LASF894:
	.string	"NDS_MHPMEVENT23 0x337"
.LASF1088:
	.string	"AHB_EXT_BASE _IO_(0xE8000000)"
.LASF277:
	.string	"__FLT32X_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F32x"
.LASF1471:
	.string	"hart_id"
.LASF238:
	.string	"__FLT64_MAX_10_EXP__ 308"
.LASF1018:
	.string	"NDS_PMAADDR10 0xbda"
.LASF509:
	.string	"WINT_MIN"
.LASF974:
	.string	"NDS_SCOUNTERMASK_M 0x9d1"
.LASF376:
	.string	"_BSD_SIZE_T_DEFINED_ "
.LASF953:
	.string	"NDS_MCOUNTERWEN 0x7ce"
.LASF1405:
	.string	"I2C_RESOURCES"
.LASF1306:
	.string	"unsigned char"
.LASF5:
	.string	"__STDC_UTF_32__ 1"
.LASF1027:
	.string	"swap_csr(reg,val) ({ unsigned long __tmp; asm volatile (\"csrrw %0, \" XSTR(reg) \", %1\" : \"=r\"(__tmp) : \"rK\"(val)); __tmp; })"
.LASF226:
	.string	"__FLT32_EPSILON__ 1.19209289550781250000000000000000000e-7F32"
.LASF431:
	.string	"UINT64_MAX"
.LASF154:
	.string	"__FLT_MAX_10_EXP__ 38"
.LASF1026:
	.string	"write_csr(reg,val) ({ asm volatile (\"csrw \" XSTR(reg) \", %0\" :: \"rK\"(val)); })"
.LASF935:
	.string	"NDS_MILMB 0x7c0"
.LASF446:
	.string	"INT_LEAST32_MAX __INT_LEAST32_MAX__"
.LASF816:
	.string	"NDS_MHPMCOUNTER5 0xb05"
.LASF1169:
	.string	"DMA_WIDTH_QWORD (0x4)"
.LASF596:
	.string	"DRV_SPI 1"
.LASF1329:
	.string	"AE350_I2C_CAPABILITIES"
.LASF132:
	.string	"__INT_FAST32_MAX__ 0x7fffffff"
.LASF12:
	.string	"__ATOMIC_SEQ_CST 5"
.LASF926:
	.string	"NDS_MUCOUNTEREN 0x320"
.LASF980:
	.string	"NDS_MSAVEEPC1 0x7d7"
.LASF378:
	.string	"__DEFINED_size_t "
.LASF966:
	.string	"NDS_SLIP 0x9c5"
.LASF162:
	.string	"__FLT_HAS_INFINITY__ 1"
.LASF1276:
	.string	"SETUP_MASTER BIT(2)"
.LASF726:
	.string	"NDS_HPMCOUNTER26 0xc1a"
.LASF961:
	.string	"NDS_MCCTLCOMMAND 0x7cc"
.LASF924:
	.string	"NDS_MDBASE 0x384"
.LASF262:
	.string	"__FLT128_HAS_DENORM__ 1"
.LASF625:
	.string	"MSTATUS_VM 0x1F000000"
.LASF1194:
	.string	"DMA_CH_CTRL_SRCADDR_DEC ( 1 << DMA_CH_CTRL_SRCADDRCTRL_POS)"
.LASF879:
	.string	"NDS_MHPMEVENT8 0x328"
.LASF105:
	.string	"__UINT16_MAX__ 0xffff"
.LASF1243:
	.string	"STATUS_BUS_BUSY BIT(11)"
.LASF1074:
	.string	"SPIMEM_BASE 0x80000000"
.LASF192:
	.string	"__LDBL_NORM_MAX__ 1.18973149535723176508575932662800702e+4932L"
.LASF73:
	.string	"__SHRT_MAX__ 0x7fff"
.LASF640:
	.string	"IRQ_HOST 13"
.LASF1372:
	.string	"I2C_DRV_SLAVE_TX_CMPL"
.LASF465:
	.string	"INT_FAST16_MIN"
.LASF906:
	.string	"NDS_TDATA3 0x7a3"
.LASF187:
	.string	"__LDBL_MAX_EXP__ 16384"
.LASF503:
	.string	"WCHAR_MAX"
.LASF215:
	.string	"__FLT16_IS_IEC_60559__ 1"
.LASF21:
	.string	"__SIZEOF_SHORT__ 2"
.LASF940:
	.string	"NDS_MPFT_CTL 0x7c5"
.LASF542:
	.string	"AE350_DRIVER_ERROR_UNSUPPORTED -4"
.LASF902:
	.string	"NDS_MHPMEVENT31 0x33f"
.LASF1343:
	.string	"_Bool"
.LASF715:
	.string	"NDS_HPMCOUNTER15 0xc0f"
.LASF1097:
	.string	"AE350_SMU ((SMU_RegDef *) SMU_BASE )"
.LASF667:
	.string	"MIP_MEIP (1 << IRQ_M_EXT)"
.LASF472:
	.string	"INT_FAST32_MIN (-INT_FAST32_MAX - 1)"
.LASF605:
	.string	"DRV_WDT 1"
.LASF374:
	.string	"_SIZE_T_DEFINED_ "
.LASF1408:
	.string	"I2C_Info"
.LASF888:
	.string	"NDS_MHPMEVENT17 0x331"
.LASF437:
	.string	"UINT_LEAST8_MAX"
.LASF1315:
	.string	"AE350_POWER_FULL"
.LASF520:
	.string	"UINT8_C(c) __UINT8_C(c)"
.LASF1082:
	.string	"RTC_BASE _IO_(0xF0600000)"
.LASF886:
	.string	"NDS_MHPMEVENT15 0x32f"
.LASF259:
	.string	"__FLT128_MIN__ 3.36210314311209350626267781732175260e-4932F128"
.LASF783:
	.string	"NDS_MIDELEG 0x303"
.LASF319:
	.string	"__PRAGMA_REDEFINE_EXTNAME 1"
.LASF997:
	.string	"NDS_MSAVEDCAUSE2 0x7dc"
.LASF508:
	.string	"WINT_MAX __WINT_MAX__"
.LASF72:
	.string	"__SCHAR_MAX__ 0x7f"
.LASF540:
	.string	"AE350_DRIVER_ERROR_BUSY -2"
.LASF305:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1"
.LASF496:
	.string	"PTRDIFF_MIN (-PTRDIFF_MAX - 1)"
.LASF760:
	.string	"NDS_HPMCOUNTER28H 0xc9c"
.LASF792:
	.string	"NDS_PMPCFG0 0x3a0"
.LASF68:
	.string	"__UINT_FAST64_TYPE__ long long unsigned int"
.LASF1019:
	.string	"NDS_PMAADDR11 0xbdb"
.LASF1089:
	.string	"PLIC_BASE _IO_(0xE4000000)"
.LASF702:
	.string	"NDS_INSTRET 0xc02"
.LASF1454:
	.string	"i2c_cmpl_handler"
.LASF1186:
	.string	"DMA_CH_CTRL_DWIDTH_POS ( 18)"
.LASF647:
	.string	"TRAP_M_ECALL 11"
.LASF692:
	.string	"NDS_USCRATCH 0x040"
.LASF770:
	.string	"NDS_SSCRATCH 0x140"
.LASF548:
	.string	"AE350_I2C_BUS_CLEAR (0x03)"
.LASF817:
	.string	"NDS_MHPMCOUNTER6 0xb06"
.LASF232:
	.string	"__FLT32_IS_IEC_60559__ 1"
.LASF27:
	.string	"__BIGGEST_ALIGNMENT__ 16"
.LASF10:
	.string	"__VERSION__ \"13.2.0\""
.LASF331:
	.string	"__riscv_fdiv 1"
.LASF960:
	.string	"NDS_MCCTLBEGINADDR 0x7cb"
.LASF205:
	.string	"__FLT16_MAX_10_EXP__ 4"
.LASF1365:
	.string	"I2C_DRV_CFG_PARAM"
.LASF477:
	.string	"INT_FAST64_MIN"
.LASF1049:
	.string	"IRQ_UART2_SOURCE 9"
.LASF531:
	.string	"_GCC_WRAP_STDINT_H "
.LASF115:
	.string	"__INT32_C(c) c ## L"
.LASF844:
	.string	"NDS_MINSTRETH 0xb82"
.LASF831:
	.string	"NDS_MHPMCOUNTER20 0xb14"
.LASF1183:
	.string	"DMA_CH_CTRL_SWIDTH_POS ( 21)"
.LASF947:
	.string	"NDS_DEXC2DBG 0x7e0"
.LASF1464:
	.string	"i2cx_slave_transmit"
.LASF864:
	.string	"NDS_MHPMCOUNTER22H 0xb96"
.LASF104:
	.string	"__UINT8_MAX__ 0xff"
.LASF159:
	.string	"__FLT_EPSILON__ 1.19209289550781250000000000000000000e-7F"
.LASF1120:
	.string	"PLIC_THRESHOLD_SHIFT_PER_TARGET 12"
.LASF1341:
	.string	"Control"
.LASF557:
	.string	"AE350_I2C_EVENT_TRANSFER_INCOMPLETE (1UL << 1)"
.LASF1213:
	.string	"APB_CLK_100MHZ 1"
.LASF1199:
	.string	"DMA_CH_CTRL_DSTADDR_DEC ( 1 << DMA_CH_CTRL_DSTADDRCTRL_POS)"
.LASF1291:
	.string	"SETUP_T_HDDAT_FAST_P (0)"
.LASF1232:
	.string	"IEN_START BIT(6)"
.LASF1335:
	.string	"PowerControl"
.LASF178:
	.string	"__DBL_HAS_DENORM__ 1"
.LASF567:
	.string	"__CONFIG_H__ "
.LASF733:
	.string	"NDS_TIMEH 0xc81"
.LASF583:
	.string	"DRV_UART1_DMA_TX_EN 0"
.LASF1156:
	.string	"DMA_BSIZE_4 (0x2)"
.LASF223:
	.string	"__FLT32_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF698:
	.string	"NDS_FRM 0x002"
.LASF679:
	.string	"FPREGBYTES (1 << LOG_FPREGBYTES)"
.LASF473:
	.string	"UINT_FAST32_MAX"
.LASF1337:
	.string	"MasterReceive"
.LASF655:
	.string	"TRAP_S_S_ACC_FAULT 7"
.LASF71:
	.string	"__GXX_ABI_VERSION 1018"
.LASF111:
	.string	"__INT_LEAST16_MAX__ 0x7fff"
.LASF387:
	.string	"_T_WCHAR_ "
.LASF907:
	.string	"NDS_TINFO 0x7a4"
.LASF254:
	.string	"__FLT128_MAX_EXP__ 16384"
.LASF752:
	.string	"NDS_HPMCOUNTER20H 0xc94"
.LASF1246:
	.string	"STATUS_BYTE_RECV BIT(8)"
.LASF716:
	.string	"NDS_HPMCOUNTER16 0xc10"
.LASF349:
	.string	"__DRIVER_I2C_H__ "
.LASF1251:
	.string	"STATUS_ADDR_HIT BIT(3)"
.LASF897:
	.string	"NDS_MHPMEVENT26 0x33a"
.LASF1326:
	.string	"AE350_I2C_SignalEvent_t"
.LASF870:
	.string	"NDS_MHPMCOUNTER28H 0xb9c"
.LASF1189:
	.string	"DMA_CH_CTRL_SMODE_HANDSHAKE ( 1 << 17)"
.LASF1225:
	.string	"FIFO_SZ_8 (0x2)"
.LASF125:
	.string	"__UINT32_C(c) c ## UL"
.LASF1369:
	.string	"I2C_DRV_SLAVE_RX"
.LASF588:
	.string	"DRV_UART1_DMA_RX_REQID 5"
.LASF1352:
	.string	"SETUP"
.LASF1136:
	.string	"HAL_INTERRUPT_DISABLE(vector) __nds__plic_disable_interrupt(vector)"
.LASF1287:
	.string	"SETUP_T_SCL_RATIO_FAST (3)"
.LASF1414:
	.string	"dma_channel_configure"
.LASF793:
	.string	"NDS_PMPCFG1 0x3a1"
.LASF206:
	.string	"__FLT16_DECIMAL_DIG__ 5"
.LASF1151:
	.string	"DMA_EVENT_TERMINAL_COUNT_REQUEST (1)"
.LASF660:
	.string	"MIP_HSIP (1 << IRQ_H_SOFT)"
.LASF1367:
	.string	"I2C_DRV_MASTER_RX"
.LASF572:
	.string	"BUILD_XIP 3"
.LASF1403:
	.string	"dma_rx"
.LASF1157:
	.string	"DMA_BSIZE_8 (0x3)"
.LASF790:
	.string	"NDS_MTVAL 0x343"
.LASF798:
	.string	"NDS_PMPADDR2 0x3b2"
.LASF608:
	.string	"SUPPORT_PFT_ARCH 1"
.LASF1135:
	.string	"HAL_INTERRUPT_ENABLE(vector) __nds__plic_enable_interrupt(vector)"
.LASF1226:
	.string	"FIFO_SZ_16 (0x3)"
.LASF684:
	.string	"REGSIZE XSTR(REGBYTES)"
.LASF556:
	.string	"AE350_I2C_EVENT_TRANSFER_DONE (1UL << 0)"
.LASF1332:
	.string	"GetCapabilities"
.LASF799:
	.string	"NDS_PMPADDR3 0x3b3"
.LASF1477:
	.string	"priority"
.LASF312:
	.string	"__GCC_ATOMIC_SHORT_LOCK_FREE 2"
.LASF813:
	.string	"NDS_MINSTRET 0xb02"
.LASF1178:
	.string	"DMA_CH_CTRL_DBINF_MASK ( 1 << DMA_CH_CTRL_DBINFIDX_POS)"
.LASF539:
	.string	"AE350_DRIVER_ERROR -1"
.LASF1376:
	.string	"Sig_Evt_CB"
.LASF642:
	.string	"TRAP_M_L_ACC_FAULT 5"
.LASF1385:
	.string	"FIFO_Depth"
.LASF316:
	.string	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1"
.LASF537:
	.string	"AE350_DRIVER_VERSION_MAJOR_MINOR(major,minor) (((major) << 8) | (minor))"
.LASF1438:
	.string	"Tmp_C"
.LASF343:
	.string	"__ELF__ 1"
.LASF868:
	.string	"NDS_MHPMCOUNTER26H 0xb9a"
.LASF1091:
	.string	"BMC_BASE _IO_(0xC0000000)"
.LASF632:
	.string	"IRQ_M_SOFT 3"
.LASF78:
	.string	"__WCHAR_MIN__ (-__WCHAR_MAX__ - 1)"
.LASF734:
	.string	"NDS_INSTRETH 0xc82"
.LASF643:
	.string	"TRAP_M_S_ACC_FAULT 7"
.LASF230:
	.string	"__FLT32_HAS_QUIET_NAN__ 1"
.LASF905:
	.string	"NDS_TDATA2 0x7a2"
.LASF1227:
	.string	"MAX_XFER_SZ (256)"
.LASF732:
	.string	"NDS_CYCLEH 0xc80"
.LASF197:
	.string	"__LDBL_HAS_INFINITY__ 1"
.LASF1435:
	.string	"Tmp_S"
.LASF420:
	.string	"UINT16_MAX __UINT16_MAX__"
.LASF1437:
	.string	"Tmp_W"
.LASF699:
	.string	"NDS_FCSR 0x003"
.LASF339:
	.string	"__riscv_f 2002000"
.LASF1175:
	.string	"DMA_CH_CTRL_SBINF_MASK ( 1 << DMA_CH_CTRL_SBINFIDX_POS)"
.LASF1387:
	.string	"Xfer_Wt_Num"
.LASF758:
	.string	"NDS_HPMCOUNTER26H 0xc9a"
.LASF639:
	.string	"IRQ_COP 12"
.LASF533:
	.string	"bool _Bool"
.LASF382:
	.string	"__size_t "
.LASF1083:
	.string	"GPIO_BASE _IO_(0xF0700000)"
.LASF1125:
	.string	"HAL_MTIME_DISABLE() clear_csr(NDS_MIE, MIP_MTIP);"
.LASF492:
	.string	"UINTMAX_MAX __UINTMAX_MAX__"
.LASF98:
	.string	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)"
.LASF890:
	.string	"NDS_MHPMEVENT19 0x333"
.LASF120:
	.string	"__UINT_LEAST8_MAX__ 0xff"
.LASF1277:
	.string	"SETUP_ADDRESSING BIT(1)"
.LASF1346:
	.string	"RESERVED"
.LASF1030:
	.string	"read_fcsr() ({ unsigned long __tmp; asm volatile (\"frcsr %0\" : \"=r\"(__tmp)); __tmp; })"
.LASF1222:
	.string	"FIFO_SZ_MSK BITS(0,1)"
.LASF1069:
	.string	"__O volatile"
.LASF416:
	.string	"INT16_MAX __INT16_MAX__"
.LASF296:
	.string	"__FLT64X_HAS_INFINITY__ 1"
.LASF164:
	.string	"__FP_FAST_FMAF 1"
.LASF717:
	.string	"NDS_HPMCOUNTER17 0xc11"
.LASF173:
	.string	"__DBL_MAX__ ((double)1.79769313486231570814527423731704357e+308L)"
.LASF1209:
	.string	"DMA_CH_CTRL_INTTC ( 0 << 1)"
.LASF796:
	.string	"NDS_PMPADDR0 0x3b0"
.LASF1393:
	.string	"Slave_Rx_Cmpl_Ctrl_Reg_Val"
.LASF1415:
	.string	"dma_channel_disable"
.LASF860:
	.string	"NDS_MHPMCOUNTER18H 0xb92"
.LASF425:
	.string	"UINT32_MAX"
.LASF1111:
	.string	"NDS_PLIC_FEATURE_PREEMPT (1 << 0)"
.LASF113:
	.string	"__INT_LEAST16_WIDTH__ 16"
.LASF147:
	.string	"__DEC_EVAL_METHOD__ 2"
.LASF1447:
	.string	"curr_rx_data_count"
.LASF794:
	.string	"NDS_PMPCFG2 0x3a2"
.LASF1021:
	.string	"NDS_PMAADDR13 0xbdd"
.LASF787:
	.string	"NDS_MSCRATCH 0x340"
.LASF853:
	.string	"NDS_MHPMCOUNTER11H 0xb8b"
.LASF403:
	.string	"NULL ((void *)0)"
.LASF826:
	.string	"NDS_MHPMCOUNTER15 0xb0f"
.LASF1411:
	.string	"Driver_I2C"
.LASF1436:
	.string	"Tmp_S1"
.LASF721:
	.string	"NDS_HPMCOUNTER21 0xc15"
.LASF606:
	.string	"DRV_PIT 1"
.LASF592:
	.string	"DRV_UART2_DMA_TX_REQID 6"
.LASF887:
	.string	"NDS_MHPMEVENT16 0x330"
.LASF833:
	.string	"NDS_MHPMCOUNTER22 0xb16"
.LASF404:
	.string	"__need_NULL"
.LASF1342:
	.string	"GetStatus"
.LASF1368:
	.string	"I2C_DRV_SLAVE_TX"
.LASF1314:
	.string	"AE350_POWER_LOW"
.LASF300:
	.string	"__USER_LABEL_PREFIX__ "
.LASF107:
	.string	"__UINT64_MAX__ 0xffffffffffffffffULL"
.LASF459:
	.string	"INT_FAST8_MIN"
.LASF458:
	.string	"INT_FAST8_MAX __INT_FAST8_MAX__"
.LASF1391:
	.string	"Xfered_Data_Rd_Ptr_Ow"
.LASF1316:
	.string	"AE350_POWER_STATE"
.LASF106:
	.string	"__UINT32_MAX__ 0xffffffffUL"
.LASF1272:
	.string	"SETUP_T_HDDAT BITS(16,20)"
.LASF1016:
	.string	"NDS_PMAADDR8 0xbd8"
.LASF1366:
	.string	"I2C_DRV_MASTER_TX"
.LASF1402:
	.string	"dma_tx"
.LASF1101:
	.string	"AE350_WDT ((WDT_RegDef *) WDT_BASE )"
.LASF108:
	.string	"__INT_LEAST8_MAX__ 0x7f"
.LASF317:
	.string	"__GCC_ATOMIC_POINTER_LOCK_FREE 2"
.LASF1210:
	.string	"DMA_CH_CTRL_ENABLE ( 1 << 0)"
.LASF13:
	.string	"__ATOMIC_ACQUIRE 2"
.LASF1008:
	.string	"NDS_PMAADDR0 0xbd0"
.LASF685:
	.string	"FPPUSH XSTR(FPSTORE)"
.LASF450:
	.string	"UINT_LEAST32_MAX __UINT_LEAST32_MAX__"
.LASF1279:
	.string	"SETUP_T_SUDAT_STD (16)"
.LASF347:
	.string	"__RTTHREAD__ 1"
.LASF952:
	.string	"NDS_MRANDSTATEH 0x7ff"
.LASF1071:
	.string	"_IO_(addr) (addr)"
.LASF845:
	.string	"NDS_MHPMCOUNTER3H 0xb83"
.LASF270:
	.string	"__FLT32X_MAX_EXP__ 1024"
.LASF594:
	.string	"DRV_UART2_DMA_RX_CH 1"
.LASF344:
	.string	"USE_M_TIME 1"
.LASF124:
	.string	"__UINT_LEAST32_MAX__ 0xffffffffUL"
.LASF1200:
	.string	"DMA_CH_CTRL_DSTADDR_FIX ( 2 << DMA_CH_CTRL_DSTADDRCTRL_POS)"
.LASF1198:
	.string	"DMA_CH_CTRL_DSTADDR_INC ( 0 << DMA_CH_CTRL_DSTADDRCTRL_POS)"
.LASF460:
	.string	"INT_FAST8_MIN (-INT_FAST8_MAX - 1)"
.LASF1431:
	.string	"i2c_uninitialize"
.LASF1035:
	.string	"OSCFREQ (100 * MHz)"
.LASF119:
	.string	"__INT_LEAST64_WIDTH__ 64"
.LASF478:
	.string	"INT_FAST64_MIN (-INT_FAST64_MAX - 1)"
.LASF818:
	.string	"NDS_MHPMCOUNTER7 0xb07"
.LASF1003:
	.string	"NDS_UCODE 0x801"
.LASF100:
	.string	"__INT8_MAX__ 0x7f"
.LASF678:
	.string	"LOG_FPREGBYTES 3"
.LASF1024:
	.string	"NDS_MMSC_CFG2 0xfc3"
.LASF479:
	.string	"UINT_FAST64_MAX"
.LASF62:
	.string	"__INT_FAST16_TYPE__ int"
.LASF1475:
	.string	"__nds__plic_enable_interrupt"
.LASF649:
	.string	"TRAP_M_L_PAGE_FAULT 13"
.LASF768:
	.string	"NDS_STVEC 0x105"
.LASF1457:
	.string	"i2cx_getstatus"
.LASF84:
	.string	"__SHRT_WIDTH__ 16"
.LASF1396:
	.string	"I2C_INFO"
.LASF144:
	.string	"__GCC_IEC_559_COMPLEX 2"
.LASF1250:
	.string	"STATUS_ARB_LOSE BIT(4)"
.LASF1380:
	.string	"middleware_rx_buf"
.LASF50:
	.string	"__UINT16_TYPE__ short unsigned int"
.LASF973:
	.string	"NDS_SMISC_CTL 0x9d0"
.LASF575:
	.string	"DRV_I2C 1"
.LASF1410:
	.string	"check"
.LASF190:
	.string	"__LDBL_DECIMAL_DIG__ 36"
.LASF872:
	.string	"NDS_MHPMCOUNTER30H 0xb9e"
.LASF286:
	.string	"__FLT64X_MIN_10_EXP__ (-4931)"
.LASF1461:
	.string	"status"
.LASF788:
	.string	"NDS_MEPC 0x341"
.LASF1119:
	.string	"PLIC_THRESHOLD_OFFSET (0x00200000UL)"
.LASF471:
	.string	"INT_FAST32_MIN"
.LASF369:
	.string	"_T_SIZE_ "
.LASF146:
	.string	"__FLT_EVAL_METHOD_TS_18661_3__ 0"
.LASF956:
	.string	"NDS_MCOUNTERMASK_S 0x7d2"
.LASF194:
	.string	"__LDBL_EPSILON__ 1.92592994438723585305597794258492732e-34L"
.LASF467:
	.string	"UINT_FAST16_MAX"
.LASF964:
	.string	"NDS_UCCTLCOMMAND 0x80c"
.LASF1398:
	.string	"channel"
.LASF65:
	.string	"__UINT_FAST8_TYPE__ unsigned int"
.LASF722:
	.string	"NDS_HPMCOUNTER22 0xc16"
.LASF1397:
	.string	"_I2C_DMA"
.LASF773:
	.string	"NDS_STVAL 0x143"
.LASF1048:
	.string	"IRQ_UART1_SOURCE 8"
.LASF834:
	.string	"NDS_MHPMCOUNTER23 0xb17"
.LASF1107:
	.string	"USE_PLIC "
.LASF102:
	.string	"__INT32_MAX__ 0x7fffffffL"
.LASF1375:
	.string	"_I2C_INFO"
.LASF491:
	.string	"UINTMAX_MAX"
.LASF1128:
	.string	"HAL_MSWI_DISABLE() clear_csr(NDS_MIE, MIP_MSIP)"
.LASF1459:
	.string	"arg0"
.LASF1460:
	.string	"arg1"
.LASF1345:
	.string	"IDREV"
.LASF1056:
	.string	"IRQ_GP6_SOURCE 16"
.LASF711:
	.string	"NDS_HPMCOUNTER11 0xc0b"
.LASF929:
	.string	"NDS_UITB 0x800"
.LASF762:
	.string	"NDS_HPMCOUNTER30H 0xc9e"
.LASF335:
	.string	"__riscv_arch_test 1"
.LASF216:
	.string	"__FLT32_MANT_DIG__ 24"
.LASF969:
	.string	"NDS_SCOUNTERINTEN 0x9cf"
.LASF433:
	.string	"INT_LEAST8_MAX"
.LASF695:
	.string	"NDS_UTVAL 0x043"
.LASF406:
	.string	"offsetof(TYPE,MEMBER) __builtin_offsetof (TYPE, MEMBER)"
.LASF127:
	.string	"__UINT64_C(c) c ## ULL"
.LASF60:
	.string	"__UINT_LEAST64_TYPE__ long long unsigned int"
.LASF506:
	.string	"WCHAR_MIN __WCHAR_MIN__"
.LASF925:
	.string	"NDS_MDBOUND 0x385"
.LASF410:
	.string	"INT8_MAX __INT8_MAX__"
.LASF283:
	.string	"__FLT64X_MANT_DIG__ 113"
.LASF999:
	.string	"NDS_MIRQ_ENTRY 0x7ec"
.LASF1441:
	.string	"i2cx_slave_addr_hit_handler"
.LASF1462:
	.string	"i2cx_get_datacount"
.LASF309:
	.string	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2"
.LASF528:
	.string	"INTMAX_C(c) __INTMAX_C(c)"
.LASF998:
	.string	"NDS_PUSHMXSTATUS 0x7eb"
.LASF911:
	.string	"NDS_HEDELEG 0x202"
.LASF170:
	.string	"__DBL_MAX_EXP__ 1024"
.LASF858:
	.string	"NDS_MHPMCOUNTER16H 0xb90"
.LASF14:
	.string	"__ATOMIC_RELEASE 3"
.LASF278:
	.string	"__FLT32X_HAS_DENORM__ 1"
.LASF149:
	.string	"__FLT_MANT_DIG__ 24"
.LASF1338:
	.string	"SlaveTransmit"
.LASF1020:
	.string	"NDS_PMAADDR12 0xbdc"
.LASF573:
	.string	"CFG_BURN "
.LASF637:
	.string	"IRQ_H_EXT 10"
.LASF23:
	.string	"__SIZEOF_DOUBLE__ 8"
.LASF1121:
	.string	"PLIC_CLAIM_OFFSET (0x00200004UL)"
.LASF1103:
	.string	"AE350_GPIO ((GPIO_RegDef *) GPIO_BASE )"
.LASF1282:
	.string	"SETUP_T_SCL_RATIO_STD (1)"
.LASF719:
	.string	"NDS_HPMCOUNTER19 0xc13"
.LASF1072:
	.string	"ILM_BASE 0xA0000000"
.LASF1037:
	.string	"RTCFREQ (32768 )"
.LASF242:
	.string	"__FLT64_MIN__ 2.22507385850720138309023271733240406e-308F64"
.LASF485:
	.string	"UINTPTR_MAX"
.LASF355:
	.string	"_T_PTRDIFF_ "
.LASF544:
	.string	"AE350_DRIVER_ERROR_SPECIFIC -6"
.LASF703:
	.string	"NDS_HPMCOUNTER3 0xc03"
.LASF1149:
	.string	"DEV_SPI AE350_SPI"
.LASF103:
	.string	"__INT64_MAX__ 0x7fffffffffffffffLL"
.LASF554:
	.string	"AE350_I2C_ADDRESS_10BIT 0x0400"
.LASF203:
	.string	"__FLT16_MIN_10_EXP__ (-4)"
.LASF753:
	.string	"NDS_HPMCOUNTER21H 0xc95"
.LASF746:
	.string	"NDS_HPMCOUNTER14H 0xc8e"
.LASF269:
	.string	"__FLT32X_MIN_10_EXP__ (-307)"
.LASF353:
	.string	"_ANSI_STDDEF_H "
.LASF877:
	.string	"NDS_MHPMEVENT6 0x326"
.LASF616:
	.string	"MSTATUS_MPIE 0x00000080"
.LASF1115:
	.string	"PLIC_PENDING_OFFSET (0x00001000UL)"
.LASF602:
	.string	"DRV_SPI_DMA_RX_REQID 3"
.LASF636:
	.string	"IRQ_S_EXT 9"
.LASF1094:
	.string	"APBBRG_BASE _IO_(0xF0000000)"
.LASF7:
	.string	"__GNUC__ 13"
.LASF1029:
	.string	"clear_csr(reg,bit) ({ unsigned long __tmp; asm volatile (\"csrrc %0, \" XSTR(reg) \", %1\" : \"=r\"(__tmp) : \"rK\"(bit)); __tmp; })"
.LASF1214:
	.string	"APB_CLK_50MHZ 0"
.LASF1293:
	.string	"SETUP_T_SCLHI_FAST_P (17)"
.LASF1433:
	.string	"i2c_get_capabilities"
.LASF990:
	.string	"NDS_MFIOB 0x7f1"
.LASF1234:
	.string	"IEN_ARB_LOSE BIT(4)"
.LASF1382:
	.string	"last_rx_data_count"
.LASF1399:
	.string	"reqsel"
.LASF1394:
	.string	"Status"
.LASF422:
	.string	"INT32_MAX __INT32_MAX__"
.LASF982:
	.string	"NDS_MSAVEEPC2 0x7d9"
.LASF665:
	.string	"MIP_SEIP (1 << IRQ_S_EXT)"
.LASF271:
	.string	"__FLT32X_MAX_10_EXP__ 308"
.LASF1179:
	.string	"DMA_CH_CTRL_PRIORITY_HIGH ( 1 << 29)"
.LASF1468:
	.string	"i2cx_uninitialize"
.LASF577:
	.string	"DRV_I2C_DMA_TX_CH 2"
.LASF1164:
	.string	"DMA_BSIZE_1024 (0xa)"
.LASF314:
	.string	"__GCC_ATOMIC_LONG_LOCK_FREE 2"
.LASF383:
	.string	"__need_size_t"
.LASF1255:
	.string	"SLAVE_ADDR_MSK BITS(0,9)"
.LASF856:
	.string	"NDS_MHPMCOUNTER14H 0xb8e"
.LASF1162:
	.string	"DMA_BSIZE_256 (0x8)"
.LASF372:
	.string	"_SIZE_T_ "
.LASF148:
	.string	"__FLT_RADIX__ 2"
.LASF1076:
	.string	"PLMT_BASE _IO_(0xE6000000)"
.LASF1299:
	.string	"long long int"
.LASF683:
	.string	"POP XSTR(LOAD)"
.LASF415:
	.string	"INT16_MAX"
.LASF481:
	.string	"INTPTR_MAX"
.LASF1004:
	.string	"NDS_PMACFG0 0xbc0"
.LASF591:
	.string	"DRV_UART2_DMA_TX_CH 0"
.LASF198:
	.string	"__LDBL_HAS_QUIET_NAN__ 1"
.LASF777:
	.string	"NDS_MARCHID 0xf12"
.LASF951:
	.string	"NDS_MRANDSTATE 0x7fe"
.LASF677:
	.string	"FPLOAD fld"
.LASF87:
	.string	"__LONG_LONG_WIDTH__ 64"
.LASF1224:
	.string	"FIFO_SZ_4 (0x1)"
.LASF644:
	.string	"TRAP_U_ECALL 8"
.LASF399:
	.string	"__DEFINED_wchar_t "
.LASF731:
	.string	"NDS_HPMCOUNTER31 0xc1f"
.LASF1110:
	.string	"__PLIC_H__ "
.LASF336:
	.string	"__riscv_i 2001000"
.LASF1481:
	.string	"__nds__plic_set_priority"
.LASF1172:
	.string	"DMA_INF_IDX1 (0x1)"
.LASF1095:
	.string	"AE350_PLMT ((PLMT_RegDef *) PLMT_BASE )"
.LASF1361:
	.string	"_I2C_DRIVER_STATE"
.LASF1259:
	.string	"CTRL_PHASE_DATA BIT(10)"
.LASF141:
	.string	"__INTPTR_WIDTH__ 32"
.LASF315:
	.string	"__GCC_ATOMIC_LLONG_LOCK_FREE 1"
.LASF781:
	.string	"NDS_MISA 0x301"
.LASF1034:
	.string	"MHz 1000000"
.LASF920:
	.string	"NDS_MBASE 0x380"
.LASF841:
	.string	"NDS_MHPMCOUNTER30 0xb1e"
.LASF237:
	.string	"__FLT64_MAX_EXP__ 1024"
.LASF419:
	.string	"UINT16_MAX"
.LASF1281:
	.string	"SETUP_T_HDDAT_STD (21)"
.LASF117:
	.string	"__INT_LEAST64_MAX__ 0x7fffffffffffffffLL"
.LASF1052:
	.string	"IRQ_GP2_SOURCE 12"
.LASF191:
	.string	"__LDBL_MAX__ 1.18973149535723176508575932662800702e+4932L"
.LASF1070:
	.string	"__IO volatile"
.LASF779:
	.string	"NDS_MHARTID 0xf14"
.LASF1449:
	.string	"i2cx_fifo_empty_handler"
.LASF48:
	.string	"__INT64_TYPE__ long long int"
.LASF1192:
	.string	"DMA_CH_CTRL_SRCADDRCTRL_MASK (0x03 << DMA_CH_CTRL_SRCADDRCTRL_POS)"
.LASF1478:
	.string	"priority_ptr"
.LASF26:
	.string	"__CHAR_BIT__ 8"
.LASF1208:
	.string	"DMA_CH_CTRL_INTERR ( 0 << 2)"
.LASF320:
	.string	"__SIZEOF_WCHAR_T__ 4"
.LASF354:
	.string	"_PTRDIFF_T "
.LASF1109:
	.string	"NDS_PLIC_SW_BASE PLIC_SW_BASE"
.LASF957:
	.string	"NDS_MCOUNTERMASK_U 0x7d3"
.LASF580:
	.string	"DRV_I2C_DMA_RX_CH 3"
.LASF720:
	.string	"NDS_HPMCOUNTER20 0xc14"
.LASF1212:
	.string	"APB_CLK_125MHZ 0"
.LASF941:
	.string	"NDS_MHSP_CTL 0x7c6"
.LASF1187:
	.string	"DMA_CH_CTRL_DWIDTH_MASK (0x07 << DMA_CH_CTRL_DWIDTH_POS)"
.LASF985:
	.string	"NDS_UDCAUSE 0x809"
.LASF86:
	.string	"__LONG_WIDTH__ 32"
.LASF1215:
	.string	"BIT(n) ((unsigned int) 1 << (n))"
.LASF1401:
	.string	"I2C_DMA"
.LASF1182:
	.string	"DMA_CH_CTRL_SBSIZE(n) (((n) << DMA_CH_CTRL_SBSIZE_POS) & DMA_CH_CTRL_SBSIZE_MASK)"
.LASF427:
	.string	"INT64_MAX"
.LASF204:
	.string	"__FLT16_MAX_EXP__ 16"
.LASF874:
	.string	"NDS_MHPMEVENT3 0x323"
.LASF840:
	.string	"NDS_MHPMCOUNTER29 0xb1d"
.LASF664:
	.string	"MIP_MTIP (1 << IRQ_M_TIMER)"
.LASF611:
	.string	"MSTATUS_HIE 0x00000004"
.LASF1051:
	.string	"IRQ_GP1_SOURCE 11"
.LASF1418:
	.string	"control"
.LASF849:
	.string	"NDS_MHPMCOUNTER7H 0xb87"
.LASF31:
	.string	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF151:
	.string	"__FLT_MIN_EXP__ (-125)"
.LASF484:
	.string	"INTPTR_MIN (-INTPTR_MAX - 1)"
.LASF480:
	.string	"UINT_FAST64_MAX __UINT_FAST64_MAX__"
.LASF38:
	.string	"__WCHAR_TYPE__ int"
.LASF891:
	.string	"NDS_MHPMEVENT20 0x334"
.LASF946:
	.string	"NDS_MMISC_CTL 0x7d0"
.LASF740:
	.string	"NDS_HPMCOUNTER8H 0xc88"
.LASF932:
	.string	"NDS_MICM_CFG 0xfc0"
.LASF832:
	.string	"NDS_MHPMCOUNTER21 0xb15"
.LASF914:
	.string	"NDS_HTVEC 0x205"
.LASF1420:
	.string	"i2c_get_datacount"
.LASF766:
	.string	"NDS_SIDELEG 0x103"
.LASF1456:
	.string	"event"
.LASF39:
	.string	"__WINT_TYPE__ unsigned int"
.LASF1426:
	.string	"addr"
.LASF1017:
	.string	"NDS_PMAADDR9 0xbd9"
.LASF418:
	.string	"INT16_MIN (-INT16_MAX - 1)"
.LASF1412:
	.string	"dma_channel_abort"
.LASF1046:
	.string	"IRQ_I2C_SOURCE 6"
.LASF623:
	.string	"MSTATUS_PUM 0x00040000"
.LASF1181:
	.string	"DMA_CH_CTRL_SBSIZE_MASK (0x0f << DMA_CH_CTRL_SBSIZE_POS)"
.LASF854:
	.string	"NDS_MHPMCOUNTER12H 0xb8c"
.LASF1154:
	.string	"DMA_BSIZE_1 (0x0)"
.LASF1318:
	.string	"_AE350_I2C_STATUS"
.LASF669:
	.string	"MDLMB_DEN (0x1UL)"
.LASF1298:
	.string	"unsigned int"
.LASF1351:
	.string	"CTRL"
.LASF657:
	.string	"TRAP_S_L_PAGE_FAULT 13"
.LASF561:
	.string	"AE350_I2C_EVENT_GENERAL_CALL (1UL << 5)"
.LASF981:
	.string	"NDS_MSAVECAUSE1 0x7d8"
.LASF815:
	.string	"NDS_MHPMCOUNTER4 0xb04"
.LASF1168:
	.string	"DMA_WIDTH_DWORD (0x3)"
.LASF1392:
	.string	"Xfer_Data_Rd_Buf"
.LASF247:
	.string	"__FLT64_HAS_QUIET_NAN__ 1"
.LASF970:
	.string	"NDS_SCOUNTERMASK_S 0x9d2"
.LASF291:
	.string	"__FLT64X_NORM_MAX__ 1.18973149535723176508575932662800702e+4932F64x"
.LASF1463:
	.string	"i2cx_slave_receive"
.LASF1339:
	.string	"SlaveReceive"
.LASF273:
	.string	"__FLT32X_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF245:
	.string	"__FLT64_HAS_DENORM__ 1"
.LASF150:
	.string	"__FLT_DIG__ 6"
.LASF532:
	.string	"_STDBOOL_H "
.LASF1203:
	.string	"DMA_CH_CTRL_SRCREQ(n) (((n) << DMA_CH_CTRL_SRCREQ_POS) & DMA_CH_CTRL_SRCREQ_MASK)"
.LASF398:
	.string	"_WCHAR_T_DECLARED "
.LASF806:
	.string	"NDS_PMPADDR10 0x3ba"
.LASF434:
	.string	"INT_LEAST8_MAX __INT_LEAST8_MAX__"
.LASF1248:
	.string	"STATUS_START BIT(6)"
.LASF145:
	.string	"__FLT_EVAL_METHOD__ 0"
.LASF797:
	.string	"NDS_PMPADDR1 0x3b1"
.LASF865:
	.string	"NDS_MHPMCOUNTER23H 0xb97"
.LASF156:
	.string	"__FLT_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF1317:
	.string	"_AE350_DRIVER_VERSION"
.LASF447:
	.string	"INT_LEAST32_MIN"
.LASF129:
	.string	"__INT_FAST8_WIDTH__ 32"
.LASF1257:
	.string	"CTRL_PHASE_START BIT(12)"
.LASF260:
	.string	"__FLT128_EPSILON__ 1.92592994438723585305597794258492732e-34F128"
.LASF1340:
	.string	"GetDataCount"
.LASF693:
	.string	"NDS_UEPC 0x041"
.LASF555:
	.string	"AE350_I2C_ADDRESS_GC 0x8000"
.LASF668:
	.string	"MILMB_IEN (0x1UL)"
.LASF1241:
	.string	"STATUS_LINE_SCL BIT(13)"
.LASF513:
	.string	"INT16_C"
.LASF255:
	.string	"__FLT128_MAX_10_EXP__ 4932"
.LASF202:
	.string	"__FLT16_MIN_EXP__ (-13)"
.LASF143:
	.string	"__GCC_IEC_559 2"
.LASF1451:
	.string	"write_fifo_count"
.LASF440:
	.string	"INT_LEAST16_MAX __INT_LEAST16_MAX__"
.LASF1092:
	.string	"AHBDEC_BASE _IO_(0xE0000000)"
.LASF322:
	.string	"__SIZEOF_PTRDIFF_T__ 4"
.LASF362:
	.string	"_PTRDIFF_T_DECLARED "
.LASF1386:
	.string	"Slave_Addr"
.LASF930:
	.string	"NDS_DSCRATCH0 0x7b2"
.LASF1261:
	.string	"CTRL_DIR BIT(8)"
.LASF1249:
	.string	"STATUS_STOP BIT(5)"
.LASF32:
	.string	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF1141:
	.string	"DEV_SMU AE350_SMU"
.LASF397:
	.string	"_GCC_WCHAR_T "
.LASF892:
	.string	"NDS_MHPMEVENT21 0x335"
.LASF1278:
	.string	"SETUP_I2C_EN BIT(0)"
.LASF885:
	.string	"NDS_MHPMEVENT14 0x32e"
.LASF57:
	.string	"__UINT_LEAST8_TYPE__ unsigned char"
.LASF1216:
	.string	"BITS2(m,n) (BIT(m) | BIT(n))"
.LASF432:
	.string	"UINT64_MAX __UINT64_MAX__"
.LASF535:
	.string	"false 0"
.LASF330:
	.string	"__riscv_flen 64"
.LASF411:
	.string	"INT8_MIN"
.LASF1090:
	.string	"PLIC_SW_BASE _IO_(0xE6400000)"
.LASF249:
	.string	"__FLT64_IS_IEC_60559__ 1"
.LASF1322:
	.string	"general_call"
.LASF534:
	.string	"true 1"
.LASF823:
	.string	"NDS_MHPMCOUNTER12 0xb0c"
.LASF530:
	.string	"UINTMAX_C(c) __UINTMAX_C(c)"
.LASF1108:
	.string	"NDS_PLIC_BASE PLIC_BASE"
.LASF995:
	.string	"NDS_MSCRATCHCSWL 0x349"
.LASF442:
	.string	"INT_LEAST16_MIN (-INT_LEAST16_MAX - 1)"
.LASF1093:
	.string	"PLDM_BASE _IO_(0xE6800000)"
.LASF1409:
	.string	"I2C_Resources"
.LASF308:
	.string	"__GCC_ATOMIC_CHAR_LOCK_FREE 2"
.LASF861:
	.string	"NDS_MHPMCOUNTER19H 0xb93"
.LASF607:
	.string	"__CORE_V5_H__ "
.LASF1229:
	.string	"IEN_CMPL BIT(9)"
.LASF774:
	.string	"NDS_SIP 0x144"
.LASF1428:
	.string	"i2c_master_transmit"
.LASF1039:
	.string	"PCLKFREQ (OSCFREQ )"
.LASF281:
	.string	"__FP_FAST_FMAF32x 1"
.LASF1013:
	.string	"NDS_PMAADDR5 0xbd5"
.LASF1432:
	.string	"i2c_initialize"
.LASF769:
	.string	"NDS_SCOUNTEREN 0x106"
.LASF984:
	.string	"NDS_SCOUNTINHIBIT 0x9e0"
.LASF593:
	.string	"DRV_UART2_DMA_RX_EN 0"
.LASF1331:
	.string	"GetVersion"
.LASF219:
	.string	"__FLT32_MIN_10_EXP__ (-37)"
.LASF379:
	.string	"___int_size_t_h "
.LASF1285:
	.string	"SETUP_T_SP_FAST (5)"
.LASF624:
	.string	"MSTATUS_MXR 0x00080000"
.LASF1062:
	.string	"IRQ_GP12_SOURCE 22"
.LASF386:
	.string	"_WCHAR_T "
.LASF600:
	.string	"DRV_SPI_DMA_RX_EN 0"
.LASF627:
	.string	"MSTATUS64_SD 0x8000000000000000"
.LASF342:
	.string	"__riscv_zicsr 2000000"
.LASF160:
	.string	"__FLT_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F"
.LASF1354:
	.string	"DMA_SignalEvent_t"
.LASF483:
	.string	"INTPTR_MIN"
.LASF884:
	.string	"NDS_MHPMEVENT13 0x32d"
.LASF1422:
	.string	"i2c_slave_receive"
.LASF512:
	.string	"INT8_C(c) __INT8_C(c)"
.LASF983:
	.string	"NDS_MSAVECAUSE2 0x7da"
.LASF361:
	.string	"_GCC_PTRDIFF_T "
.LASF183:
	.string	"__LDBL_MANT_DIG__ 113"
.LASF759:
	.string	"NDS_HPMCOUNTER27H 0xc9b"
.LASF821:
	.string	"NDS_MHPMCOUNTER10 0xb0a"
.LASF976:
	.string	"NDS_SHPMEVENT4 0x9e4"
.LASF1253:
	.string	"STATUS_FIFO_FULL BIT(1)"
.LASF1059:
	.string	"IRQ_GP9_SOURCE 19"
.LASF862:
	.string	"NDS_MHPMCOUNTER20H 0xb94"
.LASF915:
	.string	"NDS_HSCRATCH 0x240"
.LASF367:
	.string	"_SIZE_T "
.LASF394:
	.string	"_WCHAR_T_H "
.LASF889:
	.string	"NDS_MHPMEVENT18 0x332"
.LASF680:
	.string	"STR(S) #S"
.LASF931:
	.string	"NDS_DSCRATCH1 0x7b3"
.LASF1445:
	.string	"is_fifo_full"
.LASF1242:
	.string	"STATUS_GEN_CALL BIT(12)"
.LASF1116:
	.string	"PLIC_PENDING_SHIFT_PER_SOURCE 0"
.LASF76:
	.string	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL"
.LASF893:
	.string	"NDS_MHPMEVENT22 0x336"
.LASF200:
	.string	"__FLT16_MANT_DIG__ 11"
.LASF1300:
	.string	"long double"
.LASF1323:
	.string	"arbitration_lost"
.LASF498:
	.string	"SIG_ATOMIC_MAX __SIG_ATOMIC_MAX__"
.LASF827:
	.string	"NDS_MHPMCOUNTER16 0xb10"
.LASF552:
	.string	"AE350_I2C_BUS_SPEED_FAST_PLUS (0x03)"
.LASF67:
	.string	"__UINT_FAST32_TYPE__ unsigned int"
.LASF1195:
	.string	"DMA_CH_CTRL_SRCADDR_FIX ( 2 << DMA_CH_CTRL_SRCADDRCTRL_POS)"
.LASF518:
	.string	"INT64_C(c) __INT64_C(c)"
.LASF916:
	.string	"NDS_HEPC 0x241"
.LASF443:
	.string	"UINT_LEAST16_MAX"
.LASF1130:
	.string	"HAL_MSWI_CLEAR() __nds__plic_sw_claim_interrupt()"
.LASF1467:
	.string	"i2cx_power_control"
.LASF297:
	.string	"__FLT64X_HAS_QUIET_NAN__ 1"
.LASF251:
	.string	"__FLT128_DIG__ 33"
.LASF109:
	.string	"__INT8_C(c) c"
.LASF697:
	.string	"NDS_FFLAGS 0x001"
.LASF500:
	.string	"SIG_ATOMIC_MIN __SIG_ATOMIC_MIN__"
.LASF838:
	.string	"NDS_MHPMCOUNTER27 0xb1b"
.LASF352:
	.string	"_STDDEF_H_ "
.LASF454:
	.string	"INT_LEAST64_MIN (-INT_LEAST64_MAX - 1)"
.LASF294:
	.string	"__FLT64X_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F64x"
.LASF168:
	.string	"__DBL_MIN_EXP__ (-1021)"
.LASF371:
	.string	"__SIZE_T "
.LASF196:
	.string	"__LDBL_HAS_DENORM__ 1"
.LASF582:
	.string	"DRV_UART1 1"
.LASF412:
	.string	"INT8_MIN (-INT8_MAX - 1)"
.LASF1268:
	.string	"CMD_CLEAR_FIFO (0x4)"
.LASF310:
	.string	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2"
.LASF1388:
	.string	"Xfer_Rd_Num"
.LASF208:
	.string	"__FLT16_NORM_MAX__ 6.55040000000000000000000000000000000e+4F16"
.LASF217:
	.string	"__FLT32_DIG__ 6"
.LASF1197:
	.string	"DMA_CH_CTRL_DSTADDRCTRL_MASK (0x03 << DMA_CH_CTRL_DSTADDRCTRL_POS)"
.LASF439:
	.string	"INT_LEAST16_MAX"
.LASF1085:
	.string	"DMAC_BASE _IO_(0xF0C00000)"
.LASF1133:
	.string	"HAL_MEIP_ENABLE() set_csr(NDS_MIE, MIP_MEIP)"
.LASF869:
	.string	"NDS_MHPMCOUNTER27H 0xb9b"
.LASF550:
	.string	"AE350_I2C_BUS_SPEED_STANDARD (0x01)"
.LASF1389:
	.string	"Xfered_Data_Wt_Ptr"
.LASF972:
	.string	"NDS_SCOUNTEROVF 0x9d4"
.LASF656:
	.string	"TRAP_S_I_PAGE_FAULT 12"
.LASF1061:
	.string	"IRQ_GP11_SOURCE 21"
.LASF681:
	.string	"XSTR(S) STR(S)"
.LASF671:
	.string	"STORE sw"
.LASF1404:
	.string	"info"
.LASF1201:
	.string	"DMA_CH_CTRL_SRCREQ_POS ( 8)"
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
.LASF736:
	.string	"NDS_HPMCOUNTER4H 0xc84"
.LASF474:
	.string	"UINT_FAST32_MAX __UINT_FAST32_MAX__"
.LASF356:
	.string	"_T_PTRDIFF "
.LASF1283:
	.string	"SETUP_T_SCLHI_STD (491)"
.LASF55:
	.string	"__INT_LEAST32_TYPE__ long int"
.LASF994:
	.string	"NDS_MSCRATCHCSW 0x348"
.LASF1270:
	.string	"SETUP_T_SUDAT BITS(24,28)"
.LASF661:
	.string	"MIP_MSIP (1 << IRQ_M_SOFT)"
.LASF710:
	.string	"NDS_HPMCOUNTER10 0xc0a"
.LASF126:
	.string	"__UINT_LEAST64_MAX__ 0xffffffffffffffffULL"
.LASF263:
	.string	"__FLT128_HAS_INFINITY__ 1"
.LASF139:
	.string	"__UINT_FAST64_MAX__ 0xffffffffffffffffULL"
.LASF1258:
	.string	"CTRL_PHASE_ADDR BIT(11)"
.LASF822:
	.string	"NDS_MHPMCOUNTER11 0xb0b"
.LASF455:
	.string	"UINT_LEAST64_MAX"
.LASF1139:
	.string	"DEV_PLMT AE350_PLMT"
.LASF1313:
	.string	"AE350_POWER_OFF"
.LASF1312:
	.string	"AE350_DRIVER_VERSION"
.LASF240:
	.string	"__FLT64_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF791:
	.string	"NDS_MIP 0x344"
.LASF1176:
	.string	"DMA_CH_CTRL_DBINFIDX_POS ( 30)"
.LASF1050:
	.string	"IRQ_DMA_SOURCE 10"
.LASF1311:
	.string	"long long unsigned int"
.LASF1044:
	.string	"IRQ_GP0_SOURCE 4"
.LASF807:
	.string	"NDS_PMPADDR11 0x3bb"
.LASF704:
	.string	"NDS_HPMCOUNTER4 0xc04"
.LASF694:
	.string	"NDS_UCAUSE 0x042"
.LASF199:
	.string	"__LDBL_IS_IEC_60559__ 1"
.LASF37:
	.string	"__PTRDIFF_TYPE__ int"
.LASF1290:
	.string	"SETUP_T_SP_FAST_P (5)"
.LASF375:
	.string	"_SIZE_T_DEFINED "
.LASF79:
	.string	"__WINT_MAX__ 0xffffffffU"
.LASF451:
	.string	"INT_LEAST64_MAX"
.LASF1307:
	.string	"uint16_t"
.LASF975:
	.string	"NDS_SHPMEVENT3 0x9e3"
.LASF357:
	.string	"__PTRDIFF_T "
.LASF1328:
	.string	"address_10_bit"
.LASF943:
	.string	"NDS_MSP_BASE 0x7c8"
.LASF435:
	.string	"INT_LEAST8_MIN"
.LASF1005:
	.string	"NDS_PMACFG1 0xbc1"
.LASF756:
	.string	"NDS_HPMCOUNTER24H 0xc98"
.LASF1310:
	.string	"long unsigned int"
.LASF211:
	.string	"__FLT16_DENORM_MIN__ 5.96046447753906250000000000000000000e-8F16"
.LASF1374:
	.string	"I2C_DRIVER_STATE"
.LASF570:
	.string	"BUILD_LOAD 1"
.LASF63:
	.string	"__INT_FAST32_TYPE__ int"
.LASF517:
	.string	"INT64_C"
.LASF836:
	.string	"NDS_MHPMCOUNTER25 0xb19"
.LASF1424:
	.string	"i2c_slave_transmit"
.LASF58:
	.string	"__UINT_LEAST16_TYPE__ short unsigned int"
.LASF1155:
	.string	"DMA_BSIZE_2 (0x1)"
.LASF1413:
	.string	"dma_channel_get_count"
.LASF42:
	.string	"__CHAR16_TYPE__ short unsigned int"
.LASF1150:
	.string	"DMA_NUMBER_OF_CHANNELS ((uint8_t) 8)"
.LASF689:
	.string	"NDS_USTATUS 0x000"
.LASF298:
	.string	"__FLT64X_IS_IEC_60559__ 1"
.LASF267:
	.string	"__FLT32X_DIG__ 15"
.LASF1286:
	.string	"SETUP_T_HDDAT_FAST (21)"
.LASF1373:
	.string	"I2C_DRV_SLAVE_RX_CMPL"
.LASF744:
	.string	"NDS_HPMCOUNTER12H 0xc8c"
.LASF763:
	.string	"NDS_HPMCOUNTER31H 0xc9f"
.LASF626:
	.string	"MSTATUS32_SD 0x80000000"
.LASF17:
	.string	"__FINITE_MATH_ONLY__ 0"
.LASF934:
	.string	"NDS_MMSC_CFG 0xfc2"
.LASF130:
	.string	"__INT_FAST16_MAX__ 0x7fffffff"
.LASF1256:
	.string	"DATA_MSK BITS(0,7)"
.LASF590:
	.string	"DRV_UART2_DMA_TX_EN 0"
.LASF436:
	.string	"INT_LEAST8_MIN (-INT_LEAST8_MAX - 1)"
.LASF494:
	.string	"PTRDIFF_MAX __PTRDIFF_MAX__"
.LASF329:
	.string	"__riscv_xlen 32"
.LASF1185:
	.string	"DMA_CH_CTRL_SWIDTH(n) (((n) << DMA_CH_CTRL_SWIDTH_POS) & DMA_CH_CTRL_SWIDTH_MASK)"
.LASF809:
	.string	"NDS_PMPADDR13 0x3bd"
.LASF1465:
	.string	"i2cx_master_receive"
.LASF1165:
	.string	"DMA_WIDTH_BYTE (0x0)"
.LASF393:
	.string	"_WCHAR_T_DEFINED "
.LASF1205:
	.string	"DMA_CH_CTRL_DSTREQ_MASK (0x0F << DMA_CH_CTRL_DSTREQ_POS)"
.LASF1002:
	.string	"NDS_PUSHMEPC 0x7ef"
.LASF819:
	.string	"NDS_MHPMCOUNTER8 0xb08"
.LASF918:
	.string	"NDS_HBADADDR 0x243"
.LASF742:
	.string	"NDS_HPMCOUNTER10H 0xc8a"
.LASF1280:
	.string	"SETUP_T_SP_STD (5)"
.LASF408:
	.string	"_GCC_STDINT_H "
.LASF673:
	.string	"LWU lw"
.LASF1022:
	.string	"NDS_PMAADDR14 0xbde"
.LASF1440:
	.string	"i2cx_irq_handler"
.LASF1058:
	.string	"IRQ_GP8_SOURCE 18"
.LASF423:
	.string	"INT32_MIN"
.LASF1304:
	.string	"int32_t"
.LASF1360:
	.string	"I2C_SLAVE_RX"
.LASF338:
	.string	"__riscv_a 2001000"
.LASF373:
	.string	"_BSD_SIZE_T_ "
.LASF505:
	.string	"WCHAR_MIN"
.LASF1476:
	.string	"source"
.LASF563:
	.string	"AE350_I2C_EVENT_BUS_ERROR (1UL << 7)"
.LASF979:
	.string	"NDS_MSAVESTATUS 0x7d6"
.LASF390:
	.string	"_WCHAR_T_ "
.LASF444:
	.string	"UINT_LEAST16_MAX __UINT_LEAST16_MAX__"
.LASF1390:
	.string	"Xfered_Data_Rd_Ptr"
.LASF705:
	.string	"NDS_HPMCOUNTER5 0xc05"
.LASF903:
	.string	"NDS_TSELECT 0x7a0"
.LASF1297:
	.string	"AE350_I2C_DRV_VERSION AE350_DRIVER_VERSION_MAJOR_MINOR(2,9)"
.LASF1143:
	.string	"DEV_UART2 AE350_UART2"
.LASF579:
	.string	"DRV_I2C_DMA_RX_EN 0"
.LASF619:
	.string	"MSTATUS_MPP 0x00001800"
.LASF1124:
	.string	"HAL_MTIME_ENABLE() set_csr(NDS_MIE, MIP_MTIP)"
.LASF615:
	.string	"MSTATUS_HPIE 0x00000040"
.LASF470:
	.string	"INT_FAST32_MAX __INT_FAST32_MAX__"
.LASF748:
	.string	"NDS_HPMCOUNTER16H 0xc90"
.LASF396:
	.string	"__INT_WCHAR_T_H "
.LASF1202:
	.string	"DMA_CH_CTRL_SRCREQ_MASK (0x0F << DMA_CH_CTRL_SRCREQ_POS)"
.LASF1045:
	.string	"IRQ_SPI_SOURCE 5"
.LASF764:
	.string	"NDS_SSTATUS 0x100"
.LASF700:
	.string	"NDS_CYCLE 0xc00"
.LASF866:
	.string	"NDS_MHPMCOUNTER24H 0xb98"
.LASF44:
	.string	"__SIG_ATOMIC_TYPE__ int"
.LASF675:
	.string	"REGBYTES (1 << LOG_REGBYTES)"
.LASF417:
	.string	"INT16_MIN"
.LASF165:
	.string	"__FLT_IS_IEC_60559__ 1"
.LASF963:
	.string	"NDS_UCCTLBEGINADDR 0x80b"
.LASF846:
	.string	"NDS_MHPMCOUNTER4H 0xb84"
.LASF1188:
	.string	"DMA_CH_CTRL_DWIDTH(n) (((n) << DMA_CH_CTRL_DWIDTH_POS) & DMA_CH_CTRL_DWIDTH_MASK)"
.LASF812:
	.string	"NDS_MCYCLE 0xb00"
.LASF1123:
	.string	"HAL_MTIMER_INITIAL() "
.LASF1348:
	.string	"STATUS"
.LASF391:
	.string	"_BSD_WCHAR_T_ "
.LASF547:
	.string	"AE350_I2C_BUS_SPEED (0x02)"
.LASF175:
	.string	"__DBL_MIN__ ((double)2.22507385850720138309023271733240406e-308L)"
.LASF325:
	.string	"__riscv_atomic 1"
.LASF292:
	.string	"__FLT64X_MIN__ 3.36210314311209350626267781732175260e-4932F64x"
.LASF1047:
	.string	"IRQ_GPIO_SOURCE 7"
.LASF749:
	.string	"NDS_HPMCOUNTER17H 0xc91"
.LASF1126:
	.string	"HAL_MSWI_INITIAL() { __nds__plic_sw_set_priority(1, 1); __nds__plic_sw_enable_interrupt(1); }"
.LASF77:
	.string	"__WCHAR_MAX__ 0x7fffffff"
.LASF937:
	.string	"NDS_MECC_CODE 0x7c2"
.LASF1009:
	.string	"NDS_PMAADDR1 0xbd1"
.LASF1152:
	.string	"DMA_EVENT_ERROR (2)"
.LASF41:
	.string	"__UINTMAX_TYPE__ long long unsigned int"
.LASF1038:
	.string	"HCLKFREQ (OSCFREQ )"
.LASF8:
	.string	"__GNUC_MINOR__ 2"
.LASF89:
	.string	"__WINT_WIDTH__ 32"
.LASF842:
	.string	"NDS_MHPMCOUNTER31 0xb1f"
.LASF59:
	.string	"__UINT_LEAST32_TYPE__ long unsigned int"
.LASF186:
	.string	"__LDBL_MIN_10_EXP__ (-4931)"
.LASF558:
	.string	"AE350_I2C_EVENT_SLAVE_TRANSMIT (1UL << 2)"
.LASF810:
	.string	"NDS_PMPADDR14 0x3be"
.LASF313:
	.string	"__GCC_ATOMIC_INT_LOCK_FREE 2"
.LASF1384:
	.string	"nack_assert"
.LASF942:
	.string	"NDS_MSP_BOUND 0x7c7"
.LASF986:
	.string	"NDS_WFE 0x810"
.LASF276:
	.string	"__FLT32X_EPSILON__ 2.22044604925031308084726333618164062e-16F32x"
.LASF487:
	.string	"INTMAX_MAX"
.LASF407:
	.string	"_GCC_MAX_ALIGN_T "
.LASF566:
	.string	"__PLATFORM_H__ "
.LASF381:
	.string	"_SIZET_ "
.LASF1055:
	.string	"IRQ_GP5_SOURCE 15"
.LASF543:
	.string	"AE350_DRIVER_ERROR_PARAMETER -5"
.LASF180:
	.string	"__DBL_HAS_QUIET_NAN__ 1"
.LASF910:
	.string	"NDS_HSTATUS 0x200"
.LASF824:
	.string	"NDS_MHPMCOUNTER13 0xb0d"
.LASF560:
	.string	"AE350_I2C_EVENT_ADDRESS_NACK (1UL << 4)"
.LASF515:
	.string	"INT32_C"
.LASF1450:
	.string	"i2cx_slave_fifo_write"
.LASF1474:
	.string	"__nds__plic_disable_interrupt"
.LASF1211:
	.string	"APB_CLK_200MHZ 0"
.LASF1060:
	.string	"IRQ_GP10_SOURCE 20"
.LASF1333:
	.string	"Initialize"
.LASF261:
	.string	"__FLT128_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F128"
.LASF429:
	.string	"INT64_MIN"
.LASF875:
	.string	"NDS_MHPMEVENT4 0x324"
.LASF69:
	.string	"__INTPTR_TYPE__ int"
.LASF519:
	.string	"UINT8_C"
.LASF70:
	.string	"__UINTPTR_TYPE__ unsigned int"
.LASF521:
	.string	"UINT16_C"
.LASF299:
	.string	"__REGISTER_PREFIX__ "
.LASF896:
	.string	"NDS_MHPMEVENT25 0x339"
.LASF167:
	.string	"__DBL_DIG__ 15"
.LASF1264:
	.string	"CMD_NO_ACT (0x0)"
.LASF522:
	.string	"UINT16_C(c) __UINT16_C(c)"
.LASF1012:
	.string	"NDS_PMAADDR4 0xbd4"
.LASF1193:
	.string	"DMA_CH_CTRL_SRCADDR_INC ( 0 << DMA_CH_CTRL_SRCADDRCTRL_POS)"
.LASF25:
	.string	"__SIZEOF_SIZE_T__ 4"
.LASF1180:
	.string	"DMA_CH_CTRL_SBSIZE_POS ( 24)"
.LASF1054:
	.string	"IRQ_GP4_SOURCE 14"
.LASF723:
	.string	"NDS_HPMCOUNTER23 0xc17"
.LASF1359:
	.string	"I2C_SLAVE_TX"
.LASF243:
	.string	"__FLT64_EPSILON__ 2.22044604925031308084726333618164062e-16F64"
.LASF955:
	.string	"NDS_MCOUNTERMASK_M 0x7d1"
.LASF1324:
	.string	"bus_error"
.LASF1267:
	.string	"CMD_NACK (0x3)"
.LASF1284:
	.string	"SETUP_T_SUDAT_FAST (1)"
.LASF933:
	.string	"NDS_MDCM_CFG 0xfc1"
.LASF1204:
	.string	"DMA_CH_CTRL_DSTREQ_POS ( 4)"
.LASF666:
	.string	"MIP_HEIP (1 << IRQ_H_EXT)"
.LASF1028:
	.string	"set_csr(reg,bit) ({ unsigned long __tmp; asm volatile (\"csrrs %0, \" XSTR(reg) \", %1\" : \"=r\"(__tmp) : \"rK\"(bit)); __tmp; })"
.LASF1134:
	.string	"HAL_MEIP_DISABLE() clear_csr(NDS_MIE, MIP_MEIP)"
.LASF1221:
	.string	"IIC_MINOR BITS(0,3)"
.LASF851:
	.string	"NDS_MHPMCOUNTER9H 0xb89"
.LASF863:
	.string	"NDS_MHPMCOUNTER21H 0xb95"
.LASF1140:
	.string	"DEV_DMA AE350_DMA"
.LASF1269:
	.string	"CMD_RESET_I2C (0x5)"
.LASF581:
	.string	"DRV_I2C_DMA_RX_REQID 8"
.LASF613:
	.string	"MSTATUS_UPIE 0x00000010"
.LASF1302:
	.string	"short int"
.LASF351:
	.string	"_STDDEF_H "
.LASF1010:
	.string	"NDS_PMAADDR2 0xbd2"
.LASF123:
	.string	"__UINT16_C(c) c"
.LASF235:
	.string	"__FLT64_MIN_EXP__ (-1021)"
.LASF209:
	.string	"__FLT16_MIN__ 6.10351562500000000000000000000000000e-5F16"
.LASF210:
	.string	"__FLT16_EPSILON__ 9.76562500000000000000000000000000000e-4F16"
.LASF553:
	.string	"AE350_I2C_BUS_SPEED_HIGH (0x04)"
.LASF1320:
	.string	"mode"
.LASF780:
	.string	"NDS_MSTATUS 0x300"
.LASF302:
	.string	"__NO_INLINE__ 1"
.LASF1023:
	.string	"NDS_PMAADDR15 0xbdf"
.LASF449:
	.string	"UINT_LEAST32_MAX"
.LASF811:
	.string	"NDS_PMPADDR15 0x3bf"
.LASF287:
	.string	"__FLT64X_MAX_EXP__ 16384"
.LASF1362:
	.string	"I2C_DRV_NONE"
.LASF908:
	.string	"NDS_DCSR 0x7b0"
.LASF11:
	.string	"__ATOMIC_RELAXED 0"
.LASF949:
	.string	"NDS_MRANDSEQ 0x7fc"
.LASF706:
	.string	"NDS_HPMCOUNTER6 0xc06"
.LASF1294:
	.string	"PARA_IGNORE (0)"
.LASF224:
	.string	"__FLT32_NORM_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF179:
	.string	"__DBL_HAS_INFINITY__ 1"
.LASF456:
	.string	"UINT_LEAST64_MAX __UINT_LEAST64_MAX__"
.LASF97:
	.string	"__SIG_ATOMIC_MAX__ 0x7fffffff"
.LASF1421:
	.string	"i2c_control"
.LASF233:
	.string	"__FLT64_MANT_DIG__ 53"
.LASF1220:
	.string	"IIC_MAJOR BITS(4,11)"
.LASF713:
	.string	"NDS_HPMCOUNTER13 0xc0d"
.LASF745:
	.string	"NDS_HPMCOUNTER13H 0xc8d"
.LASF1458:
	.string	"i2cx_control"
.LASF631:
	.string	"IRQ_H_SOFT 2"
.LASF825:
	.string	"NDS_MHPMCOUNTER14 0xb0e"
.LASF511:
	.string	"INT8_C"
.LASF445:
	.string	"INT_LEAST32_MAX"
.LASF1065:
	.string	"IRQ_GP15_SOURCE 25"
.LASF22:
	.string	"__SIZEOF_FLOAT__ 4"
.LASF1434:
	.string	"i2c_get_version"
.LASF1370:
	.string	"I2C_DRV_MASTER_TX_CMPL"
.LASF364:
	.string	"__need_ptrdiff_t"
.LASF172:
	.string	"__DBL_DECIMAL_DIG__ 17"
.LASF622:
	.string	"MSTATUS_MPRV 0x00020000"
.LASF800:
	.string	"NDS_PMPADDR4 0x3b4"
.LASF358:
	.string	"_PTRDIFF_T_ "
.LASF712:
	.string	"NDS_HPMCOUNTER12 0xc0c"
.LASF514:
	.string	"INT16_C(c) __INT16_C(c)"
.LASF576:
	.string	"DRV_I2C_DMA_TX_EN 0"
.LASF1158:
	.string	"DMA_BSIZE_16 (0x4)"
.LASF174:
	.string	"__DBL_NORM_MAX__ ((double)1.79769313486231570814527423731704357e+308L)"
.LASF101:
	.string	"__INT16_MAX__ 0x7fff"
.LASF326:
	.string	"__riscv_mul 1"
.LASF586:
	.string	"DRV_UART1_DMA_RX_EN 0"
.LASF919:
	.string	"NDS_HIP 0x244"
.LASF690:
	.string	"NDS_UIE 0x004"
.LASF385:
	.string	"__WCHAR_T__ "
.LASF85:
	.string	"__INT_WIDTH__ 32"
.LASF1358:
	.string	"I2C_MASTER_RX"
.LASF1177:
	.string	"DMA_CH_CTRL_DBINF(n) ((n) << DMA_CH_CTRL_DBINFIDX_POS)"
.LASF696:
	.string	"NDS_UIP 0x044"
.LASF620:
	.string	"MSTATUS_FS 0x00006000"
.LASF333:
	.string	"__riscv_float_abi_double 1"
.LASF250:
	.string	"__FLT128_MANT_DIG__ 113"
.LASF855:
	.string	"NDS_MHPMCOUNTER13H 0xb8d"
.LASF1274:
	.string	"SETUP_T_SCLHI BITS(4,12)"
.LASF638:
	.string	"IRQ_M_EXT 11"
.LASF658:
	.string	"TRAP_S_S_PAGE_FAULT 15"
.LASF912:
	.string	"NDS_HIDELEG 0x203"
.LASF948:
	.string	"NDS_DDCAUSE 0x7e1"
.LASF99:
	.string	"__SIG_ATOMIC_WIDTH__ 32"
.LASF589:
	.string	"DRV_UART2 1"
.LASF1206:
	.string	"DMA_CH_CTRL_DSTREQ(n) (((n) << DMA_CH_CTRL_DSTREQ_POS) & DMA_CH_CTRL_DSTREQ_MASK)"
.LASF939:
	.string	"NDS_MXSTATUS 0x7c4"
.LASF843:
	.string	"NDS_MCYCLEH 0xb80"
.LASF1122:
	.string	"PLIC_CLAIM_SHIFT_PER_TARGET 12"
.LASF923:
	.string	"NDS_MIBOUND 0x383"
.LASF899:
	.string	"NDS_MHPMEVENT28 0x33c"
.LASF727:
	.string	"NDS_HPMCOUNTER27 0xc1b"
.LASF1266:
	.string	"CMD_ACK (0x2)"
.LASF641:
	.string	"TRAP_M_I_ACC_FAULT 1"
.LASF1381:
	.string	"middleware_tx_buf"
.LASF880:
	.string	"NDS_MHPMEVENT9 0x329"
.LASF1349:
	.string	"ADDR"
.LASF321:
	.string	"__SIZEOF_WINT_T__ 4"
.LASF913:
	.string	"NDS_HIE 0x204"
.LASF944:
	.string	"NDS_MDCAUSE 0x7c9"
.LASF28:
	.string	"__ORDER_LITTLE_ENDIAN__ 1234"
.LASF2:
	.string	"__STDC__ 1"
.LASF1096:
	.string	"AE350_DMA ((DMA_RegDef *) DMAC_BASE )"
.LASF909:
	.string	"NDS_DPC 0x7b1"
.LASF36:
	.string	"__SIZE_TYPE__ unsigned int"
.LASF1239:
	.string	"STATUS_W1C_ALL BITS(3,9)"
.LASF837:
	.string	"NDS_MHPMCOUNTER26 0xb1a"
.LASF804:
	.string	"NDS_PMPADDR8 0x3b8"
.LASF1455:
	.string	"i2cx_signalevent"
.LASF128:
	.string	"__INT_FAST8_MAX__ 0x7fffffff"
.LASF228:
	.string	"__FLT32_HAS_DENORM__ 1"
.LASF1453:
	.string	"is_preceding"
.LASF1106:
	.string	"__INTERRUPT_H__ "
.LASF133:
	.string	"__INT_FAST32_WIDTH__ 32"
.LASF395:
	.string	"___int_wchar_t_h "
.LASF814:
	.string	"NDS_MHPMCOUNTER3 0xb03"
.LASF24:
	.string	"__SIZEOF_LONG_DOUBLE__ 16"
.LASF601:
	.string	"DRV_SPI_DMA_RX_CH 1"
.LASF1245:
	.string	"STATUS_CMPL BIT(9)"
.LASF778:
	.string	"NDS_MIMPID 0xf13"
.LASF337:
	.string	"__riscv_m 2000000"
.LASF257:
	.string	"__FLT128_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF51:
	.string	"__UINT32_TYPE__ long unsigned int"
.LASF482:
	.string	"INTPTR_MAX __INTPTR_MAX__"
.LASF1292:
	.string	"SETUP_T_SCL_RATIO_FAST_P (3)"
.LASF1347:
	.string	"INTEN"
.LASF767:
	.string	"NDS_SIE 0x104"
.LASF977:
	.string	"NDS_SHPMEVENT5 0x9e5"
.LASF1105:
	.string	"AE350_SPI ((SPI_RegDef *) SPI_BASE )"
.LASF380:
	.string	"_GCC_SIZE_T "
.LASF993:
	.string	"NDS_MINTSTATUS 0x346"
.LASF895:
	.string	"NDS_MHPMEVENT24 0x338"
.LASF629:
	.string	"MCAUSE_CAUSE 0x7FFFFFFFUL"
.LASF461:
	.string	"UINT_FAST8_MAX"
.LASF881:
	.string	"NDS_MHPMEVENT10 0x32a"
.LASF718:
	.string	"NDS_HPMCOUNTER18 0xc12"
.LASF1262:
	.string	"CTRL_DATA_COUNT BITS(0,7)"
.LASF996:
	.string	"NDS_MSAVEDCAUSE1 0x7db"
.LASF1075:
	.string	"DDRMEM_BASE 0x00000000"
.LASF921:
	.string	"NDS_MBOUND 0x381"
.LASF18:
	.string	"__SIZEOF_INT__ 4"
.LASF400:
	.string	"_BSD_WCHAR_T_"
.LASF1379:
	.string	"Pwr_State"
.LASF1174:
	.string	"DMA_CH_CTRL_SBINF(n) ((n) << DMA_CH_CTRL_SBINFIDX_POS)"
.LASF848:
	.string	"NDS_MHPMCOUNTER6H 0xb86"
.LASF1166:
	.string	"DMA_WIDTH_HALFWORD (0x1)"
.LASF1309:
	.string	"uint32_t"
.LASF725:
	.string	"NDS_HPMCOUNTER25 0xc19"
.LASF1159:
	.string	"DMA_BSIZE_32 (0x5)"
.LASF739:
	.string	"NDS_HPMCOUNTER7H 0xc87"
.LASF775:
	.string	"NDS_SATP 0x180"
.LASF340:
	.string	"__riscv_d 2002000"
.LASF201:
	.string	"__FLT16_DIG__ 3"
.LASF743:
	.string	"NDS_HPMCOUNTER11H 0xc8b"
.LASF761:
	.string	"NDS_HPMCOUNTER29H 0xc9d"
.LASF1148:
	.string	"DEV_I2C AE350_I2C"
.LASF672:
	.string	"LOAD lw"
.LASF193:
	.string	"__LDBL_MIN__ 3.36210314311209350626267781732175260e-4932L"
.LASF1079:
	.string	"UART2_BASE _IO_(0xF0300000)"
.LASF66:
	.string	"__UINT_FAST16_TYPE__ unsigned int"
.LASF1355:
	.string	"_AE350_POWER_STATE"
.LASF1142:
	.string	"DEV_UART1 AE350_UART1"
.LASF1289:
	.string	"SETUP_T_SUDAT_FAST_P (0)"
.LASF898:
	.string	"NDS_MHPMEVENT27 0x33b"
.LASF525:
	.string	"UINT64_C"
.LASF1357:
	.string	"I2C_MASTER_TX"
.LASF497:
	.string	"SIG_ATOMIC_MAX"
.LASF1371:
	.string	"I2C_DRV_MASTER_RX_CMPL"
.LASF569:
	.string	"BUILD_MODE BUILD_BURN"
.LASF80:
	.string	"__WINT_MIN__ 0U"
.LASF441:
	.string	"INT_LEAST16_MIN"
.LASF1006:
	.string	"NDS_PMACFG2 0xbc2"
.LASF1113:
	.string	"PLIC_PRIORITY_OFFSET (0x00000000UL)"
.LASF234:
	.string	"__FLT64_DIG__ 15"
.LASF1336:
	.string	"MasterTransmit"
.LASF820:
	.string	"NDS_MHPMCOUNTER9 0xb09"
.LASF158:
	.string	"__FLT_MIN__ 1.17549435082228750796873653722224568e-38F"
.LASF1344:
	.string	"AE350_DRIVER_I2C"
.LASF332:
	.string	"__riscv_fsqrt 1"
.LASF545:
	.string	"AE350_I2C_API_VERSION AE350_DRIVER_VERSION_MAJOR_MINOR(2,02)"
.LASF346:
	.string	"_POSIX_C_SOURCE 1"
.LASF54:
	.string	"__INT_LEAST16_TYPE__ short int"
.LASF754:
	.string	"NDS_HPMCOUNTER22H 0xc96"
.LASF1228:
	.string	"IEN_ALL BITS(0,9)"
.LASF571:
	.string	"BUILD_BURN 2"
.LASF1196:
	.string	"DMA_CH_CTRL_DSTADDRCTRL_POS ( 12)"
.LASF1191:
	.string	"DMA_CH_CTRL_SRCADDRCTRL_POS ( 14)"
.LASF213:
	.string	"__FLT16_HAS_INFINITY__ 1"
.LASF384:
	.string	"__wchar_t__ "
.LASF867:
	.string	"NDS_MHPMCOUNTER25H 0xb99"
.LASF529:
	.string	"UINTMAX_C"
.LASF350:
	.string	"__DRIVER_COMMON_H__ "
.LASF648:
	.string	"TRAP_M_I_PAGE_FAULT 12"
.LASF1425:
	.string	"i2c_master_receive"
.LASF1247:
	.string	"STATUS_BYTE_TRANS BIT(7)"
.LASF464:
	.string	"INT_FAST16_MAX __INT_FAST16_MAX__"
.LASF971:
	.string	"NDS_SCOUNTERMASK_U 0x9d3"
.LASF324:
	.string	"__riscv_compressed 1"
.LASF659:
	.string	"MIP_SSIP (1 << IRQ_S_SOFT)"
.LASF185:
	.string	"__LDBL_MIN_EXP__ (-16381)"
.LASF1325:
	.string	"AE350_I2C_STATUS"
.LASF1161:
	.string	"DMA_BSIZE_128 (0x7)"
.LASF536:
	.string	"__bool_true_false_are_defined 1"
.LASF801:
	.string	"NDS_PMPADDR5 0x3b5"
.LASF176:
	.string	"__DBL_EPSILON__ ((double)2.22044604925031308084726333618164062e-16L)"
.LASF1363:
	.string	"I2C_DRV_INIT"
.LASF1444:
	.string	"i2cx_slave_fifo_read"
.LASF82:
	.string	"__SIZE_MAX__ 0xffffffffU"
.LASF847:
	.string	"NDS_MHPMCOUNTER5H 0xb85"
.LASF651:
	.string	"TRAP_M_STACKOVF 32"
.LASF852:
	.string	"NDS_MHPMCOUNTER10H 0xb8a"
.LASF1429:
	.string	"i2c_power_control"
.LASF938:
	.string	"NDS_MNVEC 0x7c3"
.LASF882:
	.string	"NDS_MHPMEVENT11 0x32b"
.LASF1419:
	.string	"i2c_get_status"
.LASF75:
	.string	"__LONG_MAX__ 0x7fffffffL"
.LASF738:
	.string	"NDS_HPMCOUNTER6H 0xc86"
.LASF1217:
	.string	"BITS(m,n) (~(BIT(m)-1) & ((BIT(n) - 1) | BIT(n)))"
.LASF405:
	.string	"offsetof"
.LASF662:
	.string	"MIP_STIP (1 << IRQ_S_TIMER)"
.LASF859:
	.string	"NDS_MHPMCOUNTER17H 0xb91"
.LASF345:
	.string	"NO_INIT 1"
.LASF987:
	.string	"NDS_SLEEPVALUE 0x811"
.LASF1127:
	.string	"HAL_MSWI_ENABLE() set_csr(NDS_MIE, MIP_MSIP)"
.LASF612:
	.string	"MSTATUS_MIE 0x00000008"
.LASF453:
	.string	"INT_LEAST64_MIN"
.LASF757:
	.string	"NDS_HPMCOUNTER25H 0xc99"
.LASF493:
	.string	"PTRDIFF_MAX"
.LASF771:
	.string	"NDS_SEPC 0x141"
.LASF1364:
	.string	"I2C_DRV_POWER"
.LASF795:
	.string	"NDS_PMPCFG3 0x3a3"
.LASF40:
	.string	"__INTMAX_TYPE__ long long int"
.LASF776:
	.string	"NDS_MVENDORID 0xf11"
.LASF49:
	.string	"__UINT8_TYPE__ unsigned char"
.LASF266:
	.string	"__FLT32X_MANT_DIG__ 53"
.LASF691:
	.string	"NDS_UTVEC 0x005"
.LASF88:
	.string	"__WCHAR_WIDTH__ 32"
.LASF850:
	.string	"NDS_MHPMCOUNTER8H 0xb88"
.LASF682:
	.string	"PUSH XSTR(STORE)"
.LASF564:
	.string	"AE350_I2C_EVENT_BUS_CLEAR (1UL << 8)"
.LASF507:
	.string	"WINT_MAX"
.LASF1043:
	.string	"IRQ_PIT_SOURCE 3"
.LASF112:
	.string	"__INT16_C(c) c"
.LASF1137:
	.string	"HAL_INTERRUPT_THRESHOLD(threshold) __nds__plic_set_threshold(threshold)"
.LASF466:
	.string	"INT_FAST16_MIN (-INT_FAST16_MAX - 1)"
.LASF568:
	.string	"CFG_CACHE_ENABLE "
.LASF1080:
	.string	"PIT_BASE _IO_(0xF0400000)"
.LASF1190:
	.string	"DMA_CH_CTRL_DMODE_HANDSHAKE ( 1 << 16)"
.LASF653:
	.string	"TRAP_S_I_ACC_FAULT 1"
.LASF214:
	.string	"__FLT16_HAS_QUIET_NAN__ 1"
.LASF1007:
	.string	"NDS_PMACFG3 0xbc3"
.LASF549:
	.string	"AE350_I2C_ABORT_TRANSFER (0x04)"
.LASF15:
	.string	"__ATOMIC_ACQ_REL 4"
.LASF47:
	.string	"__INT32_TYPE__ long int"
.LASF1087:
	.string	"APB_EXT_BASE _IO_(0xF8000000)"
.LASF392:
	.string	"_WCHAR_T_DEFINED_ "
.LASF585:
	.string	"DRV_UART1_DMA_TX_REQID 4"
.LASF1319:
	.string	"busy"
.LASF988:
	.string	"NDS_TXEVT 0x812"
.LASF578:
	.string	"DRV_I2C_DMA_TX_REQID 8"
.LASF1099:
	.string	"AE350_UART2 ((UART_RegDef *) UART2_BASE )"
.LASF177:
	.string	"__DBL_DENORM_MIN__ ((double)4.94065645841246544176568792868221372e-324L)"
.LASF1480:
	.string	"i2c_irq_handler"
.LASF184:
	.string	"__LDBL_DIG__ 33"
.LASF587:
	.string	"DRV_UART1_DMA_RX_CH 1"
.LASF967:
	.string	"NDS_SDCAUSE 0x9c9"
.LASF701:
	.string	"NDS_TIME 0xc01"
.LASF1053:
	.string	"IRQ_GP3_SOURCE 13"
.LASF1147:
	.string	"DEV_GPIO AE350_GPIO"
.LASF282:
	.string	"__FLT32X_IS_IEC_60559__ 1"
.LASF526:
	.string	"UINT64_C(c) __UINT64_C(c)"
.LASF1081:
	.string	"WDT_BASE _IO_(0xF0500000)"
.LASF1102:
	.string	"AE350_RTC ((RTC_RegDef *) RTC_BASE )"
.LASF94:
	.string	"__UINTMAX_MAX__ 0xffffffffffffffffULL"
.LASF901:
	.string	"NDS_MHPMEVENT30 0x33e"
.LASF166:
	.string	"__DBL_MANT_DIG__ 53"
.LASF730:
	.string	"NDS_HPMCOUNTER30 0xc1e"
.LASF802:
	.string	"NDS_PMPADDR6 0x3b6"
.LASF785:
	.string	"NDS_MTVEC 0x305"
.LASF1063:
	.string	"IRQ_GP13_SOURCE 23"
.LASF954:
	.string	"NDS_MCOUNTERINTEN 0x7cf"
.LASF463:
	.string	"INT_FAST16_MAX"
.LASF1031:
	.string	"write_fcsr(val) ({ asm volatile (\"fscsr %0\" :: \"rK\"(val)); })"
.LASF828:
	.string	"NDS_MHPMCOUNTER17 0xb11"
.LASF74:
	.string	"__INT_MAX__ 0x7fffffff"
.LASF663:
	.string	"MIP_HTIP (1 << IRQ_H_TIMER)"
.LASF968:
	.string	"NDS_SCCTLDATA 0x9cd"
.LASF1417:
	.string	"dma_initialize"
.LASF1469:
	.string	"i2cx_initialize"
.LASF1114:
	.string	"PLIC_PRIORITY_SHIFT_PER_SOURCE 2"
.LASF883:
	.string	"NDS_MHPMEVENT12 0x32c"
.LASF1146:
	.string	"DEV_RTC AE350_RTC"
.LASF688:
	.string	"__CSR_V5_H__ "
.LASF523:
	.string	"UINT32_C"
.LASF610:
	.string	"MSTATUS_SIE 0x00000002"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/lc/git/rt-thread/bsp/gowin-riscv_ae350_soc"
.LASF0:
	.string	"ae350_soc/driver/ae350/i2c_ae350.c"
	.ident	"GCC: () 13.2.0"
