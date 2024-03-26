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
	.globl _e4vm_utils_read_word
	.globl _e4vm_utils_add_core_word
	.globl _e4vm_type__init
	.globl _SYSTEM_STRCMPCC
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
	call	___sdcc_enter_ix
	push	af
	dec	sp
;e4vm_comment.c:23: t = e4vm_utils_read_word(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_read_word
	pop	af
	ld	-3 (ix), l
;e4vm_comment.c:24: t2 = 1;
	ld	c, #0x01
;e4vm_comment.c:25: while (t && t2) {
	ld	a, 4 (ix)
	ld	-2 (ix), a
	ld	a, 5 (ix)
	ld	-1 (ix), a
00105$:
	ld	a, -3 (ix)
	or	a, a
	jr	Z,00108$
	ld	a, c
	or	a, a
	jr	Z,00108$
;e4vm_comment.c:26: if (__STRCMPCC((*v)->readed_word, (CHAR*)")", 2, (CHAR*)"e4vm_comment", -387) == 0) {
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x0551
	add	hl, de
	push	bc
	ld	de, #___str_0
	push	de
	push	hl
	call	_SYSTEM_STRCMPCC
	pop	af
	pop	af
	pop	bc
	ld	a, h
;e4vm_comment.c:27: t2 = 0;
	or	a,l
	jr	NZ,00102$
	ld	c,a
	jr	00105$
00102$:
;e4vm_comment.c:29: t = e4vm_utils_read_word(v);
	push	bc
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	push	hl
	call	_e4vm_utils_read_word
	pop	af
	pop	bc
	ld	-3 (ix), l
	jr	00105$
00108$:
;e4vm_comment.c:32: }
	ld	sp, ix
	pop	ix
	ret
___str_0:
	.ascii ")"
	.db 0x00
;e4vm_comment.c:35: void e4vm_comment_comment_line (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_comment_comment_line
; ---------------------------------
_e4vm_comment_comment_line::
	call	___sdcc_enter_ix
	push	af
	dec	sp
;e4vm_comment.c:38: t = e4vm_utils_read_word(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_read_word
	pop	af
	ld	-3 (ix), l
;e4vm_comment.c:39: t2 = 1;
	ld	c, #0x01
;e4vm_comment.c:40: while (t && t2) {
	ld	a, 4 (ix)
	ld	-2 (ix), a
	ld	a, 5 (ix)
	ld	-1 (ix), a
00105$:
	ld	a, -3 (ix)
	or	a, a
	jr	Z,00108$
	ld	a, c
	or	a, a
	jr	Z,00108$
;e4vm_comment.c:41: if (__STRCMPCC((*v)->readed_word, (CHAR*)"\x0d", 2, (CHAR*)"e4vm_comment", -710) == 0) {
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x0551
	add	hl, de
	push	bc
	ld	de, #___str_1
	push	de
	push	hl
	call	_SYSTEM_STRCMPCC
	pop	af
	pop	af
	pop	bc
	ld	a, h
;e4vm_comment.c:42: t2 = 0;
	or	a,l
	jr	NZ,00102$
	ld	c,a
	jr	00105$
00102$:
;e4vm_comment.c:44: t = e4vm_utils_read_word(v);
	push	bc
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	push	hl
	call	_e4vm_utils_read_word
	pop	af
	pop	bc
	ld	-3 (ix), l
	jr	00105$
00108$:
;e4vm_comment.c:47: }
	ld	sp, ix
	pop	ix
	ret
___str_1:
	.db 0x0d
	.db 0x00
;e4vm_comment.c:50: void e4vm_comment_add_core_words (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_comment_add_core_words
; ---------------------------------
_e4vm_comment_add_core_words::
	call	___sdcc_enter_ix
	ld	hl, #-20
	add	hl, sp
	ld	sp, hl
;e4vm_comment.c:54: __MOVE((CHAR*)"(", _str__3, 2);
	ld	hl, #0
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
;e4vm_comment.c:55: e4vm_utils_add_core_word(v, (void*)_str__3, e4vm_comment_comment, 0);
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
;e4vm_comment.c:56: __MOVE((CHAR*)"//", _str__2, 3);
	ld	hl, #10
	add	hl, sp
	ld	c, l
	ld	b, h
	push	hl
	ld	de, #0x0003
	push	de
	ld	de, #___str_3
	push	de
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	hl
;e4vm_comment.c:57: e4vm_utils_add_core_word(v, (void*)_str__2, e4vm_comment_comment_line, 0);
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
;e4vm_comment.c:58: }
	ld	sp,ix
	pop	ix
	ret
___str_2:
	.ascii "("
	.db 0x00
___str_3:
	.ascii "//"
	.db 0x00
;e4vm_comment.c:62: export void *e4vm_comment__init (void)
;	---------------------------------
; Function e4vm_comment__init
; ---------------------------------
_e4vm_comment__init::
;e4vm_comment.c:64: __DEFMOD;
	LD	HL,#. 
	LD (HL),#0xC9 
;e4vm_comment.c:67: __IMPORT(e4vm_type__init);
	call	_e4vm_type__init
;e4vm_comment.c:68: __IMPORT(e4vm_utils__init);
;e4vm_comment.c:72: }
	jp  _e4vm_utils__init
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
