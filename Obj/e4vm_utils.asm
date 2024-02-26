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
	.globl _e4vm_type__init
	.globl _Console_WriteStr_C_COMPACT
	.globl _Console_WriteInt_COMPACT
	.globl _Console_WriteLn_COMPACT
	.globl _Console_ReadStr_COMPACT
	.globl _e4vm_utils_init
	.globl _e4vm_utils_vm_stat
	.globl _e4vm_utils_true_const
	.globl _e4vm_utils_false_const
	.globl _e4vm_utils_error
	.globl _e4vm_utils_stack_ds_push
	.globl _e4vm_utils_stack_rs_push
	.globl _e4vm_utils_add_op
	.globl _e4vm_utils_read_char
	.globl _e4vm_utils_read_string
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
;e4vm_utils.c:27: void e4vm_utils_init (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_utils_init
; ---------------------------------
_e4vm_utils_init::
	call	___sdcc_enter_ix
	push	af
;e4vm_utils.c:30: (*v)->ip = 0;
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	xor	a, a
	ld	(de), a
	inc	de
	ld	(de), a
;e4vm_utils.c:31: (*v)->wp = 0;
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	inc	de
	inc	de
	xor	a, a
	ld	(de), a
	inc	de
	ld	(de), a
;e4vm_utils.c:32: (*v)->hereP = 0;
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x0088
	add	hl, de
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;e4vm_utils.c:33: (*v)->rs_p = 0;
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x0084
	add	hl, de
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;e4vm_utils.c:34: (*v)->ds_p = 0;
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x0086
	add	hl, de
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;e4vm_utils.c:35: (*v)->cell_bit_size = 16;
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x00ca
	add	hl, de
	ld	(hl), #0x10
	inc	hl
	ld	(hl), #0x00
;e4vm_utils.c:36: (*v)->is_eval_mode = 1;
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x00cc
	add	hl, de
	ld	(hl), #0x01
;e4vm_utils.c:38: while (i <= 31) {
	ld	de, #0x0000
00101$:
	ld	a, #0x1f
	cp	a, e
	ld	a, #0x00
	sbc	a, d
	jp	PO, 00145$
	xor	a, #0x80
00145$:
	jp	M, 00103$
;e4vm_utils.c:39: (*v)->mem[i] = 0;
	ld	l, c
	ld	h, b
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	add	a, #0x8a
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
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;e4vm_utils.c:40: i += 1;
	inc	de
	jr	00101$
00103$:
;e4vm_utils.c:43: while (i <= 31) {
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
;e4vm_utils.c:44: (*v)->core[i] = e4vm_core_do_nop;
	ld	l, c
	ld	h, b
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	add	a, #0xcd
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
	ld	(hl), #<(_e4vm_core_do_nop)
	inc	hl
	ld	(hl), #>(_e4vm_core_do_nop)
;e4vm_utils.c:45: i += 1;
	inc	de
	jr	00104$
00106$:
;e4vm_utils.c:48: while (i <= 31) {
	ld	hl, #0x0000
	ex	(sp), hl
00107$:
	ld	a, #0x1f
	cp	a, -2 (ix)
	ld	a, #0x00
	sbc	a, -1 (ix)
	jp	PO, 00147$
	xor	a, #0x80
00147$:
	jp	M, 00110$
;e4vm_utils.c:49: (*v)->rs[i] = 0;
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x0004
	add	hl, de
	pop	de
	push	de
	sla	e
	rl	d
	add	hl, de
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;e4vm_utils.c:50: (*v)->ds[i] = 0;
	ld	l, c
	ld	h, b
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
;e4vm_utils.c:51: i += 1;
	inc	-2 (ix)
	jr	NZ,00107$
	inc	-1 (ix)
	jr	00107$
00110$:
;e4vm_utils.c:53: }
	pop	af
	pop	ix
	ret
;e4vm_utils.c:56: void e4vm_utils_vm_stat (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_utils_vm_stat
; ---------------------------------
_e4vm_utils_vm_stat::
	call	___sdcc_enter_ix
	push	af
	push	af
	push	af
	push	af
;e4vm_utils.c:59: Console_WriteStrLn((CHAR*)" ", 2);
	ld	hl, #___str_0
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
;e4vm_utils.c:60: Console_WriteStr((CHAR*)"ip:", 4);
	ld	hl, #___str_1
	call	_Console_WriteStr_C_COMPACT
;e4vm_utils.c:61: Console_WriteInt((*v)->ip);
	ld	a, 4 (ix)
	ld	-8 (ix), a
	ld	a, 5 (ix)
	ld	-7 (ix), a
	pop	hl
	push	hl
	ld	c, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, c
	ld	c, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, c
	call	_Console_WriteInt_COMPACT
;e4vm_utils.c:62: Console_WriteStr((CHAR*)" wp:", 5);
	ld	hl, #___str_2
	call	_Console_WriteStr_C_COMPACT
;e4vm_utils.c:63: Console_WriteInt((*v)->wp);
	pop	hl
	push	hl
	ld	c, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, c
	inc	hl
	inc	hl
	ld	c, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, c
	call	_Console_WriteInt_COMPACT
;e4vm_utils.c:64: Console_WriteStr((CHAR*)" hereP:", 8);
	ld	hl, #___str_3
	call	_Console_WriteStr_C_COMPACT
;e4vm_utils.c:65: Console_WriteInt((*v)->hereP);
	pop	hl
	push	hl
	ld	c, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, c
	ld	de, #0x0088
	add	hl, de
	ld	c, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, c
	call	_Console_WriteInt_COMPACT
;e4vm_utils.c:66: Console_WriteStrLn((CHAR*)" ", 2);
	ld	hl, #___str_0
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
;e4vm_utils.c:67: Console_WriteStr((CHAR*)"rs_p:", 6);
	ld	hl, #___str_4
	call	_Console_WriteStr_C_COMPACT
;e4vm_utils.c:68: Console_WriteInt((*v)->rs_p);
	pop	hl
	push	hl
	ld	c, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, c
	ld	de, #0x0084
	add	hl, de
	ld	c, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, c
	call	_Console_WriteInt_COMPACT
;e4vm_utils.c:69: Console_WriteStrLn((CHAR*)" ", 2);
	ld	hl, #___str_0
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
;e4vm_utils.c:70: Console_WriteStrLn((CHAR*)"rs: [", 6);
	ld	hl, #___str_5
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
;e4vm_utils.c:72: while (i <= 31) {
	xor	a, a
	ld	-2 (ix), a
	ld	-1 (ix), a
00101$:
	ld	a, #0x1f
	cp	a, -2 (ix)
	ld	a, #0x00
	sbc	a, -1 (ix)
	jp	PO, 00145$
	xor	a, #0x80
00145$:
	jp	M, 00103$
;e4vm_utils.c:73: Console_WriteInt((*v)->rs[i]);
	pop	hl
	push	hl
	ld	a, (hl)
	ld	-6 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-5 (ix), a
	ld	a, -6 (ix)
	add	a, #0x04
	ld	-4 (ix), a
	ld	a, -5 (ix)
	adc	a, #0x00
	ld	-3 (ix), a
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	add	hl, hl
	ld	e, -4 (ix)
	ld	d, -3 (ix)
	add	hl, de
	ld	c, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, c
	call	_Console_WriteInt_COMPACT
;e4vm_utils.c:74: Console_WriteStr((CHAR*)" ", 2);
	ld	hl, #___str_0
	call	_Console_WriteStr_C_COMPACT
;e4vm_utils.c:75: i += 1;
	inc	-2 (ix)
	jr	NZ,00101$
	inc	-1 (ix)
	jr	00101$
00103$:
;e4vm_utils.c:77: Console_WriteStrLn((CHAR*)"]", 2);
	ld	hl, #___str_6
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
;e4vm_utils.c:78: Console_WriteStr((CHAR*)"ds_p:", 6);
	ld	hl, #___str_7
	call	_Console_WriteStr_C_COMPACT
;e4vm_utils.c:79: Console_WriteInt((*v)->ds_p);
	pop	hl
	push	hl
	ld	c, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, c
	ld	de, #0x0086
	add	hl, de
	ld	c, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, c
	call	_Console_WriteInt_COMPACT
;e4vm_utils.c:80: Console_WriteStrLn((CHAR*)" ", 2);
	ld	hl, #___str_0
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
;e4vm_utils.c:81: Console_WriteStrLn((CHAR*)"ds: [", 6);
	ld	hl, #___str_8
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
;e4vm_utils.c:83: while (i <= 31) {
	ld	bc, #0x0000
00104$:
	ld	a, #0x1f
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jp	PO, 00147$
	xor	a, #0x80
00147$:
	jp	M, 00106$
;e4vm_utils.c:84: Console_WriteInt((*v)->ds[i]);
	pop	hl
	push	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x0044
	add	hl, de
	ex	de, hl
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, de
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	push	bc
	call	_Console_WriteInt_COMPACT
	ld	hl, #___str_0
	call	_Console_WriteStr_C_COMPACT
	pop	bc
;e4vm_utils.c:86: i += 1;
	inc	bc
	jr	00104$
00106$:
;e4vm_utils.c:88: Console_WriteStrLn((CHAR*)"]", 2);
	ld	hl, #___str_6
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
;e4vm_utils.c:89: Console_WriteStrLn((CHAR*)"mem: [", 7);
	ld	hl, #___str_9
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
;e4vm_utils.c:91: while (i <= 31) {
	ld	bc, #0x0000
00107$:
	ld	a, #0x1f
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jp	PO, 00148$
	xor	a, #0x80
00148$:
	jp	M, 00109$
;e4vm_utils.c:92: Console_WriteInt((*v)->mem[i]);
	pop	hl
	push	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x008a
	add	hl, de
	ld	-2 (ix), l
	ld	-1 (ix), h
	ld	l, c
	ld	h, b
	add	hl, hl
	ld	e, -2 (ix)
	ld	d, -1 (ix)
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	h, (hl)
	push	bc
	ld	l, e
	call	_Console_WriteInt_COMPACT
	ld	hl, #___str_0
	call	_Console_WriteStr_C_COMPACT
	pop	bc
;e4vm_utils.c:94: i += 1;
	inc	bc
	jr	00107$
00109$:
;e4vm_utils.c:96: Console_WriteStrLn((CHAR*)"]", 2);
	ld	hl, #___str_6
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
;e4vm_utils.c:97: }
	ld	sp, ix
	pop	ix
	ret
___str_0:
	.ascii " "
	.db 0x00
___str_1:
	.ascii "ip:"
	.db 0x00
___str_2:
	.ascii " wp:"
	.db 0x00
___str_3:
	.ascii " hereP:"
	.db 0x00
___str_4:
	.ascii "rs_p:"
	.db 0x00
___str_5:
	.ascii "rs: ["
	.db 0x00
___str_6:
	.ascii "]"
	.db 0x00
___str_7:
	.ascii "ds_p:"
	.db 0x00
___str_8:
	.ascii "ds: ["
	.db 0x00
___str_9:
	.ascii "mem: ["
	.db 0x00
;e4vm_utils.c:100: SHORTINT e4vm_utils_true_const (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_utils_true_const
; ---------------------------------
_e4vm_utils_true_const::
;e4vm_utils.c:102: return -1;
	ld	hl, #0xffff
;e4vm_utils.c:103: }
	ret
;e4vm_utils.c:106: SHORTINT e4vm_utils_false_const (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_utils_false_const
; ---------------------------------
_e4vm_utils_false_const::
;e4vm_utils.c:108: return 0;
	ld	hl, #0x0000
;e4vm_utils.c:109: }
	ret
;e4vm_utils.c:112: void e4vm_utils_error (CHAR *err, SHORTINT err__len)
;	---------------------------------
; Function e4vm_utils_error
; ---------------------------------
_e4vm_utils_error::
;e4vm_utils.c:114: Console_WriteStr((CHAR*)"Error: ", 8);
	ld	hl, #___str_10
	call	_Console_WriteStr_C_COMPACT
;e4vm_utils.c:115: Console_WriteStr((void*)err, err__len);
	pop	bc
	pop	hl
	push	hl
	push	bc
	call	_Console_WriteStr_C_COMPACT
;e4vm_utils.c:116: Console_WriteStrLn((CHAR*)"", 1);
	ld	hl, #___str_11
	call	_Console_WriteStr_C_COMPACT
;e4vm_utils.c:117: }
	jp  _Console_WriteLn_COMPACT
___str_10:
	.ascii "Error: "
	.db 0x00
___str_11:
	.db 0x00
;e4vm_utils.c:120: void e4vm_utils_stack_ds_push (e4vm_type_x4thPtr *v, SHORTINT x)
;	---------------------------------
; Function e4vm_utils_stack_ds_push
; ---------------------------------
_e4vm_utils_stack_ds_push::
	call	___sdcc_enter_ix
;e4vm_utils.c:122: (*v)->ds[(*v)->ds_p] = x;
	ld	c, 4 (ix)
	ld	b, 5 (ix)
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
	ld	a, 6 (ix)
	ld	(hl), a
	inc	hl
	ld	a, 7 (ix)
	ld	(hl), a
;e4vm_utils.c:123: (*v)->ds_p = (*v)->ds_p + 1;
	ld	l, c
	ld	h, b
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #0x0086
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
;e4vm_utils.c:124: }
	pop	ix
	ret
;e4vm_utils.c:127: void e4vm_utils_stack_rs_push (e4vm_type_x4thPtr *v, SHORTINT x)
;	---------------------------------
; Function e4vm_utils_stack_rs_push
; ---------------------------------
_e4vm_utils_stack_rs_push::
	call	___sdcc_enter_ix
;e4vm_utils.c:129: (*v)->rs[(*v)->rs_p] = x;
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	l, c
	ld	h, b
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	add	a, #0x04
	ld	e, a
	ld	a, h
	adc	a, #0x00
	ld	d, a
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
	ld	a, 6 (ix)
	ld	(hl), a
	inc	hl
	ld	a, 7 (ix)
	ld	(hl), a
;e4vm_utils.c:130: (*v)->rs_p = (*v)->rs_p + 1;
	ld	l, c
	ld	h, b
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
;e4vm_utils.c:131: }
	pop	ix
	ret
;e4vm_utils.c:134: void e4vm_utils_add_op (e4vm_type_x4thPtr *v, SHORTINT addr)
;	---------------------------------
; Function e4vm_utils_add_op
; ---------------------------------
_e4vm_utils_add_op::
	call	___sdcc_enter_ix
;e4vm_utils.c:136: (*v)->mem[(*v)->hereP] = addr;
	ld	c, 4 (ix)
	ld	b, 5 (ix)
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
	push	bc
	ld	bc, #0x0088
	add	hl, bc
	pop	bc
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	add	hl, hl
	add	hl, de
	ld	a, 6 (ix)
	ld	(hl), a
	inc	hl
	ld	a, 7 (ix)
	ld	(hl), a
;e4vm_utils.c:137: (*v)->hereP = (*v)->hereP + 1;
	ld	l, c
	ld	h, b
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #0x0088
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
;e4vm_utils.c:138: }
	pop	ix
	ret
;e4vm_utils.c:141: CHAR e4vm_utils_read_char (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_utils_read_char
; ---------------------------------
_e4vm_utils_read_char::
;e4vm_utils.c:143: do {
00101$:
;e4vm_utils.c:144: } while (!(!(Basic_PEEK(23556) == 255)));
	ld	a, (#0x5c04)
	inc	a
	jr	Z,00101$
;e4vm_utils.c:145: return Basic_PEEK(23560);
	ld	hl, #0x5c08
	ld	l, (hl)
;e4vm_utils.c:146: }
	ret
;e4vm_utils.c:149: void e4vm_utils_read_string (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_utils_read_string
; ---------------------------------
_e4vm_utils_read_string::
	ld	hl, #-64
	add	hl, sp
	ld	sp, hl
;e4vm_utils.c:153: _ptr__7 = *v;
	ld	hl, #66
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
;e4vm_utils.c:154: Console_ReadStr((void*)_ptr__7->in_string, 64, 64);
	ld	hl, #0x010d
	add	hl, bc
	ld	a, #0x40
	push	af
	inc	sp
	ld	bc, #0x0040
	push	bc
	push	hl
	call	_Console_ReadStr_COMPACT
	pop	af
	pop	af
	inc	sp
;e4vm_utils.c:155: }
	ld	hl, #64
	add	hl, sp
	ld	sp, hl
	ret
;e4vm_utils.c:159: export void *e4vm_utils__init (void)
;	---------------------------------
; Function e4vm_utils__init
; ---------------------------------
_e4vm_utils__init::
;e4vm_utils.c:161: __DEFMOD;
	LD	HL,#. 
	LD (HL),#0xC9 
;e4vm_utils.c:164: __IMPORT(e4vm_core__init);
	call	_e4vm_core__init
;e4vm_utils.c:165: __IMPORT(e4vm_type__init);
;e4vm_utils.c:169: }
	jp  _e4vm_type__init
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
