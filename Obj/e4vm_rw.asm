;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.3 #11378 (MINGW32)
;--------------------------------------------------------
	.module e4vm_rw
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _e4vm_rw__init
	.globl _e4vm_utils__init
	.globl _e4vm_utils_add_core_word
	.globl _e4vm_type__init
	.globl _Console_WriteStr_C_COMPACT
	.globl _Console_WriteInt_COMPACT
	.globl _Console_WriteLn_COMPACT
	.globl _memcpy
	.globl _e4vm_rw_dot
	.globl _e4vm_rw_dot_s
	.globl _e4vm_rw_cr
	.globl _e4vm_rw_bl
	.globl _e4vm_rw_read_word
	.globl _e4vm_rw_words_list
	.globl _e4vm_rw_read_string
	.globl _e4vm_rw_key
	.globl _e4vm_rw_add_core_words
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
;e4vm_rw.c:26: void e4vm_rw_dot (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_rw_dot
; ---------------------------------
_e4vm_rw_dot::
	call	___sdcc_enter_ix
	push	af
	push	af
	push	af
;e4vm_rw.c:28: if ((*v)->ds_p > 0) {
	ld	a, 4 (ix)
	ld	-6 (ix), a
	ld	a, 5 (ix)
	ld	-5 (ix), a
	pop	hl
	push	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #0x0086
	add	hl, bc
	ld	-4 (ix), l
	ld	-3 (ix), h
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
	xor	a, a
	cp	a, -2 (ix)
	sbc	a, -1 (ix)
	jp	PO, 00111$
	xor	a, #0x80
00111$:
	jp	P, 00102$
;e4vm_rw.c:29: (*v)->ds_p = (*v)->ds_p - 1;
	ld	c, -2 (ix)
	ld	b, -1 (ix)
	dec	bc
	pop	de
	pop	hl
	push	hl
	push	de
	ld	(hl), c
	inc	hl
	ld	(hl), b
;e4vm_rw.c:30: Console_WriteStr((CHAR*)" ", 2);
	ld	hl, #___str_0
	call	_Console_WriteStr_C_COMPACT
;e4vm_rw.c:31: Console_WriteInt((*v)->ds[(*v)->ds_p]);
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
	inc	hl
	ld	h, (hl)
	ld	l, a
	add	hl, hl
	add	hl, de
	ld	c, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, c
	call	_Console_WriteInt_COMPACT
	jr	00104$
00102$:
;e4vm_rw.c:33: Console_WriteStr((CHAR*)"ERROR: stack empty", 19);
	ld	hl, #___str_1
	call	_Console_WriteStr_C_COMPACT
00104$:
;e4vm_rw.c:35: }
	ld	sp, ix
	pop	ix
	ret
___str_0:
	.ascii " "
	.db 0x00
___str_1:
	.ascii "ERROR: stack empty"
	.db 0x00
;e4vm_rw.c:38: void e4vm_rw_dot_s (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_rw_dot_s
; ---------------------------------
_e4vm_rw_dot_s::
	call	___sdcc_enter_ix
	push	af
	push	af
;e4vm_rw.c:41: Console_WriteLn();
	call	_Console_WriteLn_COMPACT
;e4vm_rw.c:42: Console_WriteStr((CHAR*)"<", 2);
	ld	hl, #___str_2
	call	_Console_WriteStr_C_COMPACT
;e4vm_rw.c:43: Console_WriteInt((*v)->ds_p);
	ld	c, 4 (ix)
	ld	b, 5 (ix)
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
	ld	hl, #___str_3
	call	_Console_WriteStr_C_COMPACT
	pop	bc
;e4vm_rw.c:45: _for__14 = (*v)->ds_p - 1;
	ld	l, c
	ld	h, b
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	de, #0x0086
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, e
	add	a, #0xff
	ld	-4 (ix), a
	ld	a, d
	adc	a, #0xff
	ld	-3 (ix), a
;e4vm_rw.c:47: while (i <= _for__14) {
	xor	a, a
	ld	-2 (ix), a
	ld	-1 (ix), a
00101$:
	ld	a, -4 (ix)
	sub	a, -2 (ix)
	ld	a, -3 (ix)
	sbc	a, -1 (ix)
	jp	PO, 00117$
	xor	a, #0x80
00117$:
	jp	M, 00104$
;e4vm_rw.c:48: Console_WriteStr((CHAR*)" ", 2);
	push	bc
	ld	hl, #___str_4
	call	_Console_WriteStr_C_COMPACT
	pop	bc
;e4vm_rw.c:49: Console_WriteInt((*v)->ds[i]);
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x0044
	add	hl, de
	ex	de, hl
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	add	hl, hl
	add	hl, de
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	push	bc
	call	_Console_WriteInt_COMPACT
	pop	bc
;e4vm_rw.c:50: i += 1;
	inc	-2 (ix)
	jr	NZ,00101$
	inc	-1 (ix)
	jr	00101$
00104$:
;e4vm_rw.c:52: }
	ld	sp, ix
	pop	ix
	ret
___str_2:
	.ascii "<"
	.db 0x00
___str_3:
	.ascii ">"
	.db 0x00
___str_4:
	.ascii " "
	.db 0x00
;e4vm_rw.c:55: void e4vm_rw_cr (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_rw_cr
; ---------------------------------
_e4vm_rw_cr::
;e4vm_rw.c:57: Console_WriteLn();
;e4vm_rw.c:58: }
	jp  _Console_WriteLn_COMPACT
;e4vm_rw.c:61: void e4vm_rw_bl (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_rw_bl
; ---------------------------------
_e4vm_rw_bl::
;e4vm_rw.c:63: Console_WriteStr((CHAR*)" ", 2);
	ld	hl, #___str_5
;e4vm_rw.c:64: }
	jp  _Console_WriteStr_C_COMPACT
___str_5:
	.ascii " "
	.db 0x00
;e4vm_rw.c:67: void e4vm_rw_read_word (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_rw_read_word
; ---------------------------------
_e4vm_rw_read_word::
;e4vm_rw.c:69: }
	ret
;e4vm_rw.c:72: void e4vm_rw_words_list (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_rw_words_list
; ---------------------------------
_e4vm_rw_words_list::
	call	___sdcc_enter_ix
	push	af
	push	af
;e4vm_rw.c:76: Console_WriteLn();
	call	_Console_WriteLn_COMPACT
;e4vm_rw.c:77: _for__20 = (*v)->words_count - 1;
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	l, c
	ld	h, b
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	de, #0x04cd
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, e
	add	a, #0xff
	ld	-4 (ix), a
	ld	a, d
	adc	a, #0xff
	ld	-3 (ix), a
;e4vm_rw.c:79: while (i <= _for__20) {
	xor	a, a
	ld	-2 (ix), a
	ld	-1 (ix), a
00101$:
	ld	a, -4 (ix)
	sub	a, -2 (ix)
	ld	a, -3 (ix)
	sbc	a, -1 (ix)
	jp	PO, 00117$
	xor	a, #0x80
00117$:
	jp	M, 00103$
;e4vm_rw.c:80: _ptr__19 = *v;
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
;e4vm_rw.c:81: Console_WriteStr((void*)_ptr__19->words[i].word, 10);
	ld	hl, #0x00cd
	add	hl, de
	ex	de, hl
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	push	bc
	call	_Console_WriteStr_C_COMPACT
	ld	hl, #___str_6
	call	_Console_WriteStr_C_COMPACT
	pop	bc
;e4vm_rw.c:83: i += 1;
	inc	-2 (ix)
	jr	NZ,00101$
	inc	-1 (ix)
	jr	00101$
00103$:
;e4vm_rw.c:85: Console_WriteLn();
	call	_Console_WriteLn_COMPACT
;e4vm_rw.c:86: }
	ld	sp, ix
	pop	ix
	ret
___str_6:
	.ascii " "
	.db 0x00
;e4vm_rw.c:89: void e4vm_rw_read_string (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_rw_read_string
; ---------------------------------
_e4vm_rw_read_string::
;e4vm_rw.c:91: }
	ret
;e4vm_rw.c:94: void e4vm_rw_key (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_rw_key
; ---------------------------------
_e4vm_rw_key::
;e4vm_rw.c:96: }
	ret
;e4vm_rw.c:99: void e4vm_rw_add_core_words (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_rw_add_core_words
; ---------------------------------
_e4vm_rw_add_core_words::
	call	___sdcc_enter_ix
	ld	hl, #-80
	add	hl, sp
	ld	sp, hl
;e4vm_rw.c:109: __MOVE((CHAR*)".", _str__9, 2);
	ld	hl, #0
	add	hl, sp
	ld	c, l
	ld	b, h
	push	hl
	ld	de, #0x0002
	push	de
	ld	de, #___str_7
	push	de
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	hl
;e4vm_rw.c:110: e4vm_utils_add_core_word(v, (void*)_str__9, e4vm_rw_dot, 0);
	xor	a, a
	push	af
	inc	sp
	ld	bc, #_e4vm_rw_dot
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
;e4vm_rw.c:111: __MOVE((CHAR*)".s", _str__8, 3);
	ld	hl, #10
	add	hl, sp
	ld	c, l
	ld	b, h
	push	hl
	ld	de, #0x0003
	push	de
	ld	de, #___str_8
	push	de
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	hl
;e4vm_rw.c:112: e4vm_utils_add_core_word(v, (void*)_str__8, e4vm_rw_dot_s, 0);
	xor	a, a
	push	af
	inc	sp
	ld	bc, #_e4vm_rw_dot_s
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
;e4vm_rw.c:113: __MOVE((CHAR*)"cr", _str__7, 3);
	ld	hl, #20
	add	hl, sp
	ld	c, l
	ld	b, h
	push	hl
	ld	de, #0x0003
	push	de
	ld	de, #___str_9
	push	de
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	hl
;e4vm_rw.c:114: e4vm_utils_add_core_word(v, (void*)_str__7, e4vm_rw_cr, 0);
	xor	a, a
	push	af
	inc	sp
	ld	bc, #_e4vm_rw_cr
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
;e4vm_rw.c:115: __MOVE((CHAR*)"bl", _str__6, 3);
	ld	hl, #30
	add	hl, sp
	ld	c, l
	ld	b, h
	push	hl
	ld	de, #0x0003
	push	de
	ld	de, #___str_10
	push	de
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	hl
;e4vm_rw.c:116: e4vm_utils_add_core_word(v, (void*)_str__6, e4vm_rw_bl, 0);
	xor	a, a
	push	af
	inc	sp
	ld	bc, #_e4vm_rw_bl
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
;e4vm_rw.c:117: __MOVE((CHAR*)"words", _str__5, 6);
	ld	hl, #40
	add	hl, sp
	ld	c, l
	ld	b, h
	push	hl
	ld	de, #0x0006
	push	de
	ld	de, #___str_11
	push	de
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	hl
;e4vm_rw.c:118: e4vm_utils_add_core_word(v, (void*)_str__5, e4vm_rw_words_list, 0);
	xor	a, a
	push	af
	inc	sp
	ld	bc, #_e4vm_rw_words_list
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
;e4vm_rw.c:119: __MOVE((CHAR*)"word", _str__4, 5);
	ld	hl, #50
	add	hl, sp
	ld	c, l
	ld	b, h
	push	hl
	ld	de, #0x0005
	push	de
	ld	de, #___str_12
	push	de
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	hl
;e4vm_rw.c:120: e4vm_utils_add_core_word(v, (void*)_str__4, e4vm_rw_read_word, 0);
	xor	a, a
	push	af
	inc	sp
	ld	bc, #_e4vm_rw_read_word
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
;e4vm_rw.c:121: __MOVE((CHAR*)"s\"", _str__3, 3);
	ld	hl, #60
	add	hl, sp
	ld	c, l
	ld	b, h
	push	hl
	ld	de, #0x0003
	push	de
	ld	de, #___str_13
	push	de
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	hl
;e4vm_rw.c:122: e4vm_utils_add_core_word(v, (void*)_str__3, e4vm_rw_read_string, 0);
	xor	a, a
	push	af
	inc	sp
	ld	bc, #_e4vm_rw_read_string
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
;e4vm_rw.c:123: __MOVE((CHAR*)"key", _str__2, 4);
	ld	hl, #70
	add	hl, sp
	ld	c, l
	ld	b, h
	push	hl
	ld	de, #0x0004
	push	de
	ld	de, #___str_14
	push	de
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	hl
;e4vm_rw.c:124: e4vm_utils_add_core_word(v, (void*)_str__2, e4vm_rw_key, 0);
	xor	a, a
	push	af
	inc	sp
	ld	bc, #_e4vm_rw_key
	push	bc
	push	hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_core_word
;e4vm_rw.c:125: }
	ld	sp,ix
	pop	ix
	ret
___str_7:
	.ascii "."
	.db 0x00
___str_8:
	.ascii ".s"
	.db 0x00
___str_9:
	.ascii "cr"
	.db 0x00
___str_10:
	.ascii "bl"
	.db 0x00
___str_11:
	.ascii "words"
	.db 0x00
___str_12:
	.ascii "word"
	.db 0x00
___str_13:
	.ascii "s"
	.db 0x22
	.db 0x00
___str_14:
	.ascii "key"
	.db 0x00
;e4vm_rw.c:129: export void *e4vm_rw__init (void)
;	---------------------------------
; Function e4vm_rw__init
; ---------------------------------
_e4vm_rw__init::
;e4vm_rw.c:131: __DEFMOD;
	LD	HL,#. 
	LD (HL),#0xC9 
;e4vm_rw.c:134: __IMPORT(e4vm_type__init);
	call	_e4vm_type__init
;e4vm_rw.c:135: __IMPORT(e4vm_utils__init);
;e4vm_rw.c:139: }
	jp  _e4vm_utils__init
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
