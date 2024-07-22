	.file	"initfini.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/lc/git/rt-thread/bsp/gowin-riscv_ae350_soc" "ae350_soc/ae350/initfini.c"
	.section	.text._init,"ax",@progbits
	.align	1
	.globl	_init
	.type	_init, @function
_init:
.LFB0:
	.file 1 "ae350_soc/ae350/initfini.c"
	.loc 1 26 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 27 1
	nop
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	_init, .-_init
	.section	.text._fini,"ax",@progbits
	.align	1
	.globl	_fini
	.type	_fini, @function
_fini:
.LFB1:
	.loc 1 30 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 31 1
	nop
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1:
	.size	_fini, .-_fini
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x9b
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x3
	.4byte	.LASF676
	.byte	0x1d
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.4byte	.LASF663
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF664
	.uleb128 0x1
	.byte	0x2
	.byte	0x5
	.4byte	.LASF665
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.4byte	.LASF666
	.uleb128 0x1
	.byte	0x4
	.byte	0x5
	.4byte	.LASF667
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF668
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.4byte	.LASF669
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.4byte	.LASF670
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF671
	.uleb128 0x1
	.byte	0x10
	.byte	0x4
	.4byte	.LASF672
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF673
	.uleb128 0x2
	.4byte	.LASF674
	.byte	0x1d
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2
	.4byte	.LASF675
	.byte	0x19
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
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
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x2
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
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0x4
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
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x24
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
	.file 2 "/home/lc/tools/riscv32-unknown-elf/riscv32-unknown-elf/include/sys/types.h"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x2
	.file 3 "/home/lc/tools/riscv32-unknown-elf/riscv32-unknown-elf/include/_ansi.h"
	.byte	0x3
	.uleb128 0x14
	.uleb128 0x3
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF348
	.file 4 "/home/lc/tools/riscv32-unknown-elf/riscv32-unknown-elf/include/newlib.h"
	.byte	0x3
	.uleb128 0xa
	.uleb128 0x4
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF349
	.file 5 "/home/lc/tools/riscv32-unknown-elf/riscv32-unknown-elf/include/_newlib_version.h"
	.byte	0x3
	.uleb128 0xa
	.uleb128 0x5
	.byte	0x7
	.4byte	.Ldebug_macro2
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro3
	.byte	0x4
	.file 6 "/home/lc/tools/riscv32-unknown-elf/riscv32-unknown-elf/include/sys/config.h"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x6
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF369
	.file 7 "/home/lc/tools/riscv32-unknown-elf/riscv32-unknown-elf/include/machine/ieeefp.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x7
	.byte	0x7
	.4byte	.Ldebug_macro4
	.byte	0x4
	.file 8 "/home/lc/tools/riscv32-unknown-elf/riscv32-unknown-elf/include/sys/features.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x8
	.byte	0x7
	.4byte	.Ldebug_macro5
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro6
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro7
	.byte	0x4
	.file 9 "/home/lc/tools/riscv32-unknown-elf/riscv32-unknown-elf/include/sys/cdefs.h"
	.byte	0x3
	.uleb128 0x15
	.uleb128 0x9
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF403
	.file 10 "/home/lc/tools/riscv32-unknown-elf/riscv32-unknown-elf/include/machine/_default_types.h"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0xa
	.byte	0x7
	.4byte	.Ldebug_macro8
	.byte	0x4
	.file 11 "/home/lc/tools/riscv32-unknown-elf/lib/gcc/riscv32-unknown-elf/13.2.0/include/stddef.h"
	.byte	0x3
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x7
	.4byte	.Ldebug_macro9
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro10
	.byte	0x4
	.file 12 "/home/lc/tools/riscv32-unknown-elf/riscv32-unknown-elf/include/machine/_types.h"
	.byte	0x3
	.uleb128 0x16
	.uleb128 0xc
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF603
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro11
	.file 13 "/home/lc/tools/riscv32-unknown-elf/riscv32-unknown-elf/include/sys/_types.h"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0xd
	.byte	0x7
	.4byte	.Ldebug_macro12
	.byte	0x3
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x7
	.4byte	.Ldebug_macro13
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro14
	.byte	0x4
	.file 14 "/home/lc/tools/riscv32-unknown-elf/riscv32-unknown-elf/include/sys/_stdint.h"
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0xe
	.byte	0x7
	.4byte	.Ldebug_macro15
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro16
	.file 15 "/home/lc/tools/riscv32-unknown-elf/riscv32-unknown-elf/include/sys/_pthreadtypes.h"
	.byte	0x3
	.uleb128 0xdd
	.uleb128 0xf
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF660
	.byte	0x4
	.file 16 "/home/lc/tools/riscv32-unknown-elf/riscv32-unknown-elf/include/machine/types.h"
	.byte	0x3
	.uleb128 0xde
	.uleb128 0x10
	.byte	0x4
	.byte	0x6
	.uleb128 0xe2
	.4byte	.LASF661
	.byte	0x4
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF662
	.byte	0x4
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4._newlib_version.h.4.411db44ea2338a62eca2f0777f81481b,comdat
.Ldebug_macro2:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF350
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF351
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF352
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF353
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF354
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.newlib.h.33.804eb44b5bf18527c22c557ff390bf46,comdat
.Ldebug_macro3:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF355
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF356
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF357
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF358
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF359
	.byte	0x5
	.uleb128 0x16c
	.4byte	.LASF360
	.byte	0x5
	.uleb128 0x177
	.4byte	.LASF361
	.byte	0x5
	.uleb128 0x17d
	.4byte	.LASF362
	.byte	0x5
	.uleb128 0x181
	.4byte	.LASF363
	.byte	0x5
	.uleb128 0x185
	.4byte	.LASF364
	.byte	0x5
	.uleb128 0x189
	.4byte	.LASF365
	.byte	0x5
	.uleb128 0x19a
	.4byte	.LASF366
	.byte	0x5
	.uleb128 0x19d
	.4byte	.LASF367
	.byte	0x5
	.uleb128 0x1a3
	.4byte	.LASF368
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.ieeefp.h.219.5cc00e327f7a7b5a5a4153f16de7b5a7,comdat
.Ldebug_macro4:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0xdb
	.4byte	.LASF370
	.byte	0x5
	.uleb128 0xde
	.4byte	.LASF371
	.byte	0x5
	.uleb128 0xe1
	.4byte	.LASF372
	.byte	0x5
	.uleb128 0x20a
	.4byte	.LASF373
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.features.h.22.c0ef1e953210f9da7cbcd4f425fc3dd9,comdat
.Ldebug_macro5:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF374
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF375
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF376
	.byte	0x5
	.uleb128 0x103
	.4byte	.LASF377
	.byte	0x5
	.uleb128 0x109
	.4byte	.LASF378
	.byte	0x5
	.uleb128 0x10f
	.4byte	.LASF379
	.byte	0x5
	.uleb128 0x117
	.4byte	.LASF380
	.byte	0x5
	.uleb128 0x122
	.4byte	.LASF381
	.byte	0x5
	.uleb128 0x128
	.4byte	.LASF382
	.byte	0x5
	.uleb128 0x136
	.4byte	.LASF383
	.byte	0x5
	.uleb128 0x13e
	.4byte	.LASF384
	.byte	0x5
	.uleb128 0x14c
	.4byte	.LASF385
	.byte	0x5
	.uleb128 0x158
	.4byte	.LASF386
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.config.h.83.e34149fe91003a78bfbd7fc7c574422a,comdat
.Ldebug_macro6:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x53
	.4byte	.LASF387
	.byte	0x5
	.uleb128 0xe0
	.4byte	.LASF388
	.byte	0x6
	.uleb128 0xe6
	.4byte	.LASF389
	.byte	0x5
	.uleb128 0xea
	.4byte	.LASF390
	.byte	0x5
	.uleb128 0xf8
	.4byte	.LASF391
	.byte	0x5
	.uleb128 0xfc
	.4byte	.LASF392
	.byte	0x5
	.uleb128 0x109
	.4byte	.LASF393
	.byte	0x5
	.uleb128 0x122
	.4byte	.LASF394
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4._ansi.h.31.de524f58584151836e90d8620a16f8e8,comdat
.Ldebug_macro7:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF395
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF396
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF397
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF398
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF399
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF400
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF401
	.byte	0x5
	.uleb128 0x4a
	.4byte	.LASF402
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4._default_types.h.6.959254cf5f09734ea7516c89e8bb21bd,comdat
.Ldebug_macro8:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF404
	.byte	0x5
	.uleb128 0xf
	.4byte	.LASF405
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF406
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF407
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF408
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF409
	.byte	0x5
	.uleb128 0x53
	.4byte	.LASF410
	.byte	0x5
	.uleb128 0x6d
	.4byte	.LASF411
	.byte	0x5
	.uleb128 0x8c
	.4byte	.LASF412
	.byte	0x5
	.uleb128 0xa6
	.4byte	.LASF413
	.byte	0x5
	.uleb128 0xbc
	.4byte	.LASF414
	.byte	0x5
	.uleb128 0xce
	.4byte	.LASF415
	.byte	0x6
	.uleb128 0xf4
	.4byte	.LASF416
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stddef.h.39.0dc9006b34572d4d9cae4c8b422c4971,comdat
.Ldebug_macro9:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF417
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF418
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF419
	.byte	0x5
	.uleb128 0x84
	.4byte	.LASF420
	.byte	0x5
	.uleb128 0x85
	.4byte	.LASF421
	.byte	0x5
	.uleb128 0x86
	.4byte	.LASF422
	.byte	0x5
	.uleb128 0x87
	.4byte	.LASF423
	.byte	0x5
	.uleb128 0x88
	.4byte	.LASF424
	.byte	0x5
	.uleb128 0x89
	.4byte	.LASF425
	.byte	0x5
	.uleb128 0x8a
	.4byte	.LASF426
	.byte	0x5
	.uleb128 0x8b
	.4byte	.LASF427
	.byte	0x5
	.uleb128 0x8c
	.4byte	.LASF428
	.byte	0x5
	.uleb128 0x8d
	.4byte	.LASF429
	.byte	0x6
	.uleb128 0x9e
	.4byte	.LASF430
	.byte	0x5
	.uleb128 0xb9
	.4byte	.LASF431
	.byte	0x5
	.uleb128 0xba
	.4byte	.LASF432
	.byte	0x5
	.uleb128 0xbb
	.4byte	.LASF433
	.byte	0x5
	.uleb128 0xbc
	.4byte	.LASF434
	.byte	0x5
	.uleb128 0xbd
	.4byte	.LASF435
	.byte	0x5
	.uleb128 0xbe
	.4byte	.LASF436
	.byte	0x5
	.uleb128 0xbf
	.4byte	.LASF437
	.byte	0x5
	.uleb128 0xc0
	.4byte	.LASF438
	.byte	0x5
	.uleb128 0xc1
	.4byte	.LASF439
	.byte	0x5
	.uleb128 0xc2
	.4byte	.LASF440
	.byte	0x5
	.uleb128 0xc3
	.4byte	.LASF441
	.byte	0x5
	.uleb128 0xc4
	.4byte	.LASF442
	.byte	0x5
	.uleb128 0xc5
	.4byte	.LASF443
	.byte	0x5
	.uleb128 0xc6
	.4byte	.LASF444
	.byte	0x5
	.uleb128 0xc7
	.4byte	.LASF445
	.byte	0x5
	.uleb128 0xc8
	.4byte	.LASF446
	.byte	0x5
	.uleb128 0xc9
	.4byte	.LASF447
	.byte	0x5
	.uleb128 0xd0
	.4byte	.LASF448
	.byte	0x6
	.uleb128 0xed
	.4byte	.LASF449
	.byte	0x5
	.uleb128 0x10b
	.4byte	.LASF450
	.byte	0x5
	.uleb128 0x10c
	.4byte	.LASF451
	.byte	0x5
	.uleb128 0x10d
	.4byte	.LASF452
	.byte	0x5
	.uleb128 0x10e
	.4byte	.LASF453
	.byte	0x5
	.uleb128 0x10f
	.4byte	.LASF454
	.byte	0x5
	.uleb128 0x110
	.4byte	.LASF455
	.byte	0x5
	.uleb128 0x111
	.4byte	.LASF456
	.byte	0x5
	.uleb128 0x112
	.4byte	.LASF457
	.byte	0x5
	.uleb128 0x113
	.4byte	.LASF458
	.byte	0x5
	.uleb128 0x114
	.4byte	.LASF459
	.byte	0x5
	.uleb128 0x115
	.4byte	.LASF460
	.byte	0x5
	.uleb128 0x116
	.4byte	.LASF461
	.byte	0x5
	.uleb128 0x117
	.4byte	.LASF462
	.byte	0x5
	.uleb128 0x118
	.4byte	.LASF463
	.byte	0x5
	.uleb128 0x119
	.4byte	.LASF464
	.byte	0x5
	.uleb128 0x11a
	.4byte	.LASF465
	.byte	0x6
	.uleb128 0x127
	.4byte	.LASF466
	.byte	0x6
	.uleb128 0x15d
	.4byte	.LASF467
	.byte	0x6
	.uleb128 0x18f
	.4byte	.LASF468
	.byte	0x5
	.uleb128 0x194
	.4byte	.LASF469
	.byte	0x6
	.uleb128 0x19a
	.4byte	.LASF470
	.byte	0x6
	.uleb128 0x19f
	.4byte	.LASF471
	.byte	0x5
	.uleb128 0x1a0
	.4byte	.LASF472
	.byte	0x5
	.uleb128 0x1a5
	.4byte	.LASF473
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.cdefs.h.49.70fc7af612f78ddcace70fdd90b5623b,comdat
.Ldebug_macro10:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF474
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF475
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF476
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF477
	.byte	0x5
	.uleb128 0x39
	.4byte	.LASF478
	.byte	0x5
	.uleb128 0x3a
	.4byte	.LASF479
	.byte	0x5
	.uleb128 0x3c
	.4byte	.LASF480
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF481
	.byte	0x5
	.uleb128 0x3e
	.4byte	.LASF482
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF483
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF484
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF485
	.byte	0x5
	.uleb128 0x44
	.4byte	.LASF486
	.byte	0x5
	.uleb128 0x4e
	.4byte	.LASF487
	.byte	0x5
	.uleb128 0x51
	.4byte	.LASF488
	.byte	0x5
	.uleb128 0x5e
	.4byte	.LASF489
	.byte	0x5
	.uleb128 0x5f
	.4byte	.LASF490
	.byte	0x5
	.uleb128 0x6b
	.4byte	.LASF491
	.byte	0x5
	.uleb128 0x6c
	.4byte	.LASF492
	.byte	0x5
	.uleb128 0x70
	.4byte	.LASF493
	.byte	0x5
	.uleb128 0x71
	.4byte	.LASF494
	.byte	0x5
	.uleb128 0x73
	.4byte	.LASF495
	.byte	0x5
	.uleb128 0x75
	.4byte	.LASF496
	.byte	0x5
	.uleb128 0x78
	.4byte	.LASF497
	.byte	0x5
	.uleb128 0x79
	.4byte	.LASF498
	.byte	0x5
	.uleb128 0x7a
	.4byte	.LASF499
	.byte	0x5
	.uleb128 0x7d
	.4byte	.LASF500
	.byte	0x5
	.uleb128 0x82
	.4byte	.LASF501
	.byte	0x5
	.uleb128 0x84
	.4byte	.LASF502
	.byte	0x5
	.uleb128 0x85
	.4byte	.LASF503
	.byte	0x5
	.uleb128 0x87
	.4byte	.LASF504
	.byte	0x5
	.uleb128 0x8a
	.4byte	.LASF505
	.byte	0x5
	.uleb128 0x8b
	.4byte	.LASF506
	.byte	0x5
	.uleb128 0x8c
	.4byte	.LASF507
	.byte	0x5
	.uleb128 0x8e
	.4byte	.LASF508
	.byte	0x5
	.uleb128 0x8f
	.4byte	.LASF509
	.byte	0x5
	.uleb128 0x91
	.4byte	.LASF510
	.byte	0x5
	.uleb128 0x93
	.4byte	.LASF511
	.byte	0x5
	.uleb128 0xa4
	.4byte	.LASF512
	.byte	0x5
	.uleb128 0xa5
	.4byte	.LASF513
	.byte	0x5
	.uleb128 0xa6
	.4byte	.LASF514
	.byte	0x5
	.uleb128 0xa7
	.4byte	.LASF515
	.byte	0x5
	.uleb128 0xa8
	.4byte	.LASF516
	.byte	0x5
	.uleb128 0xaa
	.4byte	.LASF517
	.byte	0x5
	.uleb128 0xab
	.4byte	.LASF518
	.byte	0x5
	.uleb128 0xac
	.4byte	.LASF519
	.byte	0x5
	.uleb128 0xd9
	.4byte	.LASF520
	.byte	0x5
	.uleb128 0xe6
	.4byte	.LASF521
	.byte	0x5
	.uleb128 0xe7
	.4byte	.LASF522
	.byte	0x5
	.uleb128 0xe8
	.4byte	.LASF523
	.byte	0x5
	.uleb128 0xe9
	.4byte	.LASF524
	.byte	0x5
	.uleb128 0xea
	.4byte	.LASF525
	.byte	0x5
	.uleb128 0xeb
	.4byte	.LASF526
	.byte	0x5
	.uleb128 0xec
	.4byte	.LASF527
	.byte	0x5
	.uleb128 0xef
	.4byte	.LASF528
	.byte	0x5
	.uleb128 0xf0
	.4byte	.LASF529
	.byte	0x5
	.uleb128 0xf6
	.4byte	.LASF530
	.byte	0x5
	.uleb128 0x152
	.4byte	.LASF531
	.byte	0x5
	.uleb128 0x164
	.4byte	.LASF532
	.byte	0x5
	.uleb128 0x16a
	.4byte	.LASF533
	.byte	0x5
	.uleb128 0x16b
	.4byte	.LASF534
	.byte	0x5
	.uleb128 0x172
	.4byte	.LASF535
	.byte	0x5
	.uleb128 0x178
	.4byte	.LASF536
	.byte	0x5
	.uleb128 0x17e
	.4byte	.LASF537
	.byte	0x5
	.uleb128 0x17f
	.4byte	.LASF538
	.byte	0x5
	.uleb128 0x186
	.4byte	.LASF539
	.byte	0x5
	.uleb128 0x187
	.4byte	.LASF540
	.byte	0x5
	.uleb128 0x18e
	.4byte	.LASF541
	.byte	0x5
	.uleb128 0x194
	.4byte	.LASF542
	.byte	0x5
	.uleb128 0x1a5
	.4byte	.LASF543
	.byte	0x5
	.uleb128 0x1b2
	.4byte	.LASF544
	.byte	0x5
	.uleb128 0x1d4
	.4byte	.LASF545
	.byte	0x5
	.uleb128 0x1d5
	.4byte	.LASF546
	.byte	0x5
	.uleb128 0x1dc
	.4byte	.LASF547
	.byte	0x5
	.uleb128 0x1dd
	.4byte	.LASF548
	.byte	0x5
	.uleb128 0x1e0
	.4byte	.LASF549
	.byte	0x5
	.uleb128 0x1ea
	.4byte	.LASF550
	.byte	0x5
	.uleb128 0x1eb
	.4byte	.LASF551
	.byte	0x5
	.uleb128 0x1f5
	.4byte	.LASF552
	.byte	0x5
	.uleb128 0x20b
	.4byte	.LASF553
	.byte	0x5
	.uleb128 0x20d
	.4byte	.LASF554
	.byte	0x5
	.uleb128 0x20f
	.4byte	.LASF555
	.byte	0x5
	.uleb128 0x210
	.4byte	.LASF556
	.byte	0x5
	.uleb128 0x212
	.4byte	.LASF557
	.byte	0x5
	.uleb128 0x21c
	.4byte	.LASF558
	.byte	0x5
	.uleb128 0x220
	.4byte	.LASF559
	.byte	0x5
	.uleb128 0x224
	.4byte	.LASF560
	.byte	0x5
	.uleb128 0x227
	.4byte	.LASF561
	.byte	0x5
	.uleb128 0x22b
	.4byte	.LASF562
	.byte	0x5
	.uleb128 0x22d
	.4byte	.LASF563
	.byte	0x5
	.uleb128 0x250
	.4byte	.LASF564
	.byte	0x5
	.uleb128 0x254
	.4byte	.LASF565
	.byte	0x5
	.uleb128 0x258
	.4byte	.LASF566
	.byte	0x5
	.uleb128 0x25c
	.4byte	.LASF567
	.byte	0x5
	.uleb128 0x260
	.4byte	.LASF568
	.byte	0x5
	.uleb128 0x264
	.4byte	.LASF569
	.byte	0x5
	.uleb128 0x268
	.4byte	.LASF570
	.byte	0x5
	.uleb128 0x26c
	.4byte	.LASF571
	.byte	0x5
	.uleb128 0x273
	.4byte	.LASF572
	.byte	0x5
	.uleb128 0x274
	.4byte	.LASF573
	.byte	0x5
	.uleb128 0x275
	.4byte	.LASF574
	.byte	0x5
	.uleb128 0x276
	.4byte	.LASF575
	.byte	0x5
	.uleb128 0x277
	.4byte	.LASF576
	.byte	0x5
	.uleb128 0x28c
	.4byte	.LASF577
	.byte	0x5
	.uleb128 0x28d
	.4byte	.LASF578
	.byte	0x5
	.uleb128 0x29f
	.4byte	.LASF579
	.byte	0x5
	.uleb128 0x2a5
	.4byte	.LASF580
	.byte	0x5
	.uleb128 0x2a8
	.4byte	.LASF581
	.byte	0x5
	.uleb128 0x2aa
	.4byte	.LASF582
	.byte	0x5
	.uleb128 0x2ae
	.4byte	.LASF583
	.byte	0x5
	.uleb128 0x2b0
	.4byte	.LASF584
	.byte	0x5
	.uleb128 0x2b4
	.4byte	.LASF585
	.byte	0x5
	.uleb128 0x2b7
	.4byte	.LASF586
	.byte	0x5
	.uleb128 0x2b9
	.4byte	.LASF587
	.byte	0x5
	.uleb128 0x2bd
	.4byte	.LASF588
	.byte	0x5
	.uleb128 0x2bf
	.4byte	.LASF589
	.byte	0x5
	.uleb128 0x2c1
	.4byte	.LASF590
	.byte	0x5
	.uleb128 0x2c5
	.4byte	.LASF591
	.byte	0x5
	.uleb128 0x2d6
	.4byte	.LASF592
	.byte	0x5
	.uleb128 0x2d7
	.4byte	.LASF593
	.byte	0x5
	.uleb128 0x2d8
	.4byte	.LASF594
	.byte	0x5
	.uleb128 0x2dc
	.4byte	.LASF595
	.byte	0x5
	.uleb128 0x2dd
	.4byte	.LASF596
	.byte	0x5
	.uleb128 0x2e2
	.4byte	.LASF597
	.byte	0x5
	.uleb128 0x2e6
	.4byte	.LASF598
	.byte	0x5
	.uleb128 0x2ea
	.4byte	.LASF599
	.byte	0x5
	.uleb128 0x2ee
	.4byte	.LASF600
	.byte	0x5
	.uleb128 0x2ef
	.4byte	.LASF601
	.byte	0x5
	.uleb128 0x2f0
	.4byte	.LASF602
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.types.h.40.8b6acba56cefbb11746718204edc8f5e,comdat
.Ldebug_macro11:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF604
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF605
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4._types.h.20.dd0d04dca3800a0d2a6129b87f3adbb2,comdat
.Ldebug_macro12:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x14
	.4byte	.LASF606
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF607
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF608
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stddef.h.158.6f8e08a347b1cff664332fa350bfceb3,comdat
.Ldebug_macro13:
	.2byte	0x5
	.byte	0
	.byte	0x6
	.uleb128 0x9e
	.4byte	.LASF430
	.byte	0x6
	.uleb128 0xed
	.4byte	.LASF449
	.byte	0x6
	.uleb128 0x15d
	.4byte	.LASF467
	.byte	0x5
	.uleb128 0x162
	.4byte	.LASF609
	.byte	0x6
	.uleb128 0x169
	.4byte	.LASF610
	.byte	0x6
	.uleb128 0x18f
	.4byte	.LASF468
	.byte	0x5
	.uleb128 0x194
	.4byte	.LASF469
	.byte	0x6
	.uleb128 0x19a
	.4byte	.LASF470
	.byte	0x6
	.uleb128 0x19f
	.4byte	.LASF471
	.byte	0x5
	.uleb128 0x1a0
	.4byte	.LASF472
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4._types.h.127.3bdfe3ff8ea2d0985b03d9cbe93480e3,comdat
.Ldebug_macro14:
	.2byte	0x5
	.byte	0
	.byte	0x6
	.uleb128 0x7f
	.4byte	.LASF611
	.byte	0x5
	.uleb128 0x92
	.4byte	.LASF612
	.byte	0x6
	.uleb128 0x94
	.4byte	.LASF613
	.byte	0x5
	.uleb128 0xb3
	.4byte	.LASF614
	.byte	0x5
	.uleb128 0xbb
	.4byte	.LASF615
	.byte	0x5
	.uleb128 0xc0
	.4byte	.LASF616
	.byte	0x5
	.uleb128 0xc9
	.4byte	.LASF617
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4._stdint.h.10.c24fa3af3bc1706662bb5593a907e841,comdat
.Ldebug_macro15:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF618
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF619
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF620
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF621
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF622
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF623
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF624
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF625
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF626
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF627
	.byte	0x5
	.uleb128 0x39
	.4byte	.LASF628
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF629
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF630
	.byte	0x5
	.uleb128 0x44
	.4byte	.LASF631
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF632
	.byte	0x5
	.uleb128 0x4e
	.4byte	.LASF633
	.byte	0x5
	.uleb128 0x53
	.4byte	.LASF634
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.types.h.98.bbe708179f1e5b1a85cbe5443c739605,comdat
.Ldebug_macro16:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x62
	.4byte	.LASF635
	.byte	0x5
	.uleb128 0x67
	.4byte	.LASF636
	.byte	0x5
	.uleb128 0x6c
	.4byte	.LASF637
	.byte	0x5
	.uleb128 0x6d
	.4byte	.LASF638
	.byte	0x5
	.uleb128 0x72
	.4byte	.LASF639
	.byte	0x5
	.uleb128 0x73
	.4byte	.LASF640
	.byte	0x5
	.uleb128 0x7a
	.4byte	.LASF641
	.byte	0x5
	.uleb128 0x80
	.4byte	.LASF642
	.byte	0x5
	.uleb128 0x85
	.4byte	.LASF643
	.byte	0x5
	.uleb128 0x8a
	.4byte	.LASF644
	.byte	0x5
	.uleb128 0x9c
	.4byte	.LASF645
	.byte	0x5
	.uleb128 0xa0
	.4byte	.LASF646
	.byte	0x5
	.uleb128 0xa4
	.4byte	.LASF647
	.byte	0x5
	.uleb128 0xa8
	.4byte	.LASF648
	.byte	0x5
	.uleb128 0xad
	.4byte	.LASF649
	.byte	0x5
	.uleb128 0xb2
	.4byte	.LASF650
	.byte	0x5
	.uleb128 0xb7
	.4byte	.LASF651
	.byte	0x5
	.uleb128 0xbc
	.4byte	.LASF652
	.byte	0x5
	.uleb128 0xc1
	.4byte	.LASF653
	.byte	0x5
	.uleb128 0xc6
	.4byte	.LASF654
	.byte	0x5
	.uleb128 0xc7
	.4byte	.LASF655
	.byte	0x5
	.uleb128 0xcc
	.4byte	.LASF656
	.byte	0x5
	.uleb128 0xcd
	.4byte	.LASF657
	.byte	0x5
	.uleb128 0xd2
	.4byte	.LASF658
	.byte	0x5
	.uleb128 0xd7
	.4byte	.LASF659
	.byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF208:
	.string	"__FLT16_NORM_MAX__ 6.55040000000000000000000000000000000e+4F16"
.LASF438:
	.string	"_SIZE_T_ "
.LASF667:
	.string	"long int"
.LASF247:
	.string	"__FLT64_HAS_QUIET_NAN__ 1"
.LASF203:
	.string	"__FLT16_MIN_10_EXP__ (-4)"
.LASF229:
	.string	"__FLT32_HAS_INFINITY__ 1"
.LASF462:
	.string	"__INT_WCHAR_T_H "
.LASF65:
	.string	"__UINT_FAST8_TYPE__ unsigned int"
.LASF237:
	.string	"__FLT64_MAX_EXP__ 1024"
.LASF152:
	.string	"__FLT_MIN_10_EXP__ (-37)"
.LASF294:
	.string	"__FLT64X_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F64x"
.LASF407:
	.string	"__have_long32 1"
.LASF270:
	.string	"__FLT32X_MAX_EXP__ 1024"
.LASF131:
	.string	"__INT_FAST16_WIDTH__ 32"
.LASF125:
	.string	"__UINT32_C(c) c ## UL"
.LASF293:
	.string	"__FLT64X_EPSILON__ 1.92592994438723585305597794258492732e-34F64x"
.LASF364:
	.string	"_WANT_IO_LONG_DOUBLE 1"
.LASF177:
	.string	"__DBL_DENORM_MIN__ ((double)4.94065645841246544176568792868221372e-324L)"
.LASF382:
	.string	"__MISC_VISIBLE 0"
.LASF216:
	.string	"__FLT32_MANT_DIG__ 24"
.LASF460:
	.string	"_WCHAR_T_H "
.LASF250:
	.string	"__FLT128_MANT_DIG__ 113"
.LASF366:
	.string	"_WANT_REGISTER_FINI 1"
.LASF568:
	.string	"__COPYRIGHT(s) struct __hack"
.LASF369:
	.string	"__SYS_CONFIG_H__ "
.LASF612:
	.string	"unsigned signed"
.LASF183:
	.string	"__LDBL_MANT_DIG__ 113"
.LASF417:
	.string	"_STDDEF_H "
.LASF571:
	.string	"__DEQUALIFY(type,var) ((type)(__uintptr_t)(const volatile void *)(var))"
.LASF334:
	.string	"__riscv_cmodel_medany 1"
.LASF272:
	.string	"__FLT32X_DECIMAL_DIG__ 17"
.LASF385:
	.string	"__XSI_VISIBLE 0"
.LASF168:
	.string	"__DBL_MIN_EXP__ (-1021)"
.LASF87:
	.string	"__LONG_LONG_WIDTH__ 64"
.LASF581:
	.string	"__locks_exclusive(...) __lock_annotate(exclusive_lock_function(__VA_ARGS__))"
.LASF309:
	.string	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2"
.LASF583:
	.string	"__trylocks_exclusive(...) __lock_annotate(exclusive_trylock_function(__VA_ARGS__))"
.LASF675:
	.string	"_init"
.LASF594:
	.string	"__nosanitizethread "
.LASF273:
	.string	"__FLT32X_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF257:
	.string	"__FLT128_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF321:
	.string	"__SIZEOF_WINT_T__ 4"
.LASF375:
	.string	"__GNUC_PREREQ(maj,min) ((__GNUC__ << 16) + __GNUC_MINOR__ >= ((maj) << 16) + (min))"
.LASF433:
	.string	"_SIZE_T "
.LASF645:
	.string	"_OFF_T_DECLARED "
.LASF102:
	.string	"__INT32_MAX__ 0x7fffffffL"
.LASF486:
	.string	"__ptrvalue "
.LASF80:
	.string	"__WINT_MIN__ 0U"
.LASF8:
	.string	"__GNUC_MINOR__ 2"
.LASF120:
	.string	"__UINT_LEAST8_MAX__ 0xff"
.LASF446:
	.string	"_GCC_SIZE_T "
.LASF608:
	.string	"__need_wint_t "
.LASF671:
	.string	"unsigned int"
.LASF429:
	.string	"__DEFINED_ptrdiff_t "
.LASF517:
	.string	"__const const"
.LASF653:
	.string	"_NLINK_T_DECLARED "
.LASF242:
	.string	"__FLT64_MIN__ 2.22507385850720138309023271733240406e-308F64"
.LASF123:
	.string	"__UINT16_C(c) c"
.LASF430:
	.string	"__need_ptrdiff_t"
.LASF25:
	.string	"__SIZEOF_SIZE_T__ 4"
.LASF42:
	.string	"__CHAR16_TYPE__ short unsigned int"
.LASF549:
	.string	"__hidden __attribute__((__visibility__(\"hidden\")))"
.LASF330:
	.string	"__riscv_flen 64"
.LASF476:
	.string	"__THROW "
.LASF199:
	.string	"__LDBL_IS_IEC_60559__ 1"
.LASF128:
	.string	"__INT_FAST8_MAX__ 0x7fffffff"
.LASF29:
	.string	"__ORDER_BIG_ENDIAN__ 4321"
.LASF569:
	.string	"__DECONST(type,var) ((type)(__uintptr_t)(const void *)(var))"
.LASF437:
	.string	"__SIZE_T "
.LASF166:
	.string	"__DBL_MANT_DIG__ 53"
.LASF60:
	.string	"__UINT_LEAST64_TYPE__ long long unsigned int"
.LASF74:
	.string	"__INT_MAX__ 0x7fffffff"
.LASF14:
	.string	"__ATOMIC_RELEASE 3"
.LASF201:
	.string	"__FLT16_DIG__ 3"
.LASF360:
	.string	"_MB_LEN_MAX 1"
.LASF579:
	.string	"__lock_annotate(x) "
.LASF46:
	.string	"__INT16_TYPE__ short int"
.LASF215:
	.string	"__FLT16_IS_IEC_60559__ 1"
.LASF403:
	.string	"_SYS_CDEFS_H_ "
.LASF621:
	.string	"__int8_t_defined 1"
.LASF443:
	.string	"_SIZE_T_DECLARED "
.LASF613:
	.string	"unsigned"
.LASF428:
	.string	"_PTRDIFF_T_DECLARED "
.LASF287:
	.string	"__FLT64X_MAX_EXP__ 16384"
.LASF12:
	.string	"__ATOMIC_SEQ_CST 5"
.LASF396:
	.string	"_END_STD_C "
.LASF21:
	.string	"__SIZEOF_SHORT__ 2"
.LASF350:
	.string	"_NEWLIB_VERSION_H__ 1"
.LASF108:
	.string	"__INT_LEAST8_MAX__ 0x7f"
.LASF225:
	.string	"__FLT32_MIN__ 1.17549435082228750796873653722224568e-38F32"
.LASF538:
	.string	"__nonnull_all __attribute__((__nonnull__))"
.LASF466:
	.string	"_BSD_WCHAR_T_"
.LASF95:
	.string	"__UINTMAX_C(c) c ## ULL"
.LASF604:
	.string	"__BIT_TYPES_DEFINED__ 1"
.LASF478:
	.string	"__ptr_t void *"
.LASF31:
	.string	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF193:
	.string	"__LDBL_MIN__ 3.36210314311209350626267781732175260e-4932L"
.LASF219:
	.string	"__FLT32_MIN_10_EXP__ (-37)"
.LASF378:
	.string	"__BSD_VISIBLE 0"
.LASF532:
	.string	"__min_size(x) static (x)"
.LASF78:
	.string	"__WCHAR_MIN__ (-__WCHAR_MAX__ - 1)"
.LASF623:
	.string	"_UINT16_T_DECLARED "
.LASF5:
	.string	"__STDC_UTF_32__ 1"
.LASF548:
	.string	"__exported __attribute__((__visibility__(\"default\")))"
.LASF111:
	.string	"__INT_LEAST16_MAX__ 0x7fff"
.LASF539:
	.string	"__fastcall __attribute__((__fastcall__))"
.LASF72:
	.string	"__SCHAR_MAX__ 0x7f"
.LASF195:
	.string	"__LDBL_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966L"
.LASF555:
	.string	"__format_arg(fmtarg) __attribute__((__format_arg__ (fmtarg)))"
.LASF328:
	.string	"__riscv_muldiv 1"
.LASF234:
	.string	"__FLT64_DIG__ 15"
.LASF651:
	.string	"_SSIZE_T_DECLARED "
.LASF11:
	.string	"__ATOMIC_RELAXED 0"
.LASF55:
	.string	"__INT_LEAST32_TYPE__ long int"
.LASF82:
	.string	"__SIZE_MAX__ 0xffffffffU"
.LASF626:
	.string	"_UINT32_T_DECLARED "
.LASF584:
	.string	"__trylocks_shared(...) __lock_annotate(shared_trylock_function(__VA_ARGS__))"
.LASF505:
	.string	"__CC_SUPPORTS_INLINE 1"
.LASF279:
	.string	"__FLT32X_HAS_INFINITY__ 1"
.LASF561:
	.string	"__warn_references(sym,msg) __asm__(\".section .gnu.warning.\" #sym); __asm__(\".asciz \\\"\" msg \"\\\"\"); __asm__(\".previous\")"
.LASF181:
	.string	"__FP_FAST_FMA 1"
.LASF353:
	.string	"__NEWLIB_MINOR__ 4"
.LASF57:
	.string	"__UINT_LEAST8_TYPE__ unsigned char"
.LASF661:
	.string	"__need_inttypes"
.LASF620:
	.string	"_UINT8_T_DECLARED "
.LASF64:
	.string	"__INT_FAST64_TYPE__ long long int"
.LASF495:
	.string	"__GNUCLIKE_CTOR_SECTION_HANDLING 1"
.LASF109:
	.string	"__INT8_C(c) c"
.LASF231:
	.string	"__FP_FAST_FMAF32 1"
.LASF663:
	.string	"signed char"
.LASF609:
	.string	"_WINT_T "
.LASF586:
	.string	"__asserts_exclusive(...) __lock_annotate(assert_exclusive_lock(__VA_ARGS__))"
.LASF113:
	.string	"__INT_LEAST16_WIDTH__ 16"
.LASF481:
	.string	"__attribute_pure__ "
.LASF406:
	.string	"__have_longlong64 1"
.LASF558:
	.string	"__printf0like(fmtarg,firstvararg) "
.LASF458:
	.string	"_WCHAR_T_DEFINED_ "
.LASF249:
	.string	"__FLT64_IS_IEC_60559__ 1"
.LASF70:
	.string	"__UINTPTR_TYPE__ unsigned int"
.LASF464:
	.string	"_WCHAR_T_DECLARED "
.LASF228:
	.string	"__FLT32_HAS_DENORM__ 1"
.LASF577:
	.string	"__arg_type_tag(arg_kind,arg_idx,type_tag_idx) "
.LASF304:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1"
.LASF285:
	.string	"__FLT64X_MIN_EXP__ (-16381)"
.LASF134:
	.string	"__INT_FAST64_MAX__ 0x7fffffffffffffffLL"
.LASF386:
	.string	"__SSP_FORTIFY_LEVEL 0"
.LASF164:
	.string	"__FP_FAST_FMAF 1"
.LASF463:
	.string	"_GCC_WCHAR_T "
.LASF150:
	.string	"__FLT_DIG__ 6"
.LASF130:
	.string	"__INT_FAST16_MAX__ 0x7fffffff"
.LASF631:
	.string	"_INTMAX_T_DECLARED "
.LASF224:
	.string	"__FLT32_NORM_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF200:
	.string	"__FLT16_MANT_DIG__ 11"
.LASF374:
	.string	"_SYS_FEATURES_H "
.LASF582:
	.string	"__locks_shared(...) __lock_annotate(shared_lock_function(__VA_ARGS__))"
.LASF346:
	.string	"_POSIX_C_SOURCE 1"
.LASF243:
	.string	"__FLT64_EPSILON__ 2.22044604925031308084726333618164062e-16F64"
.LASF632:
	.string	"_UINTMAX_T_DECLARED "
.LASF143:
	.string	"__GCC_IEC_559 2"
.LASF252:
	.string	"__FLT128_MIN_EXP__ (-16381)"
.LASF81:
	.string	"__PTRDIFF_MAX__ 0x7fffffff"
.LASF230:
	.string	"__FLT32_HAS_QUIET_NAN__ 1"
.LASF442:
	.string	"_BSD_SIZE_T_DEFINED_ "
.LASF122:
	.string	"__UINT_LEAST16_MAX__ 0xffff"
.LASF222:
	.string	"__FLT32_DECIMAL_DIG__ 9"
.LASF7:
	.string	"__GNUC__ 13"
.LASF337:
	.string	"__riscv_m 2000000"
.LASF670:
	.string	"long long unsigned int"
.LASF503:
	.string	"__GNUCLIKE_MATH_BUILTIN_RELOPS "
.LASF103:
	.string	"__INT64_MAX__ 0x7fffffffffffffffLL"
.LASF38:
	.string	"__WCHAR_TYPE__ int"
.LASF100:
	.string	"__INT8_MAX__ 0x7f"
.LASF53:
	.string	"__INT_LEAST8_TYPE__ signed char"
.LASF368:
	.string	"_WIDE_ORIENT 1"
.LASF268:
	.string	"__FLT32X_MIN_EXP__ (-1021)"
.LASF593:
	.string	"__nosanitizememory "
.LASF254:
	.string	"__FLT128_MAX_EXP__ 16384"
.LASF352:
	.string	"__NEWLIB__ 4"
.LASF148:
	.string	"__FLT_RADIX__ 2"
.LASF277:
	.string	"__FLT32X_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F32x"
.LASF474:
	.string	"__PMT(args) args"
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
.LASF588:
	.string	"__requires_exclusive(...) __lock_annotate(exclusive_locks_required(__VA_ARGS__))"
.LASF187:
	.string	"__LDBL_MAX_EXP__ 16384"
.LASF636:
	.string	"_BLKSIZE_T_DECLARED "
.LASF625:
	.string	"_INT32_T_DECLARED "
.LASF525:
	.string	"__packed __attribute__((__packed__))"
.LASF391:
	.string	"__EXPORT "
.LASF543:
	.string	"__restrict restrict"
.LASF536:
	.string	"__noinline __attribute__ ((__noinline__))"
.LASF313:
	.string	"__GCC_ATOMIC_INT_LOCK_FREE 2"
.LASF92:
	.string	"__INTMAX_MAX__ 0x7fffffffffffffffLL"
.LASF629:
	.string	"_UINT64_T_DECLARED "
.LASF79:
	.string	"__WINT_MAX__ 0xffffffffU"
.LASF453:
	.string	"_T_WCHAR_ "
.LASF528:
	.string	"__alloc_size(x) __attribute__((__alloc_size__(x)))"
.LASF400:
	.string	"_ELIDABLE_INLINE static __inline__"
.LASF483:
	.string	"__flexarr [0]"
.LASF119:
	.string	"__INT_LEAST64_WIDTH__ 64"
.LASF288:
	.string	"__FLT64X_MAX_10_EXP__ 4932"
.LASF290:
	.string	"__FLT64X_MAX__ 1.18973149535723176508575932662800702e+4932F64x"
.LASF238:
	.string	"__FLT64_MAX_10_EXP__ 308"
.LASF28:
	.string	"__ORDER_LITTLE_ENDIAN__ 1234"
.LASF322:
	.string	"__SIZEOF_PTRDIFF_T__ 4"
.LASF331:
	.string	"__riscv_fdiv 1"
.LASF512:
	.string	"__P(protos) protos"
.LASF373:
	.string	"__OBSOLETE_MATH __OBSOLETE_MATH_DEFAULT"
.LASF435:
	.string	"_T_SIZE_ "
.LASF580:
	.string	"__lockable __lock_annotate(lockable)"
.LASF423:
	.string	"__PTRDIFF_T "
.LASF284:
	.string	"__FLT64X_DIG__ 33"
.LASF295:
	.string	"__FLT64X_HAS_DENORM__ 1"
.LASF566:
	.string	"__RCSID_SOURCE(s) struct __hack"
.LASF236:
	.string	"__FLT64_MIN_10_EXP__ (-307)"
.LASF507:
	.string	"__CC_SUPPORTS___INLINE__ 1"
.LASF211:
	.string	"__FLT16_DENORM_MIN__ 5.96046447753906250000000000000000000e-8F16"
.LASF363:
	.string	"_WANT_IO_C99_FORMATS 1"
.LASF560:
	.string	"__weak_reference(sym,alias) __asm__(\".weak \" #alias); __asm__(\".equ \" #alias \", \" #sym)"
.LASF647:
	.string	"_UID_T_DECLARED "
.LASF450:
	.string	"__wchar_t__ "
.LASF371:
	.string	"_SUPPORTS_ERREXCEPT "
.LASF590:
	.string	"__requires_unlocked(...) __lock_annotate(locks_excluded(__VA_ARGS__))"
.LASF286:
	.string	"__FLT64X_MIN_10_EXP__ (-4931)"
.LASF618:
	.string	"_SYS__STDINT_H "
.LASF97:
	.string	"__SIG_ATOMIC_MAX__ 0x7fffffff"
.LASF136:
	.string	"__UINT_FAST8_MAX__ 0xffffffffU"
.LASF409:
	.string	"___int16_t_defined 1"
.LASF468:
	.string	"NULL"
.LASF255:
	.string	"__FLT128_MAX_10_EXP__ 4932"
.LASF259:
	.string	"__FLT128_MIN__ 3.36210314311209350626267781732175260e-4932F128"
.LASF324:
	.string	"__riscv_compressed 1"
.LASF522:
	.string	"__pure2 __attribute__((__const__))"
.LASF356:
	.string	"_FVWRITE_IN_STREAMIO 1"
.LASF173:
	.string	"__DBL_MAX__ ((double)1.79769313486231570814527423731704357e+308L)"
.LASF281:
	.string	"__FP_FAST_FMAF32x 1"
.LASF410:
	.string	"___int32_t_defined 1"
.LASF62:
	.string	"__INT_FAST16_TYPE__ int"
.LASF357:
	.string	"_HAVE_CC_INHIBIT_LOOP_TO_LIBCALL 1"
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
.LASF564:
	.string	"__FBSDID(s) struct __hack"
.LASF622:
	.string	"_INT16_T_DECLARED "
.LASF635:
	.string	"_BLKCNT_T_DECLARED "
.LASF341:
	.string	"__riscv_c 2000000"
.LASF76:
	.string	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL"
.LASF372:
	.string	"__OBSOLETE_MATH_DEFAULT 0"
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
.LASF497:
	.string	"__GNUCLIKE_BUILTIN_VARARGS 1"
.LASF530:
	.string	"__alloc_align(x) __attribute__((__alloc_align__(x)))"
.LASF302:
	.string	"__NO_INLINE__ 1"
.LASF339:
	.string	"__riscv_f 2002000"
.LASF441:
	.string	"_SIZE_T_DEFINED "
.LASF149:
	.string	"__FLT_MANT_DIG__ 24"
.LASF660:
	.string	"_SYS__PTHREADTYPES_H_ "
.LASF519:
	.string	"__volatile volatile"
.LASF239:
	.string	"__FLT64_DECIMAL_DIG__ 17"
.LASF479:
	.string	"__long_double_t long double"
.LASF306:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1"
.LASF456:
	.string	"_WCHAR_T_ "
.LASF218:
	.string	"__FLT32_MIN_EXP__ (-125)"
.LASF291:
	.string	"__FLT64X_NORM_MAX__ 1.18973149535723176508575932662800702e+4932F64x"
.LASF137:
	.string	"__UINT_FAST16_MAX__ 0xffffffffU"
.LASF66:
	.string	"__UINT_FAST16_TYPE__ unsigned int"
.LASF156:
	.string	"__FLT_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF169:
	.string	"__DBL_MIN_10_EXP__ (-307)"
.LASF673:
	.string	"char"
.LASF354:
	.string	"__NEWLIB_PATCHLEVEL__ 0"
.LASF529:
	.string	"__alloc_size2(n,x) __attribute__((__alloc_size__(n, x)))"
.LASF642:
	.string	"_FSBLKCNT_T_DECLARED "
.LASF263:
	.string	"__FLT128_HAS_INFINITY__ 1"
.LASF217:
	.string	"__FLT32_DIG__ 6"
.LASF71:
	.string	"__GXX_ABI_VERSION 1018"
.LASF648:
	.string	"_GID_T_DECLARED "
.LASF245:
	.string	"__FLT64_HAS_DENORM__ 1"
.LASF415:
	.string	"___int_least64_t_defined 1"
.LASF145:
	.string	"__FLT_EVAL_METHOD__ 0"
.LASF493:
	.string	"__GNUCLIKE___TYPEOF 1"
.LASF278:
	.string	"__FLT32X_HAS_DENORM__ 1"
.LASF510:
	.string	"__CC_SUPPORTS_VARADIC_XXX 1"
.LASF573:
	.string	"_Nullable "
.LASF117:
	.string	"__INT_LEAST64_MAX__ 0x7fffffffffffffffLL"
.LASF662:
	.string	"USE_LIBC_INITFINI 1"
.LASF311:
	.string	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2"
.LASF335:
	.string	"__riscv_arch_test 1"
.LASF432:
	.string	"__SIZE_T__ "
.LASF325:
	.string	"__riscv_atomic 1"
.LASF589:
	.string	"__requires_shared(...) __lock_annotate(shared_locks_required(__VA_ARGS__))"
.LASF110:
	.string	"__INT_LEAST8_WIDTH__ 8"
.LASF104:
	.string	"__UINT8_MAX__ 0xff"
.LASF398:
	.string	"_LONG_DOUBLE long double"
.LASF139:
	.string	"__UINT_FAST64_MAX__ 0xffffffffffffffffULL"
.LASF105:
	.string	"__UINT16_MAX__ 0xffff"
.LASF650:
	.string	"_KEY_T_DECLARED "
.LASF447:
	.string	"_SIZET_ "
.LASF393:
	.string	"_READ_WRITE_BUFSIZE_TYPE int"
.LASF426:
	.string	"___int_ptrdiff_t_h "
.LASF676:
	.string	"GNU C17 13.2.0 -mabi=ilp32d -mcmodel=medany -mtune=rocket -misa-spec=20191213 -march=rv32imafdc_zicsr -g3 -O0 -ffreestanding -flax-vector-conversions -fno-common -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF209:
	.string	"__FLT16_MIN__ 6.10351562500000000000000000000000000e-5F16"
.LASF494:
	.string	"__GNUCLIKE___SECTION 1"
.LASF96:
	.string	"__INTMAX_WIDTH__ 64"
.LASF182:
	.string	"__DBL_IS_IEC_60559__ 1"
.LASF54:
	.string	"__INT_LEAST16_TYPE__ short int"
.LASF220:
	.string	"__FLT32_MAX_EXP__ 128"
.LASF408:
	.string	"___int8_t_defined 1"
.LASF17:
	.string	"__FINITE_MATH_ONLY__ 0"
.LASF485:
	.string	"__unbounded "
.LASF467:
	.string	"__need_wchar_t"
.LASF377:
	.string	"__ATFILE_VISIBLE 0"
.LASF167:
	.string	"__DBL_DIG__ 15"
.LASF10:
	.string	"__VERSION__ \"13.2.0\""
.LASF470:
	.string	"__need_NULL"
.LASF451:
	.string	"__WCHAR_T__ "
.LASF387:
	.string	"_READ_WRITE_RETURN_TYPE _ssize_t"
.LASF607:
	.string	"__need_size_t "
.LASF314:
	.string	"__GCC_ATOMIC_LONG_LOCK_FREE 2"
.LASF267:
	.string	"__FLT32X_DIG__ 15"
.LASF526:
	.string	"__aligned(x) __attribute__((__aligned__(x)))"
.LASF266:
	.string	"__FLT32X_MANT_DIG__ 53"
.LASF633:
	.string	"_INTPTR_T_DECLARED "
.LASF370:
	.string	"__IEEE_LITTLE_ENDIAN "
.LASF556:
	.string	"__strfmonlike(fmtarg,firstvararg) __attribute__((__format__ (__strfmon__, fmtarg, firstvararg)))"
.LASF362:
	.string	"_UNBUF_STREAM_OPT 1"
.LASF455:
	.string	"__WCHAR_T "
.LASF669:
	.string	"long long int"
.LASF26:
	.string	"__CHAR_BIT__ 8"
.LASF175:
	.string	"__DBL_MIN__ ((double)2.22507385850720138309023271733240406e-308L)"
.LASF141:
	.string	"__INTPTR_WIDTH__ 32"
.LASF307:
	.string	"__GCC_ATOMIC_BOOL_LOCK_FREE 2"
.LASF606:
	.string	"_SYS__TYPES_H "
.LASF332:
	.string	"__riscv_fsqrt 1"
.LASF492:
	.string	"__GNUCLIKE_MATH_BUILTIN_CONSTANTS "
.LASF542:
	.string	"__unreachable() __builtin_unreachable()"
.LASF240:
	.string	"__FLT64_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF431:
	.string	"__size_t__ "
.LASF518:
	.string	"__signed signed"
.LASF384:
	.string	"__SVID_VISIBLE 0"
.LASF488:
	.string	"__has_feature(x) 0"
.LASF459:
	.string	"_WCHAR_T_DEFINED "
.LASF316:
	.string	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1"
.LASF500:
	.string	"__GNUC_VA_LIST_COMPATIBILITY 1"
.LASF544:
	.string	"__restrict_arr restrict"
.LASF343:
	.string	"__ELF__ 1"
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
.LASF605:
	.string	"_SYS_TYPES_H "
.LASF506:
	.string	"__CC_SUPPORTS___INLINE 1"
.LASF213:
	.string	"__FLT16_HAS_INFINITY__ 1"
.LASF616:
	.string	"_CLOCKID_T_ unsigned long"
.LASF2:
	.string	"__STDC__ 1"
.LASF19:
	.string	"__SIZEOF_LONG__ 4"
.LASF562:
	.string	"__sym_compat(sym,impl,verid) __asm__(\".symver \" #impl \", \" #sym \"@\" #verid)"
.LASF523:
	.string	"__unused __attribute__((__unused__))"
.LASF170:
	.string	"__DBL_MAX_EXP__ 1024"
.LASF448:
	.string	"__size_t "
.LASF16:
	.string	"__ATOMIC_CONSUME 1"
.LASF420:
	.string	"_PTRDIFF_T "
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
.LASF614:
	.string	"_CLOCK_T_ unsigned long"
.LASF186:
	.string	"__LDBL_MIN_10_EXP__ (-4931)"
.LASF342:
	.string	"__riscv_zicsr 2000000"
.LASF23:
	.string	"__SIZEOF_DOUBLE__ 8"
.LASF9:
	.string	"__GNUC_PATCHLEVEL__ 0"
.LASF121:
	.string	"__UINT8_C(c) c"
.LASF603:
	.string	"_MACHINE__TYPES_H "
.LASF602:
	.string	"__is_aligned(x,y) __builtin_is_aligned(x, y)"
.LASF475:
	.string	"__DOTS , ..."
.LASF206:
	.string	"__FLT16_DECIMAL_DIG__ 5"
.LASF640:
	.string	"_TIME_T_DECLARED "
.LASF48:
	.string	"__INT64_TYPE__ long long int"
.LASF411:
	.string	"___int64_t_defined 1"
.LASF597:
	.string	"__builtin_is_aligned(x,align) (((__uintptr_t)x & ((align) - 1)) == 0)"
.LASF157:
	.string	"__FLT_NORM_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF4:
	.string	"__STDC_UTF_16__ 1"
.LASF232:
	.string	"__FLT32_IS_IEC_60559__ 1"
.LASF599:
	.string	"__builtin_align_down(x,align) ((__typeof__(x))((x)&(~((align)-1))))"
.LASF611:
	.string	"__size_t"
.LASF333:
	.string	"__riscv_float_abi_double 1"
.LASF482:
	.string	"__attribute_format_strfmon__(a,b) "
.LASF425:
	.string	"_BSD_PTRDIFF_T_ "
.LASF197:
	.string	"__LDBL_HAS_INFINITY__ 1"
.LASF68:
	.string	"__UINT_FAST64_TYPE__ long long unsigned int"
.LASF106:
	.string	"__UINT32_MAX__ 0xffffffffUL"
.LASF144:
	.string	"__GCC_IEC_559_COMPLEX 2"
.LASF550:
	.string	"__offsetof(type,field) offsetof(type, field)"
.LASF192:
	.string	"__LDBL_NORM_MAX__ 1.18973149535723176508575932662800702e+4932L"
.LASF527:
	.string	"__section(x) __attribute__((__section__(x)))"
.LASF501:
	.string	"__compiler_membar() __asm __volatile(\" \" : : : \"memory\")"
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
.LASF575:
	.string	"__NULLABILITY_PRAGMA_PUSH "
.LASF358:
	.string	"_HAVE_INITFINI_ARRAY 1"
.LASF227:
	.string	"__FLT32_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F32"
.LASF344:
	.string	"USE_M_TIME 1"
.LASF98:
	.string	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)"
.LASF646:
	.string	"_DEV_T_DECLARED "
.LASF639:
	.string	"__time_t_defined "
.LASF86:
	.string	"__LONG_WIDTH__ 32"
.LASF13:
	.string	"__ATOMIC_ACQUIRE 2"
.LASF43:
	.string	"__CHAR32_TYPE__ long unsigned int"
.LASF413:
	.string	"___int_least16_t_defined 1"
.LASF592:
	.string	"__nosanitizeaddress "
.LASF502:
	.string	"__GNUCLIKE_BUILTIN_NEXT_ARG 1"
.LASF436:
	.string	"_T_SIZE "
.LASF672:
	.string	"long double"
.LASF489:
	.string	"__BEGIN_DECLS "
.LASF600:
	.string	"__align_up(x,y) __builtin_align_up(x, y)"
.LASF300:
	.string	"__USER_LABEL_PREFIX__ "
.LASF212:
	.string	"__FLT16_HAS_DENORM__ 1"
.LASF449:
	.string	"__need_size_t"
.LASF59:
	.string	"__UINT_LEAST32_TYPE__ long unsigned int"
.LASF630:
	.string	"__int64_t_defined 1"
.LASF41:
	.string	"__UINTMAX_TYPE__ long long unsigned int"
.LASF461:
	.string	"___int_wchar_t_h "
.LASF351:
	.string	"_NEWLIB_VERSION \"4.4.0\""
.LASF99:
	.string	"__SIG_ATOMIC_WIDTH__ 32"
.LASF578:
	.string	"__datatype_type_tag(kind,type) "
.LASF534:
	.string	"__pure __attribute__((__pure__))"
.LASF376:
	.string	"__GNUC_PREREQ__(ma,mi) __GNUC_PREREQ(ma, mi)"
.LASF73:
	.string	"__SHRT_MAX__ 0x7fff"
.LASF30:
	.string	"__ORDER_PDP_ENDIAN__ 3412"
.LASF58:
	.string	"__UINT_LEAST16_TYPE__ short unsigned int"
.LASF349:
	.string	"__NEWLIB_H__ 1"
.LASF345:
	.string	"NO_INIT 1"
.LASF155:
	.string	"__FLT_DECIMAL_DIG__ 9"
.LASF595:
	.string	"__guarded_by(x) __lock_annotate(guarded_by(x))"
.LASF674:
	.string	"_fini"
.LASF552:
	.string	"__containerof(x,s,m) ({ const volatile __typeof(((s *)0)->m) *__x = (x); __DEQUALIFY(s *, (const volatile char *)__x - __offsetof(s, m));})"
.LASF185:
	.string	"__LDBL_MIN_EXP__ (-16381)"
.LASF89:
	.string	"__WINT_WIDTH__ 32"
.LASF572:
	.string	"_Nonnull "
.LASF292:
	.string	"__FLT64X_MIN__ 3.36210314311209350626267781732175260e-4932F64x"
.LASF440:
	.string	"_SIZE_T_DEFINED_ "
.LASF598:
	.string	"__builtin_align_up(x,align) ((__typeof__(x))(((__uintptr_t)(x)+((align)-1))&(~((align)-1))))"
.LASF299:
	.string	"__REGISTER_PREFIX__ "
.LASF226:
	.string	"__FLT32_EPSILON__ 1.19209289550781250000000000000000000e-7F32"
.LASF624:
	.string	"__int16_t_defined 1"
.LASF490:
	.string	"__END_DECLS "
.LASF336:
	.string	"__riscv_i 2001000"
.LASF665:
	.string	"short int"
.LASF541:
	.string	"__returns_twice __attribute__((__returns_twice__))"
.LASF389:
	.string	"__RAND_MAX"
.LASF404:
	.string	"_MACHINE__DEFAULT_TYPES_H "
.LASF264:
	.string	"__FLT128_HAS_QUIET_NAN__ 1"
.LASF465:
	.string	"__DEFINED_wchar_t "
.LASF545:
	.string	"__predict_true(exp) __builtin_expect((exp), 1)"
.LASF47:
	.string	"__INT32_TYPE__ long int"
.LASF269:
	.string	"__FLT32X_MIN_10_EXP__ (-307)"
.LASF511:
	.string	"__CC_SUPPORTS_DYNAMIC_ARRAY_INIT 1"
.LASF67:
	.string	"__UINT_FAST32_TYPE__ unsigned int"
.LASF627:
	.string	"__int32_t_defined 1"
.LASF652:
	.string	"_MODE_T_DECLARED "
.LASF444:
	.string	"__DEFINED_size_t "
.LASF405:
	.string	"__EXP(x) __ ##x ##__"
.LASF296:
	.string	"__FLT64X_HAS_INFINITY__ 1"
.LASF557:
	.string	"__strftimelike(fmtarg,firstvararg) __attribute__((__format__ (__strftime__, fmtarg, firstvararg)))"
.LASF576:
	.string	"__NULLABILITY_PRAGMA_POP "
.LASF355:
	.string	"_FSEEK_OPTIMIZATION 1"
.LASF547:
	.string	"__null_sentinel __attribute__((__sentinel__))"
.LASF124:
	.string	"__UINT_LEAST32_MAX__ 0xffffffffUL"
.LASF327:
	.string	"__riscv_div 1"
.LASF654:
	.string	"__clockid_t_defined "
.LASF198:
	.string	"__LDBL_HAS_QUIET_NAN__ 1"
.LASF45:
	.string	"__INT8_TYPE__ signed char"
.LASF248:
	.string	"__FP_FAST_FMAF64 1"
.LASF533:
	.string	"__malloc_like __attribute__((__malloc__))"
.LASF388:
	.string	"_POINTER_INT long"
.LASF628:
	.string	"_INT64_T_DECLARED "
.LASF424:
	.string	"_PTRDIFF_T_ "
.LASF434:
	.string	"_SYS_SIZE_T_H "
.LASF401:
	.string	"_NOINLINE __attribute__ ((__noinline__))"
.LASF381:
	.string	"__LARGEFILE_VISIBLE 0"
.LASF439:
	.string	"_BSD_SIZE_T_ "
.LASF644:
	.string	"_INO_T_DECLARED "
.LASF516:
	.string	"__XSTRING(x) __STRING(x)"
.LASF524:
	.string	"__used __attribute__((__used__))"
.LASF491:
	.string	"__GNUCLIKE_ASM 3"
.LASF303:
	.string	"__CHAR_UNSIGNED__ 1"
.LASF359:
	.string	"_HAVE_LONG_DOUBLE 1"
.LASF138:
	.string	"__UINT_FAST32_MAX__ 0xffffffffU"
.LASF634:
	.string	"_UINTPTR_T_DECLARED "
.LASF118:
	.string	"__INT64_C(c) c ## LL"
.LASF554:
	.string	"__scanflike(fmtarg,firstvararg) __attribute__((__format__ (__scanf__, fmtarg, firstvararg)))"
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
.LASF508:
	.string	"__CC_SUPPORTS___FUNC__ 1"
.LASF241:
	.string	"__FLT64_NORM_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF329:
	.string	"__riscv_xlen 32"
.LASF56:
	.string	"__INT_LEAST64_TYPE__ long long int"
.LASF390:
	.string	"__RAND_MAX 0x7fffffff"
.LASF51:
	.string	"__UINT32_TYPE__ long unsigned int"
.LASF484:
	.string	"__bounded "
.LASF559:
	.string	"__strong_reference(sym,aliassym) extern __typeof (sym) aliassym __attribute__ ((__alias__ (#sym)))"
.LASF520:
	.string	"__weak_symbol __attribute__((__weak__))"
.LASF33:
	.string	"__SIZEOF_POINTER__ 4"
.LASF471:
	.string	"offsetof"
.LASF546:
	.string	"__predict_false(exp) __builtin_expect((exp), 0)"
.LASF394:
	.string	"_USE_GDTOA "
.LASF383:
	.string	"__POSIX_VISIBLE 199009"
.LASF77:
	.string	"__WCHAR_MAX__ 0x7fffffff"
.LASF535:
	.string	"__always_inline __inline__ __attribute__((__always_inline__))"
.LASF380:
	.string	"__ISO_C_VISIBLE 2011"
.LASF160:
	.string	"__FLT_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F"
.LASF126:
	.string	"__UINT_LEAST64_MAX__ 0xffffffffffffffffULL"
.LASF85:
	.string	"__INT_WIDTH__ 32"
.LASF256:
	.string	"__FLT128_DECIMAL_DIG__ 36"
.LASF317:
	.string	"__GCC_ATOMIC_POINTER_LOCK_FREE 2"
.LASF127:
	.string	"__UINT64_C(c) c ## ULL"
.LASF643:
	.string	"_ID_T_DECLARED "
.LASF189:
	.string	"__DECIMAL_DIG__ 36"
.LASF361:
	.string	"_REENT_CHECK_VERIFY 1"
.LASF540:
	.string	"__result_use_check __attribute__((__warn_unused_result__))"
.LASF3:
	.string	"__STDC_VERSION__ 201710L"
.LASF668:
	.string	"long unsigned int"
.LASF310:
	.string	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2"
.LASF452:
	.string	"_WCHAR_T "
.LASF513:
	.string	"__CONCAT1(x,y) x ## y"
.LASF94:
	.string	"__UINTMAX_MAX__ 0xffffffffffffffffULL"
.LASF445:
	.string	"___int_size_t_h "
.LASF6:
	.string	"__STDC_HOSTED__ 0"
.LASF567:
	.string	"__SCCSID(s) struct __hack"
.LASF140:
	.string	"__INTPTR_MAX__ 0x7fffffff"
.LASF454:
	.string	"_T_WCHAR "
.LASF563:
	.string	"__sym_default(sym,impl,verid) __asm__(\".symver \" #impl \", \" #sym \"@@\" #verid)"
.LASF498:
	.string	"__GNUCLIKE_BUILTIN_STDARG 1"
.LASF399:
	.string	"_ATTRIBUTE(attrs) __attribute__ (attrs)"
.LASF587:
	.string	"__asserts_shared(...) __lock_annotate(assert_shared_lock(__VA_ARGS__))"
.LASF214:
	.string	"__FLT16_HAS_QUIET_NAN__ 1"
.LASF340:
	.string	"__riscv_d 2002000"
.LASF477:
	.string	"__ASMNAME(cname) __XSTRING (__USER_LABEL_PREFIX__) cname"
.LASF619:
	.string	"_INT8_T_DECLARED "
.LASF591:
	.string	"__no_lock_analysis __lock_annotate(no_thread_safety_analysis)"
.LASF657:
	.string	"_TIMER_T_DECLARED "
.LASF315:
	.string	"__GCC_ATOMIC_LLONG_LOCK_FREE 1"
.LASF153:
	.string	"__FLT_MAX_EXP__ 128"
.LASF15:
	.string	"__ATOMIC_ACQ_REL 4"
.LASF184:
	.string	"__LDBL_DIG__ 33"
.LASF664:
	.string	"unsigned char"
.LASF326:
	.string	"__riscv_mul 1"
.LASF537:
	.string	"__nonnull(x) __attribute__((__nonnull__ x))"
.LASF553:
	.string	"__printflike(fmtarg,firstvararg) __attribute__((__format__ (__printf__, fmtarg, firstvararg)))"
.LASF158:
	.string	"__FLT_MIN__ 1.17549435082228750796873653722224568e-38F"
.LASF397:
	.string	"_NOTHROW "
.LASF69:
	.string	"__INTPTR_TYPE__ int"
.LASF147:
	.string	"__DEC_EVAL_METHOD__ 2"
.LASF585:
	.string	"__unlocks(...) __lock_annotate(unlock_function(__VA_ARGS__))"
.LASF190:
	.string	"__LDBL_DECIMAL_DIG__ 36"
.LASF402:
	.string	"_NOINLINE_STATIC _NOINLINE static"
.LASF469:
	.string	"NULL ((void *)0)"
.LASF116:
	.string	"__INT_LEAST32_WIDTH__ 32"
.LASF35:
	.string	"__GNUC_WIDE_EXECUTION_CHARSET_NAME \"UTF-32LE\""
.LASF615:
	.string	"_TIME_T_ __int_least64_t"
.LASF659:
	.string	"_SUSECONDS_T_DECLARED "
.LASF457:
	.string	"_BSD_WCHAR_T_ "
.LASF504:
	.string	"__GNUCLIKE_BUILTIN_MEMCPY 1"
.LASF36:
	.string	"__SIZE_TYPE__ unsigned int"
.LASF514:
	.string	"__CONCAT(x,y) __CONCAT1(x,y)"
.LASF421:
	.string	"_T_PTRDIFF_ "
.LASF655:
	.string	"_CLOCKID_T_DECLARED "
.LASF418:
	.string	"_STDDEF_H_ "
.LASF235:
	.string	"__FLT64_MIN_EXP__ (-1021)"
.LASF416:
	.string	"__EXP"
.LASF531:
	.string	"__generic(expr,t,yes,no) _Generic(expr, t: yes, default: no)"
.LASF312:
	.string	"__GCC_ATOMIC_SHORT_LOCK_FREE 2"
.LASF551:
	.string	"__rangeof(type,start,end) (__offsetof(type, end) - __offsetof(type, start))"
.LASF412:
	.string	"___int_least8_t_defined 1"
.LASF90:
	.string	"__PTRDIFF_WIDTH__ 32"
.LASF480:
	.string	"__attribute_malloc__ "
.LASF282:
	.string	"__FLT32X_IS_IEC_60559__ 1"
.LASF159:
	.string	"__FLT_EPSILON__ 1.19209289550781250000000000000000000e-7F"
.LASF165:
	.string	"__FLT_IS_IEC_60559__ 1"
.LASF610:
	.string	"__need_wint_t"
.LASF658:
	.string	"_USECONDS_T_DECLARED "
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
.LASF40:
	.string	"__INTMAX_TYPE__ long long int"
.LASF323:
	.string	"__riscv 1"
.LASF174:
	.string	"__DBL_NORM_MAX__ ((double)1.79769313486231570814527423731704357e+308L)"
.LASF93:
	.string	"__INTMAX_C(c) c ## LL"
.LASF348:
	.string	"_ANSIDECL_H_ "
.LASF472:
	.string	"offsetof(TYPE,MEMBER) __builtin_offsetof (TYPE, MEMBER)"
.LASF515:
	.string	"__STRING(x) #x"
.LASF52:
	.string	"__UINT64_TYPE__ long long unsigned int"
.LASF570:
	.string	"__DEVOLATILE(type,var) ((type)(__uintptr_t)(volatile void *)(var))"
.LASF280:
	.string	"__FLT32X_HAS_QUIET_NAN__ 1"
.LASF171:
	.string	"__DBL_MAX_10_EXP__ 308"
.LASF601:
	.string	"__align_down(x,y) __builtin_align_down(x, y)"
.LASF422:
	.string	"_T_PTRDIFF "
.LASF509:
	.string	"__CC_SUPPORTS_WARNING 1"
.LASF666:
	.string	"short unsigned int"
.LASF301:
	.string	"__GNUC_STDC_INLINE__ 1"
.LASF22:
	.string	"__SIZEOF_FLOAT__ 4"
.LASF637:
	.string	"__clock_t_defined "
.LASF574:
	.string	"_Null_unspecified "
.LASF27:
	.string	"__BIGGEST_ALIGNMENT__ 16"
.LASF261:
	.string	"__FLT128_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F128"
.LASF365:
	.string	"_WANT_IO_LONG_LONG 1"
.LASF129:
	.string	"__INT_FAST8_WIDTH__ 32"
.LASF151:
	.string	"__FLT_MIN_EXP__ (-125)"
.LASF414:
	.string	"___int_least32_t_defined 1"
.LASF258:
	.string	"__FLT128_NORM_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF392:
	.string	"__IMPORT "
.LASF638:
	.string	"_CLOCK_T_DECLARED "
.LASF115:
	.string	"__INT32_C(c) c ## L"
.LASF521:
	.string	"__dead2 __attribute__((__noreturn__))"
.LASF207:
	.string	"__FLT16_MAX__ 6.55040000000000000000000000000000000e+4F16"
.LASF289:
	.string	"__FLT64X_DECIMAL_DIG__ 36"
.LASF617:
	.string	"_TIMER_T_ unsigned long"
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
.LASF473:
	.string	"_GCC_MAX_ALIGN_T "
.LASF499:
	.string	"__GNUCLIKE_BUILTIN_VAALIST 1"
.LASF565:
	.string	"__RCSID(s) struct __hack"
.LASF221:
	.string	"__FLT32_MAX_10_EXP__ 38"
.LASF367:
	.string	"_WANT_USE_GDTOA 1"
.LASF496:
	.string	"__GNUCLIKE_BUILTIN_CONSTANT_P 1"
.LASF427:
	.string	"_GCC_PTRDIFF_T "
.LASF244:
	.string	"__FLT64_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F64"
.LASF596:
	.string	"__pt_guarded_by(x) __lock_annotate(pt_guarded_by(x))"
.LASF419:
	.string	"_ANSI_STDDEF_H "
.LASF114:
	.string	"__INT_LEAST32_MAX__ 0x7fffffffL"
.LASF188:
	.string	"__LDBL_MAX_10_EXP__ 4932"
.LASF223:
	.string	"__FLT32_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF176:
	.string	"__DBL_EPSILON__ ((double)2.22044604925031308084726333618164062e-16L)"
.LASF395:
	.string	"_BEGIN_STD_C "
.LASF319:
	.string	"__PRAGMA_REDEFINE_EXTNAME 1"
.LASF44:
	.string	"__SIG_ATOMIC_TYPE__ int"
.LASF487:
	.string	"__has_extension __has_feature"
.LASF262:
	.string	"__FLT128_HAS_DENORM__ 1"
.LASF649:
	.string	"_PID_T_DECLARED "
.LASF265:
	.string	"__FLT128_IS_IEC_60559__ 1"
.LASF196:
	.string	"__LDBL_HAS_DENORM__ 1"
.LASF379:
	.string	"__GNU_VISIBLE 0"
.LASF656:
	.string	"__timer_t_defined "
.LASF347:
	.string	"__RTTHREAD__ 1"
.LASF233:
	.string	"__FLT64_MANT_DIG__ 53"
.LASF641:
	.string	"__caddr_t_defined "
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
	.string	"ae350_soc/ae350/initfini.c"
	.ident	"GCC: () 13.2.0"
