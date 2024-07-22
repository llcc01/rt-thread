	.file	"mm.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/lc/git/rt-thread/bsp/gowin-riscv_ae350_soc" "ae350_soc/lib/mm.c"
	.globl	membase
	.section	.bss.membase,"aw",@nobits
	.align	2
	.type	membase, @object
	.size	membase, 8192
membase:
	.zero	8192
	.globl	memmapbase
	.section	.bss.memmapbase,"aw",@nobits
	.align	2
	.type	memmapbase, @object
	.size	memmapbase, 1024
memmapbase:
	.zero	1024
	.globl	memtblsize
	.section	.srodata.memtblsize,"a"
	.align	2
	.type	memtblsize, @object
	.size	memtblsize, 4
memtblsize:
	.word	1024
	.globl	memblksize
	.section	.srodata.memblksize,"a"
	.align	2
	.type	memblksize, @object
	.size	memblksize, 4
memblksize:
	.word	8
	.globl	memsize
	.section	.srodata.memsize,"a"
	.align	2
	.type	memsize, @object
	.size	memsize, 4
memsize:
	.word	8192
	.globl	malloc_dev
	.section	.data.malloc_dev,"aw"
	.align	2
	.type	malloc_dev, @object
	.size	malloc_dev, 20
malloc_dev:
	.word	mem_init
	.word	mem_perused
	.word	membase
	.word	memmapbase
	.byte	0
	.zero	3
	.section	.text.mem_init,"ax",@progbits
	.align	1
	.globl	mem_init
	.type	mem_init, @function
mem_init:
.LFB0:
	.file 1 "ae350_soc/lib/mm.c"
	.loc 1 54 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 55 20
	lla	a5,malloc_dev
	lw	a4,12(a5)
	.loc 1 55 2
	li	a5,1024
	slli	a5,a5,1
	mv	a2,a5
	li	a1,0
	mv	a0,a4
	call	mem_set
	.loc 1 56 20
	lla	a5,malloc_dev
	lw	a5,8(a5)
	.loc 1 56 2
	li	a4,8192
	mv	a2,a4
	li	a1,0
	mv	a0,a5
	call	mem_set
	.loc 1 57 20
	lla	a5,malloc_dev
	li	a4,1
	sb	a4,16(a5)
	.loc 1 58 1
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
.LFE0:
	.size	mem_init, .-mem_init
	.section	.text.mem_malloc,"ax",@progbits
	.align	1
	.globl	mem_malloc
	.type	mem_malloc, @function
mem_malloc:
.LFB1:
	.loc 1 62 1
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
	.loc 1 65 11
	lw	a0,-36(s0)
	call	my_malloc
	sw	a0,-20(s0)
	.loc 1 67 4
	lw	a4,-20(s0)
	li	a5,-1
	bne	a4,a5,.L3
	.loc 1 69 10
	li	a5,0
	j	.L4
.L3:
	.loc 1 73 42
	lla	a5,malloc_dev
	lw	a5,8(a5)
	.loc 1 73 18
	mv	a4,a5
	.loc 1 73 51
	lw	a5,-20(s0)
	add	a5,a4,a5
.L4:
	.loc 1 75 1
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
.LFE1:
	.size	mem_malloc, .-mem_malloc
	.section	.text.mem_free,"ax",@progbits
	.align	1
	.globl	mem_free
	.type	mem_free, @function
mem_free:
.LFB2:
	.loc 1 79 1
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
	.loc 1 82 4
	lw	a5,-36(s0)
	beq	a5,zero,.L8
	.loc 1 87 11
	lw	a5,-36(s0)
	.loc 1 87 55
	lla	a4,malloc_dev
	lw	a4,8(a4)
	.loc 1 87 9
	sub	a5,a5,a4
	sw	a5,-20(s0)
	.loc 1 89 2
	lw	a0,-20(s0)
	call	my_free
	j	.L5
.L8:
	.loc 1 84 3
	nop
.L5:
	.loc 1 90 1
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2:
	.size	mem_free, .-mem_free
	.section	.text.mem_cmp,"ax",@progbits
	.align	1
	.globl	mem_cmp
	.type	mem_cmp, @function
mem_cmp:
.LFB3:
	.loc 1 94 1
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
	.loc 1 95 6
	sw	zero,-20(s0)
	.loc 1 96 17
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	.loc 1 97 17
	lw	a5,-40(s0)
	sw	a5,-28(s0)
	.loc 1 99 7
	j	.L10
.L12:
	.loc 1 101 11
	lw	a5,-24(s0)
	addi	a4,a5,1
	sw	a4,-24(s0)
	.loc 1 101 6
	lbu	a4,0(a5)
	.loc 1 101 22
	lw	a5,-28(s0)
	addi	a3,a5,1
	sw	a3,-28(s0)
	.loc 1 101 17
	lbu	a5,0(a5)
	.loc 1 101 5
	bne	a4,a5,.L11
	j	.L10
.L11:
	.loc 1 107 9
	lw	a5,-20(s0)
	ori	a5,a5,1
	sw	a5,-20(s0)
.L10:
	.loc 1 99 9
	lw	a5,-44(s0)
	addi	a4,a5,-1
	sw	a4,-44(s0)
	.loc 1 99 8
	bne	a5,zero,.L12
	.loc 1 111 9
	lw	a5,-20(s0)
	.loc 1 112 1
	mv	a0,a5
	lw	s0,44(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	mem_cmp, .-mem_cmp
	.section	.text.mem_cpy,"ax",@progbits
	.align	1
	.globl	mem_cpy
	.type	mem_cpy, @function
mem_cpy:
.LFB4:
	.loc 1 116 1
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
	.loc 1 117 17
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 118 17
	lw	a5,-40(s0)
	sw	a5,-24(s0)
	.loc 1 120 7
	j	.L15
.L16:
	.loc 1 122 18
	lw	a4,-24(s0)
	addi	a5,a4,1
	sw	a5,-24(s0)
	.loc 1 122 8
	lw	a5,-20(s0)
	addi	a3,a5,1
	sw	a3,-20(s0)
	.loc 1 122 13
	lbu	a4,0(a4)
	.loc 1 122 11
	sb	a4,0(a5)
.L15:
	.loc 1 120 9
	lw	a5,-44(s0)
	addi	a4,a5,-1
	sw	a4,-44(s0)
	.loc 1 120 8
	bne	a5,zero,.L16
	.loc 1 124 1
	nop
	nop
	lw	s0,44(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE4:
	.size	mem_cpy, .-mem_cpy
	.section	.text.mem_set,"ax",@progbits
	.align	1
	.globl	mem_set
	.type	mem_set, @function
mem_set:
.LFB5:
	.loc 1 128 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,44(sp)
	.cfi_offset 8, -4
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	mv	a5,a1
	sw	a2,-44(s0)
	sb	a5,-37(s0)
	.loc 1 129 17
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 131 7
	j	.L18
.L19:
	.loc 1 133 6
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 1 133 9
	lbu	a4,-37(s0)
	sb	a4,0(a5)
.L18:
	.loc 1 131 13
	lw	a5,-44(s0)
	addi	a4,a5,-1
	sw	a4,-44(s0)
	.loc 1 131 8
	bne	a5,zero,.L19
	.loc 1 135 1
	nop
	nop
	lw	s0,44(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE5:
	.size	mem_set, .-mem_set
	.section	.text.mem_perused,"ax",@progbits
	.align	1
	.type	mem_perused, @function
mem_perused:
.LFB6:
	.loc 1 139 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 140 15
	sw	zero,-20(s0)
	.loc 1 143 8
	sw	zero,-24(s0)
	.loc 1 143 2
	j	.L21
.L23:
	.loc 1 145 16
	lla	a5,malloc_dev
	lw	a4,12(a5)
	.loc 1 145 23
	lw	a5,-24(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 1 145 5
	beq	a5,zero,.L22
	.loc 1 147 8
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L22:
	.loc 1 143 28 discriminator 2
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L21:
	.loc 1 143 14 discriminator 1
	li	a5,1024
	lw	a4,-24(s0)
	bltu	a4,a5,.L23
	.loc 1 151 14
	lw	a4,-20(s0)
	li	a5,100
	mul	a4,a4,a5
	.loc 1 151 19
	li	a5,1024
	divu	a5,a4,a5
	andi	a5,a5,0xff
	.loc 1 152 1
	mv	a0,a5
	lw	s0,28(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	mem_perused, .-mem_perused
	.section	.text.my_malloc,"ax",@progbits
	.align	1
	.type	my_malloc, @function
my_malloc:
.LFB7:
	.loc 1 156 1
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
	.loc 1 157 14
	sw	zero,-20(s0)
	.loc 1 159 15
	sw	zero,-28(s0)
	.loc 1 162 16
	lla	a5,malloc_dev
	lbu	a5,16(a5)
	.loc 1 162 4
	bne	a5,zero,.L26
	.loc 1 164 13
	lla	a5,malloc_dev
	lw	a5,0(a5)
	.loc 1 164 3
	jalr	a5
.LVL0:
.L26:
	.loc 1 167 4
	lw	a5,-36(s0)
	bne	a5,zero,.L27
	.loc 1 169 10
	li	a5,-1
	j	.L28
.L27:
	.loc 1 172 14
	li	a5,8
	.loc 1 172 8
	lw	a4,-36(s0)
	divu	a5,a4,a5
	sw	a5,-24(s0)
	.loc 1 173 9
	li	a5,8
	lw	a4,-36(s0)
	remu	a5,a4,a5
	.loc 1 173 4
	beq	a5,zero,.L29
	.loc 1 175 8
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L29:
	.loc 1 178 26
	li	a5,1024
	addi	a5,a5,-1
	.loc 1 178 13
	sw	a5,-20(s0)
	.loc 1 178 2
	j	.L30
.L36:
	.loc 1 180 17
	lla	a5,malloc_dev
	lw	a4,12(a5)
	.loc 1 180 24
	lw	a5,-20(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 1 180 5
	bne	a5,zero,.L31
	.loc 1 182 9
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
	j	.L32
.L31:
	.loc 1 186 10
	sw	zero,-28(s0)
.L32:
	.loc 1 189 5
	lw	a4,-28(s0)
	lw	a5,-24(s0)
	bne	a4,a5,.L33
	.loc 1 191 10
	sw	zero,-32(s0)
	.loc 1 191 4
	j	.L34
.L35:
	.loc 1 193 15
	lla	a5,malloc_dev
	lw	a4,12(a5)
	.loc 1 193 29
	lw	a3,-20(s0)
	lw	a5,-32(s0)
	add	a5,a3,a5
	.loc 1 193 22
	add	a5,a4,a5
	.loc 1 193 33
	lw	a4,-24(s0)
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 191 25 discriminator 3
	lw	a5,-32(s0)
	addi	a5,a5,1
	sw	a5,-32(s0)
.L34:
	.loc 1 191 16 discriminator 1
	lw	a4,-32(s0)
	lw	a5,-24(s0)
	bltu	a4,a5,.L35
	.loc 1 196 18
	lw	a4,-20(s0)
	li	a5,8
	mul	a5,a4,a5
	j	.L28
.L33:
	.loc 1 178 48 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
.L30:
	.loc 1 178 37 discriminator 1
	lw	a5,-20(s0)
	bge	a5,zero,.L36
	.loc 1 200 9
	li	a5,-1
.L28:
	.loc 1 201 1
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
.LFE7:
	.size	my_malloc, .-my_malloc
	.section	.text.my_free,"ax",@progbits
	.align	1
	.type	my_free, @function
my_free:
.LFB8:
	.loc 1 205 1
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
	.loc 1 208 16
	lla	a5,malloc_dev
	lbu	a5,16(a5)
	.loc 1 208 4
	bne	a5,zero,.L38
	.loc 1 210 13
	lla	a5,malloc_dev
	lw	a5,0(a5)
	.loc 1 210 3
	jalr	a5
.LVL1:
	.loc 1 211 10
	li	a5,1
	j	.L39
.L38:
	.loc 1 214 12
	li	a5,8192
	.loc 1 214 4
	lw	a4,-36(s0)
	bgeu	a4,a5,.L40
.LBB2:
	.loc 1 216 21
	li	a5,8
	lw	a4,-36(s0)
	divu	a5,a4,a5
	.loc 1 216 7
	sw	a5,-24(s0)
	.loc 1 217 25
	lla	a5,malloc_dev
	lw	a4,12(a5)
	.loc 1 217 32
	lw	a5,-24(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 1 217 7
	sw	a5,-28(s0)
	.loc 1 219 9
	sw	zero,-20(s0)
	.loc 1 219 3
	j	.L41
.L42:
	.loc 1 221 14
	lla	a5,malloc_dev
	lw	a5,12(a5)
	.loc 1 221 27
	lw	a3,-24(s0)
	lw	a4,-20(s0)
	add	a4,a3,a4
	.loc 1 221 21
	add	a5,a5,a4
	.loc 1 221 31
	sb	zero,0(a5)
	.loc 1 219 24 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L41:
	.loc 1 219 15 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-28(s0)
	blt	a4,a5,.L42
	.loc 1 224 10
	li	a5,0
	j	.L39
.L40:
.LBE2:
	.loc 1 228 10
	li	a5,2
.L39:
	.loc 1 230 1
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
.LFE8:
	.size	my_free, .-my_free
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x3a8
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0xd
	.4byte	.LASF383
	.byte	0x1d
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0xe
	.4byte	.LASF384
	.byte	0x14
	.byte	0x1
	.byte	0x1a
	.byte	0x8
	.4byte	0x74
	.uleb128 0x4
	.4byte	.LASF352
	.byte	0x1c
	.byte	0x9
	.4byte	0x75
	.byte	0
	.uleb128 0x4
	.4byte	.LASF353
	.byte	0x1d
	.byte	0x12
	.4byte	0x86
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF354
	.byte	0x1e
	.byte	0x11
	.4byte	0x8b
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF355
	.byte	0x1f
	.byte	0x11
	.4byte	0x8b
	.byte	0xc
	.uleb128 0x4
	.4byte	.LASF356
	.byte	0x20
	.byte	0x10
	.4byte	0x7f
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.uleb128 0x7
	.4byte	0x74
	.uleb128 0x10
	.4byte	0x7f
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF357
	.uleb128 0x7
	.4byte	0x7a
	.uleb128 0x7
	.4byte	0x7f
	.uleb128 0x9
	.4byte	0x7f
	.4byte	0xa1
	.uleb128 0xa
	.4byte	0xa1
	.2byte	0x1fff
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.4byte	.LASF358
	.uleb128 0x11
	.4byte	0xa1
	.uleb128 0x3
	.4byte	.LASF354
	.byte	0x23
	.byte	0xf
	.4byte	0x90
	.uleb128 0x5
	.byte	0x3
	.4byte	membase
	.uleb128 0x9
	.4byte	0x7f
	.4byte	0xcf
	.uleb128 0xa
	.4byte	0xa1
	.2byte	0x3ff
	.byte	0
	.uleb128 0x3
	.4byte	.LASF359
	.byte	0x24
	.byte	0xf
	.4byte	0xbe
	.uleb128 0x5
	.byte	0x3
	.4byte	memmapbase
	.uleb128 0x3
	.4byte	.LASF360
	.byte	0x26
	.byte	0x14
	.4byte	0xa8
	.uleb128 0x5
	.byte	0x3
	.4byte	memtblsize
	.uleb128 0x3
	.4byte	.LASF361
	.byte	0x27
	.byte	0x14
	.4byte	0xa8
	.uleb128 0x5
	.byte	0x3
	.4byte	memblksize
	.uleb128 0x3
	.4byte	.LASF362
	.byte	0x28
	.byte	0x14
	.4byte	0xa8
	.uleb128 0x5
	.byte	0x3
	.4byte	memsize
	.uleb128 0x3
	.4byte	.LASF363
	.byte	0x2a
	.byte	0x16
	.4byte	0x2a
	.uleb128 0x5
	.byte	0x3
	.4byte	malloc_dev
	.uleb128 0xb
	.4byte	.LASF366
	.byte	0xcc
	.byte	0x16
	.4byte	0x7f
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x17e
	.uleb128 0x5
	.4byte	.LASF368
	.byte	0xcc
	.byte	0x2b
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.string	"i"
	.byte	0xce
	.byte	0x6
	.4byte	0x17e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x1
	.4byte	.LASF364
	.byte	0xd8
	.byte	0x7
	.4byte	0x17e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF365
	.byte	0xd9
	.byte	0x7
	.4byte	0x17e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xb
	.4byte	.LASF367
	.byte	0x9b
	.byte	0x15
	.4byte	0xa1
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e3
	.uleb128 0x5
	.4byte	.LASF369
	.byte	0x9b
	.byte	0x2c
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF368
	.byte	0x9d
	.byte	0xe
	.4byte	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF365
	.byte	0x9e
	.byte	0xf
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF370
	.byte	0x9f
	.byte	0xf
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x6
	.string	"i"
	.byte	0xa0
	.byte	0xf
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.4byte	.LASF371
	.uleb128 0x14
	.4byte	.LASF372
	.byte	0x1
	.byte	0x8a
	.byte	0x16
	.4byte	0x7f
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x21f
	.uleb128 0x1
	.4byte	.LASF373
	.byte	0x8c
	.byte	0xf
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.string	"i"
	.byte	0x8d
	.byte	0xf
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xc
	.4byte	.LASF375
	.byte	0x7f
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x267
	.uleb128 0x2
	.string	"s"
	.byte	0x7f
	.byte	0x14
	.4byte	0x267
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"c"
	.byte	0x7f
	.byte	0x25
	.4byte	0x7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x5
	.4byte	.LASF374
	.byte	0x7f
	.byte	0x35
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.string	"xs"
	.byte	0x81
	.byte	0x11
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF376
	.byte	0x73
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2c2
	.uleb128 0x2
	.string	"des"
	.byte	0x73
	.byte	0x14
	.4byte	0x267
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"src"
	.byte	0x73
	.byte	0x1f
	.4byte	0x267
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"n"
	.byte	0x73
	.byte	0x31
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF377
	.byte	0x75
	.byte	0x11
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF378
	.byte	0x76
	.byte	0x11
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x16
	.4byte	.LASF381
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.4byte	0x17e
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x32f
	.uleb128 0x2
	.string	"des"
	.byte	0x5d
	.byte	0x13
	.4byte	0x267
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"src"
	.byte	0x5d
	.byte	0x1e
	.4byte	0x267
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"n"
	.byte	0x5d
	.byte	0x30
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF379
	.byte	0x5f
	.byte	0x6
	.4byte	0x17e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF377
	.byte	0x60
	.byte	0x11
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF378
	.byte	0x61
	.byte	0x11
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x17
	.4byte	.LASF380
	.byte	0x1
	.byte	0x4e
	.byte	0x6
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x362
	.uleb128 0x2
	.string	"ptr"
	.byte	0x4e
	.byte	0x15
	.4byte	0x267
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF368
	.byte	0x50
	.byte	0xf
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x18
	.4byte	.LASF382
	.byte	0x1
	.byte	0x3d
	.byte	0x7
	.4byte	0x267
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x399
	.uleb128 0x5
	.4byte	.LASF369
	.byte	0x3d
	.byte	0x1f
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF368
	.byte	0x3f
	.byte	0xf
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x19
	.4byte	.LASF385
	.byte	0x1
	.byte	0x35
	.byte	0x6
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
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
	.uleb128 0x3
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
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
	.uleb128 0xf
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x5c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
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
	.4byte	.LFB0
	.uleb128 .LFE0-.LFB0
	.byte	0x7
	.4byte	.LFB1
	.uleb128 .LFE1-.LFB1
	.byte	0x7
	.4byte	.LFB2
	.uleb128 .LFE2-.LFB2
	.byte	0x7
	.4byte	.LFB3
	.uleb128 .LFE3-.LFB3
	.byte	0x7
	.4byte	.LFB4
	.uleb128 .LFE4-.LFB4
	.byte	0x7
	.4byte	.LFB5
	.uleb128 .LFE5-.LFB5
	.byte	0x7
	.4byte	.LFB6
	.uleb128 .LFE6-.LFB6
	.byte	0x7
	.4byte	.LFB7
	.uleb128 .LFE7-.LFB7
	.byte	0x7
	.4byte	.LFB8
	.uleb128 .LFE8-.LFB8
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
	.file 2 "ae350_soc/lib/../../ae350_soc/lib/mm.h"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x2
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF348
	.byte	0x4
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF349
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF350
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF351
	.byte	0x4
	.byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF208:
	.string	"__FLT16_NORM_MAX__ 6.55040000000000000000000000000000000e+4F16"
.LASF371:
	.string	"long int"
.LASF247:
	.string	"__FLT64_HAS_QUIET_NAN__ 1"
.LASF376:
	.string	"mem_cpy"
.LASF229:
	.string	"__FLT32_HAS_INFINITY__ 1"
.LASF65:
	.string	"__UINT_FAST8_TYPE__ unsigned int"
.LASF237:
	.string	"__FLT64_MAX_EXP__ 1024"
.LASF152:
	.string	"__FLT_MIN_10_EXP__ (-37)"
.LASF294:
	.string	"__FLT64X_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F64x"
.LASF270:
	.string	"__FLT32X_MAX_EXP__ 1024"
.LASF131:
	.string	"__INT_FAST16_WIDTH__ 32"
.LASF380:
	.string	"mem_free"
.LASF293:
	.string	"__FLT64X_EPSILON__ 1.92592994438723585305597794258492732e-34F64x"
.LASF177:
	.string	"__DBL_DENORM_MIN__ ((double)4.94065645841246544176568792868221372e-324L)"
.LASF295:
	.string	"__FLT64X_HAS_DENORM__ 1"
.LASF216:
	.string	"__FLT32_MANT_DIG__ 24"
.LASF250:
	.string	"__FLT128_MANT_DIG__ 113"
.LASF183:
	.string	"__LDBL_MANT_DIG__ 113"
.LASF334:
	.string	"__riscv_cmodel_medany 1"
.LASF272:
	.string	"__FLT32X_DECIMAL_DIG__ 17"
.LASF168:
	.string	"__DBL_MIN_EXP__ (-1021)"
.LASF87:
	.string	"__LONG_LONG_WIDTH__ 64"
.LASF309:
	.string	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2"
.LASF346:
	.string	"_POSIX_C_SOURCE 1"
.LASF273:
	.string	"__FLT32X_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF321:
	.string	"__SIZEOF_WINT_T__ 4"
.LASF322:
	.string	"__SIZEOF_PTRDIFF_T__ 4"
.LASF80:
	.string	"__WINT_MIN__ 0U"
.LASF8:
	.string	"__GNUC_MINOR__ 2"
.LASF224:
	.string	"__FLT32_NORM_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF358:
	.string	"unsigned int"
.LASF349:
	.string	"MEM_BLOCK_SIZE 8"
.LASF242:
	.string	"__FLT64_MIN__ 2.22507385850720138309023271733240406e-308F64"
.LASF123:
	.string	"__UINT16_C(c) c"
.LASF25:
	.string	"__SIZEOF_SIZE_T__ 4"
.LASF42:
	.string	"__CHAR16_TYPE__ short unsigned int"
.LASF356:
	.string	"memrdy"
.LASF330:
	.string	"__riscv_flen 64"
.LASF199:
	.string	"__LDBL_IS_IEC_60559__ 1"
.LASF128:
	.string	"__INT_FAST8_MAX__ 0x7fffffff"
.LASF29:
	.string	"__ORDER_BIG_ENDIAN__ 4321"
.LASF377:
	.string	"xdes"
.LASF166:
	.string	"__DBL_MANT_DIG__ 53"
.LASF60:
	.string	"__UINT_LEAST64_TYPE__ long long unsigned int"
.LASF223:
	.string	"__FLT32_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF79:
	.string	"__WINT_MAX__ 0xffffffffU"
.LASF14:
	.string	"__ATOMIC_RELEASE 3"
.LASF201:
	.string	"__FLT16_DIG__ 3"
.LASF303:
	.string	"__CHAR_UNSIGNED__ 1"
.LASF46:
	.string	"__INT16_TYPE__ short int"
.LASF215:
	.string	"__FLT16_IS_IEC_60559__ 1"
.LASF287:
	.string	"__FLT64X_MAX_EXP__ 16384"
.LASF12:
	.string	"__ATOMIC_SEQ_CST 5"
.LASF21:
	.string	"__SIZEOF_SHORT__ 2"
.LASF354:
	.string	"membase"
.LASF108:
	.string	"__INT_LEAST8_MAX__ 0x7f"
.LASF53:
	.string	"__INT_LEAST8_TYPE__ signed char"
.LASF95:
	.string	"__UINTMAX_C(c) c ## ULL"
.LASF169:
	.string	"__DBL_MIN_10_EXP__ (-307)"
.LASF31:
	.string	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF193:
	.string	"__LDBL_MIN__ 3.36210314311209350626267781732175260e-4932L"
.LASF219:
	.string	"__FLT32_MIN_10_EXP__ (-37)"
.LASF384:
	.string	"_m_malloc_dev"
.LASF78:
	.string	"__WCHAR_MIN__ (-__WCHAR_MAX__ - 1)"
.LASF353:
	.string	"perused"
.LASF111:
	.string	"__INT_LEAST16_MAX__ 0x7fff"
.LASF72:
	.string	"__SCHAR_MAX__ 0x7f"
.LASF195:
	.string	"__LDBL_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966L"
.LASF328:
	.string	"__riscv_muldiv 1"
.LASF234:
	.string	"__FLT64_DIG__ 15"
.LASF11:
	.string	"__ATOMIC_RELAXED 0"
.LASF82:
	.string	"__SIZE_MAX__ 0xffffffffU"
.LASF366:
	.string	"my_free"
.LASF279:
	.string	"__FLT32X_HAS_INFINITY__ 1"
.LASF263:
	.string	"__FLT128_HAS_INFINITY__ 1"
.LASF57:
	.string	"__UINT_LEAST8_TYPE__ unsigned char"
.LASF64:
	.string	"__INT_FAST64_TYPE__ long long int"
.LASF109:
	.string	"__INT8_C(c) c"
.LASF231:
	.string	"__FP_FAST_FMAF32 1"
.LASF257:
	.string	"__FLT128_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF113:
	.string	"__INT_LEAST16_WIDTH__ 16"
.LASF249:
	.string	"__FLT64_IS_IEC_60559__ 1"
.LASF70:
	.string	"__UINTPTR_TYPE__ unsigned int"
.LASF228:
	.string	"__FLT32_HAS_DENORM__ 1"
.LASF369:
	.string	"size"
.LASF304:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1"
.LASF285:
	.string	"__FLT64X_MIN_EXP__ (-16381)"
.LASF134:
	.string	"__INT_FAST64_MAX__ 0x7fffffffffffffffLL"
.LASF164:
	.string	"__FP_FAST_FMAF 1"
.LASF150:
	.string	"__FLT_DIG__ 6"
.LASF130:
	.string	"__INT_FAST16_MAX__ 0x7fffffff"
.LASF200:
	.string	"__FLT16_MANT_DIG__ 11"
.LASF374:
	.string	"count"
.LASF364:
	.string	"index"
.LASF243:
	.string	"__FLT64_EPSILON__ 2.22044604925031308084726333618164062e-16F64"
.LASF143:
	.string	"__GCC_IEC_559 2"
.LASF252:
	.string	"__FLT128_MIN_EXP__ (-16381)"
.LASF81:
	.string	"__PTRDIFF_MAX__ 0x7fffffff"
.LASF230:
	.string	"__FLT32_HAS_QUIET_NAN__ 1"
.LASF122:
	.string	"__UINT_LEAST16_MAX__ 0xffff"
.LASF222:
	.string	"__FLT32_DECIMAL_DIG__ 9"
.LASF7:
	.string	"__GNUC__ 13"
.LASF337:
	.string	"__riscv_m 2000000"
.LASF120:
	.string	"__UINT_LEAST8_MAX__ 0xff"
.LASF103:
	.string	"__INT64_MAX__ 0x7fffffffffffffffLL"
.LASF38:
	.string	"__WCHAR_TYPE__ int"
.LASF100:
	.string	"__INT8_MAX__ 0x7f"
.LASF55:
	.string	"__INT_LEAST32_TYPE__ long int"
.LASF254:
	.string	"__FLT128_MAX_EXP__ 16384"
.LASF126:
	.string	"__UINT_LEAST64_MAX__ 0xffffffffffffffffULL"
.LASF148:
	.string	"__FLT_RADIX__ 2"
.LASF277:
	.string	"__FLT32X_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F32x"
.LASF24:
	.string	"__SIZEOF_LONG_DOUBLE__ 16"
.LASF180:
	.string	"__DBL_HAS_QUIET_NAN__ 1"
.LASF298:
	.string	"__FLT64X_IS_IEC_60559__ 1"
.LASF61:
	.string	"__INT_FAST8_TYPE__ int"
.LASF246:
	.string	"__FLT64_HAS_INFINITY__ 1"
.LASF187:
	.string	"__LDBL_MAX_EXP__ 16384"
.LASF313:
	.string	"__GCC_ATOMIC_INT_LOCK_FREE 2"
.LASF92:
	.string	"__INTMAX_MAX__ 0x7fffffffffffffffLL"
.LASF363:
	.string	"malloc_dev"
.LASF288:
	.string	"__FLT64X_MAX_10_EXP__ 4932"
.LASF238:
	.string	"__FLT64_MAX_10_EXP__ 308"
.LASF28:
	.string	"__ORDER_LITTLE_ENDIAN__ 1234"
.LASF373:
	.string	"used"
.LASF331:
	.string	"__riscv_fdiv 1"
.LASF284:
	.string	"__FLT64X_DIG__ 33"
.LASF125:
	.string	"__UINT32_C(c) c ## UL"
.LASF236:
	.string	"__FLT64_MIN_10_EXP__ (-307)"
.LASF382:
	.string	"mem_malloc"
.LASF211:
	.string	"__FLT16_DENORM_MIN__ 5.96046447753906250000000000000000000e-8F16"
.LASF368:
	.string	"offset"
.LASF286:
	.string	"__FLT64X_MIN_10_EXP__ (-4931)"
.LASF97:
	.string	"__SIG_ATOMIC_MAX__ 0x7fffffff"
.LASF136:
	.string	"__UINT_FAST8_MAX__ 0xffffffffU"
.LASF255:
	.string	"__FLT128_MAX_10_EXP__ 4932"
.LASF259:
	.string	"__FLT128_MIN__ 3.36210314311209350626267781732175260e-4932F128"
.LASF324:
	.string	"__riscv_compressed 1"
.LASF74:
	.string	"__INT_MAX__ 0x7fffffff"
.LASF173:
	.string	"__DBL_MAX__ ((double)1.79769313486231570814527423731704357e+308L)"
.LASF281:
	.string	"__FP_FAST_FMAF32x 1"
.LASF62:
	.string	"__INT_FAST16_TYPE__ int"
.LASF202:
	.string	"__FLT16_MIN_EXP__ (-13)"
.LASF251:
	.string	"__FLT128_DIG__ 33"
.LASF50:
	.string	"__UINT16_TYPE__ short unsigned int"
.LASF191:
	.string	"__LDBL_MAX__ 1.18973149535723176508575932662800702e+4932L"
.LASF88:
	.string	"__WCHAR_WIDTH__ 32"
.LASF308:
	.string	"__GCC_ATOMIC_CHAR_LOCK_FREE 2"
.LASF341:
	.string	"__riscv_c 2000000"
.LASF76:
	.string	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL"
.LASF338:
	.string	"__riscv_a 2001000"
.LASF154:
	.string	"__FLT_MAX_10_EXP__ 38"
.LASF194:
	.string	"__LDBL_EPSILON__ 1.92592994438723585305597794258492732e-34L"
.LASF276:
	.string	"__FLT32X_EPSILON__ 2.22044604925031308084726333618164062e-16F32x"
.LASF204:
	.string	"__FLT16_MAX_EXP__ 16"
.LASF302:
	.string	"__NO_INLINE__ 1"
.LASF339:
	.string	"__riscv_f 2002000"
.LASF149:
	.string	"__FLT_MANT_DIG__ 24"
.LASF239:
	.string	"__FLT64_DECIMAL_DIG__ 17"
.LASF306:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1"
.LASF372:
	.string	"mem_perused"
.LASF291:
	.string	"__FLT64X_NORM_MAX__ 1.18973149535723176508575932662800702e+4932F64x"
.LASF137:
	.string	"__UINT_FAST16_MAX__ 0xffffffffU"
.LASF66:
	.string	"__UINT_FAST16_TYPE__ unsigned int"
.LASF156:
	.string	"__FLT_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF379:
	.string	"iRet"
.LASF218:
	.string	"__FLT32_MIN_EXP__ (-125)"
.LASF186:
	.string	"__LDBL_MIN_10_EXP__ (-4931)"
.LASF217:
	.string	"__FLT32_DIG__ 6"
.LASF71:
	.string	"__GXX_ABI_VERSION 1018"
.LASF203:
	.string	"__FLT16_MIN_10_EXP__ (-4)"
.LASF245:
	.string	"__FLT64_HAS_DENORM__ 1"
.LASF145:
	.string	"__FLT_EVAL_METHOD__ 0"
.LASF278:
	.string	"__FLT32X_HAS_DENORM__ 1"
.LASF117:
	.string	"__INT_LEAST64_MAX__ 0x7fffffffffffffffLL"
.LASF311:
	.string	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2"
.LASF335:
	.string	"__riscv_arch_test 1"
.LASF325:
	.string	"__riscv_atomic 1"
.LASF385:
	.string	"mem_init"
.LASF104:
	.string	"__UINT8_MAX__ 0xff"
.LASF105:
	.string	"__UINT16_MAX__ 0xffff"
.LASF383:
	.string	"GNU C17 13.2.0 -mabi=ilp32d -mcmodel=medany -mtune=rocket -misa-spec=20191213 -march=rv32imafdc_zicsr -g3 -O0 -ffreestanding -flax-vector-conversions -fno-common -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF209:
	.string	"__FLT16_MIN__ 6.10351562500000000000000000000000000e-5F16"
.LASF96:
	.string	"__INTMAX_WIDTH__ 64"
.LASF182:
	.string	"__DBL_IS_IEC_60559__ 1"
.LASF361:
	.string	"memblksize"
.LASF54:
	.string	"__INT_LEAST16_TYPE__ short int"
.LASF220:
	.string	"__FLT32_MAX_EXP__ 128"
.LASF167:
	.string	"__DBL_DIG__ 15"
.LASF10:
	.string	"__VERSION__ \"13.2.0\""
.LASF314:
	.string	"__GCC_ATOMIC_LONG_LOCK_FREE 2"
.LASF267:
	.string	"__FLT32X_DIG__ 15"
.LASF266:
	.string	"__FLT32X_MANT_DIG__ 53"
.LASF189:
	.string	"__DECIMAL_DIG__ 36"
.LASF26:
	.string	"__CHAR_BIT__ 8"
.LASF175:
	.string	"__DBL_MIN__ ((double)2.22507385850720138309023271733240406e-308L)"
.LASF141:
	.string	"__INTPTR_WIDTH__ 32"
.LASF307:
	.string	"__GCC_ATOMIC_BOOL_LOCK_FREE 2"
.LASF17:
	.string	"__FINITE_MATH_ONLY__ 0"
.LASF240:
	.string	"__FLT64_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF316:
	.string	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1"
.LASF290:
	.string	"__FLT64X_MAX__ 1.18973149535723176508575932662800702e+4932F64x"
.LASF275:
	.string	"__FLT32X_MIN__ 2.22507385850720138309023271733240406e-308F32x"
.LASF112:
	.string	"__INT16_C(c) c"
.LASF318:
	.string	"__GCC_HAVE_DWARF2_CFI_ASM 1"
.LASF107:
	.string	"__UINT64_MAX__ 0xffffffffffffffffULL"
.LASF37:
	.string	"__PTRDIFF_TYPE__ int"
.LASF132:
	.string	"__INT_FAST32_MAX__ 0x7fffffff"
.LASF297:
	.string	"__FLT64X_HAS_QUIET_NAN__ 1"
.LASF162:
	.string	"__FLT_HAS_INFINITY__ 1"
.LASF213:
	.string	"__FLT16_HAS_INFINITY__ 1"
.LASF2:
	.string	"__STDC__ 1"
.LASF19:
	.string	"__SIZEOF_LONG__ 4"
.LASF170:
	.string	"__DBL_MAX_EXP__ 1024"
.LASF16:
	.string	"__ATOMIC_CONSUME 1"
.LASF133:
	.string	"__INT_FAST32_WIDTH__ 32"
.LASF283:
	.string	"__FLT64X_MANT_DIG__ 113"
.LASF39:
	.string	"__WINT_TYPE__ unsigned int"
.LASF75:
	.string	"__LONG_MAX__ 0x7fffffffL"
.LASF101:
	.string	"__INT16_MAX__ 0x7fff"
.LASF83:
	.string	"__SCHAR_WIDTH__ 8"
.LASF362:
	.string	"memsize"
.LASF23:
	.string	"__SIZEOF_DOUBLE__ 8"
.LASF9:
	.string	"__GNUC_PATCHLEVEL__ 0"
.LASF121:
	.string	"__UINT8_C(c) c"
.LASF127:
	.string	"__UINT64_C(c) c ## ULL"
.LASF206:
	.string	"__FLT16_DECIMAL_DIG__ 5"
.LASF48:
	.string	"__INT64_TYPE__ long long int"
.LASF157:
	.string	"__FLT_NORM_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF4:
	.string	"__STDC_UTF_16__ 1"
.LASF232:
	.string	"__FLT32_IS_IEC_60559__ 1"
.LASF333:
	.string	"__riscv_float_abi_double 1"
.LASF197:
	.string	"__LDBL_HAS_INFINITY__ 1"
.LASF68:
	.string	"__UINT_FAST64_TYPE__ long long unsigned int"
.LASF106:
	.string	"__UINT32_MAX__ 0xffffffffUL"
.LASF144:
	.string	"__GCC_IEC_559_COMPLEX 2"
.LASF192:
	.string	"__LDBL_NORM_MAX__ 1.18973149535723176508575932662800702e+4932L"
.LASF320:
	.string	"__SIZEOF_WCHAR_T__ 4"
.LASF253:
	.string	"__FLT128_MIN_10_EXP__ (-4931)"
.LASF32:
	.string	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF305:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1"
.LASF91:
	.string	"__SIZE_WIDTH__ 32"
.LASF227:
	.string	"__FLT32_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F32"
.LASF344:
	.string	"USE_M_TIME 1"
.LASF98:
	.string	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)"
.LASF86:
	.string	"__LONG_WIDTH__ 32"
.LASF13:
	.string	"__ATOMIC_ACQUIRE 2"
.LASF43:
	.string	"__CHAR32_TYPE__ long unsigned int"
.LASF375:
	.string	"mem_set"
.LASF300:
	.string	"__USER_LABEL_PREFIX__ "
.LASF212:
	.string	"__FLT16_HAS_DENORM__ 1"
.LASF59:
	.string	"__UINT_LEAST32_TYPE__ long unsigned int"
.LASF41:
	.string	"__UINTMAX_TYPE__ long long unsigned int"
.LASF99:
	.string	"__SIG_ATOMIC_WIDTH__ 32"
.LASF370:
	.string	"cmemb"
.LASF342:
	.string	"__riscv_zicsr 2000000"
.LASF73:
	.string	"__SHRT_MAX__ 0x7fff"
.LASF30:
	.string	"__ORDER_PDP_ENDIAN__ 3412"
.LASF58:
	.string	"__UINT_LEAST16_TYPE__ short unsigned int"
.LASF345:
	.string	"NO_INIT 1"
.LASF155:
	.string	"__FLT_DECIMAL_DIG__ 9"
.LASF102:
	.string	"__INT32_MAX__ 0x7fffffffL"
.LASF185:
	.string	"__LDBL_MIN_EXP__ (-16381)"
.LASF89:
	.string	"__WINT_WIDTH__ 32"
.LASF292:
	.string	"__FLT64X_MIN__ 3.36210314311209350626267781732175260e-4932F64x"
.LASF299:
	.string	"__REGISTER_PREFIX__ "
.LASF226:
	.string	"__FLT32_EPSILON__ 1.19209289550781250000000000000000000e-7F32"
.LASF336:
	.string	"__riscv_i 2001000"
.LASF264:
	.string	"__FLT128_HAS_QUIET_NAN__ 1"
.LASF119:
	.string	"__INT_LEAST64_WIDTH__ 64"
.LASF47:
	.string	"__INT32_TYPE__ long int"
.LASF269:
	.string	"__FLT32X_MIN_10_EXP__ (-307)"
.LASF67:
	.string	"__UINT_FAST32_TYPE__ unsigned int"
.LASF296:
	.string	"__FLT64X_HAS_INFINITY__ 1"
.LASF181:
	.string	"__FP_FAST_FMA 1"
.LASF348:
	.string	"__MM_H__ "
.LASF124:
	.string	"__UINT_LEAST32_MAX__ 0xffffffffUL"
.LASF327:
	.string	"__riscv_div 1"
.LASF198:
	.string	"__LDBL_HAS_QUIET_NAN__ 1"
.LASF45:
	.string	"__INT8_TYPE__ signed char"
.LASF248:
	.string	"__FP_FAST_FMAF64 1"
.LASF139:
	.string	"__UINT_FAST64_MAX__ 0xffffffffffffffffULL"
.LASF138:
	.string	"__UINT_FAST32_MAX__ 0xffffffffU"
.LASF118:
	.string	"__INT64_C(c) c ## LL"
.LASF260:
	.string	"__FLT128_EPSILON__ 1.92592994438723585305597794258492732e-34F128"
.LASF20:
	.string	"__SIZEOF_LONG_LONG__ 8"
.LASF210:
	.string	"__FLT16_EPSILON__ 9.76562500000000000000000000000000000e-4F16"
.LASF49:
	.string	"__UINT8_TYPE__ unsigned char"
.LASF84:
	.string	"__SHRT_WIDTH__ 16"
.LASF241:
	.string	"__FLT64_NORM_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF329:
	.string	"__riscv_xlen 32"
.LASF56:
	.string	"__INT_LEAST64_TYPE__ long long int"
.LASF51:
	.string	"__UINT32_TYPE__ long unsigned int"
.LASF33:
	.string	"__SIZEOF_POINTER__ 4"
.LASF110:
	.string	"__INT_LEAST8_WIDTH__ 8"
.LASF77:
	.string	"__WCHAR_MAX__ 0x7fffffff"
.LASF160:
	.string	"__FLT_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F"
.LASF85:
	.string	"__INT_WIDTH__ 32"
.LASF256:
	.string	"__FLT128_DECIMAL_DIG__ 36"
.LASF317:
	.string	"__GCC_ATOMIC_POINTER_LOCK_FREE 2"
.LASF359:
	.string	"memmapbase"
.LASF352:
	.string	"init"
.LASF360:
	.string	"memtblsize"
.LASF3:
	.string	"__STDC_VERSION__ 201710L"
.LASF310:
	.string	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2"
.LASF332:
	.string	"__riscv_fsqrt 1"
.LASF94:
	.string	"__UINTMAX_MAX__ 0xffffffffffffffffULL"
.LASF6:
	.string	"__STDC_HOSTED__ 0"
.LASF381:
	.string	"mem_cmp"
.LASF140:
	.string	"__INTPTR_MAX__ 0x7fffffff"
.LASF365:
	.string	"nmemb"
.LASF214:
	.string	"__FLT16_HAS_QUIET_NAN__ 1"
.LASF340:
	.string	"__riscv_d 2002000"
.LASF351:
	.string	"MEM_ALLOC_TABLE_SIZE MEM_MAX_SIZE/MEM_BLOCK_SIZE"
.LASF315:
	.string	"__GCC_ATOMIC_LLONG_LOCK_FREE 1"
.LASF153:
	.string	"__FLT_MAX_EXP__ 128"
.LASF15:
	.string	"__ATOMIC_ACQ_REL 4"
.LASF184:
	.string	"__LDBL_DIG__ 33"
.LASF357:
	.string	"unsigned char"
.LASF326:
	.string	"__riscv_mul 1"
.LASF158:
	.string	"__FLT_MIN__ 1.17549435082228750796873653722224568e-38F"
.LASF69:
	.string	"__INTPTR_TYPE__ int"
.LASF147:
	.string	"__DEC_EVAL_METHOD__ 2"
.LASF190:
	.string	"__LDBL_DECIMAL_DIG__ 36"
.LASF116:
	.string	"__INT_LEAST32_WIDTH__ 32"
.LASF35:
	.string	"__GNUC_WIDE_EXECUTION_CHARSET_NAME \"UTF-32LE\""
.LASF36:
	.string	"__SIZE_TYPE__ unsigned int"
.LASF235:
	.string	"__FLT64_MIN_EXP__ (-1021)"
.LASF312:
	.string	"__GCC_ATOMIC_SHORT_LOCK_FREE 2"
.LASF90:
	.string	"__PTRDIFF_WIDTH__ 32"
.LASF282:
	.string	"__FLT32X_IS_IEC_60559__ 1"
.LASF159:
	.string	"__FLT_EPSILON__ 1.19209289550781250000000000000000000e-7F"
.LASF268:
	.string	"__FLT32X_MIN_EXP__ (-1021)"
.LASF378:
	.string	"xsrc"
.LASF146:
	.string	"__FLT_EVAL_METHOD_TS_18661_3__ 0"
.LASF179:
	.string	"__DBL_HAS_INFINITY__ 1"
.LASF63:
	.string	"__INT_FAST32_TYPE__ int"
.LASF163:
	.string	"__FLT_HAS_QUIET_NAN__ 1"
.LASF18:
	.string	"__SIZEOF_INT__ 4"
.LASF355:
	.string	"memmap"
.LASF40:
	.string	"__INTMAX_TYPE__ long long int"
.LASF323:
	.string	"__riscv 1"
.LASF174:
	.string	"__DBL_NORM_MAX__ ((double)1.79769313486231570814527423731704357e+308L)"
.LASF93:
	.string	"__INTMAX_C(c) c ## LL"
.LASF52:
	.string	"__UINT64_TYPE__ long long unsigned int"
.LASF280:
	.string	"__FLT32X_HAS_QUIET_NAN__ 1"
.LASF171:
	.string	"__DBL_MAX_10_EXP__ 308"
.LASF301:
	.string	"__GNUC_STDC_INLINE__ 1"
.LASF22:
	.string	"__SIZEOF_FLOAT__ 4"
.LASF367:
	.string	"my_malloc"
.LASF27:
	.string	"__BIGGEST_ALIGNMENT__ 16"
.LASF261:
	.string	"__FLT128_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F128"
.LASF129:
	.string	"__INT_FAST8_WIDTH__ 32"
.LASF151:
	.string	"__FLT_MIN_EXP__ (-125)"
.LASF258:
	.string	"__FLT128_NORM_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF343:
	.string	"__ELF__ 1"
.LASF350:
	.string	"MEM_MAX_SIZE 8192"
.LASF115:
	.string	"__INT32_C(c) c ## L"
.LASF207:
	.string	"__FLT16_MAX__ 6.55040000000000000000000000000000000e+4F16"
.LASF289:
	.string	"__FLT64X_DECIMAL_DIG__ 36"
.LASF271:
	.string	"__FLT32X_MAX_10_EXP__ 308"
.LASF142:
	.string	"__UINTPTR_MAX__ 0xffffffffU"
.LASF178:
	.string	"__DBL_HAS_DENORM__ 1"
.LASF205:
	.string	"__FLT16_MAX_10_EXP__ 4"
.LASF34:
	.string	"__GNUC_EXECUTION_CHARSET_NAME \"UTF-8\""
.LASF274:
	.string	"__FLT32X_NORM_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF221:
	.string	"__FLT32_MAX_10_EXP__ 38"
.LASF5:
	.string	"__STDC_UTF_32__ 1"
.LASF244:
	.string	"__FLT64_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F64"
.LASF114:
	.string	"__INT_LEAST32_MAX__ 0x7fffffffL"
.LASF188:
	.string	"__LDBL_MAX_10_EXP__ 4932"
.LASF225:
	.string	"__FLT32_MIN__ 1.17549435082228750796873653722224568e-38F32"
.LASF176:
	.string	"__DBL_EPSILON__ ((double)2.22044604925031308084726333618164062e-16L)"
.LASF319:
	.string	"__PRAGMA_REDEFINE_EXTNAME 1"
.LASF44:
	.string	"__SIG_ATOMIC_TYPE__ int"
.LASF262:
	.string	"__FLT128_HAS_DENORM__ 1"
.LASF265:
	.string	"__FLT128_IS_IEC_60559__ 1"
.LASF196:
	.string	"__LDBL_HAS_DENORM__ 1"
.LASF165:
	.string	"__FLT_IS_IEC_60559__ 1"
.LASF347:
	.string	"__RTTHREAD__ 1"
.LASF233:
	.string	"__FLT64_MANT_DIG__ 53"
.LASF161:
	.string	"__FLT_HAS_DENORM__ 1"
.LASF135:
	.string	"__INT_FAST64_WIDTH__ 64"
.LASF172:
	.string	"__DBL_DECIMAL_DIG__ 17"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/lc/git/rt-thread/bsp/gowin-riscv_ae350_soc"
.LASF0:
	.string	"ae350_soc/lib/mm.c"
	.ident	"GCC: () 13.2.0"
