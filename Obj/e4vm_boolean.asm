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
	.globl _Console_WriteStr_C_COMPACT
	.globl _Console_WriteLn_COMPACT
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
;e4vm_boolean.c:34: void e4vm_boolean_true (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_boolean_true
; ---------------------------------
_e4vm_boolean_true::
	call	___sdcc_enter_ix
	push	af
;e4vm_boolean.c:36: (*v)->ds[(*v)->ds_p] = e4vm_utils_true_const(v);
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
	push	bc
	push	hl
	push	bc
	call	_e4vm_utils_true_const
	pop	af
	ld	-2 (ix), l
	ld	-1 (ix), h
	pop	de
	pop	bc
	ld	a, -2 (ix)
	ld	(de), a
	inc	de
	ld	a, -1 (ix)
	ld	(de), a
;e4vm_boolean.c:37: (*v)->ds_p = (*v)->ds_p + 1;
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
;e4vm_boolean.c:38: }
	pop	af
	pop	ix
	ret
;e4vm_boolean.c:41: void e4vm_boolean_false (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_boolean_false
; ---------------------------------
_e4vm_boolean_false::
	call	___sdcc_enter_ix
	push	af
;e4vm_boolean.c:43: (*v)->ds[(*v)->ds_p] = e4vm_utils_false_const(v);
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
	push	bc
	push	hl
	push	bc
	call	_e4vm_utils_false_const
	pop	af
	ld	-2 (ix), l
	ld	-1 (ix), h
	pop	de
	pop	bc
	ld	a, -2 (ix)
	ld	(de), a
	inc	de
	ld	a, -1 (ix)
	ld	(de), a
;e4vm_boolean.c:44: (*v)->ds_p = (*v)->ds_p + 1;
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
;e4vm_boolean.c:45: }
	pop	af
	pop	ix
	ret
;e4vm_boolean.c:48: void e4vm_boolean_not (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_boolean_not
; ---------------------------------
_e4vm_boolean_not::
	call	___sdcc_enter_ix
	push	af
	push	af
;e4vm_boolean.c:50: if ((*v)->ds[(*v)->ds_p - 1] == e4vm_utils_true_const(v)) {
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
	add	a, e
	ld	e, a
	ld	a, #0x00
	adc	a, d
	ld	d, a
	push	bc
	push	de
	push	bc
	call	_e4vm_utils_true_const
	pop	af
	ld	-4 (ix), l
	ld	-3 (ix), h
	pop	de
	pop	bc
	ld	a, (de)
	ld	-2 (ix), a
	inc	de
	ld	a, (de)
	ld	-1 (ix), a
	ld	l, c
	ld	h, b
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
;e4vm_boolean.c:51: (*v)->ds[(*v)->ds_p - 1] = e4vm_utils_false_const(v);
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
;e4vm_boolean.c:50: if ((*v)->ds[(*v)->ds_p - 1] == e4vm_utils_true_const(v)) {
	ld	a, -4 (ix)
	sub	a, -2 (ix)
	jr	NZ,00105$
	ld	a, -3 (ix)
	sub	a, -1 (ix)
	jr	NZ,00105$
;e4vm_boolean.c:51: (*v)->ds[(*v)->ds_p - 1] = e4vm_utils_false_const(v);
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
;e4vm_boolean.c:53: if ((*v)->ds[(*v)->ds_p - 1] == e4vm_utils_false_const(v)) {
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
;e4vm_boolean.c:54: (*v)->ds[(*v)->ds_p - 1] = e4vm_utils_true_const(v);
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
	add	a, e
	ld	e, a
	ld	a, #0x00
	adc	a, d
	ld	d, a
	push	de
	push	bc
	call	_e4vm_utils_true_const
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
00102$:
;e4vm_boolean.c:56: Console_WriteStrLn((CHAR*)"not logical", 12);
	ld	hl, #___str_0
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
00107$:
;e4vm_boolean.c:59: }
	ld	sp, ix
	pop	ix
	ret
___str_0:
	.ascii "not logical"
	.db 0x00
;e4vm_boolean.c:62: void e4vm_boolean_invert (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_boolean_invert
; ---------------------------------
_e4vm_boolean_invert::
	call	___sdcc_enter_ix
;e4vm_boolean.c:64: (*v)->ds[(*v)->ds_p - 1] = e4vm_boolean_BitwiseNot((*v)->ds[(*v)->ds_p - 1]);
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
;e4vm_boolean.c:65: }
	pop	ix
	ret
;e4vm_boolean.c:68: void e4vm_boolean_or (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_boolean_or
; ---------------------------------
_e4vm_boolean_or::
	call	___sdcc_enter_ix
	push	af
;e4vm_boolean.c:70: (*v)->ds[(*v)->ds_p - 2] = e4vm_boolean_BitwiseOR((*v)->ds[(*v)->ds_p - 2], (*v)->ds[(*v)->ds_p - 1]);
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
;e4vm_boolean.c:71: (*v)->ds_p = (*v)->ds_p - 1;
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
;e4vm_boolean.c:72: }
	pop	af
	pop	ix
	ret
;e4vm_boolean.c:75: void e4vm_boolean_and (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_boolean_and
; ---------------------------------
_e4vm_boolean_and::
	call	___sdcc_enter_ix
	push	af
	push	af
;e4vm_boolean.c:77: (*v)->ds[(*v)->ds_p - 2] = e4vm_boolean_BitwiseAND((*v)->ds[(*v)->ds_p - 2], (*v)->ds[(*v)->ds_p - 1]);
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
;e4vm_boolean.c:78: (*v)->ds_p = (*v)->ds_p - 1;
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
;e4vm_boolean.c:79: }
	ld	sp, ix
	pop	ix
	ret
;e4vm_boolean.c:82: void e4vm_boolean_xor (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_boolean_xor
; ---------------------------------
_e4vm_boolean_xor::
	call	___sdcc_enter_ix
	push	af
;e4vm_boolean.c:84: (*v)->ds[(*v)->ds_p - 2] = e4vm_boolean_BitwiseXOR((*v)->ds[(*v)->ds_p - 2], (*v)->ds[(*v)->ds_p - 1]);
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
;e4vm_boolean.c:85: (*v)->ds_p = (*v)->ds_p - 1;
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
;e4vm_boolean.c:86: }
	pop	af
	pop	ix
	ret
;e4vm_boolean.c:89: void e4vm_boolean_eql (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_boolean_eql
; ---------------------------------
_e4vm_boolean_eql::
	call	___sdcc_enter_ix
	push	af
	push	af
;e4vm_boolean.c:91: if ((*v)->ds[(*v)->ds_p - 2] == (*v)->ds[(*v)->ds_p - 1]) {
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
;e4vm_boolean.c:92: (*v)->ds[(*v)->ds_p - 2] = e4vm_utils_true_const(v);
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
;e4vm_boolean.c:94: (*v)->ds[(*v)->ds_p - 2] = e4vm_utils_false_const(v);
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
;e4vm_boolean.c:96: (*v)->ds_p = (*v)->ds_p - 1;
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
;e4vm_boolean.c:97: }
	ld	sp, ix
	pop	ix
	ret
;e4vm_boolean.c:100: void e4vm_boolean_not_eql (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_boolean_not_eql
; ---------------------------------
_e4vm_boolean_not_eql::
	call	___sdcc_enter_ix
	push	af
	push	af
;e4vm_boolean.c:102: if (!((*v)->ds[(*v)->ds_p - 2] == (*v)->ds[(*v)->ds_p - 1])) {
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
;e4vm_boolean.c:103: (*v)->ds[(*v)->ds_p - 2] = e4vm_utils_true_const(v);
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
;e4vm_boolean.c:105: (*v)->ds[(*v)->ds_p - 2] = e4vm_utils_false_const(v);
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
;e4vm_boolean.c:107: (*v)->ds_p = (*v)->ds_p - 1;
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
;e4vm_boolean.c:108: }
	ld	sp, ix
	pop	ix
	ret
;e4vm_boolean.c:111: void e4vm_boolean_less (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_boolean_less
; ---------------------------------
_e4vm_boolean_less::
	call	___sdcc_enter_ix
	push	af
	push	af
;e4vm_boolean.c:113: if ((*v)->ds[(*v)->ds_p - 2] < (*v)->ds[(*v)->ds_p - 1]) {
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
;e4vm_boolean.c:114: (*v)->ds[(*v)->ds_p - 2] = e4vm_utils_true_const(v);
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
;e4vm_boolean.c:116: (*v)->ds[(*v)->ds_p - 2] = e4vm_utils_false_const(v);
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
;e4vm_boolean.c:118: (*v)->ds_p = (*v)->ds_p - 1;
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
;e4vm_boolean.c:119: }
	ld	sp, ix
	pop	ix
	ret
;e4vm_boolean.c:122: void e4vm_boolean_greater (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_boolean_greater
; ---------------------------------
_e4vm_boolean_greater::
	call	___sdcc_enter_ix
	push	af
	push	af
;e4vm_boolean.c:124: if ((*v)->ds[(*v)->ds_p - 2] > (*v)->ds[(*v)->ds_p - 1]) {
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
;e4vm_boolean.c:125: (*v)->ds[(*v)->ds_p - 2] = e4vm_utils_true_const(v);
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
;e4vm_boolean.c:127: (*v)->ds[(*v)->ds_p - 2] = e4vm_utils_false_const(v);
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
;e4vm_boolean.c:129: (*v)->ds_p = (*v)->ds_p - 1;
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
;e4vm_boolean.c:130: }
	ld	sp, ix
	pop	ix
	ret
;e4vm_boolean.c:133: void e4vm_boolean_less_eql (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_boolean_less_eql
; ---------------------------------
_e4vm_boolean_less_eql::
	call	___sdcc_enter_ix
	push	af
	push	af
;e4vm_boolean.c:135: if ((*v)->ds[(*v)->ds_p - 2] <= (*v)->ds[(*v)->ds_p - 1]) {
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
;e4vm_boolean.c:136: (*v)->ds[(*v)->ds_p - 2] = e4vm_utils_true_const(v);
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
;e4vm_boolean.c:138: (*v)->ds[(*v)->ds_p - 2] = e4vm_utils_false_const(v);
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
;e4vm_boolean.c:140: (*v)->ds_p = (*v)->ds_p - 1;
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
;e4vm_boolean.c:141: }
	ld	sp, ix
	pop	ix
	ret
;e4vm_boolean.c:144: void e4vm_boolean_greater_eql (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_boolean_greater_eql
; ---------------------------------
_e4vm_boolean_greater_eql::
	call	___sdcc_enter_ix
	push	af
	push	af
;e4vm_boolean.c:146: if ((*v)->ds[(*v)->ds_p - 2] >= (*v)->ds[(*v)->ds_p - 1]) {
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
;e4vm_boolean.c:147: (*v)->ds[(*v)->ds_p - 2] = e4vm_utils_true_const(v);
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
;e4vm_boolean.c:149: (*v)->ds[(*v)->ds_p - 2] = e4vm_utils_false_const(v);
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
;e4vm_boolean.c:151: (*v)->ds_p = (*v)->ds_p - 1;
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
;e4vm_boolean.c:152: }
	ld	sp, ix
	pop	ix
	ret
;e4vm_boolean.c:156: export void *e4vm_boolean__init (void)
;	---------------------------------
; Function e4vm_boolean__init
; ---------------------------------
_e4vm_boolean__init::
;e4vm_boolean.c:158: __DEFMOD;
	LD	HL,#. 
	LD (HL),#0xC9 
;e4vm_boolean.c:161: __IMPORT(e4vm_utils__init);
;e4vm_boolean.c:165: }
	jp  _e4vm_utils__init
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
