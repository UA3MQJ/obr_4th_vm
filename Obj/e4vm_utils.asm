;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.3 #11378 (MINGW32)
;--------------------------------------------------------
	.module e4vm_utils
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _e4vm_utils__init
	.globl _e4vm_type__init
	.globl _Console_WriteStr_C_COMPACT
	.globl _Console_WriteInt_COMPACT
	.globl _Console_WriteLn_COMPACT
	.globl _Console_ReadStr_COMPACT
	.globl _SYSTEM_STRCMPCC
	.globl _memcpy
	.globl _e4vm_utils_add_core_word
	.globl _e4vm_utils_look_up_word_address
	.globl _e4vm_utils_here_to_wp
	.globl _e4vm_utils_add_op
	.globl _e4vm_utils_add_op_from_string
	.globl _e4vm_utils_init
	.globl _e4vm_utils_vm_stat
	.globl _e4vm_utils_true_const
	.globl _e4vm_utils_false_const
	.globl _e4vm_utils_error
	.globl _e4vm_utils_stack_ds_push
	.globl _e4vm_utils_stack_rs_push
	.globl _e4vm_utils_read_char
	.globl _e4vm_utils_read_string
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;e4vm_utils.c:30: void e4vm_utils_add_core_word (e4vm_type_x4thPtr *v, e4vm_type_word_string_type word, e4vm_type_ProcedureType proc, BOOLEAN immediate)
;	---------------------------------
; Function e4vm_utils_add_core_word
; ---------------------------------
_e4vm_utils_add_core_word::
	call	___sdcc_enter_ix
	push	af
;e4vm_utils.c:32: __MOVE(word, (*v)->words[(*v)->words_count].word, 8);
	ld	c, 6 (ix)
	ld	b, 7 (ix)
	ld	a, 4 (ix)
	ld	-2 (ix), a
	ld	a, 5 (ix)
	ld	-1 (ix), a
	pop	hl
	push	hl
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	add	a, #0xcd
	ld	e, a
	ld	a, h
	adc	a, #0x00
	ld	d, a
	push	bc
	ld	bc, #0x028d
	add	hl, bc
	pop	bc
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	push	de
	ld	e, l
	ld	d, h
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	pop	de
	add	hl, de
	ld	de, #0x0008
	push	de
	push	bc
	push	hl
	call	_memcpy
	pop	af
	pop	af
	pop	af
;e4vm_utils.c:33: (*v)->words[(*v)->words_count].addr = (*v)->words_count;
	pop	hl
	push	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #0x00cd
	add	hl, bc
	ex	de, hl
	ld	l, c
	ld	h, b
	ld	bc, #0x028d
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, de
	ld	de, #0x0008
	add	hl, de
	ld	(hl), c
	inc	hl
	ld	(hl), b
;e4vm_utils.c:34: (*v)->words[(*v)->words_count].proc = proc;
	pop	hl
	push	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #0x00cd
	add	hl, bc
	ex	de, hl
	ld	l, c
	ld	h, b
	ld	bc, #0x028d
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, de
	ld	bc, #0x000a
	add	hl, bc
	ld	a, 8 (ix)
	ld	(hl), a
	inc	hl
	ld	a, 9 (ix)
	ld	(hl), a
;e4vm_utils.c:35: (*v)->words[(*v)->words_count].immediate = immediate;
	pop	hl
	push	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #0x00cd
	add	hl, bc
	ex	de, hl
	ld	l, c
	ld	h, b
	ld	bc, #0x028d
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, de
	ld	bc, #0x000c
	add	hl, bc
	ld	a, 10 (ix)
	ld	(hl), a
;e4vm_utils.c:36: (*v)->words[(*v)->words_count].enabled = 1;
	pop	hl
	push	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #0x00cd
	add	hl, bc
	ex	de, hl
	ld	l, c
	ld	h, b
	ld	bc, #0x028d
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, de
	ld	bc, #0x000d
	add	hl, bc
	ld	(hl), #0x01
;e4vm_utils.c:37: (*v)->mem[(*v)->words_count] = (*v)->words_count;
	pop	hl
	push	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #0x008a
	add	hl, bc
	ex	de, hl
	ld	l, c
	ld	h, b
	ld	bc, #0x028d
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, de
	ld	(hl), c
	inc	hl
	ld	(hl), b
;e4vm_utils.c:38: (*v)->words_count = (*v)->words_count + 1;
	pop	hl
	push	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #0x028d
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	dec	hl
	inc	bc
	ld	a, b
	ld	(hl), c
	inc	hl
	ld	(hl), a
;e4vm_utils.c:39: (*v)->hereP = (*v)->words_count;
	pop	hl
	push	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #0x0088
	add	hl, bc
	ex	de, hl
	ld	l, c
	ld	h, b
	ld	bc, #0x028d
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, c
	ld	(de), a
	inc	de
	ld	a, b
	ld	(de), a
;e4vm_utils.c:40: }
	pop	af
	pop	ix
	ret
;e4vm_utils.c:43: SHORTINT e4vm_utils_look_up_word_address (e4vm_type_x4thPtr *v, e4vm_type_word_string_type word)
;	---------------------------------
; Function e4vm_utils_look_up_word_address
; ---------------------------------
_e4vm_utils_look_up_word_address::
	call	___sdcc_enter_ix
	push	af
	push	af
	push	af
;e4vm_utils.c:46: _for__9 = (*v)->words_count - 1;
	ld	a, 4 (ix)
	ld	-6 (ix), a
	ld	a, 5 (ix)
	ld	-5 (ix), a
	pop	hl
	push	hl
	ld	c, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, c
	ld	de, #0x028d
	add	hl, de
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, c
	add	a, #0xff
	ld	-4 (ix), a
	ld	a, b
	adc	a, #0xff
	ld	-3 (ix), a
;e4vm_utils.c:48: while (i <= _for__9) {
	ld	bc, #0x0000
00103$:
	ld	a, -4 (ix)
	sub	a, c
	ld	a, -3 (ix)
	sbc	a, b
	jp	PO, 00123$
	xor	a, #0x80
00123$:
	jp	M, 00105$
;e4vm_utils.c:49: if (__STRCMPCC((*v)->words[i].word, word, 8, (CHAR*)"e4vm_utils", -907) == 0) {
	pop	hl
	push	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x00cd
	add	hl, de
	ex	de, hl
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	ld	-2 (ix), l
	ld	-1 (ix), h
	add	hl, de
	push	bc
	ld	e, 6 (ix)
	ld	d, 7 (ix)
	push	de
	push	hl
	call	_SYSTEM_STRCMPCC
	pop	af
	pop	af
	pop	bc
	ld	a, h
	or	a, l
	jr	NZ,00102$
;e4vm_utils.c:50: return (*v)->words[i].addr;
	pop	hl
	push	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #0x00cd
	add	hl, bc
	ld	e, -2 (ix)
	ld	d, -1 (ix)
	add	hl, de
	ld	de, #0x0008
	add	hl, de
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	jr	00106$
00102$:
;e4vm_utils.c:52: i += 1;
	inc	bc
	jr	00103$
00105$:
;e4vm_utils.c:54: return -1;
	ld	hl, #0xffff
00106$:
;e4vm_utils.c:55: }
	ld	sp, ix
	pop	ix
	ret
;e4vm_utils.c:58: void e4vm_utils_here_to_wp (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_utils_here_to_wp
; ---------------------------------
_e4vm_utils_here_to_wp::
	call	___sdcc_enter_ix
;e4vm_utils.c:60: (*v)->wp = (*v)->hereP;
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	c, l
	ld	b, h
	inc	bc
	inc	bc
	ld	de, #0x0088
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;e4vm_utils.c:61: }
	pop	ix
	ret
;e4vm_utils.c:64: void e4vm_utils_add_op (e4vm_type_x4thPtr *v, SHORTINT word_adr)
;	---------------------------------
; Function e4vm_utils_add_op
; ---------------------------------
_e4vm_utils_add_op::
	call	___sdcc_enter_ix
;e4vm_utils.c:66: (*v)->mem[(*v)->hereP] = word_adr;
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	l, c
	ld	h, b
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	add	a, #0x8a
	ld	e, a
	ld	a, h
	adc	a, #0x00
	ld	d, a
	push	bc
	ld	bc, #0x0088
	add	hl, bc
	pop	bc
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	add	hl, hl
	add	hl, de
	ld	a, 6 (ix)
	ld	(hl), a
	inc	hl
	ld	a, 7 (ix)
	ld	(hl), a
;e4vm_utils.c:67: (*v)->hereP = (*v)->hereP + 1;
	ld	l, c
	ld	h, b
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #0x0088
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	dec	hl
	inc	bc
	ld	a, b
	ld	(hl), c
	inc	hl
	ld	(hl), a
;e4vm_utils.c:68: }
	pop	ix
	ret
;e4vm_utils.c:71: void e4vm_utils_add_op_from_string (e4vm_type_x4thPtr *v, e4vm_type_word_string_type word)
;	---------------------------------
; Function e4vm_utils_add_op_from_string
; ---------------------------------
_e4vm_utils_add_op_from_string::
;e4vm_utils.c:73: e4vm_utils_add_op(v, e4vm_utils_look_up_word_address(v, word));
	ld	iy, #4
	add	iy, sp
	ld	l, 0 (iy)
	ld	h, 1 (iy)
	push	hl
	dec	iy
	dec	iy
	ld	l, 0 (iy)
	ld	h, 1 (iy)
	push	hl
	call	_e4vm_utils_look_up_word_address
	pop	af
	ex	(sp),hl
	ld	hl, #4
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	call	_e4vm_utils_add_op
	pop	af
	pop	af
;e4vm_utils.c:74: }
	ret
;e4vm_utils.c:77: void e4vm_utils_init (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_utils_init
; ---------------------------------
_e4vm_utils_init::
	call	___sdcc_enter_ix
	push	af
;e4vm_utils.c:80: (*v)->ip = 0;
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	xor	a, a
	ld	(de), a
	inc	de
	ld	(de), a
;e4vm_utils.c:81: (*v)->wp = 0;
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	inc	de
	inc	de
	xor	a, a
	ld	(de), a
	inc	de
	ld	(de), a
;e4vm_utils.c:82: (*v)->hereP = 0;
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x0088
	add	hl, de
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;e4vm_utils.c:83: (*v)->rs_p = 0;
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x0084
	add	hl, de
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;e4vm_utils.c:84: (*v)->ds_p = 0;
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x0086
	add	hl, de
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;e4vm_utils.c:85: (*v)->words_count = 0;
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x028d
	add	hl, de
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;e4vm_utils.c:86: (*v)->cell_bit_size = 16;
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x00ca
	add	hl, de
	ld	(hl), #0x10
	inc	hl
	ld	(hl), #0x00
;e4vm_utils.c:87: (*v)->is_eval_mode = 1;
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x00cc
	add	hl, de
	ld	(hl), #0x01
;e4vm_utils.c:89: while (i <= 31) {
	ld	de, #0x0000
00101$:
	ld	a, #0x1f
	cp	a, e
	ld	a, #0x00
	sbc	a, d
	jp	PO, 00131$
	xor	a, #0x80
00131$:
	jp	M, 00103$
;e4vm_utils.c:90: (*v)->mem[i] = 0;
	ld	l, c
	ld	h, b
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	add	a, #0x8a
	ld	-2 (ix), a
	ld	a, h
	adc	a, #0x00
	ld	-1 (ix), a
	ld	l, e
	ld	h, d
	add	hl, hl
	ld	a, -2 (ix)
	add	a, l
	ld	l, a
	ld	a, -1 (ix)
	adc	a, h
	ld	h, a
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;e4vm_utils.c:91: i += 1;
	inc	de
	jr	00101$
00103$:
;e4vm_utils.c:94: while (i <= 31) {
	ld	hl, #0x0000
	ex	(sp), hl
00104$:
	ld	a, #0x1f
	cp	a, -2 (ix)
	ld	a, #0x00
	sbc	a, -1 (ix)
	jp	PO, 00132$
	xor	a, #0x80
00132$:
	jp	M, 00107$
;e4vm_utils.c:95: (*v)->rs[i] = 0;
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x0004
	add	hl, de
	pop	de
	push	de
	sla	e
	rl	d
	add	hl, de
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;e4vm_utils.c:96: (*v)->ds[i] = 0;
	ld	l, c
	ld	h, b
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	push	de
	ld	de, #0x0044
	add	hl, de
	pop	de
	add	hl, de
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;e4vm_utils.c:97: i += 1;
	inc	-2 (ix)
	jr	NZ,00104$
	inc	-1 (ix)
	jr	00104$
00107$:
;e4vm_utils.c:99: }
	pop	af
	pop	ix
	ret
;e4vm_utils.c:102: void e4vm_utils_vm_stat (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_utils_vm_stat
; ---------------------------------
_e4vm_utils_vm_stat::
	call	___sdcc_enter_ix
	push	af
	push	af
	push	af
	push	af
;e4vm_utils.c:105: Console_WriteStrLn((CHAR*)" ", 2);
	ld	hl, #___str_0
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
;e4vm_utils.c:106: Console_WriteStr((CHAR*)"ip:", 4);
	ld	hl, #___str_1
	call	_Console_WriteStr_C_COMPACT
;e4vm_utils.c:107: Console_WriteInt((*v)->ip);
	ld	a, 4 (ix)
	ld	-8 (ix), a
	ld	a, 5 (ix)
	ld	-7 (ix), a
	pop	hl
	push	hl
	ld	c, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, c
	ld	c, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, c
	call	_Console_WriteInt_COMPACT
;e4vm_utils.c:108: Console_WriteStr((CHAR*)" wp:", 5);
	ld	hl, #___str_2
	call	_Console_WriteStr_C_COMPACT
;e4vm_utils.c:109: Console_WriteInt((*v)->wp);
	pop	hl
	push	hl
	ld	c, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, c
	inc	hl
	inc	hl
	ld	c, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, c
	call	_Console_WriteInt_COMPACT
;e4vm_utils.c:110: Console_WriteStr((CHAR*)" hereP:", 8);
	ld	hl, #___str_3
	call	_Console_WriteStr_C_COMPACT
;e4vm_utils.c:111: Console_WriteInt((*v)->hereP);
	pop	hl
	push	hl
	ld	c, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, c
	ld	de, #0x0088
	add	hl, de
	ld	c, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, c
	call	_Console_WriteInt_COMPACT
;e4vm_utils.c:112: Console_WriteStr((CHAR*)" words_count:", 14);
	ld	hl, #___str_4
	call	_Console_WriteStr_C_COMPACT
;e4vm_utils.c:113: Console_WriteInt((*v)->words_count);
	pop	hl
	push	hl
	ld	c, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, c
	ld	de, #0x028d
	add	hl, de
	ld	c, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, c
	call	_Console_WriteInt_COMPACT
;e4vm_utils.c:114: Console_WriteStrLn((CHAR*)" ", 2);
	ld	hl, #___str_0
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
;e4vm_utils.c:115: Console_WriteStr((CHAR*)"rs_p:", 6);
	ld	hl, #___str_5
	call	_Console_WriteStr_C_COMPACT
;e4vm_utils.c:116: Console_WriteInt((*v)->rs_p);
	pop	hl
	push	hl
	ld	c, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, c
	ld	de, #0x0084
	add	hl, de
	ld	c, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, c
	call	_Console_WriteInt_COMPACT
;e4vm_utils.c:117: Console_WriteStrLn((CHAR*)" ", 2);
	ld	hl, #___str_0
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
;e4vm_utils.c:118: Console_WriteStrLn((CHAR*)"rs: [", 6);
	ld	hl, #___str_6
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
;e4vm_utils.c:120: while (i <= 31) {
	xor	a, a
	ld	-2 (ix), a
	ld	-1 (ix), a
00101$:
	ld	a, #0x1f
	cp	a, -2 (ix)
	ld	a, #0x00
	sbc	a, -1 (ix)
	jp	PO, 00145$
	xor	a, #0x80
00145$:
	jp	M, 00103$
;e4vm_utils.c:121: Console_WriteInt((*v)->rs[i]);
	pop	hl
	push	hl
	ld	a, (hl)
	ld	-6 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-5 (ix), a
	ld	a, -6 (ix)
	add	a, #0x04
	ld	-4 (ix), a
	ld	a, -5 (ix)
	adc	a, #0x00
	ld	-3 (ix), a
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	add	hl, hl
	ld	e, -4 (ix)
	ld	d, -3 (ix)
	add	hl, de
	ld	c, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, c
	call	_Console_WriteInt_COMPACT
;e4vm_utils.c:122: Console_WriteStr((CHAR*)" ", 2);
	ld	hl, #___str_0
	call	_Console_WriteStr_C_COMPACT
;e4vm_utils.c:123: i += 1;
	inc	-2 (ix)
	jr	NZ,00101$
	inc	-1 (ix)
	jr	00101$
00103$:
;e4vm_utils.c:125: Console_WriteStrLn((CHAR*)"]", 2);
	ld	hl, #___str_7
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
;e4vm_utils.c:126: Console_WriteStr((CHAR*)"ds_p:", 6);
	ld	hl, #___str_8
	call	_Console_WriteStr_C_COMPACT
;e4vm_utils.c:127: Console_WriteInt((*v)->ds_p);
	pop	hl
	push	hl
	ld	c, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, c
	ld	de, #0x0086
	add	hl, de
	ld	c, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, c
	call	_Console_WriteInt_COMPACT
;e4vm_utils.c:128: Console_WriteStrLn((CHAR*)" ", 2);
	ld	hl, #___str_0
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
;e4vm_utils.c:129: Console_WriteStrLn((CHAR*)"ds: [", 6);
	ld	hl, #___str_9
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
;e4vm_utils.c:131: while (i <= 31) {
	ld	bc, #0x0000
00104$:
	ld	a, #0x1f
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jp	PO, 00147$
	xor	a, #0x80
00147$:
	jp	M, 00106$
;e4vm_utils.c:132: Console_WriteInt((*v)->ds[i]);
	pop	hl
	push	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x0044
	add	hl, de
	ex	de, hl
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, de
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	push	bc
	call	_Console_WriteInt_COMPACT
	ld	hl, #___str_0
	call	_Console_WriteStr_C_COMPACT
	pop	bc
;e4vm_utils.c:134: i += 1;
	inc	bc
	jr	00104$
00106$:
;e4vm_utils.c:136: Console_WriteStrLn((CHAR*)"]", 2);
	ld	hl, #___str_7
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
;e4vm_utils.c:137: Console_WriteStrLn((CHAR*)"mem: [", 7);
	ld	hl, #___str_10
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
;e4vm_utils.c:139: while (i <= 31) {
	ld	bc, #0x0000
00107$:
	ld	a, #0x1f
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jp	PO, 00148$
	xor	a, #0x80
00148$:
	jp	M, 00109$
;e4vm_utils.c:140: Console_WriteInt((*v)->mem[i]);
	pop	hl
	push	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x008a
	add	hl, de
	ld	-2 (ix), l
	ld	-1 (ix), h
	ld	l, c
	ld	h, b
	add	hl, hl
	ld	e, -2 (ix)
	ld	d, -1 (ix)
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	h, (hl)
	push	bc
	ld	l, e
	call	_Console_WriteInt_COMPACT
	ld	hl, #___str_0
	call	_Console_WriteStr_C_COMPACT
	pop	bc
;e4vm_utils.c:142: i += 1;
	inc	bc
	jr	00107$
00109$:
;e4vm_utils.c:144: Console_WriteStrLn((CHAR*)"]", 2);
	ld	hl, #___str_7
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
;e4vm_utils.c:145: }
	ld	sp, ix
	pop	ix
	ret
___str_0:
	.ascii " "
	.db 0x00
___str_1:
	.ascii "ip:"
	.db 0x00
___str_2:
	.ascii " wp:"
	.db 0x00
___str_3:
	.ascii " hereP:"
	.db 0x00
___str_4:
	.ascii " words_count:"
	.db 0x00
___str_5:
	.ascii "rs_p:"
	.db 0x00
___str_6:
	.ascii "rs: ["
	.db 0x00
___str_7:
	.ascii "]"
	.db 0x00
___str_8:
	.ascii "ds_p:"
	.db 0x00
___str_9:
	.ascii "ds: ["
	.db 0x00
___str_10:
	.ascii "mem: ["
	.db 0x00
;e4vm_utils.c:148: SHORTINT e4vm_utils_true_const (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_utils_true_const
; ---------------------------------
_e4vm_utils_true_const::
;e4vm_utils.c:150: return -1;
	ld	hl, #0xffff
;e4vm_utils.c:151: }
	ret
;e4vm_utils.c:154: SHORTINT e4vm_utils_false_const (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_utils_false_const
; ---------------------------------
_e4vm_utils_false_const::
;e4vm_utils.c:156: return 0;
	ld	hl, #0x0000
;e4vm_utils.c:157: }
	ret
;e4vm_utils.c:160: void e4vm_utils_error (CHAR *err, SHORTINT err__len)
;	---------------------------------
; Function e4vm_utils_error
; ---------------------------------
_e4vm_utils_error::
;e4vm_utils.c:162: Console_WriteStr((CHAR*)"Error: ", 8);
	ld	hl, #___str_11
	call	_Console_WriteStr_C_COMPACT
;e4vm_utils.c:163: Console_WriteStr((void*)err, err__len);
	pop	bc
	pop	hl
	push	hl
	push	bc
	call	_Console_WriteStr_C_COMPACT
;e4vm_utils.c:164: Console_WriteStrLn((CHAR*)"", 1);
	ld	hl, #___str_12
	call	_Console_WriteStr_C_COMPACT
;e4vm_utils.c:165: }
	jp  _Console_WriteLn_COMPACT
___str_11:
	.ascii "Error: "
	.db 0x00
___str_12:
	.db 0x00
;e4vm_utils.c:168: void e4vm_utils_stack_ds_push (e4vm_type_x4thPtr *v, SHORTINT x)
;	---------------------------------
; Function e4vm_utils_stack_ds_push
; ---------------------------------
_e4vm_utils_stack_ds_push::
	call	___sdcc_enter_ix
;e4vm_utils.c:170: (*v)->ds[(*v)->ds_p] = x;
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	l, c
	ld	h, b
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	add	a, #0x44
	ld	e, a
	ld	a, h
	adc	a, #0x00
	ld	d, a
	push	bc
	ld	bc, #0x0086
	add	hl, bc
	pop	bc
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	add	hl, hl
	add	hl, de
	ld	a, 6 (ix)
	ld	(hl), a
	inc	hl
	ld	a, 7 (ix)
	ld	(hl), a
;e4vm_utils.c:171: (*v)->ds_p = (*v)->ds_p + 1;
	ld	l, c
	ld	h, b
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #0x0086
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	dec	hl
	inc	bc
	ld	a, b
	ld	(hl), c
	inc	hl
	ld	(hl), a
;e4vm_utils.c:172: }
	pop	ix
	ret
;e4vm_utils.c:175: void e4vm_utils_stack_rs_push (e4vm_type_x4thPtr *v, SHORTINT x)
;	---------------------------------
; Function e4vm_utils_stack_rs_push
; ---------------------------------
_e4vm_utils_stack_rs_push::
	call	___sdcc_enter_ix
;e4vm_utils.c:177: (*v)->rs[(*v)->rs_p] = x;
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	l, c
	ld	h, b
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	add	a, #0x04
	ld	e, a
	ld	a, h
	adc	a, #0x00
	ld	d, a
	push	bc
	ld	bc, #0x0084
	add	hl, bc
	pop	bc
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	add	hl, hl
	add	hl, de
	ld	a, 6 (ix)
	ld	(hl), a
	inc	hl
	ld	a, 7 (ix)
	ld	(hl), a
;e4vm_utils.c:178: (*v)->rs_p = (*v)->rs_p + 1;
	ld	l, c
	ld	h, b
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #0x0084
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	dec	hl
	inc	bc
	ld	a, b
	ld	(hl), c
	inc	hl
	ld	(hl), a
;e4vm_utils.c:179: }
	pop	ix
	ret
;e4vm_utils.c:182: CHAR e4vm_utils_read_char (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_utils_read_char
; ---------------------------------
_e4vm_utils_read_char::
;e4vm_utils.c:184: do {
00101$:
;e4vm_utils.c:185: } while (!(!(Basic_PEEK(23556) == 255)));
	ld	a, (#0x5c04)
	inc	a
	jr	Z,00101$
;e4vm_utils.c:186: return Basic_PEEK(23560);
	ld	hl, #0x5c08
	ld	l, (hl)
;e4vm_utils.c:187: }
	ret
;e4vm_utils.c:190: void e4vm_utils_read_string (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_utils_read_string
; ---------------------------------
_e4vm_utils_read_string::
	ld	hl, #-64
	add	hl, sp
	ld	sp, hl
;e4vm_utils.c:194: _ptr__12 = *v;
	ld	hl, #66
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
;e4vm_utils.c:195: Console_ReadStr((void*)_ptr__12->in_string, 64, 64);
	ld	hl, #0x028f
	add	hl, bc
	ld	a, #0x40
	push	af
	inc	sp
	ld	bc, #0x0040
	push	bc
	push	hl
	call	_Console_ReadStr_COMPACT
	pop	af
	pop	af
	inc	sp
;e4vm_utils.c:196: }
	ld	hl, #64
	add	hl, sp
	ld	sp, hl
	ret
;e4vm_utils.c:200: export void *e4vm_utils__init (void)
;	---------------------------------
; Function e4vm_utils__init
; ---------------------------------
_e4vm_utils__init::
;e4vm_utils.c:202: __DEFMOD;
	LD	HL,#. 
	LD (HL),#0xC9 
;e4vm_utils.c:205: __IMPORT(e4vm_type__init);
;e4vm_utils.c:209: }
	jp  _e4vm_type__init
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
