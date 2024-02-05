;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.3 #11378 (MINGW32)
;--------------------------------------------------------
	.module e4vm_utils
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _e4vm_utils__init
	.globl _e4vm_core__init
	.globl _e4vm_core_do_nop
	.globl _Console_WriteStr_C_COMPACT
	.globl _Console_WriteInt_COMPACT
	.globl _Console_WriteLn_COMPACT
	.globl _e4vm_utils_init
	.globl _e4vm_utils_vm_stat
	.globl _e4vm_utils_true_const
	.globl _e4vm_utils_false_const
	.globl _e4vm_utils_error
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
;e4vm_utils.c:22: void e4vm_utils_init (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_utils_init
; ---------------------------------
_e4vm_utils_init::
	call	___sdcc_enter_ix
	push	af
	push	af
;e4vm_utils.c:25: (*v)->ip = 0;
	ld	a, 4 (ix)
	ld	-4 (ix), a
	ld	a, 5 (ix)
	ld	-3 (ix), a
	pop	hl
	push	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	xor	a, a
	ld	(bc), a
	inc	bc
	ld	(bc), a
;e4vm_utils.c:26: (*v)->wp = 0;
	pop	hl
	push	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	inc	bc
	inc	bc
	xor	a, a
	ld	(bc), a
	inc	bc
	ld	(bc), a
;e4vm_utils.c:27: (*v)->hereP = 0;
	pop	hl
	push	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #0x0088
	add	hl, bc
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;e4vm_utils.c:28: (*v)->cell_bit_size = 16;
	pop	hl
	push	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #0x00ca
	add	hl, bc
	ld	(hl), #0x10
	inc	hl
	ld	(hl), #0x00
;e4vm_utils.c:29: (*v)->is_eval_mode = 1;
	pop	hl
	push	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #0x00cc
	add	hl, bc
	ld	(hl), #0x01
;e4vm_utils.c:31: while (i <= 31) {
	ld	bc, #0x0000
00101$:
	ld	a, #0x1f
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jp	PO, 00145$
	xor	a, #0x80
00145$:
	jp	M, 00103$
;e4vm_utils.c:32: (*v)->mem[i] = 0;
	pop	hl
	push	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x008a
	add	hl, de
	ex	de, hl
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, de
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;e4vm_utils.c:33: i += 1;
	inc	bc
	jr	00101$
00103$:
;e4vm_utils.c:36: while (i <= 31) {
	ld	de, #0x0000
00104$:
	ld	a, #0x1f
	cp	a, e
	ld	a, #0x00
	sbc	a, d
	jp	PO, 00146$
	xor	a, #0x80
00146$:
	jp	M, 00106$
;e4vm_utils.c:37: (*v)->core[i] = e4vm_core_do_nop;
	pop	hl
	push	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #0x00cd
	add	hl, bc
	ld	-2 (ix), l
	ld	-1 (ix), h
	ld	l, e
	ld	h, d
	add	hl, hl
	ld	a, -2 (ix)
	add	a, l
	ld	c, a
	ld	a, -1 (ix)
	adc	a, h
	ld	b, a
	ld	a, #<(_e4vm_core_do_nop)
	ld	(bc), a
	inc	bc
	ld	a, #>(_e4vm_core_do_nop)
	ld	(bc), a
;e4vm_utils.c:38: i += 1;
	inc	de
	jr	00104$
00106$:
;e4vm_utils.c:41: while (i <= 31) {
	ld	bc, #0x0000
00107$:
	ld	a, #0x1f
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jp	PO, 00147$
	xor	a, #0x80
00147$:
	jp	M, 00110$
;e4vm_utils.c:42: (*v)->rs[i] = 0;
	pop	hl
	push	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x0004
	add	hl, de
	ld	e, c
	ld	d, b
	sla	e
	rl	d
	add	hl, de
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;e4vm_utils.c:43: (*v)->ds[i] = 0;
	pop	hl
	push	hl
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	push	de
	ld	de, #0x0044
	add	hl, de
	pop	de
	add	hl, de
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;e4vm_utils.c:44: i += 1;
	inc	bc
	jr	00107$
00110$:
;e4vm_utils.c:46: }
	ld	sp, ix
	pop	ix
	ret
;e4vm_utils.c:49: void e4vm_utils_vm_stat (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_utils_vm_stat
; ---------------------------------
_e4vm_utils_vm_stat::
	call	___sdcc_enter_ix
	push	af
;e4vm_utils.c:52: Console_WriteStr((CHAR*)"ip:", 4);
	ld	hl, #___str_0
	call	_Console_WriteStr_C_COMPACT
;e4vm_utils.c:53: Console_WriteInt((*v)->ip);
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, e
	ld	e, (hl)
	inc	hl
	ld	h, (hl)
	push	bc
	ld	l, e
	call	_Console_WriteInt_COMPACT
	ld	hl, #___str_1
	call	_Console_WriteStr_C_COMPACT
	pop	bc
;e4vm_utils.c:55: Console_WriteInt((*v)->wp);
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, e
	inc	hl
	inc	hl
	ld	e, (hl)
	inc	hl
	ld	h, (hl)
	push	bc
	ld	l, e
	call	_Console_WriteInt_COMPACT
	ld	hl, #___str_2
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
	ld	hl, #___str_3
	call	_Console_WriteStr_C_COMPACT
	pop	bc
;e4vm_utils.c:58: Console_WriteInt((*v)->rs_p);
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, e
	ld	de, #0x0084
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	h, (hl)
	push	bc
	ld	l, e
	call	_Console_WriteInt_COMPACT
	ld	hl, #___str_2
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
	ld	hl, #___str_4
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
	pop	bc
;e4vm_utils.c:62: while (i <= 31) {
	ld	de, #0x0000
00101$:
	ld	a, #0x1f
	cp	a, e
	ld	a, #0x00
	sbc	a, d
	jp	PO, 00131$
	xor	a, #0x80
00131$:
	jp	M, 00103$
;e4vm_utils.c:63: Console_WriteInt((*v)->rs[i]);
	ld	l, c
	ld	h, b
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	add	a, #0x04
	ld	-2 (ix), a
	ld	a, h
	adc	a, #0x00
	ld	-1 (ix), a
	ld	l, e
	ld	h, d
	add	hl, hl
	ld	a, -2 (ix)
	add	a, l
	ld	l, a
	ld	a, -1 (ix)
	adc	a, h
	ld	h, a
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	push	bc
	push	de
	call	_Console_WriteInt_COMPACT
	ld	hl, #___str_2
	call	_Console_WriteStr_C_COMPACT
	pop	de
	pop	bc
;e4vm_utils.c:65: i += 1;
	inc	de
	jr	00101$
00103$:
;e4vm_utils.c:67: Console_WriteStrLn((CHAR*)"]", 2);
	push	bc
	ld	hl, #___str_5
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
	ld	hl, #___str_6
	call	_Console_WriteStr_C_COMPACT
	pop	bc
;e4vm_utils.c:69: Console_WriteInt((*v)->ds_p);
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, e
	ld	de, #0x0086
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	h, (hl)
	push	bc
	ld	l, e
	call	_Console_WriteInt_COMPACT
	ld	hl, #___str_2
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
	ld	hl, #___str_7
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
	pop	bc
;e4vm_utils.c:73: while (i <= 31) {
	ld	de, #0x0000
00104$:
	ld	a, #0x1f
	cp	a, e
	ld	a, #0x00
	sbc	a, d
	jp	PO, 00132$
	xor	a, #0x80
00132$:
	jp	M, 00106$
;e4vm_utils.c:74: Console_WriteInt((*v)->ds[i]);
	ld	l, c
	ld	h, b
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	add	a, #0x44
	ld	-2 (ix), a
	ld	a, h
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
	inc	hl
	ld	h, (hl)
	ld	l, a
	push	bc
	push	de
	call	_Console_WriteInt_COMPACT
	ld	hl, #___str_2
	call	_Console_WriteStr_C_COMPACT
	pop	de
	pop	bc
;e4vm_utils.c:76: i += 1;
	inc	de
	jr	00104$
00106$:
;e4vm_utils.c:78: Console_WriteStrLn((CHAR*)"]", 2);
	ld	hl, #___str_5
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
;e4vm_utils.c:79: }
	pop	af
	pop	ix
	ret
___str_0:
	.ascii "ip:"
	.db 0x00
___str_1:
	.ascii " wp:"
	.db 0x00
___str_2:
	.ascii " "
	.db 0x00
___str_3:
	.ascii "rs_p:"
	.db 0x00
___str_4:
	.ascii "rs: ["
	.db 0x00
___str_5:
	.ascii "]"
	.db 0x00
___str_6:
	.ascii "ds_p:"
	.db 0x00
___str_7:
	.ascii "ds: ["
	.db 0x00
;e4vm_utils.c:82: SHORTINT e4vm_utils_true_const (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_utils_true_const
; ---------------------------------
_e4vm_utils_true_const::
	call	___sdcc_enter_ix
;e4vm_utils.c:84: return -1;
	ld	hl, #0xffff
;e4vm_utils.c:85: }
	pop	ix
	ret
;e4vm_utils.c:88: SHORTINT e4vm_utils_false_const (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_utils_false_const
; ---------------------------------
_e4vm_utils_false_const::
	call	___sdcc_enter_ix
;e4vm_utils.c:90: return 0;
	ld	hl, #0x0000
;e4vm_utils.c:91: }
	pop	ix
	ret
;e4vm_utils.c:94: void e4vm_utils_error (CHAR *err, SHORTINT err__len)
;	---------------------------------
; Function e4vm_utils_error
; ---------------------------------
_e4vm_utils_error::
	call	___sdcc_enter_ix
;e4vm_utils.c:96: Console_WriteStr((CHAR*)"Error: ", 8);
	ld	hl, #___str_8
	call	_Console_WriteStr_C_COMPACT
;e4vm_utils.c:97: Console_WriteStr((void*)err, err__len);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	call	_Console_WriteStr_C_COMPACT
;e4vm_utils.c:98: Console_WriteStrLn((CHAR*)"", 1);
	ld	hl, #___str_9
	call	_Console_WriteStr_C_COMPACT
;e4vm_utils.c:99: }
	pop	ix
	jp	_Console_WriteLn_COMPACT
___str_8:
	.ascii "Error: "
	.db 0x00
___str_9:
	.db 0x00
;e4vm_utils.c:103: export void *e4vm_utils__init (void)
;	---------------------------------
; Function e4vm_utils__init
; ---------------------------------
_e4vm_utils__init::
;e4vm_utils.c:105: __DEFMOD;
	LD	HL,#. 
	LD (HL),#0xC9 
;e4vm_utils.c:108: __IMPORT(e4vm_core__init);
;e4vm_utils.c:112: }
	jp  _e4vm_core__init
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
