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
;e4vm_mem.c:24: }
	ret
;e4vm_mem.c:27: void e4vm_mem_read_mem (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_mem_read_mem
; ---------------------------------
_e4vm_mem_read_mem::
;e4vm_mem.c:29: }
	ret
;e4vm_mem.c:32: void e4vm_mem_variable (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_mem_variable
; ---------------------------------
_e4vm_mem_variable::
;e4vm_mem.c:34: }
	ret
;e4vm_mem.c:37: void e4vm_mem_constant (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_mem_constant
; ---------------------------------
_e4vm_mem_constant::
;e4vm_mem.c:39: }
	ret
;e4vm_mem.c:42: void e4vm_mem_add_core_words (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_mem_add_core_words
; ---------------------------------
_e4vm_mem_add_core_words::
	call	___sdcc_enter_ix
	ld	hl, #-40
	add	hl, sp
	ld	sp, hl
;e4vm_mem.c:48: __MOVE((CHAR*)"!", _str__5, 2);
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
;e4vm_mem.c:49: e4vm_utils_add_core_word(v, (void*)_str__5, e4vm_mem_write_mem, 0);
	xor	a, a
	push	af
	inc	sp
	ld	bc, #_e4vm_mem_write_mem
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
;e4vm_mem.c:50: __MOVE((CHAR*)"@", _str__4, 2);
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
;e4vm_mem.c:51: e4vm_utils_add_core_word(v, (void*)_str__4, e4vm_mem_read_mem, 0);
	xor	a, a
	push	af
	inc	sp
	ld	bc, #_e4vm_mem_read_mem
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
;e4vm_mem.c:52: __MOVE((CHAR*)"variable", _str__3, 9);
	ld	hl, #20
	add	hl, sp
	ld	c, l
	ld	b, h
	push	hl
	ld	de, #0x0009
	push	de
	ld	de, #___str_2
	push	de
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	hl
;e4vm_mem.c:53: e4vm_utils_add_core_word(v, (void*)_str__3, e4vm_mem_variable, 0);
	xor	a, a
	push	af
	inc	sp
	ld	bc, #_e4vm_mem_variable
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
;e4vm_mem.c:54: __MOVE((CHAR*)"constant", _str__2, 9);
	ld	hl, #30
	add	hl, sp
	ld	c, l
	ld	b, h
	push	hl
	ld	de, #0x0009
	push	de
	ld	de, #___str_3
	push	de
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	hl
;e4vm_mem.c:55: e4vm_utils_add_core_word(v, (void*)_str__2, e4vm_mem_constant, 0);
	xor	a, a
	push	af
	inc	sp
	ld	bc, #_e4vm_mem_constant
	push	bc
	push	hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_core_word
;e4vm_mem.c:56: }
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
;e4vm_mem.c:60: export void *e4vm_mem__init (void)
;	---------------------------------
; Function e4vm_mem__init
; ---------------------------------
_e4vm_mem__init::
;e4vm_mem.c:62: __DEFMOD;
	LD	HL,#. 
	LD (HL),#0xC9 
;e4vm_mem.c:65: __IMPORT(e4vm_type__init);
	call	_e4vm_type__init
;e4vm_mem.c:66: __IMPORT(e4vm_utils__init);
;e4vm_mem.c:70: }
	jp  _e4vm_utils__init
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
