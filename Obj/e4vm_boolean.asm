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
;e4vm_boolean.c:24: void e4vm_boolean_true (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_boolean_true
; ---------------------------------
_e4vm_boolean_true::
	call	___sdcc_enter_ix
	push	af
;e4vm_boolean.c:26: Console_WriteStrLn((CHAR*)"true", 5);
	ld	hl, #___str_0
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
;e4vm_boolean.c:27: (*v)->ds[(*v)->ds_p] = e4vm_utils_true_const(v);
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
;e4vm_boolean.c:28: (*v)->ds_p = (*v)->ds_p + 1;
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
;e4vm_boolean.c:29: }
	pop	af
	pop	ix
	ret
___str_0:
	.ascii "true"
	.db 0x00
;e4vm_boolean.c:32: void e4vm_boolean_false (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_boolean_false
; ---------------------------------
_e4vm_boolean_false::
	call	___sdcc_enter_ix
	push	af
;e4vm_boolean.c:34: Console_WriteStrLn((CHAR*)"false", 6);
	ld	hl, #___str_1
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
;e4vm_boolean.c:35: (*v)->ds[(*v)->ds_p] = e4vm_utils_false_const(v);
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
;e4vm_boolean.c:36: (*v)->ds_p = (*v)->ds_p + 1;
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
;e4vm_boolean.c:37: }
	pop	af
	pop	ix
	ret
___str_1:
	.ascii "false"
	.db 0x00
;e4vm_boolean.c:40: void e4vm_boolean_not (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_boolean_not
; ---------------------------------
_e4vm_boolean_not::
	call	___sdcc_enter_ix
	push	af
	push	af
;e4vm_boolean.c:42: Console_WriteStrLn((CHAR*)"not", 4);
	ld	hl, #___str_2
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
;e4vm_boolean.c:43: if ((*v)->ds[(*v)->ds_p - 1] == e4vm_utils_true_const(v)) {
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
;e4vm_boolean.c:44: (*v)->ds[(*v)->ds_p - 1] = e4vm_utils_false_const(v);
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
;e4vm_boolean.c:43: if ((*v)->ds[(*v)->ds_p - 1] == e4vm_utils_true_const(v)) {
	ld	a, -4 (ix)
	sub	a, -2 (ix)
	jr	NZ,00105$
	ld	a, -3 (ix)
	sub	a, -1 (ix)
	jr	NZ,00105$
;e4vm_boolean.c:44: (*v)->ds[(*v)->ds_p - 1] = e4vm_utils_false_const(v);
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
;e4vm_boolean.c:46: if ((*v)->ds[(*v)->ds_p - 1] == e4vm_utils_false_const(v)) {
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
;e4vm_boolean.c:47: (*v)->ds[(*v)->ds_p - 1] = e4vm_utils_true_const(v);
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
;e4vm_boolean.c:49: Console_WriteStrLn((CHAR*)"not logical", 12);
	ld	hl, #___str_3
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
00107$:
;e4vm_boolean.c:52: }
	ld	sp, ix
	pop	ix
	ret
___str_2:
	.ascii "not"
	.db 0x00
___str_3:
	.ascii "not logical"
	.db 0x00
;e4vm_boolean.c:55: void e4vm_boolean_invert (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_boolean_invert
; ---------------------------------
_e4vm_boolean_invert::
	call	___sdcc_enter_ix
;e4vm_boolean.c:57: Console_WriteStrLn((CHAR*)"invert", 7);
	ld	hl, #___str_4
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
;e4vm_boolean.c:58: (*v)->ds[(*v)->ds_p - 1] = -(*v)->ds[(*v)->ds_p - 1] - 1;
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
	ld	a, (hl)
	inc	hl
	ld	b, (hl)
	dec	hl
	neg
	ld	c, a
	ld	a, #0x00
	sbc	a, b
	ld	b, a
	dec	bc
	ld	(hl), c
	inc	hl
	ld	(hl), b
;e4vm_boolean.c:59: }
	pop	ix
	ret
___str_4:
	.ascii "invert"
	.db 0x00
;e4vm_boolean.c:62: void e4vm_boolean_or (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_boolean_or
; ---------------------------------
_e4vm_boolean_or::
	call	___sdcc_enter_ix
	push	af
;e4vm_boolean.c:64: Console_WriteStrLn((CHAR*)"or", 3);
	ld	hl, #___str_5
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
;e4vm_boolean.c:65: (*v)->ds[(*v)->ds_p - 2] = (BYTE)((SET)(*v)->ds[(*v)->ds_p - 1] | (SET)(*v)->ds[(*v)->ds_p - 2]);
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
	ld	a, (bc)
	or	a, e
	ld	e, a
	rla
	sbc	a, a
	ld	d, a
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;e4vm_boolean.c:66: (*v)->ds_p = (*v)->ds_p - 1;
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
;e4vm_boolean.c:67: }
	pop	af
	pop	ix
	ret
___str_5:
	.ascii "or"
	.db 0x00
;e4vm_boolean.c:70: void e4vm_boolean_and (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_boolean_and
; ---------------------------------
_e4vm_boolean_and::
	call	___sdcc_enter_ix
	push	af
;e4vm_boolean.c:72: Console_WriteStrLn((CHAR*)"and", 4);
	ld	hl, #___str_6
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
;e4vm_boolean.c:73: (*v)->ds[(*v)->ds_p - 2] = (BYTE)((SET)(*v)->ds[(*v)->ds_p - 1] & (SET)(*v)->ds[(*v)->ds_p - 2]);
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
	ld	a, (bc)
	and	a, e
	ld	e, a
	rla
	sbc	a, a
	ld	d, a
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;e4vm_boolean.c:74: (*v)->ds_p = (*v)->ds_p - 1;
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
;e4vm_boolean.c:75: }
	pop	af
	pop	ix
	ret
___str_6:
	.ascii "and"
	.db 0x00
;e4vm_boolean.c:78: void e4vm_boolean_xor (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_boolean_xor
; ---------------------------------
_e4vm_boolean_xor::
	call	___sdcc_enter_ix
	push	af
;e4vm_boolean.c:80: Console_WriteStrLn((CHAR*)"xor", 4);
	ld	hl, #___str_7
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
;e4vm_boolean.c:81: (*v)->ds[(*v)->ds_p - 2] = (BYTE)((SET)(*v)->ds[(*v)->ds_p - 1] ^ (SET)(*v)->ds[(*v)->ds_p - 2]);
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
	ld	a, (bc)
	xor	a, e
	ld	e, a
	rla
	sbc	a, a
	ld	d, a
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;e4vm_boolean.c:82: (*v)->ds_p = (*v)->ds_p - 1;
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
;e4vm_boolean.c:83: }
	pop	af
	pop	ix
	ret
___str_7:
	.ascii "xor"
	.db 0x00
;e4vm_boolean.c:87: export void *e4vm_boolean__init (void)
;	---------------------------------
; Function e4vm_boolean__init
; ---------------------------------
_e4vm_boolean__init::
;e4vm_boolean.c:89: __DEFMOD;
	LD	HL,#. 
	LD (HL),#0xC9 
;e4vm_boolean.c:92: __IMPORT(e4vm_utils__init);
;e4vm_boolean.c:96: }
	jp  _e4vm_utils__init
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
