;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.3 #11378 (MINGW32)
;--------------------------------------------------------
	.module e4vm_comment
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _e4vm_comment__init
	.globl _e4vm_utils__init
	.globl _e4vm_utils_add_core_word
	.globl _e4vm_type__init
	.globl _memcpy
	.globl _e4vm_comment_comment
	.globl _e4vm_comment_comment_line
	.globl _e4vm_comment_add_core_words
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
;e4vm_comment.c:20: void e4vm_comment_comment (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_comment_comment
; ---------------------------------
_e4vm_comment_comment::
;e4vm_comment.c:22: }
	ret
;e4vm_comment.c:25: void e4vm_comment_comment_line (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_comment_comment_line
; ---------------------------------
_e4vm_comment_comment_line::
;e4vm_comment.c:27: }
	ret
;e4vm_comment.c:30: void e4vm_comment_add_core_words (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_comment_add_core_words
; ---------------------------------
_e4vm_comment_add_core_words::
	call	___sdcc_enter_ix
	ld	hl, #-20
	add	hl, sp
	ld	sp, hl
;e4vm_comment.c:34: __MOVE((CHAR*)"(", _str__3, 2);
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
;e4vm_comment.c:35: e4vm_utils_add_core_word(v, (void*)_str__3, e4vm_comment_comment, 0);
	xor	a, a
	push	af
	inc	sp
	ld	bc, #_e4vm_comment_comment
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
;e4vm_comment.c:36: __MOVE((CHAR*)"\\\\", _str__2, 3);
	ld	hl, #10
	add	hl, sp
	ld	c, l
	ld	b, h
	push	hl
	ld	de, #0x0003
	push	de
	ld	de, #___str_1
	push	de
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	hl
;e4vm_comment.c:37: e4vm_utils_add_core_word(v, (void*)_str__2, e4vm_comment_comment_line, 0);
	xor	a, a
	push	af
	inc	sp
	ld	bc, #_e4vm_comment_comment_line
	push	bc
	push	hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_core_word
;e4vm_comment.c:38: }
	ld	sp,ix
	pop	ix
	ret
___str_0:
	.ascii "("
	.db 0x00
___str_1:
	.db 0x5c
	.db 0x5c
	.db 0x00
;e4vm_comment.c:42: export void *e4vm_comment__init (void)
;	---------------------------------
; Function e4vm_comment__init
; ---------------------------------
_e4vm_comment__init::
;e4vm_comment.c:44: __DEFMOD;
	LD	HL,#. 
	LD (HL),#0xC9 
;e4vm_comment.c:47: __IMPORT(e4vm_type__init);
	call	_e4vm_type__init
;e4vm_comment.c:48: __IMPORT(e4vm_utils__init);
;e4vm_comment.c:52: }
	jp  _e4vm_utils__init
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
