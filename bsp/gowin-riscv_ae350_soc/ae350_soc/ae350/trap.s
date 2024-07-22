	.file	"trap.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/lc/git/rt-thread/bsp/gowin-riscv_ae350_soc" "ae350_soc/ae350/trap.c"
	.section	.text.mtime_handler,"ax",@progbits
	.align	1
	.weak	mtime_handler
	.type	mtime_handler, @function
mtime_handler:
.LFB18:
	.file 1 "ae350_soc/ae350/trap.c"
	.loc 1 21 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
.LBB14:
	.loc 1 22 26
	li	a5,128
 #APP
# 22 "ae350_soc/ae350/trap.c" 1
	csrrc a5, 0x304, a5
# 0 "" 2
 #NO_APP
	sw	a5,-20(s0)
.LBE14:
	.loc 1 23 1
	nop
	lw	s0,28(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE18:
	.size	mtime_handler, .-mtime_handler
	.section	.text.mswi_handler,"ax",@progbits
	.align	1
	.weak	mswi_handler
	.type	mswi_handler, @function
mswi_handler:
.LFB19:
	.loc 1 27 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
.LBB15:
	.loc 1 28 26
 #APP
# 28 "ae350_soc/ae350/trap.c" 1
	csrrc a5, 0x304, 8
# 0 "" 2
 #NO_APP
	sw	a5,-20(s0)
.LBE15:
	.loc 1 29 1
	nop
	lw	s0,28(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE19:
	.size	mswi_handler, .-mswi_handler
	.section	.rodata
	.align	2
.LC0:
	.string	"syscall #%ld (a0:0x%lx,a1:0x%lx, a2:0x%lx, a3:0x%lx)\n"
	.section	.text.syscall_handler,"ax",@progbits
	.align	1
	.weak	syscall_handler
	.type	syscall_handler, @function
syscall_handler:
.LFB20:
	.loc 1 33 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	sw	a4,-36(s0)
	.loc 1 34 2
	lw	a5,-36(s0)
	lw	a4,-32(s0)
	lw	a3,-28(s0)
	lw	a2,-24(s0)
	lw	a1,-20(s0)
	lla	a0,.LC0
	call	printf
	.loc 1 35 1
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
.LFE20:
	.size	syscall_handler, .-syscall_handler
	.section	.rodata
	.align	2
.LC1:
	.string	"Unhandled Trap : mcause = 0x%x, mepc = 0x%x\n"
	.section	.text.except_handler,"ax",@progbits
	.align	1
	.weak	except_handler
	.type	except_handler, @function
except_handler:
.LFB21:
	.loc 1 39 1
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
	.loc 1 41 2
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	mv	a2,a4
	mv	a1,a5
	lla	a0,.LC1
	call	printf
	.loc 1 43 9
	lw	a5,-24(s0)
	.loc 1 44 1
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
	.size	except_handler, .-except_handler
	.section	.text.trap_entry,"ax",@progbits
	.align	2
	.globl	trap_entry
	.type	trap_entry, @function
trap_entry:
.LFB22:
	.loc 1 49 1
	.cfi_startproc
	addi	sp,sp,-320
	.cfi_def_cfa_offset 320
	sw	ra,316(sp)
	sw	t0,312(sp)
	sw	t1,308(sp)
	sw	t2,304(sp)
	sw	s0,300(sp)
	sw	a0,296(sp)
	sw	a1,292(sp)
	sw	a2,288(sp)
	sw	a3,284(sp)
	sw	a4,280(sp)
	sw	a5,276(sp)
	sw	a6,272(sp)
	sw	a7,268(sp)
	sw	t3,264(sp)
	sw	t4,260(sp)
	sw	t5,256(sp)
	sw	t6,252(sp)
	fsd	ft0,232(sp)
	fsd	ft1,224(sp)
	fsd	ft2,216(sp)
	fsd	ft3,208(sp)
	fsd	ft4,200(sp)
	fsd	ft5,192(sp)
	fsd	ft6,184(sp)
	fsd	ft7,176(sp)
	fsd	fa0,168(sp)
	fsd	fa1,160(sp)
	fsd	fa2,152(sp)
	fsd	fa3,144(sp)
	fsd	fa4,136(sp)
	fsd	fa5,128(sp)
	fsd	fa6,120(sp)
	fsd	fa7,112(sp)
	fsd	ft8,104(sp)
	fsd	ft9,96(sp)
	fsd	ft10,88(sp)
	fsd	ft11,80(sp)
	.cfi_offset 1, -4
	.cfi_offset 5, -8
	.cfi_offset 6, -12
	.cfi_offset 7, -16
	.cfi_offset 8, -20
	.cfi_offset 10, -24
	.cfi_offset 11, -28
	.cfi_offset 12, -32
	.cfi_offset 13, -36
	.cfi_offset 14, -40
	.cfi_offset 15, -44
	.cfi_offset 16, -48
	.cfi_offset 17, -52
	.cfi_offset 28, -56
	.cfi_offset 29, -60
	.cfi_offset 30, -64
	.cfi_offset 31, -68
	.cfi_offset 32, -88
	.cfi_offset 33, -96
	.cfi_offset 34, -104
	.cfi_offset 35, -112
	.cfi_offset 36, -120
	.cfi_offset 37, -128
	.cfi_offset 38, -136
	.cfi_offset 39, -144
	.cfi_offset 42, -152
	.cfi_offset 43, -160
	.cfi_offset 44, -168
	.cfi_offset 45, -176
	.cfi_offset 46, -184
	.cfi_offset 47, -192
	.cfi_offset 48, -200
	.cfi_offset 49, -208
	.cfi_offset 60, -216
	.cfi_offset 61, -224
	.cfi_offset 62, -232
	.cfi_offset 63, -240
	addi	s0,sp,320
	.cfi_def_cfa 8, 0
.LBB16:
	.loc 1 50 40
 #APP
# 50 "ae350_soc/ae350/trap.c" 1
	csrr a5, 0x342
# 0 "" 2
 #NO_APP
	sw	a5,-248(s0)
	.loc 1 50 90
	lw	a5,-248(s0)
.LBE16:
	.loc 1 50 7
	sw	a5,-252(s0)
.LBB17:
	.loc 1 51 38
 #APP
# 51 "ae350_soc/ae350/trap.c" 1
	csrr a5, 0x341
# 0 "" 2
 #NO_APP
	sw	a5,-256(s0)
	.loc 1 51 88
	lw	a5,-256(s0)
.LBE17:
	.loc 1 51 7
	sw	a5,-244(s0)
.LBB18:
	.loc 1 52 41
 #APP
# 52 "ae350_soc/ae350/trap.c" 1
	csrr a5, 0x300
# 0 "" 2
 #NO_APP
	sw	a5,-260(s0)
	.loc 1 52 91
	lw	a5,-260(s0)
.LBE18:
	.loc 1 52 7
	sw	a5,-264(s0)
.LBB19:
	.loc 1 54 42
 #APP
# 54 "ae350_soc/ae350/trap.c" 1
	csrr a5, 0x7c4
# 0 "" 2
 #NO_APP
	sw	a5,-268(s0)
	.loc 1 54 92
	lw	a5,-268(s0)
.LBE19:
	.loc 1 54 7
	sw	a5,-272(s0)
.LBB20:
	.loc 1 60 37
 #APP
# 60 "ae350_soc/ae350/trap.c" 1
	frcsr a5
# 0 "" 2
 #NO_APP
	sw	a5,-276(s0)
	.loc 1 60 78
	lw	a5,-276(s0)
.LBE20:
	.loc 1 60 6
	sw	a5,-280(s0)
	.loc 1 67 2
	.loc 1 71 5
	lw	a5,-252(s0)
	bge	a5,zero,.L7
	.loc 1 71 42 discriminator 1
	lw	a4,-252(s0)
	li	a5,-2147483648
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 71 30 discriminator 1
	li	a5,11
	bne	a4,a5,.L7
.LBB21:
.LBB22:
.LBB23:
	.file 2 "ae350_soc/ae350/../../ae350_soc/ae350/../../ae350_soc/ae350/../../ae350_soc/ae350/plic.h"
	.loc 2 110 50
 #APP
# 110 "ae350_soc/ae350/../../ae350_soc/ae350/../../ae350_soc/ae350/../../ae350_soc/ae350/plic.h" 1
	csrr a5, 0xf14
# 0 "" 2
 #NO_APP
	sw	a5,-288(s0)
	.loc 2 110 100
	lw	a5,-288(s0)
.LBE23:
	.loc 2 110 16
	sw	a5,-292(s0)
	.loc 2 113 74
	lw	a5,-292(s0)
	slli	a4,a5,12
	.loc 2 112 80
	li	a5,-467664896
	addi	a5,a5,4
	add	a5,a4,a5
	.loc 2 111 26
	sw	a5,-296(s0)
	.loc 2 115 10
	lw	a5,-296(s0)
	lw	a5,0(a5)
.LBE22:
.LBE21:
	.loc 1 74 3 discriminator 1
	mv	a0,a5
	call	mext_interrupt
	.loc 1 74 3 is_stmt 0
	j	.L9
.L7:
	.loc 1 76 10 is_stmt 1
	lw	a5,-252(s0)
	bge	a5,zero,.L10
	.loc 1 76 47 discriminator 1
	lw	a4,-252(s0)
	li	a5,-2147483648
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 76 35 discriminator 1
	li	a5,7
	bne	a4,a5,.L10
	.loc 1 79 3
	call	mtime_handler
	j	.L9
.L10:
	.loc 1 81 10
	lw	a5,-252(s0)
	bge	a5,zero,.L11
	.loc 1 81 47 discriminator 1
	lw	a4,-252(s0)
	li	a5,-2147483648
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 81 35 discriminator 1
	li	a5,3
	bne	a4,a5,.L11
	.loc 1 84 3
	call	mswi_handler
.LBB24:
	.loc 1 87 62
 #APP
# 87 "ae350_soc/ae350/trap.c" 1
	csrr a5, 0xf14
# 0 "" 2
 #NO_APP
	sw	a5,-284(s0)
	.loc 1 87 112
	lw	a5,-284(s0)
.LBE24:
	.loc 1 87 122
	addi	a5,a5,1
	sw	a5,-300(s0)
.LBB25:
.LBB26:
.LBB27:
	.loc 2 198 50
 #APP
# 198 "ae350_soc/ae350/../../ae350_soc/ae350/../../ae350_soc/ae350/../../ae350_soc/ae350/plic.h" 1
	csrr a5, 0xf14
# 0 "" 2
 #NO_APP
	sw	a5,-304(s0)
	.loc 2 198 100
	lw	a5,-304(s0)
.LBE27:
	.loc 2 198 16
	sw	a5,-308(s0)
	.loc 2 201 74
	lw	a5,-308(s0)
	slli	a4,a5,12
	.loc 2 200 80
	li	a5,-429916160
	addi	a5,a5,4
	add	a5,a4,a5
	.loc 2 199 26
	sw	a5,-312(s0)
	.loc 2 203 15
	lw	a5,-312(s0)
	lw	a4,-300(s0)
	sw	a4,0(a5)
	.loc 2 204 1
	nop
.LBE26:
.LBE25:
	.loc 1 87 3
	j	.L9
.L11:
	.loc 1 89 10
	lw	a5,-252(s0)
	blt	a5,zero,.L12
	.loc 1 89 48 discriminator 1
	lw	a4,-252(s0)
	li	a5,-2147483648
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 89 36 discriminator 1
	li	a5,11
	bne	a4,a5,.L12
	.loc 1 92 3
 #APP
# 92 "ae350_soc/ae350/trap.c" 1
	mv a4, a3
mv a3, a2
mv a2, a1
mv a1, a0
mv a0, a7
call syscall_handler

# 0 "" 2
	.loc 1 105 8
 #NO_APP
	lw	a5,-244(s0)
	addi	a5,a5,4
	sw	a5,-244(s0)
	j	.L9
.L12:
	.loc 1 110 10
	lw	a1,-244(s0)
	lw	a0,-252(s0)
	call	except_handler
	sw	a0,-244(s0)
.L9:
	.loc 1 114 5
	lw	a5,-264(s0)
 #APP
# 114 "ae350_soc/ae350/trap.c" 1
	csrw 0x300, a5
# 0 "" 2
	.loc 1 115 5
 #NO_APP
	lw	a5,-244(s0)
 #APP
# 115 "ae350_soc/ae350/trap.c" 1
	csrw 0x341, a5
# 0 "" 2
	.loc 1 117 5
 #NO_APP
	lw	a5,-272(s0)
 #APP
# 117 "ae350_soc/ae350/trap.c" 1
	csrw 0x7c4, a5
# 0 "" 2
	.loc 1 123 5
 #NO_APP
	lw	a5,-280(s0)
 #APP
# 123 "ae350_soc/ae350/trap.c" 1
	fscsr a5
# 0 "" 2
	.loc 1 125 1
 #NO_APP
	nop
	lw	ra,316(sp)
	.cfi_restore 1
	lw	t0,312(sp)
	.cfi_restore 5
	lw	t1,308(sp)
	.cfi_restore 6
	lw	t2,304(sp)
	.cfi_restore 7
	lw	s0,300(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 320
	lw	a0,296(sp)
	.cfi_restore 10
	lw	a1,292(sp)
	.cfi_restore 11
	lw	a2,288(sp)
	.cfi_restore 12
	lw	a3,284(sp)
	.cfi_restore 13
	lw	a4,280(sp)
	.cfi_restore 14
	lw	a5,276(sp)
	.cfi_restore 15
	lw	a6,272(sp)
	.cfi_restore 16
	lw	a7,268(sp)
	.cfi_restore 17
	lw	t3,264(sp)
	.cfi_restore 28
	lw	t4,260(sp)
	.cfi_restore 29
	lw	t5,256(sp)
	.cfi_restore 30
	lw	t6,252(sp)
	.cfi_restore 31
	fld	ft0,232(sp)
	.cfi_restore 32
	fld	ft1,224(sp)
	.cfi_restore 33
	fld	ft2,216(sp)
	.cfi_restore 34
	fld	ft3,208(sp)
	.cfi_restore 35
	fld	ft4,200(sp)
	.cfi_restore 36
	fld	ft5,192(sp)
	.cfi_restore 37
	fld	ft6,184(sp)
	.cfi_restore 38
	fld	ft7,176(sp)
	.cfi_restore 39
	fld	fa0,168(sp)
	.cfi_restore 42
	fld	fa1,160(sp)
	.cfi_restore 43
	fld	fa2,152(sp)
	.cfi_restore 44
	fld	fa3,144(sp)
	.cfi_restore 45
	fld	fa4,136(sp)
	.cfi_restore 46
	fld	fa5,128(sp)
	.cfi_restore 47
	fld	fa6,120(sp)
	.cfi_restore 48
	fld	fa7,112(sp)
	.cfi_restore 49
	fld	ft8,104(sp)
	.cfi_restore 60
	fld	ft9,96(sp)
	.cfi_restore 61
	fld	ft10,88(sp)
	.cfi_restore 62
	fld	ft11,80(sp)
	.cfi_restore 63
	addi	sp,sp,320
	.cfi_def_cfa_offset 0
	mret
	.cfi_endproc
.LFE22:
	.size	trap_entry, .-trap_entry
	.text
.Letext0:
	.file 3 "ae350_soc/ae350/../../ae350_soc/ae350/../../ae350_soc/ae350/interrupt.h"
	.file 4 "/home/lc/tools/riscv32-unknown-elf/riscv32-unknown-elf/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x3a6
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0xd
	.4byte	.LASF1371
	.byte	0x1d
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1344
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1345
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF1346
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1347
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF1348
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1349
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF1350
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF1351
	.uleb128 0xe
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1352
	.uleb128 0xf
	.4byte	0x69
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.4byte	.LASF1353
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1354
	.uleb128 0x10
	.4byte	0x7c
	.uleb128 0x7
	.4byte	0x83
	.uleb128 0x11
	.4byte	0x88
	.uleb128 0x12
	.4byte	.LASF1372
	.byte	0x3
	.byte	0x49
	.byte	0xd
	.4byte	0xa4
	.uleb128 0x8
	.4byte	0x69
	.byte	0
	.uleb128 0x13
	.4byte	.LASF1373
	.byte	0x4
	.byte	0xce
	.byte	0x5
	.4byte	0x62
	.4byte	0xbb
	.uleb128 0x8
	.4byte	0x8d
	.uleb128 0x14
	.byte	0
	.uleb128 0x15
	.4byte	.LASF1361
	.byte	0x1
	.byte	0x30
	.byte	0x6
	.byte	0x4
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x24d
	.uleb128 0x1
	.4byte	.LASF1355
	.byte	0x32
	.byte	0x7
	.4byte	0x46
	.uleb128 0x3
	.byte	0x91
	.sleb128 -252
	.uleb128 0x1
	.4byte	.LASF1356
	.byte	0x33
	.byte	0x7
	.4byte	0x46
	.uleb128 0x3
	.byte	0x91
	.sleb128 -244
	.uleb128 0x1
	.4byte	.LASF1357
	.byte	0x34
	.byte	0x7
	.4byte	0x46
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x1
	.4byte	.LASF1358
	.byte	0x36
	.byte	0x7
	.4byte	0x46
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x1
	.4byte	.LASF1359
	.byte	0x3c
	.byte	0x6
	.4byte	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x3
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.4byte	0x13a
	.uleb128 0x1
	.4byte	.LASF1360
	.byte	0x32
	.byte	0x21
	.4byte	0x4d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.byte	0
	.uleb128 0x3
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.4byte	0x157
	.uleb128 0x1
	.4byte	.LASF1360
	.byte	0x33
	.byte	0x1f
	.4byte	0x4d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.byte	0
	.uleb128 0x3
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.4byte	0x174
	.uleb128 0x1
	.4byte	.LASF1360
	.byte	0x34
	.byte	0x22
	.4byte	0x4d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -260
	.byte	0
	.uleb128 0x3
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.4byte	0x191
	.uleb128 0x1
	.4byte	.LASF1360
	.byte	0x36
	.byte	0x23
	.4byte	0x4d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -268
	.byte	0
	.uleb128 0x3
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.4byte	0x1ae
	.uleb128 0x1
	.4byte	.LASF1360
	.byte	0x3c
	.byte	0x1e
	.4byte	0x4d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -276
	.byte	0
	.uleb128 0x3
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.4byte	0x1cb
	.uleb128 0x1
	.4byte	.LASF1360
	.byte	0x57
	.byte	0x37
	.4byte	0x4d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -284
	.byte	0
	.uleb128 0x16
	.4byte	0x378
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.byte	0x1
	.byte	0x4a
	.byte	0x3
	.4byte	0x209
	.uleb128 0x4
	.4byte	0x385
	.uleb128 0x3
	.byte	0x91
	.sleb128 -292
	.uleb128 0x4
	.4byte	0x390
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x9
	.4byte	0x39b
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.uleb128 0x4
	.4byte	0x39c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	0x336
	.4byte	.LBB25
	.4byte	.LBE25-.LBB25
	.byte	0x1
	.byte	0x57
	.byte	0x3
	.uleb128 0x18
	.4byte	0x343
	.uleb128 0x3
	.byte	0x91
	.sleb128 -300
	.uleb128 0x4
	.4byte	0x34f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -308
	.uleb128 0x4
	.4byte	0x35a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x9
	.4byte	0x365
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.uleb128 0x4
	.4byte	0x366
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF1362
	.byte	0x1
	.byte	0x26
	.byte	0x1c
	.4byte	0x46
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x285
	.uleb128 0x1a
	.4byte	.LASF1363
	.byte	0x1
	.byte	0x26
	.byte	0x30
	.4byte	0x46
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.string	"epc"
	.byte	0x26
	.byte	0x3c
	.4byte	0x46
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF1364
	.byte	0x1
	.byte	0x20
	.byte	0x1c
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2dc
	.uleb128 0x5
	.string	"n"
	.byte	0x20
	.byte	0x31
	.4byte	0x46
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.string	"a0"
	.byte	0x20
	.byte	0x39
	.4byte	0x46
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.string	"a1"
	.byte	0x20
	.byte	0x42
	.4byte	0x46
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.string	"a2"
	.byte	0x20
	.byte	0x4b
	.4byte	0x46
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.string	"a3"
	.byte	0x20
	.byte	0x54
	.4byte	0x46
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0xa
	.4byte	.LASF1365
	.byte	0x1a
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x309
	.uleb128 0xb
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.uleb128 0x1
	.4byte	.LASF1360
	.byte	0x1c
	.byte	0x13
	.4byte	0x4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF1366
	.byte	0x14
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x336
	.uleb128 0xb
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.uleb128 0x1
	.4byte	.LASF1360
	.byte	0x16
	.byte	0x13
	.4byte	0x4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF1369
	.byte	0x2
	.byte	0xc4
	.byte	0x33
	.byte	0x3
	.4byte	0x373
	.uleb128 0x1d
	.4byte	.LASF1374
	.byte	0x2
	.byte	0xc4
	.byte	0x62
	.4byte	0x69
	.uleb128 0x6
	.4byte	.LASF1367
	.byte	0xc6
	.byte	0x10
	.4byte	0x69
	.uleb128 0x6
	.4byte	.LASF1368
	.byte	0xc7
	.byte	0x1a
	.4byte	0x373
	.uleb128 0xc
	.uleb128 0x6
	.4byte	.LASF1360
	.byte	0xc6
	.byte	0x2b
	.4byte	0x4d
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x70
	.uleb128 0x1e
	.4byte	.LASF1370
	.byte	0x2
	.byte	0x6c
	.byte	0x3b
	.4byte	0x69
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF1367
	.byte	0x6e
	.byte	0x10
	.4byte	0x69
	.uleb128 0x6
	.4byte	.LASF1368
	.byte	0x6f
	.byte	0x1a
	.4byte	0x373
	.uleb128 0xc
	.uleb128 0x6
	.4byte	.LASF1360
	.byte	0x6e
	.byte	0x2b
	.4byte	0x4d
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
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
	.uleb128 0x2
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
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.sleb128 28
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
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
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
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x88
	.uleb128 0xb
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x5
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x5
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
	.uleb128 0x1e
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x3c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
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
	.uleb128 0xd
	.uleb128 0x4
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF348
	.file 5 "/home/lc/tools/riscv32-unknown-elf/riscv32-unknown-elf/include/_ansi.h"
	.byte	0x3
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF349
	.file 6 "/home/lc/tools/riscv32-unknown-elf/riscv32-unknown-elf/include/newlib.h"
	.byte	0x3
	.uleb128 0xa
	.uleb128 0x6
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF350
	.file 7 "/home/lc/tools/riscv32-unknown-elf/riscv32-unknown-elf/include/_newlib_version.h"
	.byte	0x3
	.uleb128 0xa
	.uleb128 0x7
	.byte	0x7
	.4byte	.Ldebug_macro2
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro3
	.byte	0x4
	.file 8 "/home/lc/tools/riscv32-unknown-elf/riscv32-unknown-elf/include/sys/config.h"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x8
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF370
	.file 9 "/home/lc/tools/riscv32-unknown-elf/riscv32-unknown-elf/include/machine/ieeefp.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x9
	.byte	0x7
	.4byte	.Ldebug_macro4
	.byte	0x4
	.file 10 "/home/lc/tools/riscv32-unknown-elf/riscv32-unknown-elf/include/sys/features.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0xa
	.byte	0x7
	.4byte	.Ldebug_macro5
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro6
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro7
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro8
	.file 11 "/home/lc/tools/riscv32-unknown-elf/riscv32-unknown-elf/include/sys/cdefs.h"
	.byte	0x3
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF407
	.file 12 "/home/lc/tools/riscv32-unknown-elf/riscv32-unknown-elf/include/machine/_default_types.h"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0xc
	.byte	0x7
	.4byte	.Ldebug_macro9
	.byte	0x4
	.file 13 "/home/lc/tools/riscv32-unknown-elf/lib/gcc/riscv32-unknown-elf/13.2.0/include/stddef.h"
	.byte	0x3
	.uleb128 0x2f
	.uleb128 0xd
	.byte	0x7
	.4byte	.Ldebug_macro10
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro11
	.byte	0x4
	.byte	0x3
	.uleb128 0x24
	.uleb128 0xd
	.byte	0x7
	.4byte	.Ldebug_macro12
	.byte	0x4
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF607
	.file 14 "/home/lc/tools/riscv32-unknown-elf/lib/gcc/riscv32-unknown-elf/13.2.0/include/stdarg.h"
	.byte	0x3
	.uleb128 0x28
	.uleb128 0xe
	.byte	0x7
	.4byte	.Ldebug_macro13
	.byte	0x4
	.file 15 "/home/lc/tools/riscv32-unknown-elf/riscv32-unknown-elf/include/sys/reent.h"
	.byte	0x3
	.uleb128 0x3c
	.uleb128 0xf
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF610
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x5
	.byte	0x4
	.byte	0x3
	.uleb128 0xe
	.uleb128 0xd
	.byte	0x4
	.file 16 "/home/lc/tools/riscv32-unknown-elf/riscv32-unknown-elf/include/sys/_types.h"
	.byte	0x3
	.uleb128 0x10
	.uleb128 0x10
	.byte	0x7
	.4byte	.Ldebug_macro14
	.byte	0x3
	.uleb128 0x18
	.uleb128 0xd
	.byte	0x7
	.4byte	.Ldebug_macro15
	.byte	0x4
	.file 17 "/home/lc/tools/riscv32-unknown-elf/riscv32-unknown-elf/include/machine/_types.h"
	.byte	0x3
	.uleb128 0x1b
	.uleb128 0x11
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF615
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro16
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro17
	.file 18 "/home/lc/tools/riscv32-unknown-elf/riscv32-unknown-elf/include/sys/lock.h"
	.byte	0x3
	.uleb128 0x23
	.uleb128 0x12
	.byte	0x7
	.4byte	.Ldebug_macro18
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro19
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro20
	.file 19 "/home/lc/tools/riscv32-unknown-elf/riscv32-unknown-elf/include/sys/stdio.h"
	.byte	0x3
	.uleb128 0x55
	.uleb128 0x13
	.byte	0x7
	.4byte	.Ldebug_macro21
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro22
	.byte	0x4
	.file 20 "ae350_soc/ae350/../../ae350_soc/ae350/platform.h"
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x14
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF760
	.file 21 "ae350_soc/ae350/../../ae350_soc/ae350/../../ae350_soc/config/config.h"
	.byte	0x3
	.uleb128 0x14
	.uleb128 0x15
	.byte	0x7
	.4byte	.Ldebug_macro23
	.byte	0x4
	.file 22 "ae350_soc/ae350/../../ae350_soc/ae350/../../ae350_soc/ae350/core_v5.h"
	.byte	0x3
	.uleb128 0x15
	.uleb128 0x16
	.byte	0x7
	.4byte	.Ldebug_macro24
	.file 23 "ae350_soc/ae350/../../ae350_soc/ae350/../../ae350_soc/ae350/../../ae350_soc/ae350/csr.h"
	.byte	0x3
	.uleb128 0x94
	.uleb128 0x17
	.byte	0x7
	.4byte	.Ldebug_macro25
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro26
	.byte	0x4
	.file 24 "ae350_soc/ae350/../../ae350_soc/ae350/../../ae350_soc/ae350/ae350.h"
	.byte	0x3
	.uleb128 0x16
	.uleb128 0x18
	.byte	0x7
	.4byte	.Ldebug_macro27
	.byte	0x4
	.byte	0x3
	.uleb128 0x17
	.uleb128 0x3
	.byte	0x7
	.4byte	.Ldebug_macro28
	.byte	0x3
	.uleb128 0x1f
	.uleb128 0x2
	.byte	0x7
	.4byte	.Ldebug_macro29
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro30
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro31
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4._newlib_version.h.4.411db44ea2338a62eca2f0777f81481b,comdat
.Ldebug_macro2:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF351
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF352
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF353
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF354
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF355
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.newlib.h.33.804eb44b5bf18527c22c557ff390bf46,comdat
.Ldebug_macro3:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF356
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF357
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF358
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF359
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF360
	.byte	0x5
	.uleb128 0x16c
	.4byte	.LASF361
	.byte	0x5
	.uleb128 0x177
	.4byte	.LASF362
	.byte	0x5
	.uleb128 0x17d
	.4byte	.LASF363
	.byte	0x5
	.uleb128 0x181
	.4byte	.LASF364
	.byte	0x5
	.uleb128 0x185
	.4byte	.LASF365
	.byte	0x5
	.uleb128 0x189
	.4byte	.LASF366
	.byte	0x5
	.uleb128 0x19a
	.4byte	.LASF367
	.byte	0x5
	.uleb128 0x19d
	.4byte	.LASF368
	.byte	0x5
	.uleb128 0x1a3
	.4byte	.LASF369
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.ieeefp.h.219.5cc00e327f7a7b5a5a4153f16de7b5a7,comdat
.Ldebug_macro4:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0xdb
	.4byte	.LASF371
	.byte	0x5
	.uleb128 0xde
	.4byte	.LASF372
	.byte	0x5
	.uleb128 0xe1
	.4byte	.LASF373
	.byte	0x5
	.uleb128 0x20a
	.4byte	.LASF374
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.features.h.22.c0ef1e953210f9da7cbcd4f425fc3dd9,comdat
.Ldebug_macro5:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF375
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF376
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF377
	.byte	0x5
	.uleb128 0x103
	.4byte	.LASF378
	.byte	0x5
	.uleb128 0x109
	.4byte	.LASF379
	.byte	0x5
	.uleb128 0x10f
	.4byte	.LASF380
	.byte	0x5
	.uleb128 0x117
	.4byte	.LASF381
	.byte	0x5
	.uleb128 0x122
	.4byte	.LASF382
	.byte	0x5
	.uleb128 0x128
	.4byte	.LASF383
	.byte	0x5
	.uleb128 0x136
	.4byte	.LASF384
	.byte	0x5
	.uleb128 0x13e
	.4byte	.LASF385
	.byte	0x5
	.uleb128 0x14c
	.4byte	.LASF386
	.byte	0x5
	.uleb128 0x158
	.4byte	.LASF387
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.config.h.83.e34149fe91003a78bfbd7fc7c574422a,comdat
.Ldebug_macro6:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x53
	.4byte	.LASF388
	.byte	0x5
	.uleb128 0xe0
	.4byte	.LASF389
	.byte	0x6
	.uleb128 0xe6
	.4byte	.LASF390
	.byte	0x5
	.uleb128 0xea
	.4byte	.LASF391
	.byte	0x5
	.uleb128 0xf8
	.4byte	.LASF392
	.byte	0x5
	.uleb128 0xfc
	.4byte	.LASF393
	.byte	0x5
	.uleb128 0x109
	.4byte	.LASF394
	.byte	0x5
	.uleb128 0x122
	.4byte	.LASF395
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4._ansi.h.31.de524f58584151836e90d8620a16f8e8,comdat
.Ldebug_macro7:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF396
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF397
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF398
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF399
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF400
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF401
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF402
	.byte	0x5
	.uleb128 0x4a
	.4byte	.LASF403
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdio.h.31.7c0e28c411445f3f9c5b11accf882760,comdat
.Ldebug_macro8:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF404
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF405
	.byte	0x5
	.uleb128 0x22
	.4byte	.LASF406
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4._default_types.h.6.959254cf5f09734ea7516c89e8bb21bd,comdat
.Ldebug_macro9:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF408
	.byte	0x5
	.uleb128 0xf
	.4byte	.LASF409
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF410
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF411
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF412
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF413
	.byte	0x5
	.uleb128 0x53
	.4byte	.LASF414
	.byte	0x5
	.uleb128 0x6d
	.4byte	.LASF415
	.byte	0x5
	.uleb128 0x8c
	.4byte	.LASF416
	.byte	0x5
	.uleb128 0xa6
	.4byte	.LASF417
	.byte	0x5
	.uleb128 0xbc
	.4byte	.LASF418
	.byte	0x5
	.uleb128 0xce
	.4byte	.LASF419
	.byte	0x6
	.uleb128 0xf4
	.4byte	.LASF420
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stddef.h.185.cbb642e1ccd385e8aa504b15cb7fb086,comdat
.Ldebug_macro10:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0xb9
	.4byte	.LASF421
	.byte	0x5
	.uleb128 0xba
	.4byte	.LASF422
	.byte	0x5
	.uleb128 0xbb
	.4byte	.LASF423
	.byte	0x5
	.uleb128 0xbc
	.4byte	.LASF424
	.byte	0x5
	.uleb128 0xbd
	.4byte	.LASF425
	.byte	0x5
	.uleb128 0xbe
	.4byte	.LASF426
	.byte	0x5
	.uleb128 0xbf
	.4byte	.LASF427
	.byte	0x5
	.uleb128 0xc0
	.4byte	.LASF428
	.byte	0x5
	.uleb128 0xc1
	.4byte	.LASF429
	.byte	0x5
	.uleb128 0xc2
	.4byte	.LASF430
	.byte	0x5
	.uleb128 0xc3
	.4byte	.LASF431
	.byte	0x5
	.uleb128 0xc4
	.4byte	.LASF432
	.byte	0x5
	.uleb128 0xc5
	.4byte	.LASF433
	.byte	0x5
	.uleb128 0xc6
	.4byte	.LASF434
	.byte	0x5
	.uleb128 0xc7
	.4byte	.LASF435
	.byte	0x5
	.uleb128 0xc8
	.4byte	.LASF436
	.byte	0x5
	.uleb128 0xc9
	.4byte	.LASF437
	.byte	0x5
	.uleb128 0xd0
	.4byte	.LASF438
	.byte	0x6
	.uleb128 0xed
	.4byte	.LASF439
	.byte	0x6
	.uleb128 0x18f
	.4byte	.LASF440
	.byte	0x5
	.uleb128 0x194
	.4byte	.LASF441
	.byte	0x6
	.uleb128 0x19a
	.4byte	.LASF442
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.cdefs.h.49.70fc7af612f78ddcace70fdd90b5623b,comdat
.Ldebug_macro11:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF443
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF444
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF445
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF446
	.byte	0x5
	.uleb128 0x39
	.4byte	.LASF447
	.byte	0x5
	.uleb128 0x3a
	.4byte	.LASF448
	.byte	0x5
	.uleb128 0x3c
	.4byte	.LASF449
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF450
	.byte	0x5
	.uleb128 0x3e
	.4byte	.LASF451
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF452
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF453
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF454
	.byte	0x5
	.uleb128 0x44
	.4byte	.LASF455
	.byte	0x5
	.uleb128 0x4e
	.4byte	.LASF456
	.byte	0x5
	.uleb128 0x51
	.4byte	.LASF457
	.byte	0x5
	.uleb128 0x5e
	.4byte	.LASF458
	.byte	0x5
	.uleb128 0x5f
	.4byte	.LASF459
	.byte	0x5
	.uleb128 0x6b
	.4byte	.LASF460
	.byte	0x5
	.uleb128 0x6c
	.4byte	.LASF461
	.byte	0x5
	.uleb128 0x70
	.4byte	.LASF462
	.byte	0x5
	.uleb128 0x71
	.4byte	.LASF463
	.byte	0x5
	.uleb128 0x73
	.4byte	.LASF464
	.byte	0x5
	.uleb128 0x75
	.4byte	.LASF465
	.byte	0x5
	.uleb128 0x78
	.4byte	.LASF466
	.byte	0x5
	.uleb128 0x79
	.4byte	.LASF467
	.byte	0x5
	.uleb128 0x7a
	.4byte	.LASF468
	.byte	0x5
	.uleb128 0x7d
	.4byte	.LASF469
	.byte	0x5
	.uleb128 0x82
	.4byte	.LASF470
	.byte	0x5
	.uleb128 0x84
	.4byte	.LASF471
	.byte	0x5
	.uleb128 0x85
	.4byte	.LASF472
	.byte	0x5
	.uleb128 0x87
	.4byte	.LASF473
	.byte	0x5
	.uleb128 0x8a
	.4byte	.LASF474
	.byte	0x5
	.uleb128 0x8b
	.4byte	.LASF475
	.byte	0x5
	.uleb128 0x8c
	.4byte	.LASF476
	.byte	0x5
	.uleb128 0x8e
	.4byte	.LASF477
	.byte	0x5
	.uleb128 0x8f
	.4byte	.LASF478
	.byte	0x5
	.uleb128 0x91
	.4byte	.LASF479
	.byte	0x5
	.uleb128 0x93
	.4byte	.LASF480
	.byte	0x5
	.uleb128 0xa4
	.4byte	.LASF481
	.byte	0x5
	.uleb128 0xa5
	.4byte	.LASF482
	.byte	0x5
	.uleb128 0xa6
	.4byte	.LASF483
	.byte	0x5
	.uleb128 0xa7
	.4byte	.LASF484
	.byte	0x5
	.uleb128 0xa8
	.4byte	.LASF485
	.byte	0x5
	.uleb128 0xaa
	.4byte	.LASF486
	.byte	0x5
	.uleb128 0xab
	.4byte	.LASF487
	.byte	0x5
	.uleb128 0xac
	.4byte	.LASF488
	.byte	0x5
	.uleb128 0xd9
	.4byte	.LASF489
	.byte	0x5
	.uleb128 0xe6
	.4byte	.LASF490
	.byte	0x5
	.uleb128 0xe7
	.4byte	.LASF491
	.byte	0x5
	.uleb128 0xe8
	.4byte	.LASF492
	.byte	0x5
	.uleb128 0xe9
	.4byte	.LASF493
	.byte	0x5
	.uleb128 0xea
	.4byte	.LASF494
	.byte	0x5
	.uleb128 0xeb
	.4byte	.LASF495
	.byte	0x5
	.uleb128 0xec
	.4byte	.LASF496
	.byte	0x5
	.uleb128 0xef
	.4byte	.LASF497
	.byte	0x5
	.uleb128 0xf0
	.4byte	.LASF498
	.byte	0x5
	.uleb128 0xf6
	.4byte	.LASF499
	.byte	0x5
	.uleb128 0x152
	.4byte	.LASF500
	.byte	0x5
	.uleb128 0x164
	.4byte	.LASF501
	.byte	0x5
	.uleb128 0x16a
	.4byte	.LASF502
	.byte	0x5
	.uleb128 0x16b
	.4byte	.LASF503
	.byte	0x5
	.uleb128 0x172
	.4byte	.LASF504
	.byte	0x5
	.uleb128 0x178
	.4byte	.LASF505
	.byte	0x5
	.uleb128 0x17e
	.4byte	.LASF506
	.byte	0x5
	.uleb128 0x17f
	.4byte	.LASF507
	.byte	0x5
	.uleb128 0x186
	.4byte	.LASF508
	.byte	0x5
	.uleb128 0x187
	.4byte	.LASF509
	.byte	0x5
	.uleb128 0x18e
	.4byte	.LASF510
	.byte	0x5
	.uleb128 0x194
	.4byte	.LASF511
	.byte	0x5
	.uleb128 0x1a5
	.4byte	.LASF512
	.byte	0x5
	.uleb128 0x1b2
	.4byte	.LASF513
	.byte	0x5
	.uleb128 0x1d4
	.4byte	.LASF514
	.byte	0x5
	.uleb128 0x1d5
	.4byte	.LASF515
	.byte	0x5
	.uleb128 0x1dc
	.4byte	.LASF516
	.byte	0x5
	.uleb128 0x1dd
	.4byte	.LASF517
	.byte	0x5
	.uleb128 0x1e0
	.4byte	.LASF518
	.byte	0x5
	.uleb128 0x1ea
	.4byte	.LASF519
	.byte	0x5
	.uleb128 0x1eb
	.4byte	.LASF520
	.byte	0x5
	.uleb128 0x1f5
	.4byte	.LASF521
	.byte	0x5
	.uleb128 0x20b
	.4byte	.LASF522
	.byte	0x5
	.uleb128 0x20d
	.4byte	.LASF523
	.byte	0x5
	.uleb128 0x20f
	.4byte	.LASF524
	.byte	0x5
	.uleb128 0x210
	.4byte	.LASF525
	.byte	0x5
	.uleb128 0x212
	.4byte	.LASF526
	.byte	0x5
	.uleb128 0x21c
	.4byte	.LASF527
	.byte	0x5
	.uleb128 0x220
	.4byte	.LASF528
	.byte	0x5
	.uleb128 0x224
	.4byte	.LASF529
	.byte	0x5
	.uleb128 0x227
	.4byte	.LASF530
	.byte	0x5
	.uleb128 0x22b
	.4byte	.LASF531
	.byte	0x5
	.uleb128 0x22d
	.4byte	.LASF532
	.byte	0x5
	.uleb128 0x250
	.4byte	.LASF533
	.byte	0x5
	.uleb128 0x254
	.4byte	.LASF534
	.byte	0x5
	.uleb128 0x258
	.4byte	.LASF535
	.byte	0x5
	.uleb128 0x25c
	.4byte	.LASF536
	.byte	0x5
	.uleb128 0x260
	.4byte	.LASF537
	.byte	0x5
	.uleb128 0x264
	.4byte	.LASF538
	.byte	0x5
	.uleb128 0x268
	.4byte	.LASF539
	.byte	0x5
	.uleb128 0x26c
	.4byte	.LASF540
	.byte	0x5
	.uleb128 0x273
	.4byte	.LASF541
	.byte	0x5
	.uleb128 0x274
	.4byte	.LASF542
	.byte	0x5
	.uleb128 0x275
	.4byte	.LASF543
	.byte	0x5
	.uleb128 0x276
	.4byte	.LASF544
	.byte	0x5
	.uleb128 0x277
	.4byte	.LASF545
	.byte	0x5
	.uleb128 0x28c
	.4byte	.LASF546
	.byte	0x5
	.uleb128 0x28d
	.4byte	.LASF547
	.byte	0x5
	.uleb128 0x29f
	.4byte	.LASF548
	.byte	0x5
	.uleb128 0x2a5
	.4byte	.LASF549
	.byte	0x5
	.uleb128 0x2a8
	.4byte	.LASF550
	.byte	0x5
	.uleb128 0x2aa
	.4byte	.LASF551
	.byte	0x5
	.uleb128 0x2ae
	.4byte	.LASF552
	.byte	0x5
	.uleb128 0x2b0
	.4byte	.LASF553
	.byte	0x5
	.uleb128 0x2b4
	.4byte	.LASF554
	.byte	0x5
	.uleb128 0x2b7
	.4byte	.LASF555
	.byte	0x5
	.uleb128 0x2b9
	.4byte	.LASF556
	.byte	0x5
	.uleb128 0x2bd
	.4byte	.LASF557
	.byte	0x5
	.uleb128 0x2bf
	.4byte	.LASF558
	.byte	0x5
	.uleb128 0x2c1
	.4byte	.LASF559
	.byte	0x5
	.uleb128 0x2c5
	.4byte	.LASF560
	.byte	0x5
	.uleb128 0x2d6
	.4byte	.LASF561
	.byte	0x5
	.uleb128 0x2d7
	.4byte	.LASF562
	.byte	0x5
	.uleb128 0x2d8
	.4byte	.LASF563
	.byte	0x5
	.uleb128 0x2dc
	.4byte	.LASF564
	.byte	0x5
	.uleb128 0x2dd
	.4byte	.LASF565
	.byte	0x5
	.uleb128 0x2e2
	.4byte	.LASF566
	.byte	0x5
	.uleb128 0x2e6
	.4byte	.LASF567
	.byte	0x5
	.uleb128 0x2ea
	.4byte	.LASF568
	.byte	0x5
	.uleb128 0x2ee
	.4byte	.LASF569
	.byte	0x5
	.uleb128 0x2ef
	.4byte	.LASF570
	.byte	0x5
	.uleb128 0x2f0
	.4byte	.LASF571
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stddef.h.39.6817658cc6bc4c7c8354d2009e4a5777,comdat
.Ldebug_macro12:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF572
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF573
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF574
	.byte	0x5
	.uleb128 0x84
	.4byte	.LASF575
	.byte	0x5
	.uleb128 0x85
	.4byte	.LASF576
	.byte	0x5
	.uleb128 0x86
	.4byte	.LASF577
	.byte	0x5
	.uleb128 0x87
	.4byte	.LASF578
	.byte	0x5
	.uleb128 0x88
	.4byte	.LASF579
	.byte	0x5
	.uleb128 0x89
	.4byte	.LASF580
	.byte	0x5
	.uleb128 0x8a
	.4byte	.LASF581
	.byte	0x5
	.uleb128 0x8b
	.4byte	.LASF582
	.byte	0x5
	.uleb128 0x8c
	.4byte	.LASF583
	.byte	0x5
	.uleb128 0x8d
	.4byte	.LASF584
	.byte	0x6
	.uleb128 0x9e
	.4byte	.LASF585
	.byte	0x6
	.uleb128 0xed
	.4byte	.LASF439
	.byte	0x5
	.uleb128 0x10b
	.4byte	.LASF586
	.byte	0x5
	.uleb128 0x10c
	.4byte	.LASF587
	.byte	0x5
	.uleb128 0x10d
	.4byte	.LASF588
	.byte	0x5
	.uleb128 0x10e
	.4byte	.LASF589
	.byte	0x5
	.uleb128 0x10f
	.4byte	.LASF590
	.byte	0x5
	.uleb128 0x110
	.4byte	.LASF591
	.byte	0x5
	.uleb128 0x111
	.4byte	.LASF592
	.byte	0x5
	.uleb128 0x112
	.4byte	.LASF593
	.byte	0x5
	.uleb128 0x113
	.4byte	.LASF594
	.byte	0x5
	.uleb128 0x114
	.4byte	.LASF595
	.byte	0x5
	.uleb128 0x115
	.4byte	.LASF596
	.byte	0x5
	.uleb128 0x116
	.4byte	.LASF597
	.byte	0x5
	.uleb128 0x117
	.4byte	.LASF598
	.byte	0x5
	.uleb128 0x118
	.4byte	.LASF599
	.byte	0x5
	.uleb128 0x119
	.4byte	.LASF600
	.byte	0x5
	.uleb128 0x11a
	.4byte	.LASF601
	.byte	0x6
	.uleb128 0x127
	.4byte	.LASF602
	.byte	0x6
	.uleb128 0x15d
	.4byte	.LASF603
	.byte	0x6
	.uleb128 0x18f
	.4byte	.LASF440
	.byte	0x5
	.uleb128 0x194
	.4byte	.LASF441
	.byte	0x6
	.uleb128 0x19a
	.4byte	.LASF442
	.byte	0x6
	.uleb128 0x19f
	.4byte	.LASF604
	.byte	0x5
	.uleb128 0x1a0
	.4byte	.LASF605
	.byte	0x5
	.uleb128 0x1a5
	.4byte	.LASF606
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdarg.h.34.3a23a216c0c293b3d2ea2e89281481e6,comdat
.Ldebug_macro13:
	.2byte	0x5
	.byte	0
	.byte	0x6
	.uleb128 0x22
	.4byte	.LASF608
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF609
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4._types.h.20.dd0d04dca3800a0d2a6129b87f3adbb2,comdat
.Ldebug_macro14:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x14
	.4byte	.LASF611
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF405
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF612
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stddef.h.158.6f8e08a347b1cff664332fa350bfceb3,comdat
.Ldebug_macro15:
	.2byte	0x5
	.byte	0
	.byte	0x6
	.uleb128 0x9e
	.4byte	.LASF585
	.byte	0x6
	.uleb128 0xed
	.4byte	.LASF439
	.byte	0x6
	.uleb128 0x15d
	.4byte	.LASF603
	.byte	0x5
	.uleb128 0x162
	.4byte	.LASF613
	.byte	0x6
	.uleb128 0x169
	.4byte	.LASF614
	.byte	0x6
	.uleb128 0x18f
	.4byte	.LASF440
	.byte	0x5
	.uleb128 0x194
	.4byte	.LASF441
	.byte	0x6
	.uleb128 0x19a
	.4byte	.LASF442
	.byte	0x6
	.uleb128 0x19f
	.4byte	.LASF604
	.byte	0x5
	.uleb128 0x1a0
	.4byte	.LASF605
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4._types.h.127.3bdfe3ff8ea2d0985b03d9cbe93480e3,comdat
.Ldebug_macro16:
	.2byte	0x5
	.byte	0
	.byte	0x6
	.uleb128 0x7f
	.4byte	.LASF616
	.byte	0x5
	.uleb128 0x92
	.4byte	.LASF617
	.byte	0x6
	.uleb128 0x94
	.4byte	.LASF618
	.byte	0x5
	.uleb128 0xb3
	.4byte	.LASF619
	.byte	0x5
	.uleb128 0xbb
	.4byte	.LASF620
	.byte	0x5
	.uleb128 0xc0
	.4byte	.LASF621
	.byte	0x5
	.uleb128 0xc9
	.4byte	.LASF622
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.reent.h.18.25503cdc8b7e55dd0d6ea7b3e5af7a03,comdat
.Ldebug_macro17:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF623
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF624
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.lock.h.2.c0958401bd0ce484d507ee19aacab817,comdat
.Ldebug_macro18:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF625
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF626
	.byte	0x5
	.uleb128 0xf
	.4byte	.LASF627
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF628
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF629
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF630
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF631
	.byte	0x5
	.uleb128 0x14
	.4byte	.LASF632
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF633
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF634
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF635
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF636
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF637
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.reent.h.78.7f0775353a33c852a1479c008f68cd03,comdat
.Ldebug_macro19:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x4e
	.4byte	.LASF638
	.byte	0x5
	.uleb128 0x6a
	.4byte	.LASF639
	.byte	0x5
	.uleb128 0x92
	.4byte	.LASF640
	.byte	0x5
	.uleb128 0x12b
	.4byte	.LASF641
	.byte	0x5
	.uleb128 0x12c
	.4byte	.LASF642
	.byte	0x5
	.uleb128 0x12d
	.4byte	.LASF643
	.byte	0x5
	.uleb128 0x12e
	.4byte	.LASF644
	.byte	0x5
	.uleb128 0x12f
	.4byte	.LASF645
	.byte	0x5
	.uleb128 0x130
	.4byte	.LASF646
	.byte	0x5
	.uleb128 0x131
	.4byte	.LASF647
	.byte	0x5
	.uleb128 0x13d
	.4byte	.LASF648
	.byte	0x5
	.uleb128 0x13e
	.4byte	.LASF649
	.byte	0x5
	.uleb128 0x13f
	.4byte	.LASF650
	.byte	0x5
	.uleb128 0x14a
	.4byte	.LASF651
	.byte	0x5
	.uleb128 0x14b
	.4byte	.LASF652
	.byte	0x5
	.uleb128 0x14c
	.4byte	.LASF653
	.byte	0x5
	.uleb128 0x14d
	.4byte	.LASF654
	.byte	0x5
	.uleb128 0x14e
	.4byte	.LASF655
	.byte	0x5
	.uleb128 0x28d
	.4byte	.LASF656
	.byte	0x5
	.uleb128 0x2bc
	.4byte	.LASF657
	.byte	0x5
	.uleb128 0x2ca
	.4byte	.LASF658
	.byte	0x5
	.uleb128 0x2cb
	.4byte	.LASF659
	.byte	0x5
	.uleb128 0x2cc
	.4byte	.LASF660
	.byte	0x5
	.uleb128 0x2cd
	.4byte	.LASF661
	.byte	0x5
	.uleb128 0x2ce
	.4byte	.LASF662
	.byte	0x5
	.uleb128 0x2cf
	.4byte	.LASF663
	.byte	0x5
	.uleb128 0x2d0
	.4byte	.LASF664
	.byte	0x5
	.uleb128 0x2d2
	.4byte	.LASF665
	.byte	0x5
	.uleb128 0x2d3
	.4byte	.LASF666
	.byte	0x5
	.uleb128 0x2d4
	.4byte	.LASF667
	.byte	0x5
	.uleb128 0x2d5
	.4byte	.LASF668
	.byte	0x5
	.uleb128 0x2d6
	.4byte	.LASF669
	.byte	0x5
	.uleb128 0x2d7
	.4byte	.LASF670
	.byte	0x5
	.uleb128 0x2d8
	.4byte	.LASF671
	.byte	0x5
	.uleb128 0x2d9
	.4byte	.LASF672
	.byte	0x5
	.uleb128 0x2da
	.4byte	.LASF673
	.byte	0x5
	.uleb128 0x2db
	.4byte	.LASF674
	.byte	0x5
	.uleb128 0x2dc
	.4byte	.LASF675
	.byte	0x5
	.uleb128 0x2dd
	.4byte	.LASF676
	.byte	0x5
	.uleb128 0x2de
	.4byte	.LASF677
	.byte	0x5
	.uleb128 0x2df
	.4byte	.LASF678
	.byte	0x5
	.uleb128 0x2e0
	.4byte	.LASF679
	.byte	0x5
	.uleb128 0x2e1
	.4byte	.LASF680
	.byte	0x5
	.uleb128 0x2e2
	.4byte	.LASF681
	.byte	0x5
	.uleb128 0x2e3
	.4byte	.LASF682
	.byte	0x5
	.uleb128 0x2e4
	.4byte	.LASF683
	.byte	0x5
	.uleb128 0x2e5
	.4byte	.LASF684
	.byte	0x5
	.uleb128 0x2ee
	.4byte	.LASF685
	.byte	0x5
	.uleb128 0x2ef
	.4byte	.LASF686
	.byte	0x5
	.uleb128 0x2f0
	.4byte	.LASF687
	.byte	0x5
	.uleb128 0x2f4
	.4byte	.LASF688
	.byte	0x5
	.uleb128 0x2f5
	.4byte	.LASF689
	.byte	0x5
	.uleb128 0x2f6
	.4byte	.LASF690
	.byte	0x5
	.uleb128 0x2f7
	.4byte	.LASF691
	.byte	0x5
	.uleb128 0x2f8
	.4byte	.LASF692
	.byte	0x5
	.uleb128 0x2f9
	.4byte	.LASF693
	.byte	0x5
	.uleb128 0x2fa
	.4byte	.LASF694
	.byte	0x5
	.uleb128 0x2fb
	.4byte	.LASF695
	.byte	0x5
	.uleb128 0x2fc
	.4byte	.LASF696
	.byte	0x5
	.uleb128 0x2fd
	.4byte	.LASF697
	.byte	0x5
	.uleb128 0x2fe
	.4byte	.LASF698
	.byte	0x5
	.uleb128 0x300
	.4byte	.LASF699
	.byte	0x5
	.uleb128 0x30b
	.4byte	.LASF700
	.byte	0x5
	.uleb128 0x311
	.4byte	.LASF701
	.byte	0x5
	.uleb128 0x31e
	.4byte	.LASF702
	.byte	0x5
	.uleb128 0x321
	.4byte	.LASF703
	.byte	0x5
	.uleb128 0x323
	.4byte	.LASF704
	.byte	0x5
	.uleb128 0x382
	.4byte	.LASF705
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdio.h.67.0cf8a9c281ab0b348aef5c02e7e48825,comdat
.Ldebug_macro20:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF706
	.byte	0x5
	.uleb128 0x4d
	.4byte	.LASF707
	.byte	0x5
	.uleb128 0x52
	.4byte	.LASF708
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdio.h.2.4aa87247282eca6c8f36f9de33d8df1a,comdat
.Ldebug_macro21:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF709
	.byte	0x5
	.uleb128 0xd
	.4byte	.LASF710
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF711
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdio.h.87.19959ae9a15890fcc21984c88c851435,comdat
.Ldebug_macro22:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x57
	.4byte	.LASF712
	.byte	0x5
	.uleb128 0x58
	.4byte	.LASF713
	.byte	0x5
	.uleb128 0x59
	.4byte	.LASF714
	.byte	0x5
	.uleb128 0x5a
	.4byte	.LASF715
	.byte	0x5
	.uleb128 0x5c
	.4byte	.LASF716
	.byte	0x5
	.uleb128 0x5d
	.4byte	.LASF717
	.byte	0x5
	.uleb128 0x5e
	.4byte	.LASF718
	.byte	0x5
	.uleb128 0x5f
	.4byte	.LASF719
	.byte	0x5
	.uleb128 0x60
	.4byte	.LASF720
	.byte	0x5
	.uleb128 0x61
	.4byte	.LASF721
	.byte	0x5
	.uleb128 0x62
	.4byte	.LASF722
	.byte	0x5
	.uleb128 0x63
	.4byte	.LASF723
	.byte	0x5
	.uleb128 0x64
	.4byte	.LASF724
	.byte	0x5
	.uleb128 0x65
	.4byte	.LASF725
	.byte	0x5
	.uleb128 0x69
	.4byte	.LASF726
	.byte	0x5
	.uleb128 0x6c
	.4byte	.LASF727
	.byte	0x5
	.uleb128 0x6d
	.4byte	.LASF728
	.byte	0x5
	.uleb128 0x78
	.4byte	.LASF729
	.byte	0x5
	.uleb128 0x79
	.4byte	.LASF730
	.byte	0x5
	.uleb128 0x7a
	.4byte	.LASF731
	.byte	0x5
	.uleb128 0x7c
	.4byte	.LASF732
	.byte	0x5
	.uleb128 0x81
	.4byte	.LASF733
	.byte	0x5
	.uleb128 0x87
	.4byte	.LASF734
	.byte	0x5
	.uleb128 0x8d
	.4byte	.LASF735
	.byte	0x5
	.uleb128 0x93
	.4byte	.LASF736
	.byte	0x5
	.uleb128 0x9b
	.4byte	.LASF737
	.byte	0x5
	.uleb128 0x9e
	.4byte	.LASF738
	.byte	0x5
	.uleb128 0xa1
	.4byte	.LASF739
	.byte	0x5
	.uleb128 0xa4
	.4byte	.LASF740
	.byte	0x5
	.uleb128 0xa6
	.4byte	.LASF741
	.byte	0x5
	.uleb128 0xa7
	.4byte	.LASF742
	.byte	0x5
	.uleb128 0xa8
	.4byte	.LASF743
	.byte	0x5
	.uleb128 0xaa
	.4byte	.LASF744
	.byte	0x5
	.uleb128 0xab
	.4byte	.LASF745
	.byte	0x5
	.uleb128 0xac
	.4byte	.LASF746
	.byte	0x5
	.uleb128 0xb4
	.4byte	.LASF747
	.byte	0x5
	.uleb128 0x292
	.4byte	.LASF748
	.byte	0x5
	.uleb128 0x2af
	.4byte	.LASF749
	.byte	0x5
	.uleb128 0x2d3
	.4byte	.LASF750
	.byte	0x5
	.uleb128 0x2d4
	.4byte	.LASF751
	.byte	0x5
	.uleb128 0x2d5
	.4byte	.LASF752
	.byte	0x5
	.uleb128 0x2d6
	.4byte	.LASF753
	.byte	0x5
	.uleb128 0x2da
	.4byte	.LASF754
	.byte	0x5
	.uleb128 0x2db
	.4byte	.LASF755
	.byte	0x5
	.uleb128 0x2dc
	.4byte	.LASF756
	.byte	0x5
	.uleb128 0x303
	.4byte	.LASF757
	.byte	0x5
	.uleb128 0x304
	.4byte	.LASF758
	.byte	0x5
	.uleb128 0x312
	.4byte	.LASF759
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.config.h.11.0e2fcb6d4f76322eee6d47d049ae416c,comdat
.Ldebug_macro23:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF761
	.byte	0x5
	.uleb128 0x1c
	.4byte	.LASF762
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF763
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF764
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF765
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF766
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF767
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF768
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF769
	.byte	0x5
	.uleb128 0x48
	.4byte	.LASF770
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF771
	.byte	0x5
	.uleb128 0x4a
	.4byte	.LASF772
	.byte	0x5
	.uleb128 0x4c
	.4byte	.LASF773
	.byte	0x5
	.uleb128 0x4d
	.4byte	.LASF774
	.byte	0x5
	.uleb128 0x4e
	.4byte	.LASF775
	.byte	0x5
	.uleb128 0x52
	.4byte	.LASF776
	.byte	0x5
	.uleb128 0x55
	.4byte	.LASF777
	.byte	0x5
	.uleb128 0x56
	.4byte	.LASF778
	.byte	0x5
	.uleb128 0x57
	.4byte	.LASF779
	.byte	0x5
	.uleb128 0x59
	.4byte	.LASF780
	.byte	0x5
	.uleb128 0x5a
	.4byte	.LASF781
	.byte	0x5
	.uleb128 0x5b
	.4byte	.LASF782
	.byte	0x5
	.uleb128 0x5f
	.4byte	.LASF783
	.byte	0x5
	.uleb128 0x62
	.4byte	.LASF784
	.byte	0x5
	.uleb128 0x63
	.4byte	.LASF785
	.byte	0x5
	.uleb128 0x64
	.4byte	.LASF786
	.byte	0x5
	.uleb128 0x66
	.4byte	.LASF787
	.byte	0x5
	.uleb128 0x67
	.4byte	.LASF788
	.byte	0x5
	.uleb128 0x68
	.4byte	.LASF789
	.byte	0x5
	.uleb128 0x6c
	.4byte	.LASF790
	.byte	0x5
	.uleb128 0x6f
	.4byte	.LASF791
	.byte	0x5
	.uleb128 0x70
	.4byte	.LASF792
	.byte	0x5
	.uleb128 0x71
	.4byte	.LASF793
	.byte	0x5
	.uleb128 0x73
	.4byte	.LASF794
	.byte	0x5
	.uleb128 0x74
	.4byte	.LASF795
	.byte	0x5
	.uleb128 0x75
	.4byte	.LASF796
	.byte	0x5
	.uleb128 0x79
	.4byte	.LASF797
	.byte	0x5
	.uleb128 0x7d
	.4byte	.LASF798
	.byte	0x5
	.uleb128 0x81
	.4byte	.LASF799
	.byte	0x5
	.uleb128 0x85
	.4byte	.LASF800
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.core_v5.h.11.a8b399720fcf062b67213f6b9bf6855a,comdat
.Ldebug_macro24:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF801
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF802
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF803
	.byte	0x5
	.uleb128 0x14
	.4byte	.LASF804
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF805
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF806
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF807
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF808
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF809
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF810
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF811
	.byte	0x5
	.uleb128 0x1c
	.4byte	.LASF812
	.byte	0x5
	.uleb128 0x1d
	.4byte	.LASF813
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF814
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF815
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF816
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF817
	.byte	0x5
	.uleb128 0x22
	.4byte	.LASF818
	.byte	0x5
	.uleb128 0x23
	.4byte	.LASF819
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF820
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF821
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF822
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF823
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF824
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF825
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF826
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF827
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF828
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF829
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF830
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF831
	.byte	0x5
	.uleb128 0x37
	.4byte	.LASF832
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF833
	.byte	0x5
	.uleb128 0x39
	.4byte	.LASF834
	.byte	0x5
	.uleb128 0x3c
	.4byte	.LASF835
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF836
	.byte	0x5
	.uleb128 0x3e
	.4byte	.LASF837
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF838
	.byte	0x5
	.uleb128 0x40
	.4byte	.LASF839
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF840
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF841
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF842
	.byte	0x5
	.uleb128 0x44
	.4byte	.LASF843
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF844
	.byte	0x5
	.uleb128 0x46
	.4byte	.LASF845
	.byte	0x5
	.uleb128 0x47
	.4byte	.LASF846
	.byte	0x5
	.uleb128 0x4a
	.4byte	.LASF847
	.byte	0x5
	.uleb128 0x4b
	.4byte	.LASF848
	.byte	0x5
	.uleb128 0x4c
	.4byte	.LASF849
	.byte	0x5
	.uleb128 0x4d
	.4byte	.LASF850
	.byte	0x5
	.uleb128 0x4e
	.4byte	.LASF851
	.byte	0x5
	.uleb128 0x4f
	.4byte	.LASF852
	.byte	0x5
	.uleb128 0x51
	.4byte	.LASF853
	.byte	0x5
	.uleb128 0x52
	.4byte	.LASF854
	.byte	0x5
	.uleb128 0x53
	.4byte	.LASF855
	.byte	0x5
	.uleb128 0x54
	.4byte	.LASF856
	.byte	0x5
	.uleb128 0x55
	.4byte	.LASF857
	.byte	0x5
	.uleb128 0x56
	.4byte	.LASF858
	.byte	0x5
	.uleb128 0x57
	.4byte	.LASF859
	.byte	0x5
	.uleb128 0x58
	.4byte	.LASF860
	.byte	0x5
	.uleb128 0x59
	.4byte	.LASF861
	.byte	0x5
	.uleb128 0x5c
	.4byte	.LASF862
	.byte	0x5
	.uleb128 0x5d
	.4byte	.LASF863
	.byte	0x5
	.uleb128 0x66
	.4byte	.LASF864
	.byte	0x5
	.uleb128 0x67
	.4byte	.LASF865
	.byte	0x5
	.uleb128 0x68
	.4byte	.LASF866
	.byte	0x5
	.uleb128 0x69
	.4byte	.LASF867
	.byte	0x5
	.uleb128 0x6a
	.4byte	.LASF868
	.byte	0x5
	.uleb128 0x6c
	.4byte	.LASF869
	.byte	0x5
	.uleb128 0x6f
	.4byte	.LASF870
	.byte	0x5
	.uleb128 0x70
	.4byte	.LASF871
	.byte	0x5
	.uleb128 0x71
	.4byte	.LASF872
	.byte	0x5
	.uleb128 0x77
	.4byte	.LASF873
	.byte	0x5
	.uleb128 0x79
	.4byte	.LASF874
	.byte	0x5
	.uleb128 0x7a
	.4byte	.LASF875
	.byte	0x5
	.uleb128 0x7c
	.4byte	.LASF876
	.byte	0x5
	.uleb128 0x7d
	.4byte	.LASF877
	.byte	0x5
	.uleb128 0x7e
	.4byte	.LASF878
	.byte	0x5
	.uleb128 0x7f
	.4byte	.LASF879
	.byte	0x5
	.uleb128 0x80
	.4byte	.LASF880
	.byte	0x5
	.uleb128 0x81
	.4byte	.LASF881
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.csr.h.12.6a8b6193f73193013bdb0f434483b5c6,comdat
.Ldebug_macro25:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF882
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF883
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF884
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF885
	.byte	0x5
	.uleb128 0x14
	.4byte	.LASF886
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF887
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF888
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF889
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF890
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF891
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF892
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF893
	.byte	0x5
	.uleb128 0x1c
	.4byte	.LASF894
	.byte	0x5
	.uleb128 0x1d
	.4byte	.LASF895
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF896
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF897
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF898
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF899
	.byte	0x5
	.uleb128 0x22
	.4byte	.LASF900
	.byte	0x5
	.uleb128 0x23
	.4byte	.LASF901
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF902
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF903
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF904
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF905
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF906
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF907
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF908
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF909
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF910
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF911
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF912
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF913
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF914
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF915
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF916
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF917
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF918
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF919
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF920
	.byte	0x5
	.uleb128 0x37
	.4byte	.LASF921
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF922
	.byte	0x5
	.uleb128 0x39
	.4byte	.LASF923
	.byte	0x5
	.uleb128 0x3a
	.4byte	.LASF924
	.byte	0x5
	.uleb128 0x3b
	.4byte	.LASF925
	.byte	0x5
	.uleb128 0x3c
	.4byte	.LASF926
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF927
	.byte	0x5
	.uleb128 0x3e
	.4byte	.LASF928
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF929
	.byte	0x5
	.uleb128 0x40
	.4byte	.LASF930
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF931
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF932
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF933
	.byte	0x5
	.uleb128 0x44
	.4byte	.LASF934
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF935
	.byte	0x5
	.uleb128 0x46
	.4byte	.LASF936
	.byte	0x5
	.uleb128 0x47
	.4byte	.LASF937
	.byte	0x5
	.uleb128 0x48
	.4byte	.LASF938
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF939
	.byte	0x5
	.uleb128 0x4a
	.4byte	.LASF940
	.byte	0x5
	.uleb128 0x4b
	.4byte	.LASF941
	.byte	0x5
	.uleb128 0x4c
	.4byte	.LASF942
	.byte	0x5
	.uleb128 0x4d
	.4byte	.LASF943
	.byte	0x5
	.uleb128 0x4e
	.4byte	.LASF944
	.byte	0x5
	.uleb128 0x4f
	.4byte	.LASF945
	.byte	0x5
	.uleb128 0x50
	.4byte	.LASF946
	.byte	0x5
	.uleb128 0x51
	.4byte	.LASF947
	.byte	0x5
	.uleb128 0x52
	.4byte	.LASF948
	.byte	0x5
	.uleb128 0x53
	.4byte	.LASF949
	.byte	0x5
	.uleb128 0x54
	.4byte	.LASF950
	.byte	0x5
	.uleb128 0x55
	.4byte	.LASF951
	.byte	0x5
	.uleb128 0x56
	.4byte	.LASF952
	.byte	0x5
	.uleb128 0x57
	.4byte	.LASF953
	.byte	0x5
	.uleb128 0x58
	.4byte	.LASF954
	.byte	0x5
	.uleb128 0x59
	.4byte	.LASF955
	.byte	0x5
	.uleb128 0x5a
	.4byte	.LASF956
	.byte	0x5
	.uleb128 0x5b
	.4byte	.LASF957
	.byte	0x5
	.uleb128 0x5c
	.4byte	.LASF958
	.byte	0x5
	.uleb128 0x5d
	.4byte	.LASF959
	.byte	0x5
	.uleb128 0x5e
	.4byte	.LASF960
	.byte	0x5
	.uleb128 0x5f
	.4byte	.LASF961
	.byte	0x5
	.uleb128 0x60
	.4byte	.LASF962
	.byte	0x5
	.uleb128 0x61
	.4byte	.LASF963
	.byte	0x5
	.uleb128 0x62
	.4byte	.LASF964
	.byte	0x5
	.uleb128 0x63
	.4byte	.LASF965
	.byte	0x5
	.uleb128 0x64
	.4byte	.LASF966
	.byte	0x5
	.uleb128 0x65
	.4byte	.LASF967
	.byte	0x5
	.uleb128 0x66
	.4byte	.LASF968
	.byte	0x5
	.uleb128 0x67
	.4byte	.LASF969
	.byte	0x5
	.uleb128 0x68
	.4byte	.LASF970
	.byte	0x5
	.uleb128 0x69
	.4byte	.LASF971
	.byte	0x5
	.uleb128 0x6a
	.4byte	.LASF972
	.byte	0x5
	.uleb128 0x6b
	.4byte	.LASF973
	.byte	0x5
	.uleb128 0x6c
	.4byte	.LASF974
	.byte	0x5
	.uleb128 0x6d
	.4byte	.LASF975
	.byte	0x5
	.uleb128 0x6e
	.4byte	.LASF976
	.byte	0x5
	.uleb128 0x6f
	.4byte	.LASF977
	.byte	0x5
	.uleb128 0x70
	.4byte	.LASF978
	.byte	0x5
	.uleb128 0x71
	.4byte	.LASF979
	.byte	0x5
	.uleb128 0x72
	.4byte	.LASF980
	.byte	0x5
	.uleb128 0x73
	.4byte	.LASF981
	.byte	0x5
	.uleb128 0x74
	.4byte	.LASF982
	.byte	0x5
	.uleb128 0x75
	.4byte	.LASF983
	.byte	0x5
	.uleb128 0x76
	.4byte	.LASF984
	.byte	0x5
	.uleb128 0x77
	.4byte	.LASF985
	.byte	0x5
	.uleb128 0x78
	.4byte	.LASF986
	.byte	0x5
	.uleb128 0x79
	.4byte	.LASF987
	.byte	0x5
	.uleb128 0x7a
	.4byte	.LASF988
	.byte	0x5
	.uleb128 0x7b
	.4byte	.LASF989
	.byte	0x5
	.uleb128 0x7c
	.4byte	.LASF990
	.byte	0x5
	.uleb128 0x7d
	.4byte	.LASF991
	.byte	0x5
	.uleb128 0x7e
	.4byte	.LASF992
	.byte	0x5
	.uleb128 0x7f
	.4byte	.LASF993
	.byte	0x5
	.uleb128 0x80
	.4byte	.LASF994
	.byte	0x5
	.uleb128 0x81
	.4byte	.LASF995
	.byte	0x5
	.uleb128 0x82
	.4byte	.LASF996
	.byte	0x5
	.uleb128 0x83
	.4byte	.LASF997
	.byte	0x5
	.uleb128 0x84
	.4byte	.LASF998
	.byte	0x5
	.uleb128 0x85
	.4byte	.LASF999
	.byte	0x5
	.uleb128 0x86
	.4byte	.LASF1000
	.byte	0x5
	.uleb128 0x87
	.4byte	.LASF1001
	.byte	0x5
	.uleb128 0x88
	.4byte	.LASF1002
	.byte	0x5
	.uleb128 0x89
	.4byte	.LASF1003
	.byte	0x5
	.uleb128 0x8a
	.4byte	.LASF1004
	.byte	0x5
	.uleb128 0x8b
	.4byte	.LASF1005
	.byte	0x5
	.uleb128 0x8c
	.4byte	.LASF1006
	.byte	0x5
	.uleb128 0x8d
	.4byte	.LASF1007
	.byte	0x5
	.uleb128 0x8e
	.4byte	.LASF1008
	.byte	0x5
	.uleb128 0x8f
	.4byte	.LASF1009
	.byte	0x5
	.uleb128 0x90
	.4byte	.LASF1010
	.byte	0x5
	.uleb128 0x91
	.4byte	.LASF1011
	.byte	0x5
	.uleb128 0x92
	.4byte	.LASF1012
	.byte	0x5
	.uleb128 0x93
	.4byte	.LASF1013
	.byte	0x5
	.uleb128 0x94
	.4byte	.LASF1014
	.byte	0x5
	.uleb128 0x95
	.4byte	.LASF1015
	.byte	0x5
	.uleb128 0x96
	.4byte	.LASF1016
	.byte	0x5
	.uleb128 0x97
	.4byte	.LASF1017
	.byte	0x5
	.uleb128 0x98
	.4byte	.LASF1018
	.byte	0x5
	.uleb128 0x99
	.4byte	.LASF1019
	.byte	0x5
	.uleb128 0x9a
	.4byte	.LASF1020
	.byte	0x5
	.uleb128 0x9b
	.4byte	.LASF1021
	.byte	0x5
	.uleb128 0x9c
	.4byte	.LASF1022
	.byte	0x5
	.uleb128 0x9d
	.4byte	.LASF1023
	.byte	0x5
	.uleb128 0x9e
	.4byte	.LASF1024
	.byte	0x5
	.uleb128 0x9f
	.4byte	.LASF1025
	.byte	0x5
	.uleb128 0xa0
	.4byte	.LASF1026
	.byte	0x5
	.uleb128 0xa1
	.4byte	.LASF1027
	.byte	0x5
	.uleb128 0xa2
	.4byte	.LASF1028
	.byte	0x5
	.uleb128 0xa3
	.4byte	.LASF1029
	.byte	0x5
	.uleb128 0xa4
	.4byte	.LASF1030
	.byte	0x5
	.uleb128 0xa5
	.4byte	.LASF1031
	.byte	0x5
	.uleb128 0xa6
	.4byte	.LASF1032
	.byte	0x5
	.uleb128 0xa7
	.4byte	.LASF1033
	.byte	0x5
	.uleb128 0xa8
	.4byte	.LASF1034
	.byte	0x5
	.uleb128 0xa9
	.4byte	.LASF1035
	.byte	0x5
	.uleb128 0xaa
	.4byte	.LASF1036
	.byte	0x5
	.uleb128 0xab
	.4byte	.LASF1037
	.byte	0x5
	.uleb128 0xac
	.4byte	.LASF1038
	.byte	0x5
	.uleb128 0xad
	.4byte	.LASF1039
	.byte	0x5
	.uleb128 0xae
	.4byte	.LASF1040
	.byte	0x5
	.uleb128 0xaf
	.4byte	.LASF1041
	.byte	0x5
	.uleb128 0xb0
	.4byte	.LASF1042
	.byte	0x5
	.uleb128 0xb1
	.4byte	.LASF1043
	.byte	0x5
	.uleb128 0xb2
	.4byte	.LASF1044
	.byte	0x5
	.uleb128 0xb3
	.4byte	.LASF1045
	.byte	0x5
	.uleb128 0xb4
	.4byte	.LASF1046
	.byte	0x5
	.uleb128 0xb5
	.4byte	.LASF1047
	.byte	0x5
	.uleb128 0xb6
	.4byte	.LASF1048
	.byte	0x5
	.uleb128 0xb7
	.4byte	.LASF1049
	.byte	0x5
	.uleb128 0xb8
	.4byte	.LASF1050
	.byte	0x5
	.uleb128 0xb9
	.4byte	.LASF1051
	.byte	0x5
	.uleb128 0xba
	.4byte	.LASF1052
	.byte	0x5
	.uleb128 0xbb
	.4byte	.LASF1053
	.byte	0x5
	.uleb128 0xbc
	.4byte	.LASF1054
	.byte	0x5
	.uleb128 0xbd
	.4byte	.LASF1055
	.byte	0x5
	.uleb128 0xbe
	.4byte	.LASF1056
	.byte	0x5
	.uleb128 0xbf
	.4byte	.LASF1057
	.byte	0x5
	.uleb128 0xc0
	.4byte	.LASF1058
	.byte	0x5
	.uleb128 0xc1
	.4byte	.LASF1059
	.byte	0x5
	.uleb128 0xc2
	.4byte	.LASF1060
	.byte	0x5
	.uleb128 0xc3
	.4byte	.LASF1061
	.byte	0x5
	.uleb128 0xc4
	.4byte	.LASF1062
	.byte	0x5
	.uleb128 0xc5
	.4byte	.LASF1063
	.byte	0x5
	.uleb128 0xc6
	.4byte	.LASF1064
	.byte	0x5
	.uleb128 0xc7
	.4byte	.LASF1065
	.byte	0x5
	.uleb128 0xc8
	.4byte	.LASF1066
	.byte	0x5
	.uleb128 0xc9
	.4byte	.LASF1067
	.byte	0x5
	.uleb128 0xca
	.4byte	.LASF1068
	.byte	0x5
	.uleb128 0xcb
	.4byte	.LASF1069
	.byte	0x5
	.uleb128 0xcc
	.4byte	.LASF1070
	.byte	0x5
	.uleb128 0xcd
	.4byte	.LASF1071
	.byte	0x5
	.uleb128 0xce
	.4byte	.LASF1072
	.byte	0x5
	.uleb128 0xcf
	.4byte	.LASF1073
	.byte	0x5
	.uleb128 0xd0
	.4byte	.LASF1074
	.byte	0x5
	.uleb128 0xd1
	.4byte	.LASF1075
	.byte	0x5
	.uleb128 0xd2
	.4byte	.LASF1076
	.byte	0x5
	.uleb128 0xd3
	.4byte	.LASF1077
	.byte	0x5
	.uleb128 0xd4
	.4byte	.LASF1078
	.byte	0x5
	.uleb128 0xd5
	.4byte	.LASF1079
	.byte	0x5
	.uleb128 0xd6
	.4byte	.LASF1080
	.byte	0x5
	.uleb128 0xd7
	.4byte	.LASF1081
	.byte	0x5
	.uleb128 0xd8
	.4byte	.LASF1082
	.byte	0x5
	.uleb128 0xd9
	.4byte	.LASF1083
	.byte	0x5
	.uleb128 0xda
	.4byte	.LASF1084
	.byte	0x5
	.uleb128 0xdb
	.4byte	.LASF1085
	.byte	0x5
	.uleb128 0xdc
	.4byte	.LASF1086
	.byte	0x5
	.uleb128 0xdd
	.4byte	.LASF1087
	.byte	0x5
	.uleb128 0xde
	.4byte	.LASF1088
	.byte	0x5
	.uleb128 0xdf
	.4byte	.LASF1089
	.byte	0x5
	.uleb128 0xe0
	.4byte	.LASF1090
	.byte	0x5
	.uleb128 0xe1
	.4byte	.LASF1091
	.byte	0x5
	.uleb128 0xe2
	.4byte	.LASF1092
	.byte	0x5
	.uleb128 0xe3
	.4byte	.LASF1093
	.byte	0x5
	.uleb128 0xe4
	.4byte	.LASF1094
	.byte	0x5
	.uleb128 0xe5
	.4byte	.LASF1095
	.byte	0x5
	.uleb128 0xe6
	.4byte	.LASF1096
	.byte	0x5
	.uleb128 0xe7
	.4byte	.LASF1097
	.byte	0x5
	.uleb128 0xe8
	.4byte	.LASF1098
	.byte	0x5
	.uleb128 0xe9
	.4byte	.LASF1099
	.byte	0x5
	.uleb128 0xea
	.4byte	.LASF1100
	.byte	0x5
	.uleb128 0xeb
	.4byte	.LASF1101
	.byte	0x5
	.uleb128 0xec
	.4byte	.LASF1102
	.byte	0x5
	.uleb128 0xed
	.4byte	.LASF1103
	.byte	0x5
	.uleb128 0xee
	.4byte	.LASF1104
	.byte	0x5
	.uleb128 0xef
	.4byte	.LASF1105
	.byte	0x5
	.uleb128 0xf0
	.4byte	.LASF1106
	.byte	0x5
	.uleb128 0xf1
	.4byte	.LASF1107
	.byte	0x5
	.uleb128 0xf2
	.4byte	.LASF1108
	.byte	0x5
	.uleb128 0xf3
	.4byte	.LASF1109
	.byte	0x5
	.uleb128 0xf4
	.4byte	.LASF1110
	.byte	0x5
	.uleb128 0xf5
	.4byte	.LASF1111
	.byte	0x5
	.uleb128 0xf6
	.4byte	.LASF1112
	.byte	0x5
	.uleb128 0xf7
	.4byte	.LASF1113
	.byte	0x5
	.uleb128 0xf8
	.4byte	.LASF1114
	.byte	0x5
	.uleb128 0xf9
	.4byte	.LASF1115
	.byte	0x5
	.uleb128 0xfa
	.4byte	.LASF1116
	.byte	0x5
	.uleb128 0xfb
	.4byte	.LASF1117
	.byte	0x5
	.uleb128 0xfc
	.4byte	.LASF1118
	.byte	0x5
	.uleb128 0xfd
	.4byte	.LASF1119
	.byte	0x5
	.uleb128 0xfe
	.4byte	.LASF1120
	.byte	0x5
	.uleb128 0xff
	.4byte	.LASF1121
	.byte	0x5
	.uleb128 0x100
	.4byte	.LASF1122
	.byte	0x5
	.uleb128 0x101
	.4byte	.LASF1123
	.byte	0x5
	.uleb128 0x102
	.4byte	.LASF1124
	.byte	0x5
	.uleb128 0x103
	.4byte	.LASF1125
	.byte	0x5
	.uleb128 0x104
	.4byte	.LASF1126
	.byte	0x5
	.uleb128 0x105
	.4byte	.LASF1127
	.byte	0x5
	.uleb128 0x106
	.4byte	.LASF1128
	.byte	0x5
	.uleb128 0x107
	.4byte	.LASF1129
	.byte	0x5
	.uleb128 0x108
	.4byte	.LASF1130
	.byte	0x5
	.uleb128 0x109
	.4byte	.LASF1131
	.byte	0x5
	.uleb128 0x10a
	.4byte	.LASF1132
	.byte	0x5
	.uleb128 0x10b
	.4byte	.LASF1133
	.byte	0x5
	.uleb128 0x10c
	.4byte	.LASF1134
	.byte	0x5
	.uleb128 0x10d
	.4byte	.LASF1135
	.byte	0x5
	.uleb128 0x10e
	.4byte	.LASF1136
	.byte	0x5
	.uleb128 0x10f
	.4byte	.LASF1137
	.byte	0x5
	.uleb128 0x110
	.4byte	.LASF1138
	.byte	0x5
	.uleb128 0x111
	.4byte	.LASF1139
	.byte	0x5
	.uleb128 0x112
	.4byte	.LASF1140
	.byte	0x5
	.uleb128 0x113
	.4byte	.LASF1141
	.byte	0x5
	.uleb128 0x114
	.4byte	.LASF1142
	.byte	0x5
	.uleb128 0x115
	.4byte	.LASF1143
	.byte	0x5
	.uleb128 0x116
	.4byte	.LASF1144
	.byte	0x5
	.uleb128 0x117
	.4byte	.LASF1145
	.byte	0x5
	.uleb128 0x118
	.4byte	.LASF1146
	.byte	0x5
	.uleb128 0x119
	.4byte	.LASF1147
	.byte	0x5
	.uleb128 0x11a
	.4byte	.LASF1148
	.byte	0x5
	.uleb128 0x11b
	.4byte	.LASF1149
	.byte	0x5
	.uleb128 0x11c
	.4byte	.LASF1150
	.byte	0x5
	.uleb128 0x11d
	.4byte	.LASF1151
	.byte	0x5
	.uleb128 0x11e
	.4byte	.LASF1152
	.byte	0x5
	.uleb128 0x11f
	.4byte	.LASF1153
	.byte	0x5
	.uleb128 0x120
	.4byte	.LASF1154
	.byte	0x5
	.uleb128 0x121
	.4byte	.LASF1155
	.byte	0x5
	.uleb128 0x122
	.4byte	.LASF1156
	.byte	0x5
	.uleb128 0x123
	.4byte	.LASF1157
	.byte	0x5
	.uleb128 0x124
	.4byte	.LASF1158
	.byte	0x5
	.uleb128 0x125
	.4byte	.LASF1159
	.byte	0x5
	.uleb128 0x126
	.4byte	.LASF1160
	.byte	0x5
	.uleb128 0x127
	.4byte	.LASF1161
	.byte	0x5
	.uleb128 0x128
	.4byte	.LASF1162
	.byte	0x5
	.uleb128 0x129
	.4byte	.LASF1163
	.byte	0x5
	.uleb128 0x12a
	.4byte	.LASF1164
	.byte	0x5
	.uleb128 0x12b
	.4byte	.LASF1165
	.byte	0x5
	.uleb128 0x12c
	.4byte	.LASF1166
	.byte	0x5
	.uleb128 0x12d
	.4byte	.LASF1167
	.byte	0x5
	.uleb128 0x12e
	.4byte	.LASF1168
	.byte	0x5
	.uleb128 0x12f
	.4byte	.LASF1169
	.byte	0x5
	.uleb128 0x130
	.4byte	.LASF1170
	.byte	0x5
	.uleb128 0x131
	.4byte	.LASF1171
	.byte	0x5
	.uleb128 0x132
	.4byte	.LASF1172
	.byte	0x5
	.uleb128 0x133
	.4byte	.LASF1173
	.byte	0x5
	.uleb128 0x134
	.4byte	.LASF1174
	.byte	0x5
	.uleb128 0x135
	.4byte	.LASF1175
	.byte	0x5
	.uleb128 0x136
	.4byte	.LASF1176
	.byte	0x5
	.uleb128 0x137
	.4byte	.LASF1177
	.byte	0x5
	.uleb128 0x138
	.4byte	.LASF1178
	.byte	0x5
	.uleb128 0x139
	.4byte	.LASF1179
	.byte	0x5
	.uleb128 0x13a
	.4byte	.LASF1180
	.byte	0x5
	.uleb128 0x13b
	.4byte	.LASF1181
	.byte	0x5
	.uleb128 0x13c
	.4byte	.LASF1182
	.byte	0x5
	.uleb128 0x13d
	.4byte	.LASF1183
	.byte	0x5
	.uleb128 0x13e
	.4byte	.LASF1184
	.byte	0x5
	.uleb128 0x13f
	.4byte	.LASF1185
	.byte	0x5
	.uleb128 0x140
	.4byte	.LASF1186
	.byte	0x5
	.uleb128 0x141
	.4byte	.LASF1187
	.byte	0x5
	.uleb128 0x142
	.4byte	.LASF1188
	.byte	0x5
	.uleb128 0x143
	.4byte	.LASF1189
	.byte	0x5
	.uleb128 0x144
	.4byte	.LASF1190
	.byte	0x5
	.uleb128 0x145
	.4byte	.LASF1191
	.byte	0x5
	.uleb128 0x146
	.4byte	.LASF1192
	.byte	0x5
	.uleb128 0x147
	.4byte	.LASF1193
	.byte	0x5
	.uleb128 0x148
	.4byte	.LASF1194
	.byte	0x5
	.uleb128 0x149
	.4byte	.LASF1195
	.byte	0x5
	.uleb128 0x14a
	.4byte	.LASF1196
	.byte	0x5
	.uleb128 0x14b
	.4byte	.LASF1197
	.byte	0x5
	.uleb128 0x14c
	.4byte	.LASF1198
	.byte	0x5
	.uleb128 0x14d
	.4byte	.LASF1199
	.byte	0x5
	.uleb128 0x14e
	.4byte	.LASF1200
	.byte	0x5
	.uleb128 0x14f
	.4byte	.LASF1201
	.byte	0x5
	.uleb128 0x150
	.4byte	.LASF1202
	.byte	0x5
	.uleb128 0x151
	.4byte	.LASF1203
	.byte	0x5
	.uleb128 0x152
	.4byte	.LASF1204
	.byte	0x5
	.uleb128 0x153
	.4byte	.LASF1205
	.byte	0x5
	.uleb128 0x154
	.4byte	.LASF1206
	.byte	0x5
	.uleb128 0x155
	.4byte	.LASF1207
	.byte	0x5
	.uleb128 0x156
	.4byte	.LASF1208
	.byte	0x5
	.uleb128 0x157
	.4byte	.LASF1209
	.byte	0x5
	.uleb128 0x158
	.4byte	.LASF1210
	.byte	0x5
	.uleb128 0x159
	.4byte	.LASF1211
	.byte	0x5
	.uleb128 0x15a
	.4byte	.LASF1212
	.byte	0x5
	.uleb128 0x15b
	.4byte	.LASF1213
	.byte	0x5
	.uleb128 0x15c
	.4byte	.LASF1214
	.byte	0x5
	.uleb128 0x15d
	.4byte	.LASF1215
	.byte	0x5
	.uleb128 0x15e
	.4byte	.LASF1216
	.byte	0x5
	.uleb128 0x15f
	.4byte	.LASF1217
	.byte	0x5
	.uleb128 0x160
	.4byte	.LASF1218
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.core_v5.h.150.770dc028d3bf75340a52b83e3c75b7f1,comdat
.Ldebug_macro26:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x96
	.4byte	.LASF1219
	.byte	0x5
	.uleb128 0x9a
	.4byte	.LASF1220
	.byte	0x5
	.uleb128 0x9d
	.4byte	.LASF1221
	.byte	0x5
	.uleb128 0xa1
	.4byte	.LASF1222
	.byte	0x5
	.uleb128 0xa5
	.4byte	.LASF1223
	.byte	0x5
	.uleb128 0xa9
	.4byte	.LASF1224
	.byte	0x5
	.uleb128 0xad
	.4byte	.LASF1225
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.ae350.h.11.9b8ade9cb9a3aa721d571ace2684b93e,comdat
.Ldebug_macro27:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF1226
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF1227
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF1228
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF1229
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF1230
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF1231
	.byte	0x5
	.uleb128 0x1c
	.4byte	.LASF1232
	.byte	0x5
	.uleb128 0x1d
	.4byte	.LASF1233
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF1234
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF1235
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF1236
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF1237
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF1238
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF1239
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF1240
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF1241
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF1242
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF1243
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF1244
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF1245
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF1246
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF1247
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF1248
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF1249
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF1250
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF1251
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF1252
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF1253
	.byte	0x5
	.uleb128 0x37
	.4byte	.LASF1254
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF1255
	.byte	0x5
	.uleb128 0x39
	.4byte	.LASF1256
	.byte	0x5
	.uleb128 0x3a
	.4byte	.LASF1257
	.byte	0x5
	.uleb128 0x3b
	.4byte	.LASF1258
	.byte	0x5
	.uleb128 0x3c
	.4byte	.LASF1259
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF1260
	.byte	0x5
	.uleb128 0x3e
	.4byte	.LASF1261
	.byte	0x5
	.uleb128 0x46
	.4byte	.LASF1262
	.byte	0x5
	.uleb128 0x47
	.4byte	.LASF1263
	.byte	0x5
	.uleb128 0x48
	.4byte	.LASF1264
	.byte	0x5
	.uleb128 0x147
	.4byte	.LASF1265
	.byte	0x5
	.uleb128 0x149
	.4byte	.LASF1266
	.byte	0x5
	.uleb128 0x14a
	.4byte	.LASF1267
	.byte	0x5
	.uleb128 0x14b
	.4byte	.LASF1268
	.byte	0x5
	.uleb128 0x14c
	.4byte	.LASF1269
	.byte	0x5
	.uleb128 0x14e
	.4byte	.LASF1270
	.byte	0x5
	.uleb128 0x14f
	.4byte	.LASF1271
	.byte	0x5
	.uleb128 0x150
	.4byte	.LASF1272
	.byte	0x5
	.uleb128 0x151
	.4byte	.LASF1273
	.byte	0x5
	.uleb128 0x152
	.4byte	.LASF1274
	.byte	0x5
	.uleb128 0x153
	.4byte	.LASF1275
	.byte	0x5
	.uleb128 0x154
	.4byte	.LASF1276
	.byte	0x5
	.uleb128 0x155
	.4byte	.LASF1277
	.byte	0x5
	.uleb128 0x156
	.4byte	.LASF1278
	.byte	0x5
	.uleb128 0x157
	.4byte	.LASF1279
	.byte	0x5
	.uleb128 0x158
	.4byte	.LASF1280
	.byte	0x5
	.uleb128 0x15a
	.4byte	.LASF1281
	.byte	0x5
	.uleb128 0x15b
	.4byte	.LASF1282
	.byte	0x5
	.uleb128 0x15d
	.4byte	.LASF1283
	.byte	0x5
	.uleb128 0x15e
	.4byte	.LASF1284
	.byte	0x5
	.uleb128 0x160
	.4byte	.LASF1285
	.byte	0x5
	.uleb128 0x161
	.4byte	.LASF1286
	.byte	0x5
	.uleb128 0x162
	.4byte	.LASF1287
	.byte	0x5
	.uleb128 0x163
	.4byte	.LASF1288
	.byte	0x5
	.uleb128 0x169
	.4byte	.LASF1289
	.byte	0x5
	.uleb128 0x16a
	.4byte	.LASF1290
	.byte	0x5
	.uleb128 0x16b
	.4byte	.LASF1291
	.byte	0x5
	.uleb128 0x16c
	.4byte	.LASF1292
	.byte	0x5
	.uleb128 0x16d
	.4byte	.LASF1293
	.byte	0x5
	.uleb128 0x16e
	.4byte	.LASF1294
	.byte	0x5
	.uleb128 0x16f
	.4byte	.LASF1295
	.byte	0x5
	.uleb128 0x170
	.4byte	.LASF1296
	.byte	0x5
	.uleb128 0x171
	.4byte	.LASF1297
	.byte	0x5
	.uleb128 0x172
	.4byte	.LASF1298
	.byte	0x5
	.uleb128 0x173
	.4byte	.LASF1299
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.interrupt.h.13.0dcee1073ff8cb36d3a72d2ab9d9af28,comdat
.Ldebug_macro28:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0xd
	.4byte	.LASF1300
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF1301
	.byte	0x5
	.uleb128 0x1d
	.4byte	.LASF1302
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF1303
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.plic.h.11.044d38cfc207efadf096698b73e4934d,comdat
.Ldebug_macro29:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF1304
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF1305
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF1306
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF1307
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF1308
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF1309
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF1310
	.byte	0x5
	.uleb128 0x22
	.4byte	.LASF1311
	.byte	0x5
	.uleb128 0x23
	.4byte	.LASF1312
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF1313
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF1314
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF1315
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF1316
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.interrupt.h.36.00b89799e9184a0d7dc8454548c339a0,comdat
.Ldebug_macro30:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF1317
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF1318
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF1319
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF1320
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF1321
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF1322
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF1323
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF1324
	.byte	0x5
	.uleb128 0x3c
	.4byte	.LASF1325
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF1326
	.byte	0x5
	.uleb128 0x3e
	.4byte	.LASF1327
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF1328
	.byte	0x5
	.uleb128 0x40
	.4byte	.LASF1329
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF1330
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF1331
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF1332
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.platform.h.31.95a025a6ce47078ae8baeaf811f70af5,comdat
.Ldebug_macro31:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF1333
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF1334
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF1335
	.byte	0x5
	.uleb128 0x22
	.4byte	.LASF1336
	.byte	0x5
	.uleb128 0x23
	.4byte	.LASF1337
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF1338
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF1339
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF1340
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF1341
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF1342
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF1343
	.byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF463:
	.string	"__GNUCLIKE___SECTION 1"
.LASF1256:
	.string	"IRQ_GP12_SOURCE 22"
.LASF729:
	.string	"_IOFBF 0"
.LASF248:
	.string	"__FP_FAST_FMAF64 1"
.LASF566:
	.string	"__builtin_is_aligned(x,align) (((__uintptr_t)x & ((align) - 1)) == 0)"
.LASF385:
	.string	"__SVID_VISIBLE 0"
.LASF1186:
	.string	"NDS_MNXTI 0x345"
.LASF323:
	.string	"__riscv 1"
.LASF253:
	.string	"__FLT128_MIN_10_EXP__ (-4931)"
.LASF543:
	.string	"_Null_unspecified "
.LASF728:
	.string	"__SWID 0x2000"
.LASF687:
	.string	"_REENT_GETDATE_ERR_P(ptr) (&((ptr)->_new._reent._getdate_err))"
.LASF303:
	.string	"__CHAR_UNSIGNED__ 1"
.LASF1214:
	.string	"NDS_PMAADDR12 0xbdc"
.LASF1338:
	.string	"DEV_PIT AE350_PIT"
.LASF352:
	.string	"_NEWLIB_VERSION \"4.4.0\""
.LASF343:
	.string	"__ELF__ 1"
.LASF256:
	.string	"__FLT128_DECIMAL_DIG__ 36"
.LASF246:
	.string	"__FLT64_HAS_INFINITY__ 1"
.LASF966:
	.string	"NDS_SCAUSE 0x142"
.LASF1139:
	.string	"NDS_MCACHE_CTL 0x7ca"
.LASF1258:
	.string	"IRQ_GP14_SOURCE 24"
.LASF1094:
	.string	"NDS_MHPMEVENT29 0x33d"
.LASF1303:
	.string	"NDS_PLIC_SW_BASE PLIC_SW_BASE"
.LASF81:
	.string	"__PTRDIFF_MAX__ 0x7fffffff"
.LASF1208:
	.string	"NDS_PMAADDR6 0xbd6"
.LASF399:
	.string	"_LONG_DOUBLE long double"
.LASF1272:
	.string	"UART1_BASE _IO_(0xF0200000)"
.LASF93:
	.string	"__INTMAX_C(c) c ## LL"
.LASF92:
	.string	"__INTMAX_MAX__ 0x7fffffffffffffffLL"
.LASF737:
	.string	"SEEK_SET 0"
.LASF268:
	.string	"__FLT32X_MIN_EXP__ (-1021)"
.LASF829:
	.string	"IRQ_M_TIMER 7"
.LASF785:
	.string	"DRV_UART2_DMA_TX_CH 0"
.LASF650:
	.string	"_REENT_SIGNAL_SIZE 24"
.LASF931:
	.string	"NDS_HPMCOUNTER5H 0xc85"
.LASF705:
	.string	"_Kmax (sizeof (size_t) << 3)"
.LASF16:
	.string	"__ATOMIC_CONSUME 1"
.LASF749:
	.string	"__sgetc_r(__ptr,__p) __sgetc_raw_r(__ptr, __p)"
.LASF483:
	.string	"__CONCAT(x,y) __CONCAT1(x,y)"
.LASF284:
	.string	"__FLT64X_DIG__ 33"
.LASF265:
	.string	"__FLT128_IS_IEC_60559__ 1"
.LASF293:
	.string	"__FLT64X_EPSILON__ 1.92592994438723585305597794258492732e-34F64x"
.LASF462:
	.string	"__GNUCLIKE___TYPEOF 1"
.LASF1133:
	.string	"NDS_MXSTATUS 0x7c4"
.LASF891:
	.string	"NDS_FFLAGS 0x001"
.LASF20:
	.string	"__SIZEOF_LONG_LONG__ 8"
.LASF171:
	.string	"__DBL_MAX_10_EXP__ 308"
.LASF929:
	.string	"NDS_HPMCOUNTER3H 0xc83"
.LASF535:
	.string	"__RCSID_SOURCE(s) struct __hack"
.LASF808:
	.string	"MSTATUS_SPIE 0x00000020"
.LASF997:
	.string	"NDS_PMPADDR7 0x3b7"
.LASF797:
	.string	"DRV_PWM 1"
.LASF528:
	.string	"__strong_reference(sym,aliassym) extern __typeof (sym) aliassym __attribute__ ((__alias__ (#sym)))"
.LASF96:
	.string	"__INTMAX_WIDTH__ 64"
.LASF879:
	.string	"FPPUSH XSTR(FPSTORE)"
.LASF30:
	.string	"__ORDER_PDP_ENDIAN__ 3412"
.LASF36:
	.string	"__SIZE_TYPE__ unsigned int"
.LASF673:
	.string	"_REENT_MP_FREELIST(ptr) ((ptr)->_freelist)"
.LASF181:
	.string	"__FP_FAST_FMA 1"
.LASF161:
	.string	"__FLT_HAS_DENORM__ 1"
.LASF45:
	.string	"__INT8_TYPE__ signed char"
.LASF1372:
	.string	"mext_interrupt"
.LASF1070:
	.string	"NDS_MHPMEVENT5 0x325"
.LASF880:
	.string	"FPPOP XSTR(FPLOAD)"
.LASF222:
	.string	"__FLT32_DECIMAL_DIG__ 9"
.LASF1194:
	.string	"NDS_MINTSEL_JAL 0x7ed"
.LASF976:
	.string	"NDS_MEDELEG 0x302"
.LASF289:
	.string	"__FLT64X_DECIMAL_DIG__ 36"
.LASF918:
	.string	"NDS_HPMCOUNTER24 0xc18"
.LASF4:
	.string	"__STDC_UTF_16__ 1"
.LASF207:
	.string	"__FLT16_MAX__ 6.55040000000000000000000000000000000e+4F16"
.LASF1169:
	.string	"NDS_SHPMEVENT3 0x9e3"
.LASF1360:
	.string	"__tmp"
.LASF1306:
	.string	"NDS_PLIC_FEATURE_VECTORED (1 << 1)"
.LASF121:
	.string	"__UINT8_C(c) c"
.LASF46:
	.string	"__INT16_TYPE__ short int"
.LASF495:
	.string	"__aligned(x) __attribute__((__aligned__(x)))"
.LASF264:
	.string	"__FLT128_HAS_QUIET_NAN__ 1"
.LASF1294:
	.string	"AE350_PIT ((PIT_RegDef *) PIT_BASE )"
.LASF1192:
	.string	"NDS_PUSHMXSTATUS 0x7eb"
.LASF839:
	.string	"TRAP_S_ECALL 9"
.LASF789:
	.string	"DRV_UART2_DMA_RX_REQID 7"
.LASF290:
	.string	"__FLT64X_MAX__ 1.18973149535723176508575932662800702e+4932F64x"
.LASF1251:
	.string	"IRQ_GP7_SOURCE 17"
.LASF1368:
	.string	"claim_addr"
.LASF304:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1"
.LASF189:
	.string	"__DECIMAL_DIG__ 36"
.LASF890:
	.string	"NDS_UIP 0x044"
.LASF568:
	.string	"__builtin_align_down(x,align) ((__typeof__(x))((x)&(~((align)-1))))"
.LASF6:
	.string	"__STDC_HOSTED__ 0"
.LASF1209:
	.string	"NDS_PMAADDR7 0xbd7"
.LASF824:
	.string	"IRQ_S_SOFT 1"
.LASF1284:
	.string	"PLIC_SW_BASE _IO_(0xE6400000)"
.LASF730:
	.string	"_IOLBF 1"
.LASF670:
	.string	"_REENT_MP_RESULT(ptr) ((ptr)->_result)"
.LASF64:
	.string	"__INT_FAST64_TYPE__ long long int"
.LASF700:
	.string	"__ATTRIBUTE_IMPURE_PTR__ "
.LASF676:
	.string	"_REENT_STRTOK_LAST(ptr) ((ptr)->_new._reent._strtok_last)"
.LASF854:
	.string	"MIP_HSIP (1 << IRQ_H_SOFT)"
.LASF422:
	.string	"__SIZE_T__ "
.LASF225:
	.string	"__FLT32_MIN__ 1.17549435082228750796873653722224568e-38F32"
.LASF1068:
	.string	"NDS_MHPMEVENT3 0x323"
.LASF956:
	.string	"NDS_HPMCOUNTER30H 0xc9e"
.LASF607:
	.string	"__need___va_list "
.LASF707:
	.string	"_OFF_T_DECLARED "
.LASF1074:
	.string	"NDS_MHPMEVENT9 0x329"
.LASF3:
	.string	"__STDC_VERSION__ 201710L"
.LASF778:
	.string	"DRV_UART1_DMA_TX_CH 0"
.LASF157:
	.string	"__FLT_NORM_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF1183:
	.string	"NDS_MPPIB 0x7f0"
.LASF231:
	.string	"__FP_FAST_FMAF32 1"
.LASF142:
	.string	"__UINTPTR_MAX__ 0xffffffffU"
.LASF1230:
	.string	"CPUFREQ (800 * MHz)"
.LASF603:
	.string	"__need_wchar_t"
.LASF218:
	.string	"__FLT32_MIN_EXP__ (-125)"
.LASF509:
	.string	"__result_use_check __attribute__((__warn_unused_result__))"
.LASF570:
	.string	"__align_down(x,y) __builtin_align_down(x, y)"
.LASF1330:
	.string	"HAL_INTERRUPT_DISABLE(vector) __nds__plic_disable_interrupt(vector)"
.LASF1051:
	.string	"NDS_MHPMCOUNTER15H 0xb8f"
.LASF1067:
	.string	"NDS_MHPMCOUNTER31H 0xb9f"
.LASF857:
	.string	"MIP_HTIP (1 << IRQ_H_TIMER)"
.LASF875:
	.string	"XSTR(S) STR(S)"
.LASF580:
	.string	"_BSD_PTRDIFF_T_ "
.LASF873:
	.string	"FPREGBYTES (1 << LOG_FPREGBYTES)"
.LASF213:
	.string	"__FLT16_HAS_INFINITY__ 1"
.LASF88:
	.string	"__WCHAR_WIDTH__ 32"
.LASF562:
	.string	"__nosanitizememory "
.LASF1024:
	.string	"NDS_MHPMCOUNTER19 0xb13"
.LASF903:
	.string	"NDS_HPMCOUNTER9 0xc09"
.LASF236:
	.string	"__FLT64_MIN_10_EXP__ (-307)"
.LASF34:
	.string	"__GNUC_EXECUTION_CHARSET_NAME \"UTF-8\""
.LASF314:
	.string	"__GCC_ATOMIC_LONG_LOCK_FREE 2"
.LASF712:
	.string	"__SLBF 0x0001"
.LASF239:
	.string	"__FLT64_DECIMAL_DIG__ 17"
.LASF597:
	.string	"___int_wchar_t_h "
.LASF1121:
	.string	"NDS_MSCOUNTEREN 0x321"
.LASF1205:
	.string	"NDS_PMAADDR3 0xbd3"
.LASF482:
	.string	"__CONCAT1(x,y) x ## y"
.LASF426:
	.string	"_T_SIZE "
.LASF169:
	.string	"__DBL_MIN_10_EXP__ (-307)"
.LASF29:
	.string	"__ORDER_BIG_ENDIAN__ 4321"
.LASF776:
	.string	"DRV_UART1 1"
.LASF948:
	.string	"NDS_HPMCOUNTER22H 0xc96"
.LASF941:
	.string	"NDS_HPMCOUNTER15H 0xc8f"
.LASF721:
	.string	"__SSTR 0x0200"
.LASF1271:
	.string	"SMU_BASE _IO_(0xF0100000)"
.LASF719:
	.string	"__SMBF 0x0080"
.LASF282:
	.string	"__FLT32X_IS_IEC_60559__ 1"
.LASF1111:
	.string	"NDS_HCAUSE 0x242"
.LASF334:
	.string	"__riscv_cmodel_medany 1"
.LASF648:
	.string	"_REENT_EMERGENCY_SIZE 25"
.LASF793:
	.string	"DRV_SPI_DMA_TX_REQID 2"
.LASF90:
	.string	"__PTRDIFF_WIDTH__ 32"
.LASF529:
	.string	"__weak_reference(sym,alias) __asm__(\".weak \" #alias); __asm__(\".equ \" #alias \", \" #sym)"
.LASF221:
	.string	"__FLT32_MAX_10_EXP__ 38"
.LASF136:
	.string	"__UINT_FAST8_MAX__ 0xffffffffU"
.LASF398:
	.string	"_NOTHROW "
.LASF1195:
	.string	"NDS_PUSHMCAUSE 0x7ee"
.LASF456:
	.string	"__has_extension __has_feature"
.LASF440:
	.string	"NULL"
.LASF659:
	.string	"_REENT_CHECK_MP(ptr) "
.LASF56:
	.string	"__INT_LEAST64_TYPE__ long long int"
.LASF288:
	.string	"__FLT64X_MAX_10_EXP__ 4932"
.LASF83:
	.string	"__SCHAR_WIDTH__ 8"
.LASF350:
	.string	"__NEWLIB_H__ 1"
.LASF131:
	.string	"__INT_FAST16_WIDTH__ 32"
.LASF1327:
	.string	"HAL_MEIP_ENABLE() set_csr(NDS_MIE, MIP_MEIP)"
.LASF849:
	.string	"TRAP_S_S_ACC_FAULT 7"
.LASF1095:
	.string	"NDS_MHPMEVENT30 0x33e"
.LASF140:
	.string	"__INTPTR_MAX__ 0x7fffffff"
.LASF1185:
	.string	"NDS_MTVT 0x307"
.LASF390:
	.string	"__RAND_MAX"
.LASF137:
	.string	"__UINT_FAST16_MAX__ 0xffffffffU"
.LASF1267:
	.string	"DLM_BASE 0xA0200000"
.LASF868:
	.string	"LOG_REGBYTES 2"
.LASF1114:
	.string	"NDS_MBASE 0x380"
.LASF212:
	.string	"__FLT16_HAS_DENORM__ 1"
.LASF1130:
	.string	"NDS_MDLMB 0x7c1"
.LASF465:
	.string	"__GNUCLIKE_BUILTIN_CONSTANT_P 1"
.LASF258:
	.string	"__FLT128_NORM_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF541:
	.string	"_Nonnull "
.LASF376:
	.string	"__GNUC_PREREQ(maj,min) ((__GNUC__ << 16) + __GNUC_MINOR__ >= ((maj) << 16) + (min))"
.LASF590:
	.string	"_T_WCHAR "
.LASF791:
	.string	"DRV_SPI_DMA_TX_EN 0"
.LASF811:
	.string	"MSTATUS_SPP 0x00000100"
.LASF366:
	.string	"_WANT_IO_LONG_LONG 1"
.LASF279:
	.string	"__FLT32X_HAS_INFINITY__ 1"
.LASF1009:
	.string	"NDS_MHPMCOUNTER4 0xb04"
.LASF424:
	.string	"_SYS_SIZE_T_H "
.LASF999:
	.string	"NDS_PMPADDR9 0x3b9"
.LASF959:
	.string	"NDS_SEDELEG 0x102"
.LASF667:
	.string	"_REENT_RAND48_SEED(ptr) ((ptr)->_new._reent._r48._seed)"
.LASF57:
	.string	"__UINT_LEAST8_TYPE__ unsigned char"
.LASF1248:
	.string	"IRQ_GP4_SOURCE 14"
.LASF550:
	.string	"__locks_exclusive(...) __lock_annotate(exclusive_lock_function(__VA_ARGS__))"
.LASF1002:
	.string	"NDS_PMPADDR12 0x3bc"
.LASF328:
	.string	"__riscv_muldiv 1"
.LASF1348:
	.string	"long int"
.LASF1080:
	.string	"NDS_MHPMEVENT15 0x32f"
.LASF768:
	.string	"DRV_GPIO 1"
.LASF1098:
	.string	"NDS_TDATA1 0x7a1"
.LASF983:
	.string	"NDS_MCAUSE 0x342"
.LASF1362:
	.string	"except_handler"
.LASF134:
	.string	"__INT_FAST64_MAX__ 0x7fffffffffffffffLL"
.LASF272:
	.string	"__FLT32X_DECIMAL_DIG__ 17"
.LASF1145:
	.string	"NDS_MRANDSTATE 0x7fe"
.LASF1278:
	.string	"I2C_BASE _IO_(0xF0A00000)"
.LASF280:
	.string	"__FLT32X_HAS_QUIET_NAN__ 1"
.LASF846:
	.string	"TRAP_M_STACKUDF 33"
.LASF1261:
	.string	"IRQ_WAKEUP_SOURCE 27"
.LASF876:
	.string	"PUSH XSTR(STORE)"
.LASF417:
	.string	"___int_least16_t_defined 1"
.LASF1171:
	.string	"NDS_SHPMEVENT5 0x9e5"
.LASF1226:
	.string	"__AE350_H__ "
.LASF61:
	.string	"__INT_FAST8_TYPE__ int"
.LASF402:
	.string	"_NOINLINE __attribute__ ((__noinline__))"
.LASF579:
	.string	"_PTRDIFF_T_ "
.LASF421:
	.string	"__size_t__ "
.LASF252:
	.string	"__FLT128_MIN_EXP__ (-16381)"
.LASF867:
	.string	"LWU lw"
.LASF666:
	.string	"_REENT_RAND_NEXT(ptr) ((ptr)->_new._reent._rand_next)"
.LASF95:
	.string	"__UINTMAX_C(c) c ## ULL"
.LASF1332:
	.string	"HAL_INTERRUPT_SET_LEVEL(vector,level) __nds__plic_set_priority(vector, level)"
.LASF33:
	.string	"__SIZEOF_POINTER__ 4"
.LASF53:
	.string	"__INT_LEAST8_TYPE__ signed char"
.LASF1023:
	.string	"NDS_MHPMCOUNTER18 0xb12"
.LASF1246:
	.string	"IRQ_GP2_SOURCE 12"
.LASF307:
	.string	"__GCC_ATOMIC_BOOL_LOCK_FREE 2"
.LASF818:
	.string	"MSTATUS_MXR 0x00080000"
.LASF803:
	.string	"MSTATUS_UIE 0x00000001"
.LASF295:
	.string	"__FLT64X_HAS_DENORM__ 1"
.LASF1181:
	.string	"NDS_SLEEPVALUE 0x811"
.LASF220:
	.string	"__FLT32_MAX_EXP__ 128"
.LASF1324:
	.string	"HAL_MSWI_CLEAR() __nds__plic_sw_claim_interrupt()"
.LASF1153:
	.string	"NDS_MSLIDELEG 0x7d5"
.LASF757:
	.string	"getchar_unlocked() _getchar_unlocked()"
.LASF195:
	.string	"__LDBL_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966L"
.LASF35:
	.string	"__GNUC_WIDE_EXECUTION_CHARSET_NAME \"UTF-32LE\""
.LASF486:
	.string	"__const const"
.LASF433:
	.string	"_SIZE_T_DECLARED "
.LASF815:
	.string	"MSTATUS_XS 0x00018000"
.LASF43:
	.string	"__CHAR32_TYPE__ long unsigned int"
.LASF1325:
	.string	"HAL_MIE_ENABLE() set_csr(NDS_MSTATUS, MSTATUS_MIE)"
.LASF1219:
	.string	"read_csr(reg) ({ unsigned long __tmp; asm volatile (\"csrr %0, \" XSTR(reg) : \"=r\"(__tmp)); __tmp; })"
.LASF1371:
	.string	"GNU C17 13.2.0 -mabi=ilp32d -mcmodel=medany -mtune=rocket -misa-spec=20191213 -march=rv32imafdc_zicsr -g3 -O0 -ffreestanding -flax-vector-conversions -fno-common -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF182:
	.string	"__DBL_IS_IEC_60559__ 1"
.LASF840:
	.string	"TRAP_H_ECALL 10"
.LASF138:
	.string	"__UINT_FAST32_MAX__ 0xffffffffU"
.LASF153:
	.string	"__FLT_MAX_EXP__ 128"
.LASF542:
	.string	"_Nullable "
.LASF935:
	.string	"NDS_HPMCOUNTER9H 0xc89"
.LASF1232:
	.string	"HCLKFREQ (OSCFREQ )"
.LASF738:
	.string	"SEEK_CUR 1"
.LASF1339:
	.string	"DEV_WDT AE350_WDT"
.LASF792:
	.string	"DRV_SPI_DMA_TX_CH 0"
.LASF394:
	.string	"_READ_WRITE_BUFSIZE_TYPE int"
.LASF1144:
	.string	"NDS_MRANDSEQH 0x7fd"
.LASF23:
	.string	"__SIZEOF_DOUBLE__ 8"
.LASF116:
	.string	"__INT_LEAST32_WIDTH__ 32"
.LASF619:
	.string	"_CLOCK_T_ unsigned long"
.LASF620:
	.string	"_TIME_T_ __int_least64_t"
.LASF188:
	.string	"__LDBL_MAX_10_EXP__ 4932"
.LASF945:
	.string	"NDS_HPMCOUNTER19H 0xc93"
.LASF855:
	.string	"MIP_MSIP (1 << IRQ_M_SOFT)"
.LASF1072:
	.string	"NDS_MHPMEVENT7 0x327"
.LASF382:
	.string	"__LARGEFILE_VISIBLE 0"
.LASF1241:
	.string	"IRQ_GPIO_SOURCE 7"
.LASF1280:
	.string	"SPI_BASE _IO_(0xF0F00000)"
.LASF353:
	.string	"__NEWLIB__ 4"
.LASF327:
	.string	"__riscv_div 1"
.LASF1323:
	.string	"HAL_MSWI_PENDING() __nds__plic_sw_set_pending(1)"
.LASF152:
	.string	"__FLT_MIN_10_EXP__ (-37)"
.LASF241:
	.string	"__FLT64_NORM_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF798:
	.string	"DRV_RTC 1"
.LASF870:
	.string	"FPSTORE fsd"
.LASF155:
	.string	"__FLT_DECIMAL_DIG__ 9"
.LASF569:
	.string	"__align_up(x,y) __builtin_align_up(x, y)"
.LASF1116:
	.string	"NDS_MIBASE 0x382"
.LASF1333:
	.string	"DEV_PLMT AE350_PLMT"
.LASF1254:
	.string	"IRQ_GP10_SOURCE 20"
.LASF1344:
	.string	"signed char"
.LASF1243:
	.string	"IRQ_UART2_SOURCE 9"
.LASF908:
	.string	"NDS_HPMCOUNTER14 0xc0e"
.LASF555:
	.string	"__asserts_exclusive(...) __lock_annotate(assert_exclusive_lock(__VA_ARGS__))"
.LASF1172:
	.string	"NDS_SHPMEVENT6 0x9e6"
.LASF889:
	.string	"NDS_UTVAL 0x043"
.LASF227:
	.string	"__FLT32_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F32"
.LASF447:
	.string	"__ptr_t void *"
.LASF681:
	.string	"_REENT_MBRTOWC_STATE(ptr) ((ptr)->_new._reent._mbrtowc_state)"
.LASF669:
	.string	"_REENT_RAND48_ADD(ptr) ((ptr)->_new._reent._r48._add)"
.LASF560:
	.string	"__no_lock_analysis __lock_annotate(no_thread_safety_analysis)"
.LASF163:
	.string	"__FLT_HAS_QUIET_NAN__ 1"
.LASF9:
	.string	"__GNUC_PATCHLEVEL__ 0"
.LASF310:
	.string	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2"
.LASF1152:
	.string	"NDS_MCOUNTEROVF 0x7d4"
.LASF499:
	.string	"__alloc_align(x) __attribute__((__alloc_align__(x)))"
.LASF326:
	.string	"__riscv_mul 1"
.LASF122:
	.string	"__UINT_LEAST16_MAX__ 0xffff"
.LASF554:
	.string	"__unlocks(...) __lock_annotate(unlock_function(__VA_ARGS__))"
.LASF1260:
	.string	"IRQ_STANDBY_SOURCE 26"
.LASF671:
	.string	"_REENT_MP_RESULT_K(ptr) ((ptr)->_result_k)"
.LASF922:
	.string	"NDS_HPMCOUNTER28 0xc1c"
.LASF514:
	.string	"__predict_true(exp) __builtin_expect((exp), 1)"
.LASF744:
	.string	"_stdin_r(x) _REENT_STDIN(x)"
.LASF277:
	.string	"__FLT32X_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F32x"
.LASF1367:
	.string	"hart_id"
.LASF238:
	.string	"__FLT64_MAX_10_EXP__ 308"
.LASF1357:
	.string	"mstatus"
.LASF19:
	.string	"__SIZEOF_LONG__ 4"
.LASF451:
	.string	"__attribute_format_strfmon__(a,b) "
.LASF432:
	.string	"_BSD_SIZE_T_DEFINED_ "
.LASF1147:
	.string	"NDS_MCOUNTERWEN 0x7ce"
.LASF67:
	.string	"__UINT_FAST32_TYPE__ unsigned int"
.LASF714:
	.string	"__SRD 0x0004"
.LASF5:
	.string	"__STDC_UTF_32__ 1"
.LASF22:
	.string	"__SIZEOF_FLOAT__ 4"
.LASF226:
	.string	"__FLT32_EPSILON__ 1.19209289550781250000000000000000000e-7F32"
.LASF472:
	.string	"__GNUCLIKE_MATH_BUILTIN_RELOPS "
.LASF154:
	.string	"__FLT_MAX_10_EXP__ 38"
.LASF443:
	.string	"__PMT(args) args"
.LASF1129:
	.string	"NDS_MILMB 0x7c0"
.LASF790:
	.string	"DRV_SPI 1"
.LASF973:
	.string	"NDS_MHARTID 0xf14"
.LASF285:
	.string	"__FLT64X_MIN_EXP__ (-16381)"
.LASF12:
	.string	"__ATOMIC_SEQ_CST 5"
.LASF748:
	.string	"__sgetc_raw_r(__ptr,__f) (--(__f)->_r < 0 ? __srget_r(__ptr, __f) : (int)(*(__f)->_p++))"
.LASF1174:
	.string	"NDS_MSAVEEPC1 0x7d7"
.LASF434:
	.string	"__DEFINED_size_t "
.LASF1096:
	.string	"NDS_MHPMEVENT31 0x33f"
.LASF937:
	.string	"NDS_HPMCOUNTER11H 0xc8b"
.LASF614:
	.string	"__need_wint_t"
.LASF185:
	.string	"__LDBL_MIN_EXP__ (-16381)"
.LASF532:
	.string	"__sym_default(sym,impl,verid) __asm__(\".symver \" #impl \", \" #sym \"@@\" #verid)"
.LASF1244:
	.string	"IRQ_DMA_SOURCE 10"
.LASF819:
	.string	"MSTATUS_VM 0x1F000000"
.LASF1073:
	.string	"NDS_MHPMEVENT8 0x328"
.LASF718:
	.string	"__SERR 0x0040"
.LASF105:
	.string	"__UINT16_MAX__ 0xffff"
.LASF711:
	.string	"_funlockfile(fp) (((fp)->_flags & __SSTR) ? 0 : __lock_release_recursive((fp)->_lock))"
.LASF1245:
	.string	"IRQ_GP1_SOURCE 11"
.LASF1253:
	.string	"IRQ_GP9_SOURCE 19"
.LASF1282:
	.string	"AHB_EXT_BASE _IO_(0xE8000000)"
.LASF192:
	.string	"__LDBL_NORM_MAX__ 1.18973149535723176508575932662800702e+4932L"
.LASF73:
	.string	"__SHRT_MAX__ 0x7fff"
.LASF834:
	.string	"IRQ_HOST 13"
.LASF360:
	.string	"_HAVE_LONG_DOUBLE 1"
.LASF961:
	.string	"NDS_SIE 0x104"
.LASF1065:
	.string	"NDS_MHPMCOUNTER29H 0xb9d"
.LASF1100:
	.string	"NDS_TDATA3 0x7a3"
.LASF187:
	.string	"__LDBL_MAX_EXP__ 16384"
.LASF706:
	.string	"__FILE_defined "
.LASF21:
	.string	"__SIZEOF_SHORT__ 2"
.LASF481:
	.string	"__P(protos) protos"
.LASF651:
	.string	"_REENT_INIT_RESERVED_0 "
.LASF909:
	.string	"NDS_HPMCOUNTER15 0xc0f"
.LASF861:
	.string	"MIP_MEIP (1 << IRQ_M_EXT)"
.LASF1363:
	.string	"cause"
.LASF886:
	.string	"NDS_USCRATCH 0x040"
.LASF375:
	.string	"_SYS_FEATURES_H "
.LASF505:
	.string	"__noinline __attribute__ ((__noinline__))"
.LASF1239:
	.string	"IRQ_SPI_SOURCE 5"
.LASF471:
	.string	"__GNUCLIKE_BUILTIN_NEXT_ARG 1"
.LASF1207:
	.string	"NDS_PMAADDR5 0xbd5"
.LASF259:
	.string	"__FLT128_MIN__ 3.36210314311209350626267781732175260e-4932F128"
.LASF977:
	.string	"NDS_MIDELEG 0x303"
.LASF319:
	.string	"__PRAGMA_REDEFINE_EXTNAME 1"
.LASF736:
	.string	"L_tmpnam FILENAME_MAX"
.LASF821:
	.string	"MSTATUS64_SD 0x8000000000000000"
.LASF1120:
	.string	"NDS_MUCOUNTEREN 0x320"
.LASF1354:
	.string	"char"
.LASF916:
	.string	"NDS_HPMCOUNTER22 0xc16"
.LASF305:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1"
.LASF1292:
	.string	"AE350_UART1 ((UART_RegDef *) UART1_BASE )"
.LASF518:
	.string	"__hidden __attribute__((__visibility__(\"hidden\")))"
.LASF1202:
	.string	"NDS_PMAADDR0 0xbd0"
.LASF986:
	.string	"NDS_PMPCFG0 0x3a0"
.LASF68:
	.string	"__UINT_FAST64_TYPE__ long long unsigned int"
.LASF1213:
	.string	"NDS_PMAADDR11 0xbdb"
.LASF1283:
	.string	"PLIC_BASE _IO_(0xE4000000)"
.LASF613:
	.string	"_WINT_T "
.LASF630:
	.string	"__lock_close(lock) ((void) 0)"
.LASF18:
	.string	"__SIZEOF_INT__ 4"
.LASF405:
	.string	"__need_size_t "
.LASF841:
	.string	"TRAP_M_ECALL 11"
.LASF703:
	.string	"_REENT_IS_NULL(_ptr) ((_ptr) == NULL)"
.LASF847:
	.string	"TRAP_S_I_ACC_FAULT 1"
.LASF1011:
	.string	"NDS_MHPMCOUNTER6 0xb06"
.LASF232:
	.string	"__FLT32_IS_IEC_60559__ 1"
.LASF27:
	.string	"__BIGGEST_ALIGNMENT__ 16"
.LASF10:
	.string	"__VERSION__ \"13.2.0\""
.LASF331:
	.string	"__riscv_fdiv 1"
.LASF1154:
	.string	"NDS_MCCTLBEGINADDR 0x7cb"
.LASF205:
	.string	"__FLT16_MAX_10_EXP__ 4"
.LASF1291:
	.string	"AE350_SMU ((SMU_RegDef *) SMU_BASE )"
.LASF1143:
	.string	"NDS_MRANDSEQ 0x7fc"
.LASF115:
	.string	"__INT32_C(c) c ## L"
.LASF652:
	.string	"_REENT_INIT_RESERVED_1 "
.LASF1038:
	.string	"NDS_MINSTRETH 0xb82"
.LASF1025:
	.string	"NDS_MHPMCOUNTER20 0xb14"
.LASF1225:
	.string	"write_fcsr(val) ({ asm volatile (\"fscsr %0\" :: \"rK\"(val)); })"
.LASF493:
	.string	"__used __attribute__((__used__))"
.LASF1212:
	.string	"NDS_PMAADDR10 0xbda"
.LASF1058:
	.string	"NDS_MHPMCOUNTER22H 0xb96"
.LASF104:
	.string	"__UINT8_MAX__ 0xff"
.LASF413:
	.string	"___int16_t_defined 1"
.LASF159:
	.string	"__FLT_EPSILON__ 1.19209289550781250000000000000000000e-7F"
.LASF702:
	.string	"_REENT _impure_ptr"
.LASF457:
	.string	"__has_feature(x) 0"
.LASF881:
	.string	"FPREGSIZE XSTR(FPREGBYTES)"
.LASF517:
	.string	"__exported __attribute__((__visibility__(\"default\")))"
.LASF536:
	.string	"__SCCSID(s) struct __hack"
.LASF178:
	.string	"__DBL_HAS_DENORM__ 1"
.LASF1374:
	.string	"source"
.LASF927:
	.string	"NDS_TIMEH 0xc81"
.LASF475:
	.string	"__CC_SUPPORTS___INLINE 1"
.LASF361:
	.string	"_MB_LEN_MAX 1"
.LASF812:
	.string	"MSTATUS_HPP 0x00000600"
.LASF892:
	.string	"NDS_FRM 0x002"
.LASF693:
	.string	"_REENT_INC(_ptr) ((_ptr)->_inc)"
.LASF1148:
	.string	"NDS_MCOUNTERINTEN 0x7cf"
.LASF696:
	.string	"_REENT_STDIN(_ptr) ((_ptr)->_stdin)"
.LASF1040:
	.string	"NDS_MHPMCOUNTER4H 0xb84"
.LASF71:
	.string	"__GXX_ABI_VERSION 1018"
.LASF111:
	.string	"__INT_LEAST16_MAX__ 0x7fff"
.LASF1055:
	.string	"NDS_MHPMCOUNTER19H 0xb93"
.LASF165:
	.string	"__FLT_IS_IEC_60559__ 1"
.LASF254:
	.string	"__FLT128_MAX_EXP__ 16384"
.LASF946:
	.string	"NDS_HPMCOUNTER20H 0xc94"
.LASF510:
	.string	"__returns_twice __attribute__((__returns_twice__))"
.LASF558:
	.string	"__requires_shared(...) __lock_annotate(shared_locks_required(__VA_ARGS__))"
.LASF397:
	.string	"_END_STD_C "
.LASF1091:
	.string	"NDS_MHPMEVENT26 0x33a"
.LASF726:
	.string	"__SL64 0x8000"
.LASF125:
	.string	"__UINT32_C(c) c ## UL"
.LASF716:
	.string	"__SRW 0x0010"
.LASF782:
	.string	"DRV_UART1_DMA_RX_REQID 5"
.LASF720:
	.string	"__SAPP 0x0100"
.LASF653:
	.string	"_REENT_INIT_RESERVED_2 "
.LASF485:
	.string	"__XSTRING(x) __STRING(x)"
.LASF450:
	.string	"__attribute_pure__ "
.LASF206:
	.string	"__FLT16_DECIMAL_DIG__ 5"
.LASF754:
	.string	"feof(p) __sfeof(p)"
.LASF1231:
	.string	"RTCFREQ (32768 )"
.LASF766:
	.string	"BUILD_XIP 3"
.LASF801:
	.string	"__CORE_V5_H__ "
.LASF984:
	.string	"NDS_MTVAL 0x343"
.LASF802:
	.string	"SUPPORT_PFT_ARCH 1"
.LASF1329:
	.string	"HAL_INTERRUPT_ENABLE(vector) __nds__plic_enable_interrupt(vector)"
.LASF466:
	.string	"__GNUCLIKE_BUILTIN_VARARGS 1"
.LASF878:
	.string	"REGSIZE XSTR(REGBYTES)"
.LASF665:
	.string	"_REENT_SIGNGAM(ptr) ((ptr)->_new._reent._gamma_signgam)"
.LASF312:
	.string	"__GCC_ATOMIC_SHORT_LOCK_FREE 2"
.LASF1007:
	.string	"NDS_MINSTRET 0xb02"
.LASF1077:
	.string	"NDS_MHPMEVENT12 0x32c"
.LASF1117:
	.string	"NDS_MIBOUND 0x383"
.LASF1112:
	.string	"NDS_HBADADDR 0x243"
.LASF836:
	.string	"TRAP_M_L_ACC_FAULT 5"
.LASF1160:
	.string	"NDS_SLIP 0x9c5"
.LASF401:
	.string	"_ELIDABLE_INLINE static __inline__"
.LASF1162:
	.string	"NDS_SCCTLDATA 0x9cd"
.LASF893:
	.string	"NDS_FCSR 0x003"
.LASF383:
	.string	"__MISC_VISIBLE 0"
.LASF611:
	.string	"_SYS__TYPES_H "
.LASF1062:
	.string	"NDS_MHPMCOUNTER26H 0xb9a"
.LASF1285:
	.string	"BMC_BASE _IO_(0xC0000000)"
.LASF826:
	.string	"IRQ_M_SOFT 3"
.LASF78:
	.string	"__WCHAR_MIN__ (-__WCHAR_MAX__ - 1)"
.LASF928:
	.string	"NDS_INSTRETH 0xc82"
.LASF837:
	.string	"TRAP_M_S_ACC_FAULT 7"
.LASF230:
	.string	"__FLT32_HAS_QUIET_NAN__ 1"
.LASF1099:
	.string	"NDS_TDATA2 0x7a2"
.LASF374:
	.string	"__OBSOLETE_MATH __OBSOLETE_MATH_DEFAULT"
.LASF926:
	.string	"NDS_CYCLEH 0xc80"
.LASF197:
	.string	"__LDBL_HAS_INFINITY__ 1"
.LASF1315:
	.string	"PLIC_CLAIM_OFFSET (0x00200004UL)"
.LASF832:
	.string	"IRQ_M_EXT 11"
.LASF339:
	.string	"__riscv_f 2002000"
.LASF609:
	.string	"__GNUC_VA_LIST "
.LASF865:
	.string	"STORE sw"
.LASF1155:
	.string	"NDS_MCCTLCOMMAND 0x7cc"
.LASF184:
	.string	"__LDBL_DIG__ 33"
.LASF833:
	.string	"IRQ_COP 12"
.LASF827:
	.string	"IRQ_S_TIMER 5"
.LASF1277:
	.string	"GPIO_BASE _IO_(0xF0700000)"
.LASF1201:
	.string	"NDS_PMACFG3 0xbc3"
.LASF1373:
	.string	"printf"
.LASF460:
	.string	"__GNUCLIKE_ASM 3"
.LASF98:
	.string	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)"
.LASF1084:
	.string	"NDS_MHPMEVENT19 0x333"
.LASF500:
	.string	"__generic(expr,t,yes,no) _Generic(expr, t: yes, default: no)"
.LASF1227:
	.string	"KHz 1000"
.LASF593:
	.string	"_BSD_WCHAR_T_ "
.LASF1224:
	.string	"read_fcsr() ({ unsigned long __tmp; asm volatile (\"frcsr %0\" : \"=r\"(__tmp)); __tmp; })"
.LASF1263:
	.string	"__O volatile"
.LASF561:
	.string	"__nosanitizeaddress "
.LASF296:
	.string	"__FLT64X_HAS_INFINITY__ 1"
.LASF164:
	.string	"__FP_FAST_FMAF 1"
.LASF911:
	.string	"NDS_HPMCOUNTER17 0xc11"
.LASF173:
	.string	"__DBL_MAX__ ((double)1.79769313486231570814527423731704357e+308L)"
.LASF990:
	.string	"NDS_PMPADDR0 0x3b0"
.LASF1359:
	.string	"fcsr"
.LASF701:
	.string	"__ATTRIBUTE_IMPURE_DATA__ "
.LASF1305:
	.string	"NDS_PLIC_FEATURE_PREEMPT (1 << 0)"
.LASF662:
	.string	"_REENT_CHECK_EMERGENCY(ptr) "
.LASF113:
	.string	"__INT_LEAST16_WIDTH__ 16"
.LASF147:
	.string	"__DEC_EVAL_METHOD__ 2"
.LASF1136:
	.string	"NDS_MSP_BOUND 0x7c7"
.LASF988:
	.string	"NDS_PMPCFG2 0x3a2"
.LASF1215:
	.string	"NDS_PMAADDR13 0xbdd"
.LASF981:
	.string	"NDS_MSCRATCH 0x340"
.LASF512:
	.string	"__restrict restrict"
.LASF378:
	.string	"__ATFILE_VISIBLE 0"
.LASF1047:
	.string	"NDS_MHPMCOUNTER11H 0xb8b"
.LASF441:
	.string	"NULL ((void *)0)"
.LASF1020:
	.string	"NDS_MHPMCOUNTER15 0xb0f"
.LASF1107:
	.string	"NDS_HIE 0x204"
.LASF695:
	.string	"_REENT_SIG_FUNC(_ptr) ((_ptr)->_sig_func)"
.LASF915:
	.string	"NDS_HPMCOUNTER21 0xc15"
.LASF418:
	.string	"___int_least32_t_defined 1"
.LASF786:
	.string	"DRV_UART2_DMA_TX_REQID 6"
.LASF1081:
	.string	"NDS_MHPMEVENT16 0x330"
.LASF910:
	.string	"NDS_HPMCOUNTER16 0xc10"
.LASF1027:
	.string	"NDS_MHPMCOUNTER22 0xb16"
.LASF442:
	.string	"__need_NULL"
.LASF727:
	.string	"__SNLK 0x0001"
.LASF300:
	.string	"__USER_LABEL_PREFIX__ "
.LASF107:
	.string	"__UINT64_MAX__ 0xffffffffffffffffULL"
.LASF1311:
	.string	"PLIC_ENABLE_OFFSET (0x00002000UL)"
.LASF943:
	.string	"NDS_HPMCOUNTER17H 0xc91"
.LASF106:
	.string	"__UINT32_MAX__ 0xffffffffUL"
.LASF1210:
	.string	"NDS_PMAADDR8 0xbd8"
.LASF678:
	.string	"_REENT_MBTOWC_STATE(ptr) ((ptr)->_new._reent._mbtowc_state)"
.LASF677:
	.string	"_REENT_MBLEN_STATE(ptr) ((ptr)->_new._reent._mblen_state)"
.LASF1295:
	.string	"AE350_WDT ((WDT_RegDef *) WDT_BASE )"
.LASF108:
	.string	"__INT_LEAST8_MAX__ 0x7f"
.LASF317:
	.string	"__GCC_ATOMIC_POINTER_LOCK_FREE 2"
.LASF480:
	.string	"__CC_SUPPORTS_DYNAMIC_ARRAY_INIT 1"
.LASF13:
	.string	"__ATOMIC_ACQUIRE 2"
.LASF1006:
	.string	"NDS_MCYCLE 0xb00"
.LASF1345:
	.string	"unsigned char"
.LASF617:
	.string	"unsigned signed"
.LASF1010:
	.string	"NDS_MHPMCOUNTER5 0xb05"
.LASF52:
	.string	"__UINT64_TYPE__ long long unsigned int"
.LASF1265:
	.string	"_IO_(addr) (addr)"
.LASF1039:
	.string	"NDS_MHPMCOUNTER3H 0xb83"
.LASF270:
	.string	"__FLT32X_MAX_EXP__ 1024"
.LASF453:
	.string	"__bounded "
.LASF344:
	.string	"USE_M_TIME 1"
.LASF287:
	.string	"__FLT64X_MAX_EXP__ 16384"
.LASF124:
	.string	"__UINT_LEAST32_MAX__ 0xffffffffUL"
.LASF734:
	.string	"FOPEN_MAX 20"
.LASF632:
	.string	"__lock_acquire(lock) ((void) 0)"
.LASF496:
	.string	"__section(x) __attribute__((__section__(x)))"
.LASF1229:
	.string	"OSCFREQ (100 * MHz)"
.LASF119:
	.string	"__INT_LEAST64_WIDTH__ 64"
.LASF162:
	.string	"__FLT_HAS_INFINITY__ 1"
.LASF1012:
	.string	"NDS_MHPMCOUNTER7 0xb07"
.LASF852:
	.string	"TRAP_S_S_PAGE_FAULT 15"
.LASF100:
	.string	"__INT8_MAX__ 0x7f"
.LASF755:
	.string	"ferror(p) __sferror(p)"
.LASF1218:
	.string	"NDS_MMSC_CFG2 0xfc3"
.LASF62:
	.string	"__INT_FAST16_TYPE__ int"
.LASF318:
	.string	"__GCC_HAVE_DWARF2_CFI_ASM 1"
.LASF412:
	.string	"___int8_t_defined 1"
.LASF962:
	.string	"NDS_STVEC 0x105"
.LASF1349:
	.string	"long unsigned int"
.LASF66:
	.string	"__UINT_FAST16_TYPE__ unsigned int"
.LASF519:
	.string	"__offsetof(type,field) offsetof(type, field)"
.LASF805:
	.string	"MSTATUS_HIE 0x00000004"
.LASF144:
	.string	"__GCC_IEC_559_COMPLEX 2"
.LASF50:
	.string	"__UINT16_TYPE__ short unsigned int"
.LASF1167:
	.string	"NDS_SMISC_CTL 0x9d0"
.LASF769:
	.string	"DRV_I2C 1"
.LASF190:
	.string	"__LDBL_DECIMAL_DIG__ 36"
.LASF132:
	.string	"__INT_FAST32_MAX__ 0x7fffffff"
.LASF286:
	.string	"__FLT64X_MIN_10_EXP__ (-4931)"
.LASF896:
	.string	"NDS_INSTRET 0xc02"
.LASF982:
	.string	"NDS_MEPC 0x341"
.LASF1235:
	.string	"IRQ_RTCPERIOD_SOURCE 1"
.LASF1001:
	.string	"NDS_PMPADDR11 0x3bb"
.LASF425:
	.string	"_T_SIZE_ "
.LASF146:
	.string	"__FLT_EVAL_METHOD_TS_18661_3__ 0"
.LASF777:
	.string	"DRV_UART1_DMA_TX_EN 0"
.LASF1150:
	.string	"NDS_MCOUNTERMASK_S 0x7d2"
.LASF629:
	.string	"__lock_init_recursive(lock) ((void) 0)"
.LASF743:
	.string	"stderr _REENT_STDERR(_REENT)"
.LASF1158:
	.string	"NDS_UCCTLCOMMAND 0x80c"
.LASF65:
	.string	"__UINT_FAST8_TYPE__ unsigned int"
.LASF210:
	.string	"__FLT16_EPSILON__ 9.76562500000000000000000000000000000e-4F16"
.LASF967:
	.string	"NDS_STVAL 0x143"
.LASF1141:
	.string	"NDS_DEXC2DBG 0x7e0"
.LASF1028:
	.string	"NDS_MHPMCOUNTER23 0xb17"
.LASF102:
	.string	"__INT32_MAX__ 0x7fffffffL"
.LASF395:
	.string	"_USE_GDTOA "
.LASF501:
	.string	"__min_size(x) static (x)"
.LASF622:
	.string	"_TIMER_T_ unsigned long"
.LASF1220:
	.string	"write_csr(reg,val) ({ asm volatile (\"csrw \" XSTR(reg) \", %0\" :: \"rK\"(val)); })"
.LASF117:
	.string	"__INT_LEAST64_MAX__ 0x7fffffffffffffffLL"
.LASF516:
	.string	"__null_sentinel __attribute__((__sentinel__))"
.LASF1250:
	.string	"IRQ_GP6_SOURCE 16"
.LASF406:
	.string	"__need_NULL "
.LASF1123:
	.string	"NDS_UITB 0x800"
.LASF1236:
	.string	"IRQ_RTCALARM_SOURCE 2"
.LASF215:
	.string	"__FLT16_IS_IEC_60559__ 1"
.LASF216:
	.string	"__FLT32_MANT_DIG__ 24"
.LASF1163:
	.string	"NDS_SCOUNTERINTEN 0x9cf"
.LASF987:
	.string	"NDS_PMPCFG1 0x3a1"
.LASF605:
	.string	"offsetof(TYPE,MEMBER) __builtin_offsetof (TYPE, MEMBER)"
.LASF127:
	.string	"__UINT64_C(c) c ## ULL"
.LASF60:
	.string	"__UINT_LEAST64_TYPE__ long long unsigned int"
.LASF1134:
	.string	"NDS_MPFT_CTL 0x7c5"
.LASF1119:
	.string	"NDS_MDBOUND 0x385"
.LASF283:
	.string	"__FLT64X_MANT_DIG__ 113"
.LASF491:
	.string	"__pure2 __attribute__((__const__))"
.LASF309:
	.string	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2"
.LASF544:
	.string	"__NULLABILITY_PRAGMA_PUSH "
.LASF1105:
	.string	"NDS_HEDELEG 0x202"
.LASF170:
	.string	"__DBL_MAX_EXP__ 1024"
.LASF1052:
	.string	"NDS_MHPMCOUNTER16H 0xb90"
.LASF14:
	.string	"__ATOMIC_RELEASE 3"
.LASF1046:
	.string	"NDS_MHPMCOUNTER10H 0xb8a"
.LASF278:
	.string	"__FLT32X_HAS_DENORM__ 1"
.LASF149:
	.string	"__FLT_MANT_DIG__ 24"
.LASF642:
	.string	"_RAND48_SEED_1 (0xabcd)"
.LASF63:
	.string	"__INT_FAST32_TYPE__ int"
.LASF1266:
	.string	"ILM_BASE 0xA0000000"
.LASF767:
	.string	"CFG_BURN "
.LASF831:
	.string	"IRQ_H_EXT 10"
.LASF627:
	.string	"__LOCK_INIT_RECURSIVE(class,lock) static int lock = 0;"
.LASF688:
	.string	"_REENT_CLEANUP(_ptr) ((_ptr)->__cleanup)"
.LASF477:
	.string	"__CC_SUPPORTS___FUNC__ 1"
.LASF913:
	.string	"NDS_HPMCOUNTER19 0xc13"
.LASF461:
	.string	"__GNUCLIKE_MATH_BUILTIN_CONSTANTS "
.LASF242:
	.string	"__FLT64_MIN__ 2.22507385850720138309023271733240406e-308F64"
.LASF576:
	.string	"_T_PTRDIFF_ "
.LASF974:
	.string	"NDS_MSTATUS 0x300"
.LASF1343:
	.string	"DEV_SPI AE350_SPI"
.LASF103:
	.string	"__INT64_MAX__ 0x7fffffffffffffffLL"
.LASF1247:
	.string	"IRQ_GP3_SOURCE 13"
.LASF203:
	.string	"__FLT16_MIN_10_EXP__ (-4)"
.LASF947:
	.string	"NDS_HPMCOUNTER21H 0xc95"
.LASF940:
	.string	"NDS_HPMCOUNTER14H 0xc8e"
.LASF269:
	.string	"__FLT32X_MIN_10_EXP__ (-307)"
.LASF574:
	.string	"_ANSI_STDDEF_H "
.LASF664:
	.string	"_REENT_CHECK_SIGNAL_BUF(ptr) "
.LASF810:
	.string	"MSTATUS_MPIE 0x00000080"
.LASF1309:
	.string	"PLIC_PENDING_OFFSET (0x00001000UL)"
.LASF796:
	.string	"DRV_SPI_DMA_RX_REQID 3"
.LASF567:
	.string	"__builtin_align_up(x,align) ((__typeof__(x))(((__uintptr_t)(x)+((align)-1))&(~((align)-1))))"
.LASF640:
	.string	"_REENT_SMALL_CHECK_INIT(ptr) "
.LASF1288:
	.string	"APBBRG_BASE _IO_(0xF0000000)"
.LASF7:
	.string	"__GNUC__ 13"
.LASF1223:
	.string	"clear_csr(reg,bit) ({ unsigned long __tmp; asm volatile (\"csrrc %0, \" XSTR(reg) \", %1\" : \"=r\"(__tmp) : \"rK\"(bit)); __tmp; })"
.LASF262:
	.string	"__FLT128_HAS_DENORM__ 1"
.LASF1184:
	.string	"NDS_MFIOB 0x7f1"
.LASF851:
	.string	"TRAP_S_L_PAGE_FAULT 13"
.LASF86:
	.string	"__LONG_WIDTH__ 32"
.LASF368:
	.string	"_WANT_USE_GDTOA 1"
.LASF589:
	.string	"_T_WCHAR_ "
.LASF1176:
	.string	"NDS_MSAVEEPC2 0x7d9"
.LASF530:
	.string	"__warn_references(sym,msg) __asm__(\".section .gnu.warning.\" #sym); __asm__(\".asciz \\\"\" msg \"\\\"\"); __asm__(\".previous\")"
.LASF745:
	.string	"_stdout_r(x) _REENT_STDOUT(x)"
.LASF449:
	.string	"__attribute_malloc__ "
.LASF859:
	.string	"MIP_SEIP (1 << IRQ_S_EXT)"
.LASF271:
	.string	"__FLT32X_MAX_10_EXP__ 308"
.LASF771:
	.string	"DRV_I2C_DMA_TX_CH 2"
.LASF351:
	.string	"_NEWLIB_VERSION_H__ 1"
.LASF335:
	.string	"__riscv_arch_test 1"
.LASF439:
	.string	"__need_size_t"
.LASF1050:
	.string	"NDS_MHPMCOUNTER14H 0xb8e"
.LASF428:
	.string	"_SIZE_T_ "
.LASF1135:
	.string	"NDS_MHSP_CTL 0x7c6"
.LASF1336:
	.string	"DEV_UART1 AE350_UART1"
.LASF148:
	.string	"__FLT_RADIX__ 2"
.LASF633:
	.string	"__lock_acquire_recursive(lock) ((void) 0)"
.LASF668:
	.string	"_REENT_RAND48_MULT(ptr) ((ptr)->_new._reent._r48._mult)"
.LASF877:
	.string	"POP XSTR(LOAD)"
.LASF759:
	.string	"L_ctermid 16"
.LASF657:
	.ascii	"_REENT_INIT_PTR_ZEROED(var) { (var)->_stdin = &__sf[0]; (var"
	.ascii	")->_stdout = &__sf[1]; (var)->_stderr = &__sf[2]; (var)->_ne"
	.ascii	"w._reent._rand_next = 1; (var)->_new._reent._r48._seed[0] = "
	.ascii	"_RAND48_SEED_0; (var)->_new._reent._r48._seed[1] = _RAND48_S"
	.string	"EED_1; (var)->_new._reent._r48._seed[2] = _RAND48_SEED_2; (var)->_new._reent._r48._mult[0] = _RAND48_MULT_0; (var)->_new._reent._r48._mult[1] = _RAND48_MULT_1; (var)->_new._reent._r48._mult[2] = _RAND48_MULT_2; (var)->_new._reent._r48._add = _RAND48_ADD; }"
.LASF586:
	.string	"__wchar_t__ "
.LASF198:
	.string	"__LDBL_HAS_QUIET_NAN__ 1"
.LASF971:
	.string	"NDS_MARCHID 0xf12"
.LASF1369:
	.string	"__nds__plic_sw_complete_interrupt"
.LASF871:
	.string	"FPLOAD fld"
.LASF87:
	.string	"__LONG_LONG_WIDTH__ 64"
.LASF838:
	.string	"TRAP_U_ECALL 8"
.LASF575:
	.string	"_PTRDIFF_T "
.LASF925:
	.string	"NDS_HPMCOUNTER31 0xc1f"
.LASF1191:
	.string	"NDS_MSAVEDCAUSE2 0x7dc"
.LASF1304:
	.string	"__PLIC_H__ "
.LASF336:
	.string	"__riscv_i 2001000"
.LASF920:
	.string	"NDS_HPMCOUNTER26 0xc1a"
.LASF1289:
	.string	"AE350_PLMT ((PLMT_RegDef *) PLMT_BASE )"
.LASF661:
	.string	"_REENT_CHECK_ASCTIME_BUF(ptr) "
.LASF141:
	.string	"__INTPTR_WIDTH__ 32"
.LASF315:
	.string	"__GCC_ATOMIC_LLONG_LOCK_FREE 1"
.LASF975:
	.string	"NDS_MISA 0x301"
.LASF1189:
	.string	"NDS_MSCRATCHCSWL 0x349"
.LASF694:
	.string	"_REENT_LOCALE(_ptr) ((_ptr)->_locale)"
.LASF1035:
	.string	"NDS_MHPMCOUNTER30 0xb1e"
.LASF237:
	.string	"__FLT64_MAX_EXP__ 1024"
.LASF924:
	.string	"NDS_HPMCOUNTER30 0xc1e"
.LASF591:
	.string	"__WCHAR_T "
.LASF370:
	.string	"__SYS_CONFIG_H__ "
.LASF739:
	.string	"SEEK_END 2"
.LASF655:
	.string	"_REENT_INIT_RESERVED_8 "
.LASF414:
	.string	"___int32_t_defined 1"
.LASF498:
	.string	"__alloc_size2(n,x) __attribute__((__alloc_size__(n, x)))"
.LASF358:
	.string	"_HAVE_CC_INHIBIT_LOOP_TO_LIBCALL 1"
.LASF151:
	.string	"__FLT_MIN_EXP__ (-125)"
.LASF89:
	.string	"__WINT_WIDTH__ 32"
.LASF48:
	.string	"__INT64_TYPE__ long long int"
.LASF552:
	.string	"__trylocks_exclusive(...) __lock_annotate(exclusive_trylock_function(__VA_ARGS__))"
.LASF26:
	.string	"__CHAR_BIT__ 8"
.LASF320:
	.string	"__SIZEOF_WCHAR_T__ 4"
.LASF379:
	.string	"__BSD_VISIBLE 0"
.LASF515:
	.string	"__predict_false(exp) __builtin_expect((exp), 0)"
.LASF1151:
	.string	"NDS_MCOUNTERMASK_U 0x7d3"
.LASF507:
	.string	"__nonnull_all __attribute__((__nonnull__))"
.LASF682:
	.string	"_REENT_MBSRTOWCS_STATE(ptr) ((ptr)->_new._reent._mbsrtowcs_state)"
.LASF954:
	.string	"NDS_HPMCOUNTER28H 0xc9c"
.LASF1179:
	.string	"NDS_UDCAUSE 0x809"
.LASF419:
	.string	"___int_least64_t_defined 1"
.LASF59:
	.string	"__UINT_LEAST32_TYPE__ long unsigned int"
.LASF204:
	.string	"__FLT16_MAX_EXP__ 16"
.LASF445:
	.string	"__THROW "
.LASF1034:
	.string	"NDS_MHPMCOUNTER29 0xb1d"
.LASF758:
	.string	"putchar_unlocked(_c) _putchar_unlocked(_c)"
.LASF1088:
	.string	"NDS_MHPMEVENT23 0x337"
.LASF685:
	.string	"_REENT_L64A_BUF(ptr) ((ptr)->_new._reent._l64a_buf)"
.LASF1043:
	.string	"NDS_MHPMCOUNTER7H 0xb87"
.LASF409:
	.string	"__EXP(x) __ ##x ##__"
.LASF31:
	.string	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF692:
	.string	"_REENT_ERRNO(_ptr) ((_ptr)->_errno)"
.LASF274:
	.string	"__FLT32X_NORM_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF1019:
	.string	"NDS_MHPMCOUNTER14 0xb0e"
.LASF38:
	.string	"__WCHAR_TYPE__ int"
.LASF750:
	.string	"__sfeof(p) ((int)(((p)->_flags & __SEOF) != 0))"
.LASF1228:
	.string	"MHz 1000000"
.LASF349:
	.string	"_ANSIDECL_H_ "
.LASF934:
	.string	"NDS_HPMCOUNTER8H 0xc88"
.LASF1126:
	.string	"NDS_MICM_CFG 0xfc0"
.LASF732:
	.string	"EOF (-1)"
.LASF1108:
	.string	"NDS_HTVEC 0x205"
.LASF960:
	.string	"NDS_SIDELEG 0x103"
.LASF1087:
	.string	"NDS_MHPMEVENT22 0x336"
.LASF39:
	.string	"__WINT_TYPE__ unsigned int"
.LASF690:
	.string	"_REENT_CVTLEN(_ptr) ((_ptr)->_cvtlen)"
.LASF473:
	.string	"__GNUCLIKE_BUILTIN_MEMCPY 1"
.LASF1270:
	.string	"PLMT_BASE _IO_(0xE6000000)"
.LASF717:
	.string	"__SEOF 0x0020"
.LASF1048:
	.string	"NDS_MHPMCOUNTER12H 0xb8c"
.LASF704:
	.string	"_GLOBAL_REENT (&_impure_data)"
.LASF863:
	.string	"MDLMB_DEN (0x1UL)"
.LASF1352:
	.string	"unsigned int"
.LASF430:
	.string	"_SIZE_T_DEFINED_ "
.LASF844:
	.string	"TRAP_M_S_PAGE_FAULT 15"
.LASF1190:
	.string	"NDS_MSAVEDCAUSE1 0x7db"
.LASF1175:
	.string	"NDS_MSAVECAUSE1 0x7d8"
.LASF1221:
	.string	"swap_csr(reg,val) ({ unsigned long __tmp; asm volatile (\"csrrw %0, \" XSTR(reg) \", %1\" : \"=r\"(__tmp) : \"rK\"(val)); __tmp; })"
.LASF354:
	.string	"__NEWLIB_MINOR__ 4"
.LASF247:
	.string	"__FLT64_HAS_QUIET_NAN__ 1"
.LASF944:
	.string	"NDS_HPMCOUNTER18H 0xc92"
.LASF1037:
	.string	"NDS_MCYCLEH 0xb80"
.LASF291:
	.string	"__FLT64X_NORM_MAX__ 1.18973149535723176508575932662800702e+4932F64x"
.LASF273:
	.string	"__FLT32X_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF245:
	.string	"__FLT64_HAS_DENORM__ 1"
.LASF150:
	.string	"__FLT_DIG__ 6"
.LASF41:
	.string	"__UINTMAX_TYPE__ long long unsigned int"
.LASF357:
	.string	"_FVWRITE_IN_STREAMIO 1"
.LASF600:
	.string	"_WCHAR_T_DECLARED "
.LASF1000:
	.string	"NDS_PMPADDR10 0x3ba"
.LASF610:
	.string	"_SYS_REENT_H_ "
.LASF145:
	.string	"__FLT_EVAL_METHOD__ 0"
.LASF1342:
	.string	"DEV_I2C AE350_I2C"
.LASF991:
	.string	"NDS_PMPADDR1 0x3b1"
.LASF1059:
	.string	"NDS_MHPMCOUNTER23H 0xb97"
.LASF156:
	.string	"__FLT_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF72:
	.string	"__SCHAR_MAX__ 0x7f"
.LASF129:
	.string	"__INT_FAST8_WIDTH__ 32"
.LASF646:
	.string	"_RAND48_MULT_2 (0x0005)"
.LASF887:
	.string	"NDS_UEPC 0x041"
.LASF901:
	.string	"NDS_HPMCOUNTER7 0xc07"
.LASF577:
	.string	"_T_PTRDIFF "
.LASF978:
	.string	"NDS_MIE 0x304"
.LASF255:
	.string	"__FLT128_MAX_10_EXP__ 4932"
.LASF202:
	.string	"__FLT16_MIN_EXP__ (-13)"
.LASF143:
	.string	"__GCC_IEC_559 2"
.LASF559:
	.string	"__requires_unlocked(...) __lock_annotate(locks_excluded(__VA_ARGS__))"
.LASF933:
	.string	"NDS_HPMCOUNTER7H 0xc87"
.LASF1286:
	.string	"AHBDEC_BASE _IO_(0xE0000000)"
.LASF322:
	.string	"__SIZEOF_PTRDIFF_T__ 4"
.LASF583:
	.string	"_PTRDIFF_T_DECLARED "
.LASF1124:
	.string	"NDS_DSCRATCH0 0x7b2"
.LASF416:
	.string	"___int_least8_t_defined 1"
.LASF1079:
	.string	"NDS_MHPMEVENT14 0x32e"
.LASF32:
	.string	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF1335:
	.string	"DEV_SMU AE350_SMU"
.LASF599:
	.string	"_GCC_WCHAR_T "
.LASF1086:
	.string	"NDS_MHPMEVENT21 0x335"
.LASF191:
	.string	"__LDBL_MAX__ 1.18973149535723176508575932662800702e+4932L"
.LASF392:
	.string	"__EXPORT "
.LASF373:
	.string	"__OBSOLETE_MATH_DEFAULT 0"
.LASF735:
	.string	"FILENAME_MAX 1024"
.LASF1211:
	.string	"NDS_PMAADDR9 0xbd9"
.LASF330:
	.string	"__riscv_flen 64"
.LASF84:
	.string	"__SHRT_WIDTH__ 16"
.LASF949:
	.string	"NDS_HPMCOUNTER23H 0xc97"
.LASF936:
	.string	"NDS_HPMCOUNTER10H 0xc8a"
.LASF363:
	.string	"_UNBUF_STREAM_OPT 1"
.LASF393:
	.string	"__IMPORT "
.LASF643:
	.string	"_RAND48_SEED_2 (0x1234)"
.LASF638:
	.string	"_ATEXIT_SIZE 32"
.LASF488:
	.string	"__volatile volatile"
.LASF571:
	.string	"__is_aligned(x,y) __builtin_is_aligned(x, y)"
.LASF371:
	.string	"__IEEE_LITTLE_ENDIAN "
.LASF160:
	.string	"__FLT_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F"
.LASF746:
	.string	"_stderr_r(x) _REENT_STDERR(x)"
.LASF698:
	.string	"_REENT_STDERR(_ptr) ((_ptr)->_stderr)"
.LASF1287:
	.string	"PLDM_BASE _IO_(0xE6800000)"
.LASF691:
	.string	"_REENT_EMERGENCY(_ptr) ((_ptr)->_emergency)"
.LASF308:
	.string	"__GCC_ATOMIC_CHAR_LOCK_FREE 2"
.LASF1268:
	.string	"SPIMEM_BASE 0x80000000"
.LASF545:
	.string	"__NULLABILITY_PRAGMA_POP "
.LASF968:
	.string	"NDS_SIP 0x144"
.LASF396:
	.string	"_BEGIN_STD_C "
.LASF1233:
	.string	"PCLKFREQ (OSCFREQ )"
.LASF502:
	.string	"__malloc_like __attribute__((__malloc__))"
.LASF281:
	.string	"__FP_FAST_FMAF32x 1"
.LASF484:
	.string	"__STRING(x) #x"
.LASF389:
	.string	"_POINTER_INT long"
.LASF1262:
	.string	"__I volatile const"
.LASF963:
	.string	"NDS_SCOUNTEREN 0x106"
.LASF1299:
	.string	"AE350_SPI ((SPI_RegDef *) SPI_BASE )"
.LASF1178:
	.string	"NDS_SCOUNTINHIBIT 0x9e0"
.LASF787:
	.string	"DRV_UART2_DMA_RX_EN 0"
.LASF404:
	.string	"_FSTDIO "
.LASF176:
	.string	"__DBL_EPSILON__ ((double)2.22044604925031308084726333618164062e-16L)"
.LASF219:
	.string	"__FLT32_MIN_10_EXP__ (-37)"
.LASF435:
	.string	"___int_size_t_h "
.LASF391:
	.string	"__RAND_MAX 0x7fffffff"
.LASF634:
	.string	"__lock_try_acquire(lock) ((void) 0)"
.LASF381:
	.string	"__ISO_C_VISIBLE 2011"
.LASF588:
	.string	"_WCHAR_T "
.LASF794:
	.string	"DRV_SPI_DMA_RX_EN 0"
.LASF1326:
	.string	"HAL_MIE_DISABLE() clear_csr(NDS_MSTATUS, MSTATUS_MIE)"
.LASF342:
	.string	"__riscv_zicsr 2000000"
.LASF533:
	.string	"__FBSDID(s) struct __hack"
.LASF788:
	.string	"DRV_UART2_DMA_RX_CH 1"
.LASF1370:
	.string	"__nds__plic_claim_interrupt"
.LASF1078:
	.string	"NDS_MHPMEVENT13 0x32d"
.LASF408:
	.string	"_MACHINE__DEFAULT_TYPES_H "
.LASF1138:
	.string	"NDS_MDCAUSE 0x7c9"
.LASF1177:
	.string	"NDS_MSAVECAUSE2 0x7da"
.LASF582:
	.string	"_GCC_PTRDIFF_T "
.LASF183:
	.string	"__LDBL_MANT_DIG__ 113"
.LASF953:
	.string	"NDS_HPMCOUNTER27H 0xc9b"
.LASF1015:
	.string	"NDS_MHPMCOUNTER10 0xb0a"
.LASF1170:
	.string	"NDS_SHPMEVENT4 0x9e4"
.LASF923:
	.string	"NDS_HPMCOUNTER29 0xc1d"
.LASF656:
	.ascii	"_REENT_INIT(var) { 0, &__sf[0], &__sf[1], &__sf[2], 0, \"\","
	.ascii	" _REENT_INIT_RESERVED_1 _NULL, _REENT_INIT_RESERVED_0 _NULL,"
	.ascii	" _NULL, 0, _NULL, _NULL, 0, _NULL, { { _REENT_INIT_RESERVED_"
	.ascii	"2 _NULL, \"\", {0, 0, 0, 0, 0, 0, 0, 0"
	.string	", 0}, 0, 1, { {_RAND48_SEED_0, _RAND48_SEED_1, _RAND48_SEED_2}, {_RAND48_MULT_0, _RAND48_MULT_1, _RAND48_MULT_2}, _RAND48_ADD }, {0, {0}}, {0, {0}}, {0, {0}}, \"\", \"\", 0, {0, {0}}, {0, {0}}, {0, {0}}, {0, {0}}, {0, {0}} } }, _REENT_INIT_RESERVED_6_7 _NULL }"
.LASF1182:
	.string	"NDS_TXEVT 0x812"
.LASF1056:
	.string	"NDS_MHPMCOUNTER20H 0xb94"
.LASF1109:
	.string	"NDS_HSCRATCH 0x240"
.LASF423:
	.string	"_SIZE_T "
.LASF596:
	.string	"_WCHAR_T_H "
.LASF1083:
	.string	"NDS_MHPMEVENT18 0x332"
.LASF1071:
	.string	"NDS_MHPMEVENT6 0x326"
.LASF1125:
	.string	"NDS_DSCRATCH1 0x7b3"
.LASF684:
	.string	"_REENT_WCSRTOMBS_STATE(ptr) ((ptr)->_new._reent._wcsrtombs_state)"
.LASF897:
	.string	"NDS_HPMCOUNTER3 0xc03"
.LASF446:
	.string	"__ASMNAME(cname) __XSTRING (__USER_LABEL_PREFIX__) cname"
.LASF731:
	.string	"_IONBF 2"
.LASF932:
	.string	"NDS_HPMCOUNTER6H 0xc86"
.LASF76:
	.string	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL"
.LASF356:
	.string	"_FSEEK_OPTIMIZATION 1"
.LASF200:
	.string	"__FLT16_MANT_DIG__ 11"
.LASF1353:
	.string	"long double"
.LASF546:
	.string	"__arg_type_tag(arg_kind,arg_idx,type_tag_idx) "
.LASF1021:
	.string	"NDS_MHPMCOUNTER16 0xb10"
.LASF820:
	.string	"MSTATUS32_SD 0x80000000"
.LASF699:
	.string	"_REENT_INIT_PTR(var) { memset((var), 0, sizeof(*(var))); _REENT_INIT_PTR_ZEROED(var); }"
.LASF1110:
	.string	"NDS_HEPC 0x241"
.LASF537:
	.string	"__COPYRIGHT(s) struct __hack"
.LASF297:
	.string	"__FLT64X_HAS_QUIET_NAN__ 1"
.LASF251:
	.string	"__FLT128_DIG__ 33"
.LASF109:
	.string	"__INT8_C(c) c"
.LASF523:
	.string	"__scanflike(fmtarg,firstvararg) __attribute__((__format__ (__scanf__, fmtarg, firstvararg)))"
.LASF223:
	.string	"__FLT32_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF1032:
	.string	"NDS_MHPMCOUNTER27 0xb1b"
.LASF573:
	.string	"_STDDEF_H_ "
.LASF998:
	.string	"NDS_PMPADDR8 0x3b8"
.LASF294:
	.string	"__FLT64X_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F64x"
.LASF168:
	.string	"__DBL_MIN_EXP__ (-1021)"
.LASF427:
	.string	"__SIZE_T "
.LASF1101:
	.string	"NDS_TINFO 0x7a4"
.LASF817:
	.string	"MSTATUS_PUM 0x00040000"
.LASF527:
	.string	"__printf0like(fmtarg,firstvararg) "
.LASF1322:
	.string	"HAL_MSWI_DISABLE() clear_csr(NDS_MIE, MIP_MSIP)"
.LASF775:
	.string	"DRV_I2C_DMA_RX_REQID 8"
.LASF208:
	.string	"__FLT16_NORM_MAX__ 6.55040000000000000000000000000000000e+4F16"
.LASF217:
	.string	"__FLT32_DIG__ 6"
.LASF1030:
	.string	"NDS_MHPMCOUNTER25 0xb19"
.LASF1279:
	.string	"DMAC_BASE _IO_(0xF0C00000)"
.LASF490:
	.string	"__dead2 __attribute__((__noreturn__))"
.LASF1063:
	.string	"NDS_MHPMCOUNTER27H 0xb9b"
.LASF1013:
	.string	"NDS_MHPMCOUNTER8 0xb08"
.LASF1166:
	.string	"NDS_SCOUNTEROVF 0x9d4"
.LASF850:
	.string	"TRAP_S_I_PAGE_FAULT 12"
.LASF713:
	.string	"__SNBF 0x0002"
.LASF1255:
	.string	"IRQ_GP11_SOURCE 21"
.LASF420:
	.string	"__EXP"
.LASF415:
	.string	"___int64_t_defined 1"
.LASF196:
	.string	"__LDBL_HAS_DENORM__ 1"
.LASF306:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1"
.LASF275:
	.string	"__FLT32X_MIN__ 2.22507385850720138309023271733240406e-308F32x"
.LASF1302:
	.string	"NDS_PLIC_BASE PLIC_BASE"
.LASF458:
	.string	"__BEGIN_DECLS "
.LASF341:
	.string	"__riscv_c 2000000"
.LASF663:
	.string	"_REENT_CHECK_MISC(ptr) "
.LASF930:
	.string	"NDS_HPMCOUNTER4H 0xc84"
.LASF469:
	.string	"__GNUC_VA_LIST_COMPATIBILITY 1"
.LASF1319:
	.string	"HAL_MTIME_DISABLE() clear_csr(NDS_MIE, MIP_MTIP);"
.LASF55:
	.string	"__INT_LEAST32_TYPE__ long int"
.LASF1206:
	.string	"NDS_PMAADDR4 0xbd4"
.LASF1188:
	.string	"NDS_MSCRATCHCSW 0x348"
.LASF904:
	.string	"NDS_HPMCOUNTER10 0xc0a"
.LASF126:
	.string	"__UINT_LEAST64_MAX__ 0xffffffffffffffffULL"
.LASF263:
	.string	"__FLT128_HAS_INFINITY__ 1"
.LASF139:
	.string	"__UINT_FAST64_MAX__ 0xffffffffffffffffULL"
.LASF1356:
	.string	"mepc"
.LASF1016:
	.string	"NDS_MHPMCOUNTER11 0xb0b"
.LASF249:
	.string	"__FLT64_IS_IEC_60559__ 1"
.LASF85:
	.string	"__INT_WIDTH__ 32"
.LASF355:
	.string	"__NEWLIB_PATCHLEVEL__ 0"
.LASF1168:
	.string	"NDS_SCOUNTERMASK_M 0x9d1"
.LASF28:
	.string	"__ORDER_LITTLE_ENDIAN__ 1234"
.LASF616:
	.string	"__size_t"
.LASF474:
	.string	"__CC_SUPPORTS_INLINE 1"
.LASF444:
	.string	"__DOTS , ..."
.LASF1321:
	.string	"HAL_MSWI_ENABLE() set_csr(NDS_MIE, MIP_MSIP)"
.LASF1351:
	.string	"long long unsigned int"
.LASF497:
	.string	"__alloc_size(x) __attribute__((__alloc_size__(x)))"
.LASF898:
	.string	"NDS_HPMCOUNTER4 0xc04"
.LASF888:
	.string	"NDS_UCAUSE 0x042"
.LASF1334:
	.string	"DEV_DMA AE350_DMA"
.LASF199:
	.string	"__LDBL_IS_IEC_60559__ 1"
.LASF725:
	.string	"__SORD 0x2000"
.LASF37:
	.string	"__PTRDIFF_TYPE__ int"
.LASF431:
	.string	"_SIZE_T_DEFINED "
.LASF79:
	.string	"__WINT_MAX__ 0xffffffffU"
.LASF380:
	.string	"__GNU_VISIBLE 0"
.LASF1274:
	.string	"PIT_BASE _IO_(0xF0400000)"
.LASF578:
	.string	"__PTRDIFF_T "
.LASF1137:
	.string	"NDS_MSP_BASE 0x7c8"
.LASF894:
	.string	"NDS_CYCLE 0xc00"
.LASF679:
	.string	"_REENT_WCTOMB_STATE(ptr) ((ptr)->_new._reent._wctomb_state)"
.LASF1199:
	.string	"NDS_PMACFG1 0xbc1"
.LASF950:
	.string	"NDS_HPMCOUNTER24H 0xc98"
.LASF211:
	.string	"__FLT16_DENORM_MIN__ 5.96046447753906250000000000000000000e-8F16"
.LASF1033:
	.string	"NDS_MHPMCOUNTER28 0xb1c"
.LASF764:
	.string	"BUILD_LOAD 1"
.LASF626:
	.string	"__LOCK_INIT(class,lock) static int lock = 0;"
.LASF1193:
	.string	"NDS_MIRQ_ENTRY 0x7ec"
.LASF1196:
	.string	"NDS_PUSHMEPC 0x7ef"
.LASF58:
	.string	"__UINT_LEAST16_TYPE__ short unsigned int"
.LASF1165:
	.string	"NDS_SCOUNTERMASK_U 0x9d3"
.LASF42:
	.string	"__CHAR16_TYPE__ short unsigned int"
.LASF1197:
	.string	"NDS_UCODE 0x801"
.LASF883:
	.string	"NDS_USTATUS 0x000"
.LASF298:
	.string	"__FLT64X_IS_IEC_60559__ 1"
.LASF267:
	.string	"__FLT32X_DIG__ 15"
.LASF487:
	.string	"__signed signed"
.LASF1366:
	.string	"mtime_handler"
.LASF674:
	.string	"_REENT_ASCTIME_BUF(ptr) ((ptr)->_new._reent._asctime_buf)"
.LASF858:
	.string	"MIP_MTIP (1 << IRQ_M_TIMER)"
.LASF957:
	.string	"NDS_HPMCOUNTER31H 0xc9f"
.LASF1312:
	.string	"PLIC_ENABLE_SHIFT_PER_TARGET 7"
.LASF17:
	.string	"__FINITE_MATH_ONLY__ 0"
.LASF1128:
	.string	"NDS_MMSC_CFG 0xfc2"
.LASF130:
	.string	"__INT_FAST16_MAX__ 0x7fffffff"
.LASF410:
	.string	"__have_longlong64 1"
.LASF784:
	.string	"DRV_UART2_DMA_TX_EN 0"
.LASF862:
	.string	"MILMB_IEN (0x1UL)"
.LASF329:
	.string	"__riscv_xlen 32"
.LASF672:
	.string	"_REENT_MP_P5S(ptr) ((ptr)->_p5s)"
.LASF1003:
	.string	"NDS_PMPADDR13 0x3bd"
.LASF438:
	.string	"__size_t "
.LASF595:
	.string	"_WCHAR_T_DEFINED "
.LASF914:
	.string	"NDS_HPMCOUNTER20 0xc14"
.LASF553:
	.string	"__trylocks_shared(...) __lock_annotate(shared_trylock_function(__VA_ARGS__))"
.LASF747:
	.string	"__VALIST __gnuc_va_list"
.LASF1122:
	.string	"NDS_MHCOUNTEREN 0x322"
.LASF1240:
	.string	"IRQ_I2C_SOURCE 6"
.LASF1053:
	.string	"NDS_MHPMCOUNTER17H 0xb91"
.LASF807:
	.string	"MSTATUS_UPIE 0x00000010"
.LASF675:
	.string	"_REENT_TM(ptr) (&(ptr)->_new._reent._localtime_buf)"
.LASF1049:
	.string	"NDS_MHPMCOUNTER13H 0xb8d"
.LASF1358:
	.string	"mxstatus"
.LASF683:
	.string	"_REENT_WCRTOMB_STATE(ptr) ((ptr)->_new._reent._wcrtomb_state)"
.LASF120:
	.string	"__UINT_LEAST8_MAX__ 0xff"
.LASF1017:
	.string	"NDS_MHPMCOUNTER12 0xb0c"
.LASF1252:
	.string	"IRQ_GP8_SOURCE 18"
.LASF740:
	.string	"TMP_MAX 26"
.LASF521:
	.string	"__containerof(x,s,m) ({ const volatile __typeof(((s *)0)->m) *__x = (x); __DEQUALIFY(s *, (const volatile char *)__x - __offsetof(s, m));})"
.LASF338:
	.string	"__riscv_a 2001000"
.LASF429:
	.string	"_BSD_SIZE_T_ "
.LASF1104:
	.string	"NDS_HSTATUS 0x200"
.LASF1173:
	.string	"NDS_MSAVESTATUS 0x7d6"
.LASF348:
	.string	"_STDIO_H_ "
.LASF741:
	.string	"stdin _REENT_STDIN(_REENT)"
.LASF899:
	.string	"NDS_HPMCOUNTER5 0xc05"
.LASF1097:
	.string	"NDS_TSELECT 0x7a0"
.LASF1337:
	.string	"DEV_UART2 AE350_UART2"
.LASF773:
	.string	"DRV_I2C_DMA_RX_EN 0"
.LASF581:
	.string	"___int_ptrdiff_t_h "
.LASF813:
	.string	"MSTATUS_MPP 0x00001800"
.LASF621:
	.string	"_CLOCKID_T_ unsigned long"
.LASF660:
	.string	"_REENT_CHECK_TM(ptr) "
.LASF1318:
	.string	"HAL_MTIME_ENABLE() set_csr(NDS_MIE, MIP_MTIP)"
.LASF809:
	.string	"MSTATUS_HPIE 0x00000040"
.LASF1102:
	.string	"NDS_DCSR 0x7b0"
.LASF942:
	.string	"NDS_HPMCOUNTER16H 0xc90"
.LASF598:
	.string	"__INT_WCHAR_T_H "
.LASF885:
	.string	"NDS_UTVEC 0x005"
.LASF958:
	.string	"NDS_SSTATUS 0x100"
.LASF1242:
	.string	"IRQ_UART1_SOURCE 8"
.LASF1217:
	.string	"NDS_PMAADDR15 0xbdf"
.LASF1060:
	.string	"NDS_MHPMCOUNTER24H 0xb98"
.LASF44:
	.string	"__SIG_ATOMIC_TYPE__ int"
.LASF359:
	.string	"_HAVE_INITFINI_ARRAY 1"
.LASF869:
	.string	"REGBYTES (1 << LOG_REGBYTES)"
.LASF364:
	.string	"_WANT_IO_C99_FORMATS 1"
.LASF1157:
	.string	"NDS_UCCTLBEGINADDR 0x80b"
.LASF1082:
	.string	"NDS_MHPMEVENT17 0x331"
.LASF884:
	.string	"NDS_UIE 0x004"
.LASF1317:
	.string	"HAL_MTIMER_INITIAL() "
.LASF1026:
	.string	"NDS_MHPMCOUNTER21 0xb15"
.LASF175:
	.string	"__DBL_MIN__ ((double)2.22507385850720138309023271733240406e-308L)"
.LASF325:
	.string	"__riscv_atomic 1"
.LASF292:
	.string	"__FLT64X_MIN__ 3.36210314311209350626267781732175260e-4932F64x"
.LASF592:
	.string	"_WCHAR_T_ "
.LASF1361:
	.string	"trap_entry"
.LASF1085:
	.string	"NDS_MHPMEVENT20 0x334"
.LASF1320:
	.string	"HAL_MSWI_INITIAL() { __nds__plic_sw_set_priority(1, 1); __nds__plic_sw_enable_interrupt(1); }"
.LASF77:
	.string	"__WCHAR_MAX__ 0x7fffffff"
.LASF214:
	.string	"__FLT16_HAS_QUIET_NAN__ 1"
.LASF1203:
	.string	"NDS_PMAADDR1 0xbd1"
.LASF369:
	.string	"_WIDE_ORIENT 1"
.LASF8:
	.string	"__GNUC_MINOR__ 2"
.LASF1159:
	.string	"NDS_SLIE 0x9c4"
.LASF637:
	.string	"__lock_release_recursive(lock) ((void) 0)"
.LASF680:
	.string	"_REENT_MBRLEN_STATE(ptr) ((ptr)->_new._reent._mbrlen_state)"
.LASF186:
	.string	"__LDBL_MIN_10_EXP__ (-4931)"
.LASF557:
	.string	"__requires_exclusive(...) __lock_annotate(exclusive_locks_required(__VA_ARGS__))"
.LASF645:
	.string	"_RAND48_MULT_1 (0xdeec)"
.LASF40:
	.string	"__INTMAX_TYPE__ long long int"
.LASF1004:
	.string	"NDS_PMPADDR14 0x3be"
.LASF965:
	.string	"NDS_SEPC 0x141"
.LASF313:
	.string	"__GCC_ATOMIC_INT_LOCK_FREE 2"
.LASF1180:
	.string	"NDS_WFE 0x810"
.LASF641:
	.string	"_RAND48_SEED_0 (0x330e)"
.LASF708:
	.string	"_SSIZE_T_DECLARED "
.LASF260:
	.string	"__FLT128_EPSILON__ 1.92592994438723585305597794258492732e-34F128"
.LASF606:
	.string	"_GCC_MAX_ALIGN_T "
.LASF624:
	.string	"__Long long"
.LASF437:
	.string	"_SIZET_ "
.LASF1249:
	.string	"IRQ_GP5_SOURCE 15"
.LASF906:
	.string	"NDS_HPMCOUNTER12 0xc0c"
.LASF180:
	.string	"__DBL_HAS_QUIET_NAN__ 1"
.LASF1164:
	.string	"NDS_SCOUNTERMASK_S 0x9d2"
.LASF455:
	.string	"__ptrvalue "
.LASF403:
	.string	"_NOINLINE_STATIC _NOINLINE static"
.LASF760:
	.string	"__PLATFORM_H__ "
.LASF992:
	.string	"NDS_PMPADDR2 0x3b2"
.LASF1313:
	.string	"PLIC_THRESHOLD_OFFSET (0x00200000UL)"
.LASF261:
	.string	"__FLT128_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F128"
.LASF1069:
	.string	"NDS_MHPMEVENT4 0x324"
.LASF69:
	.string	"__INTPTR_TYPE__ int"
.LASF900:
	.string	"NDS_HPMCOUNTER6 0xc06"
.LASF70:
	.string	"__UINTPTR_TYPE__ unsigned int"
.LASF761:
	.string	"__CONFIG_H__ "
.LASF1089:
	.string	"NDS_MHPMEVENT24 0x338"
.LASF299:
	.string	"__REGISTER_PREFIX__ "
.LASF1090:
	.string	"NDS_MHPMEVENT25 0x339"
.LASF167:
	.string	"__DBL_DIG__ 15"
.LASF534:
	.string	"__RCSID(s) struct __hack"
.LASF709:
	.string	"_NEWLIB_STDIO_H "
.LASF25:
	.string	"__SIZEOF_SIZE_T__ 4"
.LASF631:
	.string	"__lock_close_recursive(lock) ((void) 0)"
.LASF365:
	.string	"_WANT_IO_LONG_DOUBLE 1"
.LASF917:
	.string	"NDS_HPMCOUNTER23 0xc17"
.LASF118:
	.string	"__INT64_C(c) c ## LL"
.LASF464:
	.string	"__GNUCLIKE_CTOR_SECTION_HANDLING 1"
.LASF243:
	.string	"__FLT64_EPSILON__ 2.22044604925031308084726333618164062e-16F64"
.LASF654:
	.string	"_REENT_INIT_RESERVED_6_7 "
.LASF1310:
	.string	"PLIC_PENDING_SHIFT_PER_SOURCE 0"
.LASF459:
	.string	"__END_DECLS "
.LASF75:
	.string	"__LONG_MAX__ 0x7fffffffL"
.LASF1127:
	.string	"NDS_MDCM_CFG 0xfc1"
.LASF1106:
	.string	"NDS_HIDELEG 0x203"
.LASF860:
	.string	"MIP_HEIP (1 << IRQ_H_EXT)"
.LASF1328:
	.string	"HAL_MEIP_DISABLE() clear_csr(NDS_MIE, MIP_MEIP)"
.LASF618:
	.string	"unsigned"
.LASF1045:
	.string	"NDS_MHPMCOUNTER9H 0xb89"
.LASF1057:
	.string	"NDS_MHPMCOUNTER21H 0xb95"
.LASF1149:
	.string	"NDS_MCOUNTERMASK_M 0x7d1"
.LASF830:
	.string	"IRQ_S_EXT 9"
.LASF1346:
	.string	"short int"
.LASF572:
	.string	"_STDDEF_H "
.LASF565:
	.string	"__pt_guarded_by(x) __lock_annotate(pt_guarded_by(x))"
.LASF564:
	.string	"__guarded_by(x) __lock_annotate(guarded_by(x))"
.LASF123:
	.string	"__UINT16_C(c) c"
.LASF235:
	.string	"__FLT64_MIN_EXP__ (-1021)"
.LASF209:
	.string	"__FLT16_MIN__ 6.10351562500000000000000000000000000e-5F16"
.LASF476:
	.string	"__CC_SUPPORTS___INLINE__ 1"
.LASF752:
	.string	"__sclearerr(p) ((void)((p)->_flags &= ~(__SERR|__SEOF)))"
.LASF522:
	.string	"__printflike(fmtarg,firstvararg) __attribute__((__format__ (__printf__, fmtarg, firstvararg)))"
.LASF302:
	.string	"__NO_INLINE__ 1"
.LASF985:
	.string	"NDS_MIP 0x344"
.LASF508:
	.string	"__fastcall __attribute__((__fastcall__))"
.LASF1005:
	.string	"NDS_PMPADDR15 0x3bf"
.LASF548:
	.string	"__lock_annotate(x) "
.LASF843:
	.string	"TRAP_M_L_PAGE_FAULT 13"
.LASF686:
	.string	"_REENT_SIGNAL_BUF(ptr) ((ptr)->_new._reent._signal_buf)"
.LASF11:
	.string	"__ATOMIC_RELAXED 0"
.LASF400:
	.string	"_ATTRIBUTE(attrs) __attribute__ (attrs)"
.LASF224:
	.string	"__FLT32_NORM_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF179:
	.string	"__DBL_HAS_INFINITY__ 1"
.LASF97:
	.string	"__SIG_ATOMIC_MAX__ 0x7fffffff"
.LASF644:
	.string	"_RAND48_MULT_0 (0xe66d)"
.LASF907:
	.string	"NDS_HPMCOUNTER13 0xc0d"
.LASF939:
	.string	"NDS_HPMCOUNTER13H 0xc8d"
.LASF1264:
	.string	"__IO volatile"
.LASF825:
	.string	"IRQ_H_SOFT 2"
.LASF520:
	.string	"__rangeof(type,start,end) (__offsetof(type, end) - __offsetof(type, start))"
.LASF902:
	.string	"NDS_HPMCOUNTER8 0xc08"
.LASF1259:
	.string	"IRQ_GP15_SOURCE 25"
.LASF489:
	.string	"__weak_symbol __attribute__((__weak__))"
.LASF993:
	.string	"NDS_PMPADDR3 0x3b3"
.LASF628:
	.string	"__lock_init(lock) ((void) 0)"
.LASF1297:
	.string	"AE350_GPIO ((GPIO_RegDef *) GPIO_BASE )"
.LASF585:
	.string	"__need_ptrdiff_t"
.LASF172:
	.string	"__DBL_DECIMAL_DIG__ 17"
.LASF816:
	.string	"MSTATUS_MPRV 0x00020000"
.LASF411:
	.string	"__have_long32 1"
.LASF751:
	.string	"__sferror(p) ((int)(((p)->_flags & __SERR) != 0))"
.LASF1204:
	.string	"NDS_PMAADDR2 0xbd2"
.LASF623:
	.string	"_NULL 0"
.LASF452:
	.string	"__flexarr [0]"
.LASF1355:
	.string	"mcause"
.LASF770:
	.string	"DRV_I2C_DMA_TX_EN 0"
.LASF388:
	.string	"_READ_WRITE_RETURN_TYPE _ssize_t"
.LASF174:
	.string	"__DBL_NORM_MAX__ ((double)1.79769313486231570814527423731704357e+308L)"
.LASF101:
	.string	"__INT16_MAX__ 0x7fff"
.LASF367:
	.string	"_WANT_REGISTER_FINI 1"
.LASF780:
	.string	"DRV_UART1_DMA_RX_EN 0"
.LASF1113:
	.string	"NDS_HIP 0x244"
.LASF539:
	.string	"__DEVOLATILE(type,var) ((type)(__uintptr_t)(volatile void *)(var))"
.LASF587:
	.string	"__WCHAR_T__ "
.LASF387:
	.string	"__SSP_FORTIFY_LEVEL 0"
.LASF467:
	.string	"__GNUCLIKE_BUILTIN_STDARG 1"
.LASF386:
	.string	"__XSI_VISIBLE 0"
.LASF814:
	.string	"MSTATUS_FS 0x00006000"
.LASF333:
	.string	"__riscv_float_abi_double 1"
.LASF250:
	.string	"__FLT128_MANT_DIG__ 113"
.LASF905:
	.string	"NDS_HPMCOUNTER11 0xc0b"
.LASF525:
	.string	"__strfmonlike(fmtarg,firstvararg) __attribute__((__format__ (__strfmon__, fmtarg, firstvararg)))"
.LASF733:
	.string	"BUFSIZ 1024"
.LASF316:
	.string	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1"
.LASF1365:
	.string	"mswi_handler"
.LASF99:
	.string	"__SIG_ATOMIC_WIDTH__ 32"
.LASF864:
	.string	"SLL32 sll"
.LASF1131:
	.string	"NDS_MECC_CODE 0x7c2"
.LASF783:
	.string	"DRV_UART2 1"
.LASF377:
	.string	"__GNUC_PREREQ__(ma,mi) __GNUC_PREREQ(ma, mi)"
.LASF601:
	.string	"__DEFINED_wchar_t "
.LASF1316:
	.string	"PLIC_CLAIM_SHIFT_PER_TARGET 12"
.LASF1018:
	.string	"NDS_MHPMCOUNTER13 0xb0d"
.LASF1093:
	.string	"NDS_MHPMEVENT28 0x33c"
.LASF921:
	.string	"NDS_HPMCOUNTER27 0xc1b"
.LASF835:
	.string	"TRAP_M_I_ACC_FAULT 1"
.LASF980:
	.string	"NDS_MCOUNTEREN 0x306"
.LASF511:
	.string	"__unreachable() __builtin_unreachable()"
.LASF1146:
	.string	"NDS_MRANDSTATEH 0x7ff"
.LASF321:
	.string	"__SIZEOF_WINT_T__ 4"
.LASF1066:
	.string	"NDS_MHPMCOUNTER30H 0xb9e"
.LASF114:
	.string	"__INT_LEAST32_MAX__ 0x7fffffffL"
.LASF2:
	.string	"__STDC__ 1"
.LASF551:
	.string	"__locks_shared(...) __lock_annotate(shared_lock_function(__VA_ARGS__))"
.LASF1103:
	.string	"NDS_DPC 0x7b1"
.LASF1216:
	.string	"NDS_PMAADDR14 0xbde"
.LASF1031:
	.string	"NDS_MHPMCOUNTER26 0xb1a"
.LASF492:
	.string	"__unused __attribute__((__unused__))"
.LASF774:
	.string	"DRV_I2C_DMA_RX_CH 3"
.LASF1234:
	.string	"UCLKFREQ (OSCFREQ )"
.LASF128:
	.string	"__INT_FAST8_MAX__ 0x7fffffff"
.LASF228:
	.string	"__FLT32_HAS_DENORM__ 1"
.LASF938:
	.string	"NDS_HPMCOUNTER12H 0xc8c"
.LASF724:
	.string	"__SOFF 0x1000"
.LASF1300:
	.string	"__INTERRUPT_H__ "
.LASF615:
	.string	"_MACHINE__TYPES_H "
.LASF133:
	.string	"__INT_FAST32_WIDTH__ 32"
.LASF407:
	.string	"_SYS_CDEFS_H_ "
.LASF311:
	.string	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2"
.LASF689:
	.string	"_REENT_CVTBUF(_ptr) ((_ptr)->_cvtbuf)"
.LASF468:
	.string	"__GNUCLIKE_BUILTIN_VAALIST 1"
.LASF24:
	.string	"__SIZEOF_LONG_DOUBLE__ 16"
.LASF531:
	.string	"__sym_compat(sym,impl,verid) __asm__(\".symver \" #impl \", \" #sym \"@\" #verid)"
.LASF795:
	.string	"DRV_SPI_DMA_RX_CH 1"
.LASF1314:
	.string	"PLIC_THRESHOLD_SHIFT_PER_TARGET 12"
.LASF972:
	.string	"NDS_MIMPID 0xf13"
.LASF337:
	.string	"__riscv_m 2000000"
.LASF257:
	.string	"__FLT128_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF51:
	.string	"__UINT32_TYPE__ long unsigned int"
.LASF1238:
	.string	"IRQ_GP0_SOURCE 4"
.LASF994:
	.string	"NDS_PMPADDR4 0x3b4"
.LASF715:
	.string	"__SWR 0x0008"
.LASF1008:
	.string	"NDS_MHPMCOUNTER3 0xb03"
.LASF1054:
	.string	"NDS_MHPMCOUNTER18H 0xb92"
.LASF503:
	.string	"__pure __attribute__((__pure__))"
.LASF240:
	.string	"__FLT64_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF1115:
	.string	"NDS_MBOUND 0x381"
.LASF436:
	.string	"_GCC_SIZE_T "
.LASF1187:
	.string	"NDS_MINTSTATUS 0x346"
.LASF478:
	.string	"__CC_SUPPORTS_WARNING 1"
.LASF823:
	.string	"MCAUSE_CAUSE 0x7FFFFFFFUL"
.LASF756:
	.string	"clearerr(p) __sclearerr(p)"
.LASF1075:
	.string	"NDS_MHPMEVENT10 0x32a"
.LASF912:
	.string	"NDS_HPMCOUNTER18 0xc12"
.LASF556:
	.string	"__asserts_shared(...) __lock_annotate(assert_shared_lock(__VA_ARGS__))"
.LASF658:
	.string	"_REENT_CHECK_RAND48(ptr) "
.LASF1269:
	.string	"DDRMEM_BASE 0x00000000"
.LASF636:
	.string	"__lock_release(lock) ((void) 0)"
.LASF372:
	.string	"_SUPPORTS_ERREXCEPT "
.LASF602:
	.string	"_BSD_WCHAR_T_"
.LASF513:
	.string	"__restrict_arr restrict"
.LASF1350:
	.string	"long long int"
.LASF479:
	.string	"__CC_SUPPORTS_VARADIC_XXX 1"
.LASF1042:
	.string	"NDS_MHPMCOUNTER6H 0xb86"
.LASF919:
	.string	"NDS_HPMCOUNTER25 0xc19"
.LASF1293:
	.string	"AE350_UART2 ((UART_RegDef *) UART2_BASE )"
.LASF1022:
	.string	"NDS_MHPMCOUNTER17 0xb11"
.LASF1276:
	.string	"RTC_BASE _IO_(0xF0600000)"
.LASF969:
	.string	"NDS_SATP 0x180"
.LASF340:
	.string	"__riscv_d 2002000"
.LASF201:
	.string	"__FLT16_DIG__ 3"
.LASF955:
	.string	"NDS_HPMCOUNTER29H 0xc9d"
.LASF697:
	.string	"_REENT_STDOUT(_ptr) ((_ptr)->_stdout)"
.LASF964:
	.string	"NDS_SSCRATCH 0x140"
.LASF362:
	.string	"_REENT_CHECK_VERIFY 1"
.LASF549:
	.string	"__lockable __lock_annotate(lockable)"
.LASF866:
	.string	"LOAD lw"
.LASF193:
	.string	"__LDBL_MIN__ 3.36210314311209350626267781732175260e-4932L"
.LASF1273:
	.string	"UART2_BASE _IO_(0xF0300000)"
.LASF538:
	.string	"__DECONST(type,var) ((type)(__uintptr_t)(const void *)(var))"
.LASF301:
	.string	"__GNUC_STDC_INLINE__ 1"
.LASF612:
	.string	"__need_wint_t "
.LASF1092:
	.string	"NDS_MHPMEVENT27 0x33b"
.LASF1331:
	.string	"HAL_INTERRUPT_THRESHOLD(threshold) __nds__plic_set_threshold(threshold)"
.LASF91:
	.string	"__SIZE_WIDTH__ 32"
.LASF753:
	.string	"__sfileno(p) ((p)->_file)"
.LASF848:
	.string	"TRAP_S_L_ACC_FAULT 5"
.LASF763:
	.string	"BUILD_MODE BUILD_BURN"
.LASF80:
	.string	"__WINT_MIN__ 0U"
.LASF1298:
	.string	"AE350_I2C ((I2C_RegDef *) I2C_BASE )"
.LASF1200:
	.string	"NDS_PMACFG2 0xbc2"
.LASF1307:
	.string	"PLIC_PRIORITY_OFFSET (0x00000000UL)"
.LASF234:
	.string	"__FLT64_DIG__ 15"
.LASF1014:
	.string	"NDS_MHPMCOUNTER9 0xb09"
.LASF158:
	.string	"__FLT_MIN__ 1.17549435082228750796873653722224568e-38F"
.LASF110:
	.string	"__INT_LEAST8_WIDTH__ 8"
.LASF332:
	.string	"__riscv_fsqrt 1"
.LASF448:
	.string	"__long_double_t long double"
.LASF346:
	.string	"_POSIX_C_SOURCE 1"
.LASF54:
	.string	"__INT_LEAST16_TYPE__ short int"
.LASF765:
	.string	"BUILD_BURN 2"
.LASF1347:
	.string	"short unsigned int"
.LASF723:
	.string	"__SNPT 0x0800"
.LASF229:
	.string	"__FLT32_HAS_INFINITY__ 1"
.LASF1061:
	.string	"NDS_MHPMCOUNTER25H 0xb99"
.LASF799:
	.string	"DRV_WDT 1"
.LASF347:
	.string	"__RTTHREAD__ 1"
.LASF842:
	.string	"TRAP_M_I_PAGE_FAULT 12"
.LASF822:
	.string	"MCAUSE_INT 0x80000000UL"
.LASF233:
	.string	"__FLT64_MANT_DIG__ 53"
.LASF324:
	.string	"__riscv_compressed 1"
.LASF853:
	.string	"MIP_SSIP (1 << IRQ_S_SOFT)"
.LASF524:
	.string	"__format_arg(fmtarg) __attribute__((__format_arg__ (fmtarg)))"
.LASF470:
	.string	"__compiler_membar() __asm __volatile(\" \" : : : \"memory\")"
.LASF804:
	.string	"MSTATUS_SIE 0x00000002"
.LASF995:
	.string	"NDS_PMPADDR5 0x3b5"
.LASF244:
	.string	"__FLT64_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F64"
.LASF547:
	.string	"__datatype_type_tag(kind,type) "
.LASF608:
	.string	"__need___va_list"
.LASF635:
	.string	"__lock_try_acquire_recursive(lock) ((void) 0)"
.LASF82:
	.string	"__SIZE_MAX__ 0xffffffffU"
.LASF1041:
	.string	"NDS_MHPMCOUNTER5H 0xb85"
.LASF845:
	.string	"TRAP_M_STACKOVF 32"
.LASF722:
	.string	"__SOPT 0x0400"
.LASF1156:
	.string	"NDS_MCCTLDATA 0x7cd"
.LASF1132:
	.string	"NDS_MNVEC 0x7c3"
.LASF1076:
	.string	"NDS_MHPMEVENT11 0x32b"
.LASF584:
	.string	"__DEFINED_ptrdiff_t "
.LASF194:
	.string	"__LDBL_EPSILON__ 1.92592994438723585305597794258492732e-34L"
.LASF604:
	.string	"offsetof"
.LASF856:
	.string	"MIP_STIP (1 << IRQ_S_TIMER)"
.LASF345:
	.string	"NO_INIT 1"
.LASF506:
	.string	"__nonnull(x) __attribute__((__nonnull__ x))"
.LASF647:
	.string	"_RAND48_ADD (0x000b)"
.LASF800:
	.string	"DRV_PIT 1"
.LASF806:
	.string	"MSTATUS_MIE 0x00000008"
.LASF1301:
	.string	"USE_PLIC "
.LASF951:
	.string	"NDS_HPMCOUNTER25H 0xc99"
.LASF779:
	.string	"DRV_UART1_DMA_TX_REQID 4"
.LASF872:
	.string	"LOG_FPREGBYTES 3"
.LASF989:
	.string	"NDS_PMPCFG3 0x3a3"
.LASF1142:
	.string	"NDS_DDCAUSE 0x7e1"
.LASF970:
	.string	"NDS_MVENDORID 0xf11"
.LASF49:
	.string	"__UINT8_TYPE__ unsigned char"
.LASF266:
	.string	"__FLT32X_MANT_DIG__ 53"
.LASF384:
	.string	"__POSIX_VISIBLE 199009"
.LASF710:
	.string	"_flockfile(fp) (((fp)->_flags & __SSTR) ? 0 : __lock_acquire_recursive((fp)->_lock))"
.LASF1044:
	.string	"NDS_MHPMCOUNTER8H 0xb88"
.LASF1222:
	.string	"set_csr(reg,bit) ({ unsigned long __tmp; asm volatile (\"csrrs %0, \" XSTR(reg) \", %1\" : \"=r\"(__tmp) : \"rK\"(bit)); __tmp; })"
.LASF874:
	.string	"STR(S) #S"
.LASF1237:
	.string	"IRQ_PIT_SOURCE 3"
.LASF112:
	.string	"__INT16_C(c) c"
.LASF762:
	.string	"CFG_CACHE_ENABLE "
.LASF1364:
	.string	"syscall_handler"
.LASF526:
	.string	"__strftimelike(fmtarg,firstvararg) __attribute__((__format__ (__strftime__, fmtarg, firstvararg)))"
.LASF639:
	.string	"_ATEXIT_INIT {_NULL, 0, {_NULL}, {{_NULL}, {_NULL}, 0, 0}}"
.LASF540:
	.string	"__DEQUALIFY(type,var) ((type)(__uintptr_t)(const volatile void *)(var))"
.LASF828:
	.string	"IRQ_H_TIMER 6"
.LASF15:
	.string	"__ATOMIC_ACQ_REL 4"
.LASF47:
	.string	"__INT32_TYPE__ long int"
.LASF494:
	.string	"__packed __attribute__((__packed__))"
.LASF594:
	.string	"_WCHAR_T_DEFINED_ "
.LASF742:
	.string	"stdout _REENT_STDOUT(_REENT)"
.LASF772:
	.string	"DRV_I2C_DMA_TX_REQID 8"
.LASF1198:
	.string	"NDS_PMACFG0 0xbc0"
.LASF177:
	.string	"__DBL_DENORM_MIN__ ((double)4.94065645841246544176568792868221372e-324L)"
.LASF276:
	.string	"__FLT32X_EPSILON__ 2.22044604925031308084726333618164062e-16F32x"
.LASF625:
	.string	"__SYS_LOCK_H__ "
.LASF781:
	.string	"DRV_UART1_DMA_RX_CH 1"
.LASF1161:
	.string	"NDS_SDCAUSE 0x9c9"
.LASF895:
	.string	"NDS_TIME 0xc01"
.LASF649:
	.string	"_REENT_ASCTIME_SIZE 26"
.LASF1341:
	.string	"DEV_GPIO AE350_GPIO"
.LASF1281:
	.string	"APB_EXT_BASE _IO_(0xF8000000)"
.LASF1275:
	.string	"WDT_BASE _IO_(0xF0500000)"
.LASF1118:
	.string	"NDS_MDBASE 0x384"
.LASF1296:
	.string	"AE350_RTC ((RTC_RegDef *) RTC_BASE )"
.LASF94:
	.string	"__UINTMAX_MAX__ 0xffffffffffffffffULL"
.LASF1029:
	.string	"NDS_MHPMCOUNTER24 0xb18"
.LASF166:
	.string	"__DBL_MANT_DIG__ 53"
.LASF454:
	.string	"__unbounded "
.LASF996:
	.string	"NDS_PMPADDR6 0x3b6"
.LASF979:
	.string	"NDS_MTVEC 0x305"
.LASF1257:
	.string	"IRQ_GP13_SOURCE 23"
.LASF1036:
	.string	"NDS_MHPMCOUNTER31 0xb1f"
.LASF563:
	.string	"__nosanitizethread "
.LASF135:
	.string	"__INT_FAST64_WIDTH__ 64"
.LASF74:
	.string	"__INT_MAX__ 0x7fffffff"
.LASF1290:
	.string	"AE350_DMA ((DMA_RegDef *) DMAC_BASE )"
.LASF952:
	.string	"NDS_HPMCOUNTER26H 0xc9a"
.LASF1308:
	.string	"PLIC_PRIORITY_SHIFT_PER_SOURCE 2"
.LASF504:
	.string	"__always_inline __inline__ __attribute__((__always_inline__))"
.LASF1340:
	.string	"DEV_RTC AE350_RTC"
.LASF882:
	.string	"__CSR_V5_H__ "
.LASF1064:
	.string	"NDS_MHPMCOUNTER28H 0xb9c"
.LASF1140:
	.string	"NDS_MMISC_CTL 0x7d0"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/lc/git/rt-thread/bsp/gowin-riscv_ae350_soc"
.LASF0:
	.string	"ae350_soc/ae350/trap.c"
	.ident	"GCC: () 13.2.0"
