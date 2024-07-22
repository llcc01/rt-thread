	.file	"uart_ae350.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/lc/git/rt-thread/bsp/gowin-riscv_ae350_soc" "ae350_soc/driver/ae350/uart_ae350.c"
	.section	.srodata.uart_driver_version,"a"
	.align	2
	.type	uart_driver_version, @object
	.size	uart_driver_version, 4
uart_driver_version:
	.half	514
	.half	521
	.section	.bss.uart1_info,"aw",@nobits
	.align	2
	.type	uart1_info, @object
	.size	uart1_info, 48
uart1_info:
	.zero	48
	.section	.rodata.uart1_resources,"a"
	.align	2
	.type	uart1_resources, @object
	.size	uart1_resources, 28
uart1_resources:
	.byte	1
	.byte	0
	.byte	0
	.zero	1
	.word	-266338304
	.word	8
	.word	0
	.word	0
	.word	0
	.word	uart1_info
	.section	.bss.uart2_info,"aw",@nobits
	.align	2
	.type	uart2_info, @object
	.size	uart2_info, 48
uart2_info:
	.zero	48
	.section	.rodata.uart2_resources,"a"
	.align	2
	.type	uart2_resources, @object
	.size	uart2_resources, 28
uart2_resources:
	.byte	1
	.byte	0
	.byte	0
	.zero	1
	.word	-265289728
	.word	9
	.word	0
	.word	0
	.word	0
	.word	uart2_info
	.section	.text.uart_set_baudrate,"ax",@progbits
	.align	1
	.globl	uart_set_baudrate
	.type	uart_set_baudrate, @function
uart_set_baudrate:
.LFB15:
	.file 1 "ae350_soc/driver/ae350/uart_ae350.c"
	.loc 1 176 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,44(sp)
	.cfi_offset 8, -4
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	.loc 1 183 29
	lw	a4,-36(s0)
	li	a5,12500992
	addi	a5,a5,-992
	add	a5,a4,a5
	slli	a4,a5,3
	.loc 1 183 51
	lw	a5,-36(s0)
	slli	a5,a5,4
	.loc 1 183 6
	divu	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 185 7
	lw	a5,-40(s0)
	lw	a5,4(a5)
	.loc 1 185 18
	sw	zero,44(a5)
	.loc 1 186 7
	lw	a5,-40(s0)
	lw	a5,4(a5)
	.loc 1 186 18
	li	a4,3
	sw	a4,44(a5)
	.loc 1 187 7
	lw	a5,-40(s0)
	lw	a5,4(a5)
	.loc 1 187 12
	lw	a4,44(a5)
	.loc 1 187 7
	lw	a5,-40(s0)
	lw	a5,4(a5)
	.loc 1 187 18
	ori	a4,a4,128
	sw	a4,44(a5)
	.loc 1 188 7
	lw	a5,-40(s0)
	lw	a5,4(a5)
	.loc 1 188 31
	lw	a4,-20(s0)
	andi	a4,a4,255
	.loc 1 188 18
	sw	a4,32(a5)
	.loc 1 189 25
	lw	a5,-20(s0)
	srli	a4,a5,8
	.loc 1 189 7
	lw	a5,-40(s0)
	lw	a5,4(a5)
	.loc 1 189 31
	andi	a4,a4,255
	.loc 1 189 18
	sw	a4,36(a5)
	.loc 1 191 7
	lw	a5,-40(s0)
	lw	a5,4(a5)
	.loc 1 191 12
	lw	a4,44(a5)
	.loc 1 191 7
	lw	a5,-40(s0)
	lw	a5,4(a5)
	.loc 1 191 18
	andi	a4,a4,-129
	sw	a4,44(a5)
	.loc 1 193 7
	lw	a5,-40(s0)
	lw	a5,24(a5)
	.loc 1 193 24
	lw	a4,-36(s0)
	sw	a4,44(a5)
	.loc 1 195 9
	li	a5,0
	.loc 1 196 1
	mv	a0,a5
	lw	s0,44(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE15:
	.size	uart_set_baudrate, .-uart_set_baudrate
	.section	.text.uart_rxline_irq_handler,"ax",@progbits
	.align	1
	.type	uart_rxline_irq_handler, @function
uart_rxline_irq_handler:
.LFB16:
	.loc 1 205 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,44(sp)
	.cfi_offset 8, -4
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	.loc 1 209 8
	sw	zero,-20(s0)
	.loc 1 210 13
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 1 210 18
	lw	a5,52(a5)
	.loc 1 210 6
	andi	a5,a5,30
	sw	a5,-24(s0)
	.loc 1 213 10
	lw	a5,-24(s0)
	andi	a5,a5,2
	.loc 1 213 5
	beq	a5,zero,.L4
	.loc 1 215 8
	lw	a5,-36(s0)
	lw	a5,24(a5)
	.loc 1 215 38
	li	a4,1
	sb	a4,5(a5)
	.loc 1 216 9
	lw	a5,-20(s0)
	ori	a5,a5,32
	sw	a5,-20(s0)
.L4:
	.loc 1 220 10
	lw	a5,-24(s0)
	andi	a5,a5,4
	.loc 1 220 5
	beq	a5,zero,.L5
	.loc 1 222 8
	lw	a5,-36(s0)
	lw	a5,24(a5)
	.loc 1 222 42
	li	a4,1
	sb	a4,8(a5)
	.loc 1 223 9
	lw	a5,-20(s0)
	ori	a5,a5,512
	sw	a5,-20(s0)
.L5:
	.loc 1 227 10
	lw	a5,-24(s0)
	andi	a5,a5,16
	.loc 1 227 5
	beq	a5,zero,.L6
	.loc 1 229 8
	lw	a5,-36(s0)
	lw	a5,24(a5)
	.loc 1 229 35
	li	a4,1
	sb	a4,6(a5)
	.loc 1 230 9
	lw	a5,-20(s0)
	ori	a5,a5,128
	sw	a5,-20(s0)
	j	.L7
.L6:
	.loc 1 235 11
	lw	a5,-24(s0)
	andi	a5,a5,8
	.loc 1 235 6
	beq	a5,zero,.L7
	.loc 1 237 9
	lw	a5,-36(s0)
	lw	a5,24(a5)
	.loc 1 237 44
	li	a4,1
	sb	a4,7(a5)
	.loc 1 238 10
	lw	a5,-20(s0)
	ori	a5,a5,256
	sw	a5,-20(s0)
.L7:
	.loc 1 242 9
	lw	a5,-20(s0)
	.loc 1 243 1
	mv	a0,a5
	lw	s0,44(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE16:
	.size	uart_rxline_irq_handler, .-uart_rxline_irq_handler
	.section	.text.uart_get_version,"ax",@progbits
	.align	1
	.type	uart_get_version, @function
uart_get_version:
.LFB17:
	.loc 1 257 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 258 9
	li	a5,514
	sh	a5,-20(s0)
	li	a5,521
	sh	a5,-18(s0)
	.loc 1 258 9 is_stmt 0 discriminator 1
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
	.loc 1 259 1 is_stmt 1
	mv	a0,a5
	lw	s0,28(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE17:
	.size	uart_get_version, .-uart_get_version
	.section	.text.uart_get_capabilities,"ax",@progbits
	.align	1
	.type	uart_get_capabilities, @function
uart_get_capabilities:
.LFB18:
	.loc 1 268 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	.loc 1 269 14
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 270 1
	mv	a0,a5
	lw	s0,28(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE18:
	.size	uart_get_capabilities, .-uart_get_capabilities
	.section	.text.uart_initialize,"ax",@progbits
	.align	1
	.type	uart_initialize, @function
uart_initialize:
.LFB19:
	.loc 1 281 1
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
	.loc 1 282 11
	lw	a5,-24(s0)
	lw	a5,24(a5)
	.loc 1 282 17
	lbu	a5,41(a5)
	.loc 1 282 25
	andi	a5,a5,1
	.loc 1 282 5
	beq	a5,zero,.L14
	.loc 1 285 10
	li	a5,0
	j	.L15
.L14:
	.loc 1 289 7
	lw	a5,-24(s0)
	lw	a5,24(a5)
	.loc 1 289 24
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 291 7
	lw	a5,-24(s0)
	lw	a5,24(a5)
	.loc 1 291 33
	sb	zero,4(a5)
	.loc 1 292 7
	lw	a5,-24(s0)
	lw	a5,24(a5)
	.loc 1 292 37
	sb	zero,5(a5)
	.loc 1 293 7
	lw	a5,-24(s0)
	lw	a5,24(a5)
	.loc 1 293 34
	sb	zero,6(a5)
	.loc 1 294 7
	lw	a5,-24(s0)
	lw	a5,24(a5)
	.loc 1 294 42
	sb	zero,7(a5)
	.loc 1 295 7
	lw	a5,-24(s0)
	lw	a5,24(a5)
	.loc 1 295 41
	sb	zero,8(a5)
	.loc 1 297 7
	lw	a5,-24(s0)
	lw	a5,24(a5)
	.loc 1 297 32
	sb	zero,37(a5)
	.loc 1 298 7
	lw	a5,-24(s0)
	lw	a5,24(a5)
	.loc 1 298 31
	sb	zero,36(a5)
	.loc 1 301 11
	lw	a5,-24(s0)
	lw	a5,16(a5)
	.loc 1 301 5
	bne	a5,zero,.L16
	.loc 1 301 28 discriminator 1
	lw	a5,-24(s0)
	lw	a5,20(a5)
	.loc 1 301 20 discriminator 1
	beq	a5,zero,.L17
.L16:
	.loc 1 303 3
	call	dma_initialize
.L17:
	.loc 1 306 7
	lw	a5,-24(s0)
	lw	a5,24(a5)
	.loc 1 306 21
	li	a4,1
	sb	a4,41(a5)
	.loc 1 308 9
	li	a5,0
.L15:
	.loc 1 309 1
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
.LFE19:
	.size	uart_initialize, .-uart_initialize
	.section	.text.uart_uninitialize,"ax",@progbits
	.align	1
	.type	uart_uninitialize, @function
uart_uninitialize:
.LFB20:
	.loc 1 318 1
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
	.loc 1 320 11
	lw	a5,-20(s0)
	lw	a5,16(a5)
	.loc 1 320 5
	bne	a5,zero,.L19
	.loc 1 320 28 discriminator 1
	lw	a5,-20(s0)
	lw	a5,20(a5)
	.loc 1 320 20 discriminator 1
	beq	a5,zero,.L20
.L19:
	.loc 1 322 3
	call	dma_uninitialize
.L20:
	.loc 1 326 7
	lw	a5,-20(s0)
	lw	a5,24(a5)
	.loc 1 326 21
	sb	zero,41(a5)
	.loc 1 328 9
	li	a5,0
	.loc 1 329 1
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
	.size	uart_uninitialize, .-uart_uninitialize
	.section	.text.uart_power_control,"ax",@progbits
	.align	1
	.type	uart_power_control, @function
uart_power_control:
.LFB21:
	.loc 1 340 1
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sw	ra,92(sp)
	sw	s0,88(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	sw	a0,-84(s0)
	sw	a1,-88(s0)
	.loc 1 343 2
	lw	a4,-84(s0)
	li	a5,2
	beq	a4,a5,.L23
	lw	a4,-84(s0)
	li	a5,2
	bgtu	a4,a5,.L24
	lw	a5,-84(s0)
	beq	a5,zero,.L25
	lw	a4,-84(s0)
	li	a5,1
	beq	a4,a5,.L26
	j	.L24
.L25:
	.loc 1 347 38
	lw	a5,-88(s0)
	lw	a5,8(a5)
	sw	a5,-32(s0)
.LBB12:
.LBB13:
.LBB14:
	.file 2 "ae350_soc/driver/ae350/../../../ae350_soc/driver/ae350/../../../ae350_soc/driver/ae350/../../../ae350_soc/ae350/../../ae350_soc/ae350/../../ae350_soc/ae350/plic.h"
	.loc 2 97 50
 #APP
# 97 "ae350_soc/driver/ae350/../../../ae350_soc/driver/ae350/../../../ae350_soc/driver/ae350/../../../ae350_soc/ae350/../../ae350_soc/ae350/../../ae350_soc/ae350/plic.h" 1
	csrr a5, 0xf14
# 0 "" 2
 #NO_APP
	sw	a5,-36(s0)
	.loc 2 97 100
	lw	a5,-36(s0)
.LBE14:
	.loc 2 97 16
	sw	a5,-40(s0)
	.loc 2 100 75
	lw	a5,-40(s0)
	slli	a4,a5,7
	.loc 2 101 75
	lw	a5,-32(s0)
	srli	a5,a5,5
	.loc 2 101 81
	slli	a5,a5,2
	.loc 2 100 81
	add	a4,a4,a5
	li	a5,-469753856
	add	a5,a4,a5
	.loc 2 98 26
	sw	a5,-44(s0)
	.loc 2 103 16
	lw	a5,-44(s0)
	lw	a5,0(a5)
	sw	a5,-48(s0)
	.loc 2 104 39
	lw	a5,-32(s0)
	andi	a5,a5,31
	.loc 2 104 28
	li	a4,1
	sll	a5,a4,a5
	.loc 2 104 23
	not	a5,a5
	mv	a4,a5
	.loc 2 104 11
	lw	a5,-48(s0)
	and	a5,a5,a4
	sw	a5,-48(s0)
	.loc 2 105 16
	lw	a5,-44(s0)
	lw	a4,-48(s0)
	sw	a4,0(a5)
	.loc 2 106 1
	nop
.LBE13:
.LBE12:
	.loc 1 350 13
	lw	a5,-88(s0)
	lw	a5,16(a5)
	.loc 1 350 6
	beq	a5,zero,.L27
	.loc 1 350 32 discriminator 1
	lw	a5,-88(s0)
	lw	a5,24(a5)
	.loc 1 350 44 discriminator 1
	lbu	a5,37(a5)
	.loc 1 350 23 discriminator 1
	beq	a5,zero,.L27
	.loc 1 352 30
	lw	a5,-88(s0)
	lw	a5,16(a5)
	.loc 1 352 38
	lbu	a5,0(a5)
	.loc 1 352 4
	mv	a0,a5
	call	dma_channel_disable
.L27:
	.loc 1 356 13
	lw	a5,-88(s0)
	lw	a5,20(a5)
	.loc 1 356 6
	beq	a5,zero,.L28
	.loc 1 356 32 discriminator 1
	lw	a5,-88(s0)
	lw	a5,24(a5)
	.loc 1 356 49 discriminator 1
	lbu	a5,4(a5)
	.loc 1 356 23 discriminator 1
	beq	a5,zero,.L28
	.loc 1 358 30
	lw	a5,-88(s0)
	lw	a5,20(a5)
	.loc 1 358 38
	lbu	a5,0(a5)
	.loc 1 358 4
	mv	a0,a5
	call	dma_channel_disable
.L28:
	.loc 1 362 8
	lw	a5,-88(s0)
	lw	a5,24(a5)
	.loc 1 362 34
	sb	zero,4(a5)
	.loc 1 363 8
	lw	a5,-88(s0)
	lw	a5,24(a5)
	.loc 1 363 38
	sb	zero,5(a5)
	.loc 1 364 8
	lw	a5,-88(s0)
	lw	a5,24(a5)
	.loc 1 364 35
	sb	zero,6(a5)
	.loc 1 365 8
	lw	a5,-88(s0)
	lw	a5,24(a5)
	.loc 1 365 43
	sb	zero,7(a5)
	.loc 1 366 8
	lw	a5,-88(s0)
	lw	a5,24(a5)
	.loc 1 366 42
	sb	zero,8(a5)
	.loc 1 367 8
	lw	a5,-88(s0)
	lw	a5,24(a5)
	.loc 1 367 33
	sb	zero,37(a5)
	.loc 1 369 8
	lw	a5,-88(s0)
	lw	a5,24(a5)
	.loc 1 369 14
	lbu	a4,41(a5)
	.loc 1 369 8
	lw	a5,-88(s0)
	lw	a5,24(a5)
	.loc 1 369 22
	andi	a4,a4,-3
	andi	a4,a4,0xff
	sb	a4,41(a5)
	.loc 1 371 3
	j	.L29
.L26:
	.loc 1 374 10
	li	a5,-4
	j	.L30
.L23:
	.loc 1 377 13
	lw	a5,-88(s0)
	lw	a5,24(a5)
	.loc 1 377 19
	lbu	a5,41(a5)
	.loc 1 377 27
	andi	a5,a5,1
	.loc 1 377 6
	bne	a5,zero,.L31
	.loc 1 379 11
	li	a5,-1
	j	.L30
.L31:
	.loc 1 382 13
	lw	a5,-88(s0)
	lw	a5,24(a5)
	.loc 1 382 19
	lbu	a5,41(a5)
	.loc 1 382 27
	andi	a5,a5,2
	.loc 1 382 6
	beq	a5,zero,.L32
	.loc 1 384 11
	li	a5,0
	j	.L30
.L32:
	.loc 1 388 8
	lw	a5,-88(s0)
	lw	a5,4(a5)
	.loc 1 388 19
	sw	zero,36(a5)
	.loc 1 392 15
	lw	a5,-88(s0)
	lw	a5,12(a5)
	.loc 1 392 26
	andi	a5,a5,192
	.loc 1 392 7
	ori	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 394 12
	lw	a5,-88(s0)
	lw	a5,20(a5)
	.loc 1 394 6
	bne	a5,zero,.L33
	.loc 1 394 29 discriminator 1
	lw	a5,-88(s0)
	lw	a5,16(a5)
	.loc 1 394 21 discriminator 1
	beq	a5,zero,.L34
.L33:
	.loc 1 396 8
	lw	a5,-20(s0)
	ori	a5,a5,8
	sw	a5,-20(s0)
.L34:
	.loc 1 399 8
	lw	a5,-88(s0)
	lw	a5,4(a5)
	.loc 1 399 19
	lw	a4,-20(s0)
	sw	a4,40(a5)
	.loc 1 402 7
	lw	a5,-88(s0)
	lw	a4,0(a5)
	li	a5,4096
	and	a5,a4,a5
	.loc 1 402 6
	bne	a5,zero,.L35
	.loc 1 402 31 discriminator 1
	lw	a5,-88(s0)
	lw	a4,0(a5)
	li	a5,32768
	and	a5,a4,a5
	bne	a5,zero,.L35
	.loc 1 402 58 discriminator 2
	lw	a5,-88(s0)
	lw	a4,0(a5)
	li	a5,16384
	and	a5,a4,a5
	bne	a5,zero,.L35
	.loc 1 403 28
	lw	a5,-88(s0)
	lw	a4,0(a5)
	li	a5,65536
	and	a5,a4,a5
	beq	a5,zero,.L36
.L35:
	.loc 1 405 9
	lw	a5,-88(s0)
	lw	a5,4(a5)
	.loc 1 405 14
	lw	a4,36(a5)
	.loc 1 405 9
	lw	a5,-88(s0)
	lw	a5,4(a5)
	.loc 1 405 20
	ori	a4,a4,8
	sw	a4,36(a5)
.L36:
	.loc 1 409 8
	lw	a5,-88(s0)
	lw	a5,24(a5)
	.loc 1 409 34
	sb	zero,4(a5)
	.loc 1 410 8
	lw	a5,-88(s0)
	lw	a5,24(a5)
	.loc 1 410 38
	sb	zero,5(a5)
	.loc 1 411 8
	lw	a5,-88(s0)
	lw	a5,24(a5)
	.loc 1 411 35
	sb	zero,6(a5)
	.loc 1 412 8
	lw	a5,-88(s0)
	lw	a5,24(a5)
	.loc 1 412 43
	sb	zero,7(a5)
	.loc 1 413 8
	lw	a5,-88(s0)
	lw	a5,24(a5)
	.loc 1 413 42
	sb	zero,8(a5)
	.loc 1 415 8
	lw	a5,-88(s0)
	lw	a5,24(a5)
	.loc 1 415 21
	sb	zero,40(a5)
	.loc 1 416 8
	lw	a5,-88(s0)
	lw	a5,24(a5)
	.loc 1 416 22
	sb	zero,41(a5)
	.loc 1 417 8
	lw	a5,-88(s0)
	lw	a5,24(a5)
	.loc 1 417 33
	sb	zero,37(a5)
	.loc 1 419 8
	lw	a5,-88(s0)
	lw	a5,24(a5)
	.loc 1 419 22
	li	a4,3
	sb	a4,41(a5)
	.loc 1 422 33
	lw	a5,-88(s0)
	lw	a5,8(a5)
	sw	a5,-72(s0)
	li	a5,1
	sw	a5,-76(s0)
.LBB15:
.LBB16:
	.loc 2 68 75
	lw	a5,-72(s0)
	slli	a4,a5,2
	.loc 2 67 82
	li	a5,-469762048
	add	a5,a4,a5
	.loc 2 66 26
	sw	a5,-80(s0)
	.loc 2 70 17
	lw	a5,-80(s0)
	lw	a4,-76(s0)
	sw	a4,0(a5)
	.loc 2 71 1
	nop
.LBE16:
.LBE15:
	.loc 1 425 37
	lw	a5,-88(s0)
	lw	a5,8(a5)
	sw	a5,-52(s0)
.LBB17:
.LBB18:
.LBB19:
	.loc 2 84 50
 #APP
# 84 "ae350_soc/driver/ae350/../../../ae350_soc/driver/ae350/../../../ae350_soc/driver/ae350/../../../ae350_soc/ae350/../../ae350_soc/ae350/../../ae350_soc/ae350/plic.h" 1
	csrr a5, 0xf14
# 0 "" 2
 #NO_APP
	sw	a5,-56(s0)
	.loc 2 84 100
	lw	a5,-56(s0)
.LBE19:
	.loc 2 84 16
	sw	a5,-60(s0)
	.loc 2 87 75
	lw	a5,-60(s0)
	slli	a4,a5,7
	.loc 2 88 75
	lw	a5,-52(s0)
	srli	a5,a5,5
	.loc 2 88 81
	slli	a5,a5,2
	.loc 2 87 81
	add	a4,a4,a5
	li	a5,-469753856
	add	a5,a4,a5
	.loc 2 85 26
	sw	a5,-64(s0)
	.loc 2 90 16
	lw	a5,-64(s0)
	lw	a5,0(a5)
	sw	a5,-68(s0)
	.loc 2 91 37
	lw	a5,-52(s0)
	andi	a5,a5,31
	.loc 2 91 26
	li	a4,1
	sll	a5,a4,a5
	mv	a4,a5
	.loc 2 91 11
	lw	a5,-68(s0)
	or	a5,a5,a4
	sw	a5,-68(s0)
	.loc 2 92 16
	lw	a5,-64(s0)
	lw	a4,-68(s0)
	sw	a4,0(a5)
	.loc 2 93 1
	nop
.LBE18:
.LBE17:
.LBB20:
	.loc 1 428 27
	li	a5,4096
	addi	a5,a5,-2048
 #APP
# 428 "ae350_soc/driver/ae350/uart_ae350.c" 1
	csrrs a5, 0x304, a5
# 0 "" 2
 #NO_APP
	sw	a5,-24(s0)
.LBE20:
.LBB21:
	.loc 1 431 27
 #APP
# 431 "ae350_soc/driver/ae350/uart_ae350.c" 1
	csrrs a5, 0x300, 8
# 0 "" 2
 #NO_APP
	sw	a5,-28(s0)
.LBE21:
	.loc 1 433 3
	j	.L29
.L24:
	.loc 1 436 10
	li	a5,-4
	j	.L30
.L29:
	.loc 1 439 9
	li	a5,0
.L30:
	.loc 1 440 1
	mv	a0,a5
	lw	ra,92(sp)
	.cfi_restore 1
	lw	s0,88(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE21:
	.size	uart_power_control, .-uart_power_control
	.section	.text.uart_send,"ax",@progbits
	.align	1
	.type	uart_send, @function
uart_send:
.LFB22:
	.loc 1 453 1
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
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	.loc 1 456 5
	lw	a5,-36(s0)
	beq	a5,zero,.L38
	.loc 1 456 20 discriminator 1
	lw	a5,-40(s0)
	bne	a5,zero,.L39
.L38:
	.loc 1 459 10
	li	a5,-5
	j	.L40
.L39:
	.loc 1 462 12
	lw	a5,-44(s0)
	lw	a5,24(a5)
	.loc 1 462 18
	lbu	a5,41(a5)
	.loc 1 462 26
	andi	a5,a5,4
	.loc 1 462 5
	bne	a5,zero,.L41
	.loc 1 465 10
	li	a5,-1
	j	.L40
.L41:
	.loc 1 468 11
	lw	a5,-44(s0)
	lw	a5,24(a5)
	.loc 1 468 23
	lbu	a5,37(a5)
	.loc 1 468 5
	beq	a5,zero,.L42
	.loc 1 471 10
	li	a5,-2
	j	.L40
.L42:
	.loc 1 475 7
	lw	a5,-44(s0)
	lw	a5,24(a5)
	.loc 1 475 32
	li	a4,1
	sb	a4,37(a5)
	.loc 1 478 7
	lw	a5,-44(s0)
	lw	a5,24(a5)
	.loc 1 478 27
	lw	a4,-36(s0)
	sw	a4,24(a5)
	.loc 1 479 7
	lw	a5,-44(s0)
	lw	a5,24(a5)
	.loc 1 479 27
	lw	a4,-40(s0)
	sw	a4,16(a5)
	.loc 1 480 7
	lw	a5,-44(s0)
	lw	a5,24(a5)
	.loc 1 480 27
	sw	zero,32(a5)
	.loc 1 483 11
	lw	a5,-44(s0)
	lw	a5,16(a5)
	.loc 1 483 5
	beq	a5,zero,.L43
	.loc 1 486 38
	lw	a5,-44(s0)
	lw	a5,16(a5)
	.loc 1 486 46
	lbu	a0,0(a5)
	.loc 1 486 10
	lw	a1,-36(s0)
	.loc 1 488 36
	lw	a5,-44(s0)
	lw	a5,4(a5)
	.loc 1 488 29
	addi	a5,a5,32
	.loc 1 486 10
	mv	a2,a5
	.loc 1 498 20
	lw	a5,-44(s0)
	lw	a5,16(a5)
	.loc 1 498 28
	lbu	a5,1(a5)
	.loc 1 498 38
	slli	a5,a5,4
	.loc 1 498 47
	andi	a4,a5,255
	.loc 1 501 22
	li	a5,-1073668096
	addi	a5,a5,1
	or	a5,a4,a5
	.loc 1 486 10
	mv	a4,a5
	.loc 1 503 17
	lw	a5,-44(s0)
	lw	a5,16(a5)
	.loc 1 503 25
	lw	a5,4(a5)
	.loc 1 486 10
	lw	a3,-40(s0)
	call	dma_channel_configure
	sw	a0,-24(s0)
	.loc 1 505 6
	lw	a4,-24(s0)
	li	a5,-1
	bne	a4,a5,.L44
	.loc 1 507 11
	li	a5,-1
	j	.L40
.L43:
	.loc 1 514 12
	lw	a5,-44(s0)
	lw	a5,4(a5)
	.loc 1 514 17
	lw	a5,52(a5)
	.loc 1 514 23
	andi	a5,a5,32
	.loc 1 514 6
	beq	a5,zero,.L45
	.loc 1 516 8
	li	a5,16
	sw	a5,-20(s0)
	.loc 1 517 10
	j	.L46
.L47:
	.loc 1 519 28
	lw	a5,-44(s0)
	lw	a5,24(a5)
	.loc 1 519 40
	lw	a3,24(a5)
	.loc 1 519 53
	lw	a5,-44(s0)
	lw	a4,24(a5)
	.loc 1 519 65
	lw	a5,32(a4)
	.loc 1 519 72
	addi	a2,a5,1
	sw	a2,32(a4)
	.loc 1 519 47
	add	a5,a3,a5
	lbu	a4,0(a5)
	.loc 1 519 10
	lw	a5,-44(s0)
	lw	a5,4(a5)
	.loc 1 519 21
	sw	a4,32(a5)
.L46:
	.loc 1 517 15
	lw	a5,-20(s0)
	addi	a4,a5,-1
	sw	a4,-20(s0)
	.loc 1 517 19
	beq	a5,zero,.L45
	.loc 1 517 28 discriminator 1
	lw	a5,-44(s0)
	lw	a5,24(a5)
	.loc 1 517 40 discriminator 1
	lw	a4,32(a5)
	.loc 1 517 56 discriminator 1
	lw	a5,-44(s0)
	lw	a5,24(a5)
	.loc 1 517 68 discriminator 1
	lw	a5,16(a5)
	.loc 1 517 19 discriminator 1
	bne	a4,a5,.L47
.L45:
	.loc 1 524 8
	lw	a5,-44(s0)
	lw	a5,4(a5)
	.loc 1 524 13
	lw	a4,36(a5)
	.loc 1 524 8
	lw	a5,-44(s0)
	lw	a5,4(a5)
	.loc 1 524 19
	ori	a4,a4,2
	sw	a4,36(a5)
.L44:
	.loc 1 527 9
	li	a5,0
.L40:
	.loc 1 528 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE22:
	.size	uart_send, .-uart_send
	.section	.text.uart_receive,"ax",@progbits
	.align	1
	.type	uart_receive, @function
uart_receive:
.LFB23:
	.loc 1 541 1
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
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	.loc 1 544 5
	lw	a5,-36(s0)
	beq	a5,zero,.L49
	.loc 1 544 20 discriminator 1
	lw	a5,-40(s0)
	bne	a5,zero,.L50
.L49:
	.loc 1 547 10
	li	a5,-5
	j	.L51
.L50:
	.loc 1 550 12
	lw	a5,-44(s0)
	lw	a5,24(a5)
	.loc 1 550 18
	lbu	a5,41(a5)
	.loc 1 550 26
	andi	a5,a5,4
	.loc 1 550 5
	bne	a5,zero,.L52
	.loc 1 553 10
	li	a5,-1
	j	.L51
.L52:
	.loc 1 557 11
	lw	a5,-44(s0)
	lw	a5,24(a5)
	.loc 1 557 28
	lbu	a4,4(a5)
	.loc 1 557 5
	li	a5,1
	bne	a4,a5,.L53
	.loc 1 559 10
	li	a5,-2
	j	.L51
.L53:
	.loc 1 563 7
	lw	a5,-44(s0)
	lw	a5,24(a5)
	.loc 1 563 33
	li	a4,1
	sb	a4,4(a5)
	.loc 1 566 7
	lw	a5,-44(s0)
	lw	a5,24(a5)
	.loc 1 566 27
	lw	a4,-40(s0)
	sw	a4,12(a5)
	.loc 1 569 7
	lw	a5,-44(s0)
	lw	a5,24(a5)
	.loc 1 569 34
	sb	zero,6(a5)
	.loc 1 570 7
	lw	a5,-44(s0)
	lw	a5,24(a5)
	.loc 1 570 42
	sb	zero,7(a5)
	.loc 1 571 7
	lw	a5,-44(s0)
	lw	a5,24(a5)
	.loc 1 571 37
	sb	zero,5(a5)
	.loc 1 572 7
	lw	a5,-44(s0)
	lw	a5,24(a5)
	.loc 1 572 41
	sb	zero,8(a5)
	.loc 1 575 7
	lw	a5,-44(s0)
	lw	a5,24(a5)
	.loc 1 575 27
	lw	a4,-36(s0)
	sw	a4,20(a5)
	.loc 1 576 7
	lw	a5,-44(s0)
	lw	a5,24(a5)
	.loc 1 576 27
	sw	zero,28(a5)
	.loc 1 579 11
	lw	a5,-44(s0)
	lw	a5,20(a5)
	.loc 1 579 5
	beq	a5,zero,.L54
	.loc 1 581 38
	lw	a5,-44(s0)
	lw	a5,20(a5)
	.loc 1 581 46
	lbu	a0,0(a5)
	.loc 1 582 34
	lw	a5,-44(s0)
	lw	a5,4(a5)
	.loc 1 582 28
	addi	a5,a5,32
	.loc 1 581 10
	mv	a1,a5
	lw	a2,-36(s0)
	.loc 1 593 20
	lw	a5,-44(s0)
	lw	a5,20(a5)
	.loc 1 593 28
	lbu	a5,1(a5)
	.loc 1 593 38
	slli	a4,a5,8
	.loc 1 593 47
	li	a5,4096
	addi	a5,a5,-256
	and	a4,a4,a5
	.loc 1 596 22
	li	a5,-1073577984
	addi	a5,a5,1
	or	a5,a4,a5
	.loc 1 581 10
	mv	a4,a5
	.loc 1 598 17
	lw	a5,-44(s0)
	lw	a5,20(a5)
	.loc 1 598 25
	lw	a5,4(a5)
	.loc 1 581 10
	lw	a3,-40(s0)
	call	dma_channel_configure
	sw	a0,-20(s0)
	.loc 1 600 6
	lw	a4,-20(s0)
	li	a5,-1
	bne	a4,a5,.L55
	.loc 1 602 11
	li	a5,-1
	j	.L51
.L54:
	.loc 1 609 8
	lw	a5,-44(s0)
	lw	a5,4(a5)
	.loc 1 609 13
	lw	a4,36(a5)
	.loc 1 609 8
	lw	a5,-44(s0)
	lw	a5,4(a5)
	.loc 1 609 19
	ori	a4,a4,1
	sw	a4,36(a5)
.L55:
	.loc 1 612 9
	li	a5,0
.L51:
	.loc 1 613 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE23:
	.size	uart_receive, .-uart_receive
	.section	.text.uart_transfer,"ax",@progbits
	.align	1
	.type	uart_transfer, @function
uart_transfer:
.LFB24:
	.loc 1 628 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	.loc 1 629 5
	lw	a5,-20(s0)
	beq	a5,zero,.L57
	.loc 1 629 24 discriminator 1
	lw	a5,-24(s0)
	beq	a5,zero,.L57
	.loc 1 629 45 discriminator 2
	lw	a5,-28(s0)
	bne	a5,zero,.L58
.L57:
	.loc 1 632 10
	li	a5,-5
	j	.L59
.L58:
	.loc 1 635 12
	lw	a5,-32(s0)
	lw	a5,24(a5)
	.loc 1 635 18
	lbu	a5,41(a5)
	.loc 1 635 26
	andi	a5,a5,4
	.loc 1 635 5
	bne	a5,zero,.L60
	.loc 1 638 10
	li	a5,-1
	j	.L59
.L60:
	.loc 1 642 9
	li	a5,-1
.L59:
	.loc 1 643 1
	mv	a0,a5
	lw	s0,28(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE24:
	.size	uart_transfer, .-uart_transfer
	.section	.text.uart_get_txcount,"ax",@progbits
	.align	1
	.type	uart_get_txcount, @function
uart_get_txcount:
.LFB25:
	.loc 1 652 1
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
	.loc 1 655 11
	lw	a5,-36(s0)
	lw	a5,16(a5)
	.loc 1 655 5
	beq	a5,zero,.L62
	.loc 1 657 37
	lw	a5,-36(s0)
	lw	a5,16(a5)
	.loc 1 657 45
	lbu	a5,0(a5)
	.loc 1 657 9
	mv	a0,a5
	call	dma_channel_get_count
	sw	a0,-20(s0)
	j	.L63
.L62:
	.loc 1 661 14
	lw	a5,-36(s0)
	lw	a5,24(a5)
	.loc 1 661 7
	lw	a5,32(a5)
	sw	a5,-20(s0)
.L63:
	.loc 1 664 9
	lw	a5,-20(s0)
	.loc 1 665 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE25:
	.size	uart_get_txcount, .-uart_get_txcount
	.section	.text.uart_get_rxcount,"ax",@progbits
	.align	1
	.type	uart_get_rxcount, @function
uart_get_rxcount:
.LFB26:
	.loc 1 674 1
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
	.loc 1 677 11
	lw	a5,-36(s0)
	lw	a5,20(a5)
	.loc 1 677 5
	beq	a5,zero,.L66
	.loc 1 679 37
	lw	a5,-36(s0)
	lw	a5,20(a5)
	.loc 1 679 45
	lbu	a5,0(a5)
	.loc 1 679 9
	mv	a0,a5
	call	dma_channel_get_count
	sw	a0,-20(s0)
	j	.L67
.L66:
	.loc 1 683 14
	lw	a5,-36(s0)
	lw	a5,24(a5)
	.loc 1 683 7
	lw	a5,28(a5)
	sw	a5,-20(s0)
.L67:
	.loc 1 686 9
	lw	a5,-20(s0)
	.loc 1 687 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE26:
	.size	uart_get_rxcount, .-uart_get_rxcount
	.section	.text.uart_control,"ax",@progbits
	.align	1
	.type	uart_control, @function
uart_control:
.LFB27:
	.loc 1 700 1
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
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	.loc 1 704 12
	lw	a5,-44(s0)
	lw	a5,24(a5)
	.loc 1 704 18
	lbu	a5,41(a5)
	.loc 1 704 26
	andi	a5,a5,2
	.loc 1 704 5
	bne	a5,zero,.L70
	.loc 1 707 10
	li	a5,-1
	j	.L71
.L70:
	.loc 1 710 6
	sw	zero,-24(s0)
	.loc 1 711 6
	sw	zero,-28(s0)
	.loc 1 713 18
	lw	a5,-36(s0)
	andi	a5,a5,255
	.loc 1 713 2
	addi	a5,a5,-21
	li	a4,5
	bgtu	a5,a4,.L134
	slli	a4,a5,2
	lla	a5,.L74
	add	a5,a4,a5
	lw	a4,0(a5)
	lla	a5,.L74
	add	a5,a4,a5
	jr	a5
	.section	.rodata.uart_control,"a",@progbits
	.align	2
	.align	2
.L74:
	.word	.L79-.L74
	.word	.L78-.L74
	.word	.L77-.L74
	.word	.L76-.L74
	.word	.L75-.L74
	.word	.L73-.L74
	.section	.text.uart_control
.L79:
	.loc 1 718 6
	lw	a5,-40(s0)
	beq	a5,zero,.L80
	.loc 1 720 9
	lw	a5,-44(s0)
	lw	a5,24(a5)
	.loc 1 720 15
	lbu	a4,41(a5)
	.loc 1 720 9
	lw	a5,-44(s0)
	lw	a5,24(a5)
	.loc 1 720 23
	ori	a4,a4,8
	andi	a4,a4,0xff
	sb	a4,41(a5)
	j	.L81
.L80:
	.loc 1 724 9
	lw	a5,-44(s0)
	lw	a5,24(a5)
	.loc 1 724 15
	lbu	a4,41(a5)
	.loc 1 724 9
	lw	a5,-44(s0)
	lw	a5,24(a5)
	.loc 1 724 23
	andi	a4,a4,-9
	andi	a4,a4,0xff
	sb	a4,41(a5)
.L81:
	.loc 1 727 10
	li	a5,0
	j	.L71
.L78:
	.loc 1 732 6
	lw	a5,-40(s0)
	beq	a5,zero,.L82
	.loc 1 734 9
	lw	a5,-44(s0)
	lw	a5,24(a5)
	.loc 1 734 15
	lbu	a4,41(a5)
	.loc 1 734 9
	lw	a5,-44(s0)
	lw	a5,24(a5)
	.loc 1 734 23
	ori	a4,a4,16
	andi	a4,a4,0xff
	sb	a4,41(a5)
	.loc 1 735 9
	lw	a5,-44(s0)
	lw	a5,4(a5)
	.loc 1 735 14
	lw	a4,36(a5)
	.loc 1 735 9
	lw	a5,-44(s0)
	lw	a5,4(a5)
	.loc 1 735 20
	ori	a4,a4,4
	sw	a4,36(a5)
	j	.L83
.L82:
	.loc 1 739 9
	lw	a5,-44(s0)
	lw	a5,24(a5)
	.loc 1 739 15
	lbu	a4,41(a5)
	.loc 1 739 9
	lw	a5,-44(s0)
	lw	a5,24(a5)
	.loc 1 739 23
	andi	a4,a4,-17
	andi	a4,a4,0xff
	sb	a4,41(a5)
	.loc 1 740 9
	lw	a5,-44(s0)
	lw	a5,4(a5)
	.loc 1 740 14
	lw	a4,36(a5)
	.loc 1 740 9
	lw	a5,-44(s0)
	lw	a5,4(a5)
	.loc 1 740 20
	andi	a4,a4,-5
	sw	a4,36(a5)
.L83:
	.loc 1 743 10
	li	a5,0
	j	.L71
.L77:
	.loc 1 747 6
	lw	a5,-40(s0)
	beq	a5,zero,.L84
	.loc 1 749 13
	lw	a5,-44(s0)
	lw	a5,24(a5)
	.loc 1 749 25
	lbu	a5,37(a5)
	.loc 1 749 7
	beq	a5,zero,.L85
	.loc 1 751 12
	li	a5,-2
	j	.L71
.L85:
	.loc 1 754 9
	lw	a5,-44(s0)
	lw	a5,4(a5)
	.loc 1 754 14
	lw	a4,44(a5)
	.loc 1 754 9
	lw	a5,-44(s0)
	lw	a5,4(a5)
	.loc 1 754 20
	ori	a4,a4,64
	sw	a4,44(a5)
	.loc 1 757 9
	lw	a5,-44(s0)
	lw	a5,24(a5)
	.loc 1 757 34
	li	a4,1
	sb	a4,37(a5)
	j	.L86
.L84:
	.loc 1 761 9
	lw	a5,-44(s0)
	lw	a5,4(a5)
	.loc 1 761 14
	lw	a4,44(a5)
	.loc 1 761 9
	lw	a5,-44(s0)
	lw	a5,4(a5)
	.loc 1 761 20
	andi	a4,a4,-65
	sw	a4,44(a5)
	.loc 1 764 9
	lw	a5,-44(s0)
	lw	a5,24(a5)
	.loc 1 764 34
	sb	zero,37(a5)
.L86:
	.loc 1 767 10
	li	a5,0
	j	.L71
.L76:
	.loc 1 772 8
	lw	a5,-44(s0)
	lw	a5,4(a5)
	.loc 1 772 13
	lw	a4,36(a5)
	.loc 1 772 8
	lw	a5,-44(s0)
	lw	a5,4(a5)
	.loc 1 772 19
	andi	a4,a4,-3
	sw	a4,36(a5)
	.loc 1 775 15
	lw	a5,-44(s0)
	lw	a5,12(a5)
	.loc 1 775 26
	andi	a5,a5,192
	.loc 1 775 7
	ori	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 776 12
	lw	a5,-44(s0)
	lw	a5,20(a5)
	.loc 1 776 6
	bne	a5,zero,.L87
	.loc 1 776 29 discriminator 1
	lw	a5,-44(s0)
	lw	a5,16(a5)
	.loc 1 776 21 discriminator 1
	beq	a5,zero,.L88
.L87:
	.loc 1 778 8
	lw	a5,-20(s0)
	ori	a5,a5,8
	sw	a5,-20(s0)
.L88:
	.loc 1 782 7
	lw	a5,-20(s0)
	ori	a5,a5,4
	sw	a5,-20(s0)
	.loc 1 783 8
	lw	a5,-44(s0)
	lw	a5,4(a5)
	.loc 1 783 19
	lw	a4,-20(s0)
	sw	a4,40(a5)
	.loc 1 786 13
	lw	a5,-44(s0)
	lw	a5,16(a5)
	.loc 1 786 6
	beq	a5,zero,.L89
	.loc 1 786 32 discriminator 1
	lw	a5,-44(s0)
	lw	a5,24(a5)
	.loc 1 786 44 discriminator 1
	lbu	a5,37(a5)
	.loc 1 786 23 discriminator 1
	beq	a5,zero,.L89
	.loc 1 788 30
	lw	a5,-44(s0)
	lw	a5,16(a5)
	.loc 1 788 38
	lbu	a5,0(a5)
	.loc 1 788 4
	mv	a0,a5
	call	dma_channel_disable
.L89:
	.loc 1 792 8
	lw	a5,-44(s0)
	lw	a5,24(a5)
	.loc 1 792 33
	sb	zero,37(a5)
	.loc 1 794 10
	li	a5,0
	j	.L71
.L75:
	.loc 1 799 8
	lw	a5,-44(s0)
	lw	a5,4(a5)
	.loc 1 799 13
	lw	a4,36(a5)
	.loc 1 799 8
	lw	a5,-44(s0)
	lw	a5,4(a5)
	.loc 1 799 19
	andi	a4,a4,-2
	sw	a4,36(a5)
	.loc 1 802 15
	lw	a5,-44(s0)
	lw	a5,12(a5)
	.loc 1 802 26
	andi	a5,a5,192
	.loc 1 802 7
	ori	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 803 12
	lw	a5,-44(s0)
	lw	a5,20(a5)
	.loc 1 803 6
	bne	a5,zero,.L90
	.loc 1 803 29 discriminator 1
	lw	a5,-44(s0)
	lw	a5,16(a5)
	.loc 1 803 21 discriminator 1
	beq	a5,zero,.L91
.L90:
	.loc 1 805 8
	lw	a5,-20(s0)
	ori	a5,a5,8
	sw	a5,-20(s0)
.L91:
	.loc 1 809 7
	lw	a5,-20(s0)
	ori	a5,a5,2
	sw	a5,-20(s0)
	.loc 1 810 8
	lw	a5,-44(s0)
	lw	a5,4(a5)
	.loc 1 810 19
	lw	a4,-20(s0)
	sw	a4,40(a5)
	.loc 1 813 13
	lw	a5,-44(s0)
	lw	a5,20(a5)
	.loc 1 813 6
	beq	a5,zero,.L92
	.loc 1 813 32 discriminator 1
	lw	a5,-44(s0)
	lw	a5,24(a5)
	.loc 1 813 49 discriminator 1
	lbu	a5,4(a5)
	.loc 1 813 23 discriminator 1
	beq	a5,zero,.L92
	.loc 1 815 30
	lw	a5,-44(s0)
	lw	a5,20(a5)
	.loc 1 815 38
	lbu	a5,0(a5)
	.loc 1 815 4
	mv	a0,a5
	call	dma_channel_disable
.L92:
	.loc 1 819 8
	lw	a5,-44(s0)
	lw	a5,24(a5)
	.loc 1 819 34
	sb	zero,4(a5)
	.loc 1 821 10
	li	a5,0
	j	.L71
.L73:
	.loc 1 826 8
	lw	a5,-44(s0)
	lw	a5,4(a5)
	.loc 1 826 13
	lw	a4,36(a5)
	.loc 1 826 8
	lw	a5,-44(s0)
	lw	a5,4(a5)
	.loc 1 826 19
	andi	a4,a4,-4
	sw	a4,36(a5)
	.loc 1 829 13
	lw	a5,-44(s0)
	lw	a5,16(a5)
	.loc 1 829 6
	beq	a5,zero,.L93
	.loc 1 829 32 discriminator 1
	lw	a5,-44(s0)
	lw	a5,24(a5)
	.loc 1 829 44 discriminator 1
	lbu	a5,37(a5)
	.loc 1 829 23 discriminator 1
	beq	a5,zero,.L93
	.loc 1 831 30
	lw	a5,-44(s0)
	lw	a5,16(a5)
	.loc 1 831 38
	lbu	a5,0(a5)
	.loc 1 831 4
	mv	a0,a5
	call	dma_channel_disable
.L93:
	.loc 1 834 13
	lw	a5,-44(s0)
	lw	a5,20(a5)
	.loc 1 834 6
	beq	a5,zero,.L94
	.loc 1 834 32 discriminator 1
	lw	a5,-44(s0)
	lw	a5,24(a5)
	.loc 1 834 49 discriminator 1
	lbu	a5,4(a5)
	.loc 1 834 23 discriminator 1
	beq	a5,zero,.L94
	.loc 1 836 30
	lw	a5,-44(s0)
	lw	a5,20(a5)
	.loc 1 836 38
	lbu	a5,0(a5)
	.loc 1 836 4
	mv	a0,a5
	call	dma_channel_disable
.L94:
	.loc 1 840 15
	lw	a5,-44(s0)
	lw	a5,12(a5)
	.loc 1 840 26
	andi	a5,a5,192
	.loc 1 840 7
	ori	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 841 12
	lw	a5,-44(s0)
	lw	a5,20(a5)
	.loc 1 841 6
	bne	a5,zero,.L95
	.loc 1 841 29 discriminator 1
	lw	a5,-44(s0)
	lw	a5,16(a5)
	.loc 1 841 21 discriminator 1
	beq	a5,zero,.L96
.L95:
	.loc 1 843 8
	lw	a5,-20(s0)
	ori	a5,a5,8
	sw	a5,-20(s0)
.L96:
	.loc 1 847 7
	lw	a5,-20(s0)
	ori	a5,a5,6
	sw	a5,-20(s0)
	.loc 1 848 8
	lw	a5,-44(s0)
	lw	a5,4(a5)
	.loc 1 848 19
	lw	a4,-20(s0)
	sw	a4,40(a5)
	.loc 1 851 8
	lw	a5,-44(s0)
	lw	a5,24(a5)
	.loc 1 851 34
	sb	zero,4(a5)
	.loc 1 852 8
	lw	a5,-44(s0)
	lw	a5,24(a5)
	.loc 1 852 33
	sb	zero,37(a5)
	.loc 1 854 10
	li	a5,0
	j	.L71
.L134:
	.loc 1 857 3
	nop
	.loc 1 860 18
	lw	a5,-36(s0)
	andi	a5,a5,255
	.loc 1 860 2
	li	a4,16
	beq	a5,a4,.L97
	li	a4,16
	bgtu	a5,a4,.L98
	li	a4,1
	beq	a5,a4,.L99
	beq	a5,zero,.L98
	addi	a4,a5,-2
	li	a5,4
	bgtu	a4,a5,.L98
	j	.L131
.L99:
	.loc 1 863 8
	li	a5,1
	sw	a5,-32(s0)
	.loc 1 864 3
	nop
	.loc 1 884 11
	lw	a5,-44(s0)
	lw	a5,24(a5)
	.loc 1 884 28
	lbu	a5,4(a5)
	.loc 1 884 5
	bne	a5,zero,.L102
	j	.L132
.L131:
	.loc 1 871 10
	li	a5,-7
	j	.L71
.L97:
	.loc 1 875 8
	lw	a5,-44(s0)
	lw	a5,24(a5)
	.loc 1 875 32
	lw	a4,-40(s0)
	andi	a4,a4,0xff
	sb	a4,36(a5)
	.loc 1 876 10
	li	a5,0
	j	.L71
.L98:
	.loc 1 880 10
	li	a5,-4
	j	.L71
.L132:
	.loc 1 885 11
	lw	a5,-44(s0)
	lw	a5,24(a5)
	.loc 1 885 23
	lbu	a5,37(a5)
	.loc 1 884 37 discriminator 1
	beq	a5,zero,.L103
.L102:
	.loc 1 887 10
	li	a5,-2
	j	.L71
.L103:
	.loc 1 891 18
	lw	a5,-36(s0)
	andi	a5,a5,1792
	.loc 1 891 2
	li	a4,1792
	beq	a5,a4,.L104
	li	a4,1792
	bgtu	a5,a4,.L105
	li	a4,1536
	beq	a5,a4,.L106
	li	a4,1536
	bgtu	a5,a4,.L105
	beq	a5,zero,.L107
	li	a4,1280
	bne	a5,a4,.L105
	.loc 1 895 3
	j	.L108
.L106:
	.loc 1 897 7
	lw	a5,-24(s0)
	ori	a5,a5,1
	sw	a5,-24(s0)
	.loc 1 898 3
	j	.L108
.L104:
	.loc 1 900 7
	lw	a5,-24(s0)
	ori	a5,a5,2
	sw	a5,-24(s0)
	.loc 1 901 3
	j	.L108
.L107:
	.loc 1 903 7
	lw	a5,-24(s0)
	ori	a5,a5,3
	sw	a5,-24(s0)
	.loc 1 904 3
	j	.L108
.L105:
	.loc 1 906 10
	li	a5,-9
	j	.L71
.L108:
	.loc 1 910 18
	lw	a4,-36(s0)
	li	a5,12288
	and	a5,a4,a5
	.loc 1 910 2
	li	a4,8192
	beq	a5,a4,.L109
	li	a4,8192
	bgtu	a5,a4,.L110
	beq	a5,zero,.L135
	li	a4,4096
	bne	a5,a4,.L110
	.loc 1 915 7
	lw	a5,-24(s0)
	ori	a5,a5,24
	sw	a5,-24(s0)
	.loc 1 916 3
	j	.L113
.L109:
	.loc 1 918 7
	lw	a5,-24(s0)
	ori	a5,a5,8
	sw	a5,-24(s0)
	.loc 1 919 3
	j	.L113
.L110:
	.loc 1 921 10
	li	a5,-10
	j	.L71
.L135:
	.loc 1 913 3
	nop
.L113:
	.loc 1 925 18
	lw	a4,-36(s0)
	li	a5,49152
	and	a5,a4,a5
	.loc 1 925 2
	beq	a5,zero,.L136
	li	a4,16384
	bne	a5,a4,.L133
	.loc 1 930 7
	lw	a5,-24(s0)
	ori	a5,a5,4
	sw	a5,-24(s0)
	.loc 1 931 3
	j	.L117
.L133:
	.loc 1 933 10
	li	a5,-11
	j	.L71
.L136:
	.loc 1 928 3
	nop
.L117:
	.loc 1 936 13
	lw	a5,-44(s0)
	lw	a5,4(a5)
	.loc 1 936 18
	lw	a5,48(a5)
	.loc 1 936 6
	andi	a5,a5,-33
	sw	a5,-28(s0)
	.loc 1 939 18
	lw	a4,-36(s0)
	li	a5,196608
	and	a5,a4,a5
	.loc 1 939 2
	li	a4,196608
	beq	a5,a4,.L118
	li	a4,196608
	bgtu	a5,a4,.L119
	li	a4,131072
	beq	a5,a4,.L120
	li	a4,131072
	bgtu	a5,a4,.L119
	beq	a5,zero,.L137
	li	a4,65536
	bne	a5,a4,.L119
	.loc 1 944 7
	lw	a5,-44(s0)
	lw	a5,0(a5)
	andi	a5,a5,128
	.loc 1 944 6
	beq	a5,zero,.L124
	.loc 1 946 8
	lw	a5,-28(s0)
	ori	a5,a5,32
	sw	a5,-28(s0)
	.loc 1 952 3
	j	.L123
.L124:
	.loc 1 950 11
	li	a5,-12
	j	.L71
.L120:
	.loc 1 954 7
	lw	a5,-44(s0)
	lw	a5,0(a5)
	andi	a5,a5,256
	.loc 1 954 6
	beq	a5,zero,.L126
	.loc 1 956 8
	lw	a5,-28(s0)
	ori	a5,a5,32
	sw	a5,-28(s0)
	.loc 1 962 3
	j	.L123
.L126:
	.loc 1 960 11
	li	a5,-12
	j	.L71
.L118:
	.loc 1 964 7
	lw	a5,-44(s0)
	lw	a5,0(a5)
	andi	a5,a5,128
	.loc 1 964 6
	beq	a5,zero,.L128
	.loc 1 964 44 discriminator 1
	lw	a5,-44(s0)
	lw	a5,0(a5)
	andi	a5,a5,256
	beq	a5,zero,.L128
	.loc 1 967 8
	lw	a5,-28(s0)
	ori	a5,a5,32
	sw	a5,-28(s0)
	.loc 1 973 3
	j	.L123
.L128:
	.loc 1 971 11
	li	a5,-12
	j	.L71
.L119:
	.loc 1 975 10
	li	a5,-12
	j	.L71
.L137:
	.loc 1 942 3
	nop
.L123:
	.loc 1 979 6
	lw	a1,-44(s0)
	lw	a0,-40(s0)
	call	uart_set_baudrate
	mv	a4,a0
	.loc 1 979 5 discriminator 1
	li	a5,-1
	bne	a4,a5,.L129
	.loc 1 981 10
	li	a5,-8
	j	.L71
.L129:
	.loc 1 985 7
	lw	a5,-44(s0)
	lw	a5,24(a5)
	.loc 1 985 20
	lw	a4,-32(s0)
	andi	a4,a4,0xff
	sb	a4,40(a5)
	.loc 1 988 26
	lw	a5,-44(s0)
	lw	a5,4(a5)
	.loc 1 988 31
	lw	a5,48(a5)
	.loc 1 988 37
	andi	a3,a5,-33
	.loc 1 988 7
	lw	a5,-44(s0)
	lw	a5,4(a5)
	.loc 1 988 46
	lw	a4,-28(s0)
	or	a4,a3,a4
	.loc 1 988 18
	sw	a4,48(a5)
	.loc 1 991 27
	lw	a5,-44(s0)
	lw	a5,4(a5)
	.loc 1 991 32
	lw	a5,44(a5)
	.loc 1 991 38
	andi	a3,a5,192
	.loc 1 991 7
	lw	a5,-44(s0)
	lw	a5,4(a5)
	.loc 1 991 55
	lw	a4,-24(s0)
	or	a4,a3,a4
	.loc 1 991 18
	sw	a4,44(a5)
	.loc 1 994 7
	lw	a5,-44(s0)
	lw	a5,24(a5)
	.loc 1 994 13
	lbu	a4,41(a5)
	.loc 1 994 7
	lw	a5,-44(s0)
	lw	a5,24(a5)
	.loc 1 994 21
	ori	a4,a4,4
	andi	a4,a4,0xff
	sb	a4,41(a5)
	.loc 1 996 9
	li	a5,0
.L71:
	.loc 1 997 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE27:
	.size	uart_control, .-uart_control
	.section	.text.uart_get_status,"ax",@progbits
	.align	1
	.type	uart_get_status, @function
uart_get_status:
.LFB28:
	.loc 1 1006 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,44(sp)
	.cfi_offset 8, -4
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	.loc 1 1009 23
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 1 1009 28
	lw	a5,52(a5)
	.loc 1 1009 34
	andi	a5,a5,64
	.loc 1 1009 48
	seqz	a5,a5
	andi	a5,a5,0xff
	andi	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 1009 15
	andi	a5,a5,1
	lbu	a4,-20(s0)
	andi	a4,a4,-2
	or	a5,a4,a5
	sb	a5,-20(s0)
	.loc 1 1010 22
	lw	a5,-36(s0)
	lw	a5,24(a5)
	.loc 1 1010 39
	lbu	a5,4(a5)
	andi	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 1010 15
	andi	a5,a5,1
	slli	a5,a5,1
	lbu	a4,-20(s0)
	andi	a4,a4,-3
	or	a5,a4,a5
	sb	a5,-20(s0)
	.loc 1 1011 20
	lbu	a5,-20(s0)
	andi	a5,a5,-5
	sb	a5,-20(s0)
	.loc 1 1012 26
	lw	a5,-36(s0)
	lw	a5,24(a5)
	.loc 1 1012 43
	lbu	a5,5(a5)
	andi	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 1012 19
	andi	a5,a5,1
	slli	a5,a5,3
	lbu	a4,-20(s0)
	andi	a4,a4,-9
	or	a5,a4,a5
	sb	a5,-20(s0)
	.loc 1 1013 23
	lw	a5,-36(s0)
	lw	a5,24(a5)
	.loc 1 1013 40
	lbu	a5,6(a5)
	andi	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 1013 16
	andi	a5,a5,1
	slli	a5,a5,4
	lbu	a4,-20(s0)
	andi	a4,a4,-17
	or	a5,a4,a5
	sb	a5,-20(s0)
	.loc 1 1014 31
	lw	a5,-36(s0)
	lw	a5,24(a5)
	.loc 1 1014 48
	lbu	a5,7(a5)
	andi	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 1014 24
	andi	a5,a5,1
	slli	a5,a5,5
	lbu	a4,-20(s0)
	andi	a4,a4,-33
	or	a5,a4,a5
	sb	a5,-20(s0)
	.loc 1 1015 30
	lw	a5,-36(s0)
	lw	a5,24(a5)
	.loc 1 1015 47
	lbu	a5,8(a5)
	andi	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 1015 23
	andi	a5,a5,1
	slli	a5,a5,6
	lbu	a4,-20(s0)
	andi	a4,a4,-65
	or	a5,a4,a5
	sb	a5,-20(s0)
	.loc 1 1017 9
	lw	a5,-20(s0)
	.loc 1 1018 1
	mv	a0,a5
	lw	s0,44(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE28:
	.size	uart_get_status, .-uart_get_status
	.section	.text.uart_set_modem_control,"ax",@progbits
	.align	1
	.type	uart_set_modem_control, @function
uart_set_modem_control:
.LFB29:
	.loc 1 1029 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	.loc 1 1030 12
	lw	a5,-24(s0)
	lw	a5,24(a5)
	.loc 1 1030 18
	lbu	a5,41(a5)
	.loc 1 1030 26
	andi	a5,a5,4
	.loc 1 1030 5
	bne	a5,zero,.L141
	.loc 1 1033 10
	li	a5,-1
	j	.L142
.L141:
	.loc 1 1036 5
	lw	a5,-20(s0)
	bne	a5,zero,.L143
	.loc 1 1038 7
	lw	a5,-24(s0)
	lw	a4,0(a5)
	li	a5,4096
	addi	a5,a5,-2048
	and	a5,a4,a5
	.loc 1 1038 6
	beq	a5,zero,.L144
	.loc 1 1040 9
	lw	a5,-24(s0)
	lw	a5,4(a5)
	.loc 1 1040 14
	lw	a4,48(a5)
	.loc 1 1040 9
	lw	a5,-24(s0)
	lw	a5,4(a5)
	.loc 1 1040 20
	andi	a4,a4,-3
	sw	a4,48(a5)
	j	.L143
.L144:
	.loc 1 1044 11
	li	a5,-4
	j	.L142
.L143:
	.loc 1 1048 5
	lw	a4,-20(s0)
	li	a5,1
	bne	a4,a5,.L145
	.loc 1 1050 7
	lw	a5,-24(s0)
	lw	a4,0(a5)
	li	a5,4096
	addi	a5,a5,-2048
	and	a5,a4,a5
	.loc 1 1050 6
	beq	a5,zero,.L146
	.loc 1 1052 9
	lw	a5,-24(s0)
	lw	a5,4(a5)
	.loc 1 1052 14
	lw	a4,48(a5)
	.loc 1 1052 9
	lw	a5,-24(s0)
	lw	a5,4(a5)
	.loc 1 1052 20
	ori	a4,a4,2
	sw	a4,48(a5)
	j	.L145
.L146:
	.loc 1 1056 11
	li	a5,-4
	j	.L142
.L145:
	.loc 1 1060 5
	lw	a4,-20(s0)
	li	a5,2
	bne	a4,a5,.L147
	.loc 1 1062 7
	lw	a5,-24(s0)
	lw	a4,0(a5)
	li	a5,8192
	and	a5,a4,a5
	.loc 1 1062 6
	beq	a5,zero,.L148
	.loc 1 1064 9
	lw	a5,-24(s0)
	lw	a5,4(a5)
	.loc 1 1064 14
	lw	a4,48(a5)
	.loc 1 1064 9
	lw	a5,-24(s0)
	lw	a5,4(a5)
	.loc 1 1064 20
	andi	a4,a4,-2
	sw	a4,48(a5)
	j	.L147
.L148:
	.loc 1 1068 11
	li	a5,-4
	j	.L142
.L147:
	.loc 1 1072 5
	lw	a4,-20(s0)
	li	a5,3
	bne	a4,a5,.L149
	.loc 1 1074 7
	lw	a5,-24(s0)
	lw	a4,0(a5)
	li	a5,8192
	and	a5,a4,a5
	.loc 1 1074 6
	beq	a5,zero,.L150
	.loc 1 1076 9
	lw	a5,-24(s0)
	lw	a5,4(a5)
	.loc 1 1076 14
	lw	a4,48(a5)
	.loc 1 1076 9
	lw	a5,-24(s0)
	lw	a5,4(a5)
	.loc 1 1076 20
	ori	a4,a4,1
	sw	a4,48(a5)
	j	.L149
.L150:
	.loc 1 1080 11
	li	a5,-4
	j	.L142
.L149:
	.loc 1 1084 9
	li	a5,0
.L142:
	.loc 1 1085 1
	mv	a0,a5
	lw	s0,28(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE29:
	.size	uart_set_modem_control, .-uart_set_modem_control
	.section	.text.uart_get_modem_status,"ax",@progbits
	.align	1
	.type	uart_get_modem_status, @function
uart_get_modem_status:
.LFB30:
	.loc 1 1094 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,44(sp)
	.cfi_offset 8, -4
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	.loc 1 1098 11
	lw	a5,-36(s0)
	lw	a5,24(a5)
	.loc 1 1098 17
	lbu	a5,41(a5)
	.loc 1 1098 25
	andi	a5,a5,4
	.loc 1 1098 5
	beq	a5,zero,.L152
	.loc 1 1100 14
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 1 1100 7
	lw	a5,56(a5)
	sw	a5,-20(s0)
	.loc 1 1102 7
	lw	a5,-36(s0)
	lw	a4,0(a5)
	li	a5,4096
	and	a5,a4,a5
	.loc 1 1102 6
	beq	a5,zero,.L153
	.loc 1 1104 42
	lw	a5,-20(s0)
	srli	a5,a5,4
	andi	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 1104 21
	andi	a5,a5,1
	lbu	a4,-24(s0)
	andi	a4,a4,-2
	or	a5,a4,a5
	sb	a5,-24(s0)
	j	.L154
.L153:
	.loc 1 1108 21
	lbu	a5,-24(s0)
	andi	a5,a5,-2
	sb	a5,-24(s0)
.L154:
	.loc 1 1111 7
	lw	a5,-36(s0)
	lw	a4,0(a5)
	li	a5,16384
	and	a5,a4,a5
	.loc 1 1111 6
	beq	a5,zero,.L155
	.loc 1 1113 42
	lw	a5,-20(s0)
	srli	a5,a5,5
	andi	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 1113 21
	andi	a5,a5,1
	slli	a5,a5,1
	lbu	a4,-24(s0)
	andi	a4,a4,-3
	or	a5,a4,a5
	sb	a5,-24(s0)
	j	.L156
.L155:
	.loc 1 1117 21
	lbu	a5,-24(s0)
	andi	a5,a5,-3
	sb	a5,-24(s0)
.L156:
	.loc 1 1120 7
	lw	a5,-36(s0)
	lw	a4,0(a5)
	li	a5,65536
	and	a5,a4,a5
	.loc 1 1120 6
	beq	a5,zero,.L157
	.loc 1 1122 41
	lw	a5,-20(s0)
	srli	a5,a5,6
	andi	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 1122 20
	andi	a5,a5,1
	slli	a5,a5,3
	lbu	a4,-24(s0)
	andi	a4,a4,-9
	or	a5,a4,a5
	sb	a5,-24(s0)
	j	.L158
.L157:
	.loc 1 1126 20
	lbu	a5,-24(s0)
	andi	a5,a5,-9
	sb	a5,-24(s0)
.L158:
	.loc 1 1129 7
	lw	a5,-36(s0)
	lw	a4,0(a5)
	li	a5,32768
	and	a5,a4,a5
	.loc 1 1129 6
	beq	a5,zero,.L159
	.loc 1 1131 42
	lw	a5,-20(s0)
	srli	a5,a5,7
	andi	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 1131 21
	andi	a5,a5,1
	slli	a5,a5,2
	lbu	a4,-24(s0)
	andi	a4,a4,-5
	or	a5,a4,a5
	sb	a5,-24(s0)
	j	.L160
.L159:
	.loc 1 1135 21
	lbu	a5,-24(s0)
	andi	a5,a5,-5
	sb	a5,-24(s0)
	j	.L160
.L152:
	.loc 1 1141 20
	lbu	a5,-24(s0)
	andi	a5,a5,-2
	sb	a5,-24(s0)
	.loc 1 1142 20
	lbu	a5,-24(s0)
	andi	a5,a5,-3
	sb	a5,-24(s0)
	.loc 1 1143 19
	lbu	a5,-24(s0)
	andi	a5,a5,-9
	sb	a5,-24(s0)
	.loc 1 1144 20
	lbu	a5,-24(s0)
	andi	a5,a5,-5
	sb	a5,-24(s0)
.L160:
	.loc 1 1147 9
	lw	a5,-24(s0)
	.loc 1 1148 1
	mv	a0,a5
	lw	s0,44(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE30:
	.size	uart_get_modem_status, .-uart_get_modem_status
	.section	.text.uart_irq_handler,"ax",@progbits
	.align	1
	.type	uart_irq_handler, @function
uart_irq_handler:
.LFB31:
	.loc 1 1156 1
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
	.loc 1 1159 8
	sw	zero,-20(s0)
	.loc 1 1160 13
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 1 1160 6
	lw	a5,40(a5)
	sw	a5,-32(s0)
	.loc 1 1162 11
	lw	a5,-32(s0)
	andi	a5,a5,1
	.loc 1 1162 5
	bne	a5,zero,.L163
	.loc 1 1165 12
	lw	a5,-32(s0)
	andi	a4,a5,15
	.loc 1 1165 6
	li	a5,2
	bne	a4,a5,.L164
	.loc 1 1167 8
	li	a5,16
	sw	a5,-24(s0)
	.loc 1 1168 10
	j	.L165
.L167:
	.loc 1 1171 28
	lw	a5,-36(s0)
	lw	a5,24(a5)
	.loc 1 1171 40
	lw	a4,24(a5)
	.loc 1 1171 53
	lw	a5,-36(s0)
	lw	a5,24(a5)
	.loc 1 1171 65
	lw	a5,32(a5)
	.loc 1 1171 47
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 1 1171 10
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 1 1171 21
	sw	a4,32(a5)
	.loc 1 1172 10
	lw	a5,-36(s0)
	lw	a5,24(a5)
	.loc 1 1172 22
	lw	a4,32(a5)
	.loc 1 1172 29
	addi	a4,a4,1
	sw	a4,32(a5)
.L165:
	.loc 1 1168 16
	lw	a5,-24(s0)
	addi	a4,a5,-1
	sw	a4,-24(s0)
	.loc 1 1168 20
	beq	a5,zero,.L166
	.loc 1 1168 29 discriminator 1
	lw	a5,-36(s0)
	lw	a5,24(a5)
	.loc 1 1168 41 discriminator 1
	lw	a4,16(a5)
	.loc 1 1168 57 discriminator 1
	lw	a5,-36(s0)
	lw	a5,24(a5)
	.loc 1 1168 69 discriminator 1
	lw	a5,32(a5)
	.loc 1 1168 20 discriminator 1
	bne	a4,a5,.L167
.L166:
	.loc 1 1176 13
	lw	a5,-36(s0)
	lw	a5,24(a5)
	.loc 1 1176 25
	lw	a4,16(a5)
	.loc 1 1176 41
	lw	a5,-36(s0)
	lw	a5,24(a5)
	.loc 1 1176 53
	lw	a5,32(a5)
	.loc 1 1176 7
	bne	a4,a5,.L164
	.loc 1 1179 10
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 1 1179 15
	lw	a4,36(a5)
	.loc 1 1179 10
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 1 1179 21
	andi	a4,a4,-3
	sw	a4,36(a5)
	.loc 1 1182 10
	lw	a5,-36(s0)
	lw	a5,24(a5)
	.loc 1 1182 35
	sb	zero,37(a5)
	.loc 1 1185 11
	lw	a5,-20(s0)
	ori	a5,a5,1
	sw	a5,-20(s0)
.L164:
	.loc 1 1190 12
	lw	a5,-32(s0)
	andi	a4,a5,15
	.loc 1 1190 6
	li	a5,6
	bne	a4,a5,.L168
	.loc 1 1192 13
	lw	a0,-36(s0)
	call	uart_rxline_irq_handler
	mv	a4,a0
	.loc 1 1192 10 discriminator 1
	lw	a5,-20(s0)
	or	a5,a5,a4
	sw	a5,-20(s0)
.L168:
	.loc 1 1196 13
	lw	a5,-32(s0)
	andi	a4,a5,15
	.loc 1 1196 6
	li	a5,4
	beq	a4,a5,.L169
	.loc 1 1197 10
	lw	a5,-32(s0)
	andi	a4,a5,15
	.loc 1 1196 30 discriminator 1
	li	a5,12
	bne	a4,a5,.L170
.L169:
	.loc 1 1199 17
	lw	a5,-36(s0)
	lw	a5,12(a5)
	.loc 1 1199 4
	li	a4,192
	beq	a5,a4,.L171
	li	a4,192
	bgtu	a5,a4,.L172
	li	a4,128
	beq	a5,a4,.L173
	li	a4,128
	bgtu	a5,a4,.L172
	beq	a5,zero,.L174
	li	a4,64
	beq	a5,a4,.L175
	j	.L172
.L174:
	.loc 1 1202 7
	li	a5,1
	sw	a5,-28(s0)
	.loc 1 1203 5
	j	.L176
.L175:
	.loc 1 1205 7
	li	a5,3
	sw	a5,-28(s0)
	.loc 1 1206 5
	j	.L176
.L173:
	.loc 1 1208 7
	li	a5,7
	sw	a5,-28(s0)
	.loc 1 1209 5
	j	.L176
.L171:
	.loc 1 1211 7
	li	a5,13
	sw	a5,-28(s0)
	.loc 1 1212 5
	j	.L176
.L172:
	.loc 1 1214 7
	li	a5,1
	sw	a5,-28(s0)
	.loc 1 1215 5
	nop
.L176:
	.loc 1 1219 10
	j	.L177
.L178:
	.loc 1 1222 14
	lw	a0,-36(s0)
	call	uart_rxline_irq_handler
	mv	a4,a0
	.loc 1 1222 11 discriminator 1
	lw	a5,-20(s0)
	or	a5,a5,a4
	sw	a5,-20(s0)
	.loc 1 1225 63
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 1 1225 68
	lw	a3,32(a5)
	.loc 1 1225 10
	lw	a5,-36(s0)
	lw	a5,24(a5)
	.loc 1 1225 22
	lw	a4,20(a5)
	.loc 1 1225 35
	lw	a5,-36(s0)
	lw	a5,24(a5)
	.loc 1 1225 47
	lw	a5,28(a5)
	.loc 1 1225 29
	add	a5,a4,a5
	.loc 1 1225 56
	andi	a4,a3,0xff
	sb	a4,0(a5)
	.loc 1 1227 10
	lw	a5,-36(s0)
	lw	a5,24(a5)
	.loc 1 1227 22
	lw	a4,28(a5)
	.loc 1 1227 29
	addi	a4,a4,1
	sw	a4,28(a5)
	.loc 1 1230 14
	lw	a5,-36(s0)
	lw	a5,24(a5)
	.loc 1 1230 26
	lw	a4,28(a5)
	.loc 1 1230 42
	lw	a5,-36(s0)
	lw	a5,24(a5)
	.loc 1 1230 54
	lw	a5,12(a5)
	.loc 1 1230 8
	bne	a4,a5,.L177
	.loc 1 1233 11
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 1 1233 16
	lw	a4,36(a5)
	.loc 1 1233 11
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 1 1233 22
	andi	a4,a4,-2
	sw	a4,36(a5)
	.loc 1 1236 11
	lw	a5,-36(s0)
	lw	a5,24(a5)
	.loc 1 1236 37
	sb	zero,4(a5)
	.loc 1 1237 12
	lw	a5,-20(s0)
	ori	a5,a5,2
	sw	a5,-20(s0)
	.loc 1 1239 6
	j	.L170
.L177:
	.loc 1 1219 17
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 1 1219 22
	lw	a5,52(a5)
	.loc 1 1219 28
	andi	a5,a5,1
	.loc 1 1219 35
	beq	a5,zero,.L170
	.loc 1 1219 40 discriminator 1
	lw	a5,-28(s0)
	addi	a4,a5,-1
	sw	a4,-28(s0)
	.loc 1 1219 35 discriminator 1
	bne	a5,zero,.L178
.L170:
	.loc 1 1245 12
	lw	a5,-32(s0)
	andi	a4,a5,15
	.loc 1 1245 6
	li	a5,12
	bne	a4,a5,.L179
	.loc 1 1248 13
	lw	a5,-36(s0)
	lw	a5,24(a5)
	.loc 1 1248 25
	lw	a4,28(a5)
	.loc 1 1248 41
	lw	a5,-36(s0)
	lw	a5,24(a5)
	.loc 1 1248 53
	lw	a5,12(a5)
	.loc 1 1248 7
	beq	a4,a5,.L179
	.loc 1 1250 11
	lw	a5,-20(s0)
	ori	a5,a5,64
	sw	a5,-20(s0)
.L179:
	.loc 1 1255 12
	lw	a5,-32(s0)
	andi	a5,a5,15
	.loc 1 1255 6
	bne	a5,zero,.L163
	.loc 1 1258 15
	lw	a5,-36(s0)
	lw	a5,4(a5)
	.loc 1 1258 8
	lw	a5,56(a5)
	sw	a5,-24(s0)
	.loc 1 1261 8
	lw	a5,-36(s0)
	lw	a4,0(a5)
	li	a5,4096
	and	a5,a4,a5
	.loc 1 1261 7
	beq	a5,zero,.L180
	.loc 1 1261 42 discriminator 1
	lw	a5,-24(s0)
	andi	a5,a5,1
	.loc 1 1261 34 discriminator 1
	beq	a5,zero,.L180
	.loc 1 1263 11
	lw	a5,-20(s0)
	ori	a5,a5,1024
	sw	a5,-20(s0)
.L180:
	.loc 1 1267 8
	lw	a5,-36(s0)
	lw	a4,0(a5)
	li	a5,16384
	and	a5,a4,a5
	.loc 1 1267 7
	beq	a5,zero,.L181
	.loc 1 1267 42 discriminator 1
	lw	a5,-24(s0)
	andi	a5,a5,2
	.loc 1 1267 34 discriminator 1
	beq	a5,zero,.L181
	.loc 1 1269 11
	lw	a4,-20(s0)
	li	a5,4096
	addi	a5,a5,-2048
	or	a5,a4,a5
	sw	a5,-20(s0)
.L181:
	.loc 1 1273 8
	lw	a5,-36(s0)
	lw	a4,0(a5)
	li	a5,65536
	and	a5,a4,a5
	.loc 1 1273 7
	beq	a5,zero,.L182
	.loc 1 1273 41 discriminator 1
	lw	a5,-24(s0)
	andi	a5,a5,4
	.loc 1 1273 33 discriminator 1
	beq	a5,zero,.L182
	.loc 1 1275 11
	lw	a4,-20(s0)
	li	a5,8192
	or	a5,a4,a5
	sw	a5,-20(s0)
.L182:
	.loc 1 1279 8
	lw	a5,-36(s0)
	lw	a4,0(a5)
	li	a5,32768
	and	a5,a4,a5
	.loc 1 1279 7
	beq	a5,zero,.L163
	.loc 1 1279 42 discriminator 1
	lw	a5,-24(s0)
	andi	a5,a5,8
	.loc 1 1279 34 discriminator 1
	beq	a5,zero,.L163
	.loc 1 1281 11
	lw	a4,-20(s0)
	li	a5,4096
	or	a5,a4,a5
	sw	a5,-20(s0)
.L163:
	.loc 1 1287 12
	lw	a5,-36(s0)
	lw	a5,24(a5)
	.loc 1 1287 18
	lw	a5,0(a5)
	.loc 1 1287 5
	beq	a5,zero,.L184
	.loc 1 1287 37 discriminator 1
	lw	a5,-20(s0)
	beq	a5,zero,.L184
	.loc 1 1289 8
	lw	a5,-36(s0)
	lw	a5,24(a5)
	.loc 1 1289 14
	lw	a5,0(a5)
	.loc 1 1289 3
	lw	a0,-20(s0)
	jalr	a5
.LVL0:
.L184:
	.loc 1 1291 1
	nop
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE31:
	.size	uart_irq_handler, .-uart_irq_handler
	.section	.text.uart1_get_capabilities,"ax",@progbits
	.align	1
	.type	uart1_get_capabilities, @function
uart1_get_capabilities:
.LFB32:
	.loc 1 1364 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 1365 9
	lla	a0,uart1_resources
	call	uart_get_capabilities
	mv	a5,a0
	.loc 1 1366 1
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
.LFE32:
	.size	uart1_get_capabilities, .-uart1_get_capabilities
	.section	.text.uart1_initialize,"ax",@progbits
	.align	1
	.type	uart1_initialize, @function
uart1_initialize:
.LFB33:
	.loc 1 1369 1
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
	.loc 1 1370 9
	lla	a1,uart1_resources
	lw	a0,-20(s0)
	call	uart_initialize
	mv	a5,a0
	.loc 1 1371 1
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
.LFE33:
	.size	uart1_initialize, .-uart1_initialize
	.section	.text.uart1_uninitialize,"ax",@progbits
	.align	1
	.type	uart1_uninitialize, @function
uart1_uninitialize:
.LFB34:
	.loc 1 1374 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 1375 9
	lla	a0,uart1_resources
	call	uart_uninitialize
	mv	a5,a0
	.loc 1 1376 1
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
.LFE34:
	.size	uart1_uninitialize, .-uart1_uninitialize
	.section	.text.uart1_power_control,"ax",@progbits
	.align	1
	.type	uart1_power_control, @function
uart1_power_control:
.LFB35:
	.loc 1 1379 1
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
	.loc 1 1380 9
	lla	a1,uart1_resources
	lw	a0,-20(s0)
	call	uart_power_control
	mv	a5,a0
	.loc 1 1381 1
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
.LFE35:
	.size	uart1_power_control, .-uart1_power_control
	.section	.text.uart1_send,"ax",@progbits
	.align	1
	.type	uart1_send, @function
uart1_send:
.LFB36:
	.loc 1 1384 1
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
	.loc 1 1385 9
	lla	a2,uart1_resources
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	uart_send
	mv	a5,a0
	.loc 1 1386 1
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
.LFE36:
	.size	uart1_send, .-uart1_send
	.section	.text.uart1_receive,"ax",@progbits
	.align	1
	.type	uart1_receive, @function
uart1_receive:
.LFB37:
	.loc 1 1389 1
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
	.loc 1 1390 9
	lla	a2,uart1_resources
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	uart_receive
	mv	a5,a0
	.loc 1 1391 1
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
	.size	uart1_receive, .-uart1_receive
	.section	.text.uart1_transfer,"ax",@progbits
	.align	1
	.type	uart1_transfer, @function
uart1_transfer:
.LFB38:
	.loc 1 1394 1
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
	.loc 1 1395 9
	lla	a3,uart1_resources
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	uart_transfer
	mv	a5,a0
	.loc 1 1396 1
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
.LFE38:
	.size	uart1_transfer, .-uart1_transfer
	.section	.text.uart1_get_txcount,"ax",@progbits
	.align	1
	.type	uart1_get_txcount, @function
uart1_get_txcount:
.LFB39:
	.loc 1 1399 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 1400 9
	lla	a0,uart1_resources
	call	uart_get_txcount
	mv	a5,a0
	.loc 1 1401 1
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
.LFE39:
	.size	uart1_get_txcount, .-uart1_get_txcount
	.section	.text.uart1_get_rxcount,"ax",@progbits
	.align	1
	.type	uart1_get_rxcount, @function
uart1_get_rxcount:
.LFB40:
	.loc 1 1404 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 1405 9
	lla	a0,uart1_resources
	call	uart_get_rxcount
	mv	a5,a0
	.loc 1 1406 1
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
.LFE40:
	.size	uart1_get_rxcount, .-uart1_get_rxcount
	.section	.text.uart1_control,"ax",@progbits
	.align	1
	.type	uart1_control, @function
uart1_control:
.LFB41:
	.loc 1 1409 1
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
	.loc 1 1410 9
	lla	a2,uart1_resources
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	uart_control
	mv	a5,a0
	.loc 1 1411 1
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
	.size	uart1_control, .-uart1_control
	.section	.text.uart1_get_status,"ax",@progbits
	.align	1
	.type	uart1_get_status, @function
uart1_get_status:
.LFB42:
	.loc 1 1414 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 1415 9
	lla	a0,uart1_resources
	call	uart_get_status
	mv	a5,a0
	.loc 1 1416 1
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
.LFE42:
	.size	uart1_get_status, .-uart1_get_status
	.section	.text.uart1_set_modem_control,"ax",@progbits
	.align	1
	.type	uart1_set_modem_control, @function
uart1_set_modem_control:
.LFB43:
	.loc 1 1419 1
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
	.loc 1 1420 9
	lla	a1,uart1_resources
	lw	a0,-20(s0)
	call	uart_set_modem_control
	mv	a5,a0
	.loc 1 1421 1
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
	.size	uart1_set_modem_control, .-uart1_set_modem_control
	.section	.text.uart1_get_modem_status,"ax",@progbits
	.align	1
	.type	uart1_get_modem_status, @function
uart1_get_modem_status:
.LFB44:
	.loc 1 1424 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 1425 9
	lla	a0,uart1_resources
	call	uart_get_modem_status
	mv	a5,a0
	.loc 1 1426 1
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
	.size	uart1_get_modem_status, .-uart1_get_modem_status
	.section	.text.uart1_irq_handler,"ax",@progbits
	.align	1
	.globl	uart1_irq_handler
	.type	uart1_irq_handler, @function
uart1_irq_handler:
.LFB45:
	.loc 1 1444 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 1445 2
	lla	a0,uart1_resources
	call	uart_irq_handler
	.loc 1 1446 1
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
.LFE45:
	.size	uart1_irq_handler, .-uart1_irq_handler
	.globl	Driver_UART1
	.section	.rodata.Driver_UART1,"a"
	.align	2
	.type	Driver_UART1, @object
	.size	Driver_UART1, 56
Driver_UART1:
	.word	uart_get_version
	.word	uart1_get_capabilities
	.word	uart1_initialize
	.word	uart1_uninitialize
	.word	uart1_power_control
	.word	uart1_send
	.word	uart1_receive
	.word	uart1_transfer
	.word	uart1_get_txcount
	.word	uart1_get_rxcount
	.word	uart1_control
	.word	uart1_get_status
	.word	uart1_set_modem_control
	.word	uart1_get_modem_status
	.section	.text.uart2_get_capabilities,"ax",@progbits
	.align	1
	.type	uart2_get_capabilities, @function
uart2_get_capabilities:
.LFB46:
	.loc 1 1476 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 1477 9
	lla	a0,uart2_resources
	call	uart_get_capabilities
	mv	a5,a0
	.loc 1 1478 1
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
	.size	uart2_get_capabilities, .-uart2_get_capabilities
	.section	.text.uart2_initialize,"ax",@progbits
	.align	1
	.type	uart2_initialize, @function
uart2_initialize:
.LFB47:
	.loc 1 1481 1
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
	.loc 1 1482 9
	lla	a1,uart2_resources
	lw	a0,-20(s0)
	call	uart_initialize
	mv	a5,a0
	.loc 1 1483 1
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
.LFE47:
	.size	uart2_initialize, .-uart2_initialize
	.section	.text.uart2_uninitialize,"ax",@progbits
	.align	1
	.type	uart2_uninitialize, @function
uart2_uninitialize:
.LFB48:
	.loc 1 1486 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 1487 9
	lla	a0,uart2_resources
	call	uart_uninitialize
	mv	a5,a0
	.loc 1 1488 1
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
.LFE48:
	.size	uart2_uninitialize, .-uart2_uninitialize
	.section	.text.uart2_power_control,"ax",@progbits
	.align	1
	.type	uart2_power_control, @function
uart2_power_control:
.LFB49:
	.loc 1 1491 1
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
	.loc 1 1492 9
	lla	a1,uart2_resources
	lw	a0,-20(s0)
	call	uart_power_control
	mv	a5,a0
	.loc 1 1493 1
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
.LFE49:
	.size	uart2_power_control, .-uart2_power_control
	.section	.text.uart2_send,"ax",@progbits
	.align	1
	.type	uart2_send, @function
uart2_send:
.LFB50:
	.loc 1 1495 1
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
	.loc 1 1496 9
	lla	a2,uart2_resources
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	uart_send
	mv	a5,a0
	.loc 1 1497 1
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
.LFE50:
	.size	uart2_send, .-uart2_send
	.section	.text.uart2_receive,"ax",@progbits
	.align	1
	.type	uart2_receive, @function
uart2_receive:
.LFB51:
	.loc 1 1500 1
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
	.loc 1 1501 9
	lla	a2,uart2_resources
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	uart_receive
	mv	a5,a0
	.loc 1 1502 1
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
.LFE51:
	.size	uart2_receive, .-uart2_receive
	.section	.text.uart2_transfer,"ax",@progbits
	.align	1
	.type	uart2_transfer, @function
uart2_transfer:
.LFB52:
	.loc 1 1505 1
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
	.loc 1 1506 9
	lla	a3,uart2_resources
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	uart_transfer
	mv	a5,a0
	.loc 1 1507 1
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
.LFE52:
	.size	uart2_transfer, .-uart2_transfer
	.section	.text.uart2_get_txcount,"ax",@progbits
	.align	1
	.type	uart2_get_txcount, @function
uart2_get_txcount:
.LFB53:
	.loc 1 1510 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 1511 9
	lla	a0,uart2_resources
	call	uart_get_txcount
	mv	a5,a0
	.loc 1 1512 1
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
.LFE53:
	.size	uart2_get_txcount, .-uart2_get_txcount
	.section	.text.uart2_get_rxcount,"ax",@progbits
	.align	1
	.type	uart2_get_rxcount, @function
uart2_get_rxcount:
.LFB54:
	.loc 1 1515 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 1516 9
	lla	a0,uart2_resources
	call	uart_get_rxcount
	mv	a5,a0
	.loc 1 1517 1
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
.LFE54:
	.size	uart2_get_rxcount, .-uart2_get_rxcount
	.section	.text.uart2_control,"ax",@progbits
	.align	1
	.type	uart2_control, @function
uart2_control:
.LFB55:
	.loc 1 1520 1
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
	.loc 1 1521 9
	lla	a2,uart2_resources
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	uart_control
	mv	a5,a0
	.loc 1 1522 1
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
.LFE55:
	.size	uart2_control, .-uart2_control
	.section	.text.uart2_get_status,"ax",@progbits
	.align	1
	.type	uart2_get_status, @function
uart2_get_status:
.LFB56:
	.loc 1 1525 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 1526 9
	lla	a0,uart2_resources
	call	uart_get_status
	mv	a5,a0
	.loc 1 1527 1
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
.LFE56:
	.size	uart2_get_status, .-uart2_get_status
	.section	.text.uart2_set_modem_control,"ax",@progbits
	.align	1
	.type	uart2_set_modem_control, @function
uart2_set_modem_control:
.LFB57:
	.loc 1 1530 1
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
	.loc 1 1531 9
	lla	a1,uart2_resources
	lw	a0,-20(s0)
	call	uart_set_modem_control
	mv	a5,a0
	.loc 1 1532 1
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
.LFE57:
	.size	uart2_set_modem_control, .-uart2_set_modem_control
	.section	.text.uart2_get_modem_status,"ax",@progbits
	.align	1
	.type	uart2_get_modem_status, @function
uart2_get_modem_status:
.LFB58:
	.loc 1 1535 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 1536 9
	lla	a0,uart2_resources
	call	uart_get_modem_status
	mv	a5,a0
	.loc 1 1537 1
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
.LFE58:
	.size	uart2_get_modem_status, .-uart2_get_modem_status
	.section	.text.uart2_irq_handler,"ax",@progbits
	.align	1
	.globl	uart2_irq_handler
	.type	uart2_irq_handler, @function
uart2_irq_handler:
.LFB59:
	.loc 1 1555 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 1556 2
	lla	a0,uart2_resources
	call	uart_irq_handler
	.loc 1 1557 1
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
.LFE59:
	.size	uart2_irq_handler, .-uart2_irq_handler
	.globl	Driver_UART2
	.section	.rodata.Driver_UART2,"a"
	.align	2
	.type	Driver_UART2, @object
	.size	Driver_UART2, 56
Driver_UART2:
	.word	uart_get_version
	.word	uart2_get_capabilities
	.word	uart2_initialize
	.word	uart2_uninitialize
	.word	uart2_power_control
	.word	uart2_send
	.word	uart2_receive
	.word	uart2_transfer
	.word	uart2_get_txcount
	.word	uart2_get_rxcount
	.word	uart2_control
	.word	uart2_get_status
	.word	uart2_set_modem_control
	.word	uart2_get_modem_status
	.text
.Letext0:
	.file 3 "/home/lc/tools/riscv32-unknown-elf/lib/gcc/riscv32-unknown-elf/13.2.0/include/stdint-gcc.h"
	.file 4 "ae350_soc/driver/ae350/../../../ae350_soc/driver/ae350/../../../ae350_soc/driver/include/../../../ae350_soc/driver/include/Driver_Common.h"
	.file 5 "ae350_soc/driver/ae350/../../../ae350_soc/driver/ae350/../../../ae350_soc/driver/include/Driver_UART.h"
	.file 6 "ae350_soc/driver/ae350/../../../ae350_soc/driver/ae350/../../../ae350_soc/driver/ae350/../../../ae350_soc/ae350/../../ae350_soc/ae350/ae350.h"
	.file 7 "ae350_soc/driver/ae350/../../../ae350_soc/driver/ae350/../../../ae350_soc/driver/ae350/dma_ae350.h"
	.file 8 "ae350_soc/driver/ae350/../../../ae350_soc/driver/ae350/uart_ae350.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x135d
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x2c
	.4byte	.LASF1532
	.byte	0x1d
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x2d
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xb
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1350
	.uleb128 0x2e
	.4byte	0x31
	.uleb128 0x17
	.4byte	0x38
	.uleb128 0xb
	.byte	0x8
	.byte	0x5
	.4byte	.LASF1351
	.uleb128 0xb
	.byte	0x10
	.byte	0x4
	.4byte	.LASF1352
	.uleb128 0xb
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1353
	.uleb128 0xb
	.byte	0x2
	.byte	0x5
	.4byte	.LASF1354
	.uleb128 0x7
	.4byte	.LASF1356
	.byte	0x3
	.byte	0x28
	.byte	0x12
	.4byte	0x6a
	.uleb128 0xb
	.byte	0x4
	.byte	0x5
	.4byte	.LASF1355
	.uleb128 0x7
	.4byte	.LASF1357
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x7d
	.uleb128 0xb
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1358
	.uleb128 0x7
	.4byte	.LASF1359
	.byte	0x3
	.byte	0x31
	.byte	0x1c
	.4byte	0x90
	.uleb128 0xb
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1360
	.uleb128 0x7
	.4byte	.LASF1361
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0xa3
	.uleb128 0xb
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1362
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.4byte	.LASF1363
	.uleb128 0xd
	.4byte	.LASF1369
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x10
	.4byte	0xd9
	.uleb128 0xe
	.string	"api"
	.byte	0x4
	.byte	0x1e
	.byte	0xb
	.4byte	0x84
	.byte	0
	.uleb128 0xe
	.string	"drv"
	.byte	0x4
	.byte	0x1f
	.byte	0xb
	.4byte	0x84
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.4byte	.LASF1364
	.byte	0x4
	.byte	0x20
	.byte	0x3
	.4byte	0xb1
	.uleb128 0x17
	.4byte	0xd9
	.uleb128 0x1f
	.4byte	.LASF1379
	.4byte	0x31
	.byte	0x4
	.byte	0x2e
	.4byte	0x10c
	.uleb128 0x12
	.4byte	.LASF1365
	.byte	0
	.uleb128 0x12
	.4byte	.LASF1366
	.byte	0x1
	.uleb128 0x12
	.4byte	.LASF1367
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.4byte	.LASF1368
	.byte	0x4
	.byte	0x33
	.byte	0x3
	.4byte	0xea
	.uleb128 0xd
	.4byte	.LASF1370
	.byte	0x4
	.byte	0x5
	.byte	0x6c
	.byte	0x10
	.4byte	0x173
	.uleb128 0x3
	.4byte	.LASF1371
	.byte	0x6e
	.4byte	0x97
	.byte	0
	.uleb128 0x3
	.4byte	.LASF1372
	.byte	0x6f
	.4byte	0x97
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF1373
	.byte	0x70
	.4byte	0x97
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF1374
	.byte	0x71
	.4byte	0x97
	.byte	0x3
	.uleb128 0x3
	.4byte	.LASF1375
	.byte	0x72
	.4byte	0x97
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF1376
	.byte	0x73
	.4byte	0x97
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF1377
	.byte	0x74
	.4byte	0x97
	.byte	0x6
	.byte	0
	.uleb128 0x7
	.4byte	.LASF1378
	.byte	0x5
	.byte	0x75
	.byte	0x3
	.4byte	0x118
	.uleb128 0x1f
	.4byte	.LASF1380
	.4byte	0x31
	.byte	0x5
	.byte	0x7a
	.4byte	0x1a7
	.uleb128 0x12
	.4byte	.LASF1381
	.byte	0
	.uleb128 0x12
	.4byte	.LASF1382
	.byte	0x1
	.uleb128 0x12
	.4byte	.LASF1383
	.byte	0x2
	.uleb128 0x12
	.4byte	.LASF1384
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.4byte	.LASF1385
	.byte	0x5
	.byte	0x80
	.byte	0x3
	.4byte	0x17f
	.uleb128 0xd
	.4byte	.LASF1386
	.byte	0x4
	.byte	0x5
	.byte	0x85
	.byte	0x10
	.4byte	0x1ec
	.uleb128 0xc
	.string	"cts"
	.byte	0x87
	.4byte	0x97
	.byte	0
	.uleb128 0xc
	.string	"dsr"
	.byte	0x88
	.4byte	0x97
	.byte	0x1
	.uleb128 0xc
	.string	"dcd"
	.byte	0x89
	.4byte	0x97
	.byte	0x2
	.uleb128 0xc
	.string	"ri"
	.byte	0x8a
	.4byte	0x97
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.4byte	.LASF1387
	.byte	0x5
	.byte	0x8b
	.byte	0x3
	.4byte	0x1b3
	.uleb128 0x7
	.4byte	.LASF1388
	.byte	0x5
	.byte	0xa6
	.byte	0x10
	.4byte	0x204
	.uleb128 0x5
	.4byte	0x209
	.uleb128 0x2f
	.4byte	0x214
	.uleb128 0x6
	.4byte	0x97
	.byte	0
	.uleb128 0xd
	.4byte	.LASF1389
	.byte	0x4
	.byte	0x5
	.byte	0xac
	.byte	0x10
	.4byte	0x308
	.uleb128 0x3
	.4byte	.LASF1390
	.byte	0xae
	.4byte	0x97
	.byte	0
	.uleb128 0x3
	.4byte	.LASF1391
	.byte	0xaf
	.4byte	0x97
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF1392
	.byte	0xb0
	.4byte	0x97
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF1393
	.byte	0xb1
	.4byte	0x97
	.byte	0x3
	.uleb128 0x3
	.4byte	.LASF1394
	.byte	0xb2
	.4byte	0x97
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF1395
	.byte	0xb3
	.4byte	0x97
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF1396
	.byte	0xb4
	.4byte	0x97
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF1397
	.byte	0xb5
	.4byte	0x97
	.byte	0x7
	.uleb128 0x3
	.4byte	.LASF1398
	.byte	0xb6
	.4byte	0x97
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF1399
	.byte	0xb7
	.4byte	0x97
	.byte	0x9
	.uleb128 0x3
	.4byte	.LASF1400
	.byte	0xb8
	.4byte	0x97
	.byte	0xa
	.uleb128 0xc
	.string	"rts"
	.byte	0xb9
	.4byte	0x97
	.byte	0xb
	.uleb128 0xc
	.string	"cts"
	.byte	0xba
	.4byte	0x97
	.byte	0xc
	.uleb128 0xc
	.string	"dtr"
	.byte	0xbb
	.4byte	0x97
	.byte	0xd
	.uleb128 0xc
	.string	"dsr"
	.byte	0xbc
	.4byte	0x97
	.byte	0xe
	.uleb128 0xc
	.string	"dcd"
	.byte	0xbd
	.4byte	0x97
	.byte	0xf
	.uleb128 0xc
	.string	"ri"
	.byte	0xbe
	.4byte	0x97
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF1401
	.byte	0xbf
	.4byte	0x97
	.byte	0x11
	.uleb128 0x3
	.4byte	.LASF1402
	.byte	0xc0
	.4byte	0x97
	.byte	0x12
	.uleb128 0x3
	.4byte	.LASF1403
	.byte	0xc1
	.4byte	0x97
	.byte	0x13
	.uleb128 0x3
	.4byte	.LASF1404
	.byte	0xc2
	.4byte	0x97
	.byte	0x14
	.byte	0
	.uleb128 0x7
	.4byte	.LASF1405
	.byte	0x5
	.byte	0xc3
	.byte	0x3
	.4byte	0x214
	.uleb128 0xd
	.4byte	.LASF1406
	.byte	0x38
	.byte	0x5
	.byte	0xc9
	.byte	0x10
	.4byte	0x3d8
	.uleb128 0x1
	.4byte	.LASF1407
	.byte	0x5
	.byte	0xcb
	.byte	0x19
	.4byte	0x3e2
	.byte	0
	.uleb128 0x1
	.4byte	.LASF1408
	.byte	0x5
	.byte	0xcc
	.byte	0x1c
	.4byte	0x3ec
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF1409
	.byte	0x5
	.byte	0xcd
	.byte	0xc
	.4byte	0x400
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF1410
	.byte	0x5
	.byte	0xce
	.byte	0xc
	.4byte	0x40a
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF1411
	.byte	0x5
	.byte	0xcf
	.byte	0xc
	.4byte	0x41e
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF1412
	.byte	0x5
	.byte	0xd0
	.byte	0xc
	.4byte	0x43d
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF1413
	.byte	0x5
	.byte	0xd1
	.byte	0xc
	.4byte	0x458
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF1414
	.byte	0x5
	.byte	0xd2
	.byte	0xc
	.4byte	0x476
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF1415
	.byte	0x5
	.byte	0xd3
	.byte	0xd
	.4byte	0x480
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF1416
	.byte	0x5
	.byte	0xd4
	.byte	0xd
	.4byte	0x480
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF1417
	.byte	0x5
	.byte	0xd5
	.byte	0xc
	.4byte	0x499
	.byte	0x28
	.uleb128 0x1
	.4byte	.LASF1418
	.byte	0x5
	.byte	0xd6
	.byte	0x16
	.4byte	0x4a3
	.byte	0x2c
	.uleb128 0x1
	.4byte	.LASF1419
	.byte	0x5
	.byte	0xd7
	.byte	0xc
	.4byte	0x4b7
	.byte	0x30
	.uleb128 0x1
	.4byte	.LASF1420
	.byte	0x5
	.byte	0xd8
	.byte	0x1c
	.4byte	0x4c1
	.byte	0x34
	.byte	0
	.uleb128 0x17
	.4byte	0x314
	.uleb128 0x15
	.4byte	0xd9
	.uleb128 0x5
	.4byte	0x3dd
	.uleb128 0x15
	.4byte	0x308
	.uleb128 0x5
	.4byte	0x3e7
	.uleb128 0x13
	.4byte	0x5e
	.4byte	0x400
	.uleb128 0x6
	.4byte	0x1f8
	.byte	0
	.uleb128 0x5
	.4byte	0x3f1
	.uleb128 0x15
	.4byte	0x5e
	.uleb128 0x5
	.4byte	0x405
	.uleb128 0x13
	.4byte	0x5e
	.4byte	0x41e
	.uleb128 0x6
	.4byte	0x10c
	.byte	0
	.uleb128 0x5
	.4byte	0x40f
	.uleb128 0x13
	.4byte	0x5e
	.4byte	0x437
	.uleb128 0x6
	.4byte	0x437
	.uleb128 0x6
	.4byte	0x97
	.byte	0
	.uleb128 0x5
	.4byte	0x43c
	.uleb128 0x30
	.uleb128 0x5
	.4byte	0x423
	.uleb128 0x13
	.4byte	0x5e
	.4byte	0x456
	.uleb128 0x6
	.4byte	0x456
	.uleb128 0x6
	.4byte	0x97
	.byte	0
	.uleb128 0x31
	.byte	0x4
	.uleb128 0x5
	.4byte	0x442
	.uleb128 0x13
	.4byte	0x5e
	.4byte	0x476
	.uleb128 0x6
	.4byte	0x437
	.uleb128 0x6
	.4byte	0x456
	.uleb128 0x6
	.4byte	0x97
	.byte	0
	.uleb128 0x5
	.4byte	0x45d
	.uleb128 0x15
	.4byte	0x97
	.uleb128 0x5
	.4byte	0x47b
	.uleb128 0x13
	.4byte	0x5e
	.4byte	0x499
	.uleb128 0x6
	.4byte	0x97
	.uleb128 0x6
	.4byte	0x97
	.byte	0
	.uleb128 0x5
	.4byte	0x485
	.uleb128 0x15
	.4byte	0x173
	.uleb128 0x5
	.4byte	0x49e
	.uleb128 0x13
	.4byte	0x5e
	.4byte	0x4b7
	.uleb128 0x6
	.4byte	0x1a7
	.byte	0
	.uleb128 0x5
	.4byte	0x4a8
	.uleb128 0x15
	.4byte	0x1ec
	.uleb128 0x5
	.4byte	0x4bc
	.uleb128 0x7
	.4byte	.LASF1421
	.byte	0x5
	.byte	0xd9
	.byte	0x9
	.4byte	0x3d8
	.uleb128 0x20
	.4byte	0x31
	.4byte	0x4e2
	.uleb128 0x21
	.4byte	0x31
	.byte	0x2
	.byte	0
	.uleb128 0x20
	.4byte	0x31
	.4byte	0x4f2
	.uleb128 0x21
	.4byte	0x31
	.byte	0x1
	.byte	0
	.uleb128 0x1b
	.byte	0xa4
	.4byte	0x51a
	.uleb128 0x14
	.string	"RBR"
	.byte	0xa6
	.byte	0x1f
	.4byte	0x3d
	.uleb128 0x14
	.string	"THR"
	.byte	0xa7
	.byte	0x19
	.4byte	0x38
	.uleb128 0x14
	.string	"DLL"
	.byte	0xa8
	.byte	0x19
	.4byte	0x38
	.byte	0
	.uleb128 0x1b
	.byte	0xaa
	.4byte	0x537
	.uleb128 0x14
	.string	"IER"
	.byte	0xac
	.byte	0x19
	.4byte	0x38
	.uleb128 0x14
	.string	"DLM"
	.byte	0xad
	.byte	0x19
	.4byte	0x38
	.byte	0
	.uleb128 0x1b
	.byte	0xaf
	.4byte	0x554
	.uleb128 0x14
	.string	"IIR"
	.byte	0xb1
	.byte	0x1f
	.4byte	0x3d
	.uleb128 0x14
	.string	"FCR"
	.byte	0xb2
	.byte	0x19
	.4byte	0x38
	.byte	0
	.uleb128 0x22
	.byte	0x40
	.byte	0x6
	.byte	0x9d
	.4byte	0x5f1
	.uleb128 0x1
	.4byte	.LASF1422
	.byte	0x6
	.byte	0x9f
	.byte	0x1e
	.4byte	0x3d
	.byte	0
	.uleb128 0x1
	.4byte	.LASF1423
	.byte	0x6
	.byte	0xa0
	.byte	0x14
	.4byte	0x4d2
	.byte	0x4
	.uleb128 0xe
	.string	"CFG"
	.byte	0x6
	.byte	0xa1
	.byte	0x1e
	.4byte	0x3d
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF1424
	.byte	0x6
	.byte	0xa2
	.byte	0x18
	.4byte	0x38
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF1425
	.byte	0x6
	.byte	0xa3
	.byte	0x14
	.4byte	0x4e2
	.byte	0x18
	.uleb128 0x1c
	.4byte	0x4f2
	.byte	0x20
	.uleb128 0x1c
	.4byte	0x51a
	.byte	0x24
	.uleb128 0x1c
	.4byte	0x537
	.byte	0x28
	.uleb128 0xe
	.string	"LCR"
	.byte	0x6
	.byte	0xb4
	.byte	0x18
	.4byte	0x38
	.byte	0x2c
	.uleb128 0xe
	.string	"MCR"
	.byte	0x6
	.byte	0xb5
	.byte	0x18
	.4byte	0x38
	.byte	0x30
	.uleb128 0xe
	.string	"LSR"
	.byte	0x6
	.byte	0xb6
	.byte	0x18
	.4byte	0x38
	.byte	0x34
	.uleb128 0xe
	.string	"MSR"
	.byte	0x6
	.byte	0xb7
	.byte	0x18
	.4byte	0x38
	.byte	0x38
	.uleb128 0xe
	.string	"SCR"
	.byte	0x6
	.byte	0xb8
	.byte	0x18
	.4byte	0x38
	.byte	0x3c
	.byte	0
	.uleb128 0x7
	.4byte	.LASF1426
	.byte	0x6
	.byte	0xb9
	.byte	0x3
	.4byte	0x554
	.uleb128 0x7
	.4byte	.LASF1427
	.byte	0x7
	.byte	0x67
	.byte	0x10
	.4byte	0x204
	.uleb128 0xd
	.4byte	.LASF1428
	.byte	0x1c
	.byte	0x8
	.byte	0x82
	.byte	0x10
	.4byte	0x67f
	.uleb128 0x1
	.4byte	.LASF1429
	.byte	0x8
	.byte	0x84
	.byte	0xb
	.4byte	0x97
	.byte	0
	.uleb128 0x1
	.4byte	.LASF1430
	.byte	0x8
	.byte	0x85
	.byte	0xb
	.4byte	0x97
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF1431
	.byte	0x8
	.byte	0x86
	.byte	0xb
	.4byte	0x67f
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF1432
	.byte	0x8
	.byte	0x87
	.byte	0xb
	.4byte	0x67f
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF1433
	.byte	0x8
	.byte	0x88
	.byte	0xb
	.4byte	0x97
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF1434
	.byte	0x8
	.byte	0x89
	.byte	0xb
	.4byte	0x97
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF1435
	.byte	0x8
	.byte	0x8a
	.byte	0xa
	.4byte	0x71
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF1436
	.byte	0x8
	.byte	0x8b
	.byte	0xa
	.4byte	0x71
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.4byte	0x71
	.uleb128 0x7
	.4byte	.LASF1437
	.byte	0x8
	.byte	0x8c
	.byte	0x3
	.4byte	0x609
	.uleb128 0xd
	.4byte	.LASF1438
	.byte	0x5
	.byte	0x8
	.byte	0x8f
	.byte	0x10
	.4byte	0x6df
	.uleb128 0x1
	.4byte	.LASF1372
	.byte	0x8
	.byte	0x91
	.byte	0xa
	.4byte	0x71
	.byte	0
	.uleb128 0x1
	.4byte	.LASF1374
	.byte	0x8
	.byte	0x92
	.byte	0xa
	.4byte	0x71
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF1375
	.byte	0x8
	.byte	0x93
	.byte	0xa
	.4byte	0x71
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF1376
	.byte	0x8
	.byte	0x94
	.byte	0xa
	.4byte	0x71
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF1377
	.byte	0x8
	.byte	0x95
	.byte	0xa
	.4byte	0x71
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.4byte	.LASF1439
	.byte	0x8
	.byte	0x96
	.byte	0x3
	.4byte	0x690
	.uleb128 0xd
	.4byte	.LASF1440
	.byte	0x30
	.byte	0x8
	.byte	0x99
	.byte	0x10
	.4byte	0x747
	.uleb128 0x1
	.4byte	.LASF1441
	.byte	0x8
	.byte	0x9b
	.byte	0x1b
	.4byte	0x1f8
	.byte	0
	.uleb128 0x1
	.4byte	.LASF1442
	.byte	0x8
	.byte	0x9c
	.byte	0x11
	.4byte	0x6df
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF1443
	.byte	0x8
	.byte	0x9d
	.byte	0x15
	.4byte	0x684
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF1444
	.byte	0x8
	.byte	0x9e
	.byte	0xa
	.4byte	0x71
	.byte	0x28
	.uleb128 0x1
	.4byte	.LASF1445
	.byte	0x8
	.byte	0x9f
	.byte	0xa
	.4byte	0x71
	.byte	0x29
	.uleb128 0x1
	.4byte	.LASF1446
	.byte	0x8
	.byte	0xa0
	.byte	0xb
	.4byte	0x97
	.byte	0x2c
	.byte	0
	.uleb128 0x7
	.4byte	.LASF1447
	.byte	0x8
	.byte	0xa1
	.byte	0x3
	.4byte	0x6eb
	.uleb128 0xd
	.4byte	.LASF1448
	.byte	0x8
	.byte	0x8
	.byte	0xa4
	.byte	0x16
	.4byte	0x788
	.uleb128 0x1
	.4byte	.LASF1449
	.byte	0x8
	.byte	0xa6
	.byte	0xa
	.4byte	0x71
	.byte	0
	.uleb128 0x1
	.4byte	.LASF1450
	.byte	0x8
	.byte	0xa7
	.byte	0xa
	.4byte	0x71
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF1441
	.byte	0x8
	.byte	0xa8
	.byte	0x14
	.4byte	0x5fd
	.byte	0x4
	.byte	0
	.uleb128 0x17
	.4byte	0x753
	.uleb128 0x7
	.4byte	.LASF1451
	.byte	0x8
	.byte	0xa9
	.byte	0x3
	.4byte	0x788
	.uleb128 0x22
	.byte	0x1c
	.byte	0x8
	.byte	0xac
	.4byte	0x7fd
	.uleb128 0x1
	.4byte	.LASF1452
	.byte	0x8
	.byte	0xae
	.byte	0x1a
	.4byte	0x308
	.byte	0
	.uleb128 0xe
	.string	"reg"
	.byte	0x8
	.byte	0xaf
	.byte	0xf
	.4byte	0x802
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF1453
	.byte	0x8
	.byte	0xb0
	.byte	0xb
	.4byte	0x97
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF1454
	.byte	0x8
	.byte	0xb1
	.byte	0xb
	.4byte	0x97
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF1455
	.byte	0x8
	.byte	0xb2
	.byte	0xc
	.4byte	0x807
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF1456
	.byte	0x8
	.byte	0xb3
	.byte	0xc
	.4byte	0x807
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF1457
	.byte	0x8
	.byte	0xb4
	.byte	0xd
	.4byte	0x80c
	.byte	0x18
	.byte	0
	.uleb128 0x17
	.4byte	0x799
	.uleb128 0x5
	.4byte	0x5f1
	.uleb128 0x5
	.4byte	0x78d
	.uleb128 0x5
	.4byte	0x747
	.uleb128 0x7
	.4byte	.LASF1458
	.byte	0x8
	.byte	0xb5
	.byte	0x9
	.4byte	0x7fd
	.uleb128 0x16
	.4byte	.LASF1459
	.byte	0x17
	.byte	0x23
	.4byte	0xe5
	.uleb128 0x5
	.byte	0x3
	.4byte	uart_driver_version
	.uleb128 0x16
	.4byte	.LASF1460
	.byte	0x24
	.byte	0x12
	.4byte	0x747
	.uleb128 0x5
	.byte	0x3
	.4byte	uart1_info
	.uleb128 0x16
	.4byte	.LASF1461
	.byte	0x33
	.byte	0x1d
	.4byte	0x811
	.uleb128 0x5
	.byte	0x3
	.4byte	uart1_resources
	.uleb128 0x16
	.4byte	.LASF1462
	.byte	0x64
	.byte	0x12
	.4byte	0x747
	.uleb128 0x5
	.byte	0x3
	.4byte	uart2_info
	.uleb128 0x16
	.4byte	.LASF1463
	.byte	0x73
	.byte	0x1d
	.4byte	0x811
	.uleb128 0x5
	.byte	0x3
	.4byte	uart2_resources
	.uleb128 0x23
	.4byte	.LASF1464
	.2byte	0x5aa
	.4byte	0x4c6
	.uleb128 0x5
	.byte	0x3
	.4byte	Driver_UART1
	.uleb128 0x23
	.4byte	.LASF1465
	.2byte	0x619
	.4byte	0x4c6
	.uleb128 0x5
	.byte	0x3
	.4byte	Driver_UART2
	.uleb128 0x1d
	.4byte	.LASF1466
	.byte	0xb8
	.byte	0x11
	.4byte	0x97
	.4byte	0x8a9
	.uleb128 0x6
	.4byte	0x71
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF1467
	.byte	0x8d
	.byte	0x10
	.4byte	0x5e
	.4byte	0x8d7
	.uleb128 0x6
	.4byte	0x71
	.uleb128 0x6
	.4byte	0x97
	.uleb128 0x6
	.4byte	0x97
	.uleb128 0x6
	.4byte	0x97
	.uleb128 0x6
	.4byte	0x97
	.uleb128 0x6
	.4byte	0x5fd
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF1468
	.byte	0xa6
	.byte	0x10
	.4byte	0x5e
	.4byte	0x8ec
	.uleb128 0x6
	.4byte	0x71
	.byte	0
	.uleb128 0x24
	.4byte	.LASF1469
	.byte	0x79
	.4byte	0x5e
	.uleb128 0x24
	.4byte	.LASF1470
	.byte	0x70
	.4byte	0x5e
	.uleb128 0x25
	.4byte	.LASF1489
	.2byte	0x612
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x8
	.4byte	.LASF1471
	.2byte	0x5fe
	.byte	0x20
	.4byte	0x1ec
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x4
	.4byte	.LASF1473
	.2byte	0x5f9
	.byte	0x10
	.4byte	0x5e
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x951
	.uleb128 0x2
	.4byte	.LASF1475
	.2byte	0x5f9
	.byte	0x42
	.4byte	0x1a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	.LASF1472
	.2byte	0x5f4
	.byte	0x1a
	.4byte	0x173
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x4
	.4byte	.LASF1474
	.2byte	0x5ef
	.byte	0x10
	.4byte	0x5e
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9a0
	.uleb128 0x2
	.4byte	.LASF1475
	.2byte	0x5ef
	.byte	0x28
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.string	"arg"
	.2byte	0x5ef
	.byte	0x3a
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x8
	.4byte	.LASF1476
	.2byte	0x5ea
	.byte	0x11
	.4byte	0x97
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x8
	.4byte	.LASF1477
	.2byte	0x5e5
	.byte	0x11
	.4byte	0x97
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x4
	.4byte	.LASF1478
	.2byte	0x5e0
	.byte	0x10
	.4byte	0x5e
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa14
	.uleb128 0x2
	.4byte	.LASF1479
	.2byte	0x5e0
	.byte	0x2c
	.4byte	0x437
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF1480
	.2byte	0x5e0
	.byte	0x3c
	.4byte	0x456
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.string	"num"
	.2byte	0x5e0
	.byte	0x4e
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x4
	.4byte	.LASF1481
	.2byte	0x5db
	.byte	0x10
	.4byte	0x5e
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa4d
	.uleb128 0x2
	.4byte	.LASF1482
	.2byte	0x5db
	.byte	0x25
	.4byte	0x456
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.string	"num"
	.2byte	0x5db
	.byte	0x34
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4
	.4byte	.LASF1483
	.2byte	0x5d6
	.byte	0x10
	.4byte	0x5e
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa86
	.uleb128 0x2
	.4byte	.LASF1482
	.2byte	0x5d6
	.byte	0x28
	.4byte	0x437
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.string	"num"
	.2byte	0x5d6
	.byte	0x37
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4
	.4byte	.LASF1484
	.2byte	0x5d2
	.byte	0x10
	.4byte	0x5e
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xab0
	.uleb128 0x2
	.4byte	.LASF1485
	.2byte	0x5d2
	.byte	0x37
	.4byte	0x10c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	.LASF1486
	.2byte	0x5cd
	.byte	0x10
	.4byte	0x5e
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x4
	.4byte	.LASF1487
	.2byte	0x5c8
	.byte	0x10
	.4byte	0x5e
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaf0
	.uleb128 0x2
	.4byte	.LASF1441
	.2byte	0x5c8
	.byte	0x3b
	.4byte	0x1f8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	.LASF1488
	.2byte	0x5c3
	.byte	0x20
	.4byte	0x308
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x25
	.4byte	.LASF1490
	.2byte	0x5a3
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x8
	.4byte	.LASF1491
	.2byte	0x58f
	.byte	0x20
	.4byte	0x1ec
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x4
	.4byte	.LASF1492
	.2byte	0x58a
	.byte	0x10
	.4byte	0x5e
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb57
	.uleb128 0x2
	.4byte	.LASF1475
	.2byte	0x58a
	.byte	0x42
	.4byte	0x1a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	.LASF1493
	.2byte	0x585
	.byte	0x1a
	.4byte	0x173
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x4
	.4byte	.LASF1494
	.2byte	0x580
	.byte	0x10
	.4byte	0x5e
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xba6
	.uleb128 0x2
	.4byte	.LASF1475
	.2byte	0x580
	.byte	0x28
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.string	"arg"
	.2byte	0x580
	.byte	0x3a
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x8
	.4byte	.LASF1495
	.2byte	0x57b
	.byte	0x11
	.4byte	0x97
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x8
	.4byte	.LASF1496
	.2byte	0x576
	.byte	0x11
	.4byte	0x97
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x4
	.4byte	.LASF1497
	.2byte	0x571
	.byte	0x10
	.4byte	0x5e
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc1a
	.uleb128 0x2
	.4byte	.LASF1479
	.2byte	0x571
	.byte	0x2c
	.4byte	0x437
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF1480
	.2byte	0x571
	.byte	0x3c
	.4byte	0x456
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.string	"num"
	.2byte	0x571
	.byte	0x4e
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x4
	.4byte	.LASF1498
	.2byte	0x56c
	.byte	0x10
	.4byte	0x5e
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc53
	.uleb128 0x2
	.4byte	.LASF1482
	.2byte	0x56c
	.byte	0x25
	.4byte	0x456
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.string	"num"
	.2byte	0x56c
	.byte	0x34
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4
	.4byte	.LASF1499
	.2byte	0x567
	.byte	0x10
	.4byte	0x5e
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc8c
	.uleb128 0x2
	.4byte	.LASF1482
	.2byte	0x567
	.byte	0x28
	.4byte	0x437
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.string	"num"
	.2byte	0x567
	.byte	0x37
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4
	.4byte	.LASF1500
	.2byte	0x562
	.byte	0x10
	.4byte	0x5e
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcb6
	.uleb128 0x2
	.4byte	.LASF1485
	.2byte	0x562
	.byte	0x37
	.4byte	0x10c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	.LASF1501
	.2byte	0x55d
	.byte	0x10
	.4byte	0x5e
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x4
	.4byte	.LASF1502
	.2byte	0x558
	.byte	0x10
	.4byte	0x5e
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcf6
	.uleb128 0x2
	.4byte	.LASF1441
	.2byte	0x558
	.byte	0x3b
	.4byte	0x1f8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	.LASF1503
	.2byte	0x553
	.byte	0x20
	.4byte	0x308
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x32
	.4byte	.LASF1533
	.byte	0x1
	.2byte	0x483
	.byte	0xd
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd6d
	.uleb128 0x2
	.4byte	.LASF1504
	.2byte	0x483
	.byte	0x2f
	.4byte	0xd6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xa
	.string	"iir"
	.2byte	0x485
	.byte	0xb
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x11
	.4byte	.LASF1505
	.2byte	0x485
	.byte	0x10
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xa
	.string	"val"
	.2byte	0x485
	.byte	0x17
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.string	"i"
	.2byte	0x485
	.byte	0x1c
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x5
	.4byte	0x811
	.uleb128 0x18
	.4byte	.LASF1506
	.2byte	0x445
	.byte	0x20
	.4byte	0x1ec
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdba
	.uleb128 0x2
	.4byte	.LASF1504
	.2byte	0x445
	.byte	0x47
	.4byte	0xd6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x11
	.4byte	.LASF1507
	.2byte	0x447
	.byte	0x1a
	.4byte	0x1ec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.string	"msr"
	.2byte	0x448
	.byte	0xb
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x18
	.4byte	.LASF1508
	.2byte	0x404
	.byte	0x10
	.4byte	0x5e
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdf3
	.uleb128 0x2
	.4byte	.LASF1475
	.2byte	0x404
	.byte	0x41
	.4byte	0x1a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF1504
	.2byte	0x404
	.byte	0x5a
	.4byte	0xd6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x18
	.4byte	.LASF1509
	.2byte	0x3ed
	.byte	0x1a
	.4byte	0x173
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe2c
	.uleb128 0x2
	.4byte	.LASF1504
	.2byte	0x3ed
	.byte	0x3b
	.4byte	0xd6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x11
	.4byte	.LASF1510
	.2byte	0x3ef
	.byte	0x14
	.4byte	0x173
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF1511
	.2byte	0x2bb
	.byte	0x10
	.4byte	0x5e
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xeb0
	.uleb128 0x2
	.4byte	.LASF1475
	.2byte	0x2bb
	.byte	0x27
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.string	"arg"
	.2byte	0x2bb
	.byte	0x39
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF1504
	.2byte	0x2bb
	.byte	0x4e
	.4byte	0xd6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xa
	.string	"val"
	.2byte	0x2bd
	.byte	0xb
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x11
	.4byte	.LASF1444
	.2byte	0x2bd
	.byte	0x10
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xa
	.string	"lcr"
	.2byte	0x2be
	.byte	0xb
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.string	"mcr"
	.2byte	0x2be
	.byte	0x10
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x4
	.4byte	.LASF1512
	.2byte	0x2a1
	.byte	0x11
	.4byte	0x97
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xee9
	.uleb128 0x2
	.4byte	.LASF1504
	.2byte	0x2a1
	.byte	0x33
	.4byte	0xd6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xa
	.string	"cnt"
	.2byte	0x2a3
	.byte	0xb
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF1513
	.2byte	0x28b
	.byte	0x11
	.4byte	0x97
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf22
	.uleb128 0x2
	.4byte	.LASF1504
	.2byte	0x28b
	.byte	0x33
	.4byte	0xd6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xa
	.string	"cnt"
	.2byte	0x28d
	.byte	0xb
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x18
	.4byte	.LASF1514
	.2byte	0x273
	.byte	0x10
	.4byte	0x5e
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf79
	.uleb128 0x2
	.4byte	.LASF1479
	.2byte	0x273
	.byte	0x2b
	.4byte	0x437
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF1480
	.2byte	0x273
	.byte	0x3b
	.4byte	0x456
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.string	"num"
	.2byte	0x273
	.byte	0x4d
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF1504
	.2byte	0x273
	.byte	0x62
	.4byte	0xd6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x4
	.4byte	.LASF1515
	.2byte	0x21c
	.byte	0x10
	.4byte	0x5e
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfd0
	.uleb128 0x2
	.4byte	.LASF1482
	.2byte	0x21c
	.byte	0x24
	.4byte	0x456
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.string	"num"
	.2byte	0x21c
	.byte	0x33
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF1504
	.2byte	0x21c
	.byte	0x48
	.4byte	0xd6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x11
	.4byte	.LASF1510
	.2byte	0x21e
	.byte	0xa
	.4byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF1516
	.2byte	0x1c4
	.byte	0x10
	.4byte	0x5e
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1036
	.uleb128 0x2
	.4byte	.LASF1482
	.2byte	0x1c4
	.byte	0x27
	.4byte	0x437
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.string	"num"
	.2byte	0x1c4
	.byte	0x36
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF1504
	.2byte	0x1c4
	.byte	0x4b
	.4byte	0xd6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x11
	.4byte	.LASF1510
	.2byte	0x1c6
	.byte	0xa
	.4byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.string	"val"
	.2byte	0x1c6
	.byte	0x10
	.4byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF1517
	.2byte	0x153
	.byte	0x10
	.4byte	0x5e
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x117c
	.uleb128 0x2
	.4byte	.LASF1485
	.2byte	0x153
	.byte	0x36
	.4byte	0x10c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2
	.4byte	.LASF1504
	.2byte	0x153
	.byte	0x4d
	.4byte	0xd6d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0xa
	.string	"val"
	.2byte	0x155
	.byte	0xb
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.4byte	0x109c
	.uleb128 0x11
	.4byte	.LASF1518
	.2byte	0x1ac
	.byte	0x14
	.4byte	0xa3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x26
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.4byte	0x10b9
	.uleb128 0x11
	.4byte	.LASF1518
	.2byte	0x1af
	.byte	0x14
	.4byte	0xa3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x27
	.4byte	0x12a8
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.2byte	0x15b
	.4byte	0x1103
	.uleb128 0x19
	.4byte	0x12b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xf
	.4byte	0x12bd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xf
	.4byte	0x12c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xf
	.4byte	0x12d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.4byte	0x12de
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.uleb128 0xf
	.4byte	0x12df
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	0x1335
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.2byte	0x1a6
	.4byte	0x1132
	.uleb128 0x19
	.4byte	0x1349
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x19
	.4byte	0x133e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xf
	.4byte	0x1354
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x33
	.4byte	0x12f1
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.byte	0x1
	.2byte	0x1a9
	.byte	0x3
	.uleb128 0x19
	.4byte	0x12fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xf
	.4byte	0x1306
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xf
	.4byte	0x1311
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xf
	.4byte	0x131c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x28
	.4byte	0x1327
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.uleb128 0xf
	.4byte	0x1328
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF1519
	.2byte	0x13d
	.byte	0x10
	.4byte	0x5e
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11a6
	.uleb128 0x2
	.4byte	.LASF1504
	.2byte	0x13d
	.byte	0x33
	.4byte	0xd6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF1520
	.2byte	0x118
	.byte	0x10
	.4byte	0x5e
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11df
	.uleb128 0x2
	.4byte	.LASF1441
	.2byte	0x118
	.byte	0x3a
	.4byte	0x1f8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF1504
	.2byte	0x118
	.byte	0x54
	.4byte	0xd6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x18
	.4byte	.LASF1521
	.2byte	0x10b
	.byte	0x20
	.4byte	0x308
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1209
	.uleb128 0x2
	.4byte	.LASF1504
	.2byte	0x10b
	.byte	0x47
	.4byte	0xd6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x34
	.4byte	.LASF1522
	.byte	0x1
	.2byte	0x100
	.byte	0x1d
	.4byte	0xd9
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x35
	.4byte	.LASF1523
	.byte	0x1
	.byte	0xcc
	.byte	0x11
	.4byte	0x97
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1264
	.uleb128 0x1e
	.4byte	.LASF1504
	.byte	0xcc
	.byte	0x3a
	.4byte	0xd6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.string	"lsr"
	.byte	0xce
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x16
	.4byte	.LASF1505
	.byte	0xce
	.byte	0x10
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x36
	.4byte	.LASF1534
	.byte	0x1
	.byte	0xaf
	.byte	0x9
	.4byte	0x5e
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12a8
	.uleb128 0x1e
	.4byte	.LASF1446
	.byte	0xaf
	.byte	0x25
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1e
	.4byte	.LASF1504
	.byte	0xaf
	.byte	0x3f
	.4byte	0xd6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"div"
	.byte	0xb1
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF1527
	.byte	0x5f
	.4byte	0x12ec
	.uleb128 0x1a
	.4byte	.LASF1529
	.byte	0x5f
	.byte	0x5f
	.4byte	0x31
	.uleb128 0x10
	.4byte	.LASF1524
	.byte	0x61
	.byte	0x10
	.4byte	0x31
	.uleb128 0x10
	.4byte	.LASF1525
	.byte	0x62
	.byte	0x1a
	.4byte	0x12ec
	.uleb128 0x10
	.4byte	.LASF1526
	.byte	0x67
	.byte	0x10
	.4byte	0x31
	.uleb128 0x2b
	.uleb128 0x10
	.4byte	.LASF1518
	.byte	0x61
	.byte	0x2b
	.4byte	0xa3
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	0x38
	.uleb128 0x2a
	.4byte	.LASF1528
	.byte	0x52
	.4byte	0x1335
	.uleb128 0x1a
	.4byte	.LASF1529
	.byte	0x52
	.byte	0x5e
	.4byte	0x31
	.uleb128 0x10
	.4byte	.LASF1524
	.byte	0x54
	.byte	0x10
	.4byte	0x31
	.uleb128 0x10
	.4byte	.LASF1525
	.byte	0x55
	.byte	0x1a
	.4byte	0x12ec
	.uleb128 0x10
	.4byte	.LASF1526
	.byte	0x5a
	.byte	0x10
	.4byte	0x31
	.uleb128 0x2b
	.uleb128 0x10
	.4byte	.LASF1518
	.byte	0x54
	.byte	0x2b
	.4byte	0xa3
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	.LASF1535
	.byte	0x2
	.byte	0x40
	.byte	0x33
	.byte	0x3
	.uleb128 0x1a
	.4byte	.LASF1529
	.byte	0x40
	.byte	0x5a
	.4byte	0x31
	.uleb128 0x1a
	.4byte	.LASF1530
	.byte	0x40
	.byte	0x6f
	.4byte	0x31
	.uleb128 0x10
	.4byte	.LASF1531
	.byte	0x42
	.byte	0x1a
	.4byte	0x12ec
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
	.uleb128 0xb
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
	.uleb128 0x3
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
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x6b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x2e
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x6b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.sleb128 19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 11
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x33
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
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.4byte	0x17c
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
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
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
	.byte	0x7
	.4byte	.LFB48
	.uleb128 .LFE48-.LFB48
	.byte	0x7
	.4byte	.LFB49
	.uleb128 .LFE49-.LFB49
	.byte	0x7
	.4byte	.LFB50
	.uleb128 .LFE50-.LFB50
	.byte	0x7
	.4byte	.LFB51
	.uleb128 .LFE51-.LFB51
	.byte	0x7
	.4byte	.LFB52
	.uleb128 .LFE52-.LFB52
	.byte	0x7
	.4byte	.LFB53
	.uleb128 .LFE53-.LFB53
	.byte	0x7
	.4byte	.LFB54
	.uleb128 .LFE54-.LFB54
	.byte	0x7
	.4byte	.LFB55
	.uleb128 .LFE55-.LFB55
	.byte	0x7
	.4byte	.LFB56
	.uleb128 .LFE56-.LFB56
	.byte	0x7
	.4byte	.LFB57
	.uleb128 .LFE57-.LFB57
	.byte	0x7
	.4byte	.LFB58
	.uleb128 .LFE58-.LFB58
	.byte	0x7
	.4byte	.LFB59
	.uleb128 .LFE59-.LFB59
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
	.4byte	.LASF619
	.file 12 "ae350_soc/driver/ae350/../../../ae350_soc/driver/ae350/../../../ae350_soc/driver/ae350/../../../ae350_soc/ae350/platform.h"
	.byte	0x3
	.uleb128 0x10
	.uleb128 0xc
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF620
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
	.4byte	.LASF1346
	.byte	0x5
	.uleb128 0x1c
	.4byte	.LASF1347
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF1348
	.byte	0x5
	.uleb128 0xd0
	.4byte	.LASF1349
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
	.section	.debug_macro,"G",@progbits,wm4.Driver_UART.h.20.feec64adb6e5ee1814c76ef4a2bd7420,comdat
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
	.uleb128 0x1d
	.4byte	.LASF548
	.byte	0x5
	.uleb128 0x1e
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
	.uleb128 0x25
	.4byte	.LASF554
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF555
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF556
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF557
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF558
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF559
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF560
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF561
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF562
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF563
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF564
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF565
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF566
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF567
	.byte	0x5
	.uleb128 0x37
	.4byte	.LASF568
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF569
	.byte	0x5
	.uleb128 0x39
	.4byte	.LASF570
	.byte	0x5
	.uleb128 0x3a
	.4byte	.LASF571
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF572
	.byte	0x5
	.uleb128 0x3e
	.4byte	.LASF573
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF574
	.byte	0x5
	.uleb128 0x40
	.4byte	.LASF575
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF576
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF577
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF578
	.byte	0x5
	.uleb128 0x46
	.4byte	.LASF579
	.byte	0x5
	.uleb128 0x47
	.4byte	.LASF580
	.byte	0x5
	.uleb128 0x48
	.4byte	.LASF581
	.byte	0x5
	.uleb128 0x4b
	.4byte	.LASF582
	.byte	0x5
	.uleb128 0x4c
	.4byte	.LASF583
	.byte	0x5
	.uleb128 0x4d
	.4byte	.LASF584
	.byte	0x5
	.uleb128 0x4e
	.4byte	.LASF585
	.byte	0x5
	.uleb128 0x51
	.4byte	.LASF586
	.byte	0x5
	.uleb128 0x52
	.4byte	.LASF587
	.byte	0x5
	.uleb128 0x53
	.4byte	.LASF588
	.byte	0x5
	.uleb128 0x54
	.4byte	.LASF589
	.byte	0x5
	.uleb128 0x55
	.4byte	.LASF590
	.byte	0x5
	.uleb128 0x56
	.4byte	.LASF591
	.byte	0x5
	.uleb128 0x57
	.4byte	.LASF592
	.byte	0x5
	.uleb128 0x58
	.4byte	.LASF593
	.byte	0x5
	.uleb128 0x59
	.4byte	.LASF594
	.byte	0x5
	.uleb128 0x5a
	.4byte	.LASF595
	.byte	0x5
	.uleb128 0x5b
	.4byte	.LASF596
	.byte	0x5
	.uleb128 0x5f
	.4byte	.LASF597
	.byte	0x5
	.uleb128 0x60
	.4byte	.LASF598
	.byte	0x5
	.uleb128 0x61
	.4byte	.LASF599
	.byte	0x5
	.uleb128 0x62
	.4byte	.LASF600
	.byte	0x5
	.uleb128 0x63
	.4byte	.LASF601
	.byte	0x5
	.uleb128 0x64
	.4byte	.LASF602
	.byte	0x5
	.uleb128 0x65
	.4byte	.LASF603
	.byte	0x5
	.uleb128 0x66
	.4byte	.LASF604
	.byte	0x5
	.uleb128 0x8f
	.4byte	.LASF605
	.byte	0x5
	.uleb128 0x90
	.4byte	.LASF606
	.byte	0x5
	.uleb128 0x91
	.4byte	.LASF607
	.byte	0x5
	.uleb128 0x92
	.4byte	.LASF608
	.byte	0x5
	.uleb128 0x93
	.4byte	.LASF609
	.byte	0x5
	.uleb128 0x94
	.4byte	.LASF610
	.byte	0x5
	.uleb128 0x95
	.4byte	.LASF611
	.byte	0x5
	.uleb128 0x96
	.4byte	.LASF612
	.byte	0x5
	.uleb128 0x97
	.4byte	.LASF613
	.byte	0x5
	.uleb128 0x98
	.4byte	.LASF614
	.byte	0x5
	.uleb128 0x99
	.4byte	.LASF615
	.byte	0x5
	.uleb128 0x9a
	.4byte	.LASF616
	.byte	0x5
	.uleb128 0x9b
	.4byte	.LASF617
	.byte	0x5
	.uleb128 0x9c
	.4byte	.LASF618
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.config.h.11.0e2fcb6d4f76322eee6d47d049ae416c,comdat
.Ldebug_macro7:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF621
	.byte	0x5
	.uleb128 0x1c
	.4byte	.LASF622
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF623
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF624
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF625
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF626
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF627
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF628
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF629
	.byte	0x5
	.uleb128 0x48
	.4byte	.LASF630
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF631
	.byte	0x5
	.uleb128 0x4a
	.4byte	.LASF632
	.byte	0x5
	.uleb128 0x4c
	.4byte	.LASF633
	.byte	0x5
	.uleb128 0x4d
	.4byte	.LASF634
	.byte	0x5
	.uleb128 0x4e
	.4byte	.LASF635
	.byte	0x5
	.uleb128 0x52
	.4byte	.LASF636
	.byte	0x5
	.uleb128 0x55
	.4byte	.LASF637
	.byte	0x5
	.uleb128 0x56
	.4byte	.LASF638
	.byte	0x5
	.uleb128 0x57
	.4byte	.LASF639
	.byte	0x5
	.uleb128 0x59
	.4byte	.LASF640
	.byte	0x5
	.uleb128 0x5a
	.4byte	.LASF641
	.byte	0x5
	.uleb128 0x5b
	.4byte	.LASF642
	.byte	0x5
	.uleb128 0x5f
	.4byte	.LASF643
	.byte	0x5
	.uleb128 0x62
	.4byte	.LASF644
	.byte	0x5
	.uleb128 0x63
	.4byte	.LASF645
	.byte	0x5
	.uleb128 0x64
	.4byte	.LASF646
	.byte	0x5
	.uleb128 0x66
	.4byte	.LASF647
	.byte	0x5
	.uleb128 0x67
	.4byte	.LASF648
	.byte	0x5
	.uleb128 0x68
	.4byte	.LASF649
	.byte	0x5
	.uleb128 0x6c
	.4byte	.LASF650
	.byte	0x5
	.uleb128 0x6f
	.4byte	.LASF651
	.byte	0x5
	.uleb128 0x70
	.4byte	.LASF652
	.byte	0x5
	.uleb128 0x71
	.4byte	.LASF653
	.byte	0x5
	.uleb128 0x73
	.4byte	.LASF654
	.byte	0x5
	.uleb128 0x74
	.4byte	.LASF655
	.byte	0x5
	.uleb128 0x75
	.4byte	.LASF656
	.byte	0x5
	.uleb128 0x79
	.4byte	.LASF657
	.byte	0x5
	.uleb128 0x7d
	.4byte	.LASF658
	.byte	0x5
	.uleb128 0x81
	.4byte	.LASF659
	.byte	0x5
	.uleb128 0x85
	.4byte	.LASF660
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.core_v5.h.11.a8b399720fcf062b67213f6b9bf6855a,comdat
.Ldebug_macro8:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF661
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF662
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF663
	.byte	0x5
	.uleb128 0x14
	.4byte	.LASF664
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF665
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF666
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF667
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF668
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF669
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF670
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF671
	.byte	0x5
	.uleb128 0x1c
	.4byte	.LASF672
	.byte	0x5
	.uleb128 0x1d
	.4byte	.LASF673
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF674
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF675
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF676
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF677
	.byte	0x5
	.uleb128 0x22
	.4byte	.LASF678
	.byte	0x5
	.uleb128 0x23
	.4byte	.LASF679
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF680
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF681
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF682
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF683
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF684
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF685
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF686
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF687
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF688
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF689
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF690
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF691
	.byte	0x5
	.uleb128 0x37
	.4byte	.LASF692
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF693
	.byte	0x5
	.uleb128 0x39
	.4byte	.LASF694
	.byte	0x5
	.uleb128 0x3c
	.4byte	.LASF695
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF696
	.byte	0x5
	.uleb128 0x3e
	.4byte	.LASF697
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF698
	.byte	0x5
	.uleb128 0x40
	.4byte	.LASF699
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF700
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF701
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF702
	.byte	0x5
	.uleb128 0x44
	.4byte	.LASF703
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF704
	.byte	0x5
	.uleb128 0x46
	.4byte	.LASF705
	.byte	0x5
	.uleb128 0x47
	.4byte	.LASF706
	.byte	0x5
	.uleb128 0x4a
	.4byte	.LASF707
	.byte	0x5
	.uleb128 0x4b
	.4byte	.LASF708
	.byte	0x5
	.uleb128 0x4c
	.4byte	.LASF709
	.byte	0x5
	.uleb128 0x4d
	.4byte	.LASF710
	.byte	0x5
	.uleb128 0x4e
	.4byte	.LASF711
	.byte	0x5
	.uleb128 0x4f
	.4byte	.LASF712
	.byte	0x5
	.uleb128 0x51
	.4byte	.LASF713
	.byte	0x5
	.uleb128 0x52
	.4byte	.LASF714
	.byte	0x5
	.uleb128 0x53
	.4byte	.LASF715
	.byte	0x5
	.uleb128 0x54
	.4byte	.LASF716
	.byte	0x5
	.uleb128 0x55
	.4byte	.LASF717
	.byte	0x5
	.uleb128 0x56
	.4byte	.LASF718
	.byte	0x5
	.uleb128 0x57
	.4byte	.LASF719
	.byte	0x5
	.uleb128 0x58
	.4byte	.LASF720
	.byte	0x5
	.uleb128 0x59
	.4byte	.LASF721
	.byte	0x5
	.uleb128 0x5c
	.4byte	.LASF722
	.byte	0x5
	.uleb128 0x5d
	.4byte	.LASF723
	.byte	0x5
	.uleb128 0x66
	.4byte	.LASF724
	.byte	0x5
	.uleb128 0x67
	.4byte	.LASF725
	.byte	0x5
	.uleb128 0x68
	.4byte	.LASF726
	.byte	0x5
	.uleb128 0x69
	.4byte	.LASF727
	.byte	0x5
	.uleb128 0x6a
	.4byte	.LASF728
	.byte	0x5
	.uleb128 0x6c
	.4byte	.LASF729
	.byte	0x5
	.uleb128 0x6f
	.4byte	.LASF730
	.byte	0x5
	.uleb128 0x70
	.4byte	.LASF731
	.byte	0x5
	.uleb128 0x71
	.4byte	.LASF732
	.byte	0x5
	.uleb128 0x77
	.4byte	.LASF733
	.byte	0x5
	.uleb128 0x79
	.4byte	.LASF734
	.byte	0x5
	.uleb128 0x7a
	.4byte	.LASF735
	.byte	0x5
	.uleb128 0x7c
	.4byte	.LASF736
	.byte	0x5
	.uleb128 0x7d
	.4byte	.LASF737
	.byte	0x5
	.uleb128 0x7e
	.4byte	.LASF738
	.byte	0x5
	.uleb128 0x7f
	.4byte	.LASF739
	.byte	0x5
	.uleb128 0x80
	.4byte	.LASF740
	.byte	0x5
	.uleb128 0x81
	.4byte	.LASF741
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.csr.h.12.6a8b6193f73193013bdb0f434483b5c6,comdat
.Ldebug_macro9:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF742
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF743
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF744
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF745
	.byte	0x5
	.uleb128 0x14
	.4byte	.LASF746
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF747
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF748
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF749
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF750
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF751
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF752
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF753
	.byte	0x5
	.uleb128 0x1c
	.4byte	.LASF754
	.byte	0x5
	.uleb128 0x1d
	.4byte	.LASF755
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF756
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF757
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF758
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF759
	.byte	0x5
	.uleb128 0x22
	.4byte	.LASF760
	.byte	0x5
	.uleb128 0x23
	.4byte	.LASF761
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF762
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF763
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF764
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF765
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF766
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF767
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF768
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF769
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF770
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF771
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF772
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF773
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF774
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF775
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF776
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF777
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF778
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF779
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF780
	.byte	0x5
	.uleb128 0x37
	.4byte	.LASF781
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF782
	.byte	0x5
	.uleb128 0x39
	.4byte	.LASF783
	.byte	0x5
	.uleb128 0x3a
	.4byte	.LASF784
	.byte	0x5
	.uleb128 0x3b
	.4byte	.LASF785
	.byte	0x5
	.uleb128 0x3c
	.4byte	.LASF786
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF787
	.byte	0x5
	.uleb128 0x3e
	.4byte	.LASF788
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF789
	.byte	0x5
	.uleb128 0x40
	.4byte	.LASF790
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF791
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF792
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF793
	.byte	0x5
	.uleb128 0x44
	.4byte	.LASF794
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF795
	.byte	0x5
	.uleb128 0x46
	.4byte	.LASF796
	.byte	0x5
	.uleb128 0x47
	.4byte	.LASF797
	.byte	0x5
	.uleb128 0x48
	.4byte	.LASF798
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF799
	.byte	0x5
	.uleb128 0x4a
	.4byte	.LASF800
	.byte	0x5
	.uleb128 0x4b
	.4byte	.LASF801
	.byte	0x5
	.uleb128 0x4c
	.4byte	.LASF802
	.byte	0x5
	.uleb128 0x4d
	.4byte	.LASF803
	.byte	0x5
	.uleb128 0x4e
	.4byte	.LASF804
	.byte	0x5
	.uleb128 0x4f
	.4byte	.LASF805
	.byte	0x5
	.uleb128 0x50
	.4byte	.LASF806
	.byte	0x5
	.uleb128 0x51
	.4byte	.LASF807
	.byte	0x5
	.uleb128 0x52
	.4byte	.LASF808
	.byte	0x5
	.uleb128 0x53
	.4byte	.LASF809
	.byte	0x5
	.uleb128 0x54
	.4byte	.LASF810
	.byte	0x5
	.uleb128 0x55
	.4byte	.LASF811
	.byte	0x5
	.uleb128 0x56
	.4byte	.LASF812
	.byte	0x5
	.uleb128 0x57
	.4byte	.LASF813
	.byte	0x5
	.uleb128 0x58
	.4byte	.LASF814
	.byte	0x5
	.uleb128 0x59
	.4byte	.LASF815
	.byte	0x5
	.uleb128 0x5a
	.4byte	.LASF816
	.byte	0x5
	.uleb128 0x5b
	.4byte	.LASF817
	.byte	0x5
	.uleb128 0x5c
	.4byte	.LASF818
	.byte	0x5
	.uleb128 0x5d
	.4byte	.LASF819
	.byte	0x5
	.uleb128 0x5e
	.4byte	.LASF820
	.byte	0x5
	.uleb128 0x5f
	.4byte	.LASF821
	.byte	0x5
	.uleb128 0x60
	.4byte	.LASF822
	.byte	0x5
	.uleb128 0x61
	.4byte	.LASF823
	.byte	0x5
	.uleb128 0x62
	.4byte	.LASF824
	.byte	0x5
	.uleb128 0x63
	.4byte	.LASF825
	.byte	0x5
	.uleb128 0x64
	.4byte	.LASF826
	.byte	0x5
	.uleb128 0x65
	.4byte	.LASF827
	.byte	0x5
	.uleb128 0x66
	.4byte	.LASF828
	.byte	0x5
	.uleb128 0x67
	.4byte	.LASF829
	.byte	0x5
	.uleb128 0x68
	.4byte	.LASF830
	.byte	0x5
	.uleb128 0x69
	.4byte	.LASF831
	.byte	0x5
	.uleb128 0x6a
	.4byte	.LASF832
	.byte	0x5
	.uleb128 0x6b
	.4byte	.LASF833
	.byte	0x5
	.uleb128 0x6c
	.4byte	.LASF834
	.byte	0x5
	.uleb128 0x6d
	.4byte	.LASF835
	.byte	0x5
	.uleb128 0x6e
	.4byte	.LASF836
	.byte	0x5
	.uleb128 0x6f
	.4byte	.LASF837
	.byte	0x5
	.uleb128 0x70
	.4byte	.LASF838
	.byte	0x5
	.uleb128 0x71
	.4byte	.LASF839
	.byte	0x5
	.uleb128 0x72
	.4byte	.LASF840
	.byte	0x5
	.uleb128 0x73
	.4byte	.LASF841
	.byte	0x5
	.uleb128 0x74
	.4byte	.LASF842
	.byte	0x5
	.uleb128 0x75
	.4byte	.LASF843
	.byte	0x5
	.uleb128 0x76
	.4byte	.LASF844
	.byte	0x5
	.uleb128 0x77
	.4byte	.LASF845
	.byte	0x5
	.uleb128 0x78
	.4byte	.LASF846
	.byte	0x5
	.uleb128 0x79
	.4byte	.LASF847
	.byte	0x5
	.uleb128 0x7a
	.4byte	.LASF848
	.byte	0x5
	.uleb128 0x7b
	.4byte	.LASF849
	.byte	0x5
	.uleb128 0x7c
	.4byte	.LASF850
	.byte	0x5
	.uleb128 0x7d
	.4byte	.LASF851
	.byte	0x5
	.uleb128 0x7e
	.4byte	.LASF852
	.byte	0x5
	.uleb128 0x7f
	.4byte	.LASF853
	.byte	0x5
	.uleb128 0x80
	.4byte	.LASF854
	.byte	0x5
	.uleb128 0x81
	.4byte	.LASF855
	.byte	0x5
	.uleb128 0x82
	.4byte	.LASF856
	.byte	0x5
	.uleb128 0x83
	.4byte	.LASF857
	.byte	0x5
	.uleb128 0x84
	.4byte	.LASF858
	.byte	0x5
	.uleb128 0x85
	.4byte	.LASF859
	.byte	0x5
	.uleb128 0x86
	.4byte	.LASF860
	.byte	0x5
	.uleb128 0x87
	.4byte	.LASF861
	.byte	0x5
	.uleb128 0x88
	.4byte	.LASF862
	.byte	0x5
	.uleb128 0x89
	.4byte	.LASF863
	.byte	0x5
	.uleb128 0x8a
	.4byte	.LASF864
	.byte	0x5
	.uleb128 0x8b
	.4byte	.LASF865
	.byte	0x5
	.uleb128 0x8c
	.4byte	.LASF866
	.byte	0x5
	.uleb128 0x8d
	.4byte	.LASF867
	.byte	0x5
	.uleb128 0x8e
	.4byte	.LASF868
	.byte	0x5
	.uleb128 0x8f
	.4byte	.LASF869
	.byte	0x5
	.uleb128 0x90
	.4byte	.LASF870
	.byte	0x5
	.uleb128 0x91
	.4byte	.LASF871
	.byte	0x5
	.uleb128 0x92
	.4byte	.LASF872
	.byte	0x5
	.uleb128 0x93
	.4byte	.LASF873
	.byte	0x5
	.uleb128 0x94
	.4byte	.LASF874
	.byte	0x5
	.uleb128 0x95
	.4byte	.LASF875
	.byte	0x5
	.uleb128 0x96
	.4byte	.LASF876
	.byte	0x5
	.uleb128 0x97
	.4byte	.LASF877
	.byte	0x5
	.uleb128 0x98
	.4byte	.LASF878
	.byte	0x5
	.uleb128 0x99
	.4byte	.LASF879
	.byte	0x5
	.uleb128 0x9a
	.4byte	.LASF880
	.byte	0x5
	.uleb128 0x9b
	.4byte	.LASF881
	.byte	0x5
	.uleb128 0x9c
	.4byte	.LASF882
	.byte	0x5
	.uleb128 0x9d
	.4byte	.LASF883
	.byte	0x5
	.uleb128 0x9e
	.4byte	.LASF884
	.byte	0x5
	.uleb128 0x9f
	.4byte	.LASF885
	.byte	0x5
	.uleb128 0xa0
	.4byte	.LASF886
	.byte	0x5
	.uleb128 0xa1
	.4byte	.LASF887
	.byte	0x5
	.uleb128 0xa2
	.4byte	.LASF888
	.byte	0x5
	.uleb128 0xa3
	.4byte	.LASF889
	.byte	0x5
	.uleb128 0xa4
	.4byte	.LASF890
	.byte	0x5
	.uleb128 0xa5
	.4byte	.LASF891
	.byte	0x5
	.uleb128 0xa6
	.4byte	.LASF892
	.byte	0x5
	.uleb128 0xa7
	.4byte	.LASF893
	.byte	0x5
	.uleb128 0xa8
	.4byte	.LASF894
	.byte	0x5
	.uleb128 0xa9
	.4byte	.LASF895
	.byte	0x5
	.uleb128 0xaa
	.4byte	.LASF896
	.byte	0x5
	.uleb128 0xab
	.4byte	.LASF897
	.byte	0x5
	.uleb128 0xac
	.4byte	.LASF898
	.byte	0x5
	.uleb128 0xad
	.4byte	.LASF899
	.byte	0x5
	.uleb128 0xae
	.4byte	.LASF900
	.byte	0x5
	.uleb128 0xaf
	.4byte	.LASF901
	.byte	0x5
	.uleb128 0xb0
	.4byte	.LASF902
	.byte	0x5
	.uleb128 0xb1
	.4byte	.LASF903
	.byte	0x5
	.uleb128 0xb2
	.4byte	.LASF904
	.byte	0x5
	.uleb128 0xb3
	.4byte	.LASF905
	.byte	0x5
	.uleb128 0xb4
	.4byte	.LASF906
	.byte	0x5
	.uleb128 0xb5
	.4byte	.LASF907
	.byte	0x5
	.uleb128 0xb6
	.4byte	.LASF908
	.byte	0x5
	.uleb128 0xb7
	.4byte	.LASF909
	.byte	0x5
	.uleb128 0xb8
	.4byte	.LASF910
	.byte	0x5
	.uleb128 0xb9
	.4byte	.LASF911
	.byte	0x5
	.uleb128 0xba
	.4byte	.LASF912
	.byte	0x5
	.uleb128 0xbb
	.4byte	.LASF913
	.byte	0x5
	.uleb128 0xbc
	.4byte	.LASF914
	.byte	0x5
	.uleb128 0xbd
	.4byte	.LASF915
	.byte	0x5
	.uleb128 0xbe
	.4byte	.LASF916
	.byte	0x5
	.uleb128 0xbf
	.4byte	.LASF917
	.byte	0x5
	.uleb128 0xc0
	.4byte	.LASF918
	.byte	0x5
	.uleb128 0xc1
	.4byte	.LASF919
	.byte	0x5
	.uleb128 0xc2
	.4byte	.LASF920
	.byte	0x5
	.uleb128 0xc3
	.4byte	.LASF921
	.byte	0x5
	.uleb128 0xc4
	.4byte	.LASF922
	.byte	0x5
	.uleb128 0xc5
	.4byte	.LASF923
	.byte	0x5
	.uleb128 0xc6
	.4byte	.LASF924
	.byte	0x5
	.uleb128 0xc7
	.4byte	.LASF925
	.byte	0x5
	.uleb128 0xc8
	.4byte	.LASF926
	.byte	0x5
	.uleb128 0xc9
	.4byte	.LASF927
	.byte	0x5
	.uleb128 0xca
	.4byte	.LASF928
	.byte	0x5
	.uleb128 0xcb
	.4byte	.LASF929
	.byte	0x5
	.uleb128 0xcc
	.4byte	.LASF930
	.byte	0x5
	.uleb128 0xcd
	.4byte	.LASF931
	.byte	0x5
	.uleb128 0xce
	.4byte	.LASF932
	.byte	0x5
	.uleb128 0xcf
	.4byte	.LASF933
	.byte	0x5
	.uleb128 0xd0
	.4byte	.LASF934
	.byte	0x5
	.uleb128 0xd1
	.4byte	.LASF935
	.byte	0x5
	.uleb128 0xd2
	.4byte	.LASF936
	.byte	0x5
	.uleb128 0xd3
	.4byte	.LASF937
	.byte	0x5
	.uleb128 0xd4
	.4byte	.LASF938
	.byte	0x5
	.uleb128 0xd5
	.4byte	.LASF939
	.byte	0x5
	.uleb128 0xd6
	.4byte	.LASF940
	.byte	0x5
	.uleb128 0xd7
	.4byte	.LASF941
	.byte	0x5
	.uleb128 0xd8
	.4byte	.LASF942
	.byte	0x5
	.uleb128 0xd9
	.4byte	.LASF943
	.byte	0x5
	.uleb128 0xda
	.4byte	.LASF944
	.byte	0x5
	.uleb128 0xdb
	.4byte	.LASF945
	.byte	0x5
	.uleb128 0xdc
	.4byte	.LASF946
	.byte	0x5
	.uleb128 0xdd
	.4byte	.LASF947
	.byte	0x5
	.uleb128 0xde
	.4byte	.LASF948
	.byte	0x5
	.uleb128 0xdf
	.4byte	.LASF949
	.byte	0x5
	.uleb128 0xe0
	.4byte	.LASF950
	.byte	0x5
	.uleb128 0xe1
	.4byte	.LASF951
	.byte	0x5
	.uleb128 0xe2
	.4byte	.LASF952
	.byte	0x5
	.uleb128 0xe3
	.4byte	.LASF953
	.byte	0x5
	.uleb128 0xe4
	.4byte	.LASF954
	.byte	0x5
	.uleb128 0xe5
	.4byte	.LASF955
	.byte	0x5
	.uleb128 0xe6
	.4byte	.LASF956
	.byte	0x5
	.uleb128 0xe7
	.4byte	.LASF957
	.byte	0x5
	.uleb128 0xe8
	.4byte	.LASF958
	.byte	0x5
	.uleb128 0xe9
	.4byte	.LASF959
	.byte	0x5
	.uleb128 0xea
	.4byte	.LASF960
	.byte	0x5
	.uleb128 0xeb
	.4byte	.LASF961
	.byte	0x5
	.uleb128 0xec
	.4byte	.LASF962
	.byte	0x5
	.uleb128 0xed
	.4byte	.LASF963
	.byte	0x5
	.uleb128 0xee
	.4byte	.LASF964
	.byte	0x5
	.uleb128 0xef
	.4byte	.LASF965
	.byte	0x5
	.uleb128 0xf0
	.4byte	.LASF966
	.byte	0x5
	.uleb128 0xf1
	.4byte	.LASF967
	.byte	0x5
	.uleb128 0xf2
	.4byte	.LASF968
	.byte	0x5
	.uleb128 0xf3
	.4byte	.LASF969
	.byte	0x5
	.uleb128 0xf4
	.4byte	.LASF970
	.byte	0x5
	.uleb128 0xf5
	.4byte	.LASF971
	.byte	0x5
	.uleb128 0xf6
	.4byte	.LASF972
	.byte	0x5
	.uleb128 0xf7
	.4byte	.LASF973
	.byte	0x5
	.uleb128 0xf8
	.4byte	.LASF974
	.byte	0x5
	.uleb128 0xf9
	.4byte	.LASF975
	.byte	0x5
	.uleb128 0xfa
	.4byte	.LASF976
	.byte	0x5
	.uleb128 0xfb
	.4byte	.LASF977
	.byte	0x5
	.uleb128 0xfc
	.4byte	.LASF978
	.byte	0x5
	.uleb128 0xfd
	.4byte	.LASF979
	.byte	0x5
	.uleb128 0xfe
	.4byte	.LASF980
	.byte	0x5
	.uleb128 0xff
	.4byte	.LASF981
	.byte	0x5
	.uleb128 0x100
	.4byte	.LASF982
	.byte	0x5
	.uleb128 0x101
	.4byte	.LASF983
	.byte	0x5
	.uleb128 0x102
	.4byte	.LASF984
	.byte	0x5
	.uleb128 0x103
	.4byte	.LASF985
	.byte	0x5
	.uleb128 0x104
	.4byte	.LASF986
	.byte	0x5
	.uleb128 0x105
	.4byte	.LASF987
	.byte	0x5
	.uleb128 0x106
	.4byte	.LASF988
	.byte	0x5
	.uleb128 0x107
	.4byte	.LASF989
	.byte	0x5
	.uleb128 0x108
	.4byte	.LASF990
	.byte	0x5
	.uleb128 0x109
	.4byte	.LASF991
	.byte	0x5
	.uleb128 0x10a
	.4byte	.LASF992
	.byte	0x5
	.uleb128 0x10b
	.4byte	.LASF993
	.byte	0x5
	.uleb128 0x10c
	.4byte	.LASF994
	.byte	0x5
	.uleb128 0x10d
	.4byte	.LASF995
	.byte	0x5
	.uleb128 0x10e
	.4byte	.LASF996
	.byte	0x5
	.uleb128 0x10f
	.4byte	.LASF997
	.byte	0x5
	.uleb128 0x110
	.4byte	.LASF998
	.byte	0x5
	.uleb128 0x111
	.4byte	.LASF999
	.byte	0x5
	.uleb128 0x112
	.4byte	.LASF1000
	.byte	0x5
	.uleb128 0x113
	.4byte	.LASF1001
	.byte	0x5
	.uleb128 0x114
	.4byte	.LASF1002
	.byte	0x5
	.uleb128 0x115
	.4byte	.LASF1003
	.byte	0x5
	.uleb128 0x116
	.4byte	.LASF1004
	.byte	0x5
	.uleb128 0x117
	.4byte	.LASF1005
	.byte	0x5
	.uleb128 0x118
	.4byte	.LASF1006
	.byte	0x5
	.uleb128 0x119
	.4byte	.LASF1007
	.byte	0x5
	.uleb128 0x11a
	.4byte	.LASF1008
	.byte	0x5
	.uleb128 0x11b
	.4byte	.LASF1009
	.byte	0x5
	.uleb128 0x11c
	.4byte	.LASF1010
	.byte	0x5
	.uleb128 0x11d
	.4byte	.LASF1011
	.byte	0x5
	.uleb128 0x11e
	.4byte	.LASF1012
	.byte	0x5
	.uleb128 0x11f
	.4byte	.LASF1013
	.byte	0x5
	.uleb128 0x120
	.4byte	.LASF1014
	.byte	0x5
	.uleb128 0x121
	.4byte	.LASF1015
	.byte	0x5
	.uleb128 0x122
	.4byte	.LASF1016
	.byte	0x5
	.uleb128 0x123
	.4byte	.LASF1017
	.byte	0x5
	.uleb128 0x124
	.4byte	.LASF1018
	.byte	0x5
	.uleb128 0x125
	.4byte	.LASF1019
	.byte	0x5
	.uleb128 0x126
	.4byte	.LASF1020
	.byte	0x5
	.uleb128 0x127
	.4byte	.LASF1021
	.byte	0x5
	.uleb128 0x128
	.4byte	.LASF1022
	.byte	0x5
	.uleb128 0x129
	.4byte	.LASF1023
	.byte	0x5
	.uleb128 0x12a
	.4byte	.LASF1024
	.byte	0x5
	.uleb128 0x12b
	.4byte	.LASF1025
	.byte	0x5
	.uleb128 0x12c
	.4byte	.LASF1026
	.byte	0x5
	.uleb128 0x12d
	.4byte	.LASF1027
	.byte	0x5
	.uleb128 0x12e
	.4byte	.LASF1028
	.byte	0x5
	.uleb128 0x12f
	.4byte	.LASF1029
	.byte	0x5
	.uleb128 0x130
	.4byte	.LASF1030
	.byte	0x5
	.uleb128 0x131
	.4byte	.LASF1031
	.byte	0x5
	.uleb128 0x132
	.4byte	.LASF1032
	.byte	0x5
	.uleb128 0x133
	.4byte	.LASF1033
	.byte	0x5
	.uleb128 0x134
	.4byte	.LASF1034
	.byte	0x5
	.uleb128 0x135
	.4byte	.LASF1035
	.byte	0x5
	.uleb128 0x136
	.4byte	.LASF1036
	.byte	0x5
	.uleb128 0x137
	.4byte	.LASF1037
	.byte	0x5
	.uleb128 0x138
	.4byte	.LASF1038
	.byte	0x5
	.uleb128 0x139
	.4byte	.LASF1039
	.byte	0x5
	.uleb128 0x13a
	.4byte	.LASF1040
	.byte	0x5
	.uleb128 0x13b
	.4byte	.LASF1041
	.byte	0x5
	.uleb128 0x13c
	.4byte	.LASF1042
	.byte	0x5
	.uleb128 0x13d
	.4byte	.LASF1043
	.byte	0x5
	.uleb128 0x13e
	.4byte	.LASF1044
	.byte	0x5
	.uleb128 0x13f
	.4byte	.LASF1045
	.byte	0x5
	.uleb128 0x140
	.4byte	.LASF1046
	.byte	0x5
	.uleb128 0x141
	.4byte	.LASF1047
	.byte	0x5
	.uleb128 0x142
	.4byte	.LASF1048
	.byte	0x5
	.uleb128 0x143
	.4byte	.LASF1049
	.byte	0x5
	.uleb128 0x144
	.4byte	.LASF1050
	.byte	0x5
	.uleb128 0x145
	.4byte	.LASF1051
	.byte	0x5
	.uleb128 0x146
	.4byte	.LASF1052
	.byte	0x5
	.uleb128 0x147
	.4byte	.LASF1053
	.byte	0x5
	.uleb128 0x148
	.4byte	.LASF1054
	.byte	0x5
	.uleb128 0x149
	.4byte	.LASF1055
	.byte	0x5
	.uleb128 0x14a
	.4byte	.LASF1056
	.byte	0x5
	.uleb128 0x14b
	.4byte	.LASF1057
	.byte	0x5
	.uleb128 0x14c
	.4byte	.LASF1058
	.byte	0x5
	.uleb128 0x14d
	.4byte	.LASF1059
	.byte	0x5
	.uleb128 0x14e
	.4byte	.LASF1060
	.byte	0x5
	.uleb128 0x14f
	.4byte	.LASF1061
	.byte	0x5
	.uleb128 0x150
	.4byte	.LASF1062
	.byte	0x5
	.uleb128 0x151
	.4byte	.LASF1063
	.byte	0x5
	.uleb128 0x152
	.4byte	.LASF1064
	.byte	0x5
	.uleb128 0x153
	.4byte	.LASF1065
	.byte	0x5
	.uleb128 0x154
	.4byte	.LASF1066
	.byte	0x5
	.uleb128 0x155
	.4byte	.LASF1067
	.byte	0x5
	.uleb128 0x156
	.4byte	.LASF1068
	.byte	0x5
	.uleb128 0x157
	.4byte	.LASF1069
	.byte	0x5
	.uleb128 0x158
	.4byte	.LASF1070
	.byte	0x5
	.uleb128 0x159
	.4byte	.LASF1071
	.byte	0x5
	.uleb128 0x15a
	.4byte	.LASF1072
	.byte	0x5
	.uleb128 0x15b
	.4byte	.LASF1073
	.byte	0x5
	.uleb128 0x15c
	.4byte	.LASF1074
	.byte	0x5
	.uleb128 0x15d
	.4byte	.LASF1075
	.byte	0x5
	.uleb128 0x15e
	.4byte	.LASF1076
	.byte	0x5
	.uleb128 0x15f
	.4byte	.LASF1077
	.byte	0x5
	.uleb128 0x160
	.4byte	.LASF1078
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.core_v5.h.150.770dc028d3bf75340a52b83e3c75b7f1,comdat
.Ldebug_macro10:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x96
	.4byte	.LASF1079
	.byte	0x5
	.uleb128 0x9a
	.4byte	.LASF1080
	.byte	0x5
	.uleb128 0x9d
	.4byte	.LASF1081
	.byte	0x5
	.uleb128 0xa1
	.4byte	.LASF1082
	.byte	0x5
	.uleb128 0xa5
	.4byte	.LASF1083
	.byte	0x5
	.uleb128 0xa9
	.4byte	.LASF1084
	.byte	0x5
	.uleb128 0xad
	.4byte	.LASF1085
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.ae350.h.11.9b8ade9cb9a3aa721d571ace2684b93e,comdat
.Ldebug_macro11:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF1086
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF1087
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF1088
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF1089
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF1090
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF1091
	.byte	0x5
	.uleb128 0x1c
	.4byte	.LASF1092
	.byte	0x5
	.uleb128 0x1d
	.4byte	.LASF1093
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF1094
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF1095
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF1096
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF1097
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF1098
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF1099
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF1100
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF1101
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF1102
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF1103
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF1104
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF1105
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF1106
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF1107
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF1108
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF1109
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF1110
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF1111
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF1112
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF1113
	.byte	0x5
	.uleb128 0x37
	.4byte	.LASF1114
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF1115
	.byte	0x5
	.uleb128 0x39
	.4byte	.LASF1116
	.byte	0x5
	.uleb128 0x3a
	.4byte	.LASF1117
	.byte	0x5
	.uleb128 0x3b
	.4byte	.LASF1118
	.byte	0x5
	.uleb128 0x3c
	.4byte	.LASF1119
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF1120
	.byte	0x5
	.uleb128 0x3e
	.4byte	.LASF1121
	.byte	0x5
	.uleb128 0x46
	.4byte	.LASF1122
	.byte	0x5
	.uleb128 0x47
	.4byte	.LASF1123
	.byte	0x5
	.uleb128 0x48
	.4byte	.LASF1124
	.byte	0x5
	.uleb128 0x147
	.4byte	.LASF1125
	.byte	0x5
	.uleb128 0x149
	.4byte	.LASF1126
	.byte	0x5
	.uleb128 0x14a
	.4byte	.LASF1127
	.byte	0x5
	.uleb128 0x14b
	.4byte	.LASF1128
	.byte	0x5
	.uleb128 0x14c
	.4byte	.LASF1129
	.byte	0x5
	.uleb128 0x14e
	.4byte	.LASF1130
	.byte	0x5
	.uleb128 0x14f
	.4byte	.LASF1131
	.byte	0x5
	.uleb128 0x150
	.4byte	.LASF1132
	.byte	0x5
	.uleb128 0x151
	.4byte	.LASF1133
	.byte	0x5
	.uleb128 0x152
	.4byte	.LASF1134
	.byte	0x5
	.uleb128 0x153
	.4byte	.LASF1135
	.byte	0x5
	.uleb128 0x154
	.4byte	.LASF1136
	.byte	0x5
	.uleb128 0x155
	.4byte	.LASF1137
	.byte	0x5
	.uleb128 0x156
	.4byte	.LASF1138
	.byte	0x5
	.uleb128 0x157
	.4byte	.LASF1139
	.byte	0x5
	.uleb128 0x158
	.4byte	.LASF1140
	.byte	0x5
	.uleb128 0x15a
	.4byte	.LASF1141
	.byte	0x5
	.uleb128 0x15b
	.4byte	.LASF1142
	.byte	0x5
	.uleb128 0x15d
	.4byte	.LASF1143
	.byte	0x5
	.uleb128 0x15e
	.4byte	.LASF1144
	.byte	0x5
	.uleb128 0x160
	.4byte	.LASF1145
	.byte	0x5
	.uleb128 0x161
	.4byte	.LASF1146
	.byte	0x5
	.uleb128 0x162
	.4byte	.LASF1147
	.byte	0x5
	.uleb128 0x163
	.4byte	.LASF1148
	.byte	0x5
	.uleb128 0x169
	.4byte	.LASF1149
	.byte	0x5
	.uleb128 0x16a
	.4byte	.LASF1150
	.byte	0x5
	.uleb128 0x16b
	.4byte	.LASF1151
	.byte	0x5
	.uleb128 0x16c
	.4byte	.LASF1152
	.byte	0x5
	.uleb128 0x16d
	.4byte	.LASF1153
	.byte	0x5
	.uleb128 0x16e
	.4byte	.LASF1154
	.byte	0x5
	.uleb128 0x16f
	.4byte	.LASF1155
	.byte	0x5
	.uleb128 0x170
	.4byte	.LASF1156
	.byte	0x5
	.uleb128 0x171
	.4byte	.LASF1157
	.byte	0x5
	.uleb128 0x172
	.4byte	.LASF1158
	.byte	0x5
	.uleb128 0x173
	.4byte	.LASF1159
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.interrupt.h.13.0dcee1073ff8cb36d3a72d2ab9d9af28,comdat
.Ldebug_macro12:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0xd
	.4byte	.LASF1160
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF1161
	.byte	0x5
	.uleb128 0x1d
	.4byte	.LASF1162
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF1163
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.plic.h.11.044d38cfc207efadf096698b73e4934d,comdat
.Ldebug_macro13:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF1164
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF1165
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF1166
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF1167
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF1168
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF1169
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF1170
	.byte	0x5
	.uleb128 0x22
	.4byte	.LASF1171
	.byte	0x5
	.uleb128 0x23
	.4byte	.LASF1172
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF1173
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF1174
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF1175
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF1176
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.interrupt.h.36.00b89799e9184a0d7dc8454548c339a0,comdat
.Ldebug_macro14:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF1177
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF1178
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF1179
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF1180
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF1181
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF1182
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF1183
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF1184
	.byte	0x5
	.uleb128 0x3c
	.4byte	.LASF1185
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF1186
	.byte	0x5
	.uleb128 0x3e
	.4byte	.LASF1187
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF1188
	.byte	0x5
	.uleb128 0x40
	.4byte	.LASF1189
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF1190
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF1191
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF1192
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.platform.h.31.95a025a6ce47078ae8baeaf811f70af5,comdat
.Ldebug_macro15:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF1193
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF1194
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF1195
	.byte	0x5
	.uleb128 0x22
	.4byte	.LASF1196
	.byte	0x5
	.uleb128 0x23
	.4byte	.LASF1197
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF1198
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF1199
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF1200
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF1201
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF1202
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF1203
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.dma_ae350.h.22.955079575c03892fa738b82688ec15a9,comdat
.Ldebug_macro16:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF1204
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF1205
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF1206
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF1207
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF1208
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF1209
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF1210
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF1211
	.byte	0x5
	.uleb128 0x22
	.4byte	.LASF1212
	.byte	0x5
	.uleb128 0x23
	.4byte	.LASF1213
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF1214
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF1215
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF1216
	.byte	0x5
	.uleb128 0x27
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
	.uleb128 0x2e
	.4byte	.LASF1222
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF1223
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF1224
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF1225
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF1226
	.byte	0x5
	.uleb128 0x37
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
	.uleb128 0x43
	.4byte	.LASF1239
	.byte	0x5
	.uleb128 0x44
	.4byte	.LASF1240
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF1241
	.byte	0x5
	.uleb128 0x46
	.4byte	.LASF1242
	.byte	0x5
	.uleb128 0x47
	.4byte	.LASF1243
	.byte	0x5
	.uleb128 0x48
	.4byte	.LASF1244
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF1245
	.byte	0x5
	.uleb128 0x4a
	.4byte	.LASF1246
	.byte	0x5
	.uleb128 0x4b
	.4byte	.LASF1247
	.byte	0x5
	.uleb128 0x4c
	.4byte	.LASF1248
	.byte	0x5
	.uleb128 0x4d
	.4byte	.LASF1249
	.byte	0x5
	.uleb128 0x4e
	.4byte	.LASF1250
	.byte	0x5
	.uleb128 0x4f
	.4byte	.LASF1251
	.byte	0x5
	.uleb128 0x50
	.4byte	.LASF1252
	.byte	0x5
	.uleb128 0x51
	.4byte	.LASF1253
	.byte	0x5
	.uleb128 0x52
	.4byte	.LASF1254
	.byte	0x5
	.uleb128 0x53
	.4byte	.LASF1255
	.byte	0x5
	.uleb128 0x54
	.4byte	.LASF1256
	.byte	0x5
	.uleb128 0x55
	.4byte	.LASF1257
	.byte	0x5
	.uleb128 0x56
	.4byte	.LASF1258
	.byte	0x5
	.uleb128 0x57
	.4byte	.LASF1259
	.byte	0x5
	.uleb128 0x58
	.4byte	.LASF1260
	.byte	0x5
	.uleb128 0x59
	.4byte	.LASF1261
	.byte	0x5
	.uleb128 0x5a
	.4byte	.LASF1262
	.byte	0x5
	.uleb128 0x5b
	.4byte	.LASF1263
	.byte	0x5
	.uleb128 0x5c
	.4byte	.LASF1264
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.uart_ae350.h.23.c6ad8d27f041e555e655a8576d9247b1,comdat
.Ldebug_macro17:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF1265
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF1266
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF1267
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF1268
	.byte	0x5
	.uleb128 0x1d
	.4byte	.LASF1269
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF1270
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF1271
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF1272
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF1273
	.byte	0x5
	.uleb128 0x22
	.4byte	.LASF1274
	.byte	0x5
	.uleb128 0x23
	.4byte	.LASF1275
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF1276
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF1277
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF1278
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF1279
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF1280
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF1281
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF1282
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF1283
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF1284
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF1285
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF1286
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF1287
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF1288
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF1289
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF1290
	.byte	0x5
	.uleb128 0x39
	.4byte	.LASF1291
	.byte	0x5
	.uleb128 0x3a
	.4byte	.LASF1292
	.byte	0x5
	.uleb128 0x3b
	.4byte	.LASF1293
	.byte	0x5
	.uleb128 0x3c
	.4byte	.LASF1294
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF1295
	.byte	0x5
	.uleb128 0x3e
	.4byte	.LASF1296
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF1297
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF1298
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF1299
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF1300
	.byte	0x5
	.uleb128 0x44
	.4byte	.LASF1301
	.byte	0x5
	.uleb128 0x47
	.4byte	.LASF1302
	.byte	0x5
	.uleb128 0x48
	.4byte	.LASF1303
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF1304
	.byte	0x5
	.uleb128 0x4a
	.4byte	.LASF1305
	.byte	0x5
	.uleb128 0x4b
	.4byte	.LASF1306
	.byte	0x5
	.uleb128 0x4c
	.4byte	.LASF1307
	.byte	0x5
	.uleb128 0x4e
	.4byte	.LASF1308
	.byte	0x5
	.uleb128 0x4f
	.4byte	.LASF1309
	.byte	0x5
	.uleb128 0x50
	.4byte	.LASF1310
	.byte	0x5
	.uleb128 0x51
	.4byte	.LASF1311
	.byte	0x5
	.uleb128 0x53
	.4byte	.LASF1312
	.byte	0x5
	.uleb128 0x54
	.4byte	.LASF1313
	.byte	0x5
	.uleb128 0x57
	.4byte	.LASF1314
	.byte	0x5
	.uleb128 0x58
	.4byte	.LASF1315
	.byte	0x5
	.uleb128 0x59
	.4byte	.LASF1316
	.byte	0x5
	.uleb128 0x5a
	.4byte	.LASF1317
	.byte	0x5
	.uleb128 0x5b
	.4byte	.LASF1318
	.byte	0x5
	.uleb128 0x5c
	.4byte	.LASF1319
	.byte	0x5
	.uleb128 0x5f
	.4byte	.LASF1320
	.byte	0x5
	.uleb128 0x60
	.4byte	.LASF1321
	.byte	0x5
	.uleb128 0x61
	.4byte	.LASF1322
	.byte	0x5
	.uleb128 0x62
	.4byte	.LASF1323
	.byte	0x5
	.uleb128 0x63
	.4byte	.LASF1324
	.byte	0x5
	.uleb128 0x64
	.4byte	.LASF1325
	.byte	0x5
	.uleb128 0x65
	.4byte	.LASF1326
	.byte	0x5
	.uleb128 0x66
	.4byte	.LASF1327
	.byte	0x5
	.uleb128 0x69
	.4byte	.LASF1328
	.byte	0x5
	.uleb128 0x6a
	.4byte	.LASF1329
	.byte	0x5
	.uleb128 0x6b
	.4byte	.LASF1330
	.byte	0x5
	.uleb128 0x6c
	.4byte	.LASF1331
	.byte	0x5
	.uleb128 0x6d
	.4byte	.LASF1332
	.byte	0x5
	.uleb128 0x6e
	.4byte	.LASF1333
	.byte	0x5
	.uleb128 0x6f
	.4byte	.LASF1334
	.byte	0x5
	.uleb128 0x70
	.4byte	.LASF1335
	.byte	0x5
	.uleb128 0x74
	.4byte	.LASF1336
	.byte	0x5
	.uleb128 0x75
	.4byte	.LASF1337
	.byte	0x5
	.uleb128 0x76
	.4byte	.LASF1338
	.byte	0x5
	.uleb128 0x77
	.4byte	.LASF1339
	.byte	0x5
	.uleb128 0x78
	.4byte	.LASF1340
	.byte	0x5
	.uleb128 0x79
	.4byte	.LASF1341
	.byte	0x5
	.uleb128 0x7c
	.4byte	.LASF1342
	.byte	0x5
	.uleb128 0x7d
	.4byte	.LASF1343
	.byte	0x5
	.uleb128 0x7e
	.4byte	.LASF1344
	.byte	0x5
	.uleb128 0x7f
	.4byte	.LASF1345
	.byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF1377:
	.string	"rx_parity_error"
.LASF982:
	.string	"NDS_MHCOUNTEREN 0x322"
.LASF1248:
	.string	"DMA_CH_CTRL_SRCADDR_DEC ( 1 << DMA_CH_CTRL_SRCADDRCTRL_POS)"
.LASF522:
	.string	"UINT16_C(c) __UINT16_C(c)"
.LASF1022:
	.string	"NDS_SCCTLDATA 0x9cd"
.LASF1054:
	.string	"NDS_MINTSEL_JAL 0x7ed"
.LASF297:
	.string	"__FLT64X_HAS_QUIET_NAN__ 1"
.LASF32:
	.string	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF933:
	.string	"NDS_MHPMEVENT8 0x328"
.LASF1429:
	.string	"rx_num"
.LASF663:
	.string	"MSTATUS_UIE 0x00000001"
.LASF702:
	.string	"TRAP_M_I_PAGE_FAULT 12"
.LASF1505:
	.string	"event"
.LASF664:
	.string	"MSTATUS_SIE 0x00000002"
.LASF1335:
	.string	"UARTC_MSR_DCD 0x80"
.LASF473:
	.string	"UINT_FAST32_MAX"
.LASF823:
	.string	"NDS_SCOUNTEREN 0x106"
.LASF217:
	.string	"__FLT32_DIG__ 6"
.LASF393:
	.string	"_WCHAR_T_DEFINED "
.LASF636:
	.string	"DRV_UART1 1"
.LASF610:
	.string	"AE350_UART_EVENT_RX_OVERFLOW (1UL << 5)"
.LASF484:
	.string	"INTPTR_MIN (-INTPTR_MAX - 1)"
.LASF130:
	.string	"__INT_FAST16_MAX__ 0x7fffffff"
.LASF990:
	.string	"NDS_MDLMB 0x7c1"
.LASF233:
	.string	"__FLT64_MANT_DIG__ 53"
.LASF967:
	.string	"NDS_HIE 0x204"
.LASF438:
	.string	"UINT_LEAST8_MAX __UINT_LEAST8_MAX__"
.LASF468:
	.string	"UINT_FAST16_MAX __UINT_FAST16_MAX__"
.LASF97:
	.string	"__SIG_ATOMIC_MAX__ 0x7fffffff"
.LASF442:
	.string	"INT_LEAST16_MIN (-INT_LEAST16_MAX - 1)"
.LASF1310:
	.string	"UARTC_LCR_PARITY_EVEN 0x18"
.LASF649:
	.string	"DRV_UART2_DMA_RX_REQID 7"
.LASF1324:
	.string	"UARTC_LSR_BI 0x10"
.LASF952:
	.string	"NDS_MHPMEVENT27 0x33b"
.LASF208:
	.string	"__FLT16_NORM_MAX__ 6.55040000000000000000000000000000000e+4F16"
.LASF643:
	.string	"DRV_UART2 1"
.LASF769:
	.string	"NDS_HPMCOUNTER15 0xc0f"
.LASF265:
	.string	"__FLT128_IS_IEC_60559__ 1"
.LASF669:
	.string	"MSTATUS_HPIE 0x00000040"
.LASF81:
	.string	"__PTRDIFF_MAX__ 0x7fffffff"
.LASF430:
	.string	"INT64_MIN (-INT64_MAX - 1)"
.LASF675:
	.string	"MSTATUS_XS 0x00018000"
.LASF236:
	.string	"__FLT64_MIN_10_EXP__ (-307)"
.LASF410:
	.string	"INT8_MAX __INT8_MAX__"
.LASF1050:
	.string	"NDS_MSAVEDCAUSE1 0x7db"
.LASF38:
	.string	"__WCHAR_TYPE__ int"
.LASF479:
	.string	"UINT_FAST64_MAX"
.LASF1258:
	.string	"DMA_CH_CTRL_DSTREQ_POS ( 4)"
.LASF2:
	.string	"__STDC__ 1"
.LASF1338:
	.string	"UART_FLAG_CONFIGURED (1U << 2)"
.LASF1484:
	.string	"uart2_power_control"
.LASF1269:
	.string	"UARTC_IIR_NONE 0x01"
.LASF743:
	.string	"NDS_USTATUS 0x000"
.LASF1528:
	.string	"__nds__plic_enable_interrupt"
.LASF220:
	.string	"__FLT32_MAX_EXP__ 128"
.LASF1294:
	.string	"UARTC_FCR_TFIFO_RESET_MASK 0x04"
.LASF1232:
	.string	"DMA_CH_CTRL_DBINF_MASK ( 1 << DMA_CH_CTRL_DBINFIDX_POS)"
.LASF999:
	.string	"NDS_MCACHE_CTL 0x7ca"
.LASF52:
	.string	"__UINT64_TYPE__ long long unsigned int"
.LASF171:
	.string	"__DBL_MAX_10_EXP__ 308"
.LASF447:
	.string	"INT_LEAST32_MIN"
.LASF139:
	.string	"__UINT_FAST64_MAX__ 0xffffffffffffffffULL"
.LASF790:
	.string	"NDS_HPMCOUNTER4H 0xc84"
.LASF853:
	.string	"NDS_PMPADDR3 0x3b3"
.LASF343:
	.string	"__ELF__ 1"
.LASF338:
	.string	"__riscv_a 2001000"
.LASF19:
	.string	"__SIZEOF_LONG__ 4"
.LASF971:
	.string	"NDS_HCAUSE 0x242"
.LASF1127:
	.string	"DLM_BASE 0xA0200000"
.LASF970:
	.string	"NDS_HEPC 0x241"
.LASF349:
	.string	"__DRIVER_UART_H__ "
.LASF1079:
	.string	"read_csr(reg) ({ unsigned long __tmp; asm volatile (\"csrr %0, \" XSTR(reg) : \"=r\"(__tmp)); __tmp; })"
.LASF747:
	.string	"NDS_UEPC 0x041"
.LASF580:
	.string	"AE350_UART_CPOL0 (0UL << AE350_UART_CPOL_Pos)"
.LASF864:
	.string	"NDS_PMPADDR14 0x3be"
.LASF385:
	.string	"__WCHAR_T__ "
.LASF1496:
	.string	"uart1_get_txcount"
.LASF1417:
	.string	"Control"
.LASF635:
	.string	"DRV_I2C_DMA_RX_REQID 8"
.LASF667:
	.string	"MSTATUS_UPIE 0x00000010"
.LASF398:
	.string	"_WCHAR_T_DECLARED "
.LASF1109:
	.string	"IRQ_GP5_SOURCE 15"
.LASF156:
	.string	"__FLT_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF1345:
	.string	"UART_TRIG_LVL_14 (0xC0U)"
.LASF532:
	.string	"_STDBOOL_H "
.LASF499:
	.string	"SIG_ATOMIC_MIN"
.LASF84:
	.string	"__SHRT_WIDTH__ 16"
.LASF509:
	.string	"WINT_MIN"
.LASF69:
	.string	"__INTPTR_TYPE__ int"
.LASF1271:
	.string	"UARTC_IIR_RDA 0x04"
.LASF453:
	.string	"INT_LEAST64_MIN"
.LASF597:
	.string	"AE350_UART_ERROR_MODE (AE350_DRIVER_ERROR_SPECIFIC - 1)"
.LASF955:
	.string	"NDS_MHPMEVENT30 0x33e"
.LASF131:
	.string	"__INT_FAST16_WIDTH__ 32"
.LASF1511:
	.string	"uart_control"
.LASF162:
	.string	"__FLT_HAS_INFINITY__ 1"
.LASF1320:
	.string	"UARTC_LSR_RDR 0x1"
.LASF207:
	.string	"__FLT16_MAX__ 6.55040000000000000000000000000000000e+4F16"
.LASF253:
	.string	"__FLT128_MIN_10_EXP__ (-4931)"
.LASF1170:
	.string	"PLIC_PENDING_SHIFT_PER_SOURCE 0"
.LASF688:
	.string	"IRQ_H_TIMER 6"
.LASF1359:
	.string	"uint16_t"
.LASF78:
	.string	"__WCHAR_MIN__ (-__WCHAR_MAX__ - 1)"
.LASF672:
	.string	"MSTATUS_HPP 0x00000600"
.LASF336:
	.string	"__riscv_i 2001000"
.LASF476:
	.string	"INT_FAST64_MAX __INT_FAST64_MAX__"
.LASF1486:
	.string	"uart2_uninitialize"
.LASF210:
	.string	"__FLT16_EPSILON__ 9.76562500000000000000000000000000000e-4F16"
.LASF1239:
	.string	"DMA_CH_CTRL_SWIDTH(n) (((n) << DMA_CH_CTRL_SWIDTH_POS) & DMA_CH_CTRL_SWIDTH_MASK)"
.LASF1455:
	.string	"dma_tx"
.LASF231:
	.string	"__FP_FAST_FMAF32 1"
.LASF1323:
	.string	"UARTC_LSR_FE 0x8"
.LASF1124:
	.string	"__IO volatile"
.LASF1192:
	.string	"HAL_INTERRUPT_SET_LEVEL(vector,level) __nds__plic_set_priority(vector, level)"
.LASF1016:
	.string	"NDS_MCCTLDATA 0x7cd"
.LASF355:
	.string	"_T_PTRDIFF_ "
.LASF184:
	.string	"__LDBL_DIG__ 33"
.LASF912:
	.string	"NDS_MHPMCOUNTER16H 0xb90"
.LASF1432:
	.string	"tx_buf"
.LASF1266:
	.string	"UARTC_IER_THRE 0x02"
.LASF113:
	.string	"__INT_LEAST16_WIDTH__ 16"
.LASF715:
	.string	"MIP_MSIP (1 << IRQ_M_SOFT)"
.LASF334:
	.string	"__riscv_cmodel_medany 1"
.LASF609:
	.string	"AE350_UART_EVENT_TX_UNDERFLOW (1UL << 4)"
.LASF55:
	.string	"__INT_LEAST32_TYPE__ long int"
.LASF179:
	.string	"__DBL_HAS_INFINITY__ 1"
.LASF212:
	.string	"__FLT16_HAS_DENORM__ 1"
.LASF827:
	.string	"NDS_STVAL 0x143"
.LASF740:
	.string	"FPPOP XSTR(FPLOAD)"
.LASF1428:
	.string	"_UART_TRANSFER_INFO"
.LASF760:
	.string	"NDS_HPMCOUNTER6 0xc06"
.LASF73:
	.string	"__SHRT_MAX__ 0x7fff"
.LASF1515:
	.string	"uart_receive"
.LASF490:
	.string	"INTMAX_MIN (-INTMAX_MAX - 1)"
.LASF227:
	.string	"__FLT32_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F32"
.LASF542:
	.string	"AE350_DRIVER_ERROR_UNSUPPORTED -4"
.LASF1133:
	.string	"UART2_BASE _IO_(0xF0300000)"
.LASF685:
	.string	"IRQ_H_SOFT 2"
.LASF1380:
	.string	"_AE350_UART_MODEM_CONTROL"
.LASF922:
	.string	"NDS_MHPMCOUNTER26H 0xb9a"
.LASF1082:
	.string	"set_csr(reg,bit) ({ unsigned long __tmp; asm volatile (\"csrrs %0, \" XSTR(reg) \", %1\" : \"=r\"(__tmp) : \"rK\"(bit)); __tmp; })"
.LASF259:
	.string	"__FLT128_MIN__ 3.36210314311209350626267781732175260e-4932F128"
.LASF134:
	.string	"__INT_FAST64_MAX__ 0x7fffffffffffffffLL"
.LASF1064:
	.string	"NDS_PMAADDR2 0xbd2"
.LASF787:
	.string	"NDS_TIMEH 0xc81"
.LASF584:
	.string	"AE350_UART_CPHA0 (0UL << AE350_UART_CPHA_Pos)"
.LASF66:
	.string	"__UINT_FAST16_TYPE__ unsigned int"
.LASF1203:
	.string	"DEV_SPI AE350_SPI"
.LASF107:
	.string	"__UINT64_MAX__ 0xffffffffffffffffULL"
.LASF913:
	.string	"NDS_MHPMCOUNTER17H 0xb91"
.LASF1261:
	.string	"DMA_CH_CTRL_INTABT ( 0 << 3)"
.LASF18:
	.string	"__SIZEOF_INT__ 4"
.LASF271:
	.string	"__FLT32X_MAX_10_EXP__ 308"
.LASF704:
	.string	"TRAP_M_S_PAGE_FAULT 15"
.LASF1223:
	.string	"DMA_WIDTH_QWORD (0x4)"
.LASF1009:
	.string	"NDS_MCOUNTERMASK_M 0x7d1"
.LASF88:
	.string	"__WCHAR_WIDTH__ 32"
.LASF44:
	.string	"__SIG_ATOMIC_TYPE__ int"
.LASF1459:
	.string	"uart_driver_version"
.LASF376:
	.string	"_BSD_SIZE_T_DEFINED_ "
.LASF27:
	.string	"__BIGGEST_ALIGNMENT__ 16"
.LASF858:
	.string	"NDS_PMPADDR8 0x3b8"
.LASF1288:
	.string	"UARTC_FCR_RFIFO16_TRGL8 0x80"
.LASF1431:
	.string	"rx_buf"
.LASF102:
	.string	"__INT32_MAX__ 0x7fffffffL"
.LASF868:
	.string	"NDS_MHPMCOUNTER3 0xb03"
.LASF1396:
	.string	"smart_card_clock"
.LASF889:
	.string	"NDS_MHPMCOUNTER24 0xb18"
.LASF839:
	.string	"NDS_MTVEC 0x305"
.LASF1434:
	.string	"tx_cnt"
.LASF123:
	.string	"__UINT16_C(c) c"
.LASF319:
	.string	"__PRAGMA_REDEFINE_EXTNAME 1"
.LASF56:
	.string	"__INT_LEAST64_TYPE__ long long int"
.LASF1356:
	.string	"int32_t"
.LASF708:
	.string	"TRAP_S_L_ACC_FAULT 5"
.LASF1110:
	.string	"IRQ_GP6_SOURCE 16"
.LASF1460:
	.string	"uart1_info"
.LASF1185:
	.string	"HAL_MIE_ENABLE() set_csr(NDS_MSTATUS, MSTATUS_MIE)"
.LASF923:
	.string	"NDS_MHPMCOUNTER27H 0xb9b"
.LASF491:
	.string	"UINTMAX_MAX"
.LASF1157:
	.string	"AE350_GPIO ((GPIO_RegDef *) GPIO_BASE )"
.LASF395:
	.string	"___int_wchar_t_h "
.LASF1118:
	.string	"IRQ_GP14_SOURCE 24"
.LASF1218:
	.string	"DMA_BSIZE_1024 (0xa)"
.LASF530:
	.string	"UINTMAX_C(c) __UINTMAX_C(c)"
.LASF1137:
	.string	"GPIO_BASE _IO_(0xF0700000)"
.LASF1348:
	.string	"UART2_TRIG_LVL UART_TRIG_LVL_1"
.LASF914:
	.string	"NDS_MHPMCOUNTER18H 0xb92"
.LASF176:
	.string	"__DBL_EPSILON__ ((double)2.22044604925031308084726333618164062e-16L)"
.LASF1436:
	.string	"send_active"
.LASF838:
	.string	"NDS_MIE 0x304"
.LASF1188:
	.string	"HAL_MEIP_DISABLE() clear_csr(NDS_MIE, MIP_MEIP)"
.LASF908:
	.string	"NDS_MHPMCOUNTER12H 0xb8c"
.LASF739:
	.string	"FPPUSH XSTR(FPSTORE)"
.LASF1530:
	.string	"priority"
.LASF347:
	.string	"__RTTHREAD__ 1"
.LASF549:
	.string	"AE350_UART_MODE_SYNCHRONOUS_MASTER (0x02UL << AE350_UART_CONTROL_Pos)"
.LASF49:
	.string	"__UINT8_TYPE__ unsigned char"
.LASF938:
	.string	"NDS_MHPMEVENT13 0x32d"
.LASF219:
	.string	"__FLT32_MIN_10_EXP__ (-37)"
.LASF1216:
	.string	"DMA_BSIZE_256 (0x8)"
.LASF41:
	.string	"__UINTMAX_TYPE__ long long unsigned int"
.LASF252:
	.string	"__FLT128_MIN_EXP__ (-16381)"
.LASF1406:
	.string	"_AE350_DRIVER_UART"
.LASF5:
	.string	"__STDC_UTF_32__ 1"
.LASF111:
	.string	"__INT_LEAST16_MAX__ 0x7fff"
.LASF1529:
	.string	"source"
.LASF960:
	.string	"NDS_TDATA3 0x7a3"
.LASF991:
	.string	"NDS_MECC_CODE 0x7c2"
.LASF924:
	.string	"NDS_MHPMCOUNTER28H 0xb9c"
.LASF1373:
	.string	"tx_underflow"
.LASF50:
	.string	"__UINT16_TYPE__ short unsigned int"
.LASF1391:
	.string	"synchronous_master"
.LASF603:
	.string	"AE350_UART_ERROR_CPOL (AE350_DRIVER_ERROR_SPECIFIC - 7)"
.LASF1260:
	.string	"DMA_CH_CTRL_DSTREQ(n) (((n) << DMA_CH_CTRL_DSTREQ_POS) & DMA_CH_CTRL_DSTREQ_MASK)"
.LASF645:
	.string	"DRV_UART2_DMA_TX_CH 0"
.LASF1201:
	.string	"DEV_GPIO AE350_GPIO"
.LASF915:
	.string	"NDS_MHPMCOUNTER19H 0xb93"
.LASF1163:
	.string	"NDS_PLIC_SW_BASE PLIC_SW_BASE"
.LASF369:
	.string	"_T_SIZE_ "
.LASF279:
	.string	"__FLT32X_HAS_INFINITY__ 1"
.LASF929:
	.string	"NDS_MHPMEVENT4 0x324"
.LASF1148:
	.string	"APBBRG_BASE _IO_(0xF0000000)"
.LASF884:
	.string	"NDS_MHPMCOUNTER19 0xb13"
.LASF215:
	.string	"__FLT16_IS_IEC_60559__ 1"
.LASF604:
	.string	"AE350_UART_ERROR_CPHA (AE350_DRIVER_ERROR_SPECIFIC - 8)"
.LASF1327:
	.string	"UARTC_LSR_ERRF 0x80"
.LASF109:
	.string	"__INT8_C(c) c"
.LASF1435:
	.string	"tx_def_val"
.LASF190:
	.string	"__LDBL_DECIMAL_DIG__ 36"
.LASF1142:
	.string	"AHB_EXT_BASE _IO_(0xE8000000)"
.LASF767:
	.string	"NDS_HPMCOUNTER13 0xc0d"
.LASF948:
	.string	"NDS_MHPMEVENT23 0x337"
.LASF229:
	.string	"__FLT32_HAS_INFINITY__ 1"
.LASF434:
	.string	"INT_LEAST8_MAX __INT_LEAST8_MAX__"
.LASF535:
	.string	"false 0"
.LASF153:
	.string	"__FLT_MAX_EXP__ 128"
.LASF103:
	.string	"__INT64_MAX__ 0x7fffffffffffffffLL"
.LASF1256:
	.string	"DMA_CH_CTRL_SRCREQ_MASK (0x0F << DMA_CH_CTRL_SRCREQ_POS)"
.LASF12:
	.string	"__ATOMIC_SEQ_CST 5"
.LASF925:
	.string	"NDS_MHPMCOUNTER29H 0xb9d"
.LASF327:
	.string	"__riscv_div 1"
.LASF763:
	.string	"NDS_HPMCOUNTER9 0xc09"
.LASF174:
	.string	"__DBL_NORM_MAX__ ((double)1.79769313486231570814527423731704357e+308L)"
.LASF1069:
	.string	"NDS_PMAADDR7 0xbd7"
.LASF216:
	.string	"__FLT32_MANT_DIG__ 24"
.LASF65:
	.string	"__UINT_FAST8_TYPE__ unsigned int"
.LASF718:
	.string	"MIP_MTIP (1 << IRQ_M_TIMER)"
.LASF255:
	.string	"__FLT128_MAX_10_EXP__ 4932"
.LASF846:
	.string	"NDS_PMPCFG0 0x3a0"
.LASF482:
	.string	"INTPTR_MAX __INTPTR_MAX__"
.LASF1301:
	.string	"UARTC_FCR_RXFIFO_TRGL_SHIFT 6"
.LASF449:
	.string	"UINT_LEAST32_MAX"
.LASF1282:
	.string	"UARTC_FCR_TFIFO16_TRGL1 0x00"
.LASF465:
	.string	"INT_FAST16_MIN"
.LASF23:
	.string	"__SIZEOF_DOUBLE__ 8"
.LASF677:
	.string	"MSTATUS_PUM 0x00040000"
.LASF670:
	.string	"MSTATUS_MPIE 0x00000080"
.LASF984:
	.string	"NDS_DSCRATCH0 0x7b2"
.LASF876:
	.string	"NDS_MHPMCOUNTER11 0xb0b"
.LASF525:
	.string	"UINT64_C"
.LASF144:
	.string	"__GCC_IEC_559_COMPLEX 2"
.LASF851:
	.string	"NDS_PMPADDR1 0x3b1"
.LASF834:
	.string	"NDS_MSTATUS 0x300"
.LASF1512:
	.string	"uart_get_rxcount"
.LASF1019:
	.string	"NDS_SLIE 0x9c4"
.LASF969:
	.string	"NDS_HSCRATCH 0x240"
.LASF214:
	.string	"__FLT16_HAS_QUIET_NAN__ 1"
.LASF278:
	.string	"__FLT32X_HAS_DENORM__ 1"
.LASF300:
	.string	"__USER_LABEL_PREFIX__ "
.LASF377:
	.string	"_SIZE_T_DECLARED "
.LASF1413:
	.string	"Receive"
.LASF1219:
	.string	"DMA_WIDTH_BYTE (0x0)"
.LASF894:
	.string	"NDS_MHPMCOUNTER29 0xb1d"
.LASF203:
	.string	"__FLT16_MIN_10_EXP__ (-4)"
.LASF428:
	.string	"INT64_MAX __INT64_MAX__"
.LASF1480:
	.string	"data_in"
.LASF905:
	.string	"NDS_MHPMCOUNTER9H 0xb89"
.LASF639:
	.string	"DRV_UART1_DMA_TX_REQID 4"
.LASF455:
	.string	"UINT_LEAST64_MAX"
.LASF822:
	.string	"NDS_STVEC 0x105"
.LASF1336:
	.string	"UART_FLAG_INITIALIZED (1U << 0)"
.LASF1074:
	.string	"NDS_PMAADDR12 0xbdc"
.LASF128:
	.string	"__INT_FAST8_MAX__ 0x7fffffff"
.LASF386:
	.string	"_WCHAR_T "
.LASF1500:
	.string	"uart1_power_control"
.LASF733:
	.string	"FPREGBYTES (1 << LOG_FPREGBYTES)"
.LASF1499:
	.string	"uart1_send"
.LASF129:
	.string	"__INT_FAST8_WIDTH__ 32"
.LASF1164:
	.string	"__PLIC_H__ "
.LASF860:
	.string	"NDS_PMPADDR10 0x3ba"
.LASF1497:
	.string	"uart1_transfer"
.LASF469:
	.string	"INT_FAST32_MAX"
.LASF1525:
	.string	"current_ptr"
.LASF943:
	.string	"NDS_MHPMEVENT18 0x332"
.LASF218:
	.string	"__FLT32_MIN_EXP__ (-125)"
.LASF751:
	.string	"NDS_FFLAGS 0x001"
.LASF1447:
	.string	"UART_INFO"
.LASF564:
	.string	"AE350_UART_PARITY_EVEN (1UL << AE350_UART_PARITY_Pos)"
.LASF778:
	.string	"NDS_HPMCOUNTER24 0xc18"
.LASF189:
	.string	"__DECIMAL_DIG__ 36"
.LASF169:
	.string	"__DBL_MIN_10_EXP__ (-307)"
.LASF1501:
	.string	"uart1_uninitialize"
.LASF1037:
	.string	"NDS_MSAVECAUSE2 0x7da"
.LASF277:
	.string	"__FLT32X_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F32x"
.LASF754:
	.string	"NDS_CYCLE 0xc00"
.LASF152:
	.string	"__FLT_MIN_10_EXP__ (-37)"
.LASF717:
	.string	"MIP_HTIP (1 << IRQ_H_TIMER)"
.LASF452:
	.string	"INT_LEAST64_MAX __INT_LEAST64_MAX__"
.LASF1513:
	.string	"uart_get_txcount"
.LASF978:
	.string	"NDS_MDBASE 0x384"
.LASF1535:
	.string	"__nds__plic_set_priority"
.LASF166:
	.string	"__DBL_MANT_DIG__ 53"
.LASF679:
	.string	"MSTATUS_VM 0x1F000000"
.LASF1319:
	.string	"UARTC_MCR_AFE 0x20"
.LASF1334:
	.string	"UARTC_MSR_RI 0x40"
.LASF90:
	.string	"__PTRDIFF_WIDTH__ 32"
.LASF1494:
	.string	"uart1_control"
.LASF1329:
	.string	"UARTC_MSR_DDSR 0x2"
.LASF1195:
	.string	"DEV_SMU AE350_SMU"
.LASF574:
	.string	"AE350_UART_FLOW_CONTROL_NONE (0UL << AE350_UART_FLOW_CONTROL_Pos)"
.LASF1289:
	.string	"UARTC_FCR_RFIFO16_TRGL14 0xc0"
.LASF547:
	.string	"AE350_UART_CONTROL_Msk (0xFFUL << AE350_UART_CONTROL_Pos)"
.LASF934:
	.string	"NDS_MHPMEVENT9 0x329"
.LASF1474:
	.string	"uart2_control"
.LASF475:
	.string	"INT_FAST64_MAX"
.LASF794:
	.string	"NDS_HPMCOUNTER8H 0xc88"
.LASF1533:
	.string	"uart_irq_handler"
.LASF619:
	.string	"__DMA_AE350_H__ "
.LASF274:
	.string	"__FLT32X_NORM_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF1450:
	.string	"reqsel"
.LASF159:
	.string	"__FLT_EPSILON__ 1.19209289550781250000000000000000000e-7F"
.LASF563:
	.string	"AE350_UART_PARITY_NONE (0UL << AE350_UART_PARITY_Pos)"
.LASF942:
	.string	"NDS_MHPMEVENT17 0x331"
.LASF1210:
	.string	"DMA_BSIZE_4 (0x2)"
.LASF485:
	.string	"UINTPTR_MAX"
.LASF1174:
	.string	"PLIC_THRESHOLD_SHIFT_PER_TARGET 12"
.LASF975:
	.string	"NDS_MBOUND 0x381"
.LASF1212:
	.string	"DMA_BSIZE_16 (0x4)"
.LASF516:
	.string	"INT32_C(c) __INT32_C(c)"
.LASF286:
	.string	"__FLT64X_MIN_10_EXP__ (-4931)"
.LASF316:
	.string	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1"
.LASF51:
	.string	"__UINT32_TYPE__ long unsigned int"
.LASF875:
	.string	"NDS_MHPMCOUNTER10 0xb0a"
.LASF1265:
	.string	"UARTC_IER_RDR 0x01"
.LASF1446:
	.string	"baudrate"
.LASF785:
	.string	"NDS_HPMCOUNTER31 0xc1f"
.LASF121:
	.string	"__UINT8_C(c) c"
.LASF425:
	.string	"UINT32_MAX"
.LASF223:
	.string	"__FLT32_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF1457:
	.string	"info"
.LASF1382:
	.string	"AE350_UART_RTS_SET"
.LASF1062:
	.string	"NDS_PMAADDR0 0xbd0"
.LASF1160:
	.string	"__INTERRUPT_H__ "
.LASF321:
	.string	"__SIZEOF_WINT_T__ 4"
.LASF1116:
	.string	"IRQ_GP12_SOURCE 22"
.LASF512:
	.string	"INT8_C(c) __INT8_C(c)"
.LASF420:
	.string	"UINT16_MAX __UINT16_MAX__"
.LASF1119:
	.string	"IRQ_GP15_SOURCE 25"
.LASF770:
	.string	"NDS_HPMCOUNTER16 0xc10"
.LASF755:
	.string	"NDS_TIME 0xc01"
.LASF1254:
	.string	"DMA_CH_CTRL_DSTADDR_FIX ( 2 << DMA_CH_CTRL_DSTADDRCTRL_POS)"
.LASF1358:
	.string	"unsigned char"
.LASF1452:
	.string	"capabilities"
.LASF1430:
	.string	"tx_num"
.LASF213:
	.string	"__FLT16_HAS_INFINITY__ 1"
.LASF795:
	.string	"NDS_HPMCOUNTER9H 0xc89"
.LASF711:
	.string	"TRAP_S_L_PAGE_FAULT 13"
.LASF897:
	.string	"NDS_MCYCLEH 0xb80"
.LASF362:
	.string	"_PTRDIFF_T_DECLARED "
.LASF1281:
	.string	"UARTC_FCR_DMA_EN 0x08"
.LASF1367:
	.string	"AE350_POWER_FULL"
.LASF74:
	.string	"__INT_MAX__ 0x7fffffff"
.LASF579:
	.string	"AE350_UART_CPOL_Msk (1UL << AE350_UART_CPOL_Pos)"
.LASF1011:
	.string	"NDS_MCOUNTERMASK_U 0x7d3"
.LASF1089:
	.string	"OSCFREQ (100 * MHz)"
.LASF1125:
	.string	"_IO_(addr) (addr)"
.LASF706:
	.string	"TRAP_M_STACKUDF 33"
.LASF1509:
	.string	"uart_get_status"
.LASF150:
	.string	"__FLT_DIG__ 6"
.LASF593:
	.string	"AE350_UART_CONTROL_BREAK (0x17UL << AE350_UART_CONTROL_Pos)"
.LASF149:
	.string	"__FLT_MANT_DIG__ 24"
.LASF1392:
	.string	"synchronous_slave"
.LASF1523:
	.string	"uart_rxline_irq_handler"
.LASF170:
	.string	"__DBL_MAX_EXP__ 1024"
.LASF1204:
	.string	"DMA_NUMBER_OF_CHANNELS ((uint8_t) 8)"
.LASF614:
	.string	"AE350_UART_EVENT_RX_PARITY_ERROR (1UL << 9)"
.LASF122:
	.string	"__UINT_LEAST16_MAX__ 0xffff"
.LASF854:
	.string	"NDS_PMPADDR4 0x3b4"
.LASF91:
	.string	"__SIZE_WIDTH__ 32"
.LASF1084:
	.string	"read_fcsr() ({ unsigned long __tmp; asm volatile (\"frcsr %0\" : \"=r\"(__tmp)); __tmp; })"
.LASF270:
	.string	"__FLT32X_MAX_EXP__ 1024"
.LASF885:
	.string	"NDS_MHPMCOUNTER20 0xb14"
.LASF600:
	.string	"AE350_UART_ERROR_PARITY (AE350_DRIVER_ERROR_SPECIFIC - 4)"
.LASF1113:
	.string	"IRQ_GP9_SOURCE 19"
.LASF1383:
	.string	"AE350_UART_DTR_CLEAR"
.LASF1441:
	.string	"cb_event"
.LASF25:
	.string	"__SIZEOF_SIZE_T__ 4"
.LASF1370:
	.string	"_AE350_UART_STATUS"
.LASF865:
	.string	"NDS_PMPADDR15 0x3bf"
.LASF354:
	.string	"_PTRDIFF_T "
.LASF1312:
	.string	"UARTC_LCR_SETBREAK 0x40"
.LASF290:
	.string	"__FLT64X_MAX__ 1.18973149535723176508575932662800702e+4932F64x"
.LASF1306:
	.string	"UARTC_LCR_STOP1 0x00"
.LASF440:
	.string	"INT_LEAST16_MAX __INT_LEAST16_MAX__"
.LASF126:
	.string	"__UINT_LEAST64_MAX__ 0xffffffffffffffffULL"
.LASF361:
	.string	"_GCC_PTRDIFF_T "
.LASF647:
	.string	"DRV_UART2_DMA_RX_EN 0"
.LASF1193:
	.string	"DEV_PLMT AE350_PLMT"
.LASF591:
	.string	"AE350_UART_CONTROL_TX (0x15UL << AE350_UART_CONTROL_Pos)"
.LASF583:
	.string	"AE350_UART_CPHA_Msk (1UL << AE350_UART_CPHA_Pos)"
.LASF1259:
	.string	"DMA_CH_CTRL_DSTREQ_MASK (0x0F << DMA_CH_CTRL_DSTREQ_POS)"
.LASF505:
	.string	"WCHAR_MIN"
.LASF1177:
	.string	"HAL_MTIMER_INITIAL() "
.LASF1507:
	.string	"modem_status"
.LASF1437:
	.string	"UART_TRANSFER_INFO"
.LASF1055:
	.string	"NDS_PUSHMCAUSE 0x7ee"
.LASF716:
	.string	"MIP_STIP (1 << IRQ_S_TIMER)"
.LASF819:
	.string	"NDS_SEDELEG 0x102"
.LASF462:
	.string	"UINT_FAST8_MAX __UINT_FAST8_MAX__"
.LASF780:
	.string	"NDS_HPMCOUNTER26 0xc1a"
.LASF1252:
	.string	"DMA_CH_CTRL_DSTADDR_INC ( 0 << DMA_CH_CTRL_DSTADDRCTRL_POS)"
.LASF1477:
	.string	"uart2_get_txcount"
.LASF496:
	.string	"PTRDIFF_MIN (-PTRDIFF_MAX - 1)"
.LASF774:
	.string	"NDS_HPMCOUNTER20 0xc14"
.LASF728:
	.string	"LOG_REGBYTES 2"
.LASF172:
	.string	"__DBL_DECIMAL_DIG__ 17"
.LASF20:
	.string	"__SIZEOF_LONG_LONG__ 8"
.LASF1178:
	.string	"HAL_MTIME_ENABLE() set_csr(NDS_MIE, MIP_MTIP)"
.LASF501:
	.string	"SIZE_MAX"
.LASF63:
	.string	"__INT_FAST32_TYPE__ int"
.LASF504:
	.string	"WCHAR_MAX __WCHAR_MAX__"
.LASF288:
	.string	"__FLT64X_MAX_10_EXP__ 4932"
.LASF222:
	.string	"__FLT32_DECIMAL_DIG__ 9"
.LASF348:
	.string	"__UART_AE350_H__ "
.LASF988:
	.string	"NDS_MMSC_CFG 0xfc2"
.LASF1129:
	.string	"DDRMEM_BASE 0x00000000"
.LASF1400:
	.string	"event_rx_timeout"
.LASF519:
	.string	"UINT8_C"
.LASF39:
	.string	"__WINT_TYPE__ unsigned int"
.LASF1299:
	.string	"UARTC_FCR_TXFIFO_TRGL_SHIFT 4"
.LASF601:
	.string	"AE350_UART_ERROR_STOP_BITS (AE350_DRIVER_ERROR_SPECIFIC - 5)"
.LASF1106:
	.string	"IRQ_GP2_SOURCE 12"
.LASF799:
	.string	"NDS_HPMCOUNTER13H 0xc8d"
.LASF926:
	.string	"NDS_MHPMCOUNTER30H 0xb9e"
.LASF331:
	.string	"__riscv_fdiv 1"
.LASF1122:
	.string	"__I volatile const"
.LASF1411:
	.string	"PowerControl"
.LASF1028:
	.string	"NDS_SCOUNTERMASK_M 0x9d1"
.LASF976:
	.string	"NDS_MIBASE 0x382"
.LASF1341:
	.string	"UART_FLAG_SEND_ACTIVE (1U << 5)"
.LASF831:
	.string	"NDS_MARCHID 0xf12"
.LASF571:
	.string	"AE350_UART_STOP_BITS_0_5 (3UL << AE350_UART_STOP_BITS_Pos)"
.LASF247:
	.string	"__FLT64_HAS_QUIET_NAN__ 1"
.LASF1488:
	.string	"uart2_get_capabilities"
.LASF1242:
	.string	"DMA_CH_CTRL_DWIDTH(n) (((n) << DMA_CH_CTRL_DWIDTH_POS) & DMA_CH_CTRL_DWIDTH_MASK)"
.LASF605:
	.string	"AE350_UART_EVENT_SEND_COMPLETE (1UL << 0)"
.LASF1328:
	.string	"UARTC_MSR_DCTS 0x1"
.LASF710:
	.string	"TRAP_S_I_PAGE_FAULT 12"
.LASF1202:
	.string	"DEV_I2C AE350_I2C"
.LASF992:
	.string	"NDS_MNVEC 0x7c3"
.LASF75:
	.string	"__LONG_MAX__ 0x7fffffffL"
.LASF1444:
	.string	"mode"
.LASF652:
	.string	"DRV_SPI_DMA_TX_CH 0"
.LASF394:
	.string	"_WCHAR_T_H "
.LASF108:
	.string	"__INT_LEAST8_MAX__ 0x7f"
.LASF151:
	.string	"__FLT_MIN_EXP__ (-125)"
.LASF1456:
	.string	"dma_rx"
.LASF31:
	.string	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF1471:
	.string	"uart2_get_modem_status"
.LASF127:
	.string	"__UINT64_C(c) c ## ULL"
.LASF1296:
	.string	"UARTC_FCR_DMA_EN_MASK 0x08"
.LASF1409:
	.string	"Initialize"
.LASF1065:
	.string	"NDS_PMAADDR3 0xbd3"
.LASF199:
	.string	"__LDBL_IS_IEC_60559__ 1"
.LASF267:
	.string	"__FLT32X_DIG__ 15"
.LASF1146:
	.string	"AHBDEC_BASE _IO_(0xE0000000)"
.LASF1238:
	.string	"DMA_CH_CTRL_SWIDTH_MASK (0x07 << DMA_CH_CTRL_SWIDTH_POS)"
.LASF1438:
	.string	"_UART_RX_STATUS"
.LASF1042:
	.string	"NDS_TXEVT 0x812"
.LASF146:
	.string	"__FLT_EVAL_METHOD_TS_18661_3__ 0"
.LASF1206:
	.string	"DMA_EVENT_ERROR (2)"
.LASF94:
	.string	"__UINTMAX_MAX__ 0xffffffffffffffffULL"
.LASF1290:
	.string	"UARTC_FCR_FIFO_EN_MASK 0x01"
.LASF1151:
	.string	"AE350_SMU ((SMU_RegDef *) SMU_BASE )"
.LASF148:
	.string	"__FLT_RADIX__ 2"
.LASF859:
	.string	"NDS_PMPADDR9 0x3b9"
.LASF588:
	.string	"AE350_UART_SET_SMART_CARD_GUARD_TIME (0x12UL << AE350_UART_CONTROL_Pos)"
.LASF1468:
	.string	"dma_channel_disable"
.LASF443:
	.string	"UINT_LEAST16_MAX"
.LASF328:
	.string	"__riscv_muldiv 1"
.LASF890:
	.string	"NDS_MHPMCOUNTER25 0xb19"
.LASF471:
	.string	"INT_FAST32_MIN"
.LASF1153:
	.string	"AE350_UART2 ((UART_RegDef *) UART2_BASE )"
.LASF266:
	.string	"__FLT32X_MANT_DIG__ 53"
.LASF85:
	.string	"__INT_WIDTH__ 32"
.LASF1155:
	.string	"AE350_WDT ((WDT_RegDef *) WDT_BASE )"
.LASF842:
	.string	"NDS_MEPC 0x341"
.LASF1090:
	.string	"CPUFREQ (800 * MHz)"
.LASF986:
	.string	"NDS_MICM_CFG 0xfc0"
.LASF558:
	.string	"AE350_UART_DATA_BITS_7 (7UL << AE350_UART_DATA_BITS_Pos)"
.LASF232:
	.string	"__FLT32_IS_IEC_60559__ 1"
.LASF367:
	.string	"_SIZE_T "
.LASF1458:
	.string	"UART_RESOURCES"
.LASF1389:
	.string	"_AE350_UART_CAPABILITIES"
.LASF1046:
	.string	"NDS_MNXTI 0x345"
.LASF112:
	.string	"__INT16_C(c) c"
.LASF325:
	.string	"__riscv_atomic 1"
.LASF457:
	.string	"INT_FAST8_MAX"
.LASF1475:
	.string	"control"
.LASF272:
	.string	"__FLT32X_DECIMAL_DIG__ 17"
.LASF939:
	.string	"NDS_MHPMEVENT14 0x32e"
.LASF310:
	.string	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2"
.LASF798:
	.string	"NDS_HPMCOUNTER12H 0xc8c"
.LASF46:
	.string	"__INT16_TYPE__ short int"
.LASF251:
	.string	"__FLT128_DIG__ 33"
.LASF536:
	.string	"__bool_true_false_are_defined 1"
.LASF477:
	.string	"INT_FAST64_MIN"
.LASF379:
	.string	"___int_size_t_h "
.LASF1088:
	.string	"MHz 1000000"
.LASF374:
	.string	"_SIZE_T_DEFINED_ "
.LASF314:
	.string	"__GCC_ATOMIC_LONG_LOCK_FREE 2"
.LASF408:
	.string	"_GCC_STDINT_H "
.LASF1317:
	.string	"UARTC_MCR_OUT2 0x08"
.LASF494:
	.string	"PTRDIFF_MAX __PTRDIFF_MAX__"
.LASF1519:
	.string	"uart_uninitialize"
.LASF1357:
	.string	"uint8_t"
.LASF898:
	.string	"NDS_MINSTRETH 0xb82"
.LASF1115:
	.string	"IRQ_GP11_SOURCE 21"
.LASF638:
	.string	"DRV_UART1_DMA_TX_CH 0"
.LASF402:
	.string	"NULL"
.LASF1150:
	.string	"AE350_DMA ((DMA_RegDef *) DMAC_BASE )"
.LASF1395:
	.string	"smart_card"
.LASF1052:
	.string	"NDS_PUSHMXSTATUS 0x7eb"
.LASF335:
	.string	"__riscv_arch_test 1"
.LASF195:
	.string	"__LDBL_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966L"
.LASF691:
	.string	"IRQ_H_EXT 10"
.LASF1006:
	.string	"NDS_MRANDSTATEH 0x7ff"
.LASF164:
	.string	"__FP_FAST_FMAF 1"
.LASF1180:
	.string	"HAL_MSWI_INITIAL() { __nds__plic_sw_set_priority(1, 1); __nds__plic_sw_enable_interrupt(1); }"
.LASF930:
	.string	"NDS_MHPMEVENT5 0x325"
.LASF931:
	.string	"NDS_MHPMEVENT6 0x326"
.LASF618:
	.string	"AE350_UART_EVENT_RI (1UL << 13)"
.LASF1316:
	.string	"UARTC_MCR_OUT1 0x04"
.LASF694:
	.string	"IRQ_HOST 13"
.LASF397:
	.string	"_GCC_WCHAR_T "
.LASF392:
	.string	"_WCHAR_T_DEFINED_ "
.LASF856:
	.string	"NDS_PMPADDR6 0x3b6"
.LASF722:
	.string	"MILMB_IEN (0x1UL)"
.LASF949:
	.string	"NDS_MHPMEVENT24 0x338"
.LASF1179:
	.string	"HAL_MTIME_DISABLE() clear_csr(NDS_MIE, MIP_MTIP);"
.LASF1111:
	.string	"IRQ_GP7_SOURCE 17"
.LASF135:
	.string	"__INT_FAST64_WIDTH__ 64"
.LASF193:
	.string	"__LDBL_MIN__ 3.36210314311209350626267781732175260e-4932L"
.LASF456:
	.string	"UINT_LEAST64_MAX __UINT_LEAST64_MAX__"
.LASF1070:
	.string	"NDS_PMAADDR8 0xbd8"
.LASF840:
	.string	"NDS_MCOUNTEREN 0x306"
.LASF303:
	.string	"__CHAR_UNSIGNED__ 1"
.LASF1398:
	.string	"flow_control_cts"
.LASF1168:
	.string	"PLIC_PRIORITY_SHIFT_PER_SOURCE 2"
.LASF809:
	.string	"NDS_HPMCOUNTER23H 0xc97"
.LASF185:
	.string	"__LDBL_MIN_EXP__ (-16381)"
.LASF400:
	.string	"_BSD_WCHAR_T_"
.LASF1274:
	.string	"UARTC_IIR_MODEM 0x00"
.LASF1297:
	.string	"UARTC_FCR_DMA_EN_BIT 3"
.LASF72:
	.string	"__SCHAR_MAX__ 0x7f"
.LASF847:
	.string	"NDS_PMPCFG1 0x3a1"
.LASF318:
	.string	"__GCC_HAVE_DWARF2_CFI_ASM 1"
.LASF1097:
	.string	"IRQ_PIT_SOURCE 3"
.LASF258:
	.string	"__FLT128_NORM_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF416:
	.string	"INT16_MAX __INT16_MAX__"
.LASF372:
	.string	"_SIZE_T_ "
.LASF1346:
	.string	"AE350_UART_DRV_VERSION AE350_DRIVER_VERSION_MAJOR_MINOR(2,9)"
.LASF832:
	.string	"NDS_MIMPID 0xf13"
.LASF205:
	.string	"__FLT16_MAX_10_EXP__ 4"
.LASF383:
	.string	"__need_size_t"
.LASF364:
	.string	"__need_ptrdiff_t"
.LASF101:
	.string	"__INT16_MAX__ 0x7fff"
.LASF1448:
	.string	"_UART_DMA"
.LASF446:
	.string	"INT_LEAST32_MAX __INT_LEAST32_MAX__"
.LASF800:
	.string	"NDS_HPMCOUNTER14H 0xc8e"
.LASF1325:
	.string	"UARTC_LSR_THRE 0x20"
.LASF1440:
	.string	"_UART_INFO"
.LASF668:
	.string	"MSTATUS_SPIE 0x00000020"
.LASF163:
	.string	"__FLT_HAS_QUIET_NAN__ 1"
.LASF143:
	.string	"__GCC_IEC_559 2"
.LASF531:
	.string	"_GCC_WRAP_STDINT_H "
.LASF480:
	.string	"UINT_FAST64_MAX __UINT_FAST64_MAX__"
.LASF1284:
	.string	"UARTC_FCR_TFIFO16_TRGL9 0x20"
.LASF690:
	.string	"IRQ_S_EXT 9"
.LASF712:
	.string	"TRAP_S_S_PAGE_FAULT 15"
.LASF869:
	.string	"NDS_MHPMCOUNTER4 0xb04"
.LASF498:
	.string	"SIG_ATOMIC_MAX __SIG_ATOMIC_MAX__"
.LASF1315:
	.string	"UARTC_MCR_RTS 0x02"
.LASF1293:
	.string	"UARTC_FCR_RFIFO_RESET_BIT 1"
.LASF291:
	.string	"__FLT64X_NORM_MAX__ 1.18973149535723176508575932662800702e+4932F64x"
.LASF1249:
	.string	"DMA_CH_CTRL_SRCADDR_FIX ( 2 << DMA_CH_CTRL_SRCADDRCTRL_POS)"
.LASF209:
	.string	"__FLT16_MIN__ 6.10351562500000000000000000000000000e-5F16"
.LASF529:
	.string	"UINTMAX_C"
.LASF1439:
	.string	"UART_RX_STATUS"
.LASF83:
	.string	"__SCHAR_WIDTH__ 8"
.LASF30:
	.string	"__ORDER_PDP_ENDIAN__ 3412"
.LASF1227:
	.string	"DMA_CH_CTRL_SBINFIDX_POS ( 31)"
.LASF13:
	.string	"__ATOMIC_ACQUIRE 2"
.LASF633:
	.string	"DRV_I2C_DMA_RX_EN 0"
.LASF1343:
	.string	"UART_TRIG_LVL_4 (0x40U)"
.LASF985:
	.string	"NDS_DSCRATCH1 0x7b3"
.LASF64:
	.string	"__INT_FAST64_TYPE__ long long int"
.LASF552:
	.string	"AE350_UART_MODE_IRDA (0x05UL << AE350_UART_CONTROL_Pos)"
.LASF944:
	.string	"NDS_MHPMEVENT19 0x333"
.LASF546:
	.string	"AE350_UART_CONTROL_Pos 0"
.LASF615:
	.string	"AE350_UART_EVENT_CTS (1UL << 10)"
.LASF117:
	.string	"__INT_LEAST64_MAX__ 0x7fffffffffffffffLL"
.LASF464:
	.string	"INT_FAST16_MAX __INT_FAST16_MAX__"
.LASF125:
	.string	"__UINT32_C(c) c ## UL"
.LASF1200:
	.string	"DEV_RTC AE350_RTC"
.LASF524:
	.string	"UINT32_C(c) __UINT32_C(c)"
.LASF801:
	.string	"NDS_HPMCOUNTER15H 0xc8f"
.LASF573:
	.string	"AE350_UART_FLOW_CONTROL_Msk (3UL << AE350_UART_FLOW_CONTROL_Pos)"
.LASF116:
	.string	"__INT_LEAST32_WIDTH__ 32"
.LASF562:
	.string	"AE350_UART_PARITY_Msk (3UL << AE350_UART_PARITY_Pos)"
.LASF487:
	.string	"INTMAX_MAX"
.LASF1504:
	.string	"uartx"
.LASF896:
	.string	"NDS_MHPMCOUNTER31 0xb1f"
.LASF200:
	.string	"__FLT16_MANT_DIG__ 11"
.LASF432:
	.string	"UINT64_MAX __UINT64_MAX__"
.LASF1379:
	.string	"_AE350_POWER_STATE"
.LASF1476:
	.string	"uart2_get_rxcount"
.LASF96:
	.string	"__INTMAX_WIDTH__ 64"
.LASF714:
	.string	"MIP_HSIP (1 << IRQ_H_SOFT)"
.LASF545:
	.string	"AE350_UART_API_VERSION AE350_DRIVER_VERSION_MAJOR_MINOR(2,02)"
.LASF811:
	.string	"NDS_HPMCOUNTER25H 0xc99"
.LASF662:
	.string	"SUPPORT_PFT_ARCH 1"
.LASF1426:
	.string	"UART_RegDef"
.LASF1366:
	.string	"AE350_POWER_LOW"
.LASF553:
	.string	"AE350_UART_MODE_SMART_CARD (0x06UL << AE350_UART_CONTROL_Pos)"
.LASF119:
	.string	"__INT_LEAST64_WIDTH__ 64"
.LASF1091:
	.string	"RTCFREQ (32768 )"
.LASF1181:
	.string	"HAL_MSWI_ENABLE() set_csr(NDS_MIE, MIP_MSIP)"
.LASF567:
	.string	"AE350_UART_STOP_BITS_Msk (3UL << AE350_UART_STOP_BITS_Pos)"
.LASF11:
	.string	"__ATOMIC_RELAXED 0"
.LASF1044:
	.string	"NDS_MFIOB 0x7f1"
.LASF964:
	.string	"NDS_HSTATUS 0x200"
.LASF1213:
	.string	"DMA_BSIZE_32 (0x5)"
.LASF623:
	.string	"BUILD_MODE BUILD_BURN"
.LASF699:
	.string	"TRAP_S_ECALL 9"
.LASF1246:
	.string	"DMA_CH_CTRL_SRCADDRCTRL_MASK (0x03 << DMA_CH_CTRL_SRCADDRCTRL_POS)"
.LASF1421:
	.string	"AE350_DRIVER_UART"
.LASF1451:
	.string	"UART_DMA"
.LASF177:
	.string	"__DBL_DENORM_MIN__ ((double)4.94065645841246544176568792868221372e-324L)"
.LASF1131:
	.string	"SMU_BASE _IO_(0xF0100000)"
.LASF802:
	.string	"NDS_HPMCOUNTER16H 0xc90"
.LASF165:
	.string	"__FLT_IS_IEC_60559__ 1"
.LASF592:
	.string	"AE350_UART_CONTROL_RX (0x16UL << AE350_UART_CONTROL_Pos)"
.LASF698:
	.string	"TRAP_U_ECALL 8"
.LASF665:
	.string	"MSTATUS_HIE 0x00000004"
.LASF757:
	.string	"NDS_HPMCOUNTER3 0xc03"
.LASF1376:
	.string	"rx_framing_error"
.LASF526:
	.string	"UINT64_C(c) __UINT64_C(c)"
.LASF1416:
	.string	"GetRxCount"
.LASF1228:
	.string	"DMA_CH_CTRL_SBINF(n) ((n) << DMA_CH_CTRL_SBINFIDX_POS)"
.LASF902:
	.string	"NDS_MHPMCOUNTER6H 0xb86"
.LASF659:
	.string	"DRV_WDT 1"
.LASF569:
	.string	"AE350_UART_STOP_BITS_2 (1UL << AE350_UART_STOP_BITS_Pos)"
.LASF771:
	.string	"NDS_HPMCOUNTER17 0xc11"
.LASF1449:
	.string	"channel"
.LASF384:
	.string	"__wchar_t__ "
.LASF993:
	.string	"NDS_MXSTATUS 0x7c4"
.LASF1489:
	.string	"uart2_irq_handler"
.LASF895:
	.string	"NDS_MHPMCOUNTER30 0xb1e"
.LASF1080:
	.string	"write_csr(reg,val) ({ asm volatile (\"csrw \" XSTR(reg) \", %0\" :: \"rK\"(val)); })"
.LASF830:
	.string	"NDS_MVENDORID 0xf11"
.LASF14:
	.string	"__ATOMIC_RELEASE 3"
.LASF812:
	.string	"NDS_HPMCOUNTER26H 0xc9a"
.LASF1000:
	.string	"NDS_MMISC_CTL 0x7d0"
.LASF110:
	.string	"__INT_LEAST8_WIDTH__ 8"
.LASF7:
	.string	"__GNUC__ 13"
.LASF1418:
	.string	"GetStatus"
.LASF492:
	.string	"UINTMAX_MAX __UINTMAX_MAX__"
.LASF62:
	.string	"__INT_FAST16_TYPE__ int"
.LASF511:
	.string	"INT8_C"
.LASF620:
	.string	"__PLATFORM_H__ "
.LASF803:
	.string	"NDS_HPMCOUNTER17H 0xc91"
.LASF1139:
	.string	"DMAC_BASE _IO_(0xF0C00000)"
.LASF182:
	.string	"__DBL_IS_IEC_60559__ 1"
.LASF262:
	.string	"__FLT128_HAS_DENORM__ 1"
.LASF961:
	.string	"NDS_TINFO 0x7a4"
.LASF1038:
	.string	"NDS_SCOUNTINHIBIT 0x9e0"
.LASF855:
	.string	"NDS_PMPADDR5 0x3b5"
.LASF1518:
	.string	"__tmp"
.LASF459:
	.string	"INT_FAST8_MIN"
.LASF886:
	.string	"NDS_MHPMCOUNTER21 0xb15"
.LASF1215:
	.string	"DMA_BSIZE_128 (0x7)"
.LASF292:
	.string	"__FLT64X_MIN__ 3.36210314311209350626267781732175260e-4932F64x"
.LASF903:
	.string	"NDS_MHPMCOUNTER7H 0xb87"
.LASF1493:
	.string	"uart1_get_status"
.LASF954:
	.string	"NDS_MHPMEVENT29 0x33d"
.LASF725:
	.string	"STORE sw"
.LASF963:
	.string	"NDS_DPC 0x7b1"
.LASF692:
	.string	"IRQ_M_EXT 11"
.LASF1503:
	.string	"uart1_get_capabilities"
.LASF53:
	.string	"__INT_LEAST8_TYPE__ signed char"
.LASF71:
	.string	"__GXX_ABI_VERSION 1018"
.LASF1443:
	.string	"xfer"
.LASF515:
	.string	"INT32_C"
.LASF1534:
	.string	"uart_set_baudrate"
.LASF561:
	.string	"AE350_UART_PARITY_Pos 12"
.LASF1015:
	.string	"NDS_MCCTLCOMMAND 0x7cc"
.LASF872:
	.string	"NDS_MHPMCOUNTER7 0xb07"
.LASF1388:
	.string	"AE350_UART_SignalEvent_t"
.LASF249:
	.string	"__FLT64_IS_IEC_60559__ 1"
.LASF813:
	.string	"NDS_HPMCOUNTER27H 0xc9b"
.LASF320:
	.string	"__SIZEOF_WCHAR_T__ 4"
.LASF527:
	.string	"INTMAX_C"
.LASF145:
	.string	"__FLT_EVAL_METHOD__ 0"
.LASF80:
	.string	"__WINT_MIN__ 0U"
.LASF100:
	.string	"__INT8_MAX__ 0x7f"
.LASF390:
	.string	"_WCHAR_T_ "
.LASF114:
	.string	"__INT_LEAST32_MAX__ 0x7fffffffL"
.LASF680:
	.string	"MSTATUS32_SD 0x80000000"
.LASF543:
	.string	"AE350_DRIVER_ERROR_PARAMETER -5"
.LASF781:
	.string	"NDS_HPMCOUNTER27 0xc1b"
.LASF346:
	.string	"_POSIX_C_SOURCE 1"
.LASF804:
	.string	"NDS_HPMCOUNTER18H 0xc92"
.LASF1407:
	.string	"GetVersion"
.LASF1087:
	.string	"KHz 1000"
.LASF935:
	.string	"NDS_MHPMEVENT10 0x32a"
.LASF1231:
	.string	"DMA_CH_CTRL_DBINF(n) ((n) << DMA_CH_CTRL_DBINFIDX_POS)"
.LASF972:
	.string	"NDS_HBADADDR 0x243"
.LASF748:
	.string	"NDS_UCAUSE 0x042"
.LASF368:
	.string	"_SYS_SIZE_T_H "
.LASF93:
	.string	"__INTMAX_C(c) c ## LL"
.LASF878:
	.string	"NDS_MHPMCOUNTER13 0xb0d"
.LASF137:
	.string	"__UINT_FAST16_MAX__ 0xffffffffU"
.LASF1387:
	.string	"AE350_UART_MODEM_STATUS"
.LASF68:
	.string	"__UINT_FAST64_TYPE__ long long unsigned int"
.LASF1313:
	.string	"UARTC_LCR_DLAB 0x80"
.LASF1508:
	.string	"uart_set_modem_control"
.LASF904:
	.string	"NDS_MHPMCOUNTER8H 0xb88"
.LASF240:
	.string	"__FLT64_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF1516:
	.string	"uart_send"
.LASF666:
	.string	"MSTATUS_MIE 0x00000008"
.LASF158:
	.string	"__FLT_MIN__ 1.17549435082228750796873653722224568e-38F"
.LASF409:
	.string	"INT8_MAX"
.LASF82:
	.string	"__SIZE_MAX__ 0xffffffffU"
.LASF1384:
	.string	"AE350_UART_DTR_SET"
.LASF1424:
	.string	"OSCR"
.LASF1014:
	.string	"NDS_MCCTLBEGINADDR 0x7cb"
.LASF906:
	.string	"NDS_MHPMCOUNTER10H 0xb8a"
.LASF814:
	.string	"NDS_HPMCOUNTER28H 0xc9c"
.LASF1045:
	.string	"NDS_MTVT 0x307"
.LASF1199:
	.string	"DEV_WDT AE350_WDT"
.LASF953:
	.string	"NDS_MHPMEVENT28 0x33c"
.LASF709:
	.string	"TRAP_S_S_ACC_FAULT 7"
.LASF136:
	.string	"__UINT_FAST8_MAX__ 0xffffffffU"
.LASF656:
	.string	"DRV_SPI_DMA_RX_REQID 3"
.LASF1381:
	.string	"AE350_UART_RTS_CLEAR"
.LASF1224:
	.string	"DMA_WIDTH_EWORD (0x5)"
.LASF599:
	.string	"AE350_UART_ERROR_DATA_BITS (AE350_DRIVER_ERROR_SPECIFIC - 3)"
.LASF719:
	.string	"MIP_SEIP (1 << IRQ_S_EXT)"
.LASF404:
	.string	"__need_NULL"
.LASF406:
	.string	"offsetof(TYPE,MEMBER) __builtin_offsetof (TYPE, MEMBER)"
.LASF805:
	.string	"NDS_HPMCOUNTER19H 0xc93"
.LASF881:
	.string	"NDS_MHPMCOUNTER16 0xb10"
.LASF1240:
	.string	"DMA_CH_CTRL_DWIDTH_POS ( 18)"
.LASF304:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1"
.LASF1198:
	.string	"DEV_PIT AE350_PIT"
.LASF764:
	.string	"NDS_HPMCOUNTER10 0xc0a"
.LASF945:
	.string	"NDS_MHPMEVENT20 0x334"
.LASF788:
	.string	"NDS_INSTRETH 0xc82"
.LASF987:
	.string	"NDS_MDCM_CFG 0xfc1"
.LASF1364:
	.string	"AE350_DRIVER_VERSION"
.LASF1086:
	.string	"__AE350_H__ "
.LASF1467:
	.string	"dma_channel_configure"
.LASF837:
	.string	"NDS_MIDELEG 0x303"
.LASF1066:
	.string	"NDS_PMAADDR4 0xbd4"
.LASF281:
	.string	"__FP_FAST_FMAF32x 1"
.LASF907:
	.string	"NDS_MHPMCOUNTER11H 0xb8b"
.LASF115:
	.string	"__INT32_C(c) c ## L"
.LASF815:
	.string	"NDS_HPMCOUNTER29H 0xc9d"
.LASF188:
	.string	"__LDBL_MAX_10_EXP__ 4932"
.LASF273:
	.string	"__FLT32X_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF481:
	.string	"INTPTR_MAX"
.LASF1048:
	.string	"NDS_MSCRATCHCSW 0x348"
.LASF537:
	.string	"AE350_DRIVER_VERSION_MAJOR_MINOR(major,minor) (((major) << 8) | (minor))"
.LASF1024:
	.string	"NDS_SCOUNTERMASK_S 0x9d2"
.LASF627:
	.string	"CFG_BURN "
.LASF867:
	.string	"NDS_MINSTRET 0xb02"
.LASF1532:
	.string	"GNU C17 13.2.0 -mabi=ilp32d -mcmodel=medany -mtune=rocket -misa-spec=20191213 -march=rv32imafdc_zicsr -g3 -O0 -ffreestanding -flax-vector-conversions -fno-common -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF282:
	.string	"__FLT32X_IS_IEC_60559__ 1"
.LASF917:
	.string	"NDS_MHPMCOUNTER21H 0xb95"
.LASF340:
	.string	"__riscv_d 2002000"
.LASF474:
	.string	"UINT_FAST32_MAX __UINT_FAST32_MAX__"
.LASF1083:
	.string	"clear_csr(reg,bit) ({ unsigned long __tmp; asm volatile (\"csrrc %0, \" XSTR(reg) \", %1\" : \"=r\"(__tmp) : \"rK\"(bit)); __tmp; })"
.LASF1372:
	.string	"rx_busy"
.LASF523:
	.string	"UINT32_C"
.LASF260:
	.string	"__FLT128_EPSILON__ 1.92592994438723585305597794258492732e-34F128"
.LASF1360:
	.string	"short unsigned int"
.LASF1462:
	.string	"uart2_info"
.LASF1466:
	.string	"dma_channel_get_count"
.LASF1353:
	.string	"signed char"
.LASF339:
	.string	"__riscv_f 2002000"
.LASF602:
	.string	"AE350_UART_ERROR_FLOW_CONTROL (AE350_DRIVER_ERROR_SPECIFIC - 6)"
.LASF1386:
	.string	"_AE350_UART_MODEM_STATUS"
.LASF1056:
	.string	"NDS_PUSHMEPC 0x7ef"
.LASF365:
	.string	"__size_t__ "
.LASF1526:
	.string	"current"
.LASF707:
	.string	"TRAP_S_I_ACC_FAULT 1"
.LASF528:
	.string	"INTMAX_C(c) __INTMAX_C(c)"
.LASF508:
	.string	"WINT_MAX __WINT_MAX__"
.LASF891:
	.string	"NDS_MHPMCOUNTER26 0xb1a"
.LASF26:
	.string	"__CHAR_BIT__ 8"
.LASF489:
	.string	"INTMAX_MIN"
.LASF927:
	.string	"NDS_MHPMCOUNTER31H 0xb9f"
.LASF40:
	.string	"__INTMAX_TYPE__ long long int"
.LASF1141:
	.string	"APB_EXT_BASE _IO_(0xF8000000)"
.LASF371:
	.string	"__SIZE_T "
.LASF181:
	.string	"__FP_FAST_FMA 1"
.LASF1186:
	.string	"HAL_MIE_DISABLE() clear_csr(NDS_MSTATUS, MSTATUS_MIE)"
.LASF284:
	.string	"__FLT64X_DIG__ 33"
.LASF1208:
	.string	"DMA_BSIZE_1 (0x0)"
.LASF1241:
	.string	"DMA_CH_CTRL_DWIDTH_MASK (0x07 << DMA_CH_CTRL_DWIDTH_POS)"
.LASF1461:
	.string	"uart1_resources"
.LASF1049:
	.string	"NDS_MSCRATCHCSWL 0x349"
.LASF373:
	.string	"_BSD_SIZE_T_ "
.LASF918:
	.string	"NDS_MHPMCOUNTER22H 0xb96"
.LASF940:
	.string	"NDS_MHPMEVENT15 0x32f"
.LASF1147:
	.string	"PLDM_BASE _IO_(0xE6800000)"
.LASF1008:
	.string	"NDS_MCOUNTERINTEN 0x7cf"
.LASF42:
	.string	"__CHAR16_TYPE__ short unsigned int"
.LASF640:
	.string	"DRV_UART1_DMA_RX_EN 0"
.LASF87:
	.string	"__LONG_LONG_WIDTH__ 64"
.LASF140:
	.string	"__INTPTR_MAX__ 0x7fffffff"
.LASF655:
	.string	"DRV_SPI_DMA_RX_CH 1"
.LASF1479:
	.string	"data_out"
.LASF1002:
	.string	"NDS_DDCAUSE 0x7e1"
.LASF1270:
	.string	"UARTC_IIR_RLS 0x06"
.LASF1404:
	.string	"event_ri"
.LASF317:
	.string	"__GCC_ATOMIC_POINTER_LOCK_FREE 2"
.LASF1285:
	.string	"UARTC_FCR_TFIFO16_TRGL13 0x30"
.LASF737:
	.string	"POP XSTR(LOAD)"
.LASF1368:
	.string	"AE350_POWER_STATE"
.LASF1365:
	.string	"AE350_POWER_OFF"
.LASF341:
	.string	"__riscv_c 2000000"
.LASF221:
	.string	"__FLT32_MAX_10_EXP__ 38"
.LASF28:
	.string	"__ORDER_LITTLE_ENDIAN__ 1234"
.LASF1189:
	.string	"HAL_INTERRUPT_ENABLE(vector) __nds__plic_enable_interrupt(vector)"
.LASF243:
	.string	"__FLT64_EPSILON__ 2.22044604925031308084726333618164062e-16F64"
.LASF1470:
	.string	"dma_initialize"
.LASF448:
	.string	"INT_LEAST32_MIN (-INT_LEAST32_MAX - 1)"
.LASF1013:
	.string	"NDS_MSLIDELEG 0x7d5"
.LASF909:
	.string	"NDS_MHPMCOUNTER13H 0xb8d"
.LASF1485:
	.string	"state"
.LASF841:
	.string	"NDS_MSCRATCH 0x340"
.LASF433:
	.string	"INT_LEAST8_MAX"
.LASF89:
	.string	"__WINT_WIDTH__ 32"
.LASF133:
	.string	"__INT_FAST32_WIDTH__ 32"
.LASF196:
	.string	"__LDBL_HAS_DENORM__ 1"
.LASF1524:
	.string	"hart_id"
.LASF10:
	.string	"__VERSION__ \"13.2.0\""
.LASF353:
	.string	"_ANSI_STDDEF_H "
.LASF843:
	.string	"NDS_MCAUSE 0x342"
.LASF1314:
	.string	"UARTC_MCR_DTR 0x01"
.LASF919:
	.string	"NDS_MHPMCOUNTER23H 0xb97"
.LASF1053:
	.string	"NDS_MIRQ_ENTRY 0x7ec"
.LASF1149:
	.string	"AE350_PLMT ((PLMT_RegDef *) PLMT_BASE )"
.LASF1197:
	.string	"DEV_UART2 AE350_UART2"
.LASF784:
	.string	"NDS_HPMCOUNTER30 0xc1e"
.LASF1369:
	.string	"_AE350_DRIVER_VERSION"
.LASF313:
	.string	"__GCC_ATOMIC_INT_LOCK_FREE 2"
.LASF1347:
	.string	"UART1_TRIG_LVL UART_TRIG_LVL_1"
.LASF237:
	.string	"__FLT64_MAX_EXP__ 1024"
.LASF1120:
	.string	"IRQ_STANDBY_SOURCE 26"
.LASF817:
	.string	"NDS_HPMCOUNTER31H 0xc9f"
.LASF299:
	.string	"__REGISTER_PREFIX__ "
.LASF1394:
	.string	"irda"
.LASF950:
	.string	"NDS_MHPMEVENT25 0x339"
.LASF1138:
	.string	"I2C_BASE _IO_(0xF0A00000)"
.LASF1304:
	.string	"UARTC_LCR_BITS7 0x02"
.LASF613:
	.string	"AE350_UART_EVENT_RX_FRAMING_ERROR (1UL << 8)"
.LASF818:
	.string	"NDS_SSTATUS 0x100"
.LASF1059:
	.string	"NDS_PMACFG1 0xbc1"
.LASF1251:
	.string	"DMA_CH_CTRL_DSTADDRCTRL_MASK (0x03 << DMA_CH_CTRL_DSTADDRCTRL_POS)"
.LASF1047:
	.string	"NDS_MINTSTATUS 0x346"
.LASF1071:
	.string	"NDS_PMAADDR9 0xbd9"
.LASF1374:
	.string	"rx_overflow"
.LASF458:
	.string	"INT_FAST8_MAX __INT_FAST8_MAX__"
.LASF337:
	.string	"__riscv_m 2000000"
.LASF910:
	.string	"NDS_MHPMCOUNTER14H 0xb8e"
.LASF350:
	.string	"__DRIVER_COMMON_H__ "
.LASF826:
	.string	"NDS_SCAUSE 0x142"
.LASF1283:
	.string	"UARTC_FCR_TFIFO16_TRGL3 0x10"
.LASF1253:
	.string	"DMA_CH_CTRL_DSTADDR_DEC ( 1 << DMA_CH_CTRL_DSTADDRCTRL_POS)"
.LASF848:
	.string	"NDS_PMPCFG2 0x3a2"
.LASF752:
	.string	"NDS_FRM 0x002"
.LASF1408:
	.string	"GetCapabilities"
.LASF1222:
	.string	"DMA_WIDTH_DWORD (0x3)"
.LASF61:
	.string	"__INT_FAST8_TYPE__ int"
.LASF863:
	.string	"NDS_PMPADDR13 0x3bd"
.LASF628:
	.string	"DRV_GPIO 1"
.LASF520:
	.string	"UINT8_C(c) __UINT8_C(c)"
.LASF608:
	.string	"AE350_UART_EVENT_TX_COMPLETE (1UL << 3)"
.LASF1522:
	.string	"uart_get_version"
.LASF1303:
	.string	"UARTC_LCR_BITS6 0x01"
.LASF1243:
	.string	"DMA_CH_CTRL_SMODE_HANDSHAKE ( 1 << 17)"
.LASF920:
	.string	"NDS_MHPMCOUNTER24H 0xb98"
.LASF1309:
	.string	"UARTC_LCR_PARITY_NONE 0x00"
.LASF6:
	.string	"__STDC_HOSTED__ 0"
.LASF1422:
	.string	"IDREV"
.LASF95:
	.string	"__UINTMAX_C(c) c ## ULL"
.LASF352:
	.string	"_STDDEF_H_ "
.LASF1183:
	.string	"HAL_MSWI_PENDING() __nds__plic_sw_set_pending(1)"
.LASF1023:
	.string	"NDS_SCOUNTERINTEN 0x9cf"
.LASF1018:
	.string	"NDS_UCCTLCOMMAND 0x80c"
.LASF724:
	.string	"SLL32 sll"
.LASF451:
	.string	"INT_LEAST64_MAX"
.LASF1355:
	.string	"long int"
.LASF1108:
	.string	"IRQ_GP4_SOURCE 14"
.LASF1517:
	.string	"uart_power_control"
.LASF966:
	.string	"NDS_HIDELEG 0x203"
.LASF415:
	.string	"INT16_MAX"
.LASF178:
	.string	"__DBL_HAS_DENORM__ 1"
.LASF577:
	.string	"AE350_UART_FLOW_CONTROL_RTS_CTS (3UL << AE350_UART_FLOW_CONTROL_Pos)"
.LASF1076:
	.string	"NDS_PMAADDR14 0xbde"
.LASF305:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1"
.LASF238:
	.string	"__FLT64_MAX_10_EXP__ 308"
.LASF206:
	.string	"__FLT16_DECIMAL_DIG__ 5"
.LASF1302:
	.string	"UARTC_LCR_BITS5 0x00"
.LASF870:
	.string	"NDS_MHPMCOUNTER5 0xb05"
.LASF911:
	.string	"NDS_MHPMCOUNTER15H 0xb8f"
.LASF37:
	.string	"__PTRDIFF_TYPE__ int"
.LASF1321:
	.string	"UARTC_LSR_OE 0x2"
.LASF616:
	.string	"AE350_UART_EVENT_DSR (1UL << 11)"
.LASF309:
	.string	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2"
.LASF1483:
	.string	"uart2_send"
.LASF301:
	.string	"__GNUC_STDC_INLINE__ 1"
.LASF541:
	.string	"AE350_DRIVER_ERROR_TIMEOUT -3"
.LASF882:
	.string	"NDS_MHPMCOUNTER17 0xb11"
.LASF431:
	.string	"UINT64_MAX"
.LASF276:
	.string	"__FLT32X_EPSILON__ 2.22044604925031308084726333618164062e-16F32x"
.LASF697:
	.string	"TRAP_M_S_ACC_FAULT 7"
.LASF862:
	.string	"NDS_PMPADDR12 0x3bc"
.LASF1414:
	.string	"Transfer"
.LASF1487:
	.string	"uart2_initialize"
.LASF777:
	.string	"NDS_HPMCOUNTER23 0xc17"
.LASF1495:
	.string	"uart1_get_rxcount"
.LASF921:
	.string	"NDS_MHPMCOUNTER25H 0xb99"
.LASF358:
	.string	"_PTRDIFF_T_ "
.LASF461:
	.string	"UINT_FAST8_MAX"
.LASF1292:
	.string	"UARTC_FCR_RFIFO_RESET_MASK 0x02"
.LASF242:
	.string	"__FLT64_MIN__ 2.22507385850720138309023271733240406e-308F64"
.LASF1393:
	.string	"single_wire"
.LASF1182:
	.string	"HAL_MSWI_DISABLE() clear_csr(NDS_MIE, MIP_MSIP)"
.LASF357:
	.string	"__PTRDIFF_T "
.LASF1159:
	.string	"AE350_SPI ((SPI_RegDef *) SPI_BASE )"
.LASF1161:
	.string	"USE_PLIC "
.LASF1034:
	.string	"NDS_MSAVEEPC1 0x7d7"
.LASF228:
	.string	"__FLT32_HAS_DENORM__ 1"
.LASF1040:
	.string	"NDS_WFE 0x810"
.LASF575:
	.string	"AE350_UART_FLOW_CONTROL_RTS (1UL << AE350_UART_FLOW_CONTROL_Pos)"
.LASF1191:
	.string	"HAL_INTERRUPT_THRESHOLD(threshold) __nds__plic_set_threshold(threshold)"
.LASF1173:
	.string	"PLIC_THRESHOLD_OFFSET (0x00200000UL)"
.LASF1277:
	.string	"UARTC_IIR_FIFO_EN 0xc0"
.LASF424:
	.string	"INT32_MIN (-INT32_MAX - 1)"
.LASF191:
	.string	"__LDBL_MAX__ 1.18973149535723176508575932662800702e+4932L"
.LASF1158:
	.string	"AE350_I2C ((I2C_RegDef *) I2C_BASE )"
.LASF586:
	.string	"AE350_UART_SET_DEFAULT_TX_VALUE (0x10UL << AE350_UART_CONTROL_Pos)"
.LASF1361:
	.string	"uint32_t"
.LASF1041:
	.string	"NDS_SLEEPVALUE 0x811"
.LASF686:
	.string	"IRQ_M_SOFT 3"
.LASF595:
	.string	"AE350_UART_ABORT_RECEIVE (0x19UL << AE350_UART_CONTROL_Pos)"
.LASF43:
	.string	"__CHAR32_TYPE__ long unsigned int"
.LASF500:
	.string	"SIG_ATOMIC_MIN __SIG_ATOMIC_MIN__"
.LASF983:
	.string	"NDS_UITB 0x800"
.LASF1433:
	.string	"rx_cnt"
.LASF312:
	.string	"__GCC_ATOMIC_SHORT_LOCK_FREE 2"
.LASF1420:
	.string	"GetModemStatus"
.LASF1401:
	.string	"event_cts"
.LASF1075:
	.string	"NDS_PMAADDR13 0xbdd"
.LASF33:
	.string	"__SIZEOF_POINTER__ 4"
.LASF566:
	.string	"AE350_UART_STOP_BITS_Pos 14"
.LASF1166:
	.string	"NDS_PLIC_FEATURE_VECTORED (1 << 1)"
.LASF1352:
	.string	"long double"
.LASF1275:
	.string	"UARTC_IIR_INT_MASK 0x0f"
.LASF370:
	.string	"_T_SIZE "
.LASF1032:
	.string	"NDS_SHPMEVENT6 0x9e6"
.LASF1130:
	.string	"PLMT_BASE _IO_(0xE6000000)"
.LASF723:
	.string	"MDLMB_DEN (0x1UL)"
.LASF559:
	.string	"AE350_UART_DATA_BITS_8 (0UL << AE350_UART_DATA_BITS_Pos)"
.LASF141:
	.string	"__INTPTR_WIDTH__ 32"
.LASF1233:
	.string	"DMA_CH_CTRL_PRIORITY_HIGH ( 1 << 29)"
.LASF901:
	.string	"NDS_MHPMCOUNTER5H 0xb85"
.LASF1337:
	.string	"UART_FLAG_POWERED (1U << 1)"
.LASF463:
	.string	"INT_FAST16_MAX"
.LASF399:
	.string	"__DEFINED_wchar_t "
.LASF483:
	.string	"INTPTR_MIN"
.LASF77:
	.string	"__WCHAR_MAX__ 0x7fffffff"
.LASF758:
	.string	"NDS_HPMCOUNTER4 0xc04"
.LASF246:
	.string	"__FLT64_HAS_INFINITY__ 1"
.LASF1123:
	.string	"__O volatile"
.LASF76:
	.string	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL"
.LASF1287:
	.string	"UARTC_FCR_RFIFO16_TRGL4 0x40"
.LASF287:
	.string	"__FLT64X_MAX_EXP__ 16384"
.LASF387:
	.string	"_T_WCHAR_ "
.LASF772:
	.string	"NDS_HPMCOUNTER18 0xc12"
.LASF35:
	.string	"__GNUC_WIDE_EXECUTION_CHARSET_NAME \"UTF-32LE\""
.LASF634:
	.string	"DRV_I2C_DMA_RX_CH 3"
.LASF995:
	.string	"NDS_MHSP_CTL 0x7c6"
.LASF1490:
	.string	"uart1_irq_handler"
.LASF493:
	.string	"PTRDIFF_MAX"
.LASF587:
	.string	"AE350_UART_SET_IRDA_PULSE (0x11UL << AE350_UART_CONTROL_Pos)"
.LASF874:
	.string	"NDS_MHPMCOUNTER9 0xb09"
.LASF660:
	.string	"DRV_PIT 1"
.LASF713:
	.string	"MIP_SSIP (1 << IRQ_S_SOFT)"
.LASF789:
	.string	"NDS_HPMCOUNTER3H 0xc83"
.LASF721:
	.string	"MIP_MEIP (1 << IRQ_M_EXT)"
.LASF518:
	.string	"INT64_C(c) __INT64_C(c)"
.LASF315:
	.string	"__GCC_ATOMIC_LLONG_LOCK_FREE 1"
.LASF741:
	.string	"FPREGSIZE XSTR(FPREGBYTES)"
.LASF735:
	.string	"XSTR(S) STR(S)"
.LASF1318:
	.string	"UARTC_MCR_LPBK 0x10"
.LASF611:
	.string	"AE350_UART_EVENT_RX_TIMEOUT (1UL << 6)"
.LASF1229:
	.string	"DMA_CH_CTRL_SBINF_MASK ( 1 << DMA_CH_CTRL_SBINFIDX_POS)"
.LASF1322:
	.string	"UARTC_LSR_PE 0x4"
.LASF1405:
	.string	"AE350_UART_CAPABILITIES"
.LASF1117:
	.string	"IRQ_GP13_SOURCE 23"
.LASF1051:
	.string	"NDS_MSAVEDCAUSE2 0x7dc"
.LASF405:
	.string	"offsetof"
.LASF1465:
	.string	"Driver_UART2"
.LASF980:
	.string	"NDS_MUCOUNTEREN 0x320"
.LASF880:
	.string	"NDS_MHPMCOUNTER15 0xb0f"
.LASF382:
	.string	"__size_t "
.LASF1145:
	.string	"BMC_BASE _IO_(0xC0000000)"
.LASF968:
	.string	"NDS_HTVEC 0x205"
.LASF1176:
	.string	"PLIC_CLAIM_SHIFT_PER_TARGET 12"
.LASF1245:
	.string	"DMA_CH_CTRL_SRCADDRCTRL_POS ( 14)"
.LASF621:
	.string	"__CONFIG_H__ "
.LASF204:
	.string	"__FLT16_MAX_EXP__ 16"
.LASF887:
	.string	"NDS_MHPMCOUNTER22 0xb16"
.LASF1031:
	.string	"NDS_SHPMEVENT5 0x9e5"
.LASF1132:
	.string	"UART1_BASE _IO_(0xF0200000)"
.LASF578:
	.string	"AE350_UART_CPOL_Pos 18"
.LASF198:
	.string	"__LDBL_HAS_QUIET_NAN__ 1"
.LASF1307:
	.string	"UARTC_LCR_STOP2 0x04"
.LASF244:
	.string	"__FLT64_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F64"
.LASF330:
	.string	"__riscv_flen 64"
.LASF1423:
	.string	"RESERVED0"
.LASF644:
	.string	"DRV_UART2_DMA_TX_EN 0"
.LASF554:
	.string	"AE350_UART_DATA_BITS_Pos 8"
.LASF873:
	.string	"NDS_MHPMCOUNTER8 0xb08"
.LASF581:
	.string	"AE350_UART_CPOL1 (1UL << AE350_UART_CPOL_Pos)"
.LASF283:
	.string	"__FLT64X_MANT_DIG__ 113"
.LASF742:
	.string	"__CSR_V5_H__ "
.LASF1427:
	.string	"DMA_SignalEvent_t"
.LASF1093:
	.string	"PCLKFREQ (OSCFREQ )"
.LASF829:
	.string	"NDS_SATP 0x180"
.LASF534:
	.string	"true 1"
.LASF503:
	.string	"WCHAR_MAX"
.LASF1187:
	.string	"HAL_MEIP_ENABLE() set_csr(NDS_MIE, MIP_MEIP)"
.LASF211:
	.string	"__FLT16_DENORM_MIN__ 5.96046447753906250000000000000000000e-8F16"
.LASF782:
	.string	"NDS_HPMCOUNTER28 0xc1c"
.LASF375:
	.string	"_SIZE_T_DEFINED "
.LASF435:
	.string	"INT_LEAST8_MIN"
.LASF257:
	.string	"__FLT128_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF1527:
	.string	"__nds__plic_disable_interrupt"
.LASF750:
	.string	"NDS_UIP 0x044"
.LASF466:
	.string	"INT_FAST16_MIN (-INT_FAST16_MAX - 1)"
.LASF936:
	.string	"NDS_MHPMEVENT11 0x32b"
.LASF99:
	.string	"__SIG_ATOMIC_WIDTH__ 32"
.LASF997:
	.string	"NDS_MSP_BASE 0x7c8"
.LASF1102:
	.string	"IRQ_UART1_SOURCE 8"
.LASF323:
	.string	"__riscv 1"
.LASF1043:
	.string	"NDS_MPPIB 0x7f0"
.LASF557:
	.string	"AE350_UART_DATA_BITS_6 (6UL << AE350_UART_DATA_BITS_Pos)"
.LASF1033:
	.string	"NDS_MSAVESTATUS 0x7d6"
.LASF1531:
	.string	"priority_ptr"
.LASF1291:
	.string	"UARTC_FCR_FIFO_EN_BIT 0"
.LASF879:
	.string	"NDS_MHPMCOUNTER14 0xb0e"
.LASF958:
	.string	"NDS_TDATA1 0x7a1"
.LASF124:
	.string	"__UINT_LEAST32_MAX__ 0xffffffffUL"
.LASF248:
	.string	"__FP_FAST_FMAF64 1"
.LASF1308:
	.string	"UARTC_LCR_PARITY_EN 0x08"
.LASF403:
	.string	"NULL ((void *)0)"
.LASF570:
	.string	"AE350_UART_STOP_BITS_1_5 (2UL << AE350_UART_STOP_BITS_Pos)"
.LASF791:
	.string	"NDS_HPMCOUNTER5H 0xc85"
.LASF29:
	.string	"__ORDER_BIG_ENDIAN__ 4321"
.LASF689:
	.string	"IRQ_M_TIMER 7"
.LASF1081:
	.string	"swap_csr(reg,val) ({ unsigned long __tmp; asm volatile (\"csrrw %0, \" XSTR(reg) \", %1\" : \"=r\"(__tmp) : \"rK\"(val)); __tmp; })"
.LASF295:
	.string	"__FLT64X_HAS_DENORM__ 1"
.LASF67:
	.string	"__UINT_FAST32_TYPE__ unsigned int"
.LASF589:
	.string	"AE350_UART_SET_SMART_CARD_CLOCK (0x13UL << AE350_UART_CONTROL_Pos)"
.LASF648:
	.string	"DRV_UART2_DMA_RX_CH 1"
.LASF98:
	.string	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)"
.LASF727:
	.string	"LWU lw"
.LASF979:
	.string	"NDS_MDBOUND 0x385"
.LASF654:
	.string	"DRV_SPI_DMA_RX_EN 0"
.LASF994:
	.string	"NDS_MPFT_CTL 0x7c5"
.LASF1521:
	.string	"uart_get_capabilities"
.LASF296:
	.string	"__FLT64X_HAS_INFINITY__ 1"
.LASF1340:
	.string	"UART_FLAG_RX_ENABLED (1U << 4)"
.LASF824:
	.string	"NDS_SSCRATCH 0x140"
.LASF401:
	.string	"__need_wchar_t"
.LASF155:
	.string	"__FLT_DECIMAL_DIG__ 9"
.LASF47:
	.string	"__INT32_TYPE__ long int"
.LASF356:
	.string	"_T_PTRDIFF "
.LASF1061:
	.string	"NDS_PMACFG3 0xbc3"
.LASF765:
	.string	"NDS_HPMCOUNTER11 0xc0b"
.LASF946:
	.string	"NDS_MHPMEVENT21 0x335"
.LASF1472:
	.string	"uart2_get_status"
.LASF687:
	.string	"IRQ_S_TIMER 5"
.LASF1021:
	.string	"NDS_SDCAUSE 0x9c9"
.LASF293:
	.string	"__FLT64X_EPSILON__ 1.92592994438723585305597794258492732e-34F64x"
.LASF1095:
	.string	"IRQ_RTCPERIOD_SOURCE 1"
.LASF254:
	.string	"__FLT128_MAX_EXP__ 16384"
.LASF565:
	.string	"AE350_UART_PARITY_ODD (2UL << AE350_UART_PARITY_Pos)"
.LASF1247:
	.string	"DMA_CH_CTRL_SRCADDR_INC ( 0 << DMA_CH_CTRL_SRCADDRCTRL_POS)"
.LASF625:
	.string	"BUILD_BURN 2"
.LASF590:
	.string	"AE350_UART_CONTROL_SMART_CARD_NACK (0x14UL << AE350_UART_CONTROL_Pos)"
.LASF1399:
	.string	"event_tx_complete"
.LASF761:
	.string	"NDS_HPMCOUNTER7 0xc07"
.LASF981:
	.string	"NDS_MSCOUNTEREN 0x321"
.LASF1067:
	.string	"NDS_PMAADDR5 0xbd5"
.LASF792:
	.string	"NDS_HPMCOUNTER6H 0xc86"
.LASF70:
	.string	"__UINTPTR_TYPE__ unsigned int"
.LASF261:
	.string	"__FLT128_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F128"
.LASF629:
	.string	"DRV_I2C 1"
.LASF17:
	.string	"__FINITE_MATH_ONLY__ 0"
.LASF414:
	.string	"UINT8_MAX __UINT8_MAX__"
.LASF1257:
	.string	"DMA_CH_CTRL_SRCREQ(n) (((n) << DMA_CH_CTRL_SRCREQ_POS) & DMA_CH_CTRL_SRCREQ_MASK)"
.LASF1121:
	.string	"IRQ_WAKEUP_SOURCE 27"
.LASF1273:
	.string	"UARTC_IIR_THRE 0x02"
.LASF585:
	.string	"AE350_UART_CPHA1 (1UL << AE350_UART_CPHA_Pos)"
.LASF657:
	.string	"DRV_PWM 1"
.LASF3:
	.string	"__STDC_VERSION__ 201710L"
.LASF974:
	.string	"NDS_MBASE 0x380"
.LASF1190:
	.string	"HAL_INTERRUPT_DISABLE(vector) __nds__plic_disable_interrupt(vector)"
.LASF612:
	.string	"AE350_UART_EVENT_RX_BREAK (1UL << 7)"
.LASF413:
	.string	"UINT8_MAX"
.LASF1225:
	.string	"DMA_INF_IDX0 (0x0)"
.LASF1003:
	.string	"NDS_MRANDSEQ 0x7fc"
.LASF1029:
	.string	"NDS_SHPMEVENT3 0x9e3"
.LASF833:
	.string	"NDS_MHARTID 0xf14"
.LASF118:
	.string	"__INT64_C(c) c ## LL"
.LASF844:
	.string	"NDS_MTVAL 0x343"
.LASF439:
	.string	"INT_LEAST16_MAX"
.LASF1506:
	.string	"uart_get_modem_status"
.LASF502:
	.string	"SIZE_MAX __SIZE_MAX__"
.LASF1004:
	.string	"NDS_MRANDSEQH 0x7fd"
.LASF234:
	.string	"__FLT64_DIG__ 15"
.LASF1154:
	.string	"AE350_PIT ((PIT_RegDef *) PIT_BASE )"
.LASF307:
	.string	"__GCC_ATOMIC_BOOL_LOCK_FREE 2"
.LASF568:
	.string	"AE350_UART_STOP_BITS_1 (0UL << AE350_UART_STOP_BITS_Pos)"
.LASF775:
	.string	"NDS_HPMCOUNTER21 0xc15"
.LASF132:
	.string	"__INT_FAST32_MAX__ 0x7fffffff"
.LASF892:
	.string	"NDS_MHPMCOUNTER27 0xb1b"
.LASF154:
	.string	"__FLT_MAX_10_EXP__ 38"
.LASF1264:
	.string	"DMA_CH_CTRL_ENABLE ( 1 << 0)"
.LASF793:
	.string	"NDS_HPMCOUNTER7H 0xc87"
.LASF510:
	.string	"WINT_MIN __WINT_MIN__"
.LASF1128:
	.string	"SPIMEM_BASE 0x80000000"
.LASF175:
	.string	"__DBL_MIN__ ((double)2.22507385850720138309023271733240406e-308L)"
.LASF956:
	.string	"NDS_MHPMEVENT31 0x33f"
.LASF1402:
	.string	"event_dsr"
.LASF1072:
	.string	"NDS_PMAADDR10 0xbda"
.LASF421:
	.string	"INT32_MAX"
.LASF1300:
	.string	"UARTC_FCR_RXFIFO_TRGL_MASK 0xc0"
.LASF678:
	.string	"MSTATUS_MXR 0x00080000"
.LASF324:
	.string	"__riscv_compressed 1"
.LASF289:
	.string	"__FLT64X_DECIMAL_DIG__ 36"
.LASF941:
	.string	"NDS_MHPMEVENT16 0x330"
.LASF1397:
	.string	"flow_control_rts"
.LASF444:
	.string	"UINT_LEAST16_MAX __UINT_LEAST16_MAX__"
.LASF684:
	.string	"IRQ_S_SOFT 1"
.LASF450:
	.string	"UINT_LEAST32_MAX __UINT_LEAST32_MAX__"
.LASF1101:
	.string	"IRQ_GPIO_SOURCE 7"
.LASF138:
	.string	"__UINT_FAST32_MAX__ 0xffffffffU"
.LASF1375:
	.string	"rx_break"
.LASF1217:
	.string	"DMA_BSIZE_512 (0x9)"
.LASF225:
	.string	"__FLT32_MIN__ 1.17549435082228750796873653722224568e-38F32"
.LASF391:
	.string	"_BSD_WCHAR_T_ "
.LASF329:
	.string	"__riscv_xlen 32"
.LASF1234:
	.string	"DMA_CH_CTRL_SBSIZE_POS ( 24)"
.LASF351:
	.string	"_STDDEF_H "
.LASF1209:
	.string	"DMA_BSIZE_2 (0x1)"
.LASF560:
	.string	"AE350_UART_DATA_BITS_9 (1UL << AE350_UART_DATA_BITS_Pos)"
.LASF1463:
	.string	"uart2_resources"
.LASF1469:
	.string	"dma_uninitialize"
.LASF345:
	.string	"NO_INIT 1"
.LASF1403:
	.string	"event_dcd"
.LASF1278:
	.string	"UARTC_FCR_FIFO_EN 0x01"
.LASF92:
	.string	"__INTMAX_MAX__ 0x7fffffffffffffffLL"
.LASF427:
	.string	"INT64_MAX"
.LASF241:
	.string	"__FLT64_NORM_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF746:
	.string	"NDS_USCRATCH 0x040"
.LASF1482:
	.string	"data"
.LASF932:
	.string	"NDS_MHPMEVENT7 0x327"
.LASF454:
	.string	"INT_LEAST64_MIN (-INT_LEAST64_MAX - 1)"
.LASF673:
	.string	"MSTATUS_MPP 0x00001800"
.LASF1280:
	.string	"UARTC_FCR_TFIFO_RESET 0x04"
.LASF696:
	.string	"TRAP_M_L_ACC_FAULT 5"
.LASF1169:
	.string	"PLIC_PENDING_OFFSET (0x00001000UL)"
.LASF828:
	.string	"NDS_SIP 0x144"
.LASF495:
	.string	"PTRDIFF_MIN"
.LASF734:
	.string	"STR(S) #S"
.LASF683:
	.string	"MCAUSE_CAUSE 0x7FFFFFFFUL"
.LASF596:
	.string	"AE350_UART_ABORT_TRANSFER (0x1AUL << AE350_UART_CONTROL_Pos)"
.LASF426:
	.string	"UINT32_MAX __UINT32_MAX__"
.LASF201:
	.string	"__FLT16_DIG__ 3"
.LASF606:
	.string	"AE350_UART_EVENT_RECEIVE_COMPLETE (1UL << 1)"
.LASF326:
	.string	"__riscv_mul 1"
.LASF1060:
	.string	"NDS_PMACFG2 0xbc2"
.LASF15:
	.string	"__ATOMIC_ACQ_REL 4"
.LASF388:
	.string	"_T_WCHAR "
.LASF472:
	.string	"INT_FAST32_MIN (-INT_FAST32_MAX - 1)"
.LASF381:
	.string	"_SIZET_ "
.LASF555:
	.string	"AE350_UART_DATA_BITS_Msk (7UL << AE350_UART_DATA_BITS_Pos)"
.LASF45:
	.string	"__INT8_TYPE__ signed char"
.LASF1498:
	.string	"uart1_receive"
.LASF306:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1"
.LASF951:
	.string	"NDS_MHPMEVENT26 0x33a"
.LASF768:
	.string	"NDS_HPMCOUNTER14 0xc0e"
.LASF1481:
	.string	"uart2_receive"
.LASF849:
	.string	"NDS_PMPCFG3 0x3a3"
.LASF1492:
	.string	"uart1_set_modem_control"
.LASF363:
	.string	"__DEFINED_ptrdiff_t "
.LASF344:
	.string	"USE_M_TIME 1"
.LASF235:
	.string	"__FLT64_MIN_EXP__ (-1021)"
.LASF1425:
	.string	"RESERVED1"
.LASF1039:
	.string	"NDS_UDCAUSE 0x809"
.LASF1342:
	.string	"UART_TRIG_LVL_1 (0x00U)"
.LASF622:
	.string	"CFG_CACHE_ENABLE "
.LASF1207:
	.string	"DMA_EVENT_ABORT (3)"
.LASF1112:
	.string	"IRQ_GP8_SOURCE 18"
.LASF550:
	.string	"AE350_UART_MODE_SYNCHRONOUS_SLAVE (0x03UL << AE350_UART_CONTROL_Pos)"
.LASF1464:
	.string	"Driver_UART1"
.LASF467:
	.string	"UINT_FAST16_MAX"
.LASF1305:
	.string	"UARTC_LCR_BITS8 0x03"
.LASF1010:
	.string	"NDS_MCOUNTERMASK_S 0x7d2"
.LASF786:
	.string	"NDS_CYCLEH 0xc80"
.LASF957:
	.string	"NDS_TSELECT 0x7a0"
.LASF1144:
	.string	"PLIC_SW_BASE _IO_(0xE6400000)"
.LASF59:
	.string	"__UINT_LEAST32_TYPE__ long unsigned int"
.LASF731:
	.string	"FPLOAD fld"
.LASF224:
	.string	"__FLT32_NORM_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF1205:
	.string	"DMA_EVENT_TERMINAL_COUNT_REQUEST (1)"
.LASF1230:
	.string	"DMA_CH_CTRL_DBINFIDX_POS ( 30)"
.LASF359:
	.string	"_BSD_PTRDIFF_T_ "
.LASF389:
	.string	"__WCHAR_T "
.LASF852:
	.string	"NDS_PMPADDR2 0x3b2"
.LASF871:
	.string	"NDS_MHPMCOUNTER6 0xb06"
.LASF1236:
	.string	"DMA_CH_CTRL_SBSIZE(n) (((n) << DMA_CH_CTRL_SBSIZE_POS) & DMA_CH_CTRL_SBSIZE_MASK)"
.LASF642:
	.string	"DRV_UART1_DMA_RX_REQID 5"
.LASF1184:
	.string	"HAL_MSWI_CLEAR() __nds__plic_sw_claim_interrupt()"
.LASF726:
	.string	"LOAD lw"
.LASF1077:
	.string	"NDS_PMAADDR15 0xbdf"
.LASF417:
	.string	"INT16_MIN"
.LASF1491:
	.string	"uart1_get_modem_status"
.LASF1237:
	.string	"DMA_CH_CTRL_SWIDTH_POS ( 21)"
.LASF506:
	.string	"WCHAR_MIN __WCHAR_MIN__"
.LASF342:
	.string	"__riscv_zicsr 2000000"
.LASF1272:
	.string	"UARTC_IIR_RTO 0x0c"
.LASF1295:
	.string	"UARTC_FCR_TFIFO_RESET_BIT 2"
.LASF630:
	.string	"DRV_I2C_DMA_TX_EN 0"
.LASF263:
	.string	"__FLT128_HAS_INFINITY__ 1"
.LASF1363:
	.string	"long long unsigned int"
.LASF21:
	.string	"__SIZEOF_SHORT__ 2"
.LASF797:
	.string	"NDS_HPMCOUNTER11H 0xc8b"
.LASF486:
	.string	"UINTPTR_MAX __UINTPTR_MAX__"
.LASF1027:
	.string	"NDS_SMISC_CTL 0x9d0"
.LASF1344:
	.string	"UART_TRIG_LVL_8 (0x80U)"
.LASF1085:
	.string	"write_fcsr(val) ({ asm volatile (\"fscsr %0\" :: \"rK\"(val)); })"
.LASF1175:
	.string	"PLIC_CLAIM_OFFSET (0x00200004UL)"
.LASF1017:
	.string	"NDS_UCCTLBEGINADDR 0x80b"
.LASF104:
	.string	"__UINT8_MAX__ 0xff"
.LASF766:
	.string	"NDS_HPMCOUNTER12 0xc0c"
.LASF106:
	.string	"__UINT32_MAX__ 0xffffffffUL"
.LASF661:
	.string	"__CORE_V5_H__ "
.LASF517:
	.string	"INT64_C"
.LASF1036:
	.string	"NDS_MSAVEEPC2 0x7d9"
.LASF1105:
	.string	"IRQ_GP1_SOURCE 11"
.LASF1279:
	.string	"UARTC_FCR_RFIFO_RESET 0x02"
.LASF250:
	.string	"__FLT128_MANT_DIG__ 113"
.LASF632:
	.string	"DRV_I2C_DMA_TX_REQID 8"
.LASF753:
	.string	"NDS_FCSR 0x003"
.LASF730:
	.string	"FPSTORE fsd"
.LASF738:
	.string	"REGSIZE XSTR(REGBYTES)"
.LASF651:
	.string	"DRV_SPI_DMA_TX_EN 0"
.LASF540:
	.string	"AE350_DRIVER_ERROR_BUSY -2"
.LASF239:
	.string	"__FLT64_DECIMAL_DIG__ 17"
.LASF142:
	.string	"__UINTPTR_MAX__ 0xffffffffU"
.LASF1171:
	.string	"PLIC_ENABLE_OFFSET (0x00002000UL)"
.LASF598:
	.string	"AE350_UART_ERROR_BAUDRATE (AE350_DRIVER_ERROR_SPECIFIC - 2)"
.LASF744:
	.string	"NDS_UIE 0x004"
.LASF226:
	.string	"__FLT32_EPSILON__ 1.19209289550781250000000000000000000e-7F32"
.LASF1194:
	.string	"DEV_DMA AE350_DMA"
.LASF16:
	.string	"__ATOMIC_CONSUME 1"
.LASF1330:
	.string	"UARTC_MSR_TERI 0x4"
.LASF54:
	.string	"__INT_LEAST16_TYPE__ short int"
.LASF60:
	.string	"__UINT_LEAST64_TYPE__ long long unsigned int"
.LASF422:
	.string	"INT32_MAX __INT32_MAX__"
.LASF1134:
	.string	"PIT_BASE _IO_(0xF0400000)"
.LASF973:
	.string	"NDS_HIP 0x244"
.LASF836:
	.string	"NDS_MEDELEG 0x302"
.LASF86:
	.string	"__LONG_WIDTH__ 32"
.LASF1235:
	.string	"DMA_CH_CTRL_SBSIZE_MASK (0x0f << DMA_CH_CTRL_SBSIZE_POS)"
.LASF866:
	.string	"NDS_MCYCLE 0xb00"
.LASF268:
	.string	"__FLT32X_MIN_EXP__ (-1021)"
.LASF1419:
	.string	"SetModemControl"
.LASF311:
	.string	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2"
.LASF607:
	.string	"AE350_UART_EVENT_TRANSFER_COMPLETE (1UL << 2)"
.LASF653:
	.string	"DRV_SPI_DMA_TX_REQID 2"
.LASF796:
	.string	"NDS_HPMCOUNTER10H 0xc8a"
.LASF322:
	.string	"__SIZEOF_PTRDIFF_T__ 4"
.LASF1454:
	.string	"trig_lvl"
.LASF1196:
	.string	"DEV_UART1 AE350_UART1"
.LASF1473:
	.string	"uart2_set_modem_control"
.LASF1092:
	.string	"HCLKFREQ (OSCFREQ )"
.LASF539:
	.string	"AE350_DRIVER_ERROR -1"
.LASF1152:
	.string	"AE350_UART1 ((UART_RegDef *) UART1_BASE )"
.LASF749:
	.string	"NDS_UTVAL 0x043"
.LASF280:
	.string	"__FLT32X_HAS_QUIET_NAN__ 1"
.LASF759:
	.string	"NDS_HPMCOUNTER5 0xc05"
.LASF34:
	.string	"__GNUC_EXECUTION_CHARSET_NAME \"UTF-8\""
.LASF1349:
	.string	"UARTC_LSR_LINE_INT (UARTC_LSR_OE | UARTC_LSR_PE | UARTC_LSR_FE | UARTC_LSR_BI)"
.LASF806:
	.string	"NDS_HPMCOUNTER20H 0xc94"
.LASF1143:
	.string	"PLIC_BASE _IO_(0xE4000000)"
.LASF1442:
	.string	"rx_status"
.LASF756:
	.string	"NDS_INSTRET 0xc02"
.LASF720:
	.string	"MIP_HEIP (1 << IRQ_H_EXT)"
.LASF1262:
	.string	"DMA_CH_CTRL_INTERR ( 0 << 2)"
.LASF168:
	.string	"__DBL_MIN_EXP__ (-1021)"
.LASF285:
	.string	"__FLT64X_MIN_EXP__ (-16381)"
.LASF1331:
	.string	"UARTC_MSR_DDCD 0x8"
.LASF773:
	.string	"NDS_HPMCOUNTER19 0xc13"
.LASF1156:
	.string	"AE350_RTC ((RTC_RegDef *) RTC_BASE )"
.LASF701:
	.string	"TRAP_M_ECALL 11"
.LASF1412:
	.string	"Send"
.LASF1326:
	.string	"UARTC_LSR_TEMT 0x40"
.LASF736:
	.string	"PUSH XSTR(STORE)"
.LASF419:
	.string	"UINT16_MAX"
.LASF441:
	.string	"INT_LEAST16_MIN"
.LASF1005:
	.string	"NDS_MRANDSTATE 0x7fe"
.LASF1063:
	.string	"NDS_PMAADDR1 0xbd1"
.LASF1103:
	.string	"IRQ_UART2_SOURCE 9"
.LASF977:
	.string	"NDS_MIBOUND 0x383"
.LASF947:
	.string	"NDS_MHPMEVENT22 0x336"
.LASF48:
	.string	"__INT64_TYPE__ long long int"
.LASF436:
	.string	"INT_LEAST8_MIN (-INT_LEAST8_MAX - 1)"
.LASF816:
	.string	"NDS_HPMCOUNTER30H 0xc9e"
.LASF1333:
	.string	"UARTC_MSR_DSR 0x20"
.LASF533:
	.string	"bool _Bool"
.LASF360:
	.string	"___int_ptrdiff_t_h "
.LASF1311:
	.string	"UARTC_LCR_PARITY_ODD 0x08"
.LASF264:
	.string	"__FLT128_HAS_QUIET_NAN__ 1"
.LASF1007:
	.string	"NDS_MCOUNTERWEN 0x7ce"
.LASF1107:
	.string	"IRQ_GP3_SOURCE 13"
.LASF857:
	.string	"NDS_PMPADDR7 0x3b7"
.LASF423:
	.string	"INT32_MIN"
.LASF514:
	.string	"INT16_C(c) __INT16_C(c)"
.LASF877:
	.string	"NDS_MHPMCOUNTER12 0xb0c"
.LASF888:
	.string	"NDS_MHPMCOUNTER23 0xb17"
.LASF807:
	.string	"NDS_HPMCOUNTER21H 0xc95"
.LASF1332:
	.string	"UARTC_MSR_CTS 0x10"
.LASF412:
	.string	"INT8_MIN (-INT8_MAX - 1)"
.LASF1255:
	.string	"DMA_CH_CTRL_SRCREQ_POS ( 8)"
.LASF513:
	.string	"INT16_C"
.LASF1140:
	.string	"SPI_BASE _IO_(0xF0F00000)"
.LASF1298:
	.string	"UARTC_FCR_TXFIFO_TRGL_MASK 0x30"
.LASF230:
	.string	"__FLT32_HAS_QUIET_NAN__ 1"
.LASF1520:
	.string	"uart_initialize"
.LASF1001:
	.string	"NDS_DEXC2DBG 0x7e0"
.LASF333:
	.string	"__riscv_float_abi_double 1"
.LASF192:
	.string	"__LDBL_NORM_MAX__ 1.18973149535723176508575932662800702e+4932L"
.LASF1351:
	.string	"long long int"
.LASF1502:
	.string	"uart1_initialize"
.LASF637:
	.string	"DRV_UART1_DMA_TX_EN 0"
.LASF551:
	.string	"AE350_UART_MODE_SINGLE_WIRE (0x04UL << AE350_UART_CONTROL_Pos)"
.LASF396:
	.string	"__INT_WCHAR_T_H "
.LASF631:
	.string	"DRV_I2C_DMA_TX_CH 2"
.LASF1415:
	.string	"GetTxCount"
.LASF1339:
	.string	"UART_FLAG_TX_ENABLED (1U << 3)"
.LASF445:
	.string	"INT_LEAST32_MAX"
.LASF1390:
	.string	"asynchronous"
.LASF626:
	.string	"BUILD_XIP 3"
.LASF202:
	.string	"__FLT16_MIN_EXP__ (-13)"
.LASF548:
	.string	"AE350_UART_MODE_ASYNCHRONOUS (0x01UL << AE350_UART_CONTROL_Pos)"
.LASF783:
	.string	"NDS_HPMCOUNTER29 0xc1d"
.LASF378:
	.string	"__DEFINED_size_t "
.LASF916:
	.string	"NDS_MHPMCOUNTER20H 0xb94"
.LASF1114:
	.string	"IRQ_GP10_SOURCE 20"
.LASF989:
	.string	"NDS_MILMB 0x7c0"
.LASF1250:
	.string	"DMA_CH_CTRL_DSTADDRCTRL_POS ( 12)"
.LASF332:
	.string	"__riscv_fsqrt 1"
.LASF429:
	.string	"INT64_MIN"
.LASF105:
	.string	"__UINT16_MAX__ 0xffff"
.LASF937:
	.string	"NDS_MHPMEVENT12 0x32c"
.LASF1026:
	.string	"NDS_SCOUNTEROVF 0x9d4"
.LASF861:
	.string	"NDS_PMPADDR11 0x3bb"
.LASF173:
	.string	"__DBL_MAX__ ((double)1.79769313486231570814527423731704357e+308L)"
.LASF808:
	.string	"NDS_HPMCOUNTER22H 0xc96"
.LASF650:
	.string	"DRV_SPI 1"
.LASF1267:
	.string	"UARTC_IER_RLS 0x04"
.LASF835:
	.string	"NDS_MISA 0x301"
.LASF1098:
	.string	"IRQ_GP0_SOURCE 4"
.LASF705:
	.string	"TRAP_M_STACKOVF 32"
.LASF180:
	.string	"__DBL_HAS_QUIET_NAN__ 1"
.LASF302:
	.string	"__NO_INLINE__ 1"
.LASF959:
	.string	"NDS_TDATA2 0x7a2"
.LASF160:
	.string	"__FLT_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F"
.LASF194:
	.string	"__LDBL_EPSILON__ 1.92592994438723585305597794258492732e-34L"
.LASF497:
	.string	"SIG_ATOMIC_MAX"
.LASF693:
	.string	"IRQ_COP 12"
.LASF269:
	.string	"__FLT32X_MIN_10_EXP__ (-307)"
.LASF507:
	.string	"WINT_MAX"
.LASF147:
	.string	"__DEC_EVAL_METHOD__ 2"
.LASF298:
	.string	"__FLT64X_IS_IEC_60559__ 1"
.LASF1410:
	.string	"Uninitialize"
.LASF197:
	.string	"__LDBL_HAS_INFINITY__ 1"
.LASF1126:
	.string	"ILM_BASE 0xA0000000"
.LASF1362:
	.string	"long unsigned int"
.LASF380:
	.string	"_GCC_SIZE_T "
.LASF1286:
	.string	"UARTC_FCR_RFIFO16_TRGL1 0x00"
.LASF641:
	.string	"DRV_UART1_DMA_RX_CH 1"
.LASF676:
	.string	"MSTATUS_MPRV 0x00020000"
.LASF820:
	.string	"NDS_SIDELEG 0x103"
.LASF157:
	.string	"__FLT_NORM_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF998:
	.string	"NDS_MDCAUSE 0x7c9"
.LASF1263:
	.string	"DMA_CH_CTRL_INTTC ( 0 << 1)"
.LASF1276:
	.string	"UARTC_IIR_TFIFO_FULL 0x10"
.LASF1453:
	.string	"irq_num"
.LASF928:
	.string	"NDS_MHPMEVENT3 0x323"
.LASF674:
	.string	"MSTATUS_FS 0x00006000"
.LASF1058:
	.string	"NDS_PMACFG0 0xbc0"
.LASF883:
	.string	"NDS_MHPMCOUNTER18 0xb12"
.LASF24:
	.string	"__SIZEOF_LONG_DOUBLE__ 16"
.LASF1478:
	.string	"uart2_transfer"
.LASF1099:
	.string	"IRQ_SPI_SOURCE 5"
.LASF646:
	.string	"DRV_UART2_DMA_TX_REQID 6"
.LASF245:
	.string	"__FLT64_HAS_DENORM__ 1"
.LASF256:
	.string	"__FLT128_DECIMAL_DIG__ 36"
.LASF161:
	.string	"__FLT_HAS_DENORM__ 1"
.LASF899:
	.string	"NDS_MHPMCOUNTER3H 0xb83"
.LASF437:
	.string	"UINT_LEAST8_MAX"
.LASF996:
	.string	"NDS_MSP_BOUND 0x7c7"
.LASF1214:
	.string	"DMA_BSIZE_64 (0x6)"
.LASF810:
	.string	"NDS_HPMCOUNTER24H 0xc98"
.LASF1385:
	.string	"AE350_UART_MODEM_CONTROL"
.LASF703:
	.string	"TRAP_M_L_PAGE_FAULT 13"
.LASF576:
	.string	"AE350_UART_FLOW_CONTROL_CTS (2UL << AE350_UART_FLOW_CONTROL_Pos)"
.LASF821:
	.string	"NDS_SIE 0x104"
.LASF407:
	.string	"_GCC_MAX_ALIGN_T "
.LASF183:
	.string	"__LDBL_MANT_DIG__ 113"
.LASF1057:
	.string	"NDS_UCODE 0x801"
.LASF762:
	.string	"NDS_HPMCOUNTER8 0xc08"
.LASF965:
	.string	"NDS_HEDELEG 0x202"
.LASF460:
	.string	"INT_FAST8_MIN (-INT_FAST8_MAX - 1)"
.LASF411:
	.string	"INT8_MIN"
.LASF1068:
	.string	"NDS_PMAADDR6 0xbd6"
.LASF556:
	.string	"AE350_UART_DATA_BITS_5 (5UL << AE350_UART_DATA_BITS_Pos)"
.LASF1030:
	.string	"NDS_SHPMEVENT4 0x9e4"
.LASF22:
	.string	"__SIZEOF_FLOAT__ 4"
.LASF681:
	.string	"MSTATUS64_SD 0x8000000000000000"
.LASF732:
	.string	"LOG_FPREGBYTES 3"
.LASF366:
	.string	"__SIZE_T__ "
.LASF36:
	.string	"__SIZE_TYPE__ unsigned int"
.LASF1135:
	.string	"WDT_BASE _IO_(0xF0500000)"
.LASF658:
	.string	"DRV_RTC 1"
.LASF1220:
	.string	"DMA_WIDTH_HALFWORD (0x1)"
.LASF57:
	.string	"__UINT_LEAST8_TYPE__ unsigned char"
.LASF186:
	.string	"__LDBL_MIN_10_EXP__ (-4931)"
.LASF521:
	.string	"UINT16_C"
.LASF544:
	.string	"AE350_DRIVER_ERROR_SPECIFIC -6"
.LASF1096:
	.string	"IRQ_RTCALARM_SOURCE 2"
.LASF617:
	.string	"AE350_UART_EVENT_DCD (1UL << 12)"
.LASF1020:
	.string	"NDS_SLIP 0x9c5"
.LASF1371:
	.string	"tx_busy"
.LASF1221:
	.string	"DMA_WIDTH_WORD (0x2)"
.LASF418:
	.string	"INT16_MIN (-INT16_MAX - 1)"
.LASF1268:
	.string	"UARTC_IER_MS 0x08"
.LASF850:
	.string	"NDS_PMPADDR0 0x3b0"
.LASF1378:
	.string	"AE350_UART_STATUS"
.LASF1350:
	.string	"unsigned int"
.LASF1514:
	.string	"uart_transfer"
.LASF538:
	.string	"AE350_DRIVER_OK 0"
.LASF572:
	.string	"AE350_UART_FLOW_CONTROL_Pos 16"
.LASF900:
	.string	"NDS_MHPMCOUNTER4H 0xb84"
.LASF1167:
	.string	"PLIC_PRIORITY_OFFSET (0x00000000UL)"
.LASF845:
	.string	"NDS_MIP 0x344"
.LASF776:
	.string	"NDS_HPMCOUNTER22 0xc16"
.LASF893:
	.string	"NDS_MHPMCOUNTER28 0xb1c"
.LASF1211:
	.string	"DMA_BSIZE_8 (0x3)"
.LASF1104:
	.string	"IRQ_DMA_SOURCE 10"
.LASF1244:
	.string	"DMA_CH_CTRL_DMODE_HANDSHAKE ( 1 << 16)"
.LASF187:
	.string	"__LDBL_MAX_EXP__ 16384"
.LASF1226:
	.string	"DMA_INF_IDX1 (0x1)"
.LASF594:
	.string	"AE350_UART_ABORT_SEND (0x18UL << AE350_UART_CONTROL_Pos)"
.LASF1354:
	.string	"short int"
.LASF745:
	.string	"NDS_UTVEC 0x005"
.LASF8:
	.string	"__GNUC_MINOR__ 2"
.LASF682:
	.string	"MCAUSE_INT 0x80000000UL"
.LASF4:
	.string	"__STDC_UTF_16__ 1"
.LASF700:
	.string	"TRAP_H_ECALL 10"
.LASF1073:
	.string	"NDS_PMAADDR11 0xbdb"
.LASF488:
	.string	"INTMAX_MAX __INTMAX_MAX__"
.LASF1172:
	.string	"PLIC_ENABLE_SHIFT_PER_TARGET 7"
.LASF671:
	.string	"MSTATUS_SPP 0x00000100"
.LASF582:
	.string	"AE350_UART_CPHA_Pos 19"
.LASF58:
	.string	"__UINT_LEAST16_TYPE__ short unsigned int"
.LASF1035:
	.string	"NDS_MSAVECAUSE1 0x7d8"
.LASF825:
	.string	"NDS_SEPC 0x141"
.LASF1165:
	.string	"NDS_PLIC_FEATURE_PREEMPT (1 << 0)"
.LASF1162:
	.string	"NDS_PLIC_BASE PLIC_BASE"
.LASF1025:
	.string	"NDS_SCOUNTERMASK_U 0x9d3"
.LASF962:
	.string	"NDS_DCSR 0x7b0"
.LASF1078:
	.string	"NDS_MMSC_CFG2 0xfc3"
.LASF779:
	.string	"NDS_HPMCOUNTER25 0xc19"
.LASF79:
	.string	"__WINT_MAX__ 0xffffffffU"
.LASF1094:
	.string	"UCLKFREQ (OSCFREQ )"
.LASF695:
	.string	"TRAP_M_I_ACC_FAULT 1"
.LASF624:
	.string	"BUILD_LOAD 1"
.LASF1012:
	.string	"NDS_MCOUNTEROVF 0x7d4"
.LASF470:
	.string	"INT_FAST32_MAX __INT_FAST32_MAX__"
.LASF1100:
	.string	"IRQ_I2C_SOURCE 6"
.LASF478:
	.string	"INT_FAST64_MIN (-INT_FAST64_MAX - 1)"
.LASF120:
	.string	"__UINT_LEAST8_MAX__ 0xff"
.LASF1510:
	.string	"stat"
.LASF729:
	.string	"REGBYTES (1 << LOG_REGBYTES)"
.LASF1445:
	.string	"flags"
.LASF275:
	.string	"__FLT32X_MIN__ 2.22507385850720138309023271733240406e-308F32x"
.LASF308:
	.string	"__GCC_ATOMIC_CHAR_LOCK_FREE 2"
.LASF294:
	.string	"__FLT64X_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F64x"
.LASF1136:
	.string	"RTC_BASE _IO_(0xF0600000)"
.LASF9:
	.string	"__GNUC_PATCHLEVEL__ 0"
.LASF167:
	.string	"__DBL_DIG__ 15"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"ae350_soc/driver/ae350/uart_ae350.c"
.LASF1:
	.string	"/home/lc/git/rt-thread/bsp/gowin-riscv_ae350_soc"
	.ident	"GCC: () 13.2.0"
