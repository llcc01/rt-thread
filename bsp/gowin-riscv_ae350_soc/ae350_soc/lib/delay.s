	.file	"delay.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/lc/git/rt-thread/bsp/gowin-riscv_ae350_soc" "ae350_soc/lib/delay.c"
	.section	.text.get_core_freq,"ax",@progbits
	.align	1
	.type	get_core_freq, @function
get_core_freq:
.LFB15:
	.file 1 "ae350_soc/lib/delay.c"
	.loc 1 25 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 26 9
	li	a5,800
	.loc 1 27 1
	mv	a0,a5
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE15:
	.size	get_core_freq, .-get_core_freq
	.section	.text.rdmcycle,"ax",@progbits
	.align	1
	.type	rdmcycle, @function
rdmcycle:
.LFB16:
	.loc 1 30 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,44(sp)
	.cfi_offset 8, -4
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
.L6:
.LBB2:
.LBB3:
	.loc 1 34 46
 #APP
# 34 "ae350_soc/lib/delay.c" 1
	csrr t1, 0xb80
# 0 "" 2
 #NO_APP
	sw	t1,-20(s0)
	.loc 1 34 96
	lw	t1,-20(s0)
.LBE3:
	.loc 1 34 17
	sw	t1,-24(s0)
.LBB4:
	.loc 1 35 46
 #APP
# 35 "ae350_soc/lib/delay.c" 1
	csrr t1, 0xb00
# 0 "" 2
 #NO_APP
	sw	t1,-28(s0)
	.loc 1 35 96
	lw	t1,-28(s0)
.LBE4:
	.loc 1 35 17
	sw	t1,-32(s0)
.LBB5:
	.loc 1 37 37
 #APP
# 37 "ae350_soc/lib/delay.c" 1
	csrr t1, 0xb80
# 0 "" 2
 #NO_APP
	sw	t1,-36(s0)
	.loc 1 37 87
	lw	t3,-36(s0)
.LBE5:
	.loc 1 37 6
	lw	t1,-24(s0)
	bne	t3,t1,.L6
	.loc 1 39 12
	lw	t1,-24(s0)
	mv	a6,t1
	li	a7,0
	.loc 1 39 35
	slli	a5,a6,0
	li	a4,0
	.loc 1 39 42
	lw	a6,-32(s0)
	mv	a2,a6
	li	a3,0
	or	a0,a4,a2
	or	a1,a5,a3
	.loc 1 39 42 is_stmt 0 discriminator 1
	mv	a4,a0
	mv	a5,a1
.LBE2:
	.loc 1 45 1 is_stmt 1
	mv	a0,a4
	mv	a1,a5
	lw	s0,44(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE16:
	.size	rdmcycle, .-rdmcycle
	.section	.text.simple_delay_ms,"ax",@progbits
	.align	1
	.globl	simple_delay_ms
	.type	simple_delay_ms, @function
simple_delay_ms:
.LFB17:
	.loc 1 55 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	.loc 1 56 14
	lw	a4,-20(s0)
	li	a5,4096
	addi	a5,a5,-1045
	mul	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 56 2
	j	.L9
.L10:
	.loc 1 56 70 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
.L9:
	.loc 1 56 56 discriminator 1
	lw	a5,-20(s0)
	bne	a5,zero,.L10
	.loc 1 57 1
	nop
	nop
	lw	s0,28(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE17:
	.size	simple_delay_ms, .-simple_delay_ms
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x102
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x6
	.4byte	.LASF937
	.byte	0x1d
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x1
	.byte	0x4
	.4byte	.LASF934
	.uleb128 0x7
	.4byte	.LASF938
	.byte	0x1
	.byte	0x36
	.byte	0x6
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x56
	.uleb128 0x8
	.4byte	.LASF939
	.byte	0x1
	.byte	0x36
	.byte	0x23
	.4byte	0x2a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.4byte	.LASF940
	.byte	0x1
	.byte	0x1d
	.byte	0x1b
	.4byte	0xe3
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe3
	.uleb128 0x3
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x4
	.string	"hi"
	.byte	0x22
	.4byte	0xe9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.string	"lo"
	.byte	0x23
	.4byte	0xe9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0xad
	.uleb128 0x2
	.4byte	.LASF933
	.byte	0x22
	.byte	0x27
	.4byte	0xe9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0xc9
	.uleb128 0x2
	.4byte	.LASF933
	.byte	0x23
	.byte	0x27
	.4byte	0xe9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x3
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x2
	.4byte	.LASF933
	.byte	0x25
	.byte	0x1e
	.4byte	0xe9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1
	.byte	0x8
	.4byte	.LASF935
	.uleb128 0x1
	.byte	0x4
	.4byte	.LASF936
	.uleb128 0xa
	.4byte	.LASF941
	.byte	0x1
	.byte	0x18
	.byte	0x15
	.4byte	0x2a
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0x21
	.sleb128 7
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x2
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
	.uleb128 0x3
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.sleb128 17
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
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
	.file 2 "ae350_soc/lib/../../ae350_soc/ae350/platform.h"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x2
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF348
	.file 3 "ae350_soc/lib/../../ae350_soc/ae350/../../ae350_soc/config/config.h"
	.byte	0x3
	.uleb128 0x14
	.uleb128 0x3
	.byte	0x7
	.4byte	.Ldebug_macro2
	.byte	0x4
	.file 4 "ae350_soc/lib/../../ae350_soc/ae350/../../ae350_soc/ae350/core_v5.h"
	.byte	0x3
	.uleb128 0x15
	.uleb128 0x4
	.byte	0x7
	.4byte	.Ldebug_macro3
	.file 5 "ae350_soc/lib/../../ae350_soc/ae350/../../ae350_soc/ae350/../../ae350_soc/ae350/csr.h"
	.byte	0x3
	.uleb128 0x94
	.uleb128 0x5
	.byte	0x7
	.4byte	.Ldebug_macro4
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro5
	.byte	0x4
	.file 6 "ae350_soc/lib/../../ae350_soc/ae350/../../ae350_soc/ae350/ae350.h"
	.byte	0x3
	.uleb128 0x16
	.uleb128 0x6
	.byte	0x7
	.4byte	.Ldebug_macro6
	.byte	0x4
	.file 7 "ae350_soc/lib/../../ae350_soc/ae350/../../ae350_soc/ae350/interrupt.h"
	.byte	0x3
	.uleb128 0x17
	.uleb128 0x7
	.byte	0x7
	.4byte	.Ldebug_macro7
	.file 8 "ae350_soc/lib/../../ae350_soc/ae350/../../ae350_soc/ae350/../../ae350_soc/ae350/plic.h"
	.byte	0x3
	.uleb128 0x1f
	.uleb128 0x8
	.byte	0x7
	.4byte	.Ldebug_macro8
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro9
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro10
	.byte	0x4
	.file 9 "ae350_soc/lib/../../ae350_soc/lib/delay.h"
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x9
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF932
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.config.h.11.0e2fcb6d4f76322eee6d47d049ae416c,comdat
.Ldebug_macro2:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF349
	.byte	0x5
	.uleb128 0x1c
	.4byte	.LASF350
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF351
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF352
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF353
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF354
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF355
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF356
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF357
	.byte	0x5
	.uleb128 0x48
	.4byte	.LASF358
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF359
	.byte	0x5
	.uleb128 0x4a
	.4byte	.LASF360
	.byte	0x5
	.uleb128 0x4c
	.4byte	.LASF361
	.byte	0x5
	.uleb128 0x4d
	.4byte	.LASF362
	.byte	0x5
	.uleb128 0x4e
	.4byte	.LASF363
	.byte	0x5
	.uleb128 0x52
	.4byte	.LASF364
	.byte	0x5
	.uleb128 0x55
	.4byte	.LASF365
	.byte	0x5
	.uleb128 0x56
	.4byte	.LASF366
	.byte	0x5
	.uleb128 0x57
	.4byte	.LASF367
	.byte	0x5
	.uleb128 0x59
	.4byte	.LASF368
	.byte	0x5
	.uleb128 0x5a
	.4byte	.LASF369
	.byte	0x5
	.uleb128 0x5b
	.4byte	.LASF370
	.byte	0x5
	.uleb128 0x5f
	.4byte	.LASF371
	.byte	0x5
	.uleb128 0x62
	.4byte	.LASF372
	.byte	0x5
	.uleb128 0x63
	.4byte	.LASF373
	.byte	0x5
	.uleb128 0x64
	.4byte	.LASF374
	.byte	0x5
	.uleb128 0x66
	.4byte	.LASF375
	.byte	0x5
	.uleb128 0x67
	.4byte	.LASF376
	.byte	0x5
	.uleb128 0x68
	.4byte	.LASF377
	.byte	0x5
	.uleb128 0x6c
	.4byte	.LASF378
	.byte	0x5
	.uleb128 0x6f
	.4byte	.LASF379
	.byte	0x5
	.uleb128 0x70
	.4byte	.LASF380
	.byte	0x5
	.uleb128 0x71
	.4byte	.LASF381
	.byte	0x5
	.uleb128 0x73
	.4byte	.LASF382
	.byte	0x5
	.uleb128 0x74
	.4byte	.LASF383
	.byte	0x5
	.uleb128 0x75
	.4byte	.LASF384
	.byte	0x5
	.uleb128 0x79
	.4byte	.LASF385
	.byte	0x5
	.uleb128 0x7d
	.4byte	.LASF386
	.byte	0x5
	.uleb128 0x81
	.4byte	.LASF387
	.byte	0x5
	.uleb128 0x85
	.4byte	.LASF388
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.core_v5.h.11.a8b399720fcf062b67213f6b9bf6855a,comdat
.Ldebug_macro3:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF389
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF390
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF391
	.byte	0x5
	.uleb128 0x14
	.4byte	.LASF392
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF393
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF394
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF395
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF396
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF397
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF398
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF399
	.byte	0x5
	.uleb128 0x1c
	.4byte	.LASF400
	.byte	0x5
	.uleb128 0x1d
	.4byte	.LASF401
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF402
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF403
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF404
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF405
	.byte	0x5
	.uleb128 0x22
	.4byte	.LASF406
	.byte	0x5
	.uleb128 0x23
	.4byte	.LASF407
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF408
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF409
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF410
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF411
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF412
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF413
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF414
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF415
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF416
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF417
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF418
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF419
	.byte	0x5
	.uleb128 0x37
	.4byte	.LASF420
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF421
	.byte	0x5
	.uleb128 0x39
	.4byte	.LASF422
	.byte	0x5
	.uleb128 0x3c
	.4byte	.LASF423
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF424
	.byte	0x5
	.uleb128 0x3e
	.4byte	.LASF425
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF426
	.byte	0x5
	.uleb128 0x40
	.4byte	.LASF427
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF428
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF429
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF430
	.byte	0x5
	.uleb128 0x44
	.4byte	.LASF431
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF432
	.byte	0x5
	.uleb128 0x46
	.4byte	.LASF433
	.byte	0x5
	.uleb128 0x47
	.4byte	.LASF434
	.byte	0x5
	.uleb128 0x4a
	.4byte	.LASF435
	.byte	0x5
	.uleb128 0x4b
	.4byte	.LASF436
	.byte	0x5
	.uleb128 0x4c
	.4byte	.LASF437
	.byte	0x5
	.uleb128 0x4d
	.4byte	.LASF438
	.byte	0x5
	.uleb128 0x4e
	.4byte	.LASF439
	.byte	0x5
	.uleb128 0x4f
	.4byte	.LASF440
	.byte	0x5
	.uleb128 0x51
	.4byte	.LASF441
	.byte	0x5
	.uleb128 0x52
	.4byte	.LASF442
	.byte	0x5
	.uleb128 0x53
	.4byte	.LASF443
	.byte	0x5
	.uleb128 0x54
	.4byte	.LASF444
	.byte	0x5
	.uleb128 0x55
	.4byte	.LASF445
	.byte	0x5
	.uleb128 0x56
	.4byte	.LASF446
	.byte	0x5
	.uleb128 0x57
	.4byte	.LASF447
	.byte	0x5
	.uleb128 0x58
	.4byte	.LASF448
	.byte	0x5
	.uleb128 0x59
	.4byte	.LASF449
	.byte	0x5
	.uleb128 0x5c
	.4byte	.LASF450
	.byte	0x5
	.uleb128 0x5d
	.4byte	.LASF451
	.byte	0x5
	.uleb128 0x66
	.4byte	.LASF452
	.byte	0x5
	.uleb128 0x67
	.4byte	.LASF453
	.byte	0x5
	.uleb128 0x68
	.4byte	.LASF454
	.byte	0x5
	.uleb128 0x69
	.4byte	.LASF455
	.byte	0x5
	.uleb128 0x6a
	.4byte	.LASF456
	.byte	0x5
	.uleb128 0x6c
	.4byte	.LASF457
	.byte	0x5
	.uleb128 0x6f
	.4byte	.LASF458
	.byte	0x5
	.uleb128 0x70
	.4byte	.LASF459
	.byte	0x5
	.uleb128 0x71
	.4byte	.LASF460
	.byte	0x5
	.uleb128 0x77
	.4byte	.LASF461
	.byte	0x5
	.uleb128 0x79
	.4byte	.LASF462
	.byte	0x5
	.uleb128 0x7a
	.4byte	.LASF463
	.byte	0x5
	.uleb128 0x7c
	.4byte	.LASF464
	.byte	0x5
	.uleb128 0x7d
	.4byte	.LASF465
	.byte	0x5
	.uleb128 0x7e
	.4byte	.LASF466
	.byte	0x5
	.uleb128 0x7f
	.4byte	.LASF467
	.byte	0x5
	.uleb128 0x80
	.4byte	.LASF468
	.byte	0x5
	.uleb128 0x81
	.4byte	.LASF469
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.csr.h.12.6a8b6193f73193013bdb0f434483b5c6,comdat
.Ldebug_macro4:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF470
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF471
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF472
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF473
	.byte	0x5
	.uleb128 0x14
	.4byte	.LASF474
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF475
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF476
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF477
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF478
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF479
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF480
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF481
	.byte	0x5
	.uleb128 0x1c
	.4byte	.LASF482
	.byte	0x5
	.uleb128 0x1d
	.4byte	.LASF483
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF484
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF485
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF486
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF487
	.byte	0x5
	.uleb128 0x22
	.4byte	.LASF488
	.byte	0x5
	.uleb128 0x23
	.4byte	.LASF489
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF490
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF491
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF492
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF493
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF494
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF495
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF496
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF497
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF498
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF499
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF500
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF501
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF502
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF503
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF504
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF505
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF506
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF507
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF508
	.byte	0x5
	.uleb128 0x37
	.4byte	.LASF509
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF510
	.byte	0x5
	.uleb128 0x39
	.4byte	.LASF511
	.byte	0x5
	.uleb128 0x3a
	.4byte	.LASF512
	.byte	0x5
	.uleb128 0x3b
	.4byte	.LASF513
	.byte	0x5
	.uleb128 0x3c
	.4byte	.LASF514
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF515
	.byte	0x5
	.uleb128 0x3e
	.4byte	.LASF516
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF517
	.byte	0x5
	.uleb128 0x40
	.4byte	.LASF518
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF519
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF520
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF521
	.byte	0x5
	.uleb128 0x44
	.4byte	.LASF522
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF523
	.byte	0x5
	.uleb128 0x46
	.4byte	.LASF524
	.byte	0x5
	.uleb128 0x47
	.4byte	.LASF525
	.byte	0x5
	.uleb128 0x48
	.4byte	.LASF526
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF527
	.byte	0x5
	.uleb128 0x4a
	.4byte	.LASF528
	.byte	0x5
	.uleb128 0x4b
	.4byte	.LASF529
	.byte	0x5
	.uleb128 0x4c
	.4byte	.LASF530
	.byte	0x5
	.uleb128 0x4d
	.4byte	.LASF531
	.byte	0x5
	.uleb128 0x4e
	.4byte	.LASF532
	.byte	0x5
	.uleb128 0x4f
	.4byte	.LASF533
	.byte	0x5
	.uleb128 0x50
	.4byte	.LASF534
	.byte	0x5
	.uleb128 0x51
	.4byte	.LASF535
	.byte	0x5
	.uleb128 0x52
	.4byte	.LASF536
	.byte	0x5
	.uleb128 0x53
	.4byte	.LASF537
	.byte	0x5
	.uleb128 0x54
	.4byte	.LASF538
	.byte	0x5
	.uleb128 0x55
	.4byte	.LASF539
	.byte	0x5
	.uleb128 0x56
	.4byte	.LASF540
	.byte	0x5
	.uleb128 0x57
	.4byte	.LASF541
	.byte	0x5
	.uleb128 0x58
	.4byte	.LASF542
	.byte	0x5
	.uleb128 0x59
	.4byte	.LASF543
	.byte	0x5
	.uleb128 0x5a
	.4byte	.LASF544
	.byte	0x5
	.uleb128 0x5b
	.4byte	.LASF545
	.byte	0x5
	.uleb128 0x5c
	.4byte	.LASF546
	.byte	0x5
	.uleb128 0x5d
	.4byte	.LASF547
	.byte	0x5
	.uleb128 0x5e
	.4byte	.LASF548
	.byte	0x5
	.uleb128 0x5f
	.4byte	.LASF549
	.byte	0x5
	.uleb128 0x60
	.4byte	.LASF550
	.byte	0x5
	.uleb128 0x61
	.4byte	.LASF551
	.byte	0x5
	.uleb128 0x62
	.4byte	.LASF552
	.byte	0x5
	.uleb128 0x63
	.4byte	.LASF553
	.byte	0x5
	.uleb128 0x64
	.4byte	.LASF554
	.byte	0x5
	.uleb128 0x65
	.4byte	.LASF555
	.byte	0x5
	.uleb128 0x66
	.4byte	.LASF556
	.byte	0x5
	.uleb128 0x67
	.4byte	.LASF557
	.byte	0x5
	.uleb128 0x68
	.4byte	.LASF558
	.byte	0x5
	.uleb128 0x69
	.4byte	.LASF559
	.byte	0x5
	.uleb128 0x6a
	.4byte	.LASF560
	.byte	0x5
	.uleb128 0x6b
	.4byte	.LASF561
	.byte	0x5
	.uleb128 0x6c
	.4byte	.LASF562
	.byte	0x5
	.uleb128 0x6d
	.4byte	.LASF563
	.byte	0x5
	.uleb128 0x6e
	.4byte	.LASF564
	.byte	0x5
	.uleb128 0x6f
	.4byte	.LASF565
	.byte	0x5
	.uleb128 0x70
	.4byte	.LASF566
	.byte	0x5
	.uleb128 0x71
	.4byte	.LASF567
	.byte	0x5
	.uleb128 0x72
	.4byte	.LASF568
	.byte	0x5
	.uleb128 0x73
	.4byte	.LASF569
	.byte	0x5
	.uleb128 0x74
	.4byte	.LASF570
	.byte	0x5
	.uleb128 0x75
	.4byte	.LASF571
	.byte	0x5
	.uleb128 0x76
	.4byte	.LASF572
	.byte	0x5
	.uleb128 0x77
	.4byte	.LASF573
	.byte	0x5
	.uleb128 0x78
	.4byte	.LASF574
	.byte	0x5
	.uleb128 0x79
	.4byte	.LASF575
	.byte	0x5
	.uleb128 0x7a
	.4byte	.LASF576
	.byte	0x5
	.uleb128 0x7b
	.4byte	.LASF577
	.byte	0x5
	.uleb128 0x7c
	.4byte	.LASF578
	.byte	0x5
	.uleb128 0x7d
	.4byte	.LASF579
	.byte	0x5
	.uleb128 0x7e
	.4byte	.LASF580
	.byte	0x5
	.uleb128 0x7f
	.4byte	.LASF581
	.byte	0x5
	.uleb128 0x80
	.4byte	.LASF582
	.byte	0x5
	.uleb128 0x81
	.4byte	.LASF583
	.byte	0x5
	.uleb128 0x82
	.4byte	.LASF584
	.byte	0x5
	.uleb128 0x83
	.4byte	.LASF585
	.byte	0x5
	.uleb128 0x84
	.4byte	.LASF586
	.byte	0x5
	.uleb128 0x85
	.4byte	.LASF587
	.byte	0x5
	.uleb128 0x86
	.4byte	.LASF588
	.byte	0x5
	.uleb128 0x87
	.4byte	.LASF589
	.byte	0x5
	.uleb128 0x88
	.4byte	.LASF590
	.byte	0x5
	.uleb128 0x89
	.4byte	.LASF591
	.byte	0x5
	.uleb128 0x8a
	.4byte	.LASF592
	.byte	0x5
	.uleb128 0x8b
	.4byte	.LASF593
	.byte	0x5
	.uleb128 0x8c
	.4byte	.LASF594
	.byte	0x5
	.uleb128 0x8d
	.4byte	.LASF595
	.byte	0x5
	.uleb128 0x8e
	.4byte	.LASF596
	.byte	0x5
	.uleb128 0x8f
	.4byte	.LASF597
	.byte	0x5
	.uleb128 0x90
	.4byte	.LASF598
	.byte	0x5
	.uleb128 0x91
	.4byte	.LASF599
	.byte	0x5
	.uleb128 0x92
	.4byte	.LASF600
	.byte	0x5
	.uleb128 0x93
	.4byte	.LASF601
	.byte	0x5
	.uleb128 0x94
	.4byte	.LASF602
	.byte	0x5
	.uleb128 0x95
	.4byte	.LASF603
	.byte	0x5
	.uleb128 0x96
	.4byte	.LASF604
	.byte	0x5
	.uleb128 0x97
	.4byte	.LASF605
	.byte	0x5
	.uleb128 0x98
	.4byte	.LASF606
	.byte	0x5
	.uleb128 0x99
	.4byte	.LASF607
	.byte	0x5
	.uleb128 0x9a
	.4byte	.LASF608
	.byte	0x5
	.uleb128 0x9b
	.4byte	.LASF609
	.byte	0x5
	.uleb128 0x9c
	.4byte	.LASF610
	.byte	0x5
	.uleb128 0x9d
	.4byte	.LASF611
	.byte	0x5
	.uleb128 0x9e
	.4byte	.LASF612
	.byte	0x5
	.uleb128 0x9f
	.4byte	.LASF613
	.byte	0x5
	.uleb128 0xa0
	.4byte	.LASF614
	.byte	0x5
	.uleb128 0xa1
	.4byte	.LASF615
	.byte	0x5
	.uleb128 0xa2
	.4byte	.LASF616
	.byte	0x5
	.uleb128 0xa3
	.4byte	.LASF617
	.byte	0x5
	.uleb128 0xa4
	.4byte	.LASF618
	.byte	0x5
	.uleb128 0xa5
	.4byte	.LASF619
	.byte	0x5
	.uleb128 0xa6
	.4byte	.LASF620
	.byte	0x5
	.uleb128 0xa7
	.4byte	.LASF621
	.byte	0x5
	.uleb128 0xa8
	.4byte	.LASF622
	.byte	0x5
	.uleb128 0xa9
	.4byte	.LASF623
	.byte	0x5
	.uleb128 0xaa
	.4byte	.LASF624
	.byte	0x5
	.uleb128 0xab
	.4byte	.LASF625
	.byte	0x5
	.uleb128 0xac
	.4byte	.LASF626
	.byte	0x5
	.uleb128 0xad
	.4byte	.LASF627
	.byte	0x5
	.uleb128 0xae
	.4byte	.LASF628
	.byte	0x5
	.uleb128 0xaf
	.4byte	.LASF629
	.byte	0x5
	.uleb128 0xb0
	.4byte	.LASF630
	.byte	0x5
	.uleb128 0xb1
	.4byte	.LASF631
	.byte	0x5
	.uleb128 0xb2
	.4byte	.LASF632
	.byte	0x5
	.uleb128 0xb3
	.4byte	.LASF633
	.byte	0x5
	.uleb128 0xb4
	.4byte	.LASF634
	.byte	0x5
	.uleb128 0xb5
	.4byte	.LASF635
	.byte	0x5
	.uleb128 0xb6
	.4byte	.LASF636
	.byte	0x5
	.uleb128 0xb7
	.4byte	.LASF637
	.byte	0x5
	.uleb128 0xb8
	.4byte	.LASF638
	.byte	0x5
	.uleb128 0xb9
	.4byte	.LASF639
	.byte	0x5
	.uleb128 0xba
	.4byte	.LASF640
	.byte	0x5
	.uleb128 0xbb
	.4byte	.LASF641
	.byte	0x5
	.uleb128 0xbc
	.4byte	.LASF642
	.byte	0x5
	.uleb128 0xbd
	.4byte	.LASF643
	.byte	0x5
	.uleb128 0xbe
	.4byte	.LASF644
	.byte	0x5
	.uleb128 0xbf
	.4byte	.LASF645
	.byte	0x5
	.uleb128 0xc0
	.4byte	.LASF646
	.byte	0x5
	.uleb128 0xc1
	.4byte	.LASF647
	.byte	0x5
	.uleb128 0xc2
	.4byte	.LASF648
	.byte	0x5
	.uleb128 0xc3
	.4byte	.LASF649
	.byte	0x5
	.uleb128 0xc4
	.4byte	.LASF650
	.byte	0x5
	.uleb128 0xc5
	.4byte	.LASF651
	.byte	0x5
	.uleb128 0xc6
	.4byte	.LASF652
	.byte	0x5
	.uleb128 0xc7
	.4byte	.LASF653
	.byte	0x5
	.uleb128 0xc8
	.4byte	.LASF654
	.byte	0x5
	.uleb128 0xc9
	.4byte	.LASF655
	.byte	0x5
	.uleb128 0xca
	.4byte	.LASF656
	.byte	0x5
	.uleb128 0xcb
	.4byte	.LASF657
	.byte	0x5
	.uleb128 0xcc
	.4byte	.LASF658
	.byte	0x5
	.uleb128 0xcd
	.4byte	.LASF659
	.byte	0x5
	.uleb128 0xce
	.4byte	.LASF660
	.byte	0x5
	.uleb128 0xcf
	.4byte	.LASF661
	.byte	0x5
	.uleb128 0xd0
	.4byte	.LASF662
	.byte	0x5
	.uleb128 0xd1
	.4byte	.LASF663
	.byte	0x5
	.uleb128 0xd2
	.4byte	.LASF664
	.byte	0x5
	.uleb128 0xd3
	.4byte	.LASF665
	.byte	0x5
	.uleb128 0xd4
	.4byte	.LASF666
	.byte	0x5
	.uleb128 0xd5
	.4byte	.LASF667
	.byte	0x5
	.uleb128 0xd6
	.4byte	.LASF668
	.byte	0x5
	.uleb128 0xd7
	.4byte	.LASF669
	.byte	0x5
	.uleb128 0xd8
	.4byte	.LASF670
	.byte	0x5
	.uleb128 0xd9
	.4byte	.LASF671
	.byte	0x5
	.uleb128 0xda
	.4byte	.LASF672
	.byte	0x5
	.uleb128 0xdb
	.4byte	.LASF673
	.byte	0x5
	.uleb128 0xdc
	.4byte	.LASF674
	.byte	0x5
	.uleb128 0xdd
	.4byte	.LASF675
	.byte	0x5
	.uleb128 0xde
	.4byte	.LASF676
	.byte	0x5
	.uleb128 0xdf
	.4byte	.LASF677
	.byte	0x5
	.uleb128 0xe0
	.4byte	.LASF678
	.byte	0x5
	.uleb128 0xe1
	.4byte	.LASF679
	.byte	0x5
	.uleb128 0xe2
	.4byte	.LASF680
	.byte	0x5
	.uleb128 0xe3
	.4byte	.LASF681
	.byte	0x5
	.uleb128 0xe4
	.4byte	.LASF682
	.byte	0x5
	.uleb128 0xe5
	.4byte	.LASF683
	.byte	0x5
	.uleb128 0xe6
	.4byte	.LASF684
	.byte	0x5
	.uleb128 0xe7
	.4byte	.LASF685
	.byte	0x5
	.uleb128 0xe8
	.4byte	.LASF686
	.byte	0x5
	.uleb128 0xe9
	.4byte	.LASF687
	.byte	0x5
	.uleb128 0xea
	.4byte	.LASF688
	.byte	0x5
	.uleb128 0xeb
	.4byte	.LASF689
	.byte	0x5
	.uleb128 0xec
	.4byte	.LASF690
	.byte	0x5
	.uleb128 0xed
	.4byte	.LASF691
	.byte	0x5
	.uleb128 0xee
	.4byte	.LASF692
	.byte	0x5
	.uleb128 0xef
	.4byte	.LASF693
	.byte	0x5
	.uleb128 0xf0
	.4byte	.LASF694
	.byte	0x5
	.uleb128 0xf1
	.4byte	.LASF695
	.byte	0x5
	.uleb128 0xf2
	.4byte	.LASF696
	.byte	0x5
	.uleb128 0xf3
	.4byte	.LASF697
	.byte	0x5
	.uleb128 0xf4
	.4byte	.LASF698
	.byte	0x5
	.uleb128 0xf5
	.4byte	.LASF699
	.byte	0x5
	.uleb128 0xf6
	.4byte	.LASF700
	.byte	0x5
	.uleb128 0xf7
	.4byte	.LASF701
	.byte	0x5
	.uleb128 0xf8
	.4byte	.LASF702
	.byte	0x5
	.uleb128 0xf9
	.4byte	.LASF703
	.byte	0x5
	.uleb128 0xfa
	.4byte	.LASF704
	.byte	0x5
	.uleb128 0xfb
	.4byte	.LASF705
	.byte	0x5
	.uleb128 0xfc
	.4byte	.LASF706
	.byte	0x5
	.uleb128 0xfd
	.4byte	.LASF707
	.byte	0x5
	.uleb128 0xfe
	.4byte	.LASF708
	.byte	0x5
	.uleb128 0xff
	.4byte	.LASF709
	.byte	0x5
	.uleb128 0x100
	.4byte	.LASF710
	.byte	0x5
	.uleb128 0x101
	.4byte	.LASF711
	.byte	0x5
	.uleb128 0x102
	.4byte	.LASF712
	.byte	0x5
	.uleb128 0x103
	.4byte	.LASF713
	.byte	0x5
	.uleb128 0x104
	.4byte	.LASF714
	.byte	0x5
	.uleb128 0x105
	.4byte	.LASF715
	.byte	0x5
	.uleb128 0x106
	.4byte	.LASF716
	.byte	0x5
	.uleb128 0x107
	.4byte	.LASF717
	.byte	0x5
	.uleb128 0x108
	.4byte	.LASF718
	.byte	0x5
	.uleb128 0x109
	.4byte	.LASF719
	.byte	0x5
	.uleb128 0x10a
	.4byte	.LASF720
	.byte	0x5
	.uleb128 0x10b
	.4byte	.LASF721
	.byte	0x5
	.uleb128 0x10c
	.4byte	.LASF722
	.byte	0x5
	.uleb128 0x10d
	.4byte	.LASF723
	.byte	0x5
	.uleb128 0x10e
	.4byte	.LASF724
	.byte	0x5
	.uleb128 0x10f
	.4byte	.LASF725
	.byte	0x5
	.uleb128 0x110
	.4byte	.LASF726
	.byte	0x5
	.uleb128 0x111
	.4byte	.LASF727
	.byte	0x5
	.uleb128 0x112
	.4byte	.LASF728
	.byte	0x5
	.uleb128 0x113
	.4byte	.LASF729
	.byte	0x5
	.uleb128 0x114
	.4byte	.LASF730
	.byte	0x5
	.uleb128 0x115
	.4byte	.LASF731
	.byte	0x5
	.uleb128 0x116
	.4byte	.LASF732
	.byte	0x5
	.uleb128 0x117
	.4byte	.LASF733
	.byte	0x5
	.uleb128 0x118
	.4byte	.LASF734
	.byte	0x5
	.uleb128 0x119
	.4byte	.LASF735
	.byte	0x5
	.uleb128 0x11a
	.4byte	.LASF736
	.byte	0x5
	.uleb128 0x11b
	.4byte	.LASF737
	.byte	0x5
	.uleb128 0x11c
	.4byte	.LASF738
	.byte	0x5
	.uleb128 0x11d
	.4byte	.LASF739
	.byte	0x5
	.uleb128 0x11e
	.4byte	.LASF740
	.byte	0x5
	.uleb128 0x11f
	.4byte	.LASF741
	.byte	0x5
	.uleb128 0x120
	.4byte	.LASF742
	.byte	0x5
	.uleb128 0x121
	.4byte	.LASF743
	.byte	0x5
	.uleb128 0x122
	.4byte	.LASF744
	.byte	0x5
	.uleb128 0x123
	.4byte	.LASF745
	.byte	0x5
	.uleb128 0x124
	.4byte	.LASF746
	.byte	0x5
	.uleb128 0x125
	.4byte	.LASF747
	.byte	0x5
	.uleb128 0x126
	.4byte	.LASF748
	.byte	0x5
	.uleb128 0x127
	.4byte	.LASF749
	.byte	0x5
	.uleb128 0x128
	.4byte	.LASF750
	.byte	0x5
	.uleb128 0x129
	.4byte	.LASF751
	.byte	0x5
	.uleb128 0x12a
	.4byte	.LASF752
	.byte	0x5
	.uleb128 0x12b
	.4byte	.LASF753
	.byte	0x5
	.uleb128 0x12c
	.4byte	.LASF754
	.byte	0x5
	.uleb128 0x12d
	.4byte	.LASF755
	.byte	0x5
	.uleb128 0x12e
	.4byte	.LASF756
	.byte	0x5
	.uleb128 0x12f
	.4byte	.LASF757
	.byte	0x5
	.uleb128 0x130
	.4byte	.LASF758
	.byte	0x5
	.uleb128 0x131
	.4byte	.LASF759
	.byte	0x5
	.uleb128 0x132
	.4byte	.LASF760
	.byte	0x5
	.uleb128 0x133
	.4byte	.LASF761
	.byte	0x5
	.uleb128 0x134
	.4byte	.LASF762
	.byte	0x5
	.uleb128 0x135
	.4byte	.LASF763
	.byte	0x5
	.uleb128 0x136
	.4byte	.LASF764
	.byte	0x5
	.uleb128 0x137
	.4byte	.LASF765
	.byte	0x5
	.uleb128 0x138
	.4byte	.LASF766
	.byte	0x5
	.uleb128 0x139
	.4byte	.LASF767
	.byte	0x5
	.uleb128 0x13a
	.4byte	.LASF768
	.byte	0x5
	.uleb128 0x13b
	.4byte	.LASF769
	.byte	0x5
	.uleb128 0x13c
	.4byte	.LASF770
	.byte	0x5
	.uleb128 0x13d
	.4byte	.LASF771
	.byte	0x5
	.uleb128 0x13e
	.4byte	.LASF772
	.byte	0x5
	.uleb128 0x13f
	.4byte	.LASF773
	.byte	0x5
	.uleb128 0x140
	.4byte	.LASF774
	.byte	0x5
	.uleb128 0x141
	.4byte	.LASF775
	.byte	0x5
	.uleb128 0x142
	.4byte	.LASF776
	.byte	0x5
	.uleb128 0x143
	.4byte	.LASF777
	.byte	0x5
	.uleb128 0x144
	.4byte	.LASF778
	.byte	0x5
	.uleb128 0x145
	.4byte	.LASF779
	.byte	0x5
	.uleb128 0x146
	.4byte	.LASF780
	.byte	0x5
	.uleb128 0x147
	.4byte	.LASF781
	.byte	0x5
	.uleb128 0x148
	.4byte	.LASF782
	.byte	0x5
	.uleb128 0x149
	.4byte	.LASF783
	.byte	0x5
	.uleb128 0x14a
	.4byte	.LASF784
	.byte	0x5
	.uleb128 0x14b
	.4byte	.LASF785
	.byte	0x5
	.uleb128 0x14c
	.4byte	.LASF786
	.byte	0x5
	.uleb128 0x14d
	.4byte	.LASF787
	.byte	0x5
	.uleb128 0x14e
	.4byte	.LASF788
	.byte	0x5
	.uleb128 0x14f
	.4byte	.LASF789
	.byte	0x5
	.uleb128 0x150
	.4byte	.LASF790
	.byte	0x5
	.uleb128 0x151
	.4byte	.LASF791
	.byte	0x5
	.uleb128 0x152
	.4byte	.LASF792
	.byte	0x5
	.uleb128 0x153
	.4byte	.LASF793
	.byte	0x5
	.uleb128 0x154
	.4byte	.LASF794
	.byte	0x5
	.uleb128 0x155
	.4byte	.LASF795
	.byte	0x5
	.uleb128 0x156
	.4byte	.LASF796
	.byte	0x5
	.uleb128 0x157
	.4byte	.LASF797
	.byte	0x5
	.uleb128 0x158
	.4byte	.LASF798
	.byte	0x5
	.uleb128 0x159
	.4byte	.LASF799
	.byte	0x5
	.uleb128 0x15a
	.4byte	.LASF800
	.byte	0x5
	.uleb128 0x15b
	.4byte	.LASF801
	.byte	0x5
	.uleb128 0x15c
	.4byte	.LASF802
	.byte	0x5
	.uleb128 0x15d
	.4byte	.LASF803
	.byte	0x5
	.uleb128 0x15e
	.4byte	.LASF804
	.byte	0x5
	.uleb128 0x15f
	.4byte	.LASF805
	.byte	0x5
	.uleb128 0x160
	.4byte	.LASF806
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.core_v5.h.150.770dc028d3bf75340a52b83e3c75b7f1,comdat
.Ldebug_macro5:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x96
	.4byte	.LASF807
	.byte	0x5
	.uleb128 0x9a
	.4byte	.LASF808
	.byte	0x5
	.uleb128 0x9d
	.4byte	.LASF809
	.byte	0x5
	.uleb128 0xa1
	.4byte	.LASF810
	.byte	0x5
	.uleb128 0xa5
	.4byte	.LASF811
	.byte	0x5
	.uleb128 0xa9
	.4byte	.LASF812
	.byte	0x5
	.uleb128 0xad
	.4byte	.LASF813
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.ae350.h.11.9b8ade9cb9a3aa721d571ace2684b93e,comdat
.Ldebug_macro6:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF814
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF815
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF816
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF817
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF818
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF819
	.byte	0x5
	.uleb128 0x1c
	.4byte	.LASF820
	.byte	0x5
	.uleb128 0x1d
	.4byte	.LASF821
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF822
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF823
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF824
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF825
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF826
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF827
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF828
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF829
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF830
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF831
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF832
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF833
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF834
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF835
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF836
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF837
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF838
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF839
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF840
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF841
	.byte	0x5
	.uleb128 0x37
	.4byte	.LASF842
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF843
	.byte	0x5
	.uleb128 0x39
	.4byte	.LASF844
	.byte	0x5
	.uleb128 0x3a
	.4byte	.LASF845
	.byte	0x5
	.uleb128 0x3b
	.4byte	.LASF846
	.byte	0x5
	.uleb128 0x3c
	.4byte	.LASF847
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF848
	.byte	0x5
	.uleb128 0x3e
	.4byte	.LASF849
	.byte	0x5
	.uleb128 0x46
	.4byte	.LASF850
	.byte	0x5
	.uleb128 0x47
	.4byte	.LASF851
	.byte	0x5
	.uleb128 0x48
	.4byte	.LASF852
	.byte	0x5
	.uleb128 0x147
	.4byte	.LASF853
	.byte	0x5
	.uleb128 0x149
	.4byte	.LASF854
	.byte	0x5
	.uleb128 0x14a
	.4byte	.LASF855
	.byte	0x5
	.uleb128 0x14b
	.4byte	.LASF856
	.byte	0x5
	.uleb128 0x14c
	.4byte	.LASF857
	.byte	0x5
	.uleb128 0x14e
	.4byte	.LASF858
	.byte	0x5
	.uleb128 0x14f
	.4byte	.LASF859
	.byte	0x5
	.uleb128 0x150
	.4byte	.LASF860
	.byte	0x5
	.uleb128 0x151
	.4byte	.LASF861
	.byte	0x5
	.uleb128 0x152
	.4byte	.LASF862
	.byte	0x5
	.uleb128 0x153
	.4byte	.LASF863
	.byte	0x5
	.uleb128 0x154
	.4byte	.LASF864
	.byte	0x5
	.uleb128 0x155
	.4byte	.LASF865
	.byte	0x5
	.uleb128 0x156
	.4byte	.LASF866
	.byte	0x5
	.uleb128 0x157
	.4byte	.LASF867
	.byte	0x5
	.uleb128 0x158
	.4byte	.LASF868
	.byte	0x5
	.uleb128 0x15a
	.4byte	.LASF869
	.byte	0x5
	.uleb128 0x15b
	.4byte	.LASF870
	.byte	0x5
	.uleb128 0x15d
	.4byte	.LASF871
	.byte	0x5
	.uleb128 0x15e
	.4byte	.LASF872
	.byte	0x5
	.uleb128 0x160
	.4byte	.LASF873
	.byte	0x5
	.uleb128 0x161
	.4byte	.LASF874
	.byte	0x5
	.uleb128 0x162
	.4byte	.LASF875
	.byte	0x5
	.uleb128 0x163
	.4byte	.LASF876
	.byte	0x5
	.uleb128 0x169
	.4byte	.LASF877
	.byte	0x5
	.uleb128 0x16a
	.4byte	.LASF878
	.byte	0x5
	.uleb128 0x16b
	.4byte	.LASF879
	.byte	0x5
	.uleb128 0x16c
	.4byte	.LASF880
	.byte	0x5
	.uleb128 0x16d
	.4byte	.LASF881
	.byte	0x5
	.uleb128 0x16e
	.4byte	.LASF882
	.byte	0x5
	.uleb128 0x16f
	.4byte	.LASF883
	.byte	0x5
	.uleb128 0x170
	.4byte	.LASF884
	.byte	0x5
	.uleb128 0x171
	.4byte	.LASF885
	.byte	0x5
	.uleb128 0x172
	.4byte	.LASF886
	.byte	0x5
	.uleb128 0x173
	.4byte	.LASF887
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.interrupt.h.13.0dcee1073ff8cb36d3a72d2ab9d9af28,comdat
.Ldebug_macro7:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0xd
	.4byte	.LASF888
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF889
	.byte	0x5
	.uleb128 0x1d
	.4byte	.LASF890
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF891
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.plic.h.11.044d38cfc207efadf096698b73e4934d,comdat
.Ldebug_macro8:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF892
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF893
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF894
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF895
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF896
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF897
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF898
	.byte	0x5
	.uleb128 0x22
	.4byte	.LASF899
	.byte	0x5
	.uleb128 0x23
	.4byte	.LASF900
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF901
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF902
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF903
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF904
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.interrupt.h.36.00b89799e9184a0d7dc8454548c339a0,comdat
.Ldebug_macro9:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF905
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF906
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF907
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF908
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF909
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF910
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF911
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF912
	.byte	0x5
	.uleb128 0x3c
	.4byte	.LASF913
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF914
	.byte	0x5
	.uleb128 0x3e
	.4byte	.LASF915
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF916
	.byte	0x5
	.uleb128 0x40
	.4byte	.LASF917
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF918
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF919
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF920
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.platform.h.31.95a025a6ce47078ae8baeaf811f70af5,comdat
.Ldebug_macro10:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF921
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF922
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF923
	.byte	0x5
	.uleb128 0x22
	.4byte	.LASF924
	.byte	0x5
	.uleb128 0x23
	.4byte	.LASF925
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF926
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF927
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF928
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF929
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF930
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF931
	.byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF410:
	.string	"MCAUSE_INT 0x80000000UL"
.LASF914:
	.string	"HAL_MIE_DISABLE() clear_csr(NDS_MSTATUS, MSTATUS_MIE)"
.LASF248:
	.string	"__FP_FAST_FMAF64 1"
.LASF468:
	.string	"FPPOP XSTR(FPLOAD)"
.LASF774:
	.string	"NDS_MNXTI 0x345"
.LASF323:
	.string	"__riscv 1"
.LASF253:
	.string	"__FLT128_MIN_10_EXP__ (-4931)"
.LASF311:
	.string	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2"
.LASF303:
	.string	"__CHAR_UNSIGNED__ 1"
.LASF926:
	.string	"DEV_PIT AE350_PIT"
.LASF246:
	.string	"__FLT64_HAS_INFINITY__ 1"
.LASF554:
	.string	"NDS_SCAUSE 0x142"
.LASF846:
	.string	"IRQ_GP14_SOURCE 24"
.LASF682:
	.string	"NDS_MHPMEVENT29 0x33d"
.LASF81:
	.string	"__PTRDIFF_MAX__ 0x7fffffff"
.LASF796:
	.string	"NDS_PMAADDR6 0xbd6"
.LASF860:
	.string	"UART1_BASE _IO_(0xF0200000)"
.LASF93:
	.string	"__INTMAX_C(c) c ## LL"
.LASF92:
	.string	"__INTMAX_MAX__ 0x7fffffffffffffffLL"
.LASF923:
	.string	"DEV_SMU AE350_SMU"
.LASF532:
	.string	"NDS_HPMCOUNTER18H 0xc92"
.LASF268:
	.string	"__FLT32X_MIN_EXP__ (-1021)"
.LASF417:
	.string	"IRQ_M_TIMER 7"
.LASF768:
	.string	"NDS_WFE 0x810"
.LASF707:
	.string	"NDS_MDBOUND 0x385"
.LASF816:
	.string	"MHz 1000000"
.LASF16:
	.string	"__ATOMIC_CONSUME 1"
.LASF284:
	.string	"__FLT64X_DIG__ 33"
.LASF265:
	.string	"__FLT128_IS_IEC_60559__ 1"
.LASF293:
	.string	"__FLT64X_EPSILON__ 1.92592994438723585305597794258492732e-34F64x"
.LASF20:
	.string	"__SIZEOF_LONG_LONG__ 8"
.LASF171:
	.string	"__DBL_MAX_10_EXP__ 308"
.LASF517:
	.string	"NDS_HPMCOUNTER3H 0xc83"
.LASF657:
	.string	"NDS_MHPMEVENT4 0x324"
.LASF385:
	.string	"DRV_PWM 1"
.LASF921:
	.string	"DEV_PLMT AE350_PLMT"
.LASF748:
	.string	"NDS_SLIP 0x9c5"
.LASF611:
	.string	"NDS_MHPMCOUNTER18 0xb12"
.LASF30:
	.string	"__ORDER_PDP_ENDIAN__ 3412"
.LASF36:
	.string	"__SIZE_TYPE__ unsigned int"
.LASF469:
	.string	"FPREGSIZE XSTR(FPREGBYTES)"
.LASF181:
	.string	"__FP_FAST_FMA 1"
.LASF161:
	.string	"__FLT_HAS_DENORM__ 1"
.LASF45:
	.string	"__INT8_TYPE__ signed char"
.LASF865:
	.string	"GPIO_BASE _IO_(0xF0700000)"
.LASF222:
	.string	"__FLT32_DECIMAL_DIG__ 9"
.LASF782:
	.string	"NDS_MINTSEL_JAL 0x7ed"
.LASF289:
	.string	"__FLT64X_DECIMAL_DIG__ 36"
.LASF4:
	.string	"__STDC_UTF_16__ 1"
.LASF207:
	.string	"__FLT16_MAX__ 6.55040000000000000000000000000000000e+4F16"
.LASF757:
	.string	"NDS_SHPMEVENT3 0x9e3"
.LASF121:
	.string	"__UINT8_C(c) c"
.LASF46:
	.string	"__INT16_TYPE__ short int"
.LASF264:
	.string	"__FLT128_HAS_QUIET_NAN__ 1"
.LASF882:
	.string	"AE350_PIT ((PIT_RegDef *) PIT_BASE )"
.LASF466:
	.string	"REGSIZE XSTR(REGBYTES)"
.LASF426:
	.string	"TRAP_U_ECALL 8"
.LASF377:
	.string	"DRV_UART2_DMA_RX_REQID 7"
.LASF290:
	.string	"__FLT64X_MAX__ 1.18973149535723176508575932662800702e+4932F64x"
.LASF839:
	.string	"IRQ_GP7_SOURCE 17"
.LASF537:
	.string	"NDS_HPMCOUNTER23H 0xc97"
.LASF304:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1"
.LASF189:
	.string	"__DECIMAL_DIG__ 36"
.LASF6:
	.string	"__STDC_HOSTED__ 0"
.LASF797:
	.string	"NDS_PMAADDR7 0xbd7"
.LASF71:
	.string	"__GXX_ABI_VERSION 1018"
.LASF64:
	.string	"__INT_FAST64_TYPE__ long long int"
.LASF434:
	.string	"TRAP_M_STACKUDF 33"
.LASF823:
	.string	"IRQ_RTCPERIOD_SOURCE 1"
.LASF225:
	.string	"__FLT32_MIN__ 1.17549435082228750796873653722224568e-38F32"
.LASF416:
	.string	"IRQ_H_TIMER 6"
.LASF221:
	.string	"__FLT32_MAX_10_EXP__ 38"
.LASF3:
	.string	"__STDC_VERSION__ 201710L"
.LASF366:
	.string	"DRV_UART1_DMA_TX_CH 0"
.LASF157:
	.string	"__FLT_NORM_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF771:
	.string	"NDS_MPPIB 0x7f0"
.LASF231:
	.string	"__FP_FAST_FMAF32 1"
.LASF142:
	.string	"__UINTPTR_MAX__ 0xffffffffU"
.LASF818:
	.string	"CPUFREQ (800 * MHz)"
.LASF383:
	.string	"DRV_SPI_DMA_RX_CH 1"
.LASF218:
	.string	"__FLT32_MIN_EXP__ (-125)"
.LASF647:
	.string	"NDS_MHPMCOUNTER23H 0xb97"
.LASF655:
	.string	"NDS_MHPMCOUNTER31H 0xb9f"
.LASF658:
	.string	"NDS_MHPMEVENT5 0x325"
.LASF213:
	.string	"__FLT16_HAS_INFINITY__ 1"
.LASF640:
	.string	"NDS_MHPMCOUNTER16H 0xb90"
.LASF612:
	.string	"NDS_MHPMCOUNTER19 0xb13"
.LASF821:
	.string	"PCLKFREQ (OSCFREQ )"
.LASF236:
	.string	"__FLT64_MIN_10_EXP__ (-307)"
.LASF744:
	.string	"NDS_MCCTLDATA 0x7cd"
.LASF135:
	.string	"__INT_FAST64_WIDTH__ 64"
.LASF239:
	.string	"__FLT64_DECIMAL_DIG__ 17"
.LASF709:
	.string	"NDS_MSCOUNTEREN 0x321"
.LASF793:
	.string	"NDS_PMAADDR3 0xbd3"
.LASF495:
	.string	"NDS_HPMCOUNTER13 0xc0d"
.LASF169:
	.string	"__DBL_MIN_10_EXP__ (-307)"
.LASF29:
	.string	"__ORDER_BIG_ENDIAN__ 4321"
.LASF364:
	.string	"DRV_UART1 1"
.LASF536:
	.string	"NDS_HPMCOUNTER22H 0xc96"
.LASF529:
	.string	"NDS_HPMCOUNTER15H 0xc8f"
.LASF894:
	.string	"NDS_PLIC_FEATURE_VECTORED (1 << 1)"
.LASF497:
	.string	"NDS_HPMCOUNTER15 0xc0f"
.LASF699:
	.string	"NDS_HCAUSE 0x242"
.LASF334:
	.string	"__riscv_cmodel_medany 1"
.LASF235:
	.string	"__FLT64_MIN_EXP__ (-1021)"
.LASF381:
	.string	"DRV_SPI_DMA_TX_REQID 2"
.LASF90:
	.string	"__PTRDIFF_WIDTH__ 32"
.LASF160:
	.string	"__FLT_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F"
.LASF136:
	.string	"__UINT_FAST8_MAX__ 0xffffffffU"
.LASF783:
	.string	"NDS_PUSHMCAUSE 0x7ee"
.LASF798:
	.string	"NDS_PMAADDR8 0xbd8"
.LASF56:
	.string	"__INT_LEAST64_TYPE__ long long int"
.LASF510:
	.string	"NDS_HPMCOUNTER28 0xc1c"
.LASF432:
	.string	"TRAP_M_S_PAGE_FAULT 15"
.LASF288:
	.string	"__FLT64X_MAX_10_EXP__ 4932"
.LASF83:
	.string	"__SCHAR_WIDTH__ 8"
.LASF511:
	.string	"NDS_HPMCOUNTER29 0xc1d"
.LASF131:
	.string	"__INT_FAST16_WIDTH__ 32"
.LASF437:
	.string	"TRAP_S_S_ACC_FAULT 7"
.LASF140:
	.string	"__INTPTR_MAX__ 0x7fffffff"
.LASF773:
	.string	"NDS_MTVT 0x307"
.LASF639:
	.string	"NDS_MHPMCOUNTER15H 0xb8f"
.LASF137:
	.string	"__UINT_FAST16_MAX__ 0xffffffffU"
.LASF456:
	.string	"LOG_REGBYTES 2"
.LASF702:
	.string	"NDS_MBASE 0x380"
.LASF212:
	.string	"__FLT16_HAS_DENORM__ 1"
.LASF718:
	.string	"NDS_MDLMB 0x7c1"
.LASF258:
	.string	"__FLT128_NORM_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF399:
	.string	"MSTATUS_SPP 0x00000100"
.LASF279:
	.string	"__FLT32X_HAS_INFINITY__ 1"
.LASF553:
	.string	"NDS_SEPC 0x141"
.LASF587:
	.string	"NDS_PMPADDR9 0x3b9"
.LASF547:
	.string	"NDS_SEDELEG 0x102"
.LASF57:
	.string	"__UINT_LEAST8_TYPE__ unsigned char"
.LASF165:
	.string	"__FLT_IS_IEC_60559__ 1"
.LASF328:
	.string	"__riscv_muldiv 1"
.LASF668:
	.string	"NDS_MHPMEVENT15 0x32f"
.LASF356:
	.string	"DRV_GPIO 1"
.LASF686:
	.string	"NDS_TDATA1 0x7a1"
.LASF571:
	.string	"NDS_MCAUSE 0x342"
.LASF134:
	.string	"__INT_FAST64_MAX__ 0x7fffffffffffffffLL"
.LASF272:
	.string	"__FLT32X_DECIMAL_DIG__ 17"
.LASF733:
	.string	"NDS_MRANDSTATE 0x7fe"
.LASF866:
	.string	"I2C_BASE _IO_(0xF0A00000)"
.LASF280:
	.string	"__FLT32X_HAS_QUIET_NAN__ 1"
.LASF849:
	.string	"IRQ_WAKEUP_SOURCE 27"
.LASF464:
	.string	"PUSH XSTR(STORE)"
.LASF759:
	.string	"NDS_SHPMEVENT5 0x9e5"
.LASF814:
	.string	"__AE350_H__ "
.LASF61:
	.string	"__INT_FAST8_TYPE__ int"
.LASF412:
	.string	"IRQ_S_SOFT 1"
.LASF252:
	.string	"__FLT128_MIN_EXP__ (-16381)"
.LASF95:
	.string	"__UINTMAX_C(c) c ## ULL"
.LASF920:
	.string	"HAL_INTERRUPT_SET_LEVEL(vector,level) __nds__plic_set_priority(vector, level)"
.LASF33:
	.string	"__SIZEOF_POINTER__ 4"
.LASF53:
	.string	"__INT_LEAST8_TYPE__ signed char"
.LASF307:
	.string	"__GCC_ATOMIC_BOOL_LOCK_FREE 2"
.LASF318:
	.string	"__GCC_HAVE_DWARF2_CFI_ASM 1"
.LASF489:
	.string	"NDS_HPMCOUNTER7 0xc07"
.LASF295:
	.string	"__FLT64X_HAS_DENORM__ 1"
.LASF220:
	.string	"__FLT32_MAX_EXP__ 128"
.LASF912:
	.string	"HAL_MSWI_CLEAR() __nds__plic_sw_claim_interrupt()"
.LASF741:
	.string	"NDS_MSLIDELEG 0x7d5"
.LASF747:
	.string	"NDS_SLIE 0x9c4"
.LASF195:
	.string	"__LDBL_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966L"
.LASF444:
	.string	"MIP_STIP (1 << IRQ_S_TIMER)"
.LASF269:
	.string	"__FLT32X_MIN_10_EXP__ (-307)"
.LASF343:
	.string	"__ELF__ 1"
.LASF403:
	.string	"MSTATUS_XS 0x00018000"
.LASF43:
	.string	"__CHAR32_TYPE__ long unsigned int"
.LASF807:
	.string	"read_csr(reg) ({ unsigned long __tmp; asm volatile (\"csrr %0, \" XSTR(reg) : \"=r\"(__tmp)); __tmp; })"
.LASF937:
	.string	"GNU C17 13.2.0 -mabi=ilp32d -mcmodel=medany -mtune=rocket -misa-spec=20191213 -march=rv32imafdc_zicsr -g3 -O0 -ffreestanding -flax-vector-conversions -fno-common -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF182:
	.string	"__DBL_IS_IEC_60559__ 1"
.LASF428:
	.string	"TRAP_H_ECALL 10"
.LASF138:
	.string	"__UINT_FAST32_MAX__ 0xffffffffU"
.LASF153:
	.string	"__FLT_MAX_EXP__ 128"
.LASF941:
	.string	"get_core_freq"
.LASF523:
	.string	"NDS_HPMCOUNTER9H 0xc89"
.LASF380:
	.string	"DRV_SPI_DMA_TX_CH 0"
.LASF451:
	.string	"MDLMB_DEN (0x1UL)"
.LASF732:
	.string	"NDS_MRANDSEQH 0x7fd"
.LASF23:
	.string	"__SIZEOF_DOUBLE__ 8"
.LASF116:
	.string	"__INT_LEAST32_WIDTH__ 32"
.LASF749:
	.string	"NDS_SDCAUSE 0x9c9"
.LASF443:
	.string	"MIP_MSIP (1 << IRQ_M_SOFT)"
.LASF660:
	.string	"NDS_MHPMEVENT7 0x327"
.LASF244:
	.string	"__FLT64_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F64"
.LASF829:
	.string	"IRQ_GPIO_SOURCE 7"
.LASF327:
	.string	"__riscv_div 1"
.LASF911:
	.string	"HAL_MSWI_PENDING() __nds__plic_sw_set_pending(1)"
.LASF152:
	.string	"__FLT_MIN_10_EXP__ (-37)"
.LASF241:
	.string	"__FLT64_NORM_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF687:
	.string	"NDS_TDATA2 0x7a2"
.LASF368:
	.string	"DRV_UART1_DMA_RX_EN 0"
.LASF704:
	.string	"NDS_MIBASE 0x382"
.LASF842:
	.string	"IRQ_GP10_SOURCE 20"
.LASF52:
	.string	"__UINT64_TYPE__ long long unsigned int"
.LASF831:
	.string	"IRQ_UART2_SOURCE 9"
.LASF669:
	.string	"NDS_MHPMEVENT16 0x330"
.LASF560:
	.string	"NDS_MIMPID 0xf13"
.LASF760:
	.string	"NDS_SHPMEVENT6 0x9e6"
.LASF477:
	.string	"NDS_UTVAL 0x043"
.LASF227:
	.string	"__FLT32_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F32"
.LASF740:
	.string	"NDS_MCOUNTEROVF 0x7d4"
.LASF301:
	.string	"__GNUC_STDC_INLINE__ 1"
.LASF568:
	.string	"NDS_MCOUNTEREN 0x306"
.LASF163:
	.string	"__FLT_HAS_QUIET_NAN__ 1"
.LASF9:
	.string	"__GNUC_PATCHLEVEL__ 0"
.LASF310:
	.string	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2"
.LASF490:
	.string	"NDS_HPMCOUNTER8 0xc08"
.LASF122:
	.string	"__UINT_LEAST16_MAX__ 0xffff"
.LASF848:
	.string	"IRQ_STANDBY_SOURCE 26"
.LASF636:
	.string	"NDS_MHPMCOUNTER12H 0xb8c"
.LASF781:
	.string	"NDS_MIRQ_ENTRY 0x7ec"
.LASF870:
	.string	"AHB_EXT_BASE _IO_(0xE8000000)"
.LASF277:
	.string	"__FLT32X_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F32x"
.LASF238:
	.string	"__FLT64_MAX_10_EXP__ 308"
.LASF800:
	.string	"NDS_PMAADDR10 0xbda"
.LASF19:
	.string	"__SIZEOF_LONG__ 4"
.LASF402:
	.string	"MSTATUS_FS 0x00006000"
.LASF735:
	.string	"NDS_MCOUNTERWEN 0x7ce"
.LASF67:
	.string	"__UINT_FAST32_TYPE__ unsigned int"
.LASF752:
	.string	"NDS_SCOUNTERMASK_S 0x9d2"
.LASF5:
	.string	"__STDC_UTF_32__ 1"
.LASF22:
	.string	"__SIZEOF_FLOAT__ 4"
.LASF226:
	.string	"__FLT32_EPSILON__ 1.19209289550781250000000000000000000e-7F32"
.LASF776:
	.string	"NDS_MSCRATCHCSW 0x348"
.LASF154:
	.string	"__FLT_MAX_10_EXP__ 38"
.LASF717:
	.string	"NDS_MILMB 0x7c0"
.LASF378:
	.string	"DRV_SPI 1"
.LASF561:
	.string	"NDS_MHARTID 0xf14"
.LASF285:
	.string	"__FLT64X_MIN_EXP__ (-16381)"
.LASF12:
	.string	"__ATOMIC_SEQ_CST 5"
.LASF762:
	.string	"NDS_MSAVEEPC1 0x7d7"
.LASF282:
	.string	"__FLT32X_IS_IEC_60559__ 1"
.LASF162:
	.string	"__FLT_HAS_INFINITY__ 1"
.LASF855:
	.string	"DLM_BASE 0xA0200000"
.LASF407:
	.string	"MSTATUS_VM 0x1F000000"
.LASF661:
	.string	"NDS_MHPMEVENT8 0x328"
.LASF105:
	.string	"__UINT16_MAX__ 0xffff"
.LASF406:
	.string	"MSTATUS_MXR 0x00080000"
.LASF73:
	.string	"__SHRT_MAX__ 0x7fff"
.LASF463:
	.string	"XSTR(S) STR(S)"
.LASF939:
	.string	"delay_ms"
.LASF549:
	.string	"NDS_SIE 0x104"
.LASF653:
	.string	"NDS_MHPMCOUNTER29H 0xb9d"
.LASF688:
	.string	"NDS_TDATA3 0x7a3"
.LASF187:
	.string	"__LDBL_MAX_EXP__ 16384"
.LASF21:
	.string	"__SIZEOF_SHORT__ 2"
.LASF722:
	.string	"NDS_MPFT_CTL 0x7c5"
.LASF684:
	.string	"NDS_MHPMEVENT31 0x33f"
.LASF670:
	.string	"NDS_MHPMEVENT17 0x331"
.LASF449:
	.string	"MIP_MEIP (1 << IRQ_M_EXT)"
.LASF727:
	.string	"NDS_MCACHE_CTL 0x7ca"
.LASF864:
	.string	"RTC_BASE _IO_(0xF0600000)"
.LASF259:
	.string	"__FLT128_MIN__ 3.36210314311209350626267781732175260e-4932F128"
.LASF565:
	.string	"NDS_MIDELEG 0x303"
.LASF319:
	.string	"__PRAGMA_REDEFINE_EXTNAME 1"
.LASF779:
	.string	"NDS_MSAVEDCAUSE2 0x7dc"
.LASF491:
	.string	"NDS_HPMCOUNTER9 0xc09"
.LASF708:
	.string	"NDS_MUCOUNTEREN 0x320"
.LASF305:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1"
.LASF880:
	.string	"AE350_UART1 ((UART_RegDef *) UART1_BASE )"
.LASF542:
	.string	"NDS_HPMCOUNTER28H 0xc9c"
.LASF574:
	.string	"NDS_PMPCFG0 0x3a0"
.LASF68:
	.string	"__UINT_FAST64_TYPE__ long long unsigned int"
.LASF801:
	.string	"NDS_PMAADDR11 0xbdb"
.LASF871:
	.string	"PLIC_BASE _IO_(0xE4000000)"
.LASF429:
	.string	"TRAP_M_ECALL 11"
.LASF552:
	.string	"NDS_SSCRATCH 0x140"
.LASF599:
	.string	"NDS_MHPMCOUNTER6 0xb06"
.LASF232:
	.string	"__FLT32_IS_IEC_60559__ 1"
.LASF613:
	.string	"NDS_MHPMCOUNTER20 0xb14"
.LASF10:
	.string	"__VERSION__ \"13.2.0\""
.LASF331:
	.string	"__riscv_fdiv 1"
.LASF205:
	.string	"__FLT16_MAX_10_EXP__ 4"
.LASF731:
	.string	"NDS_MRANDSEQ 0x7fc"
.LASF115:
	.string	"__INT32_C(c) c ## L"
.LASF626:
	.string	"NDS_MINSTRETH 0xb82"
.LASF729:
	.string	"NDS_DEXC2DBG 0x7e0"
.LASF824:
	.string	"IRQ_RTCALARM_SOURCE 2"
.LASF766:
	.string	"NDS_SCOUNTINHIBIT 0x9e0"
.LASF104:
	.string	"__UINT8_MAX__ 0xff"
.LASF662:
	.string	"NDS_MHPMEVENT9 0x329"
.LASF902:
	.string	"PLIC_THRESHOLD_SHIFT_PER_TARGET 12"
.LASF178:
	.string	"__DBL_HAS_DENORM__ 1"
.LASF474:
	.string	"NDS_USCRATCH 0x040"
.LASF515:
	.string	"NDS_TIMEH 0xc81"
.LASF365:
	.string	"DRV_UART1_DMA_TX_EN 0"
.LASF400:
	.string	"MSTATUS_HPP 0x00000600"
.LASF480:
	.string	"NDS_FRM 0x002"
.LASF461:
	.string	"FPREGBYTES (1 << LOG_FPREGBYTES)"
.LASF736:
	.string	"NDS_MCOUNTERINTEN 0x7cf"
.LASF312:
	.string	"__GCC_ATOMIC_SHORT_LOCK_FREE 2"
.LASF628:
	.string	"NDS_MHPMCOUNTER4H 0xb84"
.LASF479:
	.string	"NDS_FFLAGS 0x001"
.LASF111:
	.string	"__INT_LEAST16_MAX__ 0x7fff"
.LASF643:
	.string	"NDS_MHPMCOUNTER19H 0xb93"
.LASF689:
	.string	"NDS_TINFO 0x7a4"
.LASF254:
	.string	"__FLT128_MAX_EXP__ 16384"
.LASF498:
	.string	"NDS_HPMCOUNTER16 0xc10"
.LASF519:
	.string	"NDS_HPMCOUNTER5H 0xc85"
.LASF99:
	.string	"__SIG_ATOMIC_WIDTH__ 32"
.LASF125:
	.string	"__UINT32_C(c) c ## UL"
.LASF370:
	.string	"DRV_UART1_DMA_RX_REQID 5"
.LASF933:
	.string	"__tmp"
.LASF918:
	.string	"HAL_INTERRUPT_DISABLE(vector) __nds__plic_disable_interrupt(vector)"
.LASF843:
	.string	"IRQ_GP11_SOURCE 21"
.LASF575:
	.string	"NDS_PMPCFG1 0x3a1"
.LASF206:
	.string	"__FLT16_DECIMAL_DIG__ 5"
.LASF802:
	.string	"NDS_PMAADDR12 0xbdc"
.LASF819:
	.string	"RTCFREQ (32768 )"
.LASF354:
	.string	"BUILD_XIP 3"
.LASF685:
	.string	"NDS_TSELECT 0x7a0"
.LASF572:
	.string	"NDS_MTVAL 0x343"
.LASF917:
	.string	"HAL_INTERRUPT_ENABLE(vector) __nds__plic_enable_interrupt(vector)"
.LASF502:
	.string	"NDS_HPMCOUNTER20 0xc14"
.LASF614:
	.string	"NDS_MHPMCOUNTER21 0xb15"
.LASF595:
	.string	"NDS_MINSTRET 0xb02"
.LASF925:
	.string	"DEV_UART2 AE350_UART2"
.LASF316:
	.string	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1"
.LASF481:
	.string	"NDS_FCSR 0x003"
.LASF666:
	.string	"NDS_MHPMEVENT13 0x32d"
.LASF721:
	.string	"NDS_MXSTATUS 0x7c4"
.LASF873:
	.string	"BMC_BASE _IO_(0xC0000000)"
.LASF414:
	.string	"IRQ_M_SOFT 3"
.LASF78:
	.string	"__WCHAR_MIN__ (-__WCHAR_MAX__ - 1)"
.LASF516:
	.string	"NDS_INSTRETH 0xc82"
.LASF425:
	.string	"TRAP_M_S_ACC_FAULT 7"
.LASF230:
	.string	"__FLT32_HAS_QUIET_NAN__ 1"
.LASF514:
	.string	"NDS_CYCLEH 0xc80"
.LASF457:
	.string	"REGBYTES (1 << LOG_REGBYTES)"
.LASF339:
	.string	"__riscv_f 2002000"
.LASF453:
	.string	"STORE sw"
.LASF184:
	.string	"__LDBL_DIG__ 33"
.LASF421:
	.string	"IRQ_COP 12"
.LASF415:
	.string	"IRQ_S_TIMER 5"
.LASF907:
	.string	"HAL_MTIME_DISABLE() clear_csr(NDS_MIE, MIP_MTIP);"
.LASF98:
	.string	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)"
.LASF672:
	.string	"NDS_MHPMEVENT19 0x333"
.LASF120:
	.string	"__UINT_LEAST8_MAX__ 0xff"
.LASF584:
	.string	"NDS_PMPADDR6 0x3b6"
.LASF314:
	.string	"__GCC_ATOMIC_LONG_LOCK_FREE 2"
.LASF812:
	.string	"read_fcsr() ({ unsigned long __tmp; asm volatile (\"frcsr %0\" : \"=r\"(__tmp)); __tmp; })"
.LASF851:
	.string	"__O volatile"
.LASF513:
	.string	"NDS_HPMCOUNTER31 0xc1f"
.LASF164:
	.string	"__FP_FAST_FMAF 1"
.LASF499:
	.string	"NDS_HPMCOUNTER17 0xc11"
.LASF173:
	.string	"__DBL_MAX__ ((double)1.79769313486231570814527423731704357e+308L)"
.LASF578:
	.string	"NDS_PMPADDR0 0x3b0"
.LASF644:
	.string	"NDS_MHPMCOUNTER20H 0xb94"
.LASF642:
	.string	"NDS_MHPMCOUNTER18H 0xb92"
.LASF893:
	.string	"NDS_PLIC_FEATURE_PREEMPT (1 << 0)"
.LASF113:
	.string	"__INT_LEAST16_WIDTH__ 16"
.LASF147:
	.string	"__DEC_EVAL_METHOD__ 2"
.LASF576:
	.string	"NDS_PMPCFG2 0x3a2"
.LASF803:
	.string	"NDS_PMAADDR13 0xbdd"
.LASF569:
	.string	"NDS_MSCRATCH 0x340"
.LASF695:
	.string	"NDS_HIE 0x204"
.LASF503:
	.string	"NDS_HPMCOUNTER21 0xc15"
.LASF388:
	.string	"DRV_PIT 1"
.LASF374:
	.string	"DRV_UART2_DMA_TX_REQID 6"
.LASF701:
	.string	"NDS_HIP 0x244"
.LASF615:
	.string	"NDS_MHPMCOUNTER22 0xb16"
.LASF396:
	.string	"MSTATUS_SPIE 0x00000020"
.LASF300:
	.string	"__USER_LABEL_PREFIX__ "
.LASF107:
	.string	"__UINT64_MAX__ 0xffffffffffffffffULL"
.LASF899:
	.string	"PLIC_ENABLE_OFFSET (0x00002000UL)"
.LASF531:
	.string	"NDS_HPMCOUNTER17H 0xc91"
.LASF106:
	.string	"__UINT32_MAX__ 0xffffffffUL"
.LASF564:
	.string	"NDS_MEDELEG 0x302"
.LASF108:
	.string	"__INT_LEAST8_MAX__ 0x7f"
.LASF317:
	.string	"__GCC_ATOMIC_POINTER_LOCK_FREE 2"
.LASF13:
	.string	"__ATOMIC_ACQUIRE 2"
.LASF790:
	.string	"NDS_PMAADDR0 0xbd0"
.LASF467:
	.string	"FPPUSH XSTR(FPSTORE)"
.LASF646:
	.string	"NDS_MHPMCOUNTER22H 0xb96"
.LASF734:
	.string	"NDS_MRANDSTATEH 0x7ff"
.LASF853:
	.string	"_IO_(addr) (addr)"
.LASF270:
	.string	"__FLT32X_MAX_EXP__ 1024"
.LASF376:
	.string	"DRV_UART2_DMA_RX_CH 1"
.LASF192:
	.string	"__LDBL_NORM_MAX__ 1.18973149535723176508575932662800702e+4932L"
.LASF344:
	.string	"USE_M_TIME 1"
.LASF600:
	.string	"NDS_MHPMCOUNTER7 0xb07"
.LASF379:
	.string	"DRV_SPI_DMA_TX_EN 0"
.LASF817:
	.string	"OSCFREQ (100 * MHz)"
.LASF119:
	.string	"__INT_LEAST64_WIDTH__ 64"
.LASF462:
	.string	"STR(S) #S"
.LASF785:
	.string	"NDS_UCODE 0x801"
.LASF100:
	.string	"__INT8_MAX__ 0x7f"
.LASF460:
	.string	"LOG_FPREGBYTES 3"
.LASF806:
	.string	"NDS_MMSC_CFG2 0xfc3"
.LASF62:
	.string	"__INT_FAST16_TYPE__ int"
.LASF500:
	.string	"NDS_HPMCOUNTER18 0xc12"
.LASF550:
	.string	"NDS_STVEC 0x105"
.LASF936:
	.string	"long unsigned int"
.LASF859:
	.string	"SMU_BASE _IO_(0xF0100000)"
.LASF393:
	.string	"MSTATUS_HIE 0x00000004"
.LASF144:
	.string	"__GCC_IEC_559_COMPLEX 2"
.LASF50:
	.string	"__UINT16_TYPE__ short unsigned int"
.LASF755:
	.string	"NDS_SMISC_CTL 0x9d0"
.LASF357:
	.string	"DRV_I2C 1"
.LASF190:
	.string	"__LDBL_DECIMAL_DIG__ 36"
.LASF654:
	.string	"NDS_MHPMCOUNTER30H 0xb9e"
.LASF286:
	.string	"__FLT64X_MIN_10_EXP__ (-4931)"
.LASF484:
	.string	"NDS_INSTRET 0xc02"
.LASF577:
	.string	"NDS_PMPCFG3 0x3a3"
.LASF901:
	.string	"PLIC_THRESHOLD_OFFSET (0x00200000UL)"
.LASF804:
	.string	"NDS_PMAADDR14 0xbde"
.LASF146:
	.string	"__FLT_EVAL_METHOD_TS_18661_3__ 0"
.LASF738:
	.string	"NDS_MCOUNTERMASK_S 0x7d2"
.LASF194:
	.string	"__LDBL_EPSILON__ 1.92592994438723585305597794258492732e-34L"
.LASF746:
	.string	"NDS_UCCTLCOMMAND 0x80c"
.LASF65:
	.string	"__UINT_FAST8_TYPE__ unsigned int"
.LASF504:
	.string	"NDS_HPMCOUNTER22 0xc16"
.LASF555:
	.string	"NDS_STVAL 0x143"
.LASF616:
	.string	"NDS_MHPMCOUNTER23 0xb17"
.LASF102:
	.string	"__INT32_MAX__ 0x7fffffffL"
.LASF808:
	.string	"write_csr(reg,val) ({ asm volatile (\"csrw \" XSTR(reg) \", %0\" :: \"rK\"(val)); })"
.LASF117:
	.string	"__INT_LEAST64_MAX__ 0x7fffffffffffffffLL"
.LASF711:
	.string	"NDS_UITB 0x800"
.LASF544:
	.string	"NDS_HPMCOUNTER30H 0xc9e"
.LASF215:
	.string	"__FLT16_IS_IEC_60559__ 1"
.LASF216:
	.string	"__FLT32_MANT_DIG__ 24"
.LASF751:
	.string	"NDS_SCOUNTERINTEN 0x9cf"
.LASF424:
	.string	"TRAP_M_L_ACC_FAULT 5"
.LASF60:
	.string	"__UINT_LEAST64_TYPE__ long long unsigned int"
.LASF283:
	.string	"__FLT64X_MANT_DIG__ 113"
.LASF309:
	.string	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2"
.LASF780:
	.string	"NDS_PUSHMXSTATUS 0x7eb"
.LASF693:
	.string	"NDS_HEDELEG 0x202"
.LASF170:
	.string	"__DBL_MAX_EXP__ 1024"
.LASF14:
	.string	"__ATOMIC_RELEASE 3"
.LASF278:
	.string	"__FLT32X_HAS_DENORM__ 1"
.LASF149:
	.string	"__FLT_MANT_DIG__ 24"
.LASF63:
	.string	"__INT_FAST32_TYPE__ int"
.LASF355:
	.string	"CFG_BURN "
.LASF419:
	.string	"IRQ_H_EXT 10"
.LASF501:
	.string	"NDS_HPMCOUNTER19 0xc13"
.LASF854:
	.string	"ILM_BASE 0xA0000000"
.LASF242:
	.string	"__FLT64_MIN__ 2.22507385850720138309023271733240406e-308F64"
.LASF850:
	.string	"__I volatile const"
.LASF341:
	.string	"__riscv_c 2000000"
.LASF103:
	.string	"__INT64_MAX__ 0x7fffffffffffffffLL"
.LASF203:
	.string	"__FLT16_MIN_10_EXP__ (-4)"
.LASF535:
	.string	"NDS_HPMCOUNTER21H 0xc95"
.LASF528:
	.string	"NDS_HPMCOUNTER14H 0xc8e"
.LASF659:
	.string	"NDS_MHPMEVENT6 0x326"
.LASF96:
	.string	"__INTMAX_WIDTH__ 64"
.LASF398:
	.string	"MSTATUS_MPIE 0x00000080"
.LASF897:
	.string	"PLIC_PENDING_OFFSET (0x00001000UL)"
.LASF384:
	.string	"DRV_SPI_DMA_RX_REQID 3"
.LASF418:
	.string	"IRQ_S_EXT 9"
.LASF876:
	.string	"APBBRG_BASE _IO_(0xF0000000)"
.LASF7:
	.string	"__GNUC__ 13"
.LASF811:
	.string	"clear_csr(reg,bit) ({ unsigned long __tmp; asm volatile (\"csrrc %0, \" XSTR(reg) \", %1\" : \"=r\"(__tmp) : \"rK\"(bit)); __tmp; })"
.LASF391:
	.string	"MSTATUS_UIE 0x00000001"
.LASF772:
	.string	"NDS_MFIOB 0x7f1"
.LASF86:
	.string	"__LONG_WIDTH__ 32"
.LASF909:
	.string	"HAL_MSWI_ENABLE() set_csr(NDS_MIE, MIP_MSIP)"
.LASF617:
	.string	"NDS_MHPMCOUNTER24 0xb18"
.LASF764:
	.string	"NDS_MSAVEEPC2 0x7d9"
.LASF447:
	.string	"MIP_SEIP (1 << IRQ_S_EXT)"
.LASF271:
	.string	"__FLT32X_MAX_10_EXP__ 308"
.LASF359:
	.string	"DRV_I2C_DMA_TX_CH 2"
.LASF335:
	.string	"__riscv_arch_test 1"
.LASF869:
	.string	"APB_EXT_BASE _IO_(0xF8000000)"
.LASF638:
	.string	"NDS_MHPMCOUNTER14H 0xb8e"
.LASF148:
	.string	"__FLT_RADIX__ 2"
.LASF465:
	.string	"POP XSTR(LOAD)"
.LASF786:
	.string	"NDS_PMACFG0 0xbc0"
.LASF373:
	.string	"DRV_UART2_DMA_TX_CH 0"
.LASF198:
	.string	"__LDBL_HAS_QUIET_NAN__ 1"
.LASF559:
	.string	"NDS_MARCHID 0xf12"
.LASF34:
	.string	"__GNUC_EXECUTION_CHARSET_NAME \"UTF-8\""
.LASF459:
	.string	"FPLOAD fld"
.LASF87:
	.string	"__LONG_LONG_WIDTH__ 64"
.LASF602:
	.string	"NDS_MHPMCOUNTER9 0xb09"
.LASF892:
	.string	"__PLIC_H__ "
.LASF336:
	.string	"__riscv_i 2001000"
.LASF877:
	.string	"AE350_PLMT ((PLMT_RegDef *) PLMT_BASE )"
.LASF141:
	.string	"__INTPTR_WIDTH__ 32"
.LASF315:
	.string	"__GCC_ATOMIC_LLONG_LOCK_FREE 1"
.LASF563:
	.string	"NDS_MISA 0x301"
.LASF777:
	.string	"NDS_MSCRATCHCSWL 0x349"
.LASF237:
	.string	"__FLT64_MAX_EXP__ 1024"
.LASF834:
	.string	"IRQ_GP2_SOURCE 12"
.LASF191:
	.string	"__LDBL_MAX__ 1.18973149535723176508575932662800702e+4932L"
.LASF89:
	.string	"__WINT_WIDTH__ 32"
.LASF48:
	.string	"__INT64_TYPE__ long long int"
.LASF26:
	.string	"__CHAR_BIT__ 8"
.LASF320:
	.string	"__SIZEOF_WCHAR_T__ 4"
.LASF891:
	.string	"NDS_PLIC_SW_BASE PLIC_SW_BASE"
.LASF739:
	.string	"NDS_MCOUNTERMASK_U 0x7d3"
.LASF362:
	.string	"DRV_I2C_DMA_RX_CH 3"
.LASF723:
	.string	"NDS_MHSP_CTL 0x7c6"
.LASF767:
	.string	"NDS_UDCAUSE 0x809"
.LASF618:
	.string	"NDS_MHPMCOUNTER25 0xb19"
.LASF446:
	.string	"MIP_MTIP (1 << IRQ_M_TIMER)"
.LASF833:
	.string	"IRQ_GP1_SOURCE 11"
.LASF631:
	.string	"NDS_MHPMCOUNTER7H 0xb87"
.LASF31:
	.string	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF274:
	.string	"__FLT32X_NORM_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF38:
	.string	"__WCHAR_TYPE__ int"
.LASF673:
	.string	"NDS_MHPMEVENT20 0x334"
.LASF522:
	.string	"NDS_HPMCOUNTER8H 0xc88"
.LASF714:
	.string	"NDS_MICM_CFG 0xfc0"
.LASF696:
	.string	"NDS_HTVEC 0x205"
.LASF548:
	.string	"NDS_SIDELEG 0x103"
.LASF753:
	.string	"NDS_SCOUNTERMASK_U 0x9d3"
.LASF436:
	.string	"TRAP_S_L_ACC_FAULT 5"
.LASF858:
	.string	"PLMT_BASE _IO_(0xE6000000)"
.LASF883:
	.string	"AE350_WDT ((WDT_RegDef *) WDT_BASE )"
.LASF386:
	.string	"DRV_RTC 1"
.LASF197:
	.string	"__LDBL_HAS_INFINITY__ 1"
.LASF934:
	.string	"unsigned int"
.LASF439:
	.string	"TRAP_S_L_PAGE_FAULT 13"
.LASF778:
	.string	"NDS_MSAVEDCAUSE1 0x7db"
.LASF763:
	.string	"NDS_MSAVECAUSE1 0x7d8"
.LASF151:
	.string	"__FLT_MIN_EXP__ (-125)"
.LASF247:
	.string	"__FLT64_HAS_QUIET_NAN__ 1"
.LASF39:
	.string	"__WINT_TYPE__ unsigned int"
.LASF291:
	.string	"__FLT64X_NORM_MAX__ 1.18973149535723176508575932662800702e+4932F64x"
.LASF932:
	.string	"__DELAY_H__ "
.LASF273:
	.string	"__FLT32X_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF245:
	.string	"__FLT64_HAS_DENORM__ 1"
.LASF150:
	.string	"__FLT_DIG__ 6"
.LASF41:
	.string	"__UINTMAX_TYPE__ long long unsigned int"
.LASF442:
	.string	"MIP_HSIP (1 << IRQ_H_SOFT)"
.LASF588:
	.string	"NDS_PMPADDR10 0x3ba"
.LASF145:
	.string	"__FLT_EVAL_METHOD__ 0"
.LASF579:
	.string	"NDS_PMPADDR1 0x3b1"
.LASF156:
	.string	"__FLT_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF72:
	.string	"__SCHAR_MAX__ 0x7f"
.LASF129:
	.string	"__INT_FAST8_WIDTH__ 32"
.LASF475:
	.string	"NDS_UEPC 0x041"
.LASF635:
	.string	"NDS_MHPMCOUNTER11H 0xb8b"
.LASF255:
	.string	"__FLT128_MAX_10_EXP__ 4932"
.LASF202:
	.string	"__FLT16_MIN_EXP__ (-13)"
.LASF143:
	.string	"__GCC_IEC_559 2"
.LASF493:
	.string	"NDS_HPMCOUNTER11 0xc0b"
.LASF521:
	.string	"NDS_HPMCOUNTER7H 0xc87"
.LASF874:
	.string	"AHBDEC_BASE _IO_(0xE0000000)"
.LASF322:
	.string	"__SIZEOF_PTRDIFF_T__ 4"
.LASF2:
	.string	"__STDC__ 1"
.LASF712:
	.string	"NDS_DSCRATCH0 0x7b2"
.LASF32:
	.string	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF155:
	.string	"__FLT_DECIMAL_DIG__ 9"
.LASF49:
	.string	"__UINT8_TYPE__ unsigned char"
.LASF674:
	.string	"NDS_MHPMEVENT21 0x335"
.LASF667:
	.string	"NDS_MHPMEVENT14 0x32e"
.LASF44:
	.string	"__SIG_ATOMIC_TYPE__ int"
.LASF799:
	.string	"NDS_PMAADDR9 0xbd9"
.LASF35:
	.string	"__GNUC_WIDE_EXECUTION_CHARSET_NAME \"UTF-32LE\""
.LASF330:
	.string	"__riscv_flen 64"
.LASF84:
	.string	"__SHRT_WIDTH__ 16"
.LASF903:
	.string	"PLIC_CLAIM_OFFSET (0x00200004UL)"
.LASF524:
	.string	"NDS_HPMCOUNTER10H 0xc8a"
.LASF619:
	.string	"NDS_MHPMCOUNTER26 0xb1a"
.LASF750:
	.string	"NDS_SCCTLDATA 0x9cd"
.LASF680:
	.string	"NDS_MHPMEVENT27 0x33b"
.LASF445:
	.string	"MIP_HTIP (1 << IRQ_H_TIMER)"
.LASF132:
	.string	"__INT_FAST32_MAX__ 0x7fffffff"
.LASF875:
	.string	"PLDM_BASE _IO_(0xE6800000)"
.LASF296:
	.string	"__FLT64X_HAS_INFINITY__ 1"
.LASF308:
	.string	"__GCC_ATOMIC_CHAR_LOCK_FREE 2"
.LASF856:
	.string	"SPIMEM_BASE 0x80000000"
.LASF556:
	.string	"NDS_SIP 0x144"
.LASF652:
	.string	"NDS_MHPMCOUNTER28H 0xb9c"
.LASF281:
	.string	"__FP_FAST_FMAF32x 1"
.LASF585:
	.string	"NDS_PMPADDR7 0x3b7"
.LASF551:
	.string	"NDS_SCOUNTEREN 0x106"
.LASF887:
	.string	"AE350_SPI ((SPI_RegDef *) SPI_BASE )"
.LASF872:
	.string	"PLIC_SW_BASE _IO_(0xE6400000)"
.LASF375:
	.string	"DRV_UART2_DMA_RX_EN 0"
.LASF219:
	.string	"__FLT32_MIN_10_EXP__ (-37)"
.LASF589:
	.string	"NDS_PMPADDR11 0x3bb"
.LASF844:
	.string	"IRQ_GP12_SOURCE 22"
.LASF382:
	.string	"DRV_SPI_DMA_RX_EN 0"
.LASF409:
	.string	"MSTATUS64_SD 0x8000000000000000"
.LASF342:
	.string	"__riscv_zicsr 2000000"
.LASF742:
	.string	"NDS_MCCTLBEGINADDR 0x7cb"
.LASF832:
	.string	"IRQ_DMA_SOURCE 10"
.LASF27:
	.string	"__BIGGEST_ALIGNMENT__ 16"
.LASF726:
	.string	"NDS_MDCAUSE 0x7c9"
.LASF765:
	.string	"NDS_MSAVECAUSE2 0x7da"
.LASF905:
	.string	"HAL_MTIMER_INITIAL() "
.LASF183:
	.string	"__LDBL_MANT_DIG__ 113"
.LASF541:
	.string	"NDS_HPMCOUNTER27H 0xc9b"
.LASF603:
	.string	"NDS_MHPMCOUNTER10 0xb0a"
.LASF758:
	.string	"NDS_SHPMEVENT4 0x9e4"
.LASF841:
	.string	"IRQ_GP9_SOURCE 19"
.LASF700:
	.string	"NDS_HBADADDR 0x243"
.LASF697:
	.string	"NDS_HSCRATCH 0x240"
.LASF671:
	.string	"NDS_MHPMEVENT18 0x332"
.LASF713:
	.string	"NDS_DSCRATCH1 0x7b3"
.LASF485:
	.string	"NDS_HPMCOUNTER3 0xc03"
.LASF650:
	.string	"NDS_MHPMCOUNTER26H 0xb9a"
.LASF898:
	.string	"PLIC_PENDING_SHIFT_PER_SOURCE 0"
.LASF76:
	.string	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL"
.LASF675:
	.string	"NDS_MHPMEVENT22 0x336"
.LASF200:
	.string	"__FLT16_MANT_DIG__ 11"
.LASF609:
	.string	"NDS_MHPMCOUNTER16 0xb10"
.LASF408:
	.string	"MSTATUS32_SD 0x80000000"
.LASF482:
	.string	"NDS_CYCLE 0xc00"
.LASF698:
	.string	"NDS_HEPC 0x241"
.LASF297:
	.string	"__FLT64X_HAS_QUIET_NAN__ 1"
.LASF251:
	.string	"__FLT128_DIG__ 33"
.LASF109:
	.string	"__INT8_C(c) c"
.LASF223:
	.string	"__FLT32_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF620:
	.string	"NDS_MHPMCOUNTER27 0xb1b"
.LASF815:
	.string	"KHz 1000"
.LASF294:
	.string	"__FLT64X_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F64x"
.LASF168:
	.string	"__DBL_MIN_EXP__ (-1021)"
.LASF196:
	.string	"__LDBL_HAS_DENORM__ 1"
.LASF706:
	.string	"NDS_MDBASE 0x384"
.LASF910:
	.string	"HAL_MSWI_DISABLE() clear_csr(NDS_MIE, MIP_MSIP)"
.LASF363:
	.string	"DRV_I2C_DMA_RX_REQID 8"
.LASF208:
	.string	"__FLT16_NORM_MAX__ 6.55040000000000000000000000000000000e+4F16"
.LASF217:
	.string	"__FLT32_DIG__ 6"
.LASF867:
	.string	"DMAC_BASE _IO_(0xF0C00000)"
.LASF601:
	.string	"NDS_MHPMCOUNTER8 0xb08"
.LASF754:
	.string	"NDS_SCOUNTEROVF 0x9d4"
.LASF438:
	.string	"TRAP_S_I_PAGE_FAULT 12"
.LASF627:
	.string	"NDS_MHPMCOUNTER3H 0xb83"
.LASF724:
	.string	"NDS_MSP_BOUND 0x7c7"
.LASF306:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1"
.LASF590:
	.string	"NDS_PMPADDR12 0x3bc"
.LASF890:
	.string	"NDS_PLIC_BASE PLIC_BASE"
.LASF127:
	.string	"__UINT64_C(c) c ## ULL"
.LASF390:
	.string	"SUPPORT_PFT_ARCH 1"
.LASF518:
	.string	"NDS_HPMCOUNTER4H 0xc84"
.LASF55:
	.string	"__INT_LEAST32_TYPE__ long int"
.LASF337:
	.string	"__riscv_m 2000000"
.LASF492:
	.string	"NDS_HPMCOUNTER10 0xc0a"
.LASF126:
	.string	"__UINT_LEAST64_MAX__ 0xffffffffffffffffULL"
.LASF263:
	.string	"__FLT128_HAS_INFINITY__ 1"
.LASF139:
	.string	"__UINT_FAST64_MAX__ 0xffffffffffffffffULL"
.LASF604:
	.string	"NDS_MHPMCOUNTER11 0xb0b"
.LASF249:
	.string	"__FLT64_IS_IEC_60559__ 1"
.LASF566:
	.string	"NDS_MIE 0x304"
.LASF756:
	.string	"NDS_SCOUNTERMASK_M 0x9d1"
.LASF28:
	.string	"__ORDER_LITTLE_ENDIAN__ 1234"
.LASF573:
	.string	"NDS_MIP 0x344"
.LASF935:
	.string	"long long unsigned int"
.LASF826:
	.string	"IRQ_GP0_SOURCE 4"
.LASF486:
	.string	"NDS_HPMCOUNTER4 0xc04"
.LASF476:
	.string	"NDS_UCAUSE 0x042"
.LASF199:
	.string	"__LDBL_IS_IEC_60559__ 1"
.LASF676:
	.string	"NDS_MHPMEVENT23 0x337"
.LASF784:
	.string	"NDS_PUSHMEPC 0x7ef"
.LASF79:
	.string	"__WINT_MAX__ 0xffffffffU"
.LASF725:
	.string	"NDS_MSP_BASE 0x7c8"
.LASF538:
	.string	"NDS_HPMCOUNTER24H 0xc98"
.LASF422:
	.string	"IRQ_HOST 13"
.LASF211:
	.string	"__FLT16_DENORM_MIN__ 5.96046447753906250000000000000000000e-8F16"
.LASF621:
	.string	"NDS_MHPMCOUNTER28 0xb1c"
.LASF352:
	.string	"BUILD_LOAD 1"
.LASF58:
	.string	"__UINT_LEAST16_TYPE__ short unsigned int"
.LASF42:
	.string	"__CHAR16_TYPE__ short unsigned int"
.LASF471:
	.string	"NDS_USTATUS 0x000"
.LASF298:
	.string	"__FLT64X_IS_IEC_60559__ 1"
.LASF267:
	.string	"__FLT32X_DIG__ 15"
.LASF361:
	.string	"DRV_I2C_DMA_RX_EN 0"
.LASF545:
	.string	"NDS_HPMCOUNTER31H 0xc9f"
.LASF900:
	.string	"PLIC_ENABLE_SHIFT_PER_TARGET 7"
.LASF17:
	.string	"__FINITE_MATH_ONLY__ 0"
.LASF716:
	.string	"NDS_MMSC_CFG 0xfc2"
.LASF130:
	.string	"__INT_FAST16_MAX__ 0x7fffffff"
.LASF372:
	.string	"DRV_UART2_DMA_TX_EN 0"
.LASF329:
	.string	"__riscv_xlen 32"
.LASF591:
	.string	"NDS_PMPADDR13 0x3bd"
.LASF648:
	.string	"NDS_MHPMCOUNTER24H 0xb98"
.LASF256:
	.string	"__FLT128_DECIMAL_DIG__ 36"
.LASF188:
	.string	"__LDBL_MAX_10_EXP__ 4932"
.LASF112:
	.string	"__INT16_C(c) c"
.LASF828:
	.string	"IRQ_I2C_SOURCE 6"
.LASF641:
	.string	"NDS_MHPMCOUNTER17H 0xb91"
.LASF395:
	.string	"MSTATUS_UPIE 0x00000010"
.LASF455:
	.string	"LWU lw"
.LASF605:
	.string	"NDS_MHPMCOUNTER12 0xb0c"
.LASF840:
	.string	"IRQ_GP8_SOURCE 18"
.LASF913:
	.string	"HAL_MIE_ENABLE() set_csr(NDS_MSTATUS, MSTATUS_MIE)"
.LASF275:
	.string	"__FLT32X_MIN__ 2.22507385850720138309023271733240406e-308F32x"
.LASF338:
	.string	"__riscv_a 2001000"
.LASF692:
	.string	"NDS_HSTATUS 0x200"
.LASF761:
	.string	"NDS_MSAVESTATUS 0x7d6"
.LASF915:
	.string	"HAL_MEIP_ENABLE() set_csr(NDS_MIE, MIP_MEIP)"
.LASF487:
	.string	"NDS_HPMCOUNTER5 0xc05"
.LASF677:
	.string	"NDS_MHPMEVENT24 0x338"
.LASF401:
	.string	"MSTATUS_MPP 0x00001800"
.LASF906:
	.string	"HAL_MTIME_ENABLE() set_csr(NDS_MIE, MIP_MTIP)"
.LASF397:
	.string	"MSTATUS_HPIE 0x00000040"
.LASF690:
	.string	"NDS_DCSR 0x7b0"
.LASF530:
	.string	"NDS_HPMCOUNTER16H 0xc90"
.LASF827:
	.string	"IRQ_SPI_SOURCE 5"
.LASF546:
	.string	"NDS_SSTATUS 0x100"
.LASF805:
	.string	"NDS_PMAADDR15 0xbdf"
.LASF622:
	.string	"NDS_MHPMCOUNTER29 0xb1d"
.LASF743:
	.string	"NDS_MCCTLCOMMAND 0x7cc"
.LASF745:
	.string	"NDS_UCCTLBEGINADDR 0x80b"
.LASF594:
	.string	"NDS_MCYCLE 0xb00"
.LASF175:
	.string	"__DBL_MIN__ ((double)2.22507385850720138309023271733240406e-308L)"
.LASF325:
	.string	"__riscv_atomic 1"
.LASF292:
	.string	"__FLT64X_MIN__ 3.36210314311209350626267781732175260e-4932F64x"
.LASF838:
	.string	"IRQ_GP6_SOURCE 16"
.LASF908:
	.string	"HAL_MSWI_INITIAL() { __nds__plic_sw_set_priority(1, 1); __nds__plic_sw_enable_interrupt(1); }"
.LASF405:
	.string	"MSTATUS_PUM 0x00040000"
.LASF719:
	.string	"NDS_MECC_CODE 0x7c2"
.LASF791:
	.string	"NDS_PMAADDR1 0xbd1"
.LASF820:
	.string	"HCLKFREQ (OSCFREQ )"
.LASF8:
	.string	"__GNUC_MINOR__ 2"
.LASF896:
	.string	"PLIC_PRIORITY_SHIFT_PER_SOURCE 2"
.LASF59:
	.string	"__UINT_LEAST32_TYPE__ long unsigned int"
.LASF186:
	.string	"__LDBL_MIN_10_EXP__ (-4931)"
.LASF40:
	.string	"__INTMAX_TYPE__ long long int"
.LASF592:
	.string	"NDS_PMPADDR14 0x3be"
.LASF313:
	.string	"__GCC_ATOMIC_INT_LOCK_FREE 2"
.LASF940:
	.string	"rdmcycle"
.LASF276:
	.string	"__FLT32X_EPSILON__ 2.22044604925031308084726333618164062e-16F32x"
.LASF260:
	.string	"__FLT128_EPSILON__ 1.92592994438723585305597794258492732e-34F128"
.LASF427:
	.string	"TRAP_S_ECALL 9"
.LASF837:
	.string	"IRQ_GP5_SOURCE 15"
.LASF494:
	.string	"NDS_HPMCOUNTER12 0xc0c"
.LASF180:
	.string	"__DBL_HAS_QUIET_NAN__ 1"
.LASF862:
	.string	"PIT_BASE _IO_(0xF0400000)"
.LASF606:
	.string	"NDS_MHPMCOUNTER13 0xb0d"
.LASF348:
	.string	"__PLATFORM_H__ "
.LASF580:
	.string	"NDS_PMPADDR2 0x3b2"
.LASF77:
	.string	"__WCHAR_MAX__ 0x7fffffff"
.LASF261:
	.string	"__FLT128_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F128"
.LASF879:
	.string	"AE350_SMU ((SMU_RegDef *) SMU_BASE )"
.LASF69:
	.string	"__INTPTR_TYPE__ int"
.LASF488:
	.string	"NDS_HPMCOUNTER6 0xc06"
.LASF70:
	.string	"__UINTPTR_TYPE__ unsigned int"
.LASF349:
	.string	"__CONFIG_H__ "
.LASF299:
	.string	"__REGISTER_PREFIX__ "
.LASF678:
	.string	"NDS_MHPMEVENT25 0x339"
.LASF167:
	.string	"__DBL_DIG__ 15"
.LASF25:
	.string	"__SIZEOF_SIZE_T__ 4"
.LASF836:
	.string	"IRQ_GP4_SOURCE 14"
.LASF505:
	.string	"NDS_HPMCOUNTER23 0xc17"
.LASF118:
	.string	"__INT64_C(c) c ## LL"
.LASF243:
	.string	"__FLT64_EPSILON__ 2.22044604925031308084726333618164062e-16F64"
.LASF737:
	.string	"NDS_MCOUNTERMASK_M 0x7d1"
.LASF75:
	.string	"__LONG_MAX__ 0x7fffffffL"
.LASF715:
	.string	"NDS_MDCM_CFG 0xfc1"
.LASF448:
	.string	"MIP_HEIP (1 << IRQ_H_EXT)"
.LASF916:
	.string	"HAL_MEIP_DISABLE() clear_csr(NDS_MIE, MIP_MEIP)"
.LASF633:
	.string	"NDS_MHPMCOUNTER9H 0xb89"
.LASF645:
	.string	"NDS_MHPMCOUNTER21H 0xb95"
.LASF922:
	.string	"DEV_DMA AE350_DMA"
.LASF868:
	.string	"SPI_BASE _IO_(0xF0F00000)"
.LASF792:
	.string	"NDS_PMAADDR2 0xbd2"
.LASF123:
	.string	"__UINT16_C(c) c"
.LASF691:
	.string	"NDS_DPC 0x7b1"
.LASF209:
	.string	"__FLT16_MIN__ 6.10351562500000000000000000000000000e-5F16"
.LASF210:
	.string	"__FLT16_EPSILON__ 9.76562500000000000000000000000000000e-4F16"
.LASF562:
	.string	"NDS_MSTATUS 0x300"
.LASF302:
	.string	"__NO_INLINE__ 1"
.LASF593:
	.string	"NDS_PMPADDR15 0x3bf"
.LASF287:
	.string	"__FLT64X_MAX_EXP__ 16384"
.LASF431:
	.string	"TRAP_M_L_PAGE_FAULT 13"
.LASF11:
	.string	"__ATOMIC_RELAXED 0"
.LASF224:
	.string	"__FLT32_NORM_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF179:
	.string	"__DBL_HAS_INFINITY__ 1"
.LASF97:
	.string	"__SIG_ATOMIC_MAX__ 0x7fffffff"
.LASF233:
	.string	"__FLT64_MANT_DIG__ 53"
.LASF534:
	.string	"NDS_HPMCOUNTER20H 0xc94"
.LASF527:
	.string	"NDS_HPMCOUNTER13H 0xc8d"
.LASF852:
	.string	"__IO volatile"
.LASF413:
	.string	"IRQ_H_SOFT 2"
.LASF607:
	.string	"NDS_MHPMCOUNTER14 0xb0e"
.LASF847:
	.string	"IRQ_GP15_SOURCE 25"
.LASF533:
	.string	"NDS_HPMCOUNTER19H 0xc93"
.LASF581:
	.string	"NDS_PMPADDR3 0x3b3"
.LASF885:
	.string	"AE350_GPIO ((GPIO_RegDef *) GPIO_BASE )"
.LASF172:
	.string	"__DBL_DECIMAL_DIG__ 17"
.LASF404:
	.string	"MSTATUS_MPRV 0x00020000"
.LASF710:
	.string	"NDS_MHCOUNTEREN 0x322"
.LASF358:
	.string	"DRV_I2C_DMA_TX_EN 0"
.LASF174:
	.string	"__DBL_NORM_MAX__ ((double)1.79769313486231570814527423731704357e+308L)"
.LASF101:
	.string	"__INT16_MAX__ 0x7fff"
.LASF326:
	.string	"__riscv_mul 1"
.LASF389:
	.string	"__CORE_V5_H__ "
.LASF472:
	.string	"NDS_UIE 0x004"
.LASF85:
	.string	"__INT_WIDTH__ 32"
.LASF506:
	.string	"NDS_HPMCOUNTER24 0xc18"
.LASF478:
	.string	"NDS_UIP 0x044"
.LASF496:
	.string	"NDS_HPMCOUNTER14 0xc0e"
.LASF333:
	.string	"__riscv_float_abi_double 1"
.LASF250:
	.string	"__FLT128_MANT_DIG__ 113"
.LASF637:
	.string	"NDS_MHPMCOUNTER13H 0xb8d"
.LASF420:
	.string	"IRQ_M_EXT 11"
.LASF440:
	.string	"TRAP_S_S_PAGE_FAULT 15"
.LASF694:
	.string	"NDS_HIDELEG 0x203"
.LASF450:
	.string	"MILMB_IEN (0x1UL)"
.LASF452:
	.string	"SLL32 sll"
.LASF371:
	.string	"DRV_UART2 1"
.LASF625:
	.string	"NDS_MCYCLEH 0xb80"
.LASF705:
	.string	"NDS_MIBOUND 0x383"
.LASF509:
	.string	"NDS_HPMCOUNTER27 0xc1b"
.LASF423:
	.string	"TRAP_M_I_ACC_FAULT 1"
.LASF679:
	.string	"NDS_MHPMEVENT26 0x33a"
.LASF124:
	.string	"__UINT_LEAST32_MAX__ 0xffffffffUL"
.LASF321:
	.string	"__SIZEOF_WINT_T__ 4"
.LASF114:
	.string	"__INT_LEAST32_MAX__ 0x7fffffffL"
.LASF204:
	.string	"__FLT16_MAX_EXP__ 16"
.LASF787:
	.string	"NDS_PMACFG1 0xbc1"
.LASF586:
	.string	"NDS_PMPADDR8 0x3b8"
.LASF822:
	.string	"UCLKFREQ (OSCFREQ )"
.LASF128:
	.string	"__INT_FAST8_MAX__ 0x7fffffff"
.LASF228:
	.string	"__FLT32_HAS_DENORM__ 1"
.LASF526:
	.string	"NDS_HPMCOUNTER12H 0xc8c"
.LASF888:
	.string	"__INTERRUPT_H__ "
.LASF133:
	.string	"__INT_FAST32_WIDTH__ 32"
.LASF596:
	.string	"NDS_MHPMCOUNTER3 0xb03"
.LASF24:
	.string	"__SIZEOF_LONG_DOUBLE__ 16"
.LASF608:
	.string	"NDS_MHPMCOUNTER15 0xb0f"
.LASF257:
	.string	"__FLT128_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF51:
	.string	"__UINT32_TYPE__ long unsigned int"
.LASF582:
	.string	"NDS_PMPADDR4 0x3b4"
.LASF240:
	.string	"__FLT64_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF262:
	.string	"__FLT128_HAS_DENORM__ 1"
.LASF775:
	.string	"NDS_MINTSTATUS 0x346"
.LASF809:
	.string	"swap_csr(reg,val) ({ unsigned long __tmp; asm volatile (\"csrrw %0, \" XSTR(reg) \", %1\" : \"=r\"(__tmp) : \"rK\"(val)); __tmp; })"
.LASF411:
	.string	"MCAUSE_CAUSE 0x7FFFFFFFUL"
.LASF931:
	.string	"DEV_SPI AE350_SPI"
.LASF663:
	.string	"NDS_MHPMEVENT10 0x32a"
.LASF857:
	.string	"DDRMEM_BASE 0x00000000"
.LASF703:
	.string	"NDS_MBOUND 0x381"
.LASF18:
	.string	"__SIZEOF_INT__ 4"
.LASF830:
	.string	"IRQ_UART1_SOURCE 8"
.LASF630:
	.string	"NDS_MHPMCOUNTER6H 0xb86"
.LASF507:
	.string	"NDS_HPMCOUNTER25 0xc19"
.LASF938:
	.string	"simple_delay_ms"
.LASF557:
	.string	"NDS_SATP 0x180"
.LASF340:
	.string	"__riscv_d 2002000"
.LASF201:
	.string	"__FLT16_DIG__ 3"
.LASF525:
	.string	"NDS_HPMCOUNTER11H 0xc8b"
.LASF543:
	.string	"NDS_HPMCOUNTER29H 0xc9d"
.LASF930:
	.string	"DEV_I2C AE350_I2C"
.LASF159:
	.string	"__FLT_EPSILON__ 1.19209289550781250000000000000000000e-7F"
.LASF454:
	.string	"LOAD lw"
.LASF193:
	.string	"__LDBL_MIN__ 3.36210314311209350626267781732175260e-4932L"
.LASF861:
	.string	"UART2_BASE _IO_(0xF0300000)"
.LASF66:
	.string	"__UINT_FAST16_TYPE__ unsigned int"
.LASF924:
	.string	"DEV_UART1 AE350_UART1"
.LASF720:
	.string	"NDS_MNVEC 0x7c3"
.LASF919:
	.string	"HAL_INTERRUPT_THRESHOLD(threshold) __nds__plic_set_threshold(threshold)"
.LASF91:
	.string	"__SIZE_WIDTH__ 32"
.LASF794:
	.string	"NDS_PMAADDR4 0xbd4"
.LASF351:
	.string	"BUILD_MODE BUILD_BURN"
.LASF80:
	.string	"__WINT_MIN__ 0U"
.LASF886:
	.string	"AE350_I2C ((I2C_RegDef *) I2C_BASE )"
.LASF788:
	.string	"NDS_PMACFG2 0xbc2"
.LASF895:
	.string	"PLIC_PRIORITY_OFFSET (0x00000000UL)"
.LASF234:
	.string	"__FLT64_DIG__ 15"
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
.LASF353:
	.string	"BUILD_BURN 2"
.LASF597:
	.string	"NDS_MHPMCOUNTER4 0xb04"
.LASF229:
	.string	"__FLT32_HAS_INFINITY__ 1"
.LASF649:
	.string	"NDS_MHPMCOUNTER25H 0xb99"
.LASF387:
	.string	"DRV_WDT 1"
.LASF347:
	.string	"__RTTHREAD__ 1"
.LASF430:
	.string	"TRAP_M_I_PAGE_FAULT 12"
.LASF324:
	.string	"__riscv_compressed 1"
.LASF441:
	.string	"MIP_SSIP (1 << IRQ_S_SOFT)"
.LASF185:
	.string	"__LDBL_MIN_EXP__ (-16381)"
.LASF392:
	.string	"MSTATUS_SIE 0x00000002"
.LASF583:
	.string	"NDS_PMPADDR5 0x3b5"
.LASF176:
	.string	"__DBL_EPSILON__ ((double)2.22044604925031308084726333618164062e-16L)"
.LASF623:
	.string	"NDS_MHPMCOUNTER30 0xb1e"
.LASF82:
	.string	"__SIZE_MAX__ 0xffffffffU"
.LASF629:
	.string	"NDS_MHPMCOUNTER5H 0xb85"
.LASF433:
	.string	"TRAP_M_STACKOVF 32"
.LASF634:
	.string	"NDS_MHPMCOUNTER10H 0xb8a"
.LASF904:
	.string	"PLIC_CLAIM_SHIFT_PER_TARGET 12"
.LASF664:
	.string	"NDS_MHPMEVENT11 0x32b"
.LASF570:
	.string	"NDS_MEPC 0x341"
.LASF520:
	.string	"NDS_HPMCOUNTER6H 0xc86"
.LASF345:
	.string	"NO_INIT 1"
.LASF769:
	.string	"NDS_SLEEPVALUE 0x811"
.LASF927:
	.string	"DEV_WDT AE350_WDT"
.LASF394:
	.string	"MSTATUS_MIE 0x00000008"
.LASF37:
	.string	"__PTRDIFF_TYPE__ int"
.LASF889:
	.string	"USE_PLIC "
.LASF539:
	.string	"NDS_HPMCOUNTER25H 0xc99"
.LASF367:
	.string	"DRV_UART1_DMA_TX_REQID 4"
.LASF730:
	.string	"NDS_DDCAUSE 0x7e1"
.LASF558:
	.string	"NDS_MVENDORID 0xf11"
.LASF458:
	.string	"FPSTORE fsd"
.LASF266:
	.string	"__FLT32X_MANT_DIG__ 53"
.LASF473:
	.string	"NDS_UTVEC 0x005"
.LASF88:
	.string	"__WCHAR_WIDTH__ 32"
.LASF632:
	.string	"NDS_MHPMCOUNTER8H 0xb88"
.LASF810:
	.string	"set_csr(reg,bit) ({ unsigned long __tmp; asm volatile (\"csrrs %0, \" XSTR(reg) \", %1\" : \"=r\"(__tmp) : \"rK\"(bit)); __tmp; })"
.LASF825:
	.string	"IRQ_PIT_SOURCE 3"
.LASF681:
	.string	"NDS_MHPMEVENT28 0x33c"
.LASF350:
	.string	"CFG_CACHE_ENABLE "
.LASF795:
	.string	"NDS_PMAADDR5 0xbd5"
.LASF435:
	.string	"TRAP_S_I_ACC_FAULT 1"
.LASF214:
	.string	"__FLT16_HAS_QUIET_NAN__ 1"
.LASF789:
	.string	"NDS_PMACFG3 0xbc3"
.LASF508:
	.string	"NDS_HPMCOUNTER26 0xc1a"
.LASF15:
	.string	"__ATOMIC_ACQ_REL 4"
.LASF47:
	.string	"__INT32_TYPE__ long int"
.LASF651:
	.string	"NDS_MHPMCOUNTER27H 0xb9b"
.LASF770:
	.string	"NDS_TXEVT 0x812"
.LASF360:
	.string	"DRV_I2C_DMA_TX_REQID 8"
.LASF881:
	.string	"AE350_UART2 ((UART_RegDef *) UART2_BASE )"
.LASF177:
	.string	"__DBL_DENORM_MIN__ ((double)4.94065645841246544176568792868221372e-324L)"
.LASF598:
	.string	"NDS_MHPMCOUNTER5 0xb05"
.LASF369:
	.string	"DRV_UART1_DMA_RX_CH 1"
.LASF483:
	.string	"NDS_TIME 0xc01"
.LASF835:
	.string	"IRQ_GP3_SOURCE 13"
.LASF929:
	.string	"DEV_GPIO AE350_GPIO"
.LASF863:
	.string	"WDT_BASE _IO_(0xF0500000)"
.LASF884:
	.string	"AE350_RTC ((RTC_RegDef *) RTC_BASE )"
.LASF94:
	.string	"__UINTMAX_MAX__ 0xffffffffffffffffULL"
.LASF683:
	.string	"NDS_MHPMEVENT30 0x33e"
.LASF166:
	.string	"__DBL_MANT_DIG__ 53"
.LASF512:
	.string	"NDS_HPMCOUNTER30 0xc1e"
.LASF656:
	.string	"NDS_MHPMEVENT3 0x323"
.LASF567:
	.string	"NDS_MTVEC 0x305"
.LASF845:
	.string	"IRQ_GP13_SOURCE 23"
.LASF624:
	.string	"NDS_MHPMCOUNTER31 0xb1f"
.LASF813:
	.string	"write_fcsr(val) ({ asm volatile (\"fscsr %0\" :: \"rK\"(val)); })"
.LASF610:
	.string	"NDS_MHPMCOUNTER17 0xb11"
.LASF74:
	.string	"__INT_MAX__ 0x7fffffff"
.LASF878:
	.string	"AE350_DMA ((DMA_RegDef *) DMAC_BASE )"
.LASF540:
	.string	"NDS_HPMCOUNTER26H 0xc9a"
.LASF665:
	.string	"NDS_MHPMEVENT12 0x32c"
.LASF928:
	.string	"DEV_RTC AE350_RTC"
.LASF470:
	.string	"__CSR_V5_H__ "
.LASF728:
	.string	"NDS_MMISC_CTL 0x7d0"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"ae350_soc/lib/delay.c"
.LASF1:
	.string	"/home/lc/git/rt-thread/bsp/gowin-riscv_ae350_soc"
	.ident	"GCC: () 13.2.0"
