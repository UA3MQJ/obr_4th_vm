;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.3 #11378 (MINGW32)
;--------------------------------------------------------
	.module e4vm_core
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _e4vm_core__init
	.globl _e4vm_utils__init
	.globl _e4vm_utils_add_core_word
	.globl _e4vm_type__init
	.globl _memcpy
	.globl _e4vm_core_do_nop
	.globl _e4vm_core_do_list
	.globl _e4vm_core_do_next
	.globl _e4vm_core_do_exit
	.globl _e4vm_core_add_core_words
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
;e4vm_core.c:22: void e4vm_core_do_nop (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_core_do_nop
; ---------------------------------
_e4vm_core_do_nop::
;e4vm_core.c:24: }
	ret
;e4vm_core.c:27: void e4vm_core_do_list (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_core_do_list
; ---------------------------------
_e4vm_core_do_list::
	call	___sdcc_enter_ix
	push	af
;e4vm_core.c:30: (*v)->rs[(*v)->rs_p] = (*v)->ip;
	ld	a, 4 (ix)
	ld	-2 (ix), a
	ld	a, 5 (ix)
	ld	-1 (ix), a
	pop	hl
	push	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #0x0004
	add	hl, bc
	ex	de, hl
	ld	l, c
	ld	h, b
	push	bc
	ld	bc, #0x0084
	add	hl, bc
	pop	bc
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	add	hl, hl
	add	hl, de
	ex	de, hl
	ld	l, c
	ld	h, b
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, c
	ld	(de), a
	inc	de
	ld	a, b
	ld	(de), a
;e4vm_core.c:31: (*v)->rs_p = (*v)->rs_p + 1;
	pop	hl
	push	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #0x0084
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
;e4vm_core.c:30: (*v)->rs[(*v)->rs_p] = (*v)->ip;
	pop	hl
	push	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
;e4vm_core.c:32: (*v)->ip = (*v)->wp + 1;
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	inc	de
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;e4vm_core.c:33: }
	pop	af
	pop	ix
	ret
;e4vm_core.c:36: void e4vm_core_do_next (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_core_do_next
; ---------------------------------
_e4vm_core_do_next::
	call	___sdcc_enter_ix
	push	af
;e4vm_core.c:39: while (!((*v)->ip == 0)) {
	ld	c, 4 (ix)
	ld	b, 5 (ix)
00101$:
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, e
	ld	h, d
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l,a
	or	a,h
	jr	Z,00104$
;e4vm_core.c:40: (*v)->wp = (*v)->mem[(*v)->ip];
	ld	a, e
	add	a, #0x02
	ld	-2 (ix), a
	ld	a, d
	adc	a, #0x00
	ld	-1 (ix), a
	ld	a, e
	add	a, #0x8a
	ld	e, a
	jr	NC,00116$
	inc	d
00116$:
	add	hl, hl
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	pop	hl
	push	hl
	ld	(hl), e
	inc	hl
	ld	(hl), d
;e4vm_core.c:39: while (!((*v)->ip == 0)) {
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
;e4vm_core.c:41: (*v)->ip = (*v)->ip + 1;
	ld	l, e
	ld	h, d
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	inc	hl
	ex	(sp), hl
	ld	a, -2 (ix)
	ld	(de), a
	inc	de
	ld	a, -1 (ix)
	ld	(de), a
;e4vm_core.c:42: word_index = (*v)->mem[(*v)->wp];
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x008a
	add	hl, de
	ex	(sp), hl
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	add	hl, hl
	ld	a, l
	add	a, -2 (ix)
	ld	l, a
	ld	a, h
	adc	a, -1 (ix)
	ld	h, a
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
;e4vm_core.c:43: (*(*v)->words[word_index].proc)(v);
	ld	a, e
	add	a, #0xcd
	ld	e, a
	jr	NC,00117$
	inc	d
00117$:
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	ld	de, #0x000c
	add	hl, de
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	push	bc
	push	bc
	call	___sdcc_call_hl
	pop	af
	pop	bc
	jp	00101$
00104$:
;e4vm_core.c:45: }
	pop	af
	pop	ix
	ret
;e4vm_core.c:48: void e4vm_core_do_exit (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_core_do_exit
; ---------------------------------
_e4vm_core_do_exit::
	call	___sdcc_enter_ix
;e4vm_core.c:50: (*v)->rs_p = (*v)->rs_p - 1;
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x0084
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	dec	hl
	dec	de
	ld	(hl), e
	inc	hl
	ld	(hl), d
	ld	l, c
	ld	h, b
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
;e4vm_core.c:51: (*v)->ip = (*v)->rs[(*v)->rs_p];
	ld	hl, #0x0004
	add	hl, bc
	ex	de, hl
	ld	l, c
	ld	h, b
	push	bc
	ld	bc, #0x0084
	add	hl, bc
	pop	bc
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
;e4vm_core.c:52: }
	pop	ix
	ret
;e4vm_core.c:55: void e4vm_core_add_core_words (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_core_add_core_words
; ---------------------------------
_e4vm_core_add_core_words::
	call	___sdcc_enter_ix
	ld	hl, #-40
	add	hl, sp
	ld	sp, hl
;e4vm_core.c:61: __MOVE((CHAR*)"nop", _str__5, 4);
	ld	hl, #0
	add	hl, sp
	ld	c, l
	ld	b, h
	push	hl
	ld	de, #0x0004
	push	de
	ld	de, #___str_0
	push	de
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	hl
;e4vm_core.c:62: e4vm_utils_add_core_word(v, (void*)_str__5, e4vm_core_do_nop, 0);
	xor	a, a
	push	af
	inc	sp
	ld	bc, #_e4vm_core_do_nop
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
;e4vm_core.c:63: __MOVE((CHAR*)"dolist", _str__4, 7);
	ld	hl, #10
	add	hl, sp
	ld	c, l
	ld	b, h
	push	hl
	ld	de, #0x0007
	push	de
	ld	de, #___str_1
	push	de
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	hl
;e4vm_core.c:64: e4vm_utils_add_core_word(v, (void*)_str__4, e4vm_core_do_list, 0);
	xor	a, a
	push	af
	inc	sp
	ld	bc, #_e4vm_core_do_list
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
;e4vm_core.c:65: __MOVE((CHAR*)"next", _str__3, 5);
	ld	hl, #20
	add	hl, sp
	ld	c, l
	ld	b, h
	push	hl
	ld	de, #0x0005
	push	de
	ld	de, #___str_2
	push	de
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	hl
;e4vm_core.c:66: e4vm_utils_add_core_word(v, (void*)_str__3, e4vm_core_do_next, 0);
	xor	a, a
	push	af
	inc	sp
	ld	bc, #_e4vm_core_do_next
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
;e4vm_core.c:67: __MOVE((CHAR*)"exit", _str__2, 5);
	ld	hl, #30
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
;e4vm_core.c:68: e4vm_utils_add_core_word(v, (void*)_str__2, e4vm_core_do_exit, 0);
	xor	a, a
	push	af
	inc	sp
	ld	bc, #_e4vm_core_do_exit
	push	bc
	push	hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_core_word
;e4vm_core.c:69: }
	ld	sp,ix
	pop	ix
	ret
___str_0:
	.ascii "nop"
	.db 0x00
___str_1:
	.ascii "dolist"
	.db 0x00
___str_2:
	.ascii "next"
	.db 0x00
___str_3:
	.ascii "exit"
	.db 0x00
;e4vm_core.c:73: export void *e4vm_core__init (void)
;	---------------------------------
; Function e4vm_core__init
; ---------------------------------
_e4vm_core__init::
;e4vm_core.c:75: __DEFMOD;
	LD	HL,#. 
	LD (HL),#0xC9 
;e4vm_core.c:78: __IMPORT(e4vm_type__init);
	call	_e4vm_type__init
;e4vm_core.c:79: __IMPORT(e4vm_utils__init);
;e4vm_core.c:83: }
	jp  _e4vm_utils__init
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
