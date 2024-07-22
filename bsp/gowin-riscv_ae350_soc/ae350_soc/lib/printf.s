	.file	"printf.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/lc/git/rt-thread/bsp/gowin-riscv_ae350_soc" "ae350_soc/lib/printf.c"
	.section	.text.printchar,"ax",@progbits
	.align	1
	.type	printchar, @function
printchar:
.LFB0:
	.file 1 "ae350_soc/lib/printf.c"
	.loc 1 25 1
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
	.loc 1 28 5
	lw	a5,-20(s0)
	beq	a5,zero,.L2
	.loc 1 30 4
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 30 9
	lw	a4,-24(s0)
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 31 6
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 31 3
	addi	a4,a5,1
	lw	a5,-20(s0)
	sw	a4,0(a5)
	.loc 1 37 1
	j	.L4
.L2:
	.loc 1 35 9
	lw	a0,-24(s0)
	call	outbyte
.L4:
	.loc 1 37 1
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
.LFE0:
	.size	printchar, .-printchar
	.section	.text.prints,"ax",@progbits
	.align	1
	.type	prints, @function
prints:
.LFB1:
	.loc 1 43 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	.loc 1 44 15
	li	s1,0
	.loc 1 44 23
	li	s4,32
	.loc 1 46 5
	lw	a5,-44(s0)
	ble	a5,zero,.L6
.LBB2:
	.loc 1 48 16
	li	s2,0
	.loc 1 51 12
	lw	s3,-40(s0)
	.loc 1 51 3
	j	.L7
.L8:
	.loc 1 53 4
	addi	s2,s2,1
	.loc 1 51 28 discriminator 3
	addi	s3,s3,1
.L7:
	.loc 1 51 22 discriminator 1
	lbu	a5,0(s3)
	bne	a5,zero,.L8
	.loc 1 56 6
	lw	a5,-44(s0)
	blt	s2,a5,.L9
	.loc 1 58 10
	sw	zero,-44(s0)
	j	.L10
.L9:
	.loc 1 62 10
	lw	a5,-44(s0)
	sub	a5,a5,s2
	sw	a5,-44(s0)
.L10:
	.loc 1 65 11
	lw	a5,-48(s0)
	andi	a5,a5,2
	.loc 1 65 6
	beq	a5,zero,.L6
	.loc 1 67 12
	li	s4,48
.L6:
.LBE2:
	.loc 1 71 12
	lw	a5,-48(s0)
	andi	a5,a5,1
	.loc 1 71 5
	bne	a5,zero,.L14
	.loc 1 73 3
	j	.L12
.L13:
	.loc 1 75 4
	mv	a1,s4
	lw	a0,-36(s0)
	call	printchar
	.loc 1 76 4
	addi	s1,s1,1
	.loc 1 73 22 discriminator 2
	lw	a5,-44(s0)
	addi	a5,a5,-1
	sw	a5,-44(s0)
.L12:
	.loc 1 73 17 discriminator 1
	lw	a5,-44(s0)
	bgt	a5,zero,.L13
	.loc 1 80 2
	j	.L14
.L15:
	.loc 1 82 19
	lw	a5,-40(s0)
	lbu	a5,0(a5)
	.loc 1 82 3
	mv	a1,a5
	lw	a0,-36(s0)
	call	printchar
	.loc 1 83 3
	addi	s1,s1,1
	.loc 1 80 20 discriminator 2
	lw	a5,-40(s0)
	addi	a5,a5,1
	sw	a5,-40(s0)
.L14:
	.loc 1 80 10 discriminator 1
	lw	a5,-40(s0)
	lbu	a5,0(a5)
	bne	a5,zero,.L15
	.loc 1 86 2
	j	.L16
.L17:
	.loc 1 88 3
	mv	a1,s4
	lw	a0,-36(s0)
	call	printchar
	.loc 1 89 3
	addi	s1,s1,1
	.loc 1 86 21 discriminator 2
	lw	a5,-44(s0)
	addi	a5,a5,-1
	sw	a5,-44(s0)
.L16:
	.loc 1 86 16 discriminator 1
	lw	a5,-44(s0)
	bgt	a5,zero,.L17
	.loc 1 92 9
	mv	a5,s1
	.loc 1 93 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	lw	s1,36(sp)
	.cfi_restore 9
	lw	s2,32(sp)
	.cfi_restore 18
	lw	s3,28(sp)
	.cfi_restore 19
	lw	s4,24(sp)
	.cfi_restore 20
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1:
	.size	prints, .-prints
	.section	.text.printi,"ax",@progbits
	.align	1
	.type	printi, @function
printi:
.LFB2:
	.loc 1 99 1
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	ra,76(sp)
	sw	s0,72(sp)
	sw	s1,68(sp)
	sw	s2,64(sp)
	sw	s3,60(sp)
	sw	s4,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	sw	a2,-60(s0)
	sw	a3,-64(s0)
	sw	a4,-68(s0)
	sw	a5,-72(s0)
	sw	a6,-76(s0)
	.loc 1 102 18
	li	s4,0
	.loc 1 102 27
	li	s3,0
	.loc 1 103 24
	lw	ra,-56(s0)
	.loc 1 105 5
	lw	a5,-56(s0)
	bne	a5,zero,.L20
	.loc 1 107 16
	li	a5,48
	sb	a5,-44(s0)
	.loc 1 108 16
	sb	zero,-43(s0)
	.loc 1 110 10
	addi	a5,s0,-44
	lw	a3,-72(s0)
	lw	a2,-68(s0)
	mv	a1,a5
	lw	a0,-52(s0)
	call	prints
	mv	a5,a0
	j	.L28
.L20:
	.loc 1 113 5
	lw	a5,-64(s0)
	beq	a5,zero,.L22
	.loc 1 113 9 discriminator 1
	lw	a4,-60(s0)
	li	a5,10
	bne	a4,a5,.L22
	.loc 1 113 20 discriminator 2
	lw	a5,-56(s0)
	bge	a5,zero,.L22
	.loc 1 115 7
	li	s4,1
	.loc 1 116 7
	lw	a5,-56(s0)
	neg	a5,a5
	.loc 1 116 5
	mv	ra,a5
.L22:
	.loc 1 119 4
	addi	s1,s0,-44
	addi	s1,s1,11
	.loc 1 120 5
	sb	zero,0(s1)
	.loc 1 122 8
	j	.L23
.L25:
	.loc 1 124 9
	lw	a5,-60(s0)
	remu	a5,ra,a5
	.loc 1 124 5
	mv	s2,a5
	.loc 1 125 5
	li	a5,9
	ble	s2,a5,.L24
	.loc 1 127 23
	lw	a5,-76(s0)
	addi	a5,a5,-58
	.loc 1 127 6
	add	s2,s2,a5
.L24:
	.loc 1 130 12
	andi	a5,s2,0xff
	.loc 1 130 8
	addi	s1,s1,-1
	.loc 1 130 12
	addi	a5,a5,48
	andi	a5,a5,0xff
	.loc 1 130 8
	sb	a5,0(s1)
	.loc 1 131 5
	lw	a5,-60(s0)
	divu	ra,ra,a5
.L23:
	.loc 1 122 9
	bne	ra,zero,.L25
	.loc 1 134 5
	beq	s4,zero,.L26
	.loc 1 136 5
	lw	a5,-68(s0)
	beq	a5,zero,.L27
	.loc 1 136 21 discriminator 1
	lw	a5,-72(s0)
	andi	a5,a5,2
	.loc 1 136 13 discriminator 1
	beq	a5,zero,.L27
	.loc 1 138 4
	li	a1,45
	lw	a0,-52(s0)
	call	printchar
	.loc 1 139 4
	addi	s3,s3,1
	.loc 1 140 4
	lw	a5,-68(s0)
	addi	a5,a5,-1
	sw	a5,-68(s0)
	j	.L26
.L27:
	.loc 1 144 9
	addi	s1,s1,-1
	li	a5,45
	sb	a5,0(s1)
.L26:
	.loc 1 148 14
	lw	a3,-72(s0)
	lw	a2,-68(s0)
	mv	a1,s1
	lw	a0,-52(s0)
	call	prints
	mv	a5,a0
	.loc 1 148 12 discriminator 1
	add	a5,s3,a5
.L28:
	.loc 1 149 1
	mv	a0,a5
	lw	ra,76(sp)
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	lw	s1,68(sp)
	.cfi_restore 9
	lw	s2,64(sp)
	.cfi_restore 18
	lw	s3,60(sp)
	.cfi_restore 19
	lw	s4,56(sp)
	.cfi_restore 20
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2:
	.size	printi, .-printi
	.section	.rodata
	.align	2
.LC0:
	.string	"(null)"
	.section	.text.print,"ax",@progbits
	.align	1
	.type	print, @function
print:
.LFB3:
	.loc 1 152 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	sw	s2,48(sp)
	sw	s3,44(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	sw	a2,-60(s0)
	.loc 1 154 15
	li	s1,0
	.loc 1 157 2
	j	.L30
.L49:
	.loc 1 159 7
	lw	a5,-56(s0)
	lbu	a4,0(a5)
	.loc 1 159 6
	li	a5,37
	bne	a4,a5,.L52
	.loc 1 161 4
	lw	a5,-56(s0)
	addi	a5,a5,1
	sw	a5,-56(s0)
	.loc 1 162 16
	li	s3,0
	.loc 1 162 10
	mv	s2,s3
	.loc 1 164 8
	lw	a5,-56(s0)
	lbu	a5,0(a5)
	.loc 1 164 7
	beq	a5,zero,.L53
	.loc 1 169 8
	lw	a5,-56(s0)
	lbu	a4,0(a5)
	.loc 1 169 7
	li	a5,37
	beq	a4,a5,.L54
	.loc 1 174 8
	lw	a5,-56(s0)
	lbu	a4,0(a5)
	.loc 1 174 7
	li	a5,45
	bne	a4,a5,.L36
	.loc 1 176 5
	lw	a5,-56(s0)
	addi	a5,a5,1
	sw	a5,-56(s0)
	.loc 1 177 9
	li	s3,1
	.loc 1 180 10
	j	.L36
.L37:
	.loc 1 182 5
	lw	a5,-56(s0)
	addi	a5,a5,1
	sw	a5,-56(s0)
	.loc 1 183 9
	ori	s3,s3,2
.L36:
	.loc 1 180 11
	lw	a5,-56(s0)
	lbu	a4,0(a5)
	.loc 1 180 19
	li	a5,48
	beq	a4,a5,.L37
	.loc 1 186 4
	j	.L38
.L40:
	.loc 1 188 11
	mv	a5,s2
	slli	a5,a5,2
	add	a5,a5,s2
	slli	a5,a5,1
	mv	s2,a5
	.loc 1 189 14
	lw	a5,-56(s0)
	lbu	a5,0(a5)
	.loc 1 189 22
	addi	a5,a5,-48
	.loc 1 189 11
	add	s2,s2,a5
	.loc 1 186 46 discriminator 3
	lw	a5,-56(s0)
	addi	a5,a5,1
	sw	a5,-56(s0)
.L38:
	.loc 1 186 12 discriminator 1
	lw	a5,-56(s0)
	lbu	a4,0(a5)
	.loc 1 186 27 discriminator 1
	li	a5,47
	bleu	a4,a5,.L39
	.loc 1 186 30 discriminator 2
	lw	a5,-56(s0)
	lbu	a4,0(a5)
	.loc 1 186 27 discriminator 2
	li	a5,57
	bleu	a4,a5,.L40
.L39:
	.loc 1 192 8
	lw	a5,-56(s0)
	lbu	a4,0(a5)
	.loc 1 192 6
	li	a5,115
	bne	a4,a5,.L41
.LBB3:
	.loc 1 194 38
	lw	a5,-60(s0)
	addi	a4,a5,4
	sw	a4,-60(s0)
	lw	a5,0(a5)
	.loc 1 194 20 discriminator 1
	mv	ra,a5
	.loc 1 195 11
	beq	ra,zero,.L42
	.loc 1 195 11 is_stmt 0 discriminator 1
	mv	a5,ra
	j	.L43
.L42:
	.loc 1 195 11 discriminator 2
	lla	a5,.LC0
.L43:
	.loc 1 195 11 discriminator 4
	mv	a3,s3
	mv	a2,s2
	mv	a1,a5
	lw	a0,-52(s0)
	call	prints
	mv	a5,a0
	.loc 1 195 8 is_stmt 1 discriminator 1
	add	s1,s1,a5
	.loc 1 196 5
	j	.L44
.L41:
.LBE3:
	.loc 1 199 8
	lw	a5,-56(s0)
	lbu	a4,0(a5)
	.loc 1 199 6
	li	a5,100
	bne	a4,a5,.L45
	.loc 1 201 11
	lw	a5,-60(s0)
	addi	a4,a5,4
	sw	a4,-60(s0)
	lw	a1,0(a5)
	.loc 1 201 11 is_stmt 0 discriminator 1
	li	a6,97
	mv	a5,s3
	mv	a4,s2
	li	a3,1
	li	a2,10
	lw	a0,-52(s0)
	call	printi
	mv	a5,a0
	.loc 1 201 8 is_stmt 1 discriminator 2
	add	s1,s1,a5
	.loc 1 202 5
	j	.L44
.L45:
	.loc 1 205 8
	lw	a5,-56(s0)
	lbu	a4,0(a5)
	.loc 1 205 6
	li	a5,120
	bne	a4,a5,.L46
	.loc 1 207 11
	lw	a5,-60(s0)
	addi	a4,a5,4
	sw	a4,-60(s0)
	lw	a1,0(a5)
	.loc 1 207 11 is_stmt 0 discriminator 1
	li	a6,97
	mv	a5,s3
	mv	a4,s2
	li	a3,0
	li	a2,16
	lw	a0,-52(s0)
	call	printi
	mv	a5,a0
	.loc 1 207 8 is_stmt 1 discriminator 2
	add	s1,s1,a5
	.loc 1 208 5
	j	.L44
.L46:
	.loc 1 211 8
	lw	a5,-56(s0)
	lbu	a4,0(a5)
	.loc 1 211 6
	li	a5,88
	bne	a4,a5,.L47
	.loc 1 213 11
	lw	a5,-60(s0)
	addi	a4,a5,4
	sw	a4,-60(s0)
	lw	a1,0(a5)
	.loc 1 213 11 is_stmt 0 discriminator 1
	li	a6,65
	mv	a5,s3
	mv	a4,s2
	li	a3,0
	li	a2,16
	lw	a0,-52(s0)
	call	printi
	mv	a5,a0
	.loc 1 213 8 is_stmt 1 discriminator 2
	add	s1,s1,a5
	.loc 1 214 5
	j	.L44
.L47:
	.loc 1 217 8
	lw	a5,-56(s0)
	lbu	a4,0(a5)
	.loc 1 217 6
	li	a5,117
	bne	a4,a5,.L48
	.loc 1 219 11
	lw	a5,-60(s0)
	addi	a4,a5,4
	sw	a4,-60(s0)
	lw	a1,0(a5)
	.loc 1 219 11 is_stmt 0 discriminator 1
	li	a6,97
	mv	a5,s3
	mv	a4,s2
	li	a3,0
	li	a2,10
	lw	a0,-52(s0)
	call	printi
	mv	a5,a0
	.loc 1 219 8 is_stmt 1 discriminator 2
	add	s1,s1,a5
	.loc 1 220 5
	j	.L44
.L48:
	.loc 1 223 8
	lw	a5,-56(s0)
	lbu	a4,0(a5)
	.loc 1 223 6
	li	a5,99
	bne	a4,a5,.L44
	.loc 1 226 19
	lw	a5,-60(s0)
	addi	a4,a5,4
	sw	a4,-60(s0)
	lw	a5,0(a5)
	.loc 1 226 14 discriminator 1
	andi	a5,a5,0xff
	.loc 1 226 12 discriminator 1
	sb	a5,-36(s0)
	.loc 1 227 12
	sb	zero,-35(s0)
	.loc 1 228 11
	addi	a5,s0,-36
	mv	a3,s3
	mv	a2,s2
	mv	a1,a5
	lw	a0,-52(s0)
	call	prints
	mv	a5,a0
	.loc 1 228 8 discriminator 1
	add	s1,s1,a5
	.loc 1 229 5
	j	.L44
.L52:
	.loc 1 234 3
	nop
	j	.L31
.L54:
	.loc 1 171 5
	nop
.L31:
	.loc 1 235 20
	lw	a5,-56(s0)
	lbu	a5,0(a5)
	.loc 1 235 4
	mv	a1,a5
	lw	a0,-52(s0)
	call	printchar
	.loc 1 236 4
	addi	s1,s1,1
.L44:
	.loc 1 157 23
	lw	a5,-56(s0)
	addi	a5,a5,1
	sw	a5,-56(s0)
.L30:
	.loc 1 157 9 discriminator 1
	lw	a5,-56(s0)
	lbu	a5,0(a5)
	.loc 1 157 17 discriminator 1
	bne	a5,zero,.L49
	j	.L33
.L53:
	.loc 1 166 5
	nop
.L33:
	.loc 1 240 5
	lw	a5,-52(s0)
	beq	a5,zero,.L50
	.loc 1 242 4
	lw	a5,-52(s0)
	lw	a5,0(a5)
	.loc 1 242 9
	sb	zero,0(a5)
.L50:
	.loc 1 247 9
	mv	a5,s1
	.loc 1 248 1
	mv	a0,a5
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	lw	s1,52(sp)
	.cfi_restore 9
	lw	s2,48(sp)
	.cfi_restore 18
	lw	s3,44(sp)
	.cfi_restore 19
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	print, .-print
	.section	.text.printf,"ax",@progbits
	.align	1
	.globl	printf
	.type	printf, @function
printf:
.LFB4:
	.loc 1 251 1
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -36
	.cfi_offset 8, -40
	addi	s0,sp,48
	.cfi_def_cfa 8, 32
	sw	a0,-36(s0)
	sw	a1,4(s0)
	sw	a2,8(s0)
	sw	a3,12(s0)
	sw	a4,16(s0)
	sw	a5,20(s0)
	sw	a6,24(s0)
	sw	a7,28(s0)
	.loc 1 254 4
	addi	a5,s0,32
	sw	a5,-40(s0)
	lw	a5,-40(s0)
	addi	a5,a5,-28
	sw	a5,-20(s0)
	.loc 1 256 12
	lw	a5,-20(s0)
	mv	a2,a5
	lw	a1,-36(s0)
	li	a0,0
	call	print
	mv	a5,a0
	.loc 1 257 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE4:
	.size	printf, .-printf
	.section	.text.sprintf,"ax",@progbits
	.align	1
	.globl	sprintf
	.type	sprintf, @function
sprintf:
.LFB5:
	.loc 1 260 1
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -36
	.cfi_offset 8, -40
	addi	s0,sp,48
	.cfi_def_cfa 8, 32
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,8(s0)
	sw	a3,12(s0)
	sw	a4,16(s0)
	sw	a5,20(s0)
	sw	a6,24(s0)
	sw	a7,28(s0)
	.loc 1 263 4
	addi	a5,s0,32
	sw	a5,-44(s0)
	lw	a5,-44(s0)
	addi	a5,a5,-24
	sw	a5,-20(s0)
	.loc 1 265 12
	lw	a4,-20(s0)
	addi	a5,s0,-36
	mv	a2,a4
	lw	a1,-40(s0)
	mv	a0,a5
	call	print
	mv	a5,a0
	.loc 1 266 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE5:
	.size	sprintf, .-sprintf
	.section	.text.snprintf,"ax",@progbits
	.align	1
	.globl	snprintf
	.type	snprintf, @function
snprintf:
.LFB6:
	.loc 1 269 1
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -36
	.cfi_offset 8, -40
	addi	s0,sp,48
	.cfi_def_cfa 8, 32
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,12(s0)
	sw	a4,16(s0)
	sw	a5,20(s0)
	sw	a6,24(s0)
	sw	a7,28(s0)
	.loc 1 274 4
	addi	a5,s0,32
	sw	a5,-48(s0)
	lw	a5,-48(s0)
	addi	a5,a5,-20
	sw	a5,-20(s0)
	.loc 1 276 12
	lw	a4,-20(s0)
	addi	a5,s0,-36
	mv	a2,a4
	lw	a1,-44(s0)
	mv	a0,a5
	call	print
	mv	a5,a0
	.loc 1 277 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	snprintf, .-snprintf
	.text
.Letext0:
	.file 2 "/home/lc/tools/riscv32-unknown-elf/lib/gcc/riscv32-unknown-elf/13.2.0/include/stdarg.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x3a3
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x12
	.4byte	.LASF384
	.byte	0x1d
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x9
	.4byte	.LASF366
	.byte	0x28
	.byte	0x1b
	.4byte	0x35
	.uleb128 0x13
	.byte	0x4
	.4byte	.LASF385
	.uleb128 0x9
	.4byte	.LASF367
	.byte	0x67
	.byte	0x18
	.4byte	0x2a
	.uleb128 0x14
	.4byte	.LASF386
	.byte	0x1
	.byte	0x1a
	.byte	0xd
	.4byte	0x5c
	.4byte	0x5c
	.uleb128 0xa
	.4byte	0x5c
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xb
	.4byte	.LASF372
	.2byte	0x10c
	.4byte	0x5c
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbc
	.uleb128 0xc
	.string	"buf"
	.2byte	0x10c
	.byte	0x15
	.4byte	0xbc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x5
	.4byte	.LASF368
	.2byte	0x10c
	.byte	0x27
	.4byte	0xcd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x5
	.4byte	.LASF369
	.2byte	0x10c
	.byte	0x3a
	.4byte	0xd4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x6
	.uleb128 0xd
	.4byte	.LASF374
	.2byte	0x10e
	.4byte	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x7
	.4byte	0xc1
	.uleb128 0xe
	.byte	0x1
	.byte	0x8
	.4byte	.LASF370
	.uleb128 0x16
	.4byte	0xc1
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.4byte	.LASF371
	.uleb128 0x7
	.4byte	0xc8
	.uleb128 0xb
	.4byte	.LASF373
	.2byte	0x103
	.4byte	0x5c
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x122
	.uleb128 0xc
	.string	"out"
	.2byte	0x103
	.byte	0x13
	.4byte	0xbc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x5
	.4byte	.LASF369
	.2byte	0x103
	.byte	0x24
	.4byte	0xd4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x6
	.uleb128 0xd
	.4byte	.LASF374
	.2byte	0x105
	.4byte	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x17
	.4byte	.LASF375
	.byte	0x1
	.byte	0xfa
	.byte	0x5
	.4byte	0x5c
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15b
	.uleb128 0x3
	.4byte	.LASF369
	.byte	0xfa
	.byte	0x18
	.4byte	0xd4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x6
	.uleb128 0x4
	.4byte	.LASF374
	.byte	0xfc
	.byte	0xd
	.4byte	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x8
	.4byte	.LASF377
	.byte	0x97
	.4byte	0x5c
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f3
	.uleb128 0x2
	.string	"out"
	.byte	0x97
	.byte	0x1a
	.4byte	0x1f3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.4byte	.LASF369
	.byte	0x97
	.byte	0x2b
	.4byte	0xd4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3
	.4byte	.LASF374
	.byte	0x97
	.byte	0x3b
	.4byte	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x4
	.4byte	.LASF376
	.byte	0x99
	.byte	0xf
	.4byte	0x5c
	.uleb128 0x1
	.byte	0x62
	.uleb128 0x1
	.string	"pad"
	.byte	0x99
	.byte	0x16
	.4byte	0x5c
	.uleb128 0x1
	.byte	0x63
	.uleb128 0x1
	.string	"pc"
	.byte	0x9a
	.byte	0xf
	.4byte	0x5c
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x1
	.string	"scr"
	.byte	0x9b
	.byte	0x7
	.4byte	0x1f8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x18
	.string	"out"
	.byte	0x1
	.byte	0xea
	.byte	0x3
	.4byte	.L31
	.uleb128 0xf
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x1
	.string	"s"
	.byte	0xc2
	.byte	0x14
	.4byte	0xbc
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0xbc
	.uleb128 0x10
	.4byte	0xc1
	.4byte	0x208
	.uleb128 0x11
	.4byte	0xcd
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.4byte	.LASF378
	.byte	0x62
	.4byte	0x5c
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2c9
	.uleb128 0x2
	.string	"out"
	.byte	0x62
	.byte	0x1a
	.4byte	0x1f3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.string	"i"
	.byte	0x62
	.byte	0x23
	.4byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.string	"b"
	.byte	0x62
	.byte	0x2a
	.4byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2
	.string	"sg"
	.byte	0x62
	.byte	0x31
	.4byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x3
	.4byte	.LASF376
	.byte	0x62
	.byte	0x39
	.4byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2
	.string	"pad"
	.byte	0x62
	.byte	0x44
	.4byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x3
	.4byte	.LASF379
	.byte	0x62
	.byte	0x4d
	.4byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x4
	.4byte	.LASF380
	.byte	0x64
	.byte	0x7
	.4byte	0x2c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.string	"s"
	.byte	0x65
	.byte	0x11
	.4byte	0xbc
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x1
	.string	"t"
	.byte	0x66
	.byte	0xf
	.4byte	0x5c
	.uleb128 0x1
	.byte	0x62
	.uleb128 0x1
	.string	"neg"
	.byte	0x66
	.byte	0x12
	.4byte	0x5c
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x1
	.string	"pc"
	.byte	0x66
	.byte	0x1b
	.4byte	0x5c
	.uleb128 0x1
	.byte	0x63
	.uleb128 0x1
	.string	"u"
	.byte	0x67
	.byte	0x18
	.4byte	0xcd
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x10
	.4byte	0xc1
	.4byte	0x2d9
	.uleb128 0x11
	.4byte	0xcd
	.byte	0xb
	.byte	0
	.uleb128 0x8
	.4byte	.LASF381
	.byte	0x2a
	.4byte	0x5c
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x367
	.uleb128 0x2
	.string	"out"
	.byte	0x2a
	.byte	0x1a
	.4byte	0x1f3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF382
	.byte	0x2a
	.byte	0x2b
	.4byte	0xd4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF376
	.byte	0x2a
	.byte	0x37
	.4byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.string	"pad"
	.byte	0x2a
	.byte	0x42
	.4byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.string	"pc"
	.byte	0x2c
	.byte	0xf
	.4byte	0x5c
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x4
	.4byte	.LASF383
	.byte	0x2c
	.byte	0x17
	.4byte	0x5c
	.uleb128 0x1
	.byte	0x64
	.uleb128 0xf
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x1
	.string	"len"
	.byte	0x30
	.byte	0x10
	.4byte	0x5c
	.uleb128 0x1
	.byte	0x62
	.uleb128 0x1
	.string	"ptr"
	.byte	0x31
	.byte	0x18
	.4byte	0xd4
	.uleb128 0x1
	.byte	0x63
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF387
	.byte	0x1
	.byte	0x18
	.byte	0xd
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2
	.string	"str"
	.byte	0x18
	.byte	0x1e
	.4byte	0x1f3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"c"
	.byte	0x18
	.byte	0x27
	.4byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.4byte	.LASF386
	.byte	0x1
	.byte	0x1a
	.byte	0xd
	.4byte	0x5c
	.uleb128 0xa
	.4byte	0x5c
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
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
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x21
	.sleb128 12
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
	.uleb128 0x9
	.uleb128 0x16
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.sleb128 5
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
	.uleb128 0xd
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
	.sleb128 13
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x18
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x7c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x4c
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
	.byte	0x5
	.uleb128 0x14
	.4byte	.LASF348
	.byte	0x3
	.uleb128 0x16
	.uleb128 0x2
	.byte	0x7
	.4byte	.Ldebug_macro2
	.byte	0x4
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF363
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF364
	.byte	0x5
	.uleb128 0x60
	.4byte	.LASF365
	.byte	0x4
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdarg.h.31.f7f4f3bfddce9ed034956076d59396f7,comdat
.Ldebug_macro2:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF349
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF350
	.byte	0x6
	.uleb128 0x22
	.4byte	.LASF351
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF352
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF353
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF354
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF355
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF356
	.byte	0x5
	.uleb128 0x3a
	.4byte	.LASF357
	.byte	0x5
	.uleb128 0x6d
	.4byte	.LASF358
	.byte	0x5
	.uleb128 0x70
	.4byte	.LASF359
	.byte	0x5
	.uleb128 0x73
	.4byte	.LASF360
	.byte	0x5
	.uleb128 0x76
	.4byte	.LASF361
	.byte	0x5
	.uleb128 0x79
	.4byte	.LASF362
	.byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF208:
	.string	"__FLT16_NORM_MAX__ 6.55040000000000000000000000000000000e+4F16"
.LASF203:
	.string	"__FLT16_MIN_10_EXP__ (-4)"
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
.LASF316:
	.string	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1"
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
.LASF369:
	.string	"format"
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
.LASF8:
	.string	"__GNUC_MINOR__ 2"
.LASF224:
	.string	"__FLT32_NORM_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF371:
	.string	"unsigned int"
.LASF242:
	.string	"__FLT64_MIN__ 2.22507385850720138309023271733240406e-308F64"
.LASF123:
	.string	"__UINT16_C(c) c"
.LASF25:
	.string	"__SIZEOF_SIZE_T__ 4"
.LASF42:
	.string	"__CHAR16_TYPE__ short unsigned int"
.LASF330:
	.string	"__riscv_flen 64"
.LASF199:
	.string	"__LDBL_IS_IEC_60559__ 1"
.LASF29:
	.string	"__ORDER_BIG_ENDIAN__ 4321"
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
.LASF361:
	.string	"_VA_LIST_T_H "
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
.LASF108:
	.string	"__INT_LEAST8_MAX__ 0x7f"
.LASF53:
	.string	"__INT_LEAST8_TYPE__ signed char"
.LASF387:
	.string	"printchar"
.LASF95:
	.string	"__UINTMAX_C(c) c ## ULL"
.LASF374:
	.string	"args"
.LASF379:
	.string	"letbase"
.LASF31:
	.string	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF193:
	.string	"__LDBL_MIN__ 3.36210314311209350626267781732175260e-4932L"
.LASF219:
	.string	"__FLT32_MIN_10_EXP__ (-37)"
.LASF78:
	.string	"__WCHAR_MIN__ (-__WCHAR_MAX__ - 1)"
.LASF5:
	.string	"__STDC_UTF_32__ 1"
.LASF111:
	.string	"__INT_LEAST16_MAX__ 0x7fff"
.LASF72:
	.string	"__SCHAR_MAX__ 0x7f"
.LASF195:
	.string	"__LDBL_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966L"
.LASF34:
	.string	"__GNUC_EXECUTION_CHARSET_NAME \"UTF-8\""
.LASF234:
	.string	"__FLT64_DIG__ 15"
.LASF11:
	.string	"__ATOMIC_RELAXED 0"
.LASF82:
	.string	"__SIZE_MAX__ 0xffffffffU"
.LASF349:
	.string	"_STDARG_H "
.LASF279:
	.string	"__FLT32X_HAS_INFINITY__ 1"
.LASF263:
	.string	"__FLT128_HAS_INFINITY__ 1"
.LASF57:
	.string	"__UINT_LEAST8_TYPE__ unsigned char"
.LASF353:
	.string	"va_start(v,l) __builtin_va_start(v,l)"
.LASF48:
	.string	"__INT64_TYPE__ long long int"
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
.LASF261:
	.string	"__FLT128_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F128"
.LASF359:
	.string	"_VA_LIST "
.LASF249:
	.string	"__FLT64_IS_IEC_60559__ 1"
.LASF70:
	.string	"__UINTPTR_TYPE__ unsigned int"
.LASF228:
	.string	"__FLT32_HAS_DENORM__ 1"
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
.LASF368:
	.string	"count"
.LASF243:
	.string	"__FLT64_EPSILON__ 2.22044604925031308084726333618164062e-16F64"
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
.LASF268:
	.string	"__FLT32X_MIN_EXP__ (-1021)"
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
.LASF358:
	.string	"_VA_LIST_ "
.LASF119:
	.string	"__INT_LEAST64_WIDTH__ 64"
.LASF288:
	.string	"__FLT64X_MAX_10_EXP__ 4932"
.LASF238:
	.string	"__FLT64_MAX_10_EXP__ 308"
.LASF28:
	.string	"__ORDER_LITTLE_ENDIAN__ 1234"
.LASF322:
	.string	"__SIZEOF_PTRDIFF_T__ 4"
.LASF331:
	.string	"__riscv_fdiv 1"
.LASF366:
	.string	"__gnuc_va_list"
.LASF284:
	.string	"__FLT64X_DIG__ 33"
.LASF125:
	.string	"__UINT32_C(c) c ## UL"
.LASF356:
	.string	"va_copy(d,s) __builtin_va_copy(d,s)"
.LASF236:
	.string	"__FLT64_MIN_10_EXP__ (-307)"
.LASF376:
	.string	"width"
.LASF211:
	.string	"__FLT16_DENORM_MIN__ 5.96046447753906250000000000000000000e-8F16"
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
.LASF365:
	.string	"PRINT_BUF_LEN 12"
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
.LASF360:
	.string	"_VA_LIST_DEFINED "
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
.LASF266:
	.string	"__FLT32X_MANT_DIG__ 53"
.LASF302:
	.string	"__NO_INLINE__ 1"
.LASF339:
	.string	"__riscv_f 2002000"
.LASF348:
	.string	"putchar(c) outbyte(c)"
.LASF149:
	.string	"__FLT_MANT_DIG__ 24"
.LASF239:
	.string	"__FLT64_DECIMAL_DIG__ 17"
.LASF306:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1"
.LASF218:
	.string	"__FLT32_MIN_EXP__ (-125)"
.LASF291:
	.string	"__FLT64X_NORM_MAX__ 1.18973149535723176508575932662800702e+4932F64x"
.LASF137:
	.string	"__UINT_FAST16_MAX__ 0xffffffffU"
.LASF66:
	.string	"__UINT_FAST16_TYPE__ unsigned int"
.LASF220:
	.string	"__FLT32_MAX_EXP__ 128"
.LASF169:
	.string	"__DBL_MIN_10_EXP__ (-307)"
.LASF370:
	.string	"char"
.LASF186:
	.string	"__LDBL_MIN_10_EXP__ (-4931)"
.LASF217:
	.string	"__FLT32_DIG__ 6"
.LASF71:
	.string	"__GXX_ABI_VERSION 1018"
.LASF245:
	.string	"__FLT64_HAS_DENORM__ 1"
.LASF145:
	.string	"__FLT_EVAL_METHOD__ 0"
.LASF278:
	.string	"__FLT32X_HAS_DENORM__ 1"
.LASF382:
	.string	"string"
.LASF117:
	.string	"__INT_LEAST64_MAX__ 0x7fffffffffffffffLL"
.LASF311:
	.string	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2"
.LASF335:
	.string	"__riscv_arch_test 1"
.LASF325:
	.string	"__riscv_atomic 1"
.LASF110:
	.string	"__INT_LEAST8_WIDTH__ 8"
.LASF104:
	.string	"__UINT8_MAX__ 0xff"
.LASF105:
	.string	"__UINT16_MAX__ 0xffff"
.LASF384:
	.string	"GNU C17 13.2.0 -mabi=ilp32d -mcmodel=medany -mtune=rocket -misa-spec=20191213 -march=rv32imafdc_zicsr -g3 -O0 -ffreestanding -flax-vector-conversions -fno-common -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF209:
	.string	"__FLT16_MIN__ 6.10351562500000000000000000000000000e-5F16"
.LASF96:
	.string	"__INTMAX_WIDTH__ 64"
.LASF182:
	.string	"__DBL_IS_IEC_60559__ 1"
.LASF54:
	.string	"__INT_LEAST16_TYPE__ short int"
.LASF247:
	.string	"__FLT64_HAS_QUIET_NAN__ 1"
.LASF17:
	.string	"__FINITE_MATH_ONLY__ 0"
.LASF363:
	.string	"PAD_RIGHT 1"
.LASF167:
	.string	"__DBL_DIG__ 15"
.LASF141:
	.string	"__INTPTR_WIDTH__ 32"
.LASF314:
	.string	"__GCC_ATOMIC_LONG_LOCK_FREE 2"
.LASF267:
	.string	"__FLT32X_DIG__ 15"
.LASF367:
	.string	"va_list"
.LASF26:
	.string	"__CHAR_BIT__ 8"
.LASF175:
	.string	"__DBL_MIN__ ((double)2.22507385850720138309023271733240406e-308L)"
.LASF375:
	.string	"printf"
.LASF307:
	.string	"__GCC_ATOMIC_BOOL_LOCK_FREE 2"
.LASF378:
	.string	"printi"
.LASF240:
	.string	"__FLT64_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF381:
	.string	"prints"
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
.LASF328:
	.string	"__riscv_muldiv 1"
.LASF207:
	.string	"__FLT16_MAX__ 6.55040000000000000000000000000000000e+4F16"
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
.LASF357:
	.string	"__va_copy(d,s) __builtin_va_copy(d,s)"
.LASF75:
	.string	"__LONG_MAX__ 0x7fffffffL"
.LASF101:
	.string	"__INT16_MAX__ 0x7fff"
.LASF83:
	.string	"__SCHAR_WIDTH__ 8"
.LASF342:
	.string	"__riscv_zicsr 2000000"
.LASF23:
	.string	"__SIZEOF_DOUBLE__ 8"
.LASF9:
	.string	"__GNUC_PATCHLEVEL__ 0"
.LASF121:
	.string	"__UINT8_C(c) c"
.LASF206:
	.string	"__FLT16_DECIMAL_DIG__ 5"
.LASF80:
	.string	"__WINT_MIN__ 0U"
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
.LASF351:
	.string	"__need___va_list"
.LASF86:
	.string	"__LONG_WIDTH__ 32"
.LASF13:
	.string	"__ATOMIC_ACQUIRE 2"
.LASF43:
	.string	"__CHAR32_TYPE__ long unsigned int"
.LASF373:
	.string	"sprintf"
.LASF300:
	.string	"__USER_LABEL_PREFIX__ "
.LASF212:
	.string	"__FLT16_HAS_DENORM__ 1"
.LASF59:
	.string	"__UINT_LEAST32_TYPE__ long unsigned int"
.LASF41:
	.string	"__UINTMAX_TYPE__ long long unsigned int"
.LASF128:
	.string	"__INT_FAST8_MAX__ 0x7fffffff"
.LASF99:
	.string	"__SIG_ATOMIC_WIDTH__ 32"
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
.LASF372:
	.string	"snprintf"
.LASF185:
	.string	"__LDBL_MIN_EXP__ (-16381)"
.LASF89:
	.string	"__WINT_WIDTH__ 32"
.LASF377:
	.string	"print"
.LASF299:
	.string	"__REGISTER_PREFIX__ "
.LASF226:
	.string	"__FLT32_EPSILON__ 1.19209289550781250000000000000000000e-7F32"
.LASF336:
	.string	"__riscv_i 2001000"
.LASF264:
	.string	"__FLT128_HAS_QUIET_NAN__ 1"
.LASF47:
	.string	"__INT32_TYPE__ long int"
.LASF269:
	.string	"__FLT32X_MIN_10_EXP__ (-307)"
.LASF67:
	.string	"__UINT_FAST32_TYPE__ unsigned int"
.LASF383:
	.string	"padchar"
.LASF296:
	.string	"__FLT64X_HAS_INFINITY__ 1"
.LASF355:
	.string	"va_arg(v,l) __builtin_va_arg(v,l)"
.LASF181:
	.string	"__FP_FAST_FMA 1"
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
.LASF380:
	.string	"print_buf"
.LASF354:
	.string	"va_end(v) __builtin_va_end(v)"
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
.LASF350:
	.string	"_ANSI_STDARG_H_ "
.LASF352:
	.string	"__GNUC_VA_LIST "
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
.LASF127:
	.string	"__UINT64_C(c) c ## ULL"
.LASF189:
	.string	"__DECIMAL_DIG__ 36"
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
.LASF140:
	.string	"__INTPTR_MAX__ 0x7fffffff"
.LASF319:
	.string	"__PRAGMA_REDEFINE_EXTNAME 1"
.LASF214:
	.string	"__FLT16_HAS_QUIET_NAN__ 1"
.LASF340:
	.string	"__riscv_d 2002000"
.LASF315:
	.string	"__GCC_ATOMIC_LLONG_LOCK_FREE 1"
.LASF153:
	.string	"__FLT_MAX_EXP__ 128"
.LASF15:
	.string	"__ATOMIC_ACQ_REL 4"
.LASF184:
	.string	"__LDBL_DIG__ 33"
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
.LASF364:
	.string	"PAD_ZERO 2"
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
.LASF165:
	.string	"__FLT_IS_IEC_60559__ 1"
.LASF146:
	.string	"__FLT_EVAL_METHOD_TS_18661_3__ 0"
.LASF179:
	.string	"__DBL_HAS_INFINITY__ 1"
.LASF10:
	.string	"__VERSION__ \"13.2.0\""
.LASF63:
	.string	"__INT_FAST32_TYPE__ int"
.LASF156:
	.string	"__FLT_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF163:
	.string	"__FLT_HAS_QUIET_NAN__ 1"
.LASF18:
	.string	"__SIZEOF_INT__ 4"
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
.LASF27:
	.string	"__BIGGEST_ALIGNMENT__ 16"
.LASF385:
	.string	"__builtin_va_list"
.LASF129:
	.string	"__INT_FAST8_WIDTH__ 32"
.LASF151:
	.string	"__FLT_MIN_EXP__ (-125)"
.LASF2:
	.string	"__STDC__ 1"
.LASF258:
	.string	"__FLT128_NORM_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF343:
	.string	"__ELF__ 1"
.LASF115:
	.string	"__INT32_C(c) c ## L"
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
.LASF274:
	.string	"__FLT32X_NORM_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF362:
	.string	"__va_list__ "
.LASF221:
	.string	"__FLT32_MAX_10_EXP__ 38"
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
.LASF386:
	.string	"outbyte"
.LASF44:
	.string	"__SIG_ATOMIC_TYPE__ int"
.LASF262:
	.string	"__FLT128_HAS_DENORM__ 1"
.LASF265:
	.string	"__FLT128_IS_IEC_60559__ 1"
.LASF172:
	.string	"__DBL_DECIMAL_DIG__ 17"
.LASF196:
	.string	"__LDBL_HAS_DENORM__ 1"
.LASF292:
	.string	"__FLT64X_MIN__ 3.36210314311209350626267781732175260e-4932F64x"
.LASF347:
	.string	"__RTTHREAD__ 1"
.LASF233:
	.string	"__FLT64_MANT_DIG__ 53"
.LASF161:
	.string	"__FLT_HAS_DENORM__ 1"
.LASF135:
	.string	"__INT_FAST64_WIDTH__ 64"
.LASF143:
	.string	"__GCC_IEC_559 2"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/lc/git/rt-thread/bsp/gowin-riscv_ae350_soc"
.LASF0:
	.string	"ae350_soc/lib/printf.c"
	.ident	"GCC: () 13.2.0"
