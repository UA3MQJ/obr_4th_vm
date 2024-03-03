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
	.globl _e4vm_utils_true_const
	.globl _e4vm_utils_stack_ds_push
	.globl _e4vm_utils_read_string
	.globl _e4vm_utils_read_char
	.globl _e4vm_utils_init
	.globl _e4vm_utils_here_to_wp
	.globl _e4vm_utils_false_const
	.globl _e4vm_utils_add_op_from_string
	.globl _e4vm_utils_add_op
	.globl _e4vm_utils_add_core_word
	.globl _e4vm_boolean__init
	.globl _e4vm_boolean_add_core_words
	.globl _e4vm_math__init
	.globl _e4vm_math_add_core_words
	.globl _e4vm_stack__init
	.globl _e4vm_stack_add_core_words
	.globl _e4vm_core_ext__init
	.globl _e4vm_core_ext_add_core_words
	.globl _e4vm_core__init
	.globl _e4vm_core_do_next
	.globl _e4vm_core_do_list
	.globl _e4vm_core_add_core_words
	.globl _e4vm_type__init
	.globl _Basic_Quit_IM1
	.globl _Basic_PAUSE_EI
	.globl _Console_Clear_COMPACT
	.globl _Console_WriteStr_C_COMPACT
	.globl _Console_WriteInt_COMPACT
	.globl _Console_WriteLn_COMPACT
	.globl _Console_WriteCh_COMPACT
	.globl _memcpy
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_e4vm_vm_static:
	.ds 719
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
;e4vm.c:49: static void e4vm_do_hello (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_do_hello
; ---------------------------------
_e4vm_do_hello:
	call	___sdcc_enter_ix
;e4vm.c:51: (*v)->mem[30] = 1;
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
;e4vm.c:52: }
	pop	ix
	ret
;e4vm.c:54: static void e4vm_test1 (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_test1
; ---------------------------------
_e4vm_test1:
	call	___sdcc_enter_ix
	ld	hl, #-64
	add	hl, sp
	ld	sp, hl
;e4vm.c:64: Console_WriteStr((CHAR*)"e4vm_core test1 ", 17);
	ld	hl, #___str_0
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:65: e4vm_utils_init(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_init
	pop	af
;e4vm.c:66: e4vm_core_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_add_core_words
	pop	af
;e4vm.c:67: __MOVE((CHAR*)"hello", _str__10, 6);
	ld	hl, #0
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0006
	push	hl
	ld	hl, #___str_1
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	de
;e4vm.c:68: e4vm_utils_add_core_word(v, (void*)_str__10, e4vm_do_hello, 0);
	xor	a, a
	push	af
	inc	sp
	ld	hl, #_e4vm_do_hello
	push	hl
	push	de
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_core_word
	pop	af
	pop	af
	pop	af
	inc	sp
;e4vm.c:69: __MOVE((CHAR*)"dolist", _str__9, 7);
	ld	hl, #8
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0007
	push	hl
	ld	hl, #___str_2
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
	pop	af
;e4vm.c:71: __MOVE((CHAR*)"hello", _str__8, 6);
	ld	hl, #16
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0006
	push	hl
	ld	hl, #___str_1
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
	pop	af
;e4vm.c:73: __MOVE((CHAR*)"exit", _str__7, 5);
	ld	hl, #24
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0005
	push	hl
	ld	hl, #___str_3
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
	pop	af
;e4vm.c:75: __MOVE((CHAR*)"dolist", _str__6, 7);
	ld	hl, #32
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0007
	push	hl
	ld	hl, #___str_2
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
	pop	af
;e4vm.c:77: __MOVE((CHAR*)"nop", _str__5, 4);
	ld	hl, #40
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0004
	push	hl
	ld	hl, #___str_4
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
;e4vm.c:79: e4vm_utils_add_op(v, 4);
	ld	hl, #0x0004
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op
	pop	af
	pop	af
;e4vm.c:80: __MOVE((CHAR*)"nop", _str__4, 4);
	ld	hl, #48
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0004
	push	hl
	ld	hl, #___str_4
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
	pop	af
;e4vm.c:82: __MOVE((CHAR*)"exit", _str__3, 5);
	ld	hl, #56
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0005
	push	hl
	ld	hl, #___str_3
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
	pop	af
;e4vm.c:84: (*v)->wp = 8;
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	inc	de
	inc	de
	ld	h, d
	ld	l, e
	ld	(hl), #0x08
	inc	hl
	ld	(hl), #0x00
;e4vm.c:85: e4vm_core_do_list(v);
	push	bc
	push	bc
	call	_e4vm_core_do_list
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_next
	pop	af
;e4vm.c:87: if ((*v)->mem[30] == 1) {
	pop	hl
	ld	c, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, c
	ld	de, #0x00c6
	add	hl, de
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, c
	dec	a
	or	a, b
	jr	NZ,00102$
;e4vm.c:88: Console_WriteStr((CHAR*)" - ok", 6);
	ld	hl, #___str_5
	call	_Console_WriteStr_C_COMPACT
	jr	00103$
00102$:
;e4vm.c:90: Console_WriteStr((CHAR*)" - error", 9);
	ld	hl, #___str_6
	call	_Console_WriteStr_C_COMPACT
00103$:
;e4vm.c:92: Console_WriteStrLn((CHAR*)" ", 2);
	ld	hl, #___str_7
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
;e4vm.c:93: }
	ld	sp, ix
	pop	ix
	ret
___str_0:
	.ascii "e4vm_core test1 "
	.db 0x00
___str_1:
	.ascii "hello"
	.db 0x00
___str_2:
	.ascii "dolist"
	.db 0x00
___str_3:
	.ascii "exit"
	.db 0x00
___str_4:
	.ascii "nop"
	.db 0x00
___str_5:
	.ascii " - ok"
	.db 0x00
___str_6:
	.ascii " - error"
	.db 0x00
___str_7:
	.ascii " "
	.db 0x00
;e4vm.c:95: static void e4vm_test_dolit (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_test_dolit
; ---------------------------------
_e4vm_test_dolit:
	call	___sdcc_enter_ix
	ld	hl, #-24
	add	hl, sp
	ld	sp, hl
;e4vm.c:100: Console_WriteStr((CHAR*)"Test dolit ", 12);
	ld	hl, #___str_8
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:101: e4vm_utils_init(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_init
	pop	af
;e4vm.c:102: e4vm_core_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_add_core_words
	pop	af
;e4vm.c:103: e4vm_core_ext_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_ext_add_core_words
	pop	af
;e4vm.c:104: e4vm_utils_here_to_wp(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_here_to_wp
	pop	af
;e4vm.c:105: __MOVE((CHAR*)"dolist", _str__37, 7);
	ld	hl, #0
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0007
	push	hl
	ld	hl, #___str_9
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
	pop	af
;e4vm.c:107: __MOVE((CHAR*)"dolit", _str__36, 6);
	ld	hl, #8
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0006
	push	hl
	ld	hl, #___str_10
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
;e4vm.c:109: e4vm_utils_add_op(v, 555);
	ld	hl, #0x022b
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op
	pop	af
	pop	af
;e4vm.c:110: __MOVE((CHAR*)"exit", _str__35, 5);
	ld	hl, #16
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0005
	push	hl
	ld	hl, #___str_11
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
	pop	af
;e4vm.c:112: e4vm_core_do_list(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_list
	pop	af
;e4vm.c:113: e4vm_core_do_next(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_next
	pop	af
;e4vm.c:114: if ((*v)->ds[0] == 555) {
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	ld	e, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, e
	ld	de, #0x0044
	add	hl, de
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, c
	sub	a, #0x2b
	jr	NZ,00102$
	ld	a, b
	sub	a, #0x02
	jr	NZ,00102$
;e4vm.c:115: Console_WriteStrLn((CHAR*)" - ok", 6);
	ld	hl, #___str_12
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
	jr	00104$
00102$:
;e4vm.c:117: Console_WriteStrLn((CHAR*)" - error", 9);
	ld	hl, #___str_13
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
00104$:
;e4vm.c:119: }
	ld	sp, ix
	pop	ix
	ret
___str_8:
	.ascii "Test dolit "
	.db 0x00
___str_9:
	.ascii "dolist"
	.db 0x00
___str_10:
	.ascii "dolit"
	.db 0x00
___str_11:
	.ascii "exit"
	.db 0x00
___str_12:
	.ascii " - ok"
	.db 0x00
___str_13:
	.ascii " - error"
	.db 0x00
;e4vm.c:121: static void e4vm_test_drop (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_test_drop
; ---------------------------------
_e4vm_test_drop:
	call	___sdcc_enter_ix
	ld	hl, #-24
	add	hl, sp
	ld	sp, hl
;e4vm.c:126: Console_WriteStr((CHAR*)"Test drop ", 11);
	ld	hl, #___str_14
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:127: e4vm_utils_init(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_init
	pop	af
;e4vm.c:128: e4vm_core_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_add_core_words
	pop	af
;e4vm.c:129: e4vm_stack_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_stack_add_core_words
	pop	af
;e4vm.c:130: e4vm_utils_here_to_wp(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_here_to_wp
	pop	af
;e4vm.c:131: __MOVE((CHAR*)"dolist", _str__41, 7);
	ld	hl, #0
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0007
	push	hl
	ld	hl, #___str_15
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
	pop	af
;e4vm.c:133: __MOVE((CHAR*)"drop", _str__40, 5);
	ld	hl, #8
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0005
	push	hl
	ld	hl, #___str_16
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
	pop	af
;e4vm.c:135: __MOVE((CHAR*)"exit", _str__39, 5);
	ld	hl, #16
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0005
	push	hl
	ld	hl, #___str_17
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
;e4vm.c:137: e4vm_utils_stack_ds_push(v, 1);
	ld	hl, #0x0001
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_stack_ds_push
	pop	af
;e4vm.c:138: e4vm_utils_stack_ds_push(v, 2);
	ld	hl, #0x0002
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_stack_ds_push
	pop	af
	pop	af
;e4vm.c:139: e4vm_core_do_list(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_list
	pop	af
;e4vm.c:140: e4vm_core_do_next(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_next
	pop	af
;e4vm.c:141: if ((*v)->ds[(*v)->ds_p - 1] == 1) {
	ld	l, 4 (ix)
	ld	h, 5 (ix)
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
	ld	a, c
	dec	a
	or	a, b
	jr	NZ,00102$
;e4vm.c:142: Console_WriteStrLn((CHAR*)" - ok", 6);
	ld	hl, #___str_18
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
	jr	00104$
00102$:
;e4vm.c:144: Console_WriteStrLn((CHAR*)" - error", 9);
	ld	hl, #___str_19
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
00104$:
;e4vm.c:146: }
	ld	sp, ix
	pop	ix
	ret
___str_14:
	.ascii "Test drop "
	.db 0x00
___str_15:
	.ascii "dolist"
	.db 0x00
___str_16:
	.ascii "drop"
	.db 0x00
___str_17:
	.ascii "exit"
	.db 0x00
___str_18:
	.ascii " - ok"
	.db 0x00
___str_19:
	.ascii " - error"
	.db 0x00
;e4vm.c:148: static void e4vm_test_swap (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_test_swap
; ---------------------------------
_e4vm_test_swap:
	call	___sdcc_enter_ix
	ld	hl, #-24
	add	hl, sp
	ld	sp, hl
;e4vm.c:153: Console_WriteStr((CHAR*)"Test swap ", 11);
	ld	hl, #___str_20
	call	_Console_WriteStr_C_COMPACT
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
;e4vm.c:156: e4vm_stack_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_stack_add_core_words
	pop	af
;e4vm.c:157: e4vm_utils_here_to_wp(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_here_to_wp
	pop	af
;e4vm.c:158: __MOVE((CHAR*)"dolist", _str__95, 7);
	ld	hl, #0
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0007
	push	hl
	ld	hl, #___str_21
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
	pop	af
;e4vm.c:160: __MOVE((CHAR*)"swap", _str__94, 5);
	ld	hl, #8
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0005
	push	hl
	ld	hl, #___str_22
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
	pop	af
;e4vm.c:162: __MOVE((CHAR*)"exit", _str__93, 5);
	ld	hl, #16
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0005
	push	hl
	ld	hl, #___str_23
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
;e4vm.c:164: e4vm_utils_stack_ds_push(v, 1);
	ld	hl, #0x0001
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_stack_ds_push
	pop	af
;e4vm.c:165: e4vm_utils_stack_ds_push(v, 2);
	ld	hl, #0x0002
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_stack_ds_push
	pop	af
	pop	af
;e4vm.c:166: e4vm_core_do_list(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_list
	pop	af
;e4vm.c:167: e4vm_core_do_next(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_next
	pop	af
;e4vm.c:168: if ((*v)->ds[0] == 2 && (*v)->ds[1] == 1) {
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, c
	ld	h, b
	ld	de, #0x0044
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, e
	sub	a, #0x02
	or	a, d
	jr	NZ,00102$
	ld	l, c
	ld	h, b
	ld	de, #0x0046
	add	hl, de
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, c
	dec	a
	or	a, b
	jr	NZ,00102$
;e4vm.c:169: Console_WriteStrLn((CHAR*)" - ok", 6);
	ld	hl, #___str_24
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
	jr	00105$
00102$:
;e4vm.c:171: Console_WriteStrLn((CHAR*)" - error", 9);
	ld	hl, #___str_25
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
00105$:
;e4vm.c:173: }
	ld	sp, ix
	pop	ix
	ret
___str_20:
	.ascii "Test swap "
	.db 0x00
___str_21:
	.ascii "dolist"
	.db 0x00
___str_22:
	.ascii "swap"
	.db 0x00
___str_23:
	.ascii "exit"
	.db 0x00
___str_24:
	.ascii " - ok"
	.db 0x00
___str_25:
	.ascii " - error"
	.db 0x00
;e4vm.c:175: static void e4vm_test_dup (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_test_dup
; ---------------------------------
_e4vm_test_dup:
	call	___sdcc_enter_ix
	ld	hl, #-26
	add	hl, sp
	ld	sp, hl
;e4vm.c:180: Console_WriteStr((CHAR*)"Test dup ", 10);
	ld	hl, #___str_26
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:181: e4vm_utils_init(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_init
	pop	af
;e4vm.c:182: e4vm_core_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_add_core_words
	pop	af
;e4vm.c:183: e4vm_stack_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_stack_add_core_words
	pop	af
;e4vm.c:184: e4vm_utils_here_to_wp(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_here_to_wp
	pop	af
;e4vm.c:185: __MOVE((CHAR*)"dolist", _str__45, 7);
	ld	hl, #0
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0007
	push	hl
	ld	hl, #___str_27
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
	pop	af
;e4vm.c:187: __MOVE((CHAR*)"dup", _str__44, 4);
	ld	hl, #8
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0004
	push	hl
	ld	hl, #___str_28
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
	pop	af
;e4vm.c:189: __MOVE((CHAR*)"exit", _str__43, 5);
	ld	hl, #16
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0005
	push	hl
	ld	hl, #___str_29
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
;e4vm.c:191: e4vm_utils_stack_ds_push(v, 1);
	ld	hl, #0x0001
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_stack_ds_push
	pop	af
	pop	af
;e4vm.c:192: e4vm_core_do_list(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_list
	pop	af
;e4vm.c:193: e4vm_core_do_next(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_next
	pop	af
;e4vm.c:194: if (((*v)->ds[0] == (*v)->ds[1] && (*v)->ds[0] == 1) && (*v)->ds_p == 2) {
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, c
	ld	h, b
	ld	e, c
	ld	d, b
	push	bc
	ld	bc, #0x0044
	add	hl, bc
	pop	bc
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
	ex	de,hl
	ld	de, #0x0046
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	cp	a, a
	sbc	hl, de
	jr	NZ,00102$
	ld	a, -2 (ix)
	dec	a
	or	a, -1 (ix)
	jr	NZ,00102$
	ld	l, c
	ld	h, b
	ld	de, #0x0086
	add	hl, de
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, c
	sub	a, #0x02
	or	a, b
	jr	NZ,00102$
;e4vm.c:195: Console_WriteStrLn((CHAR*)" - ok", 6);
	ld	hl, #___str_30
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
	jr	00106$
00102$:
;e4vm.c:197: Console_WriteStrLn((CHAR*)" - error", 9);
	ld	hl, #___str_31
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
00106$:
;e4vm.c:199: }
	ld	sp, ix
	pop	ix
	ret
___str_26:
	.ascii "Test dup "
	.db 0x00
___str_27:
	.ascii "dolist"
	.db 0x00
___str_28:
	.ascii "dup"
	.db 0x00
___str_29:
	.ascii "exit"
	.db 0x00
___str_30:
	.ascii " - ok"
	.db 0x00
___str_31:
	.ascii " - error"
	.db 0x00
;e4vm.c:201: static void e4vm_test_over (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_test_over
; ---------------------------------
_e4vm_test_over:
	call	___sdcc_enter_ix
	ld	hl, #-24
	add	hl, sp
	ld	sp, hl
;e4vm.c:206: Console_WriteStr((CHAR*)"Test over ", 11);
	ld	hl, #___str_32
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:207: e4vm_utils_init(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_init
	pop	af
;e4vm.c:208: e4vm_core_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_add_core_words
	pop	af
;e4vm.c:209: e4vm_stack_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_stack_add_core_words
	pop	af
;e4vm.c:210: e4vm_utils_here_to_wp(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_here_to_wp
	pop	af
;e4vm.c:211: __MOVE((CHAR*)"dolist", _str__84, 7);
	ld	hl, #0
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0007
	push	hl
	ld	hl, #___str_33
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
	pop	af
;e4vm.c:213: __MOVE((CHAR*)"over", _str__83, 5);
	ld	hl, #8
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0005
	push	hl
	ld	hl, #___str_34
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
	pop	af
;e4vm.c:215: __MOVE((CHAR*)"exit", _str__82, 5);
	ld	hl, #16
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0005
	push	hl
	ld	hl, #___str_35
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
;e4vm.c:217: e4vm_utils_stack_ds_push(v, 1);
	ld	hl, #0x0001
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_stack_ds_push
	pop	af
;e4vm.c:218: e4vm_utils_stack_ds_push(v, 2);
	ld	hl, #0x0002
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_stack_ds_push
	pop	af
	pop	af
;e4vm.c:219: e4vm_core_do_list(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_list
	pop	af
;e4vm.c:220: e4vm_core_do_next(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_next
	pop	af
;e4vm.c:221: if ((((*v)->ds[0] == 1 && (*v)->ds[1] == 2) && (*v)->ds[2] == 1) && (*v)->ds_p == 3) {
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, c
	ld	h, b
	ld	de, #0x0044
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, e
	dec	a
	or	a, d
	jr	NZ,00102$
	ld	l, c
	ld	h, b
	ld	de, #0x0046
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, e
	sub	a, #0x02
	or	a, d
	jr	NZ,00102$
	ld	l, c
	ld	h, b
	ld	de, #0x0048
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, e
	dec	a
	or	a, d
	jr	NZ,00102$
	ld	l, c
	ld	h, b
	ld	de, #0x0086
	add	hl, de
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, c
	sub	a, #0x03
	or	a, b
	jr	NZ,00102$
;e4vm.c:222: Console_WriteStrLn((CHAR*)" - ok", 6);
	ld	hl, #___str_36
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
	jr	00107$
00102$:
;e4vm.c:224: Console_WriteStrLn((CHAR*)" - error", 9);
	ld	hl, #___str_37
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
00107$:
;e4vm.c:226: }
	ld	sp, ix
	pop	ix
	ret
___str_32:
	.ascii "Test over "
	.db 0x00
___str_33:
	.ascii "dolist"
	.db 0x00
___str_34:
	.ascii "over"
	.db 0x00
___str_35:
	.ascii "exit"
	.db 0x00
___str_36:
	.ascii " - ok"
	.db 0x00
___str_37:
	.ascii " - error"
	.db 0x00
;e4vm.c:228: static void e4vm_test_rot (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_test_rot
; ---------------------------------
_e4vm_test_rot:
	call	___sdcc_enter_ix
	ld	hl, #-24
	add	hl, sp
	ld	sp, hl
;e4vm.c:233: Console_WriteStr((CHAR*)"Test rot ", 10);
	ld	hl, #___str_38
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:234: e4vm_utils_init(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_init
	pop	af
;e4vm.c:235: e4vm_core_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_add_core_words
	pop	af
;e4vm.c:236: e4vm_stack_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_stack_add_core_words
	pop	af
;e4vm.c:237: e4vm_utils_here_to_wp(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_here_to_wp
	pop	af
;e4vm.c:238: __MOVE((CHAR*)"dolist", _str__91, 7);
	ld	hl, #0
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0007
	push	hl
	ld	hl, #___str_39
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
	pop	af
;e4vm.c:240: __MOVE((CHAR*)"rot", _str__90, 4);
	ld	hl, #8
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0004
	push	hl
	ld	hl, #___str_40
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
	pop	af
;e4vm.c:242: __MOVE((CHAR*)"exit", _str__89, 5);
	ld	hl, #16
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0005
	push	hl
	ld	hl, #___str_41
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
;e4vm.c:244: e4vm_utils_stack_ds_push(v, 1);
	ld	hl, #0x0001
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_stack_ds_push
	pop	af
;e4vm.c:245: e4vm_utils_stack_ds_push(v, 2);
	ld	hl, #0x0002
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_stack_ds_push
	pop	af
;e4vm.c:246: e4vm_utils_stack_ds_push(v, 3);
	ld	hl, #0x0003
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_stack_ds_push
	pop	af
	pop	af
;e4vm.c:247: e4vm_core_do_list(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_list
	pop	af
;e4vm.c:248: e4vm_core_do_next(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_next
	pop	af
;e4vm.c:249: if (((*v)->ds[0] == 2 && (*v)->ds[1] == 3) && (*v)->ds[2] == 1) {
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, c
	ld	h, b
	ld	de, #0x0044
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, e
	sub	a, #0x02
	or	a, d
	jr	NZ,00102$
	ld	l, c
	ld	h, b
	ld	de, #0x0046
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, e
	sub	a, #0x03
	or	a, d
	jr	NZ,00102$
	ld	l, c
	ld	h, b
	ld	de, #0x0048
	add	hl, de
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, c
	dec	a
	or	a, b
	jr	NZ,00102$
;e4vm.c:250: Console_WriteStrLn((CHAR*)" - ok", 6);
	ld	hl, #___str_42
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
	jr	00106$
00102$:
;e4vm.c:252: Console_WriteStrLn((CHAR*)" - error", 9);
	ld	hl, #___str_43
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
00106$:
;e4vm.c:254: }
	ld	sp, ix
	pop	ix
	ret
___str_38:
	.ascii "Test rot "
	.db 0x00
___str_39:
	.ascii "dolist"
	.db 0x00
___str_40:
	.ascii "rot"
	.db 0x00
___str_41:
	.ascii "exit"
	.db 0x00
___str_42:
	.ascii " - ok"
	.db 0x00
___str_43:
	.ascii " - error"
	.db 0x00
;e4vm.c:256: static void e4vm_test_nrot (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_test_nrot
; ---------------------------------
_e4vm_test_nrot:
	call	___sdcc_enter_ix
	ld	hl, #-24
	add	hl, sp
	ld	sp, hl
;e4vm.c:261: Console_WriteStr((CHAR*)"Test nrot ", 11);
	ld	hl, #___str_44
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:262: e4vm_utils_init(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_init
	pop	af
;e4vm.c:263: e4vm_core_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_add_core_words
	pop	af
;e4vm.c:264: e4vm_stack_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_stack_add_core_words
	pop	af
;e4vm.c:265: e4vm_utils_here_to_wp(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_here_to_wp
	pop	af
;e4vm.c:266: __MOVE((CHAR*)"dolist", _str__76, 7);
	ld	hl, #0
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0007
	push	hl
	ld	hl, #___str_45
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
	pop	af
;e4vm.c:268: __MOVE((CHAR*)"nrot", _str__75, 5);
	ld	hl, #8
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0005
	push	hl
	ld	hl, #___str_46
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
	pop	af
;e4vm.c:270: __MOVE((CHAR*)"exit", _str__74, 5);
	ld	hl, #16
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0005
	push	hl
	ld	hl, #___str_47
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
;e4vm.c:272: e4vm_utils_stack_ds_push(v, 1);
	ld	hl, #0x0001
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_stack_ds_push
	pop	af
;e4vm.c:273: e4vm_utils_stack_ds_push(v, 2);
	ld	hl, #0x0002
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_stack_ds_push
	pop	af
;e4vm.c:274: e4vm_utils_stack_ds_push(v, 3);
	ld	hl, #0x0003
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_stack_ds_push
	pop	af
	pop	af
;e4vm.c:275: e4vm_core_do_list(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_list
	pop	af
;e4vm.c:276: e4vm_core_do_next(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_next
	pop	af
;e4vm.c:277: if (((*v)->ds[0] == 3 && (*v)->ds[1] == 1) && (*v)->ds[2] == 2) {
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, c
	ld	h, b
	ld	de, #0x0044
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, e
	sub	a, #0x03
	or	a, d
	jr	NZ,00102$
	ld	l, c
	ld	h, b
	ld	de, #0x0046
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, e
	dec	a
	or	a, d
	jr	NZ,00102$
	ld	l, c
	ld	h, b
	ld	de, #0x0048
	add	hl, de
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, c
	sub	a, #0x02
	or	a, b
	jr	NZ,00102$
;e4vm.c:278: Console_WriteStrLn((CHAR*)" - ok", 6);
	ld	hl, #___str_48
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
	jr	00106$
00102$:
;e4vm.c:280: Console_WriteStrLn((CHAR*)" - error", 9);
	ld	hl, #___str_49
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
00106$:
;e4vm.c:282: }
	ld	sp, ix
	pop	ix
	ret
___str_44:
	.ascii "Test nrot "
	.db 0x00
___str_45:
	.ascii "dolist"
	.db 0x00
___str_46:
	.ascii "nrot"
	.db 0x00
___str_47:
	.ascii "exit"
	.db 0x00
___str_48:
	.ascii " - ok"
	.db 0x00
___str_49:
	.ascii " - error"
	.db 0x00
;e4vm.c:284: static void e4vm_test_minus (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_test_minus
; ---------------------------------
_e4vm_test_minus:
	call	___sdcc_enter_ix
	ld	hl, #-32
	add	hl, sp
	ld	sp, hl
;e4vm.c:290: Console_WriteStr((CHAR*)"Test math -/+ ", 15);
	ld	hl, #___str_50
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:291: e4vm_utils_init(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_init
	pop	af
;e4vm.c:292: e4vm_core_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_add_core_words
	pop	af
;e4vm.c:293: e4vm_math_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_math_add_core_words
	pop	af
;e4vm.c:294: e4vm_utils_here_to_wp(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_here_to_wp
	pop	af
;e4vm.c:295: __MOVE((CHAR*)"dolist", _str__64, 7);
	ld	hl, #0
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0007
	push	hl
	ld	hl, #___str_51
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
	pop	af
;e4vm.c:297: __MOVE((CHAR*)"-", _str__63, 2);
	ld	hl, #8
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0002
	push	hl
	ld	hl, #___str_52
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
	pop	af
;e4vm.c:299: __MOVE((CHAR*)"+", _str__62, 2);
	ld	hl, #16
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0002
	push	hl
	ld	hl, #___str_53
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
	pop	af
;e4vm.c:301: __MOVE((CHAR*)"exit", _str__61, 5);
	ld	hl, #24
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0005
	push	hl
	ld	hl, #___str_54
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
;e4vm.c:303: e4vm_utils_stack_ds_push(v, 1);
	ld	hl, #0x0001
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_stack_ds_push
	pop	af
;e4vm.c:304: e4vm_utils_stack_ds_push(v, 20);
	ld	hl, #0x0014
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_stack_ds_push
	pop	af
;e4vm.c:305: e4vm_utils_stack_ds_push(v, 3);
	ld	hl, #0x0003
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_stack_ds_push
	pop	af
	pop	af
;e4vm.c:306: e4vm_core_do_list(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_list
	pop	af
;e4vm.c:307: e4vm_core_do_next(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_next
	pop	af
;e4vm.c:308: if ((*v)->ds[0] == 18) {
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	de, #0x0044
	add	hl, de
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, c
	sub	a, #0x12
	or	a, b
	jr	NZ,00102$
;e4vm.c:309: Console_WriteStrLn((CHAR*)" - ok", 6);
	ld	hl, #___str_55
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
	jr	00104$
00102$:
;e4vm.c:311: Console_WriteStrLn((CHAR*)" - error", 9);
	ld	hl, #___str_56
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
00104$:
;e4vm.c:313: }
	ld	sp, ix
	pop	ix
	ret
___str_50:
	.ascii "Test math -/+ "
	.db 0x00
___str_51:
	.ascii "dolist"
	.db 0x00
___str_52:
	.ascii "-"
	.db 0x00
___str_53:
	.ascii "+"
	.db 0x00
___str_54:
	.ascii "exit"
	.db 0x00
___str_55:
	.ascii " - ok"
	.db 0x00
___str_56:
	.ascii " - error"
	.db 0x00
;e4vm.c:315: static void e4vm_test_mod (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_test_mod
; ---------------------------------
_e4vm_test_mod:
	call	___sdcc_enter_ix
	ld	hl, #-24
	add	hl, sp
	ld	sp, hl
;e4vm.c:320: Console_WriteStr((CHAR*)"Test mod ", 10);
	ld	hl, #___str_57
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:321: e4vm_utils_init(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_init
	pop	af
;e4vm.c:322: e4vm_core_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_add_core_words
	pop	af
;e4vm.c:323: e4vm_math_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_math_add_core_words
	pop	af
;e4vm.c:324: e4vm_utils_here_to_wp(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_here_to_wp
	pop	af
;e4vm.c:325: __MOVE((CHAR*)"dolist", _str__68, 7);
	ld	hl, #0
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0007
	push	hl
	ld	hl, #___str_58
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
	pop	af
;e4vm.c:327: __MOVE((CHAR*)"mod", _str__67, 4);
	ld	hl, #8
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0004
	push	hl
	ld	hl, #___str_59
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
	pop	af
;e4vm.c:329: __MOVE((CHAR*)"exit", _str__66, 5);
	ld	hl, #16
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0005
	push	hl
	ld	hl, #___str_60
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
;e4vm.c:331: e4vm_utils_stack_ds_push(v, 10);
	ld	hl, #0x000a
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_stack_ds_push
	pop	af
;e4vm.c:332: e4vm_utils_stack_ds_push(v, 3);
	ld	hl, #0x0003
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_stack_ds_push
	pop	af
	pop	af
;e4vm.c:333: e4vm_core_do_list(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_list
	pop	af
;e4vm.c:334: e4vm_core_do_next(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_next
	pop	af
;e4vm.c:335: if ((*v)->ds[(*v)->ds_p - 1] == 1) {
	ld	l, 4 (ix)
	ld	h, 5 (ix)
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
	ld	a, c
	dec	a
	or	a, b
	jr	NZ,00102$
;e4vm.c:336: Console_WriteStrLn((CHAR*)" - ok", 6);
	ld	hl, #___str_61
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
	jr	00104$
00102$:
;e4vm.c:338: Console_WriteStrLn((CHAR*)" - error", 9);
	ld	hl, #___str_62
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
00104$:
;e4vm.c:340: }
	ld	sp, ix
	pop	ix
	ret
___str_57:
	.ascii "Test mod "
	.db 0x00
___str_58:
	.ascii "dolist"
	.db 0x00
___str_59:
	.ascii "mod"
	.db 0x00
___str_60:
	.ascii "exit"
	.db 0x00
___str_61:
	.ascii " - ok"
	.db 0x00
___str_62:
	.ascii " - error"
	.db 0x00
;e4vm.c:342: static void e4vm_test_devide (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_test_devide
; ---------------------------------
_e4vm_test_devide:
	call	___sdcc_enter_ix
	ld	hl, #-32
	add	hl, sp
	ld	sp, hl
;e4vm.c:348: Console_WriteStr((CHAR*)"Test math (/, *) ", 18);
	ld	hl, #___str_63
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:349: e4vm_utils_init(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_init
	pop	af
;e4vm.c:350: e4vm_core_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_add_core_words
	pop	af
;e4vm.c:351: e4vm_math_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_math_add_core_words
	pop	af
;e4vm.c:352: e4vm_utils_here_to_wp(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_here_to_wp
	pop	af
;e4vm.c:353: __MOVE((CHAR*)"dolist", _str__33, 7);
	ld	hl, #0
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0007
	push	hl
	ld	hl, #___str_64
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
	pop	af
;e4vm.c:355: __MOVE((CHAR*)"/", _str__32, 2);
	ld	hl, #8
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0002
	push	hl
	ld	hl, #___str_65
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
	pop	af
;e4vm.c:357: __MOVE((CHAR*)"*", _str__31, 2);
	ld	hl, #16
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0002
	push	hl
	ld	hl, #___str_66
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
	pop	af
;e4vm.c:359: __MOVE((CHAR*)"exit", _str__30, 5);
	ld	hl, #24
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0005
	push	hl
	ld	hl, #___str_67
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
;e4vm.c:361: e4vm_utils_stack_ds_push(v, 3);
	ld	hl, #0x0003
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_stack_ds_push
	pop	af
;e4vm.c:362: e4vm_utils_stack_ds_push(v, 10);
	ld	hl, #0x000a
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_stack_ds_push
	pop	af
;e4vm.c:363: e4vm_utils_stack_ds_push(v, 2);
	ld	hl, #0x0002
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_stack_ds_push
	pop	af
	pop	af
;e4vm.c:364: e4vm_core_do_list(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_list
	pop	af
;e4vm.c:365: e4vm_core_do_next(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_next
	pop	af
;e4vm.c:366: if ((*v)->ds[0] == 15) {
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	de, #0x0044
	add	hl, de
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, c
	sub	a, #0x0f
	or	a, b
	jr	NZ,00102$
;e4vm.c:367: Console_WriteStrLn((CHAR*)" - ok", 6);
	ld	hl, #___str_68
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
	jr	00104$
00102$:
;e4vm.c:369: Console_WriteStrLn((CHAR*)" - error", 9);
	ld	hl, #___str_69
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
00104$:
;e4vm.c:371: }
	ld	sp, ix
	pop	ix
	ret
___str_63:
	.ascii "Test math (/, *) "
	.db 0x00
___str_64:
	.ascii "dolist"
	.db 0x00
___str_65:
	.ascii "/"
	.db 0x00
___str_66:
	.ascii "*"
	.db 0x00
___str_67:
	.ascii "exit"
	.db 0x00
___str_68:
	.ascii " - ok"
	.db 0x00
___str_69:
	.ascii " - error"
	.db 0x00
;e4vm.c:373: static void e4vm_test_inc (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_test_inc
; ---------------------------------
_e4vm_test_inc:
	call	___sdcc_enter_ix
	ld	hl, #-40
	add	hl, sp
	ld	sp, hl
;e4vm.c:380: Console_WriteStr((CHAR*)"Test math 1+ 1-", 16);
	ld	hl, #___str_70
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:381: e4vm_utils_init(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_init
	pop	af
;e4vm.c:382: e4vm_core_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_add_core_words
	pop	af
;e4vm.c:383: e4vm_stack_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_stack_add_core_words
	pop	af
;e4vm.c:384: e4vm_math_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_math_add_core_words
	pop	af
;e4vm.c:385: e4vm_utils_here_to_wp(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_here_to_wp
	pop	af
;e4vm.c:386: __MOVE((CHAR*)"dolist", _str__55, 7);
	ld	hl, #0
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0007
	push	hl
	ld	hl, #___str_71
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
	pop	af
;e4vm.c:388: __MOVE((CHAR*)"1+", _str__54, 3);
	ld	hl, #8
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0003
	push	hl
	ld	hl, #___str_72
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
	pop	af
;e4vm.c:390: __MOVE((CHAR*)"swap", _str__53, 5);
	ld	hl, #16
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0005
	push	hl
	ld	hl, #___str_73
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
	pop	af
;e4vm.c:392: __MOVE((CHAR*)"1-", _str__52, 3);
	ld	hl, #24
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0003
	push	hl
	ld	hl, #___str_74
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
	pop	af
;e4vm.c:394: __MOVE((CHAR*)"exit", _str__51, 5);
	ld	hl, #32
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0005
	push	hl
	ld	hl, #___str_75
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
;e4vm.c:396: e4vm_utils_stack_ds_push(v, 10);
	ld	hl, #0x000a
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_stack_ds_push
	pop	af
;e4vm.c:397: e4vm_utils_stack_ds_push(v, 20);
	ld	hl, #0x0014
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_stack_ds_push
	pop	af
	pop	af
;e4vm.c:398: e4vm_core_do_list(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_list
	pop	af
;e4vm.c:399: e4vm_core_do_next(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_next
	pop	af
;e4vm.c:400: if ((*v)->ds[(*v)->ds_p - 1] == 9 && (*v)->ds[(*v)->ds_p - 2] == 21) {
	ld	l, 4 (ix)
	ld	h, 5 (ix)
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
	sub	a, #0x09
	or	a, l
	jr	NZ,00102$
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
	ld	a, c
	sub	a, #0x15
	or	a, b
	jr	NZ,00102$
;e4vm.c:401: Console_WriteStrLn((CHAR*)" - ok", 6);
	ld	hl, #___str_76
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
	jr	00105$
00102$:
;e4vm.c:403: Console_WriteStrLn((CHAR*)" - error", 9);
	ld	hl, #___str_77
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
00105$:
;e4vm.c:405: }
	ld	sp, ix
	pop	ix
	ret
___str_70:
	.ascii "Test math 1+ 1-"
	.db 0x00
___str_71:
	.ascii "dolist"
	.db 0x00
___str_72:
	.ascii "1+"
	.db 0x00
___str_73:
	.ascii "swap"
	.db 0x00
___str_74:
	.ascii "1-"
	.db 0x00
___str_75:
	.ascii "exit"
	.db 0x00
___str_76:
	.ascii " - ok"
	.db 0x00
___str_77:
	.ascii " - error"
	.db 0x00
;e4vm.c:407: static void e4vm_test_true (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_test_true
; ---------------------------------
_e4vm_test_true:
	call	___sdcc_enter_ix
	ld	hl, #-24
	add	hl, sp
	ld	sp, hl
;e4vm.c:412: Console_WriteStr((CHAR*)"Test true ", 11);
	ld	hl, #___str_78
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:413: e4vm_utils_init(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_init
	pop	af
;e4vm.c:414: e4vm_core_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_add_core_words
	pop	af
;e4vm.c:415: e4vm_boolean_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_boolean_add_core_words
	pop	af
;e4vm.c:416: e4vm_utils_here_to_wp(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_here_to_wp
	pop	af
;e4vm.c:417: __MOVE((CHAR*)"dolist", _str__99, 7);
	ld	hl, #0
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0007
	push	hl
	ld	hl, #___str_79
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
	pop	af
;e4vm.c:419: __MOVE((CHAR*)"true", _str__98, 5);
	ld	hl, #8
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0005
	push	hl
	ld	hl, #___str_80
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
	pop	af
;e4vm.c:421: __MOVE((CHAR*)"exit", _str__97, 5);
	ld	hl, #16
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0005
	push	hl
	ld	hl, #___str_81
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
	pop	af
;e4vm.c:423: e4vm_core_do_list(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_list
	pop	af
;e4vm.c:424: e4vm_core_do_next(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_next
	pop	af
;e4vm.c:425: if ((*v)->ds[(*v)->ds_p - 1] == e4vm_utils_true_const(&e4vm_vm)) {
	ld	l, 4 (ix)
	ld	h, 5 (ix)
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
	add	a, e
	ld	e, a
	ld	a, #0x00
	adc	a, d
	ld	d, a
	push	de
	ld	hl, #_e4vm_vm
	push	hl
	call	_e4vm_utils_true_const
	pop	af
	ld	c, l
	ld	b, h
	pop	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ex	de,hl
	cp	a, a
	sbc	hl, bc
	jr	NZ,00102$
;e4vm.c:426: Console_WriteStrLn((CHAR*)" - ok", 6);
	ld	hl, #___str_82
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
	jr	00104$
00102$:
;e4vm.c:428: Console_WriteStrLn((CHAR*)" - error", 9);
	ld	hl, #___str_83
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
00104$:
;e4vm.c:430: }
	ld	sp, ix
	pop	ix
	ret
___str_78:
	.ascii "Test true "
	.db 0x00
___str_79:
	.ascii "dolist"
	.db 0x00
___str_80:
	.ascii "true"
	.db 0x00
___str_81:
	.ascii "exit"
	.db 0x00
___str_82:
	.ascii " - ok"
	.db 0x00
___str_83:
	.ascii " - error"
	.db 0x00
;e4vm.c:432: static void e4vm_test_not (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_test_not
; ---------------------------------
_e4vm_test_not:
	call	___sdcc_enter_ix
	ld	hl, #-28
	add	hl, sp
	ld	sp, hl
;e4vm.c:438: Console_WriteStr((CHAR*)"Test not ", 10);
	ld	hl, #___str_84
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:439: e4vm_utils_init(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_init
	pop	af
;e4vm.c:440: e4vm_core_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_add_core_words
	pop	af
;e4vm.c:441: e4vm_boolean_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_boolean_add_core_words
	pop	af
;e4vm.c:442: start_addr = (*v)->hereP;
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
	ld	a, (hl)
	ld	-4 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-3 (ix), a
;e4vm.c:443: __MOVE((CHAR*)"dolist", _str__72, 7);
	ld	hl, #0
	add	hl, sp
	ex	de, hl
	ld	-2 (ix), e
	ld	-1 (ix), d
	push	bc
	push	de
	ld	hl, #0x0007
	push	hl
	ld	hl, #___str_85
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
;e4vm.c:444: e4vm_utils_add_op_from_string(v, (void*)_str__72);
	push	bc
	push	de
	push	bc
	call	_e4vm_utils_add_op_from_string
	pop	af
	pop	af
	pop	bc
;e4vm.c:445: __MOVE((CHAR*)"not", _str__71, 4);
	ld	hl, #8
	add	hl, sp
	ex	de, hl
	ld	-2 (ix), e
	ld	-1 (ix), d
	push	bc
	push	de
	ld	hl, #0x0004
	push	hl
	ld	hl, #___str_86
	push	hl
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	push	hl
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
	pop	af
	pop	bc
;e4vm.c:447: __MOVE((CHAR*)"exit", _str__70, 5);
	ld	hl, #16
	add	hl, sp
	ex	de, hl
	ld	-2 (ix), e
	ld	-1 (ix), d
	push	bc
	push	de
	ld	hl, #0x0005
	push	hl
	ld	hl, #___str_87
	push	hl
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	push	hl
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
	ld	hl, #_e4vm_vm
	ex	(sp),hl
	call	_e4vm_utils_true_const
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_stack_ds_push
	pop	af
	pop	af
	pop	bc
;e4vm.c:450: (*v)->wp = start_addr;
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	inc	de
	inc	de
	ld	a, -4 (ix)
	ld	(de), a
	inc	de
	ld	a, -3 (ix)
	ld	(de), a
;e4vm.c:451: e4vm_core_do_list(v);
	push	bc
	push	bc
	call	_e4vm_core_do_list
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_next
	pop	af
	pop	bc
;e4vm.c:453: if ((*v)->ds[0] == e4vm_utils_false_const(&e4vm_vm)) {
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	push	bc
	push	de
	ld	hl, #_e4vm_vm
	push	hl
	call	_e4vm_utils_false_const
	pop	af
	ld	-2 (ix), l
	ld	-1 (ix), h
	pop	de
	pop	bc
	ex	de,hl
	ld	de, #0x0044
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	cp	a, a
	sbc	hl, de
	jr	NZ,00102$
;e4vm.c:454: Console_WriteStr((CHAR*)" - ok", 6);
	push	bc
	ld	hl, #___str_88
	call	_Console_WriteStr_C_COMPACT
	pop	bc
	jr	00103$
00102$:
;e4vm.c:456: Console_WriteStr((CHAR*)" - error", 9);
	push	bc
	ld	hl, #___str_89
	call	_Console_WriteStr_C_COMPACT
	pop	bc
00103$:
;e4vm.c:458: (*v)->wp = start_addr;
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	inc	de
	inc	de
	ld	a, -4 (ix)
	ld	(de), a
	inc	de
	ld	a, -3 (ix)
	ld	(de), a
;e4vm.c:459: e4vm_core_do_list(v);
	push	bc
	push	bc
	call	_e4vm_core_do_list
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_next
	pop	af
	pop	bc
;e4vm.c:461: if ((*v)->ds[0] == e4vm_utils_true_const(&e4vm_vm)) {
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	push	bc
	push	de
	ld	hl, #_e4vm_vm
	push	hl
	call	_e4vm_utils_true_const
	pop	af
	ld	-2 (ix), l
	ld	-1 (ix), h
	pop	de
	pop	bc
	ex	de,hl
	ld	de, #0x0044
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	cp	a, a
	sbc	hl, de
	jr	NZ,00105$
;e4vm.c:462: Console_WriteStr((CHAR*)" - ok", 6);
	push	bc
	ld	hl, #___str_88
	call	_Console_WriteStr_C_COMPACT
	pop	bc
	jr	00106$
00105$:
;e4vm.c:464: Console_WriteStr((CHAR*)" - error", 9);
	push	bc
	ld	hl, #___str_89
	call	_Console_WriteStr_C_COMPACT
	pop	bc
00106$:
;e4vm.c:466: (*v)->ds[0] = 2;
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x0044
	add	hl, de
	ld	(hl), #0x02
	inc	hl
	ld	(hl), #0x00
;e4vm.c:467: (*v)->wp = start_addr;
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	inc	de
	inc	de
	ld	a, -4 (ix)
	ld	(de), a
	inc	de
	ld	a, -3 (ix)
	ld	(de), a
;e4vm.c:468: e4vm_core_do_list(v);
	push	bc
	call	_e4vm_core_do_list
	pop	af
;e4vm.c:469: e4vm_core_do_next(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_next
	pop	af
;e4vm.c:470: Console_WriteStrLn((CHAR*)" - ok", 6);
	ld	hl, #___str_88
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
;e4vm.c:471: }
	ld	sp, ix
	pop	ix
	ret
___str_84:
	.ascii "Test not "
	.db 0x00
___str_85:
	.ascii "dolist"
	.db 0x00
___str_86:
	.ascii "not"
	.db 0x00
___str_87:
	.ascii "exit"
	.db 0x00
___str_88:
	.ascii " - ok"
	.db 0x00
___str_89:
	.ascii " - error"
	.db 0x00
;e4vm.c:473: static void e4vm_test_invert (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_test_invert
; ---------------------------------
_e4vm_test_invert:
	call	___sdcc_enter_ix
	ld	hl, #-24
	add	hl, sp
	ld	sp, hl
;e4vm.c:478: Console_WriteStr((CHAR*)"Test invert ", 13);
	ld	hl, #___str_90
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:479: e4vm_utils_init(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_init
	pop	af
;e4vm.c:480: e4vm_core_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_add_core_words
	pop	af
;e4vm.c:481: e4vm_boolean_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_boolean_add_core_words
	pop	af
;e4vm.c:482: e4vm_utils_here_to_wp(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_here_to_wp
	pop	af
;e4vm.c:483: __MOVE((CHAR*)"dolist", _str__59, 7);
	ld	hl, #0
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0007
	push	hl
	ld	hl, #___str_91
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
	pop	af
;e4vm.c:485: __MOVE((CHAR*)"invert", _str__58, 7);
	ld	hl, #8
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0007
	push	hl
	ld	hl, #___str_92
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
	pop	af
;e4vm.c:487: __MOVE((CHAR*)"exit", _str__57, 5);
	ld	hl, #16
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0005
	push	hl
	ld	hl, #___str_93
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
;e4vm.c:489: e4vm_utils_stack_ds_push(v, 15);
	ld	hl, #0x000f
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_stack_ds_push
	pop	af
	pop	af
;e4vm.c:490: e4vm_core_do_list(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_list
	pop	af
;e4vm.c:491: e4vm_core_do_next(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_next
	pop	af
;e4vm.c:492: if ((*v)->ds[(*v)->ds_p - 1] == -16) {
	ld	l, 4 (ix)
	ld	h, 5 (ix)
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
	ld	a, c
	sub	a, #0xf0
	jr	NZ,00102$
	inc	b
	jr	NZ,00102$
;e4vm.c:493: Console_WriteStrLn((CHAR*)" - ok", 6);
	ld	hl, #___str_94
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
	jr	00104$
00102$:
;e4vm.c:495: Console_WriteStrLn((CHAR*)" - error", 9);
	ld	hl, #___str_95
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
00104$:
;e4vm.c:497: }
	ld	sp, ix
	pop	ix
	ret
___str_90:
	.ascii "Test invert "
	.db 0x00
___str_91:
	.ascii "dolist"
	.db 0x00
___str_92:
	.ascii "invert"
	.db 0x00
___str_93:
	.ascii "exit"
	.db 0x00
___str_94:
	.ascii " - ok"
	.db 0x00
___str_95:
	.ascii " - error"
	.db 0x00
;e4vm.c:499: static void e4vm_test_or (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_test_or
; ---------------------------------
_e4vm_test_or:
	call	___sdcc_enter_ix
	ld	hl, #-24
	add	hl, sp
	ld	sp, hl
;e4vm.c:504: Console_WriteStr((CHAR*)"Test or ", 9);
	ld	hl, #___str_96
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:505: e4vm_utils_init(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_init
	pop	af
;e4vm.c:506: e4vm_core_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_add_core_words
	pop	af
;e4vm.c:507: e4vm_boolean_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_boolean_add_core_words
	pop	af
;e4vm.c:508: e4vm_utils_here_to_wp(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_here_to_wp
	pop	af
;e4vm.c:509: __MOVE((CHAR*)"dolist", _str__80, 7);
	ld	hl, #0
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0007
	push	hl
	ld	hl, #___str_97
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
	pop	af
;e4vm.c:511: __MOVE((CHAR*)"or", _str__79, 3);
	ld	hl, #8
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0003
	push	hl
	ld	hl, #___str_98
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
	pop	af
;e4vm.c:513: __MOVE((CHAR*)"exit", _str__78, 5);
	ld	hl, #16
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0005
	push	hl
	ld	hl, #___str_99
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
;e4vm.c:515: e4vm_utils_stack_ds_push(v, 1);
	ld	hl, #0x0001
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_stack_ds_push
	pop	af
;e4vm.c:516: e4vm_utils_stack_ds_push(v, 2);
	ld	hl, #0x0002
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_stack_ds_push
	pop	af
	pop	af
;e4vm.c:517: e4vm_core_do_list(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_list
	pop	af
;e4vm.c:518: e4vm_core_do_next(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_next
	pop	af
;e4vm.c:519: if ((*v)->ds[0] == 3) {
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	de, #0x0044
	add	hl, de
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, c
	sub	a, #0x03
	or	a, b
	jr	NZ,00102$
;e4vm.c:520: Console_WriteStrLn((CHAR*)" - ok", 6);
	ld	hl, #___str_100
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
	jr	00104$
00102$:
;e4vm.c:522: Console_WriteStrLn((CHAR*)" - error", 9);
	ld	hl, #___str_101
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
00104$:
;e4vm.c:524: }
	ld	sp, ix
	pop	ix
	ret
___str_96:
	.ascii "Test or "
	.db 0x00
___str_97:
	.ascii "dolist"
	.db 0x00
___str_98:
	.ascii "or"
	.db 0x00
___str_99:
	.ascii "exit"
	.db 0x00
___str_100:
	.ascii " - ok"
	.db 0x00
___str_101:
	.ascii " - error"
	.db 0x00
;e4vm.c:526: static void e4vm_test_and (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_test_and
; ---------------------------------
_e4vm_test_and:
	call	___sdcc_enter_ix
	ld	hl, #-24
	add	hl, sp
	ld	sp, hl
;e4vm.c:531: Console_WriteStr((CHAR*)"Test and ", 10);
	ld	hl, #___str_102
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:532: e4vm_utils_init(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_init
	pop	af
;e4vm.c:533: e4vm_core_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_add_core_words
	pop	af
;e4vm.c:534: e4vm_boolean_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_boolean_add_core_words
	pop	af
;e4vm.c:535: e4vm_utils_here_to_wp(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_here_to_wp
	pop	af
;e4vm.c:536: __MOVE((CHAR*)"dolist", _str__14, 7);
	ld	hl, #0
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0007
	push	hl
	ld	hl, #___str_103
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
	pop	af
;e4vm.c:538: __MOVE((CHAR*)"and", _str__13, 4);
	ld	hl, #8
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0004
	push	hl
	ld	hl, #___str_104
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
	pop	af
;e4vm.c:540: __MOVE((CHAR*)"exit", _str__12, 5);
	ld	hl, #16
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0005
	push	hl
	ld	hl, #___str_105
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
;e4vm.c:542: e4vm_utils_stack_ds_push(v, 3);
	ld	hl, #0x0003
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_stack_ds_push
	pop	af
;e4vm.c:543: e4vm_utils_stack_ds_push(v, 6);
	ld	hl, #0x0006
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_stack_ds_push
	pop	af
	pop	af
;e4vm.c:544: e4vm_core_do_list(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_list
	pop	af
;e4vm.c:545: e4vm_core_do_next(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_next
	pop	af
;e4vm.c:546: if ((*v)->ds[0] == 2) {
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	de, #0x0044
	add	hl, de
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, c
	sub	a, #0x02
	or	a, b
	jr	NZ,00102$
;e4vm.c:547: Console_WriteStrLn((CHAR*)" - ok", 6);
	ld	hl, #___str_106
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
	jr	00104$
00102$:
;e4vm.c:549: Console_WriteStrLn((CHAR*)" - error", 9);
	ld	hl, #___str_107
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
00104$:
;e4vm.c:551: }
	ld	sp, ix
	pop	ix
	ret
___str_102:
	.ascii "Test and "
	.db 0x00
___str_103:
	.ascii "dolist"
	.db 0x00
___str_104:
	.ascii "and"
	.db 0x00
___str_105:
	.ascii "exit"
	.db 0x00
___str_106:
	.ascii " - ok"
	.db 0x00
___str_107:
	.ascii " - error"
	.db 0x00
;e4vm.c:553: static void e4vm_test_xor (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_test_xor
; ---------------------------------
_e4vm_test_xor:
	call	___sdcc_enter_ix
	ld	hl, #-24
	add	hl, sp
	ld	sp, hl
;e4vm.c:558: Console_WriteStr((CHAR*)"Test xor ", 10);
	ld	hl, #___str_108
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:559: e4vm_utils_init(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_init
	pop	af
;e4vm.c:560: e4vm_core_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_add_core_words
	pop	af
;e4vm.c:561: e4vm_boolean_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_boolean_add_core_words
	pop	af
;e4vm.c:562: e4vm_utils_here_to_wp(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_here_to_wp
	pop	af
;e4vm.c:563: __MOVE((CHAR*)"dolist", _str__103, 7);
	ld	hl, #0
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0007
	push	hl
	ld	hl, #___str_109
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
	pop	af
;e4vm.c:565: __MOVE((CHAR*)"xor", _str__102, 4);
	ld	hl, #8
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0004
	push	hl
	ld	hl, #___str_110
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
	pop	af
;e4vm.c:567: __MOVE((CHAR*)"exit", _str__101, 5);
	ld	hl, #16
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0005
	push	hl
	ld	hl, #___str_111
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
;e4vm.c:569: e4vm_utils_stack_ds_push(v, 6);
	ld	hl, #0x0006
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_stack_ds_push
	pop	af
;e4vm.c:570: e4vm_utils_stack_ds_push(v, 5);
	ld	hl, #0x0005
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_stack_ds_push
	pop	af
	pop	af
;e4vm.c:571: e4vm_core_do_list(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_list
	pop	af
;e4vm.c:572: e4vm_core_do_next(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_next
	pop	af
;e4vm.c:573: if ((*v)->ds[0] == 3) {
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	de, #0x0044
	add	hl, de
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, c
	sub	a, #0x03
	or	a, b
	jr	NZ,00102$
;e4vm.c:574: Console_WriteStrLn((CHAR*)" - ok", 6);
	ld	hl, #___str_112
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
	jr	00104$
00102$:
;e4vm.c:576: Console_WriteStrLn((CHAR*)" - error", 9);
	ld	hl, #___str_113
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
00104$:
;e4vm.c:578: }
	ld	sp, ix
	pop	ix
	ret
___str_108:
	.ascii "Test xor "
	.db 0x00
___str_109:
	.ascii "dolist"
	.db 0x00
___str_110:
	.ascii "xor"
	.db 0x00
___str_111:
	.ascii "exit"
	.db 0x00
___str_112:
	.ascii " - ok"
	.db 0x00
___str_113:
	.ascii " - error"
	.db 0x00
;e4vm.c:580: static void e4vm_test_here (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_test_here
; ---------------------------------
_e4vm_test_here:
	call	___sdcc_enter_ix
	ld	hl, #-24
	add	hl, sp
	ld	sp, hl
;e4vm.c:585: Console_WriteStr((CHAR*)"Test here ", 11);
	ld	hl, #___str_114
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:586: e4vm_utils_init(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_init
	pop	af
;e4vm.c:587: e4vm_core_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_add_core_words
	pop	af
;e4vm.c:588: e4vm_core_ext_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_ext_add_core_words
	pop	af
;e4vm.c:589: e4vm_utils_here_to_wp(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_here_to_wp
	pop	af
;e4vm.c:590: __MOVE((CHAR*)"dolist", _str__49, 7);
	ld	hl, #0
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0007
	push	hl
	ld	hl, #___str_115
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
	pop	af
;e4vm.c:592: __MOVE((CHAR*)"here", _str__48, 5);
	ld	hl, #8
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0005
	push	hl
	ld	hl, #___str_116
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
	pop	af
;e4vm.c:594: __MOVE((CHAR*)"exit", _str__47, 5);
	ld	hl, #16
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0005
	push	hl
	ld	hl, #___str_117
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
	pop	af
;e4vm.c:596: (*v)->hereP = 555;
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x0088
	add	hl, de
	ld	(hl), #0x2b
	inc	hl
	ld	(hl), #0x02
;e4vm.c:597: e4vm_core_do_list(v);
	push	bc
	push	bc
	call	_e4vm_core_do_list
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_next
	pop	af
;e4vm.c:599: if ((*v)->ds[0] == 555) {
	pop	hl
	ld	c, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, c
	ld	de, #0x0044
	add	hl, de
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, c
	sub	a, #0x2b
	jr	NZ,00102$
	ld	a, b
	sub	a, #0x02
	jr	NZ,00102$
;e4vm.c:600: Console_WriteStrLn((CHAR*)" - ok", 6);
	ld	hl, #___str_118
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
	jr	00104$
00102$:
;e4vm.c:602: Console_WriteStrLn((CHAR*)" - error", 9);
	ld	hl, #___str_119
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
00104$:
;e4vm.c:604: }
	ld	sp, ix
	pop	ix
	ret
___str_114:
	.ascii "Test here "
	.db 0x00
___str_115:
	.ascii "dolist"
	.db 0x00
___str_116:
	.ascii "here"
	.db 0x00
___str_117:
	.ascii "exit"
	.db 0x00
___str_118:
	.ascii " - ok"
	.db 0x00
___str_119:
	.ascii " - error"
	.db 0x00
;e4vm.c:606: static void e4vm_test_comma (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_test_comma
; ---------------------------------
_e4vm_test_comma:
	call	___sdcc_enter_ix
	ld	hl, #-24
	add	hl, sp
	ld	sp, hl
;e4vm.c:611: Console_WriteStr((CHAR*)"Test comma , ", 14);
	ld	hl, #___str_120
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:612: e4vm_utils_init(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_init
	pop	af
;e4vm.c:613: e4vm_core_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_add_core_words
	pop	af
;e4vm.c:614: e4vm_core_ext_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_ext_add_core_words
	pop	af
;e4vm.c:615: e4vm_utils_here_to_wp(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_here_to_wp
	pop	af
;e4vm.c:616: __MOVE((CHAR*)"dolist", _str__28, 7);
	ld	hl, #0
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0007
	push	hl
	ld	hl, #___str_121
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
	pop	af
;e4vm.c:618: __MOVE((CHAR*)",", _str__27, 2);
	ld	hl, #8
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0002
	push	hl
	ld	hl, #___str_122
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
	pop	af
;e4vm.c:620: __MOVE((CHAR*)"exit", _str__26, 5);
	ld	hl, #16
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0005
	push	hl
	ld	hl, #___str_123
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
	pop	af
;e4vm.c:622: (*v)->hereP = 18;
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x0088
	add	hl, de
	ld	(hl), #0x12
	inc	hl
	ld	(hl), #0x00
;e4vm.c:623: e4vm_utils_stack_ds_push(v, 777);
	push	bc
	ld	hl, #0x0309
	push	hl
	push	bc
	call	_e4vm_utils_stack_ds_push
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_list
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_next
	pop	af
;e4vm.c:626: if ((*v)->mem[18] == 777) {
	pop	hl
	ld	c, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, c
	ld	de, #0x00ae
	add	hl, de
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, c
	sub	a, #0x09
	jr	NZ,00102$
	ld	a, b
	sub	a, #0x03
	jr	NZ,00102$
;e4vm.c:627: Console_WriteStrLn((CHAR*)" - ok", 6);
	ld	hl, #___str_124
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
	jr	00104$
00102$:
;e4vm.c:629: Console_WriteStrLn((CHAR*)" - error", 9);
	ld	hl, #___str_125
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
00104$:
;e4vm.c:631: }
	ld	sp, ix
	pop	ix
	ret
___str_120:
	.ascii "Test comma , "
	.db 0x00
___str_121:
	.ascii "dolist"
	.db 0x00
___str_122:
	.ascii ","
	.db 0x00
___str_123:
	.ascii "exit"
	.db 0x00
___str_124:
	.ascii " - ok"
	.db 0x00
___str_125:
	.ascii " - error"
	.db 0x00
;e4vm.c:633: static void e4vm_test_branch (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_test_branch
; ---------------------------------
_e4vm_test_branch:
	call	___sdcc_enter_ix
	ld	hl, #-80
	add	hl, sp
	ld	sp, hl
;e4vm.c:645: Console_WriteStr((CHAR*)"Test branch ", 13);
	ld	hl, #___str_126
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:646: e4vm_utils_init(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_init
	pop	af
;e4vm.c:647: e4vm_core_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_add_core_words
	pop	af
;e4vm.c:648: e4vm_core_ext_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_ext_add_core_words
	pop	af
;e4vm.c:649: e4vm_utils_here_to_wp(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_here_to_wp
	pop	af
;e4vm.c:650: __MOVE((CHAR*)"dolist", _str__24, 7);
	ld	hl, #0
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0007
	push	hl
	ld	hl, #___str_127
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
	pop	af
;e4vm.c:652: __MOVE((CHAR*)"nop", _str__23, 4);
	ld	hl, #8
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0004
	push	hl
	ld	hl, #___str_128
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
	pop	af
;e4vm.c:654: __MOVE((CHAR*)"nop", _str__22, 4);
	ld	hl, #16
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0004
	push	hl
	ld	hl, #___str_128
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
	pop	af
;e4vm.c:656: __MOVE((CHAR*)"nop", _str__21, 4);
	ld	hl, #24
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0004
	push	hl
	ld	hl, #___str_128
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
	pop	af
;e4vm.c:658: __MOVE((CHAR*)"branch", _str__20, 7);
	ld	hl, #32
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0007
	push	hl
	ld	hl, #___str_129
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
;e4vm.c:660: e4vm_utils_add_op(v, 77);
	ld	hl, #0x004d
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op
	pop	af
	pop	af
;e4vm.c:661: __MOVE((CHAR*)"dolit", _str__19, 6);
	ld	hl, #40
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0006
	push	hl
	ld	hl, #___str_130
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
;e4vm.c:663: e4vm_utils_add_op(v, 1);
	ld	hl, #0x0001
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op
	pop	af
	pop	af
;e4vm.c:664: __MOVE((CHAR*)"exit", _str__18, 5);
	ld	hl, #48
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0005
	push	hl
	ld	hl, #___str_131
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
	pop	af
;e4vm.c:666: jmp_addr = (*v)->hereP;
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	-8 (ix), c
	ld	-7 (ix), b
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, e
	ld	de, #0x0088
	add	hl, de
	ld	a, (hl)
	ld	-6 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-5 (ix), a
;e4vm.c:667: __MOVE((CHAR*)"dolit", _str__17, 6);
	ld	hl, #56
	add	hl, sp
	ex	de, hl
	ld	-2 (ix), e
	ld	-1 (ix), d
	push	bc
	push	de
	ld	hl, #0x0006
	push	hl
	ld	hl, #___str_130
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
;e4vm.c:668: e4vm_utils_add_op_from_string(v, (void*)_str__17);
	push	bc
	push	de
	push	bc
	call	_e4vm_utils_add_op_from_string
	pop	af
	ld	hl, #0x0002
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op
	pop	af
	pop	af
	pop	bc
;e4vm.c:670: __MOVE((CHAR*)"exit", _str__16, 5);
	ld	hl, #64
	add	hl, sp
	ex	de, hl
	ld	-2 (ix), e
	ld	-1 (ix), d
	push	bc
	push	de
	ld	hl, #0x0005
	push	hl
	ld	hl, #___str_131
	push	hl
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	push	hl
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
	pop	af
	pop	bc
;e4vm.c:673: while (i <= 31) {
	ld	-4 (ix), c
	ld	-3 (ix), b
	ld	de, #0x0000
00103$:
	ld	a, #0x1f
	cp	a, e
	ld	a, #0x00
	sbc	a, d
	jp	PO, 00132$
	xor	a, #0x80
00132$:
	jp	M, 00105$
;e4vm.c:674: if ((*v)->mem[i] == 77) {
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	push	de
	ld	de, #0x008a
	add	hl, de
	pop	de
	ld	-2 (ix), e
	ld	-1 (ix), d
	sla	-2 (ix)
	rl	-1 (ix)
	ld	a, l
	add	a, -2 (ix)
	ld	l, a
	ld	a, h
	adc	a, -1 (ix)
	ld	h, a
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	sub	a, #0x4d
	or	a, h
	jr	NZ,00102$
;e4vm.c:675: (*v)->mem[i] = jmp_addr;
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	push	de
	ld	de, #0x008a
	add	hl, de
	pop	de
	ld	a, l
	add	a, -2 (ix)
	ld	l, a
	ld	a, h
	adc	a, -1 (ix)
	ld	h, a
	ld	a, -6 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -5 (ix)
	ld	(hl), a
00102$:
;e4vm.c:677: i += 1;
	inc	de
	jr	00103$
00105$:
;e4vm.c:679: e4vm_core_do_list(v);
	push	bc
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	push	hl
	call	_e4vm_core_do_list
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_next
	pop	af
;e4vm.c:681: if ((*v)->ds[(*v)->ds_p - 1] == 2) {
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
	ld	a, c
	sub	a, #0x02
	or	a, b
	jr	NZ,00107$
;e4vm.c:682: Console_WriteStrLn((CHAR*)" - ok", 6);
	ld	hl, #___str_132
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
	jr	00109$
00107$:
;e4vm.c:684: Console_WriteStrLn((CHAR*)" - error", 9);
	ld	hl, #___str_133
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
00109$:
;e4vm.c:686: }
	ld	sp, ix
	pop	ix
	ret
___str_126:
	.ascii "Test branch "
	.db 0x00
___str_127:
	.ascii "dolist"
	.db 0x00
___str_128:
	.ascii "nop"
	.db 0x00
___str_129:
	.ascii "branch"
	.db 0x00
___str_130:
	.ascii "dolit"
	.db 0x00
___str_131:
	.ascii "exit"
	.db 0x00
___str_132:
	.ascii " - ok"
	.db 0x00
___str_133:
	.ascii " - error"
	.db 0x00
;e4vm.c:688: static void e4vm_test_zbranch (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_test_zbranch
; ---------------------------------
_e4vm_test_zbranch:
	call	___sdcc_enter_ix
	ld	hl, #-84
	add	hl, sp
	ld	sp, hl
;e4vm.c:700: Console_WriteStr((CHAR*)"Test 0branch ", 14);
	ld	hl, #___str_134
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:701: e4vm_utils_init(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_init
	pop	af
;e4vm.c:702: e4vm_core_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_add_core_words
	pop	af
;e4vm.c:703: e4vm_core_ext_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_ext_add_core_words
	pop	af
;e4vm.c:704: e4vm_utils_here_to_wp(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_here_to_wp
	pop	af
;e4vm.c:705: start_addr = (*v)->hereP;
	ld	a, 4 (ix)
	ld	-12 (ix), a
	ld	a, 5 (ix)
	ld	-11 (ix), a
	ld	l, -12 (ix)
	ld	h, -11 (ix)
	ld	c, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, c
	ld	de, #0x0088
	add	hl, de
	ld	a, (hl)
	ld	-10 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-9 (ix), a
;e4vm.c:706: __MOVE((CHAR*)"dolist", _str__113, 7);
	ld	hl, #0
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0007
	push	hl
	ld	hl, #___str_135
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, -12 (ix)
	ld	h, -11 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
	pop	af
;e4vm.c:708: __MOVE((CHAR*)"nop", _str__112, 4);
	ld	hl, #8
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0004
	push	hl
	ld	hl, #___str_136
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
	pop	af
;e4vm.c:710: __MOVE((CHAR*)"nop", _str__111, 4);
	ld	hl, #16
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0004
	push	hl
	ld	hl, #___str_136
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
	pop	af
;e4vm.c:712: __MOVE((CHAR*)"nop", _str__110, 4);
	ld	hl, #24
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0004
	push	hl
	ld	hl, #___str_136
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
	pop	af
;e4vm.c:714: __MOVE((CHAR*)"0branch", _str__109, 8);
	ld	hl, #32
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0008
	push	hl
	ld	hl, #___str_137
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
;e4vm.c:716: e4vm_utils_add_op(v, 77);
	ld	hl, #0x004d
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op
	pop	af
	pop	af
;e4vm.c:717: __MOVE((CHAR*)"dolit", _str__108, 6);
	ld	hl, #40
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0006
	push	hl
	ld	hl, #___str_138
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
;e4vm.c:719: e4vm_utils_add_op(v, 1);
	ld	hl, #0x0001
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op
	pop	af
	pop	af
;e4vm.c:720: __MOVE((CHAR*)"exit", _str__107, 5);
	ld	hl, #48
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0005
	push	hl
	ld	hl, #___str_139
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
	pop	af
;e4vm.c:722: jmp_addr = (*v)->hereP;
	ld	a, -12 (ix)
	ld	-8 (ix), a
	ld	a, -11 (ix)
	ld	-7 (ix), a
	ld	l, -12 (ix)
	ld	h, -11 (ix)
	ld	c, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, c
	ld	de, #0x0088
	add	hl, de
	ld	a, (hl)
	ld	-6 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-5 (ix), a
;e4vm.c:723: __MOVE((CHAR*)"dolit", _str__106, 6);
	ld	hl, #56
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0006
	push	hl
	ld	hl, #___str_138
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, -12 (ix)
	ld	h, -11 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
;e4vm.c:725: e4vm_utils_add_op(v, 2);
	ld	hl, #0x0002
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op
	pop	af
	pop	af
;e4vm.c:726: __MOVE((CHAR*)"exit", _str__105, 5);
	ld	hl, #64
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0005
	push	hl
	ld	hl, #___str_139
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
	pop	af
;e4vm.c:729: while (i <= 31) {
	ld	a, -12 (ix)
	ld	-4 (ix), a
	ld	a, -11 (ix)
	ld	-3 (ix), a
	ld	bc, #0x0000
00103$:
	ld	a, #0x1f
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jp	PO, 00140$
	xor	a, #0x80
00140$:
	jp	M, 00105$
;e4vm.c:730: if ((*v)->mem[i] == 77) {
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x008a
	add	hl, de
	ld	-2 (ix), c
	ld	-1 (ix), b
	sla	-2 (ix)
	rl	-1 (ix)
	ld	e, -2 (ix)
	ld	d, -1 (ix)
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, e
	sub	a, #0x4d
	or	a, d
	jr	NZ,00102$
;e4vm.c:731: (*v)->mem[i] = jmp_addr;
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x008a
	add	hl, de
	ld	e, -2 (ix)
	ld	d, -1 (ix)
	add	hl, de
	ld	a, -6 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -5 (ix)
	ld	(hl), a
00102$:
;e4vm.c:733: i += 1;
	inc	bc
	jr	00103$
00105$:
;e4vm.c:735: e4vm_utils_stack_ds_push(v, 0);
	ld	hl, #0x0000
	push	hl
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	push	hl
	call	_e4vm_utils_stack_ds_push
	pop	af
	pop	af
;e4vm.c:736: e4vm_core_do_list(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_list
	pop	af
;e4vm.c:737: e4vm_core_do_next(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_next
	pop	af
;e4vm.c:738: if ((*v)->ds[(*v)->ds_p - 1] == 2) {
	ld	l, -12 (ix)
	ld	h, -11 (ix)
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
	ld	a, c
	sub	a, #0x02
	or	a, b
	jr	NZ,00107$
;e4vm.c:739: Console_WriteStr((CHAR*)" - ok", 6);
	ld	hl, #___str_140
	call	_Console_WriteStr_C_COMPACT
	jr	00108$
00107$:
;e4vm.c:741: Console_WriteStr((CHAR*)" - error", 9);
	ld	hl, #___str_141
	call	_Console_WriteStr_C_COMPACT
00108$:
;e4vm.c:743: (*v)->wp = start_addr;
	ld	l, -12 (ix)
	ld	h, -11 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	inc	bc
	inc	bc
	ld	a, -10 (ix)
	ld	(bc), a
	inc	bc
	ld	a, -9 (ix)
	ld	(bc), a
;e4vm.c:744: e4vm_utils_stack_ds_push(v, 1);
	ld	hl, #0x0001
	push	hl
	ld	l, -12 (ix)
	ld	h, -11 (ix)
	push	hl
	call	_e4vm_utils_stack_ds_push
	pop	af
	pop	af
;e4vm.c:745: e4vm_core_do_list(v);
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	push	hl
	call	_e4vm_core_do_list
	pop	af
;e4vm.c:746: e4vm_core_do_next(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_next
	pop	af
;e4vm.c:747: if ((*v)->ds[(*v)->ds_p - 1] == 1) {
	ld	l, -12 (ix)
	ld	h, -11 (ix)
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
	ld	a, c
	dec	a
	or	a, b
	jr	NZ,00110$
;e4vm.c:748: Console_WriteStr((CHAR*)" - ok", 6);
	ld	hl, #___str_140
	call	_Console_WriteStr_C_COMPACT
	jr	00112$
00110$:
;e4vm.c:750: Console_WriteStr((CHAR*)" - error", 9);
	ld	hl, #___str_141
	call	_Console_WriteStr_C_COMPACT
00112$:
;e4vm.c:752: }
	ld	sp, ix
	pop	ix
	ret
___str_134:
	.ascii "Test 0branch "
	.db 0x00
___str_135:
	.ascii "dolist"
	.db 0x00
___str_136:
	.ascii "nop"
	.db 0x00
___str_137:
	.ascii "0branch"
	.db 0x00
___str_138:
	.ascii "dolit"
	.db 0x00
___str_139:
	.ascii "exit"
	.db 0x00
___str_140:
	.ascii " - ok"
	.db 0x00
___str_141:
	.ascii " - error"
	.db 0x00
;e4vm.c:754: static void e4vm_test_read_char (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_test_read_char
; ---------------------------------
_e4vm_test_read_char:
	call	___sdcc_enter_ix
;e4vm.c:759: Console_WriteStr((CHAR*)"read_char test ", 16);
	ld	hl, #___str_142
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:760: e4vm_utils_init(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_init
	pop	af
;e4vm.c:761: ch = e4vm_utils_read_char(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_read_char
	pop	af
	ld	c, l
;e4vm.c:762: Console_WriteInt(ch);
	ld	l, c
	ld	h, #0x00
	push	bc
	call	_Console_WriteInt_COMPACT
	pop	bc
;e4vm.c:763: Console_WriteCh((CHAR)ch);
	ld	l, c
	call	_Console_WriteCh_COMPACT
;e4vm.c:764: Console_WriteStr((CHAR*)" - ok", 6);
	ld	hl, #___str_143
;e4vm.c:765: }
	pop	ix
	jp	_Console_WriteStr_C_COMPACT
___str_142:
	.ascii "read_char test "
	.db 0x00
___str_143:
	.ascii " - ok"
	.db 0x00
;e4vm.c:767: static void e4vm_test_read_string (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_test_read_string
; ---------------------------------
_e4vm_test_read_string:
	call	___sdcc_enter_ix
;e4vm.c:770: Console_WriteStr((CHAR*)"read_string test ", 18);
	ld	hl, #___str_144
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:771: e4vm_utils_read_string(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_read_string
	pop	af
;e4vm.c:772: _ptr__87 = *v;
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
;e4vm.c:773: Console_WriteStrLn((void*)_ptr__87->in_string, 64);
	ld	hl, #0x028f
	add	hl, bc
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
;e4vm.c:774: Console_WriteStr((CHAR*)" - ok", 6);
	ld	hl, #___str_145
;e4vm.c:775: }
	pop	ix
	jp	_Console_WriteStr_C_COMPACT
___str_144:
	.ascii "read_string test "
	.db 0x00
___str_145:
	.ascii " - ok"
	.db 0x00
;e4vm.c:778: int main (int argc, char **argv)
;	---------------------------------
; Function main
; ---------------------------------
_main::
;e4vm.c:783: __IMPORT(e4vm_boolean__init);
	call	_e4vm_boolean__init
;e4vm.c:784: __IMPORT(e4vm_core__init);
	call	_e4vm_core__init
;e4vm.c:785: __IMPORT(e4vm_core_ext__init);
	call	_e4vm_core_ext__init
;e4vm.c:786: __IMPORT(e4vm_math__init);
	call	_e4vm_math__init
;e4vm.c:787: __IMPORT(e4vm_stack__init);
	call	_e4vm_stack__init
;e4vm.c:788: __IMPORT(e4vm_type__init);
	call	_e4vm_type__init
;e4vm.c:789: __IMPORT(e4vm_utils__init);
	call	_e4vm_utils__init
;e4vm.c:792: Basic_Init();
	res	4,1(iy) 
	call 0x1642 
;e4vm.c:793: Console_Clear(7);
	ld	l, #0x07
	call	_Console_Clear_COMPACT
;e4vm.c:794: Console_SetColors(56);
	ld	hl, #_Console_attrib
	ld	(hl), #0x38
;e4vm.c:795: e4vm_vm = (e4vm_type_x4thPtr)((SYSTEM_ADRINT)&e4vm_vm_static);
	ld	hl, #_e4vm_vm_static
	ld	(_e4vm_vm), hl
;e4vm.c:796: e4vm_test1(&e4vm_vm);
	ld	hl, #_e4vm_vm
	push	hl
	call	_e4vm_test1
;e4vm.c:797: e4vm_test_dolit(&e4vm_vm);
	ld	hl, #_e4vm_vm
	ex	(sp),hl
	call	_e4vm_test_dolit
;e4vm.c:798: e4vm_test_drop(&e4vm_vm);
	ld	hl, #_e4vm_vm
	ex	(sp),hl
	call	_e4vm_test_drop
;e4vm.c:799: e4vm_test_swap(&e4vm_vm);
	ld	hl, #_e4vm_vm
	ex	(sp),hl
	call	_e4vm_test_swap
;e4vm.c:800: e4vm_test_dup(&e4vm_vm);
	ld	hl, #_e4vm_vm
	ex	(sp),hl
	call	_e4vm_test_dup
;e4vm.c:801: e4vm_test_over(&e4vm_vm);
	ld	hl, #_e4vm_vm
	ex	(sp),hl
	call	_e4vm_test_over
;e4vm.c:802: e4vm_test_rot(&e4vm_vm);
	ld	hl, #_e4vm_vm
	ex	(sp),hl
	call	_e4vm_test_rot
;e4vm.c:803: e4vm_test_nrot(&e4vm_vm);
	ld	hl, #_e4vm_vm
	ex	(sp),hl
	call	_e4vm_test_nrot
;e4vm.c:804: e4vm_test_minus(&e4vm_vm);
	ld	hl, #_e4vm_vm
	ex	(sp),hl
	call	_e4vm_test_minus
;e4vm.c:805: e4vm_test_devide(&e4vm_vm);
	ld	hl, #_e4vm_vm
	ex	(sp),hl
	call	_e4vm_test_devide
;e4vm.c:806: e4vm_test_inc(&e4vm_vm);
	ld	hl, #_e4vm_vm
	ex	(sp),hl
	call	_e4vm_test_inc
;e4vm.c:807: e4vm_test_mod(&e4vm_vm);
	ld	hl, #_e4vm_vm
	ex	(sp),hl
	call	_e4vm_test_mod
;e4vm.c:808: e4vm_test_true(&e4vm_vm);
	ld	hl, #_e4vm_vm
	ex	(sp),hl
	call	_e4vm_test_true
;e4vm.c:809: e4vm_test_not(&e4vm_vm);
	ld	hl, #_e4vm_vm
	ex	(sp),hl
	call	_e4vm_test_not
;e4vm.c:810: e4vm_test_invert(&e4vm_vm);
	ld	hl, #_e4vm_vm
	ex	(sp),hl
	call	_e4vm_test_invert
;e4vm.c:811: e4vm_test_or(&e4vm_vm);
	ld	hl, #_e4vm_vm
	ex	(sp),hl
	call	_e4vm_test_or
;e4vm.c:812: e4vm_test_and(&e4vm_vm);
	ld	hl, #_e4vm_vm
	ex	(sp),hl
	call	_e4vm_test_and
;e4vm.c:813: e4vm_test_xor(&e4vm_vm);
	ld	hl, #_e4vm_vm
	ex	(sp),hl
	call	_e4vm_test_xor
;e4vm.c:814: e4vm_test_here(&e4vm_vm);
	ld	hl, #_e4vm_vm
	ex	(sp),hl
	call	_e4vm_test_here
;e4vm.c:815: e4vm_test_comma(&e4vm_vm);
	ld	hl, #_e4vm_vm
	ex	(sp),hl
	call	_e4vm_test_comma
;e4vm.c:816: e4vm_test_branch(&e4vm_vm);
	ld	hl, #_e4vm_vm
	ex	(sp),hl
	call	_e4vm_test_branch
;e4vm.c:817: e4vm_test_zbranch(&e4vm_vm);
	ld	hl, #_e4vm_vm
	ex	(sp),hl
	call	_e4vm_test_zbranch
	pop	af
;e4vm.c:818: Basic_PAUSE(0);
	ld	hl, #0x0000
	call	_Basic_PAUSE_EI
;e4vm.c:819: Basic_Quit();
;e4vm.c:820: __FINI;
;e4vm.c:821: }
	jp  _Basic_Quit_IM1
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
