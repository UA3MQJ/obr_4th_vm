;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.3 #11378 (MINGW32)
;--------------------------------------------------------
	.module e4vm_stack
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _e4vm_stack__init
	.globl _e4vm_utils__init
	.globl _e4vm_utils_add_core_word
	.globl _e4vm_type__init
	.globl _memcpy
	.globl _e4vm_stack_drop
	.globl _e4vm_stack_swap
	.globl _e4vm_stack_dup
	.globl _e4vm_stack_over
	.globl _e4vm_stack_rot
	.globl _e4vm_stack_nrot
	.globl _e4vm_stack_add_core_words
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
;e4vm_stack.c:24: void e4vm_stack_drop (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_stack_drop
; ---------------------------------
_e4vm_stack_drop::
	call	___sdcc_enter_ix
;e4vm_stack.c:26: (*v)->ds_p = (*v)->ds_p - 1;
	ld	l, 4 (ix)
	ld	h, 5 (ix)
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
;e4vm_stack.c:27: }
	pop	ix
	ret
;e4vm_stack.c:30: void e4vm_stack_swap (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_stack_swap
; ---------------------------------
_e4vm_stack_swap::
	call	___sdcc_enter_ix
	push	af
	push	af
	push	af
;e4vm_stack.c:33: T = (*v)->ds[(*v)->ds_p - 1];
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x0044
	add	hl, de
	ex	(sp), hl
	ex	de,hl
	ld	de, #0x0086
	add	hl, de
	ld	e, (hl)
	ld	a, e
	dec	a
	add	a, a
	add	a, -6 (ix)
	ld	-4 (ix), a
	ld	a, #0x00
	adc	a, -5 (ix)
	ld	-3 (ix), a
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
;e4vm_stack.c:34: (*v)->ds[(*v)->ds_p - 1] = (*v)->ds[(*v)->ds_p - 2];
	ld	a, e
	dec	a
	dec	a
	add	a, a
	add	a, -6 (ix)
	ld	l, a
	ld	a, #0x00
	adc	a, -5 (ix)
	ld	h, a
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
;e4vm_stack.c:35: (*v)->ds[(*v)->ds_p - 2] = T;
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
	dec	a
	dec	a
	add	a, a
	ld	l, a
	ld	h, #0x00
	add	hl, de
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
;e4vm_stack.c:36: }
	ld	sp, ix
	pop	ix
	ret
;e4vm_stack.c:39: void e4vm_stack_dup (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_stack_dup
; ---------------------------------
_e4vm_stack_dup::
	call	___sdcc_enter_ix
;e4vm_stack.c:41: (*v)->ds_p = (*v)->ds_p + 1;
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
;e4vm_stack.c:42: (*v)->ds[(*v)->ds_p - 1] = (*v)->ds[(*v)->ds_p - 2];
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
	ld	l, (hl)
	ld	a, l
	dec	a
	add	a, a
	add	a, e
	ld	c, a
	ld	a, #0x00
	adc	a, d
	ld	b, a
	dec	l
	dec	l
	sla	l
	ld	h, #0x00
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;e4vm_stack.c:43: }
	pop	ix
	ret
;e4vm_stack.c:46: void e4vm_stack_over (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_stack_over
; ---------------------------------
_e4vm_stack_over::
	call	___sdcc_enter_ix
;e4vm_stack.c:48: (*v)->ds_p = (*v)->ds_p + 1;
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
;e4vm_stack.c:49: (*v)->ds[(*v)->ds_p - 1] = (*v)->ds[(*v)->ds_p - 3];
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
	ld	l, (hl)
	ld	a, l
	dec	a
	add	a, a
	add	a, e
	ld	c, a
	ld	a, #0x00
	adc	a, d
	ld	b, a
	ld	a, l
	add	a, #0xfd
	add	a, a
	ld	l, a
	ld	h, #0x00
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;e4vm_stack.c:50: }
	pop	ix
	ret
;e4vm_stack.c:53: void e4vm_stack_rot (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_stack_rot
; ---------------------------------
_e4vm_stack_rot::
	call	___sdcc_enter_ix
	push	af
	push	af
	push	af
;e4vm_stack.c:56: T = (*v)->ds[(*v)->ds_p - 3];
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x0044
	add	hl, de
	ex	(sp), hl
	ex	de,hl
	ld	de, #0x0086
	add	hl, de
	ld	e, (hl)
	ld	a, e
	add	a, #0xfd
	add	a, a
	add	a, -6 (ix)
	ld	-4 (ix), a
	ld	a, #0x00
	adc	a, -5 (ix)
	ld	-3 (ix), a
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
;e4vm_stack.c:57: (*v)->ds[(*v)->ds_p - 3] = (*v)->ds[(*v)->ds_p - 2];
	ld	a, e
	dec	a
	dec	a
	add	a, a
	add	a, -6 (ix)
	ld	l, a
	ld	a, #0x00
	adc	a, -5 (ix)
	ld	h, a
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
;e4vm_stack.c:58: (*v)->ds[(*v)->ds_p - 2] = (*v)->ds[(*v)->ds_p - 1];
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
	dec	l
	sla	l
	ld	h, #0x00
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
;e4vm_stack.c:59: (*v)->ds[(*v)->ds_p - 1] = T;
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
	dec	a
	add	a, a
	ld	l, a
	ld	h, #0x00
	add	hl, de
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
;e4vm_stack.c:60: }
	ld	sp, ix
	pop	ix
	ret
;e4vm_stack.c:63: void e4vm_stack_nrot (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_stack_nrot
; ---------------------------------
_e4vm_stack_nrot::
	call	___sdcc_enter_ix
	push	af
	push	af
	push	af
;e4vm_stack.c:66: T = (*v)->ds[(*v)->ds_p - 1];
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x0044
	add	hl, de
	ex	(sp), hl
	ex	de,hl
	ld	de, #0x0086
	add	hl, de
	ld	e, (hl)
	ld	a, e
	dec	a
	add	a, a
	add	a, -6 (ix)
	ld	-4 (ix), a
	ld	a, #0x00
	adc	a, -5 (ix)
	ld	-3 (ix), a
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
;e4vm_stack.c:67: (*v)->ds[(*v)->ds_p - 1] = (*v)->ds[(*v)->ds_p - 2];
	ld	a, e
	dec	a
	dec	a
	add	a, a
	add	a, -6 (ix)
	ld	l, a
	ld	a, #0x00
	adc	a, -5 (ix)
	ld	h, a
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
;e4vm_stack.c:68: (*v)->ds[(*v)->ds_p - 2] = (*v)->ds[(*v)->ds_p - 3];
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
	add	a, #0xfd
	add	a, a
	ld	l, a
	ld	h, #0x00
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
;e4vm_stack.c:69: (*v)->ds[(*v)->ds_p - 3] = T;
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
	add	a, #0xfd
	add	a, a
	ld	l, a
	ld	h, #0x00
	add	hl, de
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
;e4vm_stack.c:70: }
	ld	sp, ix
	pop	ix
	ret
;e4vm_stack.c:73: void e4vm_stack_add_core_words (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_stack_add_core_words
; ---------------------------------
_e4vm_stack_add_core_words::
	call	___sdcc_enter_ix
	ld	hl, #-48
	add	hl, sp
	ld	sp, hl
;e4vm_stack.c:81: __MOVE((CHAR*)"drop", _str__7, 5);
	ld	hl, #0
	add	hl, sp
	ld	c, l
	ld	b, h
	push	hl
	ld	de, #0x0005
	push	de
	ld	de, #___str_0
	push	de
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	hl
;e4vm_stack.c:82: e4vm_utils_add_core_word(v, (void*)_str__7, e4vm_stack_drop, 0);
	xor	a, a
	push	af
	inc	sp
	ld	bc, #_e4vm_stack_drop
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
;e4vm_stack.c:83: __MOVE((CHAR*)"swap", _str__6, 5);
	ld	hl, #8
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
;e4vm_stack.c:84: e4vm_utils_add_core_word(v, (void*)_str__6, e4vm_stack_swap, 0);
	xor	a, a
	push	af
	inc	sp
	ld	bc, #_e4vm_stack_swap
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
;e4vm_stack.c:85: __MOVE((CHAR*)"dup", _str__5, 4);
	ld	hl, #16
	add	hl, sp
	ld	c, l
	ld	b, h
	push	hl
	ld	de, #0x0004
	push	de
	ld	de, #___str_2
	push	de
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	hl
;e4vm_stack.c:86: e4vm_utils_add_core_word(v, (void*)_str__5, e4vm_stack_dup, 0);
	xor	a, a
	push	af
	inc	sp
	ld	bc, #_e4vm_stack_dup
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
;e4vm_stack.c:87: __MOVE((CHAR*)"over", _str__4, 5);
	ld	hl, #24
	add	hl, sp
	ld	c, l
	ld	b, h
	push	hl
	ld	de, #0x0005
	push	de
	ld	de, #___str_3
	push	de
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	hl
;e4vm_stack.c:88: e4vm_utils_add_core_word(v, (void*)_str__4, e4vm_stack_over, 0);
	xor	a, a
	push	af
	inc	sp
	ld	bc, #_e4vm_stack_over
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
;e4vm_stack.c:89: __MOVE((CHAR*)"rot", _str__3, 4);
	ld	hl, #32
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
;e4vm_stack.c:90: e4vm_utils_add_core_word(v, (void*)_str__3, e4vm_stack_rot, 0);
	xor	a, a
	push	af
	inc	sp
	ld	bc, #_e4vm_stack_rot
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
;e4vm_stack.c:91: __MOVE((CHAR*)"nrot", _str__2, 5);
	ld	hl, #40
	add	hl, sp
	ld	c, l
	ld	b, h
	push	hl
	ld	de, #0x0005
	push	de
	ld	de, #___str_5
	push	de
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	hl
;e4vm_stack.c:92: e4vm_utils_add_core_word(v, (void*)_str__2, e4vm_stack_nrot, 0);
	xor	a, a
	push	af
	inc	sp
	ld	bc, #_e4vm_stack_nrot
	push	bc
	push	hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_core_word
;e4vm_stack.c:93: }
	ld	sp,ix
	pop	ix
	ret
___str_0:
	.ascii "drop"
	.db 0x00
___str_1:
	.ascii "swap"
	.db 0x00
___str_2:
	.ascii "dup"
	.db 0x00
___str_3:
	.ascii "over"
	.db 0x00
___str_4:
	.ascii "rot"
	.db 0x00
___str_5:
	.ascii "nrot"
	.db 0x00
;e4vm_stack.c:97: export void *e4vm_stack__init (void)
;	---------------------------------
; Function e4vm_stack__init
; ---------------------------------
_e4vm_stack__init::
;e4vm_stack.c:99: __DEFMOD;
	LD	HL,#. 
	LD (HL),#0xC9 
;e4vm_stack.c:102: __IMPORT(e4vm_type__init);
	call	_e4vm_type__init
;e4vm_stack.c:103: __IMPORT(e4vm_utils__init);
;e4vm_stack.c:107: }
	jp  _e4vm_utils__init
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
