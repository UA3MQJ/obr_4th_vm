;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.3 #11378 (MINGW32)
;--------------------------------------------------------
	.module e4vm_boolean
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _e4vm_boolean__init
	.globl _e4vm_utils__init
	.globl _e4vm_utils_true_const
	.globl _e4vm_utils_false_const
	.globl _e4vm_utils_add_core_word
	.globl _e4vm_type__init
	.globl _Console_WriteStr_C_COMPACT
	.globl _Console_WriteLn_COMPACT
	.globl _memcpy
	.globl _e4vm_boolean_true
	.globl _e4vm_boolean_false
	.globl _e4vm_boolean_not
	.globl _e4vm_boolean_invert
	.globl _e4vm_boolean_or
	.globl _e4vm_boolean_and
	.globl _e4vm_boolean_xor
	.globl _e4vm_boolean_eql
	.globl _e4vm_boolean_not_eql
	.globl _e4vm_boolean_less
	.globl _e4vm_boolean_greater
	.globl _e4vm_boolean_less_eql
	.globl _e4vm_boolean_greater_eql
	.globl _e4vm_boolean_add_core_words
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
;e4vm_boolean.c:35: void e4vm_boolean_true (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_boolean_true
; ---------------------------------
_e4vm_boolean_true::
	call	___sdcc_enter_ix
;e4vm_boolean.c:37: (*v)->ds[(*v)->ds_p] = e4vm_utils_true_const(v);
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
	push	hl
	push	bc
	push	bc
	call	_e4vm_utils_true_const
	pop	af
	ex	de,hl
	pop	bc
	pop	hl
	ld	(hl), e
	inc	hl
	ld	(hl), d
;e4vm_boolean.c:38: (*v)->ds_p = (*v)->ds_p + 1;
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
;e4vm_boolean.c:39: }
	pop	ix
	ret
;e4vm_boolean.c:42: void e4vm_boolean_false (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_boolean_false
; ---------------------------------
_e4vm_boolean_false::
	call	___sdcc_enter_ix
;e4vm_boolean.c:44: (*v)->ds[(*v)->ds_p] = e4vm_utils_false_const(v);
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
	push	hl
	push	bc
	push	bc
	call	_e4vm_utils_false_const
	pop	af
	ex	de,hl
	pop	bc
	pop	hl
	ld	(hl), e
	inc	hl
	ld	(hl), d
;e4vm_boolean.c:45: (*v)->ds_p = (*v)->ds_p + 1;
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
;e4vm_boolean.c:46: }
	pop	ix
	ret
;e4vm_boolean.c:49: void e4vm_boolean_not (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_boolean_not
; ---------------------------------
_e4vm_boolean_not::
	call	___sdcc_enter_ix
	push	af
	push	af
;e4vm_boolean.c:51: if ((*v)->ds[(*v)->ds_p - 1] == e4vm_utils_true_const(v)) {
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
	dec	a
	add	a, a
	ld	l, a
	ld	h, #0x00
	add	hl, de
	push	hl
	push	bc
	push	bc
	call	_e4vm_utils_true_const
	pop	af
	ld	-4 (ix), l
	ld	-3 (ix), h
	pop	bc
	pop	hl
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
	ld	l, c
	ld	h, b
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
;e4vm_boolean.c:52: (*v)->ds[(*v)->ds_p - 1] = e4vm_utils_false_const(v);
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
	dec	a
	add	a, a
	add	a, e
	ld	e, a
	ld	a, #0x00
	adc	a, d
	ld	d, a
;e4vm_boolean.c:51: if ((*v)->ds[(*v)->ds_p - 1] == e4vm_utils_true_const(v)) {
	ld	a, -4 (ix)
	sub	a, -2 (ix)
	jr	NZ,00105$
	ld	a, -3 (ix)
	sub	a, -1 (ix)
	jr	NZ,00105$
;e4vm_boolean.c:52: (*v)->ds[(*v)->ds_p - 1] = e4vm_utils_false_const(v);
	push	de
	push	bc
	call	_e4vm_utils_false_const
	pop	af
	ld	c, l
	ld	b, h
	pop	de
	ld	a, c
	ld	(de), a
	inc	de
	ld	a, b
	ld	(de), a
	jr	00107$
00105$:
;e4vm_boolean.c:54: if ((*v)->ds[(*v)->ds_p - 1] == e4vm_utils_false_const(v)) {
	push	bc
	push	de
	push	bc
	call	_e4vm_utils_false_const
	pop	af
	ld	-2 (ix), l
	ld	-1 (ix), h
	pop	de
	pop	bc
	ex	de,hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	cp	a, a
	sbc	hl, de
	jr	NZ,00102$
;e4vm_boolean.c:55: (*v)->ds[(*v)->ds_p - 1] = e4vm_utils_true_const(v);
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
	dec	a
	add	a, a
	ld	l, a
	ld	h, #0x00
	add	hl, de
	push	hl
	push	bc
	call	_e4vm_utils_true_const
	pop	af
	ld	c, l
	ld	b, h
	pop	hl
	ld	(hl), c
	inc	hl
	ld	(hl), b
	jr	00107$
00102$:
;e4vm_boolean.c:57: Console_WriteStrLn((CHAR*)"not logical", 12);
	ld	hl, #___str_0
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
00107$:
;e4vm_boolean.c:60: }
	ld	sp, ix
	pop	ix
	ret
___str_0:
	.ascii "not logical"
	.db 0x00
;e4vm_boolean.c:63: void e4vm_boolean_invert (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_boolean_invert
; ---------------------------------
_e4vm_boolean_invert::
	call	___sdcc_enter_ix
;e4vm_boolean.c:65: (*v)->ds[(*v)->ds_p - 1] = e4vm_boolean_BitwiseNot((*v)->ds[(*v)->ds_p - 1]);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #0x0044
	add	hl, bc
	ex	de, hl
	ld	l, c
	ld	h, b
	ld	bc, #0x0086
	add	hl, bc
	ld	a, (hl)
	dec	a
	add	a, a
	ld	l, a
	ld	h, #0x00
	add	hl, de
	ld	b, (hl)
	inc	hl
	ld	a, (hl)
	dec	hl
	cpl
	ld	c, a
	ld	a, b
	cpl
	ld	(hl), a
	inc	hl
	ld	(hl), c
;e4vm_boolean.c:66: }
	pop	ix
	ret
;e4vm_boolean.c:69: void e4vm_boolean_or (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_boolean_or
; ---------------------------------
_e4vm_boolean_or::
	call	___sdcc_enter_ix
	push	af
;e4vm_boolean.c:71: (*v)->ds[(*v)->ds_p - 2] = e4vm_boolean_BitwiseOR((*v)->ds[(*v)->ds_p - 2], (*v)->ds[(*v)->ds_p - 1]);
	ld	a, 4 (ix)
	ld	-2 (ix), a
	ld	a, 5 (ix)
	ld	-1 (ix), a
	pop	hl
	push	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #0x0044
	add	hl, bc
	ex	de, hl
	ld	l, c
	ld	h, b
	ld	bc, #0x0086
	add	hl, bc
	ld	l, (hl)
	ld	a, l
	dec	a
	dec	a
	add	a, a
	add	a, e
	ld	c, a
	ld	a, #0x00
	adc	a, d
	ld	b, a
	dec	l
	sla	l
	ld	h, #0x00
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, c
	ld	h, b
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	or	a,e
	ld	e, a
	ld	a, d
	or	a, h
	ld	d, a
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;e4vm_boolean.c:72: (*v)->ds_p = (*v)->ds_p - 1;
	pop	hl
	push	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #0x0086
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	dec	hl
	dec	bc
	ld	(hl), c
	inc	hl
	ld	(hl), b
;e4vm_boolean.c:73: }
	pop	af
	pop	ix
	ret
;e4vm_boolean.c:76: void e4vm_boolean_and (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_boolean_and
; ---------------------------------
_e4vm_boolean_and::
	call	___sdcc_enter_ix
	push	af
	push	af
;e4vm_boolean.c:78: (*v)->ds[(*v)->ds_p - 2] = e4vm_boolean_BitwiseAND((*v)->ds[(*v)->ds_p - 2], (*v)->ds[(*v)->ds_p - 1]);
	ld	a, 4 (ix)
	ld	-4 (ix), a
	ld	a, 5 (ix)
	ld	-3 (ix), a
	pop	hl
	push	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #0x0044
	add	hl, bc
	ex	de, hl
	ld	l, c
	ld	h, b
	ld	bc, #0x0086
	add	hl, bc
	ld	l, (hl)
	ld	a, l
	dec	a
	dec	a
	add	a, a
	add	a, e
	ld	c, a
	ld	a, #0x00
	adc	a, d
	ld	b, a
	ld	a, l
	dec	a
	add	a, a
	add	a, e
	ld	-2 (ix), a
	ld	a, #0x00
	adc	a, d
	ld	-1 (ix), a
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	and	a, e
	ld	e, a
	ld	a, h
	and	a, d
	ld	d, a
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;e4vm_boolean.c:79: (*v)->ds_p = (*v)->ds_p - 1;
	pop	hl
	push	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #0x0086
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	dec	hl
	dec	bc
	ld	(hl), c
	inc	hl
	ld	(hl), b
;e4vm_boolean.c:80: }
	ld	sp, ix
	pop	ix
	ret
;e4vm_boolean.c:83: void e4vm_boolean_xor (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_boolean_xor
; ---------------------------------
_e4vm_boolean_xor::
	call	___sdcc_enter_ix
	push	af
;e4vm_boolean.c:85: (*v)->ds[(*v)->ds_p - 2] = e4vm_boolean_BitwiseXOR((*v)->ds[(*v)->ds_p - 2], (*v)->ds[(*v)->ds_p - 1]);
	ld	a, 4 (ix)
	ld	-2 (ix), a
	ld	a, 5 (ix)
	ld	-1 (ix), a
	pop	hl
	push	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #0x0044
	add	hl, bc
	ex	de, hl
	ld	l, c
	ld	h, b
	ld	bc, #0x0086
	add	hl, bc
	ld	l, (hl)
	ld	a, l
	dec	a
	dec	a
	add	a, a
	add	a, e
	ld	c, a
	ld	a, #0x00
	adc	a, d
	ld	b, a
	dec	l
	sla	l
	ld	h, #0x00
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, c
	ld	h, b
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	a, e
	xor	a, l
	ld	e, a
	ld	a, d
	xor	a, h
	ld	d, a
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;e4vm_boolean.c:86: (*v)->ds_p = (*v)->ds_p - 1;
	pop	hl
	push	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #0x0086
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	dec	hl
	dec	bc
	ld	(hl), c
	inc	hl
	ld	(hl), b
;e4vm_boolean.c:87: }
	pop	af
	pop	ix
	ret
;e4vm_boolean.c:90: void e4vm_boolean_eql (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_boolean_eql
; ---------------------------------
_e4vm_boolean_eql::
	call	___sdcc_enter_ix
	push	af
	push	af
;e4vm_boolean.c:92: if ((*v)->ds[(*v)->ds_p - 2] == (*v)->ds[(*v)->ds_p - 1]) {
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
	ld	l, (hl)
	ld	a, l
	dec	a
	dec	a
	add	a, a
	add	a, e
	ld	-4 (ix), a
	ld	a, #0x00
	adc	a, d
	ld	-3 (ix), a
	ld	a, l
	dec	a
	add	a, a
	add	a, e
	ld	e, a
	ld	a, #0x00
	adc	a, d
	ld	d, a
	pop	hl
	push	hl
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
	ex	de,hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	cp	a, a
	sbc	hl, de
	jr	NZ,00102$
;e4vm_boolean.c:93: (*v)->ds[(*v)->ds_p - 2] = e4vm_utils_true_const(v);
	push	bc
	push	bc
	call	_e4vm_utils_true_const
	pop	af
	ex	de,hl
	pop	bc
	pop	hl
	push	hl
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jr	00103$
00102$:
;e4vm_boolean.c:95: (*v)->ds[(*v)->ds_p - 2] = e4vm_utils_false_const(v);
	push	bc
	push	bc
	call	_e4vm_utils_false_const
	pop	af
	ex	de,hl
	pop	bc
	pop	hl
	push	hl
	ld	(hl), e
	inc	hl
	ld	(hl), d
00103$:
;e4vm_boolean.c:97: (*v)->ds_p = (*v)->ds_p - 1;
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
	dec	bc
	ld	(hl), c
	inc	hl
	ld	(hl), b
;e4vm_boolean.c:98: }
	ld	sp, ix
	pop	ix
	ret
;e4vm_boolean.c:101: void e4vm_boolean_not_eql (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_boolean_not_eql
; ---------------------------------
_e4vm_boolean_not_eql::
	call	___sdcc_enter_ix
	push	af
	push	af
;e4vm_boolean.c:103: if (!((*v)->ds[(*v)->ds_p - 2] == (*v)->ds[(*v)->ds_p - 1])) {
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
	ld	l, (hl)
	ld	a, l
	dec	a
	dec	a
	add	a, a
	add	a, e
	ld	-4 (ix), a
	ld	a, #0x00
	adc	a, d
	ld	-3 (ix), a
	ld	a, l
	dec	a
	add	a, a
	add	a, e
	ld	e, a
	ld	a, #0x00
	adc	a, d
	ld	d, a
	pop	hl
	push	hl
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
	ex	de,hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	cp	a, a
	sbc	hl, de
	jr	Z,00102$
;e4vm_boolean.c:104: (*v)->ds[(*v)->ds_p - 2] = e4vm_utils_true_const(v);
	push	bc
	push	bc
	call	_e4vm_utils_true_const
	pop	af
	ex	de,hl
	pop	bc
	pop	hl
	push	hl
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jr	00103$
00102$:
;e4vm_boolean.c:106: (*v)->ds[(*v)->ds_p - 2] = e4vm_utils_false_const(v);
	push	bc
	push	bc
	call	_e4vm_utils_false_const
	pop	af
	ex	de,hl
	pop	bc
	pop	hl
	push	hl
	ld	(hl), e
	inc	hl
	ld	(hl), d
00103$:
;e4vm_boolean.c:108: (*v)->ds_p = (*v)->ds_p - 1;
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
	dec	bc
	ld	(hl), c
	inc	hl
	ld	(hl), b
;e4vm_boolean.c:109: }
	ld	sp, ix
	pop	ix
	ret
;e4vm_boolean.c:112: void e4vm_boolean_less (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_boolean_less
; ---------------------------------
_e4vm_boolean_less::
	call	___sdcc_enter_ix
	push	af
	push	af
;e4vm_boolean.c:114: if ((*v)->ds[(*v)->ds_p - 2] < (*v)->ds[(*v)->ds_p - 1]) {
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
	ld	l, (hl)
	ld	a, l
	dec	a
	dec	a
	add	a, a
	add	a, e
	ld	-4 (ix), a
	ld	a, #0x00
	adc	a, d
	ld	-3 (ix), a
	ld	a, l
	dec	a
	add	a, a
	add	a, e
	ld	-2 (ix), a
	ld	a, #0x00
	adc	a, d
	ld	-1 (ix), a
	pop	hl
	push	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	a, e
	sub	a, l
	ld	a, d
	sbc	a, h
	jp	PO, 00111$
	xor	a, #0x80
00111$:
	jp	P, 00102$
;e4vm_boolean.c:115: (*v)->ds[(*v)->ds_p - 2] = e4vm_utils_true_const(v);
	push	bc
	push	bc
	call	_e4vm_utils_true_const
	pop	af
	ex	de,hl
	pop	bc
	pop	hl
	push	hl
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jr	00103$
00102$:
;e4vm_boolean.c:117: (*v)->ds[(*v)->ds_p - 2] = e4vm_utils_false_const(v);
	push	bc
	push	bc
	call	_e4vm_utils_false_const
	pop	af
	ex	de,hl
	pop	bc
	pop	hl
	push	hl
	ld	(hl), e
	inc	hl
	ld	(hl), d
00103$:
;e4vm_boolean.c:119: (*v)->ds_p = (*v)->ds_p - 1;
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
	dec	bc
	ld	(hl), c
	inc	hl
	ld	(hl), b
;e4vm_boolean.c:120: }
	ld	sp, ix
	pop	ix
	ret
;e4vm_boolean.c:123: void e4vm_boolean_greater (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_boolean_greater
; ---------------------------------
_e4vm_boolean_greater::
	call	___sdcc_enter_ix
	push	af
	push	af
;e4vm_boolean.c:125: if ((*v)->ds[(*v)->ds_p - 2] > (*v)->ds[(*v)->ds_p - 1]) {
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
	ld	l, (hl)
	ld	a, l
	dec	a
	dec	a
	add	a, a
	add	a, e
	ld	-4 (ix), a
	ld	a, #0x00
	adc	a, d
	ld	-3 (ix), a
	ld	a, l
	dec	a
	add	a, a
	add	a, e
	ld	-2 (ix), a
	ld	a, #0x00
	adc	a, d
	ld	-1 (ix), a
	pop	hl
	push	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	sub	a, e
	ld	a, h
	sbc	a, d
	jp	PO, 00111$
	xor	a, #0x80
00111$:
	jp	P, 00102$
;e4vm_boolean.c:126: (*v)->ds[(*v)->ds_p - 2] = e4vm_utils_true_const(v);
	push	bc
	push	bc
	call	_e4vm_utils_true_const
	pop	af
	ex	de,hl
	pop	bc
	pop	hl
	push	hl
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jr	00103$
00102$:
;e4vm_boolean.c:128: (*v)->ds[(*v)->ds_p - 2] = e4vm_utils_false_const(v);
	push	bc
	push	bc
	call	_e4vm_utils_false_const
	pop	af
	ex	de,hl
	pop	bc
	pop	hl
	push	hl
	ld	(hl), e
	inc	hl
	ld	(hl), d
00103$:
;e4vm_boolean.c:130: (*v)->ds_p = (*v)->ds_p - 1;
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
	dec	bc
	ld	(hl), c
	inc	hl
	ld	(hl), b
;e4vm_boolean.c:131: }
	ld	sp, ix
	pop	ix
	ret
;e4vm_boolean.c:134: void e4vm_boolean_less_eql (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_boolean_less_eql
; ---------------------------------
_e4vm_boolean_less_eql::
	call	___sdcc_enter_ix
	push	af
	push	af
;e4vm_boolean.c:136: if ((*v)->ds[(*v)->ds_p - 2] <= (*v)->ds[(*v)->ds_p - 1]) {
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
	ld	l, (hl)
	ld	a, l
	dec	a
	dec	a
	add	a, a
	add	a, e
	ld	-4 (ix), a
	ld	a, #0x00
	adc	a, d
	ld	-3 (ix), a
	ld	a, l
	dec	a
	add	a, a
	add	a, e
	ld	-2 (ix), a
	ld	a, #0x00
	adc	a, d
	ld	-1 (ix), a
	pop	hl
	push	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	sub	a, e
	ld	a, h
	sbc	a, d
	jp	PO, 00111$
	xor	a, #0x80
00111$:
	jp	M, 00102$
;e4vm_boolean.c:137: (*v)->ds[(*v)->ds_p - 2] = e4vm_utils_true_const(v);
	push	bc
	push	bc
	call	_e4vm_utils_true_const
	pop	af
	ex	de,hl
	pop	bc
	pop	hl
	push	hl
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jr	00103$
00102$:
;e4vm_boolean.c:139: (*v)->ds[(*v)->ds_p - 2] = e4vm_utils_false_const(v);
	push	bc
	push	bc
	call	_e4vm_utils_false_const
	pop	af
	ex	de,hl
	pop	bc
	pop	hl
	push	hl
	ld	(hl), e
	inc	hl
	ld	(hl), d
00103$:
;e4vm_boolean.c:141: (*v)->ds_p = (*v)->ds_p - 1;
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
	dec	bc
	ld	(hl), c
	inc	hl
	ld	(hl), b
;e4vm_boolean.c:142: }
	ld	sp, ix
	pop	ix
	ret
;e4vm_boolean.c:145: void e4vm_boolean_greater_eql (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_boolean_greater_eql
; ---------------------------------
_e4vm_boolean_greater_eql::
	call	___sdcc_enter_ix
	push	af
	push	af
;e4vm_boolean.c:147: if ((*v)->ds[(*v)->ds_p - 2] >= (*v)->ds[(*v)->ds_p - 1]) {
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
	ld	l, (hl)
	ld	a, l
	dec	a
	dec	a
	add	a, a
	add	a, e
	ld	-4 (ix), a
	ld	a, #0x00
	adc	a, d
	ld	-3 (ix), a
	ld	a, l
	dec	a
	add	a, a
	add	a, e
	ld	-2 (ix), a
	ld	a, #0x00
	adc	a, d
	ld	-1 (ix), a
	pop	hl
	push	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	a, e
	sub	a, l
	ld	a, d
	sbc	a, h
	jp	PO, 00111$
	xor	a, #0x80
00111$:
	jp	M, 00102$
;e4vm_boolean.c:148: (*v)->ds[(*v)->ds_p - 2] = e4vm_utils_true_const(v);
	push	bc
	push	bc
	call	_e4vm_utils_true_const
	pop	af
	ex	de,hl
	pop	bc
	pop	hl
	push	hl
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jr	00103$
00102$:
;e4vm_boolean.c:150: (*v)->ds[(*v)->ds_p - 2] = e4vm_utils_false_const(v);
	push	bc
	push	bc
	call	_e4vm_utils_false_const
	pop	af
	ex	de,hl
	pop	bc
	pop	hl
	push	hl
	ld	(hl), e
	inc	hl
	ld	(hl), d
00103$:
;e4vm_boolean.c:152: (*v)->ds_p = (*v)->ds_p - 1;
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
	dec	bc
	ld	(hl), c
	inc	hl
	ld	(hl), b
;e4vm_boolean.c:153: }
	ld	sp, ix
	pop	ix
	ret
;e4vm_boolean.c:156: void e4vm_boolean_add_core_words (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_boolean_add_core_words
; ---------------------------------
_e4vm_boolean_add_core_words::
	call	___sdcc_enter_ix
	ld	hl, #-104
	add	hl, sp
	ld	sp, hl
;e4vm_boolean.c:171: __MOVE((CHAR*)"true", _str__18, 5);
	ld	hl, #0
	add	hl, sp
	ld	c, l
	ld	b, h
	push	hl
	ld	de, #0x0005
	push	de
	ld	de, #___str_1
	push	de
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	hl
;e4vm_boolean.c:172: e4vm_utils_add_core_word(v, (void*)_str__18, e4vm_boolean_true, 0);
	xor	a, a
	push	af
	inc	sp
	ld	bc, #_e4vm_boolean_true
	push	bc
	push	hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_core_word
	pop	af
	pop	af
	pop	af
	inc	sp
;e4vm_boolean.c:173: __MOVE((CHAR*)"false", _str__17, 6);
	ld	hl, #8
	add	hl, sp
	ld	c, l
	ld	b, h
	push	hl
	ld	de, #0x0006
	push	de
	ld	de, #___str_2
	push	de
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	hl
;e4vm_boolean.c:174: e4vm_utils_add_core_word(v, (void*)_str__17, e4vm_boolean_false, 0);
	xor	a, a
	push	af
	inc	sp
	ld	bc, #_e4vm_boolean_false
	push	bc
	push	hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_core_word
	pop	af
	pop	af
	pop	af
	inc	sp
;e4vm_boolean.c:175: __MOVE((CHAR*)"not", _str__16, 4);
	ld	hl, #16
	add	hl, sp
	ld	c, l
	ld	b, h
	push	hl
	ld	de, #0x0004
	push	de
	ld	de, #___str_3
	push	de
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	hl
;e4vm_boolean.c:176: e4vm_utils_add_core_word(v, (void*)_str__16, e4vm_boolean_not, 0);
	xor	a, a
	push	af
	inc	sp
	ld	bc, #_e4vm_boolean_not
	push	bc
	push	hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_core_word
	pop	af
	pop	af
	pop	af
	inc	sp
;e4vm_boolean.c:177: __MOVE((CHAR*)"invert", _str__15, 7);
	ld	hl, #24
	add	hl, sp
	ld	c, l
	ld	b, h
	push	hl
	ld	de, #0x0007
	push	de
	ld	de, #___str_4
	push	de
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	hl
;e4vm_boolean.c:178: e4vm_utils_add_core_word(v, (void*)_str__15, e4vm_boolean_invert, 0);
	xor	a, a
	push	af
	inc	sp
	ld	bc, #_e4vm_boolean_invert
	push	bc
	push	hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_core_word
	pop	af
	pop	af
	pop	af
	inc	sp
;e4vm_boolean.c:179: __MOVE((CHAR*)"or", _str__14, 3);
	ld	hl, #32
	add	hl, sp
	ld	c, l
	ld	b, h
	push	hl
	ld	de, #0x0003
	push	de
	ld	de, #___str_5
	push	de
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	hl
;e4vm_boolean.c:180: e4vm_utils_add_core_word(v, (void*)_str__14, e4vm_boolean_or, 0);
	xor	a, a
	push	af
	inc	sp
	ld	bc, #_e4vm_boolean_or
	push	bc
	push	hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_core_word
	pop	af
	pop	af
	pop	af
	inc	sp
;e4vm_boolean.c:181: __MOVE((CHAR*)"and", _str__13, 4);
	ld	hl, #40
	add	hl, sp
	ld	c, l
	ld	b, h
	push	hl
	ld	de, #0x0004
	push	de
	ld	de, #___str_6
	push	de
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	hl
;e4vm_boolean.c:182: e4vm_utils_add_core_word(v, (void*)_str__13, e4vm_boolean_and, 0);
	xor	a, a
	push	af
	inc	sp
	ld	bc, #_e4vm_boolean_and
	push	bc
	push	hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_core_word
	pop	af
	pop	af
	pop	af
	inc	sp
;e4vm_boolean.c:183: __MOVE((CHAR*)"xor", _str__12, 4);
	ld	hl, #48
	add	hl, sp
	ld	c, l
	ld	b, h
	push	hl
	ld	de, #0x0004
	push	de
	ld	de, #___str_7
	push	de
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	hl
;e4vm_boolean.c:184: e4vm_utils_add_core_word(v, (void*)_str__12, e4vm_boolean_xor, 0);
	xor	a, a
	push	af
	inc	sp
	ld	bc, #_e4vm_boolean_xor
	push	bc
	push	hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_core_word
	pop	af
	pop	af
	pop	af
	inc	sp
;e4vm_boolean.c:185: __MOVE((CHAR*)"<>", _str__11, 3);
	ld	hl, #56
	add	hl, sp
	ld	c, l
	ld	b, h
	push	hl
	ld	de, #0x0003
	push	de
	ld	de, #___str_8
	push	de
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	hl
;e4vm_boolean.c:186: e4vm_utils_add_core_word(v, (void*)_str__11, e4vm_boolean_not_eql, 0);
	xor	a, a
	push	af
	inc	sp
	ld	bc, #_e4vm_boolean_not_eql
	push	bc
	push	hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_core_word
	pop	af
	pop	af
	pop	af
	inc	sp
;e4vm_boolean.c:187: __MOVE((CHAR*)"=", _str__10, 2);
	ld	hl, #64
	add	hl, sp
	ld	c, l
	ld	b, h
	push	hl
	ld	de, #0x0002
	push	de
	ld	de, #___str_9
	push	de
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	hl
;e4vm_boolean.c:188: e4vm_utils_add_core_word(v, (void*)_str__10, e4vm_boolean_eql, 0);
	xor	a, a
	push	af
	inc	sp
	ld	bc, #_e4vm_boolean_eql
	push	bc
	push	hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_core_word
	pop	af
	pop	af
	pop	af
	inc	sp
;e4vm_boolean.c:189: __MOVE((CHAR*)"<", _str__9, 2);
	ld	hl, #72
	add	hl, sp
	ld	c, l
	ld	b, h
	push	hl
	ld	de, #0x0002
	push	de
	ld	de, #___str_10
	push	de
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	hl
;e4vm_boolean.c:190: e4vm_utils_add_core_word(v, (void*)_str__9, e4vm_boolean_less, 0);
	xor	a, a
	push	af
	inc	sp
	ld	bc, #_e4vm_boolean_less
	push	bc
	push	hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_core_word
	pop	af
	pop	af
	pop	af
	inc	sp
;e4vm_boolean.c:191: __MOVE((CHAR*)">", _str__8, 2);
	ld	hl, #80
	add	hl, sp
	ld	c, l
	ld	b, h
	push	hl
	ld	de, #0x0002
	push	de
	ld	de, #___str_11
	push	de
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	hl
;e4vm_boolean.c:192: e4vm_utils_add_core_word(v, (void*)_str__8, e4vm_boolean_greater, 0);
	xor	a, a
	push	af
	inc	sp
	ld	bc, #_e4vm_boolean_greater
	push	bc
	push	hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_core_word
	pop	af
	pop	af
	pop	af
	inc	sp
;e4vm_boolean.c:193: __MOVE((CHAR*)"<=", _str__7, 3);
	ld	hl, #88
	add	hl, sp
	ld	c, l
	ld	b, h
	push	hl
	ld	de, #0x0003
	push	de
	ld	de, #___str_12
	push	de
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	hl
;e4vm_boolean.c:194: e4vm_utils_add_core_word(v, (void*)_str__7, e4vm_boolean_less_eql, 0);
	xor	a, a
	push	af
	inc	sp
	ld	bc, #_e4vm_boolean_less_eql
	push	bc
	push	hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_core_word
	pop	af
	pop	af
	pop	af
	inc	sp
;e4vm_boolean.c:195: __MOVE((CHAR*)">=", _str__6, 3);
	ld	hl, #96
	add	hl, sp
	ld	c, l
	ld	b, h
	push	hl
	ld	de, #0x0003
	push	de
	ld	de, #___str_13
	push	de
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	hl
;e4vm_boolean.c:196: e4vm_utils_add_core_word(v, (void*)_str__6, e4vm_boolean_greater_eql, 0);
	xor	a, a
	push	af
	inc	sp
	ld	bc, #_e4vm_boolean_greater_eql
	push	bc
	push	hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_core_word
;e4vm_boolean.c:197: }
	ld	sp,ix
	pop	ix
	ret
___str_1:
	.ascii "true"
	.db 0x00
___str_2:
	.ascii "false"
	.db 0x00
___str_3:
	.ascii "not"
	.db 0x00
___str_4:
	.ascii "invert"
	.db 0x00
___str_5:
	.ascii "or"
	.db 0x00
___str_6:
	.ascii "and"
	.db 0x00
___str_7:
	.ascii "xor"
	.db 0x00
___str_8:
	.ascii "<>"
	.db 0x00
___str_9:
	.ascii "="
	.db 0x00
___str_10:
	.ascii "<"
	.db 0x00
___str_11:
	.ascii ">"
	.db 0x00
___str_12:
	.ascii "<="
	.db 0x00
___str_13:
	.ascii ">="
	.db 0x00
;e4vm_boolean.c:201: export void *e4vm_boolean__init (void)
;	---------------------------------
; Function e4vm_boolean__init
; ---------------------------------
_e4vm_boolean__init::
;e4vm_boolean.c:203: __DEFMOD;
	LD	HL,#. 
	LD (HL),#0xC9 
;e4vm_boolean.c:206: __IMPORT(e4vm_type__init);
	call	_e4vm_type__init
;e4vm_boolean.c:207: __IMPORT(e4vm_utils__init);
;e4vm_boolean.c:211: }
	jp  _e4vm_utils__init
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
