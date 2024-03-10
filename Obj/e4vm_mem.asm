;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.3 #11378 (MINGW32)
;--------------------------------------------------------
	.module e4vm_mem
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _e4vm_mem__init
	.globl _e4vm_utils__init
	.globl _e4vm_utils_add_core_word
	.globl _e4vm_type__init
	.globl _memcpy
	.globl _e4vm_mem_write_mem
	.globl _e4vm_mem_read_mem
	.globl _e4vm_mem_variable
	.globl _e4vm_mem_constant
	.globl _e4vm_mem_add_core_words
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
;e4vm_mem.c:22: void e4vm_mem_write_mem (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_mem_write_mem
; ---------------------------------
_e4vm_mem_write_mem::
	call	___sdcc_enter_ix
	push	af
	push	af
;e4vm_mem.c:24: (*v)->mem[(*v)->ds[(*v)->ds_p - 1]] = (*v)->ds[(*v)->ds_p - 2];
	ld	a, 4 (ix)
	ld	-4 (ix), a
	ld	a, 5 (ix)
	ld	-3 (ix), a
	pop	hl
	push	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #0x008a
	add	hl, bc
	ex	de, hl
	ld	hl, #0x0044
	add	hl, bc
	ld	-2 (ix), l
	ld	-1 (ix), h
	ld	l, c
	ld	h, b
	ld	bc, #0x0086
	add	hl, bc
	ld	c, (hl)
	ld	a, c
	dec	a
	add	a, a
	add	a, -2 (ix)
	ld	l, a
	ld	a, #0x00
	adc	a, -1 (ix)
	ld	h, a
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	add	hl, hl
	add	hl, de
	ex	de, hl
	ld	a, c
	dec	a
	dec	a
	add	a, a
	add	a, -2 (ix)
	ld	l, a
	ld	a, #0x00
	adc	a, -1 (ix)
	ld	h, a
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, c
	ld	(de), a
	inc	de
	ld	a, b
	ld	(de), a
;e4vm_mem.c:25: (*v)->ds_p = (*v)->ds_p - 2;
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
	dec	bc
	ld	(hl), c
	inc	hl
	ld	(hl), b
;e4vm_mem.c:26: }
	ld	sp, ix
	pop	ix
	ret
;e4vm_mem.c:29: void e4vm_mem_read_mem (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_mem_read_mem
; ---------------------------------
_e4vm_mem_read_mem::
	call	___sdcc_enter_ix
;e4vm_mem.c:31: (*v)->ds[(*v)->ds_p - 1] = (*v)->mem[(*v)->ds[(*v)->ds_p - 1]];
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x0044
	add	hl, de
	ld	c, l
	ld	b, h
	ld	l, e
	ld	h, d
	push	bc
	ld	bc, #0x0086
	add	hl, bc
	pop	bc
	ld	a, (hl)
	dec	a
	add	a, a
	add	a, c
	ld	c, a
	ld	a, #0x00
	adc	a, b
	ld	b, a
	ld	hl, #0x008a
	add	hl, de
	ex	de, hl
	ld	l, c
	ld	h, b
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	add	hl, hl
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;e4vm_mem.c:32: }
	pop	ix
	ret
;e4vm_mem.c:35: void e4vm_mem_variable (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_mem_variable
; ---------------------------------
_e4vm_mem_variable::
;e4vm_mem.c:37: }
	pop	ix
	jp	___sdcc_enter_ix
;e4vm_mem.c:40: void e4vm_mem_constant (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_mem_constant
; ---------------------------------
_e4vm_mem_constant::
;e4vm_mem.c:42: }
	pop	ix
	jp	___sdcc_enter_ix
;e4vm_mem.c:45: void e4vm_mem_add_core_words (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_mem_add_core_words
; ---------------------------------
_e4vm_mem_add_core_words::
	call	___sdcc_enter_ix
	ld	hl, #-40
	add	hl, sp
	ld	sp, hl
;e4vm_mem.c:51: __MOVE((CHAR*)"!", _str__5, 2);
	ld	hl, #0
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0002
	push	hl
	ld	hl, #___str_0
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	de
;e4vm_mem.c:52: e4vm_utils_add_core_word(v, (void*)_str__5, e4vm_mem_write_mem, 0);
	xor	a, a
	push	af
	inc	sp
	ld	hl, #_e4vm_mem_write_mem
	push	hl
	push	de
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_core_word
	pop	af
	pop	af
	pop	af
	inc	sp
;e4vm_mem.c:53: __MOVE((CHAR*)"@", _str__4, 2);
	ld	hl, #10
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0002
	push	hl
	ld	hl, #___str_1
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	de
;e4vm_mem.c:54: e4vm_utils_add_core_word(v, (void*)_str__4, e4vm_mem_read_mem, 0);
	xor	a, a
	push	af
	inc	sp
	ld	hl, #_e4vm_mem_read_mem
	push	hl
	push	de
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_core_word
	pop	af
	pop	af
	pop	af
	inc	sp
;e4vm_mem.c:55: __MOVE((CHAR*)"variable", _str__3, 9);
	ld	hl, #20
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0009
	push	hl
	ld	hl, #___str_2
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	de
;e4vm_mem.c:56: e4vm_utils_add_core_word(v, (void*)_str__3, e4vm_mem_variable, 0);
	xor	a, a
	push	af
	inc	sp
	ld	hl, #_e4vm_mem_variable
	push	hl
	push	de
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_core_word
	pop	af
	pop	af
	pop	af
	inc	sp
;e4vm_mem.c:57: __MOVE((CHAR*)"constant", _str__2, 9);
	ld	hl, #30
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0009
	push	hl
	ld	hl, #___str_3
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	de
;e4vm_mem.c:58: e4vm_utils_add_core_word(v, (void*)_str__2, e4vm_mem_constant, 0);
	xor	a, a
	push	af
	inc	sp
	ld	hl, #_e4vm_mem_constant
	push	hl
	push	de
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_core_word
;e4vm_mem.c:59: }
	ld	sp,ix
	pop	ix
	ret
___str_0:
	.ascii "!"
	.db 0x00
___str_1:
	.ascii "@"
	.db 0x00
___str_2:
	.ascii "variable"
	.db 0x00
___str_3:
	.ascii "constant"
	.db 0x00
;e4vm_mem.c:63: export void *e4vm_mem__init (void)
;	---------------------------------
; Function e4vm_mem__init
; ---------------------------------
_e4vm_mem__init::
;e4vm_mem.c:65: __DEFMOD;
	LD	HL,#. 
	LD (HL),#0xC9 
;e4vm_mem.c:68: __IMPORT(e4vm_type__init);
	call	_e4vm_type__init
;e4vm_mem.c:69: __IMPORT(e4vm_utils__init);
;e4vm_mem.c:73: }
	jp  _e4vm_utils__init
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
