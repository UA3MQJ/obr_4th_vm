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
	.globl _Basic_Quit_IM1
	.globl _e4vm_core_ext_quit
	.globl _e4vm_core_ext_do_lit
	.globl _e4vm_core_ext_get_here_addr
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
;e4vm_core_ext.c:20: void e4vm_core_ext_quit (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_core_ext_quit
; ---------------------------------
_e4vm_core_ext_quit::
	call	___sdcc_enter_ix
;e4vm_core_ext.c:22: Basic_Quit();
;e4vm_core_ext.c:23: }
	pop	ix
	jp	_Basic_Quit_IM1
;e4vm_core_ext.c:26: void e4vm_core_ext_do_lit (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_core_ext_do_lit
; ---------------------------------
_e4vm_core_ext_do_lit::
	call	___sdcc_enter_ix
;e4vm_core_ext.c:28: (*v)->ip = (*v)->ip + 1;
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
;e4vm_core_ext.c:29: e4vm_utils_stack_ds_push(v, (*v)->mem[(*v)->ip]);
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
;e4vm_core_ext.c:30: }
	pop	ix
	ret
;e4vm_core_ext.c:33: void e4vm_core_ext_get_here_addr (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_core_ext_get_here_addr
; ---------------------------------
_e4vm_core_ext_get_here_addr::
	call	___sdcc_enter_ix
;e4vm_core_ext.c:35: e4vm_utils_stack_ds_push(v, (*v)->hereP);
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
;e4vm_core_ext.c:36: }
	pop	ix
	ret
;e4vm_core_ext.c:40: export void *e4vm_core_ext__init (void)
;	---------------------------------
; Function e4vm_core_ext__init
; ---------------------------------
_e4vm_core_ext__init::
;e4vm_core_ext.c:42: __DEFMOD;
	LD	HL,#. 
	LD (HL),#0xC9 
;e4vm_core_ext.c:45: __IMPORT(e4vm_utils__init);
;e4vm_core_ext.c:49: }
	jp  _e4vm_utils__init
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
