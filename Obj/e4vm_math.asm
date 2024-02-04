;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.3 #11378 (MINGW32)
;--------------------------------------------------------
	.module e4vm_math
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _e4vm_math__init
	.globl _Console_WriteStr_C_COMPACT
	.globl _Console_WriteLn_COMPACT
	.globl _SYSTEM_MODS
	.globl _SYSTEM_DIVS
	.globl _e4vm_math_minus
	.globl _e4vm_math_plus
	.globl _e4vm_math_multiply
	.globl _e4vm_math_devide
	.globl _e4vm_math_mod
	.globl _e4vm_math_inc
	.globl _e4vm_math_dec
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
;e4vm_math.c:23: void e4vm_math_minus (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_math_minus
; ---------------------------------
_e4vm_math_minus::
	call	___sdcc_enter_ix
;e4vm_math.c:25: Console_WriteStrLn((CHAR*)"-", 2);
	ld	hl, #___str_0
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
;e4vm_math.c:26: (*v)->ds_p = (*v)->ds_p - 1;
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x0086
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	dec	hl
	dec	de
	ld	(hl), e
	inc	hl
	ld	(hl), d
;e4vm_math.c:27: (*v)->ds[(*v)->ds_p - 1] = (*v)->ds[(*v)->ds_p - 1] - (*v)->ds[(*v)->ds_p];
	ld	l, c
	ld	h, b
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
	inc	hl
	ld	h, (hl)
	ld	l, a
	dec	a
	add	a, a
	add	a, e
	ld	c, a
	ld	a, #0x00
	adc	a, d
	ld	b, a
	add	hl, hl
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
	sub	a, e
	ld	e, a
	ld	a, h
	sbc	a, d
	ld	d, a
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;e4vm_math.c:28: }
	pop	ix
	ret
___str_0:
	.ascii "-"
	.db 0x00
;e4vm_math.c:31: void e4vm_math_plus (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_math_plus
; ---------------------------------
_e4vm_math_plus::
	call	___sdcc_enter_ix
;e4vm_math.c:33: Console_WriteStrLn((CHAR*)"+", 2);
	ld	hl, #___str_1
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
;e4vm_math.c:34: (*v)->ds_p = (*v)->ds_p - 1;
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x0086
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	dec	hl
	dec	de
	ld	(hl), e
	inc	hl
	ld	(hl), d
;e4vm_math.c:35: (*v)->ds[(*v)->ds_p - 1] = (*v)->ds[(*v)->ds_p - 1] + (*v)->ds[(*v)->ds_p];
	ld	l, c
	ld	h, b
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
	inc	hl
	ld	h, (hl)
	ld	l, a
	dec	a
	add	a, a
	add	a, e
	ld	c, a
	ld	a, #0x00
	adc	a, d
	ld	b, a
	add	hl, hl
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
	add	hl, de
	ex	de, hl
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;e4vm_math.c:36: }
	pop	ix
	ret
___str_1:
	.ascii "+"
	.db 0x00
;e4vm_math.c:39: void e4vm_math_multiply (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_math_multiply
; ---------------------------------
_e4vm_math_multiply::
	call	___sdcc_enter_ix
;e4vm_math.c:41: Console_WriteStrLn((CHAR*)"*", 2);
	ld	hl, #___str_2
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
;e4vm_math.c:42: (*v)->ds_p = (*v)->ds_p - 1;
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x0086
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	dec	hl
	dec	de
	ld	(hl), e
	inc	hl
	ld	(hl), d
;e4vm_math.c:43: (*v)->ds[(*v)->ds_p - 1] = (*v)->ds[(*v)->ds_p - 1] * (*v)->ds[(*v)->ds_p];
	ld	l, c
	ld	h, b
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
	inc	hl
	ld	h, (hl)
	ld	l, a
	dec	a
	add	a, a
	add	a, e
	ld	c, a
	ld	a, #0x00
	adc	a, d
	ld	b, a
	add	hl, hl
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
	push	bc
	push	de
	push	hl
	call	__mulint
	pop	af
	pop	af
	ld	e, l
	ld	d, h
	pop	bc
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;e4vm_math.c:44: }
	pop	ix
	ret
___str_2:
	.ascii "*"
	.db 0x00
;e4vm_math.c:47: void e4vm_math_devide (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_math_devide
; ---------------------------------
_e4vm_math_devide::
	call	___sdcc_enter_ix
;e4vm_math.c:49: Console_WriteStrLn((CHAR*)"/", 2);
	ld	hl, #___str_3
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
;e4vm_math.c:50: (*v)->ds_p = (*v)->ds_p - 1;
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x0086
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	dec	hl
	dec	de
	ld	(hl), e
	inc	hl
	ld	(hl), d
;e4vm_math.c:51: (*v)->ds[(*v)->ds_p - 1] = __DIVFS((*v)->ds[(*v)->ds_p - 1], (*v)->ds[(*v)->ds_p]);
	ld	l, c
	ld	h, b
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
	inc	hl
	ld	h, (hl)
	ld	l, a
	dec	a
	add	a, a
	add	a, e
	ld	c, a
	ld	a, #0x00
	adc	a, d
	ld	b, a
	add	hl, hl
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
	push	bc
	push	de
	push	hl
	call	_SYSTEM_DIVS
	pop	af
	pop	af
	ld	e, l
	ld	d, h
	pop	bc
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;e4vm_math.c:52: }
	pop	ix
	ret
___str_3:
	.ascii "/"
	.db 0x00
;e4vm_math.c:55: void e4vm_math_mod (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_math_mod
; ---------------------------------
_e4vm_math_mod::
	call	___sdcc_enter_ix
;e4vm_math.c:57: Console_WriteStrLn((CHAR*)"mod", 4);
	ld	hl, #___str_4
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
;e4vm_math.c:58: (*v)->ds_p = (*v)->ds_p - 1;
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x0086
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	dec	hl
	dec	de
	ld	(hl), e
	inc	hl
	ld	(hl), d
;e4vm_math.c:59: (*v)->ds[(*v)->ds_p - 1] = __MODFS((*v)->ds[(*v)->ds_p - 1], (*v)->ds[(*v)->ds_p]);
	ld	l, c
	ld	h, b
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
	inc	hl
	ld	h, (hl)
	ld	l, a
	dec	a
	add	a, a
	add	a, e
	ld	c, a
	ld	a, #0x00
	adc	a, d
	ld	b, a
	add	hl, hl
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
	push	bc
	push	de
	push	hl
	call	_SYSTEM_MODS
	pop	af
	pop	af
	ld	e, l
	ld	d, h
	pop	bc
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;e4vm_math.c:60: }
	pop	ix
	ret
___str_4:
	.ascii "mod"
	.db 0x00
;e4vm_math.c:63: void e4vm_math_inc (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_math_inc
; ---------------------------------
_e4vm_math_inc::
	call	___sdcc_enter_ix
;e4vm_math.c:65: Console_WriteStrLn((CHAR*)"1+", 3);
	ld	hl, #___str_5
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
;e4vm_math.c:66: (*v)->ds[(*v)->ds_p - 1] = (*v)->ds[(*v)->ds_p - 1] + 1;
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
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	dec	hl
	inc	bc
	ld	a, b
	ld	(hl), c
	inc	hl
	ld	(hl), a
;e4vm_math.c:67: }
	pop	ix
	ret
___str_5:
	.ascii "1+"
	.db 0x00
;e4vm_math.c:70: void e4vm_math_dec (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_math_dec
; ---------------------------------
_e4vm_math_dec::
	call	___sdcc_enter_ix
;e4vm_math.c:72: Console_WriteStrLn((CHAR*)"1-", 3);
	ld	hl, #___str_6
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
;e4vm_math.c:73: (*v)->ds[(*v)->ds_p - 1] = (*v)->ds[(*v)->ds_p - 1] - 1;
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
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	dec	hl
	dec	bc
	ld	(hl), c
	inc	hl
	ld	(hl), b
;e4vm_math.c:74: }
	pop	ix
	ret
___str_6:
	.ascii "1-"
	.db 0x00
;e4vm_math.c:78: export void *e4vm_math__init (void)
;	---------------------------------
; Function e4vm_math__init
; ---------------------------------
_e4vm_math__init::
;e4vm_math.c:80: __DEFMOD;
	LD	HL,#. 
	LD (HL),#0xC9 
;e4vm_math.c:86: }
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
