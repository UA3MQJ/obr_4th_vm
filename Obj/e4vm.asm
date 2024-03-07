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
	.globl _e4vm_utils_look_up_word_address
	.globl _e4vm_utils_is_digit
	.globl _e4vm_utils_is_constant
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
	.ds 783
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
;e4vm.c:52: static void e4vm_do_hello (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_do_hello
; ---------------------------------
_e4vm_do_hello:
	call	___sdcc_enter_ix
;e4vm.c:54: (*v)->mem[30] = 1;
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
;e4vm.c:55: }
	pop	ix
	ret
;e4vm.c:57: static void e4vm_test1 (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_test1
; ---------------------------------
_e4vm_test1:
	call	___sdcc_enter_ix
	ld	hl, #-80
	add	hl, sp
	ld	sp, hl
;e4vm.c:67: Console_WriteStr((CHAR*)"e4vm_core test1 ", 17);
	ld	hl, #___str_0
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:68: e4vm_utils_init(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_init
	pop	af
;e4vm.c:69: e4vm_core_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_add_core_words
	pop	af
;e4vm.c:70: __MOVE((CHAR*)"hello", _str__10, 6);
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
;e4vm.c:71: e4vm_utils_add_core_word(v, (void*)_str__10, e4vm_do_hello, 0);
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
;e4vm.c:72: __MOVE((CHAR*)"dolist", _str__9, 7);
	ld	hl, #10
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
;e4vm.c:74: __MOVE((CHAR*)"hello", _str__8, 6);
	ld	hl, #20
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
;e4vm.c:76: __MOVE((CHAR*)"exit", _str__7, 5);
	ld	hl, #30
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
;e4vm.c:78: __MOVE((CHAR*)"dolist", _str__6, 7);
	ld	hl, #40
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
;e4vm.c:80: __MOVE((CHAR*)"nop", _str__5, 4);
	ld	hl, #50
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
;e4vm.c:82: e4vm_utils_add_op(v, 4);
	ld	hl, #0x0004
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op
	pop	af
	pop	af
;e4vm.c:83: __MOVE((CHAR*)"nop", _str__4, 4);
	ld	hl, #60
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
;e4vm.c:85: __MOVE((CHAR*)"exit", _str__3, 5);
	ld	hl, #70
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
;e4vm.c:87: (*v)->wp = 8;
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
;e4vm.c:88: e4vm_core_do_list(v);
	push	bc
	push	bc
	call	_e4vm_core_do_list
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_next
	pop	af
;e4vm.c:90: if ((*v)->mem[30] == 1) {
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
;e4vm.c:91: Console_WriteStr((CHAR*)" - ok", 6);
	ld	hl, #___str_5
	call	_Console_WriteStr_C_COMPACT
	jr	00103$
00102$:
;e4vm.c:93: Console_WriteStr((CHAR*)" - error", 9);
	ld	hl, #___str_6
	call	_Console_WriteStr_C_COMPACT
00103$:
;e4vm.c:95: Console_WriteStrLn((CHAR*)" ", 2);
	ld	hl, #___str_7
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
;e4vm.c:96: }
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
;e4vm.c:98: static void e4vm_test_dolit (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_test_dolit
; ---------------------------------
_e4vm_test_dolit:
	call	___sdcc_enter_ix
	ld	hl, #-30
	add	hl, sp
	ld	sp, hl
;e4vm.c:103: Console_WriteStr((CHAR*)"Test dolit ", 12);
	ld	hl, #___str_8
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:104: e4vm_utils_init(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_init
	pop	af
;e4vm.c:105: e4vm_core_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_add_core_words
	pop	af
;e4vm.c:106: e4vm_core_ext_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_ext_add_core_words
	pop	af
;e4vm.c:107: e4vm_utils_here_to_wp(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_here_to_wp
	pop	af
;e4vm.c:108: __MOVE((CHAR*)"dolist", _str__37, 7);
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
;e4vm.c:110: __MOVE((CHAR*)"dolit", _str__36, 6);
	ld	hl, #10
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
;e4vm.c:112: e4vm_utils_add_op(v, 555);
	ld	hl, #0x022b
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op
	pop	af
	pop	af
;e4vm.c:113: __MOVE((CHAR*)"exit", _str__35, 5);
	ld	hl, #20
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
;e4vm.c:115: e4vm_core_do_list(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_list
	pop	af
;e4vm.c:116: e4vm_core_do_next(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_next
	pop	af
;e4vm.c:117: if ((*v)->ds[0] == 555) {
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
;e4vm.c:118: Console_WriteStrLn((CHAR*)" - ok", 6);
	ld	hl, #___str_12
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
	jr	00104$
00102$:
;e4vm.c:120: Console_WriteStrLn((CHAR*)" - error", 9);
	ld	hl, #___str_13
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
00104$:
;e4vm.c:122: }
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
;e4vm.c:124: static void e4vm_test_drop (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_test_drop
; ---------------------------------
_e4vm_test_drop:
	call	___sdcc_enter_ix
	ld	hl, #-30
	add	hl, sp
	ld	sp, hl
;e4vm.c:129: Console_WriteStr((CHAR*)"Test drop ", 11);
	ld	hl, #___str_14
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:130: e4vm_utils_init(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_init
	pop	af
;e4vm.c:131: e4vm_core_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_add_core_words
	pop	af
;e4vm.c:132: e4vm_stack_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_stack_add_core_words
	pop	af
;e4vm.c:133: e4vm_utils_here_to_wp(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_here_to_wp
	pop	af
;e4vm.c:134: __MOVE((CHAR*)"dolist", _str__41, 7);
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
;e4vm.c:136: __MOVE((CHAR*)"drop", _str__40, 5);
	ld	hl, #10
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
;e4vm.c:138: __MOVE((CHAR*)"exit", _str__39, 5);
	ld	hl, #20
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
;e4vm.c:140: e4vm_utils_stack_ds_push(v, 1);
	ld	hl, #0x0001
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_stack_ds_push
	pop	af
;e4vm.c:141: e4vm_utils_stack_ds_push(v, 2);
	ld	hl, #0x0002
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_stack_ds_push
	pop	af
	pop	af
;e4vm.c:142: e4vm_core_do_list(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_list
	pop	af
;e4vm.c:143: e4vm_core_do_next(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_next
	pop	af
;e4vm.c:144: if ((*v)->ds[(*v)->ds_p - 1] == 1) {
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
;e4vm.c:145: Console_WriteStrLn((CHAR*)" - ok", 6);
	ld	hl, #___str_18
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
	jr	00104$
00102$:
;e4vm.c:147: Console_WriteStrLn((CHAR*)" - error", 9);
	ld	hl, #___str_19
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
00104$:
;e4vm.c:149: }
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
;e4vm.c:151: static void e4vm_test_swap (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_test_swap
; ---------------------------------
_e4vm_test_swap:
	call	___sdcc_enter_ix
	ld	hl, #-30
	add	hl, sp
	ld	sp, hl
;e4vm.c:156: Console_WriteStr((CHAR*)"Test swap ", 11);
	ld	hl, #___str_20
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:157: e4vm_utils_init(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_init
	pop	af
;e4vm.c:158: e4vm_core_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_add_core_words
	pop	af
;e4vm.c:159: e4vm_stack_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_stack_add_core_words
	pop	af
;e4vm.c:160: e4vm_utils_here_to_wp(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_here_to_wp
	pop	af
;e4vm.c:161: __MOVE((CHAR*)"dolist", _str__111, 7);
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
;e4vm.c:163: __MOVE((CHAR*)"swap", _str__110, 5);
	ld	hl, #10
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
;e4vm.c:165: __MOVE((CHAR*)"exit", _str__109, 5);
	ld	hl, #20
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
;e4vm.c:167: e4vm_utils_stack_ds_push(v, 1);
	ld	hl, #0x0001
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_stack_ds_push
	pop	af
;e4vm.c:168: e4vm_utils_stack_ds_push(v, 2);
	ld	hl, #0x0002
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_stack_ds_push
	pop	af
	pop	af
;e4vm.c:169: e4vm_core_do_list(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_list
	pop	af
;e4vm.c:170: e4vm_core_do_next(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_next
	pop	af
;e4vm.c:171: if ((*v)->ds[0] == 2 && (*v)->ds[1] == 1) {
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
;e4vm.c:172: Console_WriteStrLn((CHAR*)" - ok", 6);
	ld	hl, #___str_24
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
	jr	00105$
00102$:
;e4vm.c:174: Console_WriteStrLn((CHAR*)" - error", 9);
	ld	hl, #___str_25
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
00105$:
;e4vm.c:176: }
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
;e4vm.c:178: static void e4vm_test_dup (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_test_dup
; ---------------------------------
_e4vm_test_dup:
	call	___sdcc_enter_ix
	ld	hl, #-32
	add	hl, sp
	ld	sp, hl
;e4vm.c:183: Console_WriteStr((CHAR*)"Test dup ", 10);
	ld	hl, #___str_26
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:184: e4vm_utils_init(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_init
	pop	af
;e4vm.c:185: e4vm_core_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_add_core_words
	pop	af
;e4vm.c:186: e4vm_stack_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_stack_add_core_words
	pop	af
;e4vm.c:187: e4vm_utils_here_to_wp(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_here_to_wp
	pop	af
;e4vm.c:188: __MOVE((CHAR*)"dolist", _str__45, 7);
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
;e4vm.c:190: __MOVE((CHAR*)"dup", _str__44, 4);
	ld	hl, #10
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
;e4vm.c:192: __MOVE((CHAR*)"exit", _str__43, 5);
	ld	hl, #20
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
;e4vm.c:194: e4vm_utils_stack_ds_push(v, 1);
	ld	hl, #0x0001
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_stack_ds_push
	pop	af
	pop	af
;e4vm.c:195: e4vm_core_do_list(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_list
	pop	af
;e4vm.c:196: e4vm_core_do_next(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_next
	pop	af
;e4vm.c:197: if (((*v)->ds[0] == (*v)->ds[1] && (*v)->ds[0] == 1) && (*v)->ds_p == 2) {
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
;e4vm.c:198: Console_WriteStrLn((CHAR*)" - ok", 6);
	ld	hl, #___str_30
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
	jr	00106$
00102$:
;e4vm.c:200: Console_WriteStrLn((CHAR*)" - error", 9);
	ld	hl, #___str_31
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
00106$:
;e4vm.c:202: }
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
;e4vm.c:204: static void e4vm_test_over (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_test_over
; ---------------------------------
_e4vm_test_over:
	call	___sdcc_enter_ix
	ld	hl, #-30
	add	hl, sp
	ld	sp, hl
;e4vm.c:209: Console_WriteStr((CHAR*)"Test over ", 11);
	ld	hl, #___str_32
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:210: e4vm_utils_init(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_init
	pop	af
;e4vm.c:211: e4vm_core_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_add_core_words
	pop	af
;e4vm.c:212: e4vm_stack_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_stack_add_core_words
	pop	af
;e4vm.c:213: e4vm_utils_here_to_wp(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_here_to_wp
	pop	af
;e4vm.c:214: __MOVE((CHAR*)"dolist", _str__100, 7);
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
;e4vm.c:216: __MOVE((CHAR*)"over", _str__99, 5);
	ld	hl, #10
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
;e4vm.c:218: __MOVE((CHAR*)"exit", _str__98, 5);
	ld	hl, #20
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
;e4vm.c:220: e4vm_utils_stack_ds_push(v, 1);
	ld	hl, #0x0001
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_stack_ds_push
	pop	af
;e4vm.c:221: e4vm_utils_stack_ds_push(v, 2);
	ld	hl, #0x0002
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_stack_ds_push
	pop	af
	pop	af
;e4vm.c:222: e4vm_core_do_list(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_list
	pop	af
;e4vm.c:223: e4vm_core_do_next(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_next
	pop	af
;e4vm.c:224: if ((((*v)->ds[0] == 1 && (*v)->ds[1] == 2) && (*v)->ds[2] == 1) && (*v)->ds_p == 3) {
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
;e4vm.c:225: Console_WriteStrLn((CHAR*)" - ok", 6);
	ld	hl, #___str_36
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
	jr	00107$
00102$:
;e4vm.c:227: Console_WriteStrLn((CHAR*)" - error", 9);
	ld	hl, #___str_37
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
00107$:
;e4vm.c:229: }
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
;e4vm.c:231: static void e4vm_test_rot (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_test_rot
; ---------------------------------
_e4vm_test_rot:
	call	___sdcc_enter_ix
	ld	hl, #-30
	add	hl, sp
	ld	sp, hl
;e4vm.c:236: Console_WriteStr((CHAR*)"Test rot ", 10);
	ld	hl, #___str_38
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:237: e4vm_utils_init(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_init
	pop	af
;e4vm.c:238: e4vm_core_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_add_core_words
	pop	af
;e4vm.c:239: e4vm_stack_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_stack_add_core_words
	pop	af
;e4vm.c:240: e4vm_utils_here_to_wp(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_here_to_wp
	pop	af
;e4vm.c:241: __MOVE((CHAR*)"dolist", _str__107, 7);
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
;e4vm.c:243: __MOVE((CHAR*)"rot", _str__106, 4);
	ld	hl, #10
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
;e4vm.c:245: __MOVE((CHAR*)"exit", _str__105, 5);
	ld	hl, #20
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
;e4vm.c:247: e4vm_utils_stack_ds_push(v, 1);
	ld	hl, #0x0001
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_stack_ds_push
	pop	af
;e4vm.c:248: e4vm_utils_stack_ds_push(v, 2);
	ld	hl, #0x0002
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_stack_ds_push
	pop	af
;e4vm.c:249: e4vm_utils_stack_ds_push(v, 3);
	ld	hl, #0x0003
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_stack_ds_push
	pop	af
	pop	af
;e4vm.c:250: e4vm_core_do_list(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_list
	pop	af
;e4vm.c:251: e4vm_core_do_next(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_next
	pop	af
;e4vm.c:252: if (((*v)->ds[0] == 2 && (*v)->ds[1] == 3) && (*v)->ds[2] == 1) {
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
;e4vm.c:253: Console_WriteStrLn((CHAR*)" - ok", 6);
	ld	hl, #___str_42
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
	jr	00106$
00102$:
;e4vm.c:255: Console_WriteStrLn((CHAR*)" - error", 9);
	ld	hl, #___str_43
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
00106$:
;e4vm.c:257: }
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
;e4vm.c:259: static void e4vm_test_nrot (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_test_nrot
; ---------------------------------
_e4vm_test_nrot:
	call	___sdcc_enter_ix
	ld	hl, #-30
	add	hl, sp
	ld	sp, hl
;e4vm.c:264: Console_WriteStr((CHAR*)"Test nrot ", 11);
	ld	hl, #___str_44
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:265: e4vm_utils_init(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_init
	pop	af
;e4vm.c:266: e4vm_core_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_add_core_words
	pop	af
;e4vm.c:267: e4vm_stack_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_stack_add_core_words
	pop	af
;e4vm.c:268: e4vm_utils_here_to_wp(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_here_to_wp
	pop	af
;e4vm.c:269: __MOVE((CHAR*)"dolist", _str__92, 7);
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
;e4vm.c:271: __MOVE((CHAR*)"nrot", _str__91, 5);
	ld	hl, #10
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
;e4vm.c:273: __MOVE((CHAR*)"exit", _str__90, 5);
	ld	hl, #20
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
;e4vm.c:275: e4vm_utils_stack_ds_push(v, 1);
	ld	hl, #0x0001
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_stack_ds_push
	pop	af
;e4vm.c:276: e4vm_utils_stack_ds_push(v, 2);
	ld	hl, #0x0002
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_stack_ds_push
	pop	af
;e4vm.c:277: e4vm_utils_stack_ds_push(v, 3);
	ld	hl, #0x0003
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_stack_ds_push
	pop	af
	pop	af
;e4vm.c:278: e4vm_core_do_list(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_list
	pop	af
;e4vm.c:279: e4vm_core_do_next(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_next
	pop	af
;e4vm.c:280: if (((*v)->ds[0] == 3 && (*v)->ds[1] == 1) && (*v)->ds[2] == 2) {
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
;e4vm.c:281: Console_WriteStrLn((CHAR*)" - ok", 6);
	ld	hl, #___str_48
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
	jr	00106$
00102$:
;e4vm.c:283: Console_WriteStrLn((CHAR*)" - error", 9);
	ld	hl, #___str_49
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
00106$:
;e4vm.c:285: }
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
;e4vm.c:287: static void e4vm_test_minus (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_test_minus
; ---------------------------------
_e4vm_test_minus:
	call	___sdcc_enter_ix
	ld	hl, #-40
	add	hl, sp
	ld	sp, hl
;e4vm.c:293: Console_WriteStr((CHAR*)"Test math -/+ ", 15);
	ld	hl, #___str_50
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:294: e4vm_utils_init(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_init
	pop	af
;e4vm.c:295: e4vm_core_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_add_core_words
	pop	af
;e4vm.c:296: e4vm_math_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_math_add_core_words
	pop	af
;e4vm.c:297: e4vm_utils_here_to_wp(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_here_to_wp
	pop	af
;e4vm.c:298: __MOVE((CHAR*)"dolist", _str__80, 7);
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
;e4vm.c:300: __MOVE((CHAR*)"-", _str__79, 2);
	ld	hl, #10
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
;e4vm.c:302: __MOVE((CHAR*)"+", _str__78, 2);
	ld	hl, #20
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
;e4vm.c:304: __MOVE((CHAR*)"exit", _str__77, 5);
	ld	hl, #30
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
;e4vm.c:306: e4vm_utils_stack_ds_push(v, 1);
	ld	hl, #0x0001
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_stack_ds_push
	pop	af
;e4vm.c:307: e4vm_utils_stack_ds_push(v, 20);
	ld	hl, #0x0014
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_stack_ds_push
	pop	af
;e4vm.c:308: e4vm_utils_stack_ds_push(v, 3);
	ld	hl, #0x0003
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_stack_ds_push
	pop	af
	pop	af
;e4vm.c:309: e4vm_core_do_list(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_list
	pop	af
;e4vm.c:310: e4vm_core_do_next(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_next
	pop	af
;e4vm.c:311: if ((*v)->ds[0] == 18) {
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
;e4vm.c:312: Console_WriteStrLn((CHAR*)" - ok", 6);
	ld	hl, #___str_55
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
	jr	00104$
00102$:
;e4vm.c:314: Console_WriteStrLn((CHAR*)" - error", 9);
	ld	hl, #___str_56
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
00104$:
;e4vm.c:316: }
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
;e4vm.c:318: static void e4vm_test_mod (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_test_mod
; ---------------------------------
_e4vm_test_mod:
	call	___sdcc_enter_ix
	ld	hl, #-30
	add	hl, sp
	ld	sp, hl
;e4vm.c:323: Console_WriteStr((CHAR*)"Test mod ", 10);
	ld	hl, #___str_57
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:324: e4vm_utils_init(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_init
	pop	af
;e4vm.c:325: e4vm_core_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_add_core_words
	pop	af
;e4vm.c:326: e4vm_math_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_math_add_core_words
	pop	af
;e4vm.c:327: e4vm_utils_here_to_wp(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_here_to_wp
	pop	af
;e4vm.c:328: __MOVE((CHAR*)"dolist", _str__84, 7);
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
;e4vm.c:330: __MOVE((CHAR*)"mod", _str__83, 4);
	ld	hl, #10
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
;e4vm.c:332: __MOVE((CHAR*)"exit", _str__82, 5);
	ld	hl, #20
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
;e4vm.c:334: e4vm_utils_stack_ds_push(v, 10);
	ld	hl, #0x000a
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_stack_ds_push
	pop	af
;e4vm.c:335: e4vm_utils_stack_ds_push(v, 3);
	ld	hl, #0x0003
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_stack_ds_push
	pop	af
	pop	af
;e4vm.c:336: e4vm_core_do_list(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_list
	pop	af
;e4vm.c:337: e4vm_core_do_next(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_next
	pop	af
;e4vm.c:338: if ((*v)->ds[(*v)->ds_p - 1] == 1) {
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
;e4vm.c:339: Console_WriteStrLn((CHAR*)" - ok", 6);
	ld	hl, #___str_61
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
	jr	00104$
00102$:
;e4vm.c:341: Console_WriteStrLn((CHAR*)" - error", 9);
	ld	hl, #___str_62
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
00104$:
;e4vm.c:343: }
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
;e4vm.c:345: static void e4vm_test_devide (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_test_devide
; ---------------------------------
_e4vm_test_devide:
	call	___sdcc_enter_ix
	ld	hl, #-40
	add	hl, sp
	ld	sp, hl
;e4vm.c:351: Console_WriteStr((CHAR*)"Test math (/, *) ", 18);
	ld	hl, #___str_63
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:352: e4vm_utils_init(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_init
	pop	af
;e4vm.c:353: e4vm_core_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_add_core_words
	pop	af
;e4vm.c:354: e4vm_math_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_math_add_core_words
	pop	af
;e4vm.c:355: e4vm_utils_here_to_wp(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_here_to_wp
	pop	af
;e4vm.c:356: __MOVE((CHAR*)"dolist", _str__33, 7);
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
;e4vm.c:358: __MOVE((CHAR*)"/", _str__32, 2);
	ld	hl, #10
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
;e4vm.c:360: __MOVE((CHAR*)"*", _str__31, 2);
	ld	hl, #20
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
;e4vm.c:362: __MOVE((CHAR*)"exit", _str__30, 5);
	ld	hl, #30
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
;e4vm.c:364: e4vm_utils_stack_ds_push(v, 3);
	ld	hl, #0x0003
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_stack_ds_push
	pop	af
;e4vm.c:365: e4vm_utils_stack_ds_push(v, 10);
	ld	hl, #0x000a
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_stack_ds_push
	pop	af
;e4vm.c:366: e4vm_utils_stack_ds_push(v, 2);
	ld	hl, #0x0002
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_stack_ds_push
	pop	af
	pop	af
;e4vm.c:367: e4vm_core_do_list(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_list
	pop	af
;e4vm.c:368: e4vm_core_do_next(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_next
	pop	af
;e4vm.c:369: if ((*v)->ds[0] == 15) {
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
;e4vm.c:370: Console_WriteStrLn((CHAR*)" - ok", 6);
	ld	hl, #___str_68
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
	jr	00104$
00102$:
;e4vm.c:372: Console_WriteStrLn((CHAR*)" - error", 9);
	ld	hl, #___str_69
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
00104$:
;e4vm.c:374: }
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
;e4vm.c:376: static void e4vm_test_inc (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_test_inc
; ---------------------------------
_e4vm_test_inc:
	call	___sdcc_enter_ix
	ld	hl, #-50
	add	hl, sp
	ld	sp, hl
;e4vm.c:383: Console_WriteStr((CHAR*)"Test math 1+ 1-", 16);
	ld	hl, #___str_70
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:384: e4vm_utils_init(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_init
	pop	af
;e4vm.c:385: e4vm_core_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_add_core_words
	pop	af
;e4vm.c:386: e4vm_stack_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_stack_add_core_words
	pop	af
;e4vm.c:387: e4vm_math_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_math_add_core_words
	pop	af
;e4vm.c:388: e4vm_utils_here_to_wp(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_here_to_wp
	pop	af
;e4vm.c:389: __MOVE((CHAR*)"dolist", _str__66, 7);
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
;e4vm.c:391: __MOVE((CHAR*)"1+", _str__65, 3);
	ld	hl, #10
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
;e4vm.c:393: __MOVE((CHAR*)"swap", _str__64, 5);
	ld	hl, #20
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
;e4vm.c:395: __MOVE((CHAR*)"1-", _str__63, 3);
	ld	hl, #30
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
;e4vm.c:397: __MOVE((CHAR*)"exit", _str__62, 5);
	ld	hl, #40
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
;e4vm.c:399: e4vm_utils_stack_ds_push(v, 10);
	ld	hl, #0x000a
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_stack_ds_push
	pop	af
;e4vm.c:400: e4vm_utils_stack_ds_push(v, 20);
	ld	hl, #0x0014
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_stack_ds_push
	pop	af
	pop	af
;e4vm.c:401: e4vm_core_do_list(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_list
	pop	af
;e4vm.c:402: e4vm_core_do_next(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_next
	pop	af
;e4vm.c:403: if ((*v)->ds[(*v)->ds_p - 1] == 9 && (*v)->ds[(*v)->ds_p - 2] == 21) {
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
;e4vm.c:404: Console_WriteStrLn((CHAR*)" - ok", 6);
	ld	hl, #___str_76
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
	jr	00105$
00102$:
;e4vm.c:406: Console_WriteStrLn((CHAR*)" - error", 9);
	ld	hl, #___str_77
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
00105$:
;e4vm.c:408: }
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
;e4vm.c:410: static void e4vm_test_true (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_test_true
; ---------------------------------
_e4vm_test_true:
	call	___sdcc_enter_ix
	ld	hl, #-30
	add	hl, sp
	ld	sp, hl
;e4vm.c:415: Console_WriteStr((CHAR*)"Test true ", 11);
	ld	hl, #___str_78
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:416: e4vm_utils_init(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_init
	pop	af
;e4vm.c:417: e4vm_core_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_add_core_words
	pop	af
;e4vm.c:418: e4vm_boolean_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_boolean_add_core_words
	pop	af
;e4vm.c:419: e4vm_utils_here_to_wp(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_here_to_wp
	pop	af
;e4vm.c:420: __MOVE((CHAR*)"dolist", _str__115, 7);
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
;e4vm.c:422: __MOVE((CHAR*)"true", _str__114, 5);
	ld	hl, #10
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
;e4vm.c:424: __MOVE((CHAR*)"exit", _str__113, 5);
	ld	hl, #20
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
;e4vm.c:426: e4vm_core_do_list(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_list
	pop	af
;e4vm.c:427: e4vm_core_do_next(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_next
	pop	af
;e4vm.c:428: if ((*v)->ds[(*v)->ds_p - 1] == e4vm_utils_true_const(&e4vm_vm)) {
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
;e4vm.c:429: Console_WriteStrLn((CHAR*)" - ok", 6);
	ld	hl, #___str_82
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
	jr	00104$
00102$:
;e4vm.c:431: Console_WriteStrLn((CHAR*)" - error", 9);
	ld	hl, #___str_83
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
00104$:
;e4vm.c:433: }
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
;e4vm.c:435: static void e4vm_test_not (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_test_not
; ---------------------------------
_e4vm_test_not:
	call	___sdcc_enter_ix
	ld	hl, #-34
	add	hl, sp
	ld	sp, hl
;e4vm.c:441: Console_WriteStr((CHAR*)"Test not ", 10);
	ld	hl, #___str_84
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:442: e4vm_utils_init(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_init
	pop	af
;e4vm.c:443: e4vm_core_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_add_core_words
	pop	af
;e4vm.c:444: e4vm_boolean_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_boolean_add_core_words
	pop	af
;e4vm.c:445: start_addr = (*v)->hereP;
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
;e4vm.c:446: __MOVE((CHAR*)"dolist", _str__88, 7);
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
;e4vm.c:447: e4vm_utils_add_op_from_string(v, (void*)_str__88);
	push	bc
	push	de
	push	bc
	call	_e4vm_utils_add_op_from_string
	pop	af
	pop	af
	pop	bc
;e4vm.c:448: __MOVE((CHAR*)"not", _str__87, 4);
	ld	hl, #10
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
;e4vm.c:450: __MOVE((CHAR*)"exit", _str__86, 5);
	ld	hl, #20
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
;e4vm.c:453: (*v)->wp = start_addr;
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
;e4vm.c:454: e4vm_core_do_list(v);
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
;e4vm.c:456: if ((*v)->ds[0] == e4vm_utils_false_const(&e4vm_vm)) {
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
;e4vm.c:457: Console_WriteStr((CHAR*)" - ok", 6);
	push	bc
	ld	hl, #___str_88
	call	_Console_WriteStr_C_COMPACT
	pop	bc
	jr	00103$
00102$:
;e4vm.c:459: Console_WriteStr((CHAR*)" - error", 9);
	push	bc
	ld	hl, #___str_89
	call	_Console_WriteStr_C_COMPACT
	pop	bc
00103$:
;e4vm.c:461: (*v)->wp = start_addr;
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
;e4vm.c:462: e4vm_core_do_list(v);
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
;e4vm.c:464: if ((*v)->ds[0] == e4vm_utils_true_const(&e4vm_vm)) {
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
;e4vm.c:465: Console_WriteStr((CHAR*)" - ok", 6);
	push	bc
	ld	hl, #___str_88
	call	_Console_WriteStr_C_COMPACT
	pop	bc
	jr	00106$
00105$:
;e4vm.c:467: Console_WriteStr((CHAR*)" - error", 9);
	push	bc
	ld	hl, #___str_89
	call	_Console_WriteStr_C_COMPACT
	pop	bc
00106$:
;e4vm.c:469: (*v)->ds[0] = 2;
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
;e4vm.c:470: (*v)->wp = start_addr;
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
;e4vm.c:471: e4vm_core_do_list(v);
	push	bc
	call	_e4vm_core_do_list
	pop	af
;e4vm.c:472: e4vm_core_do_next(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_next
	pop	af
;e4vm.c:473: Console_WriteStrLn((CHAR*)" - ok", 6);
	ld	hl, #___str_88
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
;e4vm.c:474: }
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
;e4vm.c:476: static void e4vm_test_invert (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_test_invert
; ---------------------------------
_e4vm_test_invert:
	call	___sdcc_enter_ix
	ld	hl, #-30
	add	hl, sp
	ld	sp, hl
;e4vm.c:481: Console_WriteStr((CHAR*)"Test invert ", 13);
	ld	hl, #___str_90
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:482: e4vm_utils_init(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_init
	pop	af
;e4vm.c:483: e4vm_core_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_add_core_words
	pop	af
;e4vm.c:484: e4vm_boolean_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_boolean_add_core_words
	pop	af
;e4vm.c:485: e4vm_utils_here_to_wp(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_here_to_wp
	pop	af
;e4vm.c:486: __MOVE((CHAR*)"dolist", _str__70, 7);
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
;e4vm.c:488: __MOVE((CHAR*)"invert", _str__69, 7);
	ld	hl, #10
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
;e4vm.c:490: __MOVE((CHAR*)"exit", _str__68, 5);
	ld	hl, #20
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
;e4vm.c:492: e4vm_utils_stack_ds_push(v, 15);
	ld	hl, #0x000f
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_stack_ds_push
	pop	af
	pop	af
;e4vm.c:493: e4vm_core_do_list(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_list
	pop	af
;e4vm.c:494: e4vm_core_do_next(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_next
	pop	af
;e4vm.c:495: if ((*v)->ds[(*v)->ds_p - 1] == -16) {
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
;e4vm.c:496: Console_WriteStrLn((CHAR*)" - ok", 6);
	ld	hl, #___str_94
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
	jr	00104$
00102$:
;e4vm.c:498: Console_WriteStrLn((CHAR*)" - error", 9);
	ld	hl, #___str_95
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
00104$:
;e4vm.c:500: }
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
;e4vm.c:502: static void e4vm_test_or (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_test_or
; ---------------------------------
_e4vm_test_or:
	call	___sdcc_enter_ix
	ld	hl, #-30
	add	hl, sp
	ld	sp, hl
;e4vm.c:507: Console_WriteStr((CHAR*)"Test or ", 9);
	ld	hl, #___str_96
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:508: e4vm_utils_init(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_init
	pop	af
;e4vm.c:509: e4vm_core_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_add_core_words
	pop	af
;e4vm.c:510: e4vm_boolean_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_boolean_add_core_words
	pop	af
;e4vm.c:511: e4vm_utils_here_to_wp(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_here_to_wp
	pop	af
;e4vm.c:512: __MOVE((CHAR*)"dolist", _str__96, 7);
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
;e4vm.c:514: __MOVE((CHAR*)"or", _str__95, 3);
	ld	hl, #10
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
;e4vm.c:516: __MOVE((CHAR*)"exit", _str__94, 5);
	ld	hl, #20
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
;e4vm.c:518: e4vm_utils_stack_ds_push(v, 1);
	ld	hl, #0x0001
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_stack_ds_push
	pop	af
;e4vm.c:519: e4vm_utils_stack_ds_push(v, 2);
	ld	hl, #0x0002
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_stack_ds_push
	pop	af
	pop	af
;e4vm.c:520: e4vm_core_do_list(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_list
	pop	af
;e4vm.c:521: e4vm_core_do_next(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_next
	pop	af
;e4vm.c:522: if ((*v)->ds[0] == 3) {
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
;e4vm.c:523: Console_WriteStrLn((CHAR*)" - ok", 6);
	ld	hl, #___str_100
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
	jr	00104$
00102$:
;e4vm.c:525: Console_WriteStrLn((CHAR*)" - error", 9);
	ld	hl, #___str_101
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
00104$:
;e4vm.c:527: }
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
;e4vm.c:529: static void e4vm_test_and (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_test_and
; ---------------------------------
_e4vm_test_and:
	call	___sdcc_enter_ix
	ld	hl, #-30
	add	hl, sp
	ld	sp, hl
;e4vm.c:534: Console_WriteStr((CHAR*)"Test and ", 10);
	ld	hl, #___str_102
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:535: e4vm_utils_init(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_init
	pop	af
;e4vm.c:536: e4vm_core_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_add_core_words
	pop	af
;e4vm.c:537: e4vm_boolean_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_boolean_add_core_words
	pop	af
;e4vm.c:538: e4vm_utils_here_to_wp(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_here_to_wp
	pop	af
;e4vm.c:539: __MOVE((CHAR*)"dolist", _str__14, 7);
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
;e4vm.c:541: __MOVE((CHAR*)"and", _str__13, 4);
	ld	hl, #10
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
;e4vm.c:543: __MOVE((CHAR*)"exit", _str__12, 5);
	ld	hl, #20
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
;e4vm.c:545: e4vm_utils_stack_ds_push(v, 3);
	ld	hl, #0x0003
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_stack_ds_push
	pop	af
;e4vm.c:546: e4vm_utils_stack_ds_push(v, 6);
	ld	hl, #0x0006
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_stack_ds_push
	pop	af
	pop	af
;e4vm.c:547: e4vm_core_do_list(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_list
	pop	af
;e4vm.c:548: e4vm_core_do_next(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_next
	pop	af
;e4vm.c:549: if ((*v)->ds[0] == 2) {
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
;e4vm.c:550: Console_WriteStrLn((CHAR*)" - ok", 6);
	ld	hl, #___str_106
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
	jr	00104$
00102$:
;e4vm.c:552: Console_WriteStrLn((CHAR*)" - error", 9);
	ld	hl, #___str_107
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
00104$:
;e4vm.c:554: }
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
;e4vm.c:556: static void e4vm_test_xor (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_test_xor
; ---------------------------------
_e4vm_test_xor:
	call	___sdcc_enter_ix
	ld	hl, #-30
	add	hl, sp
	ld	sp, hl
;e4vm.c:561: Console_WriteStr((CHAR*)"Test xor ", 10);
	ld	hl, #___str_108
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:562: e4vm_utils_init(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_init
	pop	af
;e4vm.c:563: e4vm_core_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_add_core_words
	pop	af
;e4vm.c:564: e4vm_boolean_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_boolean_add_core_words
	pop	af
;e4vm.c:565: e4vm_utils_here_to_wp(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_here_to_wp
	pop	af
;e4vm.c:566: __MOVE((CHAR*)"dolist", _str__119, 7);
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
;e4vm.c:568: __MOVE((CHAR*)"xor", _str__118, 4);
	ld	hl, #10
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
;e4vm.c:570: __MOVE((CHAR*)"exit", _str__117, 5);
	ld	hl, #20
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
;e4vm.c:572: e4vm_utils_stack_ds_push(v, 6);
	ld	hl, #0x0006
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_stack_ds_push
	pop	af
;e4vm.c:573: e4vm_utils_stack_ds_push(v, 5);
	ld	hl, #0x0005
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_stack_ds_push
	pop	af
	pop	af
;e4vm.c:574: e4vm_core_do_list(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_list
	pop	af
;e4vm.c:575: e4vm_core_do_next(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_next
	pop	af
;e4vm.c:576: if ((*v)->ds[0] == 3) {
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
;e4vm.c:577: Console_WriteStrLn((CHAR*)" - ok", 6);
	ld	hl, #___str_112
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
	jr	00104$
00102$:
;e4vm.c:579: Console_WriteStrLn((CHAR*)" - error", 9);
	ld	hl, #___str_113
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
00104$:
;e4vm.c:581: }
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
;e4vm.c:583: static void e4vm_test_here (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_test_here
; ---------------------------------
_e4vm_test_here:
	call	___sdcc_enter_ix
	ld	hl, #-30
	add	hl, sp
	ld	sp, hl
;e4vm.c:588: Console_WriteStr((CHAR*)"Test here ", 11);
	ld	hl, #___str_114
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:589: e4vm_utils_init(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_init
	pop	af
;e4vm.c:590: e4vm_core_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_add_core_words
	pop	af
;e4vm.c:591: e4vm_core_ext_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_ext_add_core_words
	pop	af
;e4vm.c:592: e4vm_utils_here_to_wp(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_here_to_wp
	pop	af
;e4vm.c:593: __MOVE((CHAR*)"dolist", _str__55, 7);
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
;e4vm.c:595: __MOVE((CHAR*)"here", _str__54, 5);
	ld	hl, #10
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
;e4vm.c:597: __MOVE((CHAR*)"exit", _str__53, 5);
	ld	hl, #20
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
;e4vm.c:599: (*v)->hereP = 555;
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
;e4vm.c:600: e4vm_core_do_list(v);
	push	bc
	push	bc
	call	_e4vm_core_do_list
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_next
	pop	af
;e4vm.c:602: if ((*v)->ds[0] == 555) {
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
;e4vm.c:603: Console_WriteStrLn((CHAR*)" - ok", 6);
	ld	hl, #___str_118
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
	jr	00104$
00102$:
;e4vm.c:605: Console_WriteStrLn((CHAR*)" - error", 9);
	ld	hl, #___str_119
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
00104$:
;e4vm.c:607: }
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
;e4vm.c:609: static void e4vm_test_comma (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_test_comma
; ---------------------------------
_e4vm_test_comma:
	call	___sdcc_enter_ix
	ld	hl, #-30
	add	hl, sp
	ld	sp, hl
;e4vm.c:614: Console_WriteStr((CHAR*)"Test comma , ", 14);
	ld	hl, #___str_120
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:615: e4vm_utils_init(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_init
	pop	af
;e4vm.c:616: e4vm_core_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_add_core_words
	pop	af
;e4vm.c:617: e4vm_core_ext_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_ext_add_core_words
	pop	af
;e4vm.c:618: e4vm_utils_here_to_wp(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_here_to_wp
	pop	af
;e4vm.c:619: __MOVE((CHAR*)"dolist", _str__28, 7);
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
;e4vm.c:621: __MOVE((CHAR*)",", _str__27, 2);
	ld	hl, #10
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
;e4vm.c:623: __MOVE((CHAR*)"exit", _str__26, 5);
	ld	hl, #20
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
;e4vm.c:625: (*v)->hereP = 18;
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
;e4vm.c:626: e4vm_utils_stack_ds_push(v, 777);
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
;e4vm.c:629: if ((*v)->mem[18] == 777) {
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
;e4vm.c:630: Console_WriteStrLn((CHAR*)" - ok", 6);
	ld	hl, #___str_124
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
	jr	00104$
00102$:
;e4vm.c:632: Console_WriteStrLn((CHAR*)" - error", 9);
	ld	hl, #___str_125
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
00104$:
;e4vm.c:634: }
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
;e4vm.c:636: static void e4vm_test_branch (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_test_branch
; ---------------------------------
_e4vm_test_branch:
	call	___sdcc_enter_ix
	ld	hl, #-98
	add	hl, sp
	ld	sp, hl
;e4vm.c:648: Console_WriteStr((CHAR*)"Test branch ", 13);
	ld	hl, #___str_126
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:649: e4vm_utils_init(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_init
	pop	af
;e4vm.c:650: e4vm_core_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_add_core_words
	pop	af
;e4vm.c:651: e4vm_core_ext_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_ext_add_core_words
	pop	af
;e4vm.c:652: e4vm_utils_here_to_wp(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_here_to_wp
	pop	af
;e4vm.c:653: __MOVE((CHAR*)"dolist", _str__24, 7);
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
;e4vm.c:655: __MOVE((CHAR*)"nop", _str__23, 4);
	ld	hl, #10
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
;e4vm.c:657: __MOVE((CHAR*)"nop", _str__22, 4);
	ld	hl, #20
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
;e4vm.c:659: __MOVE((CHAR*)"nop", _str__21, 4);
	ld	hl, #30
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
;e4vm.c:661: __MOVE((CHAR*)"branch", _str__20, 7);
	ld	hl, #40
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
;e4vm.c:663: e4vm_utils_add_op(v, 77);
	ld	hl, #0x004d
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op
	pop	af
	pop	af
;e4vm.c:664: __MOVE((CHAR*)"dolit", _str__19, 6);
	ld	hl, #50
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
;e4vm.c:666: e4vm_utils_add_op(v, 1);
	ld	hl, #0x0001
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op
	pop	af
	pop	af
;e4vm.c:667: __MOVE((CHAR*)"exit", _str__18, 5);
	ld	hl, #60
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
;e4vm.c:669: jmp_addr = (*v)->hereP;
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
;e4vm.c:670: __MOVE((CHAR*)"dolit", _str__17, 6);
	ld	hl, #70
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
;e4vm.c:671: e4vm_utils_add_op_from_string(v, (void*)_str__17);
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
;e4vm.c:673: __MOVE((CHAR*)"exit", _str__16, 5);
	ld	hl, #80
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
;e4vm.c:676: while (i <= 31) {
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
;e4vm.c:677: if ((*v)->mem[i] == 77) {
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
;e4vm.c:678: (*v)->mem[i] = jmp_addr;
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
;e4vm.c:680: i += 1;
	inc	de
	jr	00103$
00105$:
;e4vm.c:682: e4vm_core_do_list(v);
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
;e4vm.c:684: if ((*v)->ds[(*v)->ds_p - 1] == 2) {
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
;e4vm.c:685: Console_WriteStrLn((CHAR*)" - ok", 6);
	ld	hl, #___str_132
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
	jr	00109$
00107$:
;e4vm.c:687: Console_WriteStrLn((CHAR*)" - error", 9);
	ld	hl, #___str_133
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
00109$:
;e4vm.c:689: }
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
;e4vm.c:691: static void e4vm_test_zbranch (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_test_zbranch
; ---------------------------------
_e4vm_test_zbranch:
	call	___sdcc_enter_ix
	ld	hl, #-102
	add	hl, sp
	ld	sp, hl
;e4vm.c:703: Console_WriteStr((CHAR*)"Test 0branch ", 14);
	ld	hl, #___str_134
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:704: e4vm_utils_init(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_init
	pop	af
;e4vm.c:705: e4vm_core_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_add_core_words
	pop	af
;e4vm.c:706: e4vm_core_ext_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_ext_add_core_words
	pop	af
;e4vm.c:707: e4vm_utils_here_to_wp(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_here_to_wp
	pop	af
;e4vm.c:708: start_addr = (*v)->hereP;
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
;e4vm.c:709: __MOVE((CHAR*)"dolist", _str__129, 7);
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
;e4vm.c:711: __MOVE((CHAR*)"nop", _str__128, 4);
	ld	hl, #10
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
;e4vm.c:713: __MOVE((CHAR*)"nop", _str__127, 4);
	ld	hl, #20
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
;e4vm.c:715: __MOVE((CHAR*)"nop", _str__126, 4);
	ld	hl, #30
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
;e4vm.c:717: __MOVE((CHAR*)"0branch", _str__125, 8);
	ld	hl, #40
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
;e4vm.c:719: e4vm_utils_add_op(v, 77);
	ld	hl, #0x004d
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op
	pop	af
	pop	af
;e4vm.c:720: __MOVE((CHAR*)"dolit", _str__124, 6);
	ld	hl, #50
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
;e4vm.c:722: e4vm_utils_add_op(v, 1);
	ld	hl, #0x0001
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op
	pop	af
	pop	af
;e4vm.c:723: __MOVE((CHAR*)"exit", _str__123, 5);
	ld	hl, #60
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
;e4vm.c:725: jmp_addr = (*v)->hereP;
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
;e4vm.c:726: __MOVE((CHAR*)"dolit", _str__122, 6);
	ld	hl, #70
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
;e4vm.c:728: e4vm_utils_add_op(v, 2);
	ld	hl, #0x0002
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op
	pop	af
	pop	af
;e4vm.c:729: __MOVE((CHAR*)"exit", _str__121, 5);
	ld	hl, #80
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
;e4vm.c:732: while (i <= 31) {
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
;e4vm.c:733: if ((*v)->mem[i] == 77) {
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
;e4vm.c:734: (*v)->mem[i] = jmp_addr;
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
;e4vm.c:736: i += 1;
	inc	bc
	jr	00103$
00105$:
;e4vm.c:738: e4vm_utils_stack_ds_push(v, 0);
	ld	hl, #0x0000
	push	hl
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	push	hl
	call	_e4vm_utils_stack_ds_push
	pop	af
	pop	af
;e4vm.c:739: e4vm_core_do_list(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_list
	pop	af
;e4vm.c:740: e4vm_core_do_next(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_next
	pop	af
;e4vm.c:741: if ((*v)->ds[(*v)->ds_p - 1] == 2) {
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
;e4vm.c:742: Console_WriteStr((CHAR*)" - ok", 6);
	ld	hl, #___str_140
	call	_Console_WriteStr_C_COMPACT
	jr	00108$
00107$:
;e4vm.c:744: Console_WriteStr((CHAR*)" - error", 9);
	ld	hl, #___str_141
	call	_Console_WriteStr_C_COMPACT
00108$:
;e4vm.c:746: (*v)->wp = start_addr;
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
;e4vm.c:747: e4vm_utils_stack_ds_push(v, 1);
	ld	hl, #0x0001
	push	hl
	ld	l, -12 (ix)
	ld	h, -11 (ix)
	push	hl
	call	_e4vm_utils_stack_ds_push
	pop	af
	pop	af
;e4vm.c:748: e4vm_core_do_list(v);
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	push	hl
	call	_e4vm_core_do_list
	pop	af
;e4vm.c:749: e4vm_core_do_next(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_next
	pop	af
;e4vm.c:750: if ((*v)->ds[(*v)->ds_p - 1] == 1) {
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
;e4vm.c:751: Console_WriteStr((CHAR*)" - ok", 6);
	ld	hl, #___str_140
	call	_Console_WriteStr_C_COMPACT
	jr	00112$
00110$:
;e4vm.c:753: Console_WriteStr((CHAR*)" - error", 9);
	ld	hl, #___str_141
	call	_Console_WriteStr_C_COMPACT
00112$:
;e4vm.c:755: }
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
;e4vm.c:757: static void e4vm_test_read_char (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_test_read_char
; ---------------------------------
_e4vm_test_read_char:
	call	___sdcc_enter_ix
;e4vm.c:762: Console_WriteStr((CHAR*)"read_char test ", 16);
	ld	hl, #___str_142
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:763: e4vm_utils_init(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_init
	pop	af
;e4vm.c:764: ch = e4vm_utils_read_char(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_read_char
	pop	af
	ld	c, l
;e4vm.c:765: Console_WriteInt(ch);
	ld	l, c
	ld	h, #0x00
	push	bc
	call	_Console_WriteInt_COMPACT
	pop	bc
;e4vm.c:766: Console_WriteCh((CHAR)ch);
	ld	l, c
	call	_Console_WriteCh_COMPACT
;e4vm.c:767: Console_WriteStr((CHAR*)" - ok", 6);
	ld	hl, #___str_143
;e4vm.c:768: }
	pop	ix
	jp	_Console_WriteStr_C_COMPACT
___str_142:
	.ascii "read_char test "
	.db 0x00
___str_143:
	.ascii " - ok"
	.db 0x00
;e4vm.c:770: static void e4vm_test_read_string (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_test_read_string
; ---------------------------------
_e4vm_test_read_string:
	call	___sdcc_enter_ix
;e4vm.c:773: Console_WriteStr((CHAR*)"read_string test ", 18);
	ld	hl, #___str_144
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:774: e4vm_utils_read_string(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_read_string
	pop	af
;e4vm.c:775: _ptr__103 = *v;
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
;e4vm.c:776: Console_WriteStrLn((void*)_ptr__103->in_string, 64);
	ld	hl, #0x02cf
	add	hl, bc
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
;e4vm.c:777: Console_WriteStr((CHAR*)" - ok", 6);
	ld	hl, #___str_145
;e4vm.c:778: }
	pop	ix
	jp	_Console_WriteStr_C_COMPACT
___str_144:
	.ascii "read_string test "
	.db 0x00
___str_145:
	.ascii " - ok"
	.db 0x00
;e4vm.c:780: static void e4vm_test_immediate (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_test_immediate
; ---------------------------------
_e4vm_test_immediate:
	call	___sdcc_enter_ix
	ld	hl, #-40
	add	hl, sp
	ld	sp, hl
;e4vm.c:786: Console_WriteStr((CHAR*)"Test immediate ", 16);
	ld	hl, #___str_146
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:787: e4vm_utils_init(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_init
	pop	af
;e4vm.c:788: e4vm_core_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_add_core_words
	pop	af
;e4vm.c:789: e4vm_core_ext_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_ext_add_core_words
	pop	af
;e4vm.c:790: __MOVE((CHAR*)"hello", _str__60, 6);
	ld	hl, #0
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0006
	push	hl
	ld	hl, #___str_147
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	de
;e4vm.c:791: e4vm_utils_add_core_word(v, (void*)_str__60, e4vm_do_hello, 0);
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
;e4vm.c:792: e4vm_utils_here_to_wp(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_here_to_wp
	pop	af
;e4vm.c:793: __MOVE((CHAR*)"dolist", _str__59, 7);
	ld	hl, #10
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0007
	push	hl
	ld	hl, #___str_148
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
;e4vm.c:795: __MOVE((CHAR*)"immediate", _str__58, 10);
	ld	hl, #20
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x000a
	push	hl
	ld	hl, #___str_149
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
;e4vm.c:797: __MOVE((CHAR*)"exit", _str__57, 5);
	ld	hl, #30
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0005
	push	hl
	ld	hl, #___str_150
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
;e4vm.c:799: (*v)->hereP = 18;
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
;e4vm.c:800: e4vm_utils_stack_ds_push(v, 777);
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
;e4vm.c:803: if ((*v)->words[(*v)->words_count - 1].immediate == 1) {
	pop	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #0x00cd
	add	hl, bc
	ex	de, hl
	ld	l, c
	ld	h, b
	ld	bc, #0x02cd
	add	hl, bc
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	dec	hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	ld	de, #0x000e
	add	hl, de
	ld	a, (hl)
	dec	a
	jr	NZ,00102$
;e4vm.c:804: Console_WriteStrLn((CHAR*)" - ok", 6);
	ld	hl, #___str_151
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
	jr	00104$
00102$:
;e4vm.c:806: Console_WriteStrLn((CHAR*)" - error", 9);
	ld	hl, #___str_152
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
00104$:
;e4vm.c:808: }
	ld	sp, ix
	pop	ix
	ret
___str_146:
	.ascii "Test immediate "
	.db 0x00
___str_147:
	.ascii "hello"
	.db 0x00
___str_148:
	.ascii "dolist"
	.db 0x00
___str_149:
	.ascii "immediate"
	.db 0x00
___str_150:
	.ascii "exit"
	.db 0x00
___str_151:
	.ascii " - ok"
	.db 0x00
___str_152:
	.ascii " - error"
	.db 0x00
;e4vm.c:810: static void e4vm_test_execute1 (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_test_execute1
; ---------------------------------
_e4vm_test_execute1:
	call	___sdcc_enter_ix
	ld	hl, #-50
	add	hl, sp
	ld	sp, hl
;e4vm.c:817: Console_WriteStr((CHAR*)"Test execute from core ", 24);
	ld	hl, #___str_153
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:818: e4vm_utils_init(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_init
	pop	af
;e4vm.c:819: e4vm_core_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_add_core_words
	pop	af
;e4vm.c:820: e4vm_core_ext_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_ext_add_core_words
	pop	af
;e4vm.c:821: __MOVE((CHAR*)"hello", _str__51, 6);
	ld	hl, #0
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0006
	push	hl
	ld	hl, #___str_154
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	de
;e4vm.c:822: e4vm_utils_add_core_word(v, (void*)_str__51, e4vm_do_hello, 0);
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
;e4vm.c:823: e4vm_utils_here_to_wp(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_here_to_wp
	pop	af
;e4vm.c:824: __MOVE((CHAR*)"dolist", _str__50, 7);
	ld	hl, #10
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0007
	push	hl
	ld	hl, #___str_155
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
;e4vm.c:826: __MOVE((CHAR*)"execute", _str__49, 8);
	ld	hl, #20
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0008
	push	hl
	ld	hl, #___str_156
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
;e4vm.c:828: __MOVE((CHAR*)"exit", _str__48, 5);
	ld	hl, #30
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0005
	push	hl
	ld	hl, #___str_157
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
;e4vm.c:830: e4vm_utils_stack_ds_push(v, (__MOVE((CHAR*)"hello", _str__47, 6), 
	ld	hl, #40
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0006
	push	hl
	ld	hl, #___str_154
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	ld	hl, #_e4vm_vm
	ex	(sp),hl
	call	_e4vm_utils_look_up_word_address
	pop	af
;e4vm.c:830: e4vm_utils_stack_ds_push(v, (__MOVE((CHAR*)"hello", _str__47, 6), 
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_stack_ds_push
	pop	af
	pop	af
;e4vm.c:832: (*v)->mem[30] = 0;
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x00c6
	add	hl, de
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;e4vm.c:833: e4vm_core_do_list(v);
	push	bc
	push	bc
	call	_e4vm_core_do_list
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_next
	pop	af
;e4vm.c:835: if ((*v)->mem[30] == 1) {
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
;e4vm.c:836: Console_WriteStrLn((CHAR*)" - ok", 6);
	ld	hl, #___str_158
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
	jr	00104$
00102$:
;e4vm.c:838: Console_WriteStrLn((CHAR*)" - error", 9);
	ld	hl, #___str_159
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
00104$:
;e4vm.c:840: }
	ld	sp, ix
	pop	ix
	ret
___str_153:
	.ascii "Test execute from core "
	.db 0x00
___str_154:
	.ascii "hello"
	.db 0x00
___str_155:
	.ascii "dolist"
	.db 0x00
___str_156:
	.ascii "execute"
	.db 0x00
___str_157:
	.ascii "exit"
	.db 0x00
___str_158:
	.ascii " - ok"
	.db 0x00
___str_159:
	.ascii " - error"
	.db 0x00
;e4vm.c:842: static void e4vm_test_isconstant (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_test_isconstant
; ---------------------------------
_e4vm_test_isconstant:
	call	___sdcc_enter_ix
	ld	hl, #-40
	add	hl, sp
	ld	sp, hl
;e4vm.c:848: Console_WriteStrLn((CHAR*)"Test test_isconstant ", 22);
	ld	hl, #___str_160
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
;e4vm.c:849: if (e4vm_utils_is_digit('9')) {
	ld	a, #0x39
	push	af
	inc	sp
	call	_e4vm_utils_is_digit
	inc	sp
	ld	a, l
	or	a, a
	jr	Z,00102$
;e4vm.c:850: Console_WriteStrLn((CHAR*)"is_digit 1 - ok", 16);
	ld	hl, #___str_161
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
	jr	00103$
00102$:
;e4vm.c:852: Console_WriteStrLn((CHAR*)"is_digit 1 - error", 19);
	ld	hl, #___str_162
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
00103$:
;e4vm.c:854: if (__MOVE((CHAR*)"90", _str__75, 3), 
	ld	hl, #0
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0003
	push	hl
	ld	hl, #___str_163
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	call	_e4vm_utils_is_constant
	pop	af
	ld	a, l
	or	a, a
	jr	Z,00105$
;e4vm.c:856: Console_WriteStrLn((CHAR*)"is_constant 90 - ok", 20);
	ld	hl, #___str_164
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
	jr	00106$
00105$:
;e4vm.c:858: Console_WriteStrLn((CHAR*)"is_constant 90 - error", 23);
	ld	hl, #___str_165
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
00106$:
;e4vm.c:860: if (__MOVE((CHAR*)"+90", _str__74, 4), 
	ld	hl, #10
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0004
	push	hl
	ld	hl, #___str_166
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	call	_e4vm_utils_is_constant
	pop	af
	ld	a, l
	or	a, a
	jr	Z,00108$
;e4vm.c:862: Console_WriteStrLn((CHAR*)"is_constant +90 - ok", 21);
	ld	hl, #___str_167
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
	jr	00109$
00108$:
;e4vm.c:864: Console_WriteStrLn((CHAR*)"is_constant +90 - error", 24);
	ld	hl, #___str_168
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
00109$:
;e4vm.c:866: if (__MOVE((CHAR*)"-90", _str__73, 4), 
	ld	hl, #20
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0004
	push	hl
	ld	hl, #___str_169
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	call	_e4vm_utils_is_constant
	pop	af
	ld	a, l
	or	a, a
	jr	Z,00111$
;e4vm.c:868: Console_WriteStrLn((CHAR*)"is_constant -90 - ok", 21);
	ld	hl, #___str_170
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
	jr	00112$
00111$:
;e4vm.c:870: Console_WriteStrLn((CHAR*)"is_constant -90 - error", 24);
	ld	hl, #___str_171
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
00112$:
;e4vm.c:872: if (__MOVE((CHAR*)"as", _str__72, 3), 
	ld	hl, #30
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0003
	push	hl
	ld	hl, #___str_172
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	call	_e4vm_utils_is_constant
	pop	af
	ld	a, l
	or	a, a
	jr	Z,00114$
;e4vm.c:874: Console_WriteStrLn((CHAR*)"is_constant as - ok", 20);
	ld	hl, #___str_173
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
	jr	00116$
00114$:
;e4vm.c:876: Console_WriteStrLn((CHAR*)"is_constant as - error", 23);
	ld	hl, #___str_174
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
00116$:
;e4vm.c:878: }
	ld	sp, ix
	pop	ix
	ret
___str_160:
	.ascii "Test test_isconstant "
	.db 0x00
___str_161:
	.ascii "is_digit 1 - ok"
	.db 0x00
___str_162:
	.ascii "is_digit 1 - error"
	.db 0x00
___str_163:
	.ascii "90"
	.db 0x00
___str_164:
	.ascii "is_constant 90 - ok"
	.db 0x00
___str_165:
	.ascii "is_constant 90 - error"
	.db 0x00
___str_166:
	.ascii "+90"
	.db 0x00
___str_167:
	.ascii "is_constant +90 - ok"
	.db 0x00
___str_168:
	.ascii "is_constant +90 - error"
	.db 0x00
___str_169:
	.ascii "-90"
	.db 0x00
___str_170:
	.ascii "is_constant -90 - ok"
	.db 0x00
___str_171:
	.ascii "is_constant -90 - error"
	.db 0x00
___str_172:
	.ascii "as"
	.db 0x00
___str_173:
	.ascii "is_constant as - ok"
	.db 0x00
___str_174:
	.ascii "is_constant as - error"
	.db 0x00
;e4vm.c:881: int main (int argc, char **argv)
;	---------------------------------
; Function main
; ---------------------------------
_main::
;e4vm.c:886: __IMPORT(e4vm_boolean__init);
	call	_e4vm_boolean__init
;e4vm.c:887: __IMPORT(e4vm_core__init);
	call	_e4vm_core__init
;e4vm.c:888: __IMPORT(e4vm_core_ext__init);
	call	_e4vm_core_ext__init
;e4vm.c:889: __IMPORT(e4vm_math__init);
	call	_e4vm_math__init
;e4vm.c:890: __IMPORT(e4vm_stack__init);
	call	_e4vm_stack__init
;e4vm.c:891: __IMPORT(e4vm_type__init);
	call	_e4vm_type__init
;e4vm.c:892: __IMPORT(e4vm_utils__init);
	call	_e4vm_utils__init
;e4vm.c:895: Basic_Init();
	res	4,1(iy) 
	call 0x1642 
;e4vm.c:896: Console_Clear(7);
	ld	l, #0x07
	call	_Console_Clear_COMPACT
;e4vm.c:897: Console_SetColors(56);
	ld	hl, #_Console_attrib
	ld	(hl), #0x38
;e4vm.c:898: e4vm_vm = (e4vm_type_x4thPtr)((SYSTEM_ADRINT)&e4vm_vm_static);
	ld	hl, #_e4vm_vm_static
	ld	(_e4vm_vm), hl
;e4vm.c:899: e4vm_test_isconstant(&e4vm_vm);
	ld	hl, #_e4vm_vm
	push	hl
	call	_e4vm_test_isconstant
	pop	af
;e4vm.c:900: Basic_PAUSE(0);
	ld	hl, #0x0000
	call	_Basic_PAUSE_EI
;e4vm.c:901: Basic_Quit();
;e4vm.c:902: __FINI;
;e4vm.c:903: }
	jp  _Basic_Quit_IM1
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
