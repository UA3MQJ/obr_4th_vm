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
	.globl _Console_WriteStr_C_COMPACT
	.globl _Console_WriteLn_COMPACT
	.globl _e4vm_core_ext_quit
	.globl _e4vm_core_ext_do_lit
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
;e4vm_core_ext.c:19: void e4vm_core_ext_quit (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_core_ext_quit
; ---------------------------------
_e4vm_core_ext_quit::
	call	___sdcc_enter_ix
;e4vm_core_ext.c:21: Basic_Quit();
;e4vm_core_ext.c:22: }
	pop	ix
	jp	_Basic_Quit_IM1
;e4vm_core_ext.c:25: void e4vm_core_ext_do_lit (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_core_ext_do_lit
; ---------------------------------
_e4vm_core_ext_do_lit::
	call	___sdcc_enter_ix
;e4vm_core_ext.c:27: Console_WriteStrLn((CHAR*)"do_lit!", 8);
	ld	hl, #___str_0
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
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
___str_0:
	.ascii "do_lit!"
	.db 0x00
;e4vm_core_ext.c:34: export void *e4vm_core_ext__init (void)
;	---------------------------------
; Function e4vm_core_ext__init
; ---------------------------------
_e4vm_core_ext__init::
;e4vm_core_ext.c:36: __DEFMOD;
	LD	HL,#. 
	LD (HL),#0xC9 
;e4vm_core_ext.c:39: __IMPORT(e4vm_utils__init);
;e4vm_core_ext.c:43: }
	jp  _e4vm_utils__init
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
