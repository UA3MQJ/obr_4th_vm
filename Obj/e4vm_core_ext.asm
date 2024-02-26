;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.3 #11378 (MINGW32)
;--------------------------------------------------------
	.module e4vm_core_ext
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _e4vm_core_ext__init
	.globl _e4vm_utils__init
	.globl _e4vm_utils_stack_ds_push
	.globl _e4vm_utils_add_op
	.globl _e4vm_type__init
	.globl _e4vm_core_ext_quit
	.globl _e4vm_core_ext_do_lit
	.globl _e4vm_core_ext_get_here_addr
	.globl _e4vm_core_ext_comma
	.globl _e4vm_core_ext_branch
	.globl _e4vm_core_ext_zbranch
	.globl _e4vm_core_ext_lbrac
	.globl _e4vm_core_ext_rbrac
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
;e4vm_core_ext.c:25: void e4vm_core_ext_quit (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_core_ext_quit
; ---------------------------------
_e4vm_core_ext_quit::
;e4vm_core_ext.c:27: }
	ret
;e4vm_core_ext.c:30: void e4vm_core_ext_do_lit (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_core_ext_do_lit
; ---------------------------------
_e4vm_core_ext_do_lit::
	call	___sdcc_enter_ix
;e4vm_core_ext.c:32: (*v)->ip = (*v)->ip + 1;
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	l, c
	ld	h, b
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	dec	hl
	inc	de
	ld	a, d
	ld	(hl), e
	inc	hl
	ld	(hl), a
;e4vm_core_ext.c:33: e4vm_utils_stack_ds_push(v, (*v)->mem[(*v)->ip]);
	ld	l, c
	ld	h, b
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	add	a, #0x8a
	ld	e, a
	ld	a, h
	adc	a, #0x00
	ld	d, a
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	add	hl, hl
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	push	de
	push	bc
	call	_e4vm_utils_stack_ds_push
	pop	af
	pop	af
;e4vm_core_ext.c:34: }
	pop	ix
	ret
;e4vm_core_ext.c:37: void e4vm_core_ext_get_here_addr (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_core_ext_get_here_addr
; ---------------------------------
_e4vm_core_ext_get_here_addr::
	call	___sdcc_enter_ix
;e4vm_core_ext.c:39: e4vm_utils_stack_ds_push(v, (*v)->hereP);
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, e
	ld	de, #0x0088
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	push	de
	push	bc
	call	_e4vm_utils_stack_ds_push
	pop	af
	pop	af
;e4vm_core_ext.c:40: }
	pop	ix
	ret
;e4vm_core_ext.c:43: void e4vm_core_ext_comma (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_core_ext_comma
; ---------------------------------
_e4vm_core_ext_comma::
	call	___sdcc_enter_ix
;e4vm_core_ext.c:45: (*v)->ds_p = (*v)->ds_p - 1;
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
;e4vm_core_ext.c:46: e4vm_utils_add_op(v, (*v)->ds[(*v)->ds_p]);
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
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	push	de
	push	bc
	call	_e4vm_utils_add_op
	pop	af
	pop	af
;e4vm_core_ext.c:47: }
	pop	ix
	ret
;e4vm_core_ext.c:50: void e4vm_core_ext_branch (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_core_ext_branch
; ---------------------------------
_e4vm_core_ext_branch::
	call	___sdcc_enter_ix
;e4vm_core_ext.c:52: (*v)->ip = (*v)->mem[(*v)->ip + 1] - 1;
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #0x008a
	add	hl, bc
	ex	de, hl
	ld	a, (bc)
	inc	a
	add	a, a
	ld	l, a
	ld	h, #0x00
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	dec	de
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;e4vm_core_ext.c:53: }
	pop	ix
	ret
;e4vm_core_ext.c:56: void e4vm_core_ext_zbranch (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_core_ext_zbranch
; ---------------------------------
_e4vm_core_ext_zbranch::
	call	___sdcc_enter_ix
;e4vm_core_ext.c:58: (*v)->ds_p = (*v)->ds_p - 1;
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
;e4vm_core_ext.c:59: if ((*v)->ds[(*v)->ds_p] == 0) {
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
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, d
	or	a, e
	jr	NZ,00103$
;e4vm_core_ext.c:60: (*v)->ip = (*v)->mem[(*v)->ip + 1] - 1;
	ld	hl, #0x008a
	add	hl, bc
	ex	de, hl
	ld	a, (bc)
	inc	a
	add	a, a
	ld	l, a
	ld	h, #0x00
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	dec	de
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
00103$:
;e4vm_core_ext.c:62: }
	pop	ix
	ret
;e4vm_core_ext.c:65: void e4vm_core_ext_lbrac (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_core_ext_lbrac
; ---------------------------------
_e4vm_core_ext_lbrac::
;e4vm_core_ext.c:67: (*v)->is_eval_mode = 1;
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #0x00cc
	add	hl, bc
	ld	(hl), #0x01
;e4vm_core_ext.c:68: }
	ret
;e4vm_core_ext.c:71: void e4vm_core_ext_rbrac (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_core_ext_rbrac
; ---------------------------------
_e4vm_core_ext_rbrac::
;e4vm_core_ext.c:73: (*v)->is_eval_mode = 0;
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #0x00cc
	add	hl, bc
	ld	(hl), #0x00
;e4vm_core_ext.c:74: }
	ret
;e4vm_core_ext.c:78: export void *e4vm_core_ext__init (void)
;	---------------------------------
; Function e4vm_core_ext__init
; ---------------------------------
_e4vm_core_ext__init::
;e4vm_core_ext.c:80: __DEFMOD;
	LD	HL,#. 
	LD (HL),#0xC9 
;e4vm_core_ext.c:83: __IMPORT(e4vm_type__init);
	call	_e4vm_type__init
;e4vm_core_ext.c:84: __IMPORT(e4vm_utils__init);
;e4vm_core_ext.c:88: }
	jp  _e4vm_utils__init
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
