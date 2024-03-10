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
	.globl _e4vm_utils_look_up_word_idx_by_address
	.globl _e4vm_utils_is_digit
	.globl _e4vm_utils_is_constant
	.globl _e4vm_utils_str2int
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
	.globl _e4vm_utils_keyboard_read_string
	.globl _e4vm_utils_read_char
	.globl _e4vm_utils_read_word
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
;e4vm_utils.c:35: void e4vm_utils_add_core_word (e4vm_type_x4thPtr *v, e4vm_type_word_string_type word, e4vm_type_ProcedureType proc, BOOLEAN immediate)
;	---------------------------------
; Function e4vm_utils_add_core_word
; ---------------------------------
_e4vm_utils_add_core_word::
	call	___sdcc_enter_ix
	push	af
;e4vm_utils.c:37: __MOVE(word, (*v)->words[(*v)->words_count].word, 10);
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
	ld	bc, #0x04cd
	add	hl, bc
	pop	bc
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	ld	de, #0x000a
	push	de
	push	bc
	push	hl
	call	_memcpy
	pop	af
	pop	af
	pop	af
;e4vm_utils.c:38: (*v)->words[(*v)->words_count].addr = (*v)->words_count;
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
	ld	bc, #0x04cd
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	ld	de, #0x000a
	add	hl, de
	ld	(hl), c
	inc	hl
	ld	(hl), b
;e4vm_utils.c:39: (*v)->words[(*v)->words_count].proc = proc;
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
	ld	bc, #0x04cd
	add	hl, bc
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	ld	bc, #0x000c
	add	hl, bc
	ld	a, 8 (ix)
	ld	(hl), a
	inc	hl
	ld	a, 9 (ix)
	ld	(hl), a
;e4vm_utils.c:40: (*v)->words[(*v)->words_count].immediate = immediate;
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
	ld	bc, #0x04cd
	add	hl, bc
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	ld	bc, #0x000e
	add	hl, bc
	ld	a, 10 (ix)
	ld	(hl), a
;e4vm_utils.c:41: (*v)->words[(*v)->words_count].enabled = 1;
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
	ld	bc, #0x04cd
	add	hl, bc
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	ld	bc, #0x000f
	add	hl, bc
	ld	(hl), #0x01
;e4vm_utils.c:42: (*v)->mem[(*v)->words_count] = (*v)->words_count;
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
	ld	bc, #0x04cd
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
;e4vm_utils.c:43: (*v)->words_count = (*v)->words_count + 1;
	pop	hl
	push	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #0x04cd
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
;e4vm_utils.c:44: (*v)->hereP = (*v)->words_count;
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
	ld	bc, #0x04cd
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, c
	ld	(de), a
	inc	de
	ld	a, b
	ld	(de), a
;e4vm_utils.c:45: }
	pop	af
	pop	ix
	ret
;e4vm_utils.c:48: SHORTINT e4vm_utils_look_up_word_address (e4vm_type_x4thPtr *v, e4vm_type_word_string_type word)
;	---------------------------------
; Function e4vm_utils_look_up_word_address
; ---------------------------------
_e4vm_utils_look_up_word_address::
	call	___sdcc_enter_ix
	push	af
	push	af
	push	af
;e4vm_utils.c:51: _for__13 = (*v)->words_count - 1;
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
	ld	de, #0x04cd
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
;e4vm_utils.c:53: while (i <= _for__13) {
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
;e4vm_utils.c:54: if (__STRCMPCC((*v)->words[i].word, word, 10, (CHAR*)"e4vm_utils", -907) == 0) {
	pop	hl
	push	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x00cd
	add	hl, de
	ld	e, c
	ld	d, b
	sla	e
	rl	d
	sla	e
	rl	d
	sla	e
	rl	d
	sla	e
	rl	d
	add	hl, de
	ld	-2 (ix), l
	ld	-1 (ix), h
	push	bc
	push	de
	ld	l, 6 (ix)
	ld	h, 7 (ix)
	push	hl
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	push	hl
	call	_SYSTEM_STRCMPCC
	pop	af
	pop	af
	pop	de
	pop	bc
	ld	a, h
	or	a, l
	jr	NZ,00102$
;e4vm_utils.c:55: return (*v)->words[i].addr;
	pop	hl
	push	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #0x00cd
	add	hl, bc
	add	hl, de
	ld	de, #0x000a
	add	hl, de
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	jr	00106$
00102$:
;e4vm_utils.c:57: i += 1;
	inc	bc
	jr	00103$
00105$:
;e4vm_utils.c:59: return -1;
	ld	hl, #0xffff
00106$:
;e4vm_utils.c:60: }
	ld	sp, ix
	pop	ix
	ret
;e4vm_utils.c:63: SHORTINT e4vm_utils_look_up_word_idx_by_address (e4vm_type_x4thPtr *v, SHORTINT word_address)
;	---------------------------------
; Function e4vm_utils_look_up_word_idx_by_address
; ---------------------------------
_e4vm_utils_look_up_word_idx_by_address::
	call	___sdcc_enter_ix
	push	af
	push	af
	push	af
;e4vm_utils.c:66: _for__15 = (*v)->words_count - 1;
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, e
	ld	h, d
	ld	bc, #0x04cd
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, c
	add	a, #0xff
	ld	-6 (ix), a
	ld	a, b
	adc	a, #0xff
	ld	-5 (ix), a
;e4vm_utils.c:67: i = 0;
	ld	bc, #0x0000
;e4vm_utils.c:68: while (i <= _for__15) {
	ld	hl, #0x00cd
	add	hl, de
	ld	-4 (ix), l
	ld	-3 (ix), h
	xor	a, a
	ld	-2 (ix), a
	ld	-1 (ix), a
00103$:
	ld	a, -6 (ix)
	sub	a, -2 (ix)
	ld	a, -5 (ix)
	sbc	a, -1 (ix)
	jp	PO, 00123$
	xor	a, #0x80
00123$:
	jp	M, 00105$
;e4vm_utils.c:69: if ((*v)->words[i].addr == word_address) {
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	e, -4 (ix)
	ld	d, -3 (ix)
	add	hl, de
	ld	de, #0x000a
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, 6 (ix)
	ld	h, 7 (ix)
	cp	a, a
	sbc	hl, de
	jr	NZ,00102$
;e4vm_utils.c:70: return i;
	ld	l, c
	ld	h, b
	jr	00106$
00102$:
;e4vm_utils.c:72: i += 1;
	inc	-2 (ix)
	jr	NZ,00126$
	inc	-1 (ix)
00126$:
	ld	c, -2 (ix)
	ld	b, -1 (ix)
	jr	00103$
00105$:
;e4vm_utils.c:74: return -1;
	ld	hl, #0xffff
00106$:
;e4vm_utils.c:75: }
	ld	sp, ix
	pop	ix
	ret
;e4vm_utils.c:78: BOOLEAN e4vm_utils_is_digit (CHAR char_)
;	---------------------------------
; Function e4vm_utils_is_digit
; ---------------------------------
_e4vm_utils_is_digit::
;e4vm_utils.c:80: return char_ >= '0' && char_ <= '9';
	ld	iy, #2
	add	iy, sp
	ld	a, 0 (iy)
	sub	a, #0x30
	jr	C,00103$
	ld	a, #0x39
	sub	a, 0 (iy)
	jr	NC,00104$
00103$:
	ld	l, #0x00
	ret
00104$:
	ld	l, #0x01
;e4vm_utils.c:81: }
	ret
;e4vm_utils.c:84: BOOLEAN e4vm_utils_is_constant (e4vm_type_word_string_type word)
;	---------------------------------
; Function e4vm_utils_is_constant
; ---------------------------------
_e4vm_utils_is_constant::
;e4vm_utils.c:86: return e4vm_utils_is_digit(word[0]) || ((word[0] == '+' || word[0] == '-') && e4vm_utils_is_digit(word[1]));
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	a, (hl)
	push	hl
	push	af
	inc	sp
	call	_e4vm_utils_is_digit
	inc	sp
	ld	a, l
	pop	hl
	or	a, a
	jr	NZ,00104$
	ld	a, (hl)
	cp	a, #0x2b
	jr	Z,00110$
	sub	a, #0x2d
	jr	NZ,00103$
00110$:
	inc	hl
	ld	a, (hl)
	push	af
	inc	sp
	call	_e4vm_utils_is_digit
	inc	sp
	ld	a, l
	or	a, a
	jr	NZ,00104$
00103$:
	ld	l, #0x00
	ret
00104$:
	ld	l, #0x01
;e4vm_utils.c:87: }
	ret
;e4vm_utils.c:90: SHORTINT e4vm_utils_str2int (e4vm_type_word_string_type word)
;	---------------------------------
; Function e4vm_utils_str2int
; ---------------------------------
_e4vm_utils_str2int::
	call	___sdcc_enter_ix
	push	af
	push	af
	push	af
	dec	sp
;e4vm_utils.c:93: res = 0;
	xor	a, a
	ld	-2 (ix), a
	ld	-1 (ix), a
;e4vm_utils.c:94: i = 0;
	ld	de, #0x0000
;e4vm_utils.c:95: if (word[0] == '+' || word[0] == '-') {
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	a, (bc)
	ld	l, a
	sub	a, #0x2d
	ld	a, #0x01
	jr	Z,00133$
	xor	a, a
00133$:
	ld	-7 (ix), a
	ld	a, l
	sub	a, #0x2b
	jr	Z,00101$
	ld	a, -7 (ix)
	or	a, a
	jr	Z,00113$
00101$:
;e4vm_utils.c:96: i = 1;
	ld	de, #0x0001
;e4vm_utils.c:98: while ((SHORTINT)word[i] > 0) {
00113$:
00104$:
	ld	l, c
	ld	h, b
	add	hl, de
	ld	a, (hl)
	ld	-6 (ix), a
	xor	a, a
	ld	-5 (ix), a
	xor	a, a
	cp	a, -6 (ix)
	sbc	a, -5 (ix)
	jp	PO, 00135$
	xor	a, #0x80
00135$:
	jp	P, 00106$
;e4vm_utils.c:99: res = res * 10;
	push	de
	ld	e, -2 (ix)
	ld	d, -1 (ix)
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	pop	de
;e4vm_utils.c:100: res = res + ((SHORTINT)word[i] - 48);
	ld	a, -6 (ix)
	add	a, #0xd0
	ld	-4 (ix), a
	ld	a, -5 (ix)
	adc	a, #0xff
	ld	-3 (ix), a
	ld	a, -4 (ix)
	add	a, l
	ld	-2 (ix), a
	ld	a, -3 (ix)
	adc	a, h
	ld	-1 (ix), a
;e4vm_utils.c:101: i = i + 1;
	inc	de
	jr	00104$
00106$:
;e4vm_utils.c:103: if (word[0] == '-') {
	ld	a, -7 (ix)
	or	a, a
	jr	Z,00108$
;e4vm_utils.c:104: res = -res;
	xor	a, a
	sub	a, -2 (ix)
	ld	-2 (ix), a
	ld	a, #0x00
	sbc	a, -1 (ix)
	ld	-1 (ix), a
00108$:
;e4vm_utils.c:106: return res;
	ld	l, -2 (ix)
	ld	h, -1 (ix)
;e4vm_utils.c:107: }
	ld	sp, ix
	pop	ix
	ret
;e4vm_utils.c:110: void e4vm_utils_here_to_wp (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_utils_here_to_wp
; ---------------------------------
_e4vm_utils_here_to_wp::
	call	___sdcc_enter_ix
;e4vm_utils.c:112: (*v)->wp = (*v)->hereP;
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
;e4vm_utils.c:113: }
	pop	ix
	ret
;e4vm_utils.c:116: void e4vm_utils_add_op (e4vm_type_x4thPtr *v, SHORTINT word_adr)
;	---------------------------------
; Function e4vm_utils_add_op
; ---------------------------------
_e4vm_utils_add_op::
	call	___sdcc_enter_ix
;e4vm_utils.c:118: (*v)->mem[(*v)->hereP] = word_adr;
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
;e4vm_utils.c:119: (*v)->hereP = (*v)->hereP + 1;
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
;e4vm_utils.c:120: }
	pop	ix
	ret
;e4vm_utils.c:123: void e4vm_utils_add_op_from_string (e4vm_type_x4thPtr *v, e4vm_type_word_string_type word)
;	---------------------------------
; Function e4vm_utils_add_op_from_string
; ---------------------------------
_e4vm_utils_add_op_from_string::
;e4vm_utils.c:125: e4vm_utils_add_op(v, e4vm_utils_look_up_word_address(v, word));
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
;e4vm_utils.c:126: }
	ret
;e4vm_utils.c:129: void e4vm_utils_init (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_utils_init
; ---------------------------------
_e4vm_utils_init::
	call	___sdcc_enter_ix
	push	af
;e4vm_utils.c:132: (*v)->ip = 0;
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
;e4vm_utils.c:133: (*v)->wp = 0;
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
;e4vm_utils.c:134: (*v)->hereP = 0;
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
;e4vm_utils.c:135: (*v)->rs_p = 0;
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
;e4vm_utils.c:136: (*v)->ds_p = 0;
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
;e4vm_utils.c:137: (*v)->words_count = 0;
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x04cd
	add	hl, de
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;e4vm_utils.c:138: (*v)->cell_bit_size = 16;
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
;e4vm_utils.c:139: (*v)->is_eval_mode = 1;
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x00cc
	add	hl, de
	ld	(hl), #0x01
;e4vm_utils.c:140: (*v)->buffer_idx = 0;
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x054f
	add	hl, de
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;e4vm_utils.c:142: while (i <= 31) {
	ld	de, #0x0000
00101$:
	ld	a, #0x1f
	cp	a, e
	ld	a, #0x00
	sbc	a, d
	jp	PO, 00145$
	xor	a, #0x80
00145$:
	jp	M, 00103$
;e4vm_utils.c:143: (*v)->mem[i] = 0;
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
;e4vm_utils.c:144: i += 1;
	inc	de
	jr	00101$
00103$:
;e4vm_utils.c:147: while (i <= 63) {
	ld	de, #0x0000
00104$:
	ld	a, #0x3f
	cp	a, e
	ld	a, #0x00
	sbc	a, d
	jp	PO, 00146$
	xor	a, #0x80
00146$:
	jp	M, 00106$
;e4vm_utils.c:148: (*v)->buffer[i] = 0x00;
	ld	l, c
	ld	h, b
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	push	de
	ld	de, #0x050f
	add	hl, de
	pop	de
	add	hl, de
	ld	(hl), #0x00
;e4vm_utils.c:149: i += 1;
	inc	de
	jr	00104$
00106$:
;e4vm_utils.c:152: while (i <= 31) {
	ld	hl, #0x0000
	ex	(sp), hl
00107$:
	ld	a, #0x1f
	cp	a, -2 (ix)
	ld	a, #0x00
	sbc	a, -1 (ix)
	jp	PO, 00147$
	xor	a, #0x80
00147$:
	jp	M, 00110$
;e4vm_utils.c:153: (*v)->rs[i] = 0;
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
;e4vm_utils.c:154: (*v)->ds[i] = 0;
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
;e4vm_utils.c:155: i += 1;
	inc	-2 (ix)
	jr	NZ,00107$
	inc	-1 (ix)
	jr	00107$
00110$:
;e4vm_utils.c:157: }
	pop	af
	pop	ix
	ret
;e4vm_utils.c:160: void e4vm_utils_vm_stat (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_utils_vm_stat
; ---------------------------------
_e4vm_utils_vm_stat::
	call	___sdcc_enter_ix
	push	af
	push	af
	push	af
	push	af
;e4vm_utils.c:163: Console_WriteStrLn((CHAR*)" ", 2);
	ld	hl, #___str_0
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
;e4vm_utils.c:164: Console_WriteStr((CHAR*)"ip:", 4);
	ld	hl, #___str_1
	call	_Console_WriteStr_C_COMPACT
;e4vm_utils.c:165: Console_WriteInt((*v)->ip);
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
;e4vm_utils.c:166: Console_WriteStr((CHAR*)" wp:", 5);
	ld	hl, #___str_2
	call	_Console_WriteStr_C_COMPACT
;e4vm_utils.c:167: Console_WriteInt((*v)->wp);
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
;e4vm_utils.c:168: Console_WriteStr((CHAR*)" hereP:", 8);
	ld	hl, #___str_3
	call	_Console_WriteStr_C_COMPACT
;e4vm_utils.c:169: Console_WriteInt((*v)->hereP);
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
;e4vm_utils.c:170: Console_WriteStrLn((CHAR*)" ", 2);
	ld	hl, #___str_0
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
;e4vm_utils.c:171: Console_WriteStrLn((CHAR*)" ", 2);
	ld	hl, #___str_0
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
;e4vm_utils.c:172: Console_WriteStr((CHAR*)"rs_p:", 6);
	ld	hl, #___str_4
	call	_Console_WriteStr_C_COMPACT
;e4vm_utils.c:173: Console_WriteInt((*v)->rs_p);
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
;e4vm_utils.c:174: Console_WriteStrLn((CHAR*)" ", 2);
	ld	hl, #___str_0
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
;e4vm_utils.c:175: Console_WriteStrLn((CHAR*)"rs: [", 6);
	ld	hl, #___str_5
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
;e4vm_utils.c:177: while (i <= 31) {
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
;e4vm_utils.c:178: Console_WriteInt((*v)->rs[i]);
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
;e4vm_utils.c:179: Console_WriteStr((CHAR*)" ", 2);
	ld	hl, #___str_0
	call	_Console_WriteStr_C_COMPACT
;e4vm_utils.c:180: i += 1;
	inc	-2 (ix)
	jr	NZ,00101$
	inc	-1 (ix)
	jr	00101$
00103$:
;e4vm_utils.c:182: Console_WriteStrLn((CHAR*)"]", 2);
	ld	hl, #___str_6
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
;e4vm_utils.c:183: Console_WriteStr((CHAR*)"ds_p:", 6);
	ld	hl, #___str_7
	call	_Console_WriteStr_C_COMPACT
;e4vm_utils.c:184: Console_WriteInt((*v)->ds_p);
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
;e4vm_utils.c:185: Console_WriteStrLn((CHAR*)" ", 2);
	ld	hl, #___str_0
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
;e4vm_utils.c:186: Console_WriteStrLn((CHAR*)"ds: [", 6);
	ld	hl, #___str_8
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
;e4vm_utils.c:188: while (i <= 31) {
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
;e4vm_utils.c:189: Console_WriteInt((*v)->ds[i]);
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
;e4vm_utils.c:191: i += 1;
	inc	bc
	jr	00104$
00106$:
;e4vm_utils.c:193: Console_WriteStrLn((CHAR*)"]", 2);
	ld	hl, #___str_6
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
;e4vm_utils.c:194: Console_WriteStrLn((CHAR*)"mem: [", 7);
	ld	hl, #___str_9
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
;e4vm_utils.c:196: while (i <= 31) {
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
;e4vm_utils.c:197: Console_WriteInt((*v)->mem[i]);
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
;e4vm_utils.c:199: i += 1;
	inc	bc
	jr	00107$
00109$:
;e4vm_utils.c:201: Console_WriteStrLn((CHAR*)"]", 2);
	ld	hl, #___str_6
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
;e4vm_utils.c:202: }
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
	.ascii "rs_p:"
	.db 0x00
___str_5:
	.ascii "rs: ["
	.db 0x00
___str_6:
	.ascii "]"
	.db 0x00
___str_7:
	.ascii "ds_p:"
	.db 0x00
___str_8:
	.ascii "ds: ["
	.db 0x00
___str_9:
	.ascii "mem: ["
	.db 0x00
;e4vm_utils.c:205: SHORTINT e4vm_utils_true_const (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_utils_true_const
; ---------------------------------
_e4vm_utils_true_const::
;e4vm_utils.c:207: return -1;
	ld	hl, #0xffff
;e4vm_utils.c:208: }
	ret
;e4vm_utils.c:211: SHORTINT e4vm_utils_false_const (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_utils_false_const
; ---------------------------------
_e4vm_utils_false_const::
;e4vm_utils.c:213: return 0;
	ld	hl, #0x0000
;e4vm_utils.c:214: }
	ret
;e4vm_utils.c:217: void e4vm_utils_error (CHAR *err, SHORTINT err__len)
;	---------------------------------
; Function e4vm_utils_error
; ---------------------------------
_e4vm_utils_error::
;e4vm_utils.c:219: Console_WriteStr((CHAR*)"Error: ", 8);
	ld	hl, #___str_10
	call	_Console_WriteStr_C_COMPACT
;e4vm_utils.c:220: Console_WriteStr((void*)err, err__len);
	pop	bc
	pop	hl
	push	hl
	push	bc
	call	_Console_WriteStr_C_COMPACT
;e4vm_utils.c:221: Console_WriteStrLn((CHAR*)"", 1);
	ld	hl, #___str_11
	call	_Console_WriteStr_C_COMPACT
;e4vm_utils.c:222: }
	jp  _Console_WriteLn_COMPACT
___str_10:
	.ascii "Error: "
	.db 0x00
___str_11:
	.db 0x00
;e4vm_utils.c:225: void e4vm_utils_stack_ds_push (e4vm_type_x4thPtr *v, SHORTINT x)
;	---------------------------------
; Function e4vm_utils_stack_ds_push
; ---------------------------------
_e4vm_utils_stack_ds_push::
	call	___sdcc_enter_ix
;e4vm_utils.c:227: (*v)->ds[(*v)->ds_p] = x;
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
;e4vm_utils.c:228: (*v)->ds_p = (*v)->ds_p + 1;
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
;e4vm_utils.c:229: }
	pop	ix
	ret
;e4vm_utils.c:232: void e4vm_utils_stack_rs_push (e4vm_type_x4thPtr *v, SHORTINT x)
;	---------------------------------
; Function e4vm_utils_stack_rs_push
; ---------------------------------
_e4vm_utils_stack_rs_push::
	call	___sdcc_enter_ix
;e4vm_utils.c:234: (*v)->rs[(*v)->rs_p] = x;
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
;e4vm_utils.c:235: (*v)->rs_p = (*v)->rs_p + 1;
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
;e4vm_utils.c:236: }
	pop	ix
	ret
;e4vm_utils.c:239: void e4vm_utils_keyboard_read_string (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_utils_keyboard_read_string
; ---------------------------------
_e4vm_utils_keyboard_read_string::
	call	___sdcc_enter_ix
	ld	hl, #-64
	add	hl, sp
	ld	sp, hl
;e4vm_utils.c:243: _ptr__11 = *v;
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
;e4vm_utils.c:244: Console_ReadStr((void*)_ptr__11->buffer, 64, 64);
	ld	hl, #0x050f
	add	hl, de
	push	bc
	ld	a, #0x40
	push	af
	inc	sp
	ld	de, #0x0040
	push	de
	push	hl
	call	_Console_ReadStr_COMPACT
	pop	af
	pop	af
	inc	sp
;e4vm_utils.c:245: (*v)->buffer_idx = 0;
	pop	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #0x054f
	add	hl, bc
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;e4vm_utils.c:246: }
	ld	sp, ix
	pop	ix
	ret
;e4vm_utils.c:249: CHAR e4vm_utils_read_char (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_utils_read_char
; ---------------------------------
_e4vm_utils_read_char::
	call	___sdcc_enter_ix
	push	af
;e4vm_utils.c:252: c = (*v)->buffer[(*v)->buffer_idx];
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #0x050f
	add	hl, bc
	ex	de, hl
	ld	hl, #0x054f
	add	hl, bc
	ex	(sp), hl
	pop	hl
	push	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ex	de,hl
	add	hl, bc
	ld	a, (hl)
	ld	e, a
;e4vm_utils.c:253: if (!((SHORTINT)c == 0)) {
	or	a, a
	jr	Z,00102$
;e4vm_utils.c:254: (*v)->buffer_idx = (*v)->buffer_idx + 1;
	inc	bc
	pop	hl
	push	hl
	ld	(hl), c
	inc	hl
	ld	(hl), b
00102$:
;e4vm_utils.c:256: return c;
	ld	l, e
;e4vm_utils.c:257: }
	pop	af
	pop	ix
	ret
;e4vm_utils.c:260: BOOLEAN e4vm_utils_read_word (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_utils_read_word
; ---------------------------------
_e4vm_utils_read_word::
	call	___sdcc_enter_ix
	push	af
;e4vm_utils.c:265: fl = 0;
	xor	a, a
	ld	-2 (ix), a
;e4vm_utils.c:267: c = e4vm_utils_read_char(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_read_char
	pop	af
	ld	-1 (ix), l
;e4vm_utils.c:268: while (c == ' ') {
00101$:
	ld	a, -1 (ix)
	sub	a, #0x20
	jr	NZ,00114$
;e4vm_utils.c:269: c = e4vm_utils_read_char(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_read_char
	pop	af
	ld	-1 (ix), l
	jr	00101$
;e4vm_utils.c:271: while (!(c == ' ' || (SHORTINT)c == 0)) {
00114$:
	ld	bc, #0x0000
00105$:
	ld	a, -1 (ix)
	sub	a, #0x20
	jr	Z,00107$
	ld	a, -1 (ix)
	or	a, a
	jr	Z,00107$
;e4vm_utils.c:272: fl = 1;
	ld	-2 (ix), #0x01
;e4vm_utils.c:273: (*v)->readed_word[i] = c;
	ld	e, 4 (ix)
	ld	d, 5 (ix)
	ld	l, e
	ld	h, d
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	push	de
	ld	de, #0x0551
	add	hl, de
	pop	de
	add	hl, bc
	ld	a, -1 (ix)
	ld	(hl), a
;e4vm_utils.c:274: i = i + 1;
	inc	bc
;e4vm_utils.c:275: (*v)->readed_word[i] = 0x00;
	ld	l, e
	ld	h, d
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	push	de
	ld	de, #0x0551
	add	hl, de
	pop	de
	add	hl, bc
	ld	(hl), #0x00
;e4vm_utils.c:276: c = e4vm_utils_read_char(v);
	push	bc
	push	de
	call	_e4vm_utils_read_char
	pop	af
	pop	bc
	ld	-1 (ix), l
	jr	00105$
00107$:
;e4vm_utils.c:278: return fl;
	ld	l, -2 (ix)
;e4vm_utils.c:279: }
	pop	af
	pop	ix
	ret
;e4vm_utils.c:283: export void *e4vm_utils__init (void)
;	---------------------------------
; Function e4vm_utils__init
; ---------------------------------
_e4vm_utils__init::
;e4vm_utils.c:285: __DEFMOD;
	LD	HL,#. 
	LD (HL),#0xC9 
;e4vm_utils.c:288: __IMPORT(e4vm_type__init);
;e4vm_utils.c:292: }
	jp  _e4vm_type__init
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
