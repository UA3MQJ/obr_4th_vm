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
	.globl _e4vm_core_do_nop
	.globl _e4vm_core_do_list
	.globl _e4vm_core_do_next
	.globl _e4vm_core_do_exit
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
;e4vm_core.c:20: void e4vm_core_do_nop (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_core_do_nop
; ---------------------------------
_e4vm_core_do_nop::
;e4vm_core.c:22: }
	pop	ix
	jp	___sdcc_enter_ix
;e4vm_core.c:25: void e4vm_core_do_list (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_core_do_list
; ---------------------------------
_e4vm_core_do_list::
	call	___sdcc_enter_ix
	push	af
;e4vm_core.c:28: (*v)->rs[(*v)->rs_p] = (*v)->ip;
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
;e4vm_core.c:29: (*v)->rs_p = (*v)->rs_p + 1;
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
;e4vm_core.c:28: (*v)->rs[(*v)->rs_p] = (*v)->ip;
	pop	hl
	push	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
;e4vm_core.c:30: (*v)->ip = (*v)->wp + 1;
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
;e4vm_core.c:31: }
	pop	af
	pop	ix
	ret
;e4vm_core.c:34: void e4vm_core_do_next (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_core_do_next
; ---------------------------------
_e4vm_core_do_next::
	call	___sdcc_enter_ix
	push	af
	push	af
;e4vm_core.c:37: while (!((*v)->ip == 0)) {
	ld	c, 4 (ix)
	ld	b, 5 (ix)
00101$:
	ld	a, (bc)
	ld	-4 (ix), a
	inc	bc
	ld	a, (bc)
	ld	-3 (ix), a
	dec	bc
	pop	hl
	push	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, d
	or	a, e
	jr	Z,00104$
;e4vm_core.c:38: next_wp = (*v)->mem[(*v)->ip];
	ld	a, -4 (ix)
	add	a, #0x8a
	ld	-2 (ix), a
	ld	a, -3 (ix)
	adc	a, #0x00
	ld	-1 (ix), a
	ld	l, e
	ld	h, d
	add	hl, hl
	ld	a, l
	add	a, -2 (ix)
	ld	l, a
	ld	a, h
	adc	a, -1 (ix)
	ld	h, a
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
;e4vm_core.c:39: next_ip = (*v)->ip + 1;
	inc	de
;e4vm_core.c:40: (*v)->ip = next_ip;
	pop	hl
	push	hl
	ld	(hl), e
	inc	hl
	ld	(hl), d
;e4vm_core.c:41: (*v)->wp = next_wp;
	ld	l, c
	ld	h, b
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	inc	hl
	inc	hl
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
;e4vm_core.c:42: word_index = (*v)->mem[next_ip];
	ld	a, (bc)
	ld	-2 (ix), a
	inc	bc
	ld	a, (bc)
	ld	-1 (ix), a
	dec	bc
	ld	a, -2 (ix)
	add	a, #0x8a
	ld	l, a
	ld	a, -1 (ix)
	adc	a, #0x00
	ld	h, a
	sla	e
	rl	d
	add	hl, de
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
;e4vm_core.c:43: (*(*v)->core[word_index])(v);
	ld	a, -2 (ix)
	add	a, #0xcd
	ld	e, a
	ld	a, -1 (ix)
	adc	a, #0x00
	ld	d, a
	add	hl, hl
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
	ld	sp, ix
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
;e4vm_core.c:56: export void *e4vm_core__init (void)
;	---------------------------------
; Function e4vm_core__init
; ---------------------------------
_e4vm_core__init::
;e4vm_core.c:58: __DEFMOD;
	LD	HL,#. 
	LD (HL),#0xC9 
;e4vm_core.c:64: }
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
