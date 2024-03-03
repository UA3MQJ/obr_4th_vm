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
	.globl _e4vm_utils__init
	.globl _e4vm_utils_add_core_word
	.globl _e4vm_type__init
	.globl _SYSTEM_MODS
	.globl _SYSTEM_DIVS
	.globl _memcpy
	.globl _e4vm_math_minus
	.globl _e4vm_math_plus
	.globl _e4vm_math_multiply
	.globl _e4vm_math_devide
	.globl _e4vm_math_mod
	.globl _e4vm_math_inc
	.globl _e4vm_math_dec
	.globl _e4vm_math_add_core_words
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
;e4vm_math.c:25: void e4vm_math_minus (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_math_minus
; ---------------------------------
_e4vm_math_minus::
	call	___sdcc_enter_ix
;e4vm_math.c:27: (*v)->ds_p = (*v)->ds_p - 1;
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
;e4vm_math.c:28: (*v)->ds[(*v)->ds_p - 1] = (*v)->ds[(*v)->ds_p - 1] - (*v)->ds[(*v)->ds_p];
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
;e4vm_math.c:29: }
	pop	ix
	ret
;e4vm_math.c:32: void e4vm_math_plus (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_math_plus
; ---------------------------------
_e4vm_math_plus::
	call	___sdcc_enter_ix
;e4vm_math.c:34: (*v)->ds_p = (*v)->ds_p + 1;
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
	inc	de
	ld	a, d
	ld	(hl), e
	inc	hl
	ld	(hl), a
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
;e4vm_math.c:39: void e4vm_math_multiply (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_math_multiply
; ---------------------------------
_e4vm_math_multiply::
	call	___sdcc_enter_ix
;e4vm_math.c:41: (*v)->ds_p = (*v)->ds_p - 1;
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
;e4vm_math.c:42: (*v)->ds[(*v)->ds_p - 1] = (*v)->ds[(*v)->ds_p - 1] * (*v)->ds[(*v)->ds_p];
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
	ex	de,hl
	pop	bc
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;e4vm_math.c:43: }
	pop	ix
	ret
;e4vm_math.c:46: void e4vm_math_devide (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_math_devide
; ---------------------------------
_e4vm_math_devide::
	call	___sdcc_enter_ix
;e4vm_math.c:48: (*v)->ds_p = (*v)->ds_p - 1;
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
;e4vm_math.c:49: (*v)->ds[(*v)->ds_p - 1] = __DIVFS((*v)->ds[(*v)->ds_p - 1], (*v)->ds[(*v)->ds_p]);
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
	ex	de,hl
	pop	bc
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;e4vm_math.c:50: }
	pop	ix
	ret
;e4vm_math.c:53: void e4vm_math_mod (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_math_mod
; ---------------------------------
_e4vm_math_mod::
	call	___sdcc_enter_ix
;e4vm_math.c:55: (*v)->ds_p = (*v)->ds_p - 1;
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
;e4vm_math.c:56: (*v)->ds[(*v)->ds_p - 1] = __MODFS((*v)->ds[(*v)->ds_p - 1], (*v)->ds[(*v)->ds_p]);
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
	ex	de,hl
	pop	bc
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;e4vm_math.c:57: }
	pop	ix
	ret
;e4vm_math.c:60: void e4vm_math_inc (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_math_inc
; ---------------------------------
_e4vm_math_inc::
	call	___sdcc_enter_ix
;e4vm_math.c:62: (*v)->ds[(*v)->ds_p - 1] = (*v)->ds[(*v)->ds_p - 1] + 1;
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
;e4vm_math.c:63: }
	pop	ix
	ret
;e4vm_math.c:66: void e4vm_math_dec (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_math_dec
; ---------------------------------
_e4vm_math_dec::
	call	___sdcc_enter_ix
;e4vm_math.c:68: (*v)->ds[(*v)->ds_p - 1] = (*v)->ds[(*v)->ds_p - 1] - 1;
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
;e4vm_math.c:69: }
	pop	ix
	ret
;e4vm_math.c:72: void e4vm_math_add_core_words (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_math_add_core_words
; ---------------------------------
_e4vm_math_add_core_words::
	call	___sdcc_enter_ix
	ld	hl, #-70
	add	hl, sp
	ld	sp, hl
;e4vm_math.c:81: __MOVE((CHAR*)"-", _str__8, 2);
	ld	hl, #0
	add	hl, sp
	ld	c, l
	ld	b, h
	push	hl
	ld	de, #0x0002
	push	de
	ld	de, #___str_0
	push	de
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	hl
;e4vm_math.c:82: e4vm_utils_add_core_word(v, (void*)_str__8, e4vm_math_minus, 0);
	xor	a, a
	push	af
	inc	sp
	ld	bc, #_e4vm_math_minus
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
;e4vm_math.c:83: __MOVE((CHAR*)"+", _str__7, 2);
	ld	hl, #10
	add	hl, sp
	ld	c, l
	ld	b, h
	push	hl
	ld	de, #0x0002
	push	de
	ld	de, #___str_1
	push	de
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	hl
;e4vm_math.c:84: e4vm_utils_add_core_word(v, (void*)_str__7, e4vm_math_plus, 0);
	xor	a, a
	push	af
	inc	sp
	ld	bc, #_e4vm_math_plus
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
;e4vm_math.c:85: __MOVE((CHAR*)"*", _str__6, 2);
	ld	hl, #20
	add	hl, sp
	ld	c, l
	ld	b, h
	push	hl
	ld	de, #0x0002
	push	de
	ld	de, #___str_2
	push	de
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	hl
;e4vm_math.c:86: e4vm_utils_add_core_word(v, (void*)_str__6, e4vm_math_multiply, 0);
	xor	a, a
	push	af
	inc	sp
	ld	bc, #_e4vm_math_multiply
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
;e4vm_math.c:87: __MOVE((CHAR*)"/", _str__5, 2);
	ld	hl, #30
	add	hl, sp
	ld	c, l
	ld	b, h
	push	hl
	ld	de, #0x0002
	push	de
	ld	de, #___str_3
	push	de
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	hl
;e4vm_math.c:88: e4vm_utils_add_core_word(v, (void*)_str__5, e4vm_math_devide, 0);
	xor	a, a
	push	af
	inc	sp
	ld	bc, #_e4vm_math_devide
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
;e4vm_math.c:89: __MOVE((CHAR*)"mod", _str__4, 4);
	ld	hl, #40
	add	hl, sp
	ld	c, l
	ld	b, h
	push	hl
	ld	de, #0x0004
	push	de
	ld	de, #___str_4
	push	de
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	hl
;e4vm_math.c:90: e4vm_utils_add_core_word(v, (void*)_str__4, e4vm_math_mod, 0);
	xor	a, a
	push	af
	inc	sp
	ld	bc, #_e4vm_math_mod
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
;e4vm_math.c:91: __MOVE((CHAR*)"1+", _str__3, 3);
	ld	hl, #50
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
;e4vm_math.c:92: e4vm_utils_add_core_word(v, (void*)_str__3, e4vm_math_inc, 0);
	xor	a, a
	push	af
	inc	sp
	ld	bc, #_e4vm_math_inc
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
;e4vm_math.c:93: __MOVE((CHAR*)"1-", _str__2, 3);
	ld	hl, #60
	add	hl, sp
	ld	c, l
	ld	b, h
	push	hl
	ld	de, #0x0003
	push	de
	ld	de, #___str_6
	push	de
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	hl
;e4vm_math.c:94: e4vm_utils_add_core_word(v, (void*)_str__2, e4vm_math_dec, 0);
	xor	a, a
	push	af
	inc	sp
	ld	bc, #_e4vm_math_dec
	push	bc
	push	hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_core_word
;e4vm_math.c:95: }
	ld	sp,ix
	pop	ix
	ret
___str_0:
	.ascii "-"
	.db 0x00
___str_1:
	.ascii "+"
	.db 0x00
___str_2:
	.ascii "*"
	.db 0x00
___str_3:
	.ascii "/"
	.db 0x00
___str_4:
	.ascii "mod"
	.db 0x00
___str_5:
	.ascii "1+"
	.db 0x00
___str_6:
	.ascii "1-"
	.db 0x00
;e4vm_math.c:99: export void *e4vm_math__init (void)
;	---------------------------------
; Function e4vm_math__init
; ---------------------------------
_e4vm_math__init::
;e4vm_math.c:101: __DEFMOD;
	LD	HL,#. 
	LD (HL),#0xC9 
;e4vm_math.c:104: __IMPORT(e4vm_type__init);
	call	_e4vm_type__init
;e4vm_math.c:105: __IMPORT(e4vm_utils__init);
;e4vm_math.c:109: }
	jp  _e4vm_utils__init
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
