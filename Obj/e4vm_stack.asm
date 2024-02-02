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
	.globl _Console_WriteStr_C_COMPACT
	.globl _Console_WriteLn_COMPACT
	.globl _e4vm_stack_drop
	.globl _e4vm_stack_swap
	.globl _e4vm_stack_dup
	.globl _e4vm_stack_over
	.globl _e4vm_stack_rot
	.globl _e4vm_stack_nrot
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
;e4vm_stack.c:22: void e4vm_stack_drop (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_stack_drop
; ---------------------------------
_e4vm_stack_drop::
	call	___sdcc_enter_ix
;e4vm_stack.c:24: Console_WriteStrLn((CHAR*)"drop", 5);
	ld	hl, #___str_0
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
;e4vm_stack.c:25: (*v)->ds_p = (*v)->ds_p - 1;
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
;e4vm_stack.c:26: }
	pop	ix
	ret
___str_0:
	.ascii "drop"
	.db 0x00
;e4vm_stack.c:29: void e4vm_stack_swap (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_stack_swap
; ---------------------------------
_e4vm_stack_swap::
	call	___sdcc_enter_ix
	push	af
	push	af
	push	af
;e4vm_stack.c:32: Console_WriteStrLn((CHAR*)"swap", 5);
	ld	hl, #___str_1
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
;e4vm_stack.c:33: T = (*v)->ds[(*v)->ds_p - 1];
	ld	a, 4 (ix)
	ld	-6 (ix), a
	ld	a, 5 (ix)
	ld	-5 (ix), a
	pop	hl
	push	hl
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
	ld	c, (hl)
	ld	a, c
	dec	a
	add	a, a
	add	a, e
	ld	-4 (ix), a
	ld	a, #0x00
	adc	a, d
	ld	-3 (ix), a
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
;e4vm_stack.c:34: (*v)->ds[(*v)->ds_p - 1] = (*v)->ds[(*v)->ds_p - 2];
	ld	a, c
	dec	a
	dec	a
	add	a, a
	ld	l, a
	ld	h, #0x00
	add	hl, de
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	pop	de
	pop	hl
	push	hl
	push	de
	ld	(hl), c
	inc	hl
	ld	(hl), b
;e4vm_stack.c:35: (*v)->ds[(*v)->ds_p - 2] = T;
	pop	hl
	push	hl
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
___str_1:
	.ascii "swap"
	.db 0x00
;e4vm_stack.c:39: void e4vm_stack_dup (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_stack_dup
; ---------------------------------
_e4vm_stack_dup::
	call	___sdcc_enter_ix
;e4vm_stack.c:41: Console_WriteStrLn((CHAR*)"dup", 4);
	ld	hl, #___str_2
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
;e4vm_stack.c:42: (*v)->ds_p = (*v)->ds_p + 1;
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
;e4vm_stack.c:43: (*v)->ds[(*v)->ds_p - 1] = (*v)->ds[(*v)->ds_p - 2];
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
;e4vm_stack.c:44: }
	pop	ix
	ret
___str_2:
	.ascii "dup"
	.db 0x00
;e4vm_stack.c:47: void e4vm_stack_over (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_stack_over
; ---------------------------------
_e4vm_stack_over::
	call	___sdcc_enter_ix
;e4vm_stack.c:49: Console_WriteStrLn((CHAR*)"over", 5);
	ld	hl, #___str_3
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
;e4vm_stack.c:50: (*v)->ds_p = (*v)->ds_p + 1;
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
;e4vm_stack.c:51: (*v)->ds[(*v)->ds_p - 1] = (*v)->ds[(*v)->ds_p - 3];
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
;e4vm_stack.c:52: }
	pop	ix
	ret
___str_3:
	.ascii "over"
	.db 0x00
;e4vm_stack.c:55: void e4vm_stack_rot (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_stack_rot
; ---------------------------------
_e4vm_stack_rot::
	call	___sdcc_enter_ix
	push	af
	push	af
	push	af
;e4vm_stack.c:58: Console_WriteStrLn((CHAR*)"rot", 4);
	ld	hl, #___str_4
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
;e4vm_stack.c:59: T = (*v)->ds[(*v)->ds_p - 3];
	ld	a, 4 (ix)
	ld	-6 (ix), a
	ld	a, 5 (ix)
	ld	-5 (ix), a
	pop	hl
	push	hl
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
	ld	c, (hl)
	ld	a, c
	add	a, #0xfd
	add	a, a
	add	a, e
	ld	-4 (ix), a
	ld	a, #0x00
	adc	a, d
	ld	-3 (ix), a
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
;e4vm_stack.c:60: (*v)->ds[(*v)->ds_p - 3] = (*v)->ds[(*v)->ds_p - 2];
	ld	a, c
	dec	a
	dec	a
	add	a, a
	ld	l, a
	ld	h, #0x00
	add	hl, de
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	pop	de
	pop	hl
	push	hl
	push	de
	ld	(hl), c
	inc	hl
	ld	(hl), b
;e4vm_stack.c:61: (*v)->ds[(*v)->ds_p - 2] = (*v)->ds[(*v)->ds_p - 1];
	pop	hl
	push	hl
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
	dec	a
	add	a, a
	add	a, e
	ld	c, a
	ld	a, #0x00
	adc	a, d
	ld	b, a
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
;e4vm_stack.c:62: (*v)->ds[(*v)->ds_p - 1] = T;
	pop	hl
	push	hl
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
;e4vm_stack.c:63: }
	ld	sp, ix
	pop	ix
	ret
___str_4:
	.ascii "rot"
	.db 0x00
;e4vm_stack.c:66: void e4vm_stack_nrot (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_stack_nrot
; ---------------------------------
_e4vm_stack_nrot::
	call	___sdcc_enter_ix
	push	af
	push	af
	push	af
;e4vm_stack.c:69: Console_WriteStrLn((CHAR*)"nrot", 5);
	ld	hl, #___str_5
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
;e4vm_stack.c:70: T = (*v)->ds[(*v)->ds_p - 1];
	ld	a, 4 (ix)
	ld	-6 (ix), a
	ld	a, 5 (ix)
	ld	-5 (ix), a
	pop	hl
	push	hl
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
	ld	c, (hl)
	ld	a, c
	dec	a
	add	a, a
	add	a, e
	ld	-4 (ix), a
	ld	a, #0x00
	adc	a, d
	ld	-3 (ix), a
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
;e4vm_stack.c:71: (*v)->ds[(*v)->ds_p - 1] = (*v)->ds[(*v)->ds_p - 2];
	ld	a, c
	dec	a
	dec	a
	add	a, a
	ld	l, a
	ld	h, #0x00
	add	hl, de
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	pop	de
	pop	hl
	push	hl
	push	de
	ld	(hl), c
	inc	hl
	ld	(hl), b
;e4vm_stack.c:72: (*v)->ds[(*v)->ds_p - 2] = (*v)->ds[(*v)->ds_p - 3];
	pop	hl
	push	hl
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
;e4vm_stack.c:73: (*v)->ds[(*v)->ds_p - 3] = T;
	pop	hl
	push	hl
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
;e4vm_stack.c:74: }
	ld	sp, ix
	pop	ix
	ret
___str_5:
	.ascii "nrot"
	.db 0x00
;e4vm_stack.c:78: export void *e4vm_stack__init (void)
;	---------------------------------
; Function e4vm_stack__init
; ---------------------------------
_e4vm_stack__init::
;e4vm_stack.c:80: __DEFMOD;
	LD	HL,#. 
	LD (HL),#0xC9 
;e4vm_stack.c:86: }
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
