;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.3 #11378 (MINGW32)
;--------------------------------------------------------
	.module e4vm
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _e4vm_utils__init
	.globl _e4vm_utils_read_word
	.globl _e4vm_utils_read_char
	.globl _e4vm_utils_init
	.globl _e4vm_boolean__init
	.globl _e4vm_math__init
	.globl _e4vm_math_add_core_words
	.globl _e4vm_stack__init
	.globl _e4vm_core_ext__init
	.globl _e4vm_core_ext_interpreter
	.globl _e4vm_core_ext_eval
	.globl _e4vm_core_ext_add_core_words
	.globl _e4vm_core__init
	.globl _e4vm_core_add_core_words
	.globl _e4vm_type__init
	.globl _Basic_Quit_IM1
	.globl _Basic_PAUSE_EI
	.globl _Console_Clear_COMPACT
	.globl _Console_WriteStr_C_COMPACT
	.globl _Console_WriteInt_COMPACT
	.globl _Console_WriteLn_COMPACT
	.globl _SYSTEM_STRCMPCC
	.globl _memcpy
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_e4vm_vm_static:
	.ds 859
_e4vm_vm:
	.ds 2
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
;e4vm.c:31: static void e4vm_do_hello (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_do_hello
; ---------------------------------
_e4vm_do_hello:
	call	___sdcc_enter_ix
;e4vm.c:33: (*v)->mem[30] = 1;
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #0x00c6
	add	hl, bc
	ld	(hl), #0x01
	inc	hl
	ld	(hl), #0x00
;e4vm.c:34: }
	pop	ix
	ret
;e4vm.c:36: static void e4vm_test_read_char (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_test_read_char
; ---------------------------------
_e4vm_test_read_char:
	call	___sdcc_enter_ix
;e4vm.c:41: Console_WriteStr((CHAR*)"read_char test ", 16);
	ld	hl, #___str_0
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:42: e4vm_utils_init(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_init
	pop	af
;e4vm.c:43: (*v)->buffer[0] = 'a';
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x030f
	add	hl, de
	ld	(hl), #0x61
;e4vm.c:44: (*v)->buffer[1] = 'b';
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x0310
	add	hl, de
	ld	(hl), #0x62
;e4vm.c:45: if (((e4vm_utils_read_char(v) == 'a' && e4vm_utils_read_char(v) == 'b') && e4vm_utils_read_char(v) == 0x00) && e4vm_utils_read_char(v) == 0x00) {
	push	bc
	call	_e4vm_utils_read_char
	pop	af
	ld	a, l
	sub	a, #0x61
	jr	NZ,00102$
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_read_char
	pop	af
	ld	a, l
	sub	a, #0x62
	jr	NZ,00102$
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_read_char
	pop	af
	ld	a, l
	or	a, a
	jr	NZ,00102$
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_read_char
	pop	af
	ld	a, l
	or	a, a
	jr	NZ,00102$
;e4vm.c:46: Console_WriteStrLn((CHAR*)" - ok", 6);
	ld	hl, #___str_1
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
	jr	00107$
00102$:
;e4vm.c:48: Console_WriteStrLn((CHAR*)" - error", 9);
	ld	hl, #___str_2
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
00107$:
;e4vm.c:50: }
	pop	ix
	ret
___str_0:
	.ascii "read_char test "
	.db 0x00
___str_1:
	.ascii " - ok"
	.db 0x00
___str_2:
	.ascii " - error"
	.db 0x00
;e4vm.c:52: static void e4vm_test_read_word (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_test_read_word
; ---------------------------------
_e4vm_test_read_word:
	call	___sdcc_enter_ix
	push	af
;e4vm.c:58: Console_WriteStr((CHAR*)"read_word test ", 16);
	ld	hl, #___str_3
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:59: e4vm_utils_init(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_init
	pop	af
;e4vm.c:60: __MOVE((CHAR*)"   some  len     string ", (*v)->buffer, 25);
	ld	bc, #___str_4+0
	ld	a, 4 (ix)
	ld	-2 (ix), a
	ld	a, 5 (ix)
	ld	-1 (ix), a
	pop	hl
	push	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x030f
	add	hl, de
	ld	de, #0x0019
	push	de
	push	bc
	push	hl
	call	_memcpy
	pop	af
	pop	af
	pop	af
;e4vm.c:61: (*v)->buffer_idx = 0;
	pop	hl
	push	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #0x034f
	add	hl, bc
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;e4vm.c:62: t = e4vm_utils_read_word(v);
	pop	hl
	push	hl
	push	hl
	call	_e4vm_utils_read_word
	pop	af
	ld	a, l
;e4vm.c:63: if (t && __STRCMPCC((*v)->readed_word, (CHAR*)"some", 5, (CHAR*)"e4vm", -21536) == 0) {
	or	a, a
	jr	Z,00102$
	ld	bc, #___str_5+0
	pop	hl
	push	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x0351
	add	hl, de
	push	bc
	push	hl
	call	_SYSTEM_STRCMPCC
	pop	af
	pop	af
	ld	c, l
	ld	a, h
	or	a, c
	jr	NZ,00102$
;e4vm.c:64: Console_WriteStrLn((CHAR*)"2 - ok", 7);
	ld	hl, #___str_6
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
	jr	00103$
00102$:
;e4vm.c:66: Console_WriteStrLn((CHAR*)"2 - error", 10);
	ld	hl, #___str_7
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
;e4vm.c:67: Console_WriteStr((CHAR*)"\'", 2);
	ld	hl, #___str_8
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:68: _ptr__12 = *v;
	pop	hl
	push	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
;e4vm.c:69: Console_WriteStr((void*)_ptr__12->readed_word, 10);
	ld	hl, #0x0351
	add	hl, bc
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:70: Console_WriteStrLn((CHAR*)"\'", 2);
	ld	hl, #___str_8
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
00103$:
;e4vm.c:72: t = e4vm_utils_read_word(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_read_word
	pop	af
	ld	a, l
;e4vm.c:73: if (t && __STRCMPCC((*v)->readed_word, (CHAR*)"len", 4, (CHAR*)"e4vm", -21753) == 0) {
	or	a, a
	jr	Z,00106$
	ld	bc, #___str_9+0
	pop	hl
	push	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x0351
	add	hl, de
	push	bc
	push	hl
	call	_SYSTEM_STRCMPCC
	pop	af
	pop	af
	ld	c, l
	ld	a, h
	or	a, c
	jr	NZ,00106$
;e4vm.c:74: Console_WriteStrLn((CHAR*)"3 - ok", 7);
	ld	hl, #___str_10
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
	jr	00107$
00106$:
;e4vm.c:76: Console_WriteStrLn((CHAR*)"3 - error", 10);
	ld	hl, #___str_11
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
;e4vm.c:77: Console_WriteStr((CHAR*)"\'", 2);
	ld	hl, #___str_8
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:78: _ptr__11 = *v;
	pop	hl
	push	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
;e4vm.c:79: Console_WriteStr((void*)_ptr__11->readed_word, 10);
	ld	hl, #0x0351
	add	hl, bc
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:80: Console_WriteStrLn((CHAR*)"\'", 2);
	ld	hl, #___str_8
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
00107$:
;e4vm.c:82: t = e4vm_utils_read_word(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_read_word
	pop	af
	ld	a, l
;e4vm.c:83: if (t && __STRCMPCC((*v)->readed_word, (CHAR*)"string", 7, (CHAR*)"e4vm", -21969) == 0) {
	or	a, a
	jr	Z,00110$
	ld	bc, #___str_12+0
	pop	hl
	push	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x0351
	add	hl, de
	push	bc
	push	hl
	call	_SYSTEM_STRCMPCC
	pop	af
	pop	af
	ld	c, l
	ld	a, h
	or	a, c
	jr	NZ,00110$
;e4vm.c:84: Console_WriteStrLn((CHAR*)"4 - ok", 7);
	ld	hl, #___str_13
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
	jr	00111$
00110$:
;e4vm.c:86: Console_WriteStrLn((CHAR*)"4 - error", 10);
	ld	hl, #___str_14
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
;e4vm.c:87: Console_WriteStr((CHAR*)"\'", 2);
	ld	hl, #___str_8
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:88: _ptr__10 = *v;
	pop	hl
	push	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
;e4vm.c:89: Console_WriteStr((void*)_ptr__10->readed_word, 10);
	ld	hl, #0x0351
	add	hl, bc
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:90: Console_WriteStrLn((CHAR*)"\'", 2);
	ld	hl, #___str_8
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
00111$:
;e4vm.c:92: t = e4vm_utils_read_word(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_read_word
	pop	af
	ld	a, l
;e4vm.c:93: if (!t) {
	or	a, a
	jr	NZ,00114$
;e4vm.c:94: Console_WriteStrLn((CHAR*)"5 - ok", 7);
	ld	hl, #___str_15
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
	jr	00116$
00114$:
;e4vm.c:96: Console_WriteStrLn((CHAR*)"5 - error", 10);
	ld	hl, #___str_16
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
00116$:
;e4vm.c:98: }
	pop	af
	pop	ix
	ret
___str_3:
	.ascii "read_word test "
	.db 0x00
___str_4:
	.ascii "   some  len     string "
	.db 0x00
___str_5:
	.ascii "some"
	.db 0x00
___str_6:
	.ascii "2 - ok"
	.db 0x00
___str_7:
	.ascii "2 - error"
	.db 0x00
___str_8:
	.ascii "'"
	.db 0x00
___str_9:
	.ascii "len"
	.db 0x00
___str_10:
	.ascii "3 - ok"
	.db 0x00
___str_11:
	.ascii "3 - error"
	.db 0x00
___str_12:
	.ascii "string"
	.db 0x00
___str_13:
	.ascii "4 - ok"
	.db 0x00
___str_14:
	.ascii "4 - error"
	.db 0x00
___str_15:
	.ascii "5 - ok"
	.db 0x00
___str_16:
	.ascii "5 - error"
	.db 0x00
;e4vm.c:100: static void e4vm_test_interpreter (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_test_interpreter
; ---------------------------------
_e4vm_test_interpreter:
	call	___sdcc_enter_ix
;e4vm.c:102: Console_WriteStr((CHAR*)"interpreter test ", 18);
	ld	hl, #___str_17
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:103: e4vm_utils_init(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_init
	pop	af
;e4vm.c:104: e4vm_core_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_add_core_words
	pop	af
;e4vm.c:105: e4vm_core_ext_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_ext_add_core_words
	pop	af
;e4vm.c:106: __MOVE((CHAR*)"1  2 3 ", (*v)->buffer, 8);
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x030f
	add	hl, de
	push	bc
	ld	de, #0x0008
	push	de
	ld	de, #___str_18
	push	de
	push	hl
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	bc
;e4vm.c:107: (*v)->buffer_idx = 0;
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x034f
	add	hl, de
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;e4vm.c:108: e4vm_core_ext_interpreter(v);
	push	bc
	push	bc
	call	_e4vm_core_ext_interpreter
	pop	af
;e4vm.c:109: if (((*v)->ds[(*v)->ds_p - 1] == 3 && (*v)->ds[(*v)->ds_p - 2] == 2) && (*v)->ds[(*v)->ds_p - 3] == 1) {
	pop	hl
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
	ld	l, a
	ld	h, #0x00
	add	hl, de
	ld	b, (hl)
	inc	hl
	ld	l, (hl)
	ld	a, b
	sub	a, #0x03
	or	a, l
	jr	NZ,00102$
	ld	a, c
	dec	a
	dec	a
	add	a, a
	ld	l, a
	ld	h, #0x00
	add	hl, de
	ld	b, (hl)
	inc	hl
	ld	l, (hl)
	ld	a, b
	sub	a, #0x02
	or	a, l
	jr	NZ,00102$
	ld	a, c
	add	a, #0xfd
	add	a, a
	ld	l, a
	ld	h, #0x00
	add	hl, de
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, c
	dec	a
	or	a, b
	jr	NZ,00102$
;e4vm.c:110: Console_WriteStrLn((CHAR*)" - ok", 6);
	ld	hl, #___str_19
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
	jr	00106$
00102$:
;e4vm.c:112: Console_WriteStrLn((CHAR*)" - error", 9);
	ld	hl, #___str_20
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
00106$:
;e4vm.c:114: }
	pop	ix
	ret
___str_17:
	.ascii "interpreter test "
	.db 0x00
___str_18:
	.ascii "1  2 3 "
	.db 0x00
___str_19:
	.ascii " - ok"
	.db 0x00
___str_20:
	.ascii " - error"
	.db 0x00
;e4vm.c:116: static void e4vm_test_eval (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_test_eval
; ---------------------------------
_e4vm_test_eval:
	call	___sdcc_enter_ix
	ld	hl, #-66
	add	hl, sp
	ld	sp, hl
;e4vm.c:119: Console_WriteStr((CHAR*)"eval test ", 11);
	ld	hl, #___str_21
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:120: e4vm_utils_init(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_init
	pop	af
;e4vm.c:121: e4vm_core_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_add_core_words
	pop	af
;e4vm.c:122: e4vm_core_ext_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_ext_add_core_words
	pop	af
;e4vm.c:123: __MOVE((CHAR*)"1  2 3 ", (*v)->buffer, 8);
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x030f
	add	hl, de
	push	bc
	ld	de, #0x0008
	push	de
	ld	de, #___str_22
	push	de
	push	hl
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	bc
;e4vm.c:124: (*v)->buffer_idx = 0;
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x034f
	add	hl, de
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;e4vm.c:125: __MOVE((CHAR*)"1  2 3 ", _str__3, 8);
	ld	hl, #0
	add	hl, sp
	ex	de, hl
	ld	-2 (ix), e
	ld	-1 (ix), d
	push	bc
	push	de
	ld	hl, #0x0008
	push	hl
	ld	hl, #___str_22
	push	hl
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	push	hl
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	de
	pop	bc
;e4vm.c:126: e4vm_core_ext_eval(v, (void*)_str__3);
	push	bc
	push	de
	push	bc
	call	_e4vm_core_ext_eval
	pop	af
	pop	af
;e4vm.c:127: if (((*v)->ds[(*v)->ds_p - 1] == 3 && (*v)->ds[(*v)->ds_p - 2] == 2) && (*v)->ds[(*v)->ds_p - 3] == 1) {
	pop	hl
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
	ld	l, a
	ld	h, #0x00
	add	hl, de
	ld	b, (hl)
	inc	hl
	ld	l, (hl)
	ld	a, b
	sub	a, #0x03
	or	a, l
	jr	NZ,00102$
	ld	a, c
	dec	a
	dec	a
	add	a, a
	ld	l, a
	ld	h, #0x00
	add	hl, de
	ld	b, (hl)
	inc	hl
	ld	l, (hl)
	ld	a, b
	sub	a, #0x02
	or	a, l
	jr	NZ,00102$
	ld	a, c
	add	a, #0xfd
	add	a, a
	ld	l, a
	ld	h, #0x00
	add	hl, de
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, c
	dec	a
	or	a, b
	jr	NZ,00102$
;e4vm.c:128: Console_WriteStrLn((CHAR*)" - ok", 6);
	ld	hl, #___str_23
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
	jr	00106$
00102$:
;e4vm.c:130: Console_WriteStrLn((CHAR*)" - error", 9);
	ld	hl, #___str_24
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
00106$:
;e4vm.c:132: }
	ld	sp, ix
	pop	ix
	ret
___str_21:
	.ascii "eval test "
	.db 0x00
___str_22:
	.ascii "1  2 3 "
	.db 0x00
___str_23:
	.ascii " - ok"
	.db 0x00
___str_24:
	.ascii " - error"
	.db 0x00
;e4vm.c:134: static void e4vm_test_math_evals (e4vm_type_x4thPtr *v, SHORTINT true_res)
;	---------------------------------
; Function e4vm_test_math_evals
; ---------------------------------
_e4vm_test_math_evals:
	call	___sdcc_enter_ix
;e4vm.c:137: (*v)->buffer_idx = 0;
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x034f
	add	hl, de
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;e4vm.c:138: _ptr__7 = *v;
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
;e4vm.c:139: Console_WriteStr((void*)_ptr__7->buffer, 64);
	ld	hl, #0x030f
	add	hl, de
	push	bc
	call	_Console_WriteStr_C_COMPACT
	ld	hl, #___str_25
	call	_Console_WriteStr_C_COMPACT
	pop	bc
;e4vm.c:141: e4vm_core_ext_interpreter(v);
	push	bc
	push	bc
	call	_e4vm_core_ext_interpreter
	pop	af
;e4vm.c:142: if ((*v)->ds[(*v)->ds_p - 1] == true_res) {
	pop	hl
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
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, 6 (ix)
	ld	h, 7 (ix)
	cp	a, a
	sbc	hl, bc
	jr	NZ,00102$
;e4vm.c:143: Console_WriteInt((*v)->ds[(*v)->ds_p - 1]);
	ld	l, c
	ld	h, b
	call	_Console_WriteInt_COMPACT
;e4vm.c:144: Console_WriteStrLn((CHAR*)" - ok", 6);
	ld	hl, #___str_26
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
	jr	00104$
00102$:
;e4vm.c:146: Console_WriteInt((*v)->ds[(*v)->ds_p - 1]);
	ld	l, c
	ld	h, b
	call	_Console_WriteInt_COMPACT
;e4vm.c:147: Console_WriteStrLn((CHAR*)" - error", 9);
	ld	hl, #___str_27
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
00104$:
;e4vm.c:149: }
	pop	ix
	ret
___str_25:
	.ascii " -> "
	.db 0x00
___str_26:
	.ascii " - ok"
	.db 0x00
___str_27:
	.ascii " - error"
	.db 0x00
;e4vm.c:151: static void e4vm_test_math_eval (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_test_math_eval
; ---------------------------------
_e4vm_test_math_eval:
	call	___sdcc_enter_ix
;e4vm.c:153: Console_WriteStrLn((CHAR*)"eval math test ", 16);
	ld	hl, #___str_28
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
;e4vm.c:154: e4vm_utils_init(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_init
	pop	af
;e4vm.c:155: e4vm_core_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_add_core_words
	pop	af
;e4vm.c:156: e4vm_core_ext_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_ext_add_core_words
	pop	af
;e4vm.c:157: e4vm_math_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_math_add_core_words
	pop	af
;e4vm.c:158: __MOVE((CHAR*)"10 2 -", (*v)->buffer, 7);
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x030f
	add	hl, de
	push	bc
	ld	de, #0x0007
	push	de
	ld	de, #___str_29
	push	de
	push	hl
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	bc
;e4vm.c:159: e4vm_test_math_evals(v, 8);
	push	bc
	ld	hl, #0x0008
	push	hl
	push	bc
	call	_e4vm_test_math_evals
	pop	af
	pop	af
	pop	bc
;e4vm.c:160: __MOVE((CHAR*)"4 10 -", (*v)->buffer, 7);
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x030f
	add	hl, de
	push	bc
	ld	de, #0x0007
	push	de
	ld	de, #___str_30
	push	de
	push	hl
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	bc
;e4vm.c:161: e4vm_test_math_evals(v, -6);
	push	bc
	ld	hl, #0xfffa
	push	hl
	push	bc
	call	_e4vm_test_math_evals
	pop	af
	pop	af
	pop	bc
;e4vm.c:162: __MOVE((CHAR*)"4 10 +", (*v)->buffer, 7);
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x030f
	add	hl, de
	push	bc
	ld	de, #0x0007
	push	de
	ld	de, #___str_31
	push	de
	push	hl
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	bc
;e4vm.c:163: e4vm_test_math_evals(v, 14);
	push	bc
	ld	hl, #0x000e
	push	hl
	push	bc
	call	_e4vm_test_math_evals
	pop	af
	pop	af
	pop	bc
;e4vm.c:164: __MOVE((CHAR*)"10 2 *", (*v)->buffer, 7);
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x030f
	add	hl, de
	push	bc
	ld	de, #0x0007
	push	de
	ld	de, #___str_32
	push	de
	push	hl
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	bc
;e4vm.c:165: e4vm_test_math_evals(v, 20);
	push	bc
	ld	hl, #0x0014
	push	hl
	push	bc
	call	_e4vm_test_math_evals
	pop	af
	pop	af
	pop	bc
;e4vm.c:166: __MOVE((CHAR*)"10 2 /", (*v)->buffer, 7);
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x030f
	add	hl, de
	push	bc
	ld	de, #0x0007
	push	de
	ld	de, #___str_33
	push	de
	push	hl
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	bc
;e4vm.c:167: e4vm_test_math_evals(v, 5);
	push	bc
	ld	hl, #0x0005
	push	hl
	push	bc
	call	_e4vm_test_math_evals
	pop	af
	pop	af
	pop	bc
;e4vm.c:168: __MOVE((CHAR*)"10 2 mod", (*v)->buffer, 9);
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x030f
	add	hl, de
	push	bc
	ld	de, #0x0009
	push	de
	ld	de, #___str_34
	push	de
	push	hl
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	bc
;e4vm.c:169: e4vm_test_math_evals(v, 0);
	push	bc
	ld	hl, #0x0000
	push	hl
	push	bc
	call	_e4vm_test_math_evals
	pop	af
	pop	af
	pop	bc
;e4vm.c:170: __MOVE((CHAR*)"10 1+", (*v)->buffer, 6);
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x030f
	add	hl, de
	push	bc
	ld	de, #0x0006
	push	de
	ld	de, #___str_35
	push	de
	push	hl
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	bc
;e4vm.c:171: e4vm_test_math_evals(v, 11);
	push	bc
	ld	hl, #0x000b
	push	hl
	push	bc
	call	_e4vm_test_math_evals
	pop	af
	pop	af
	pop	bc
;e4vm.c:172: __MOVE((CHAR*)"10 1-", (*v)->buffer, 6);
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x030f
	add	hl, de
	push	bc
	ld	de, #0x0006
	push	de
	ld	de, #___str_36
	push	de
	push	hl
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	bc
;e4vm.c:173: e4vm_test_math_evals(v, 9);
	ld	hl, #0x0009
	push	hl
	push	bc
	call	_e4vm_test_math_evals
	pop	af
	pop	af
;e4vm.c:174: }
	pop	ix
	ret
___str_28:
	.ascii "eval math test "
	.db 0x00
___str_29:
	.ascii "10 2 -"
	.db 0x00
___str_30:
	.ascii "4 10 -"
	.db 0x00
___str_31:
	.ascii "4 10 +"
	.db 0x00
___str_32:
	.ascii "10 2 *"
	.db 0x00
___str_33:
	.ascii "10 2 /"
	.db 0x00
___str_34:
	.ascii "10 2 mod"
	.db 0x00
___str_35:
	.ascii "10 1+"
	.db 0x00
___str_36:
	.ascii "10 1-"
	.db 0x00
;e4vm.c:177: int main (int argc, char **argv)
;	---------------------------------
; Function main
; ---------------------------------
_main::
;e4vm.c:182: __IMPORT(e4vm_boolean__init);
	call	_e4vm_boolean__init
;e4vm.c:183: __IMPORT(e4vm_core__init);
	call	_e4vm_core__init
;e4vm.c:184: __IMPORT(e4vm_core_ext__init);
	call	_e4vm_core_ext__init
;e4vm.c:185: __IMPORT(e4vm_math__init);
	call	_e4vm_math__init
;e4vm.c:186: __IMPORT(e4vm_stack__init);
	call	_e4vm_stack__init
;e4vm.c:187: __IMPORT(e4vm_type__init);
	call	_e4vm_type__init
;e4vm.c:188: __IMPORT(e4vm_utils__init);
	call	_e4vm_utils__init
;e4vm.c:191: Basic_Init();
	res	4,1(iy) 
	call 0x1642 
;e4vm.c:192: Console_Clear(7);
	ld	l, #0x07
	call	_Console_Clear_COMPACT
;e4vm.c:193: Console_SetColors(56);
	ld	hl, #_Console_attrib
	ld	(hl), #0x38
;e4vm.c:194: e4vm_vm = (e4vm_type_x4thPtr)((SYSTEM_ADRINT)&e4vm_vm_static);
	ld	hl, #_e4vm_vm_static
	ld	(_e4vm_vm), hl
;e4vm.c:195: e4vm_test_eval(&e4vm_vm);
	ld	hl, #_e4vm_vm
	push	hl
	call	_e4vm_test_eval
;e4vm.c:196: e4vm_test_math_eval(&e4vm_vm);
	ld	hl, #_e4vm_vm
	ex	(sp),hl
	call	_e4vm_test_math_eval
	pop	af
;e4vm.c:197: Basic_PAUSE(0);
	ld	hl, #0x0000
	call	_Basic_PAUSE_EI
;e4vm.c:198: Basic_Quit();
;e4vm.c:199: __FINI;
;e4vm.c:200: }
	jp  _Basic_Quit_IM1
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
