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
	.globl _e4vm_rw__init
	.globl _e4vm_rw_add_core_words
	.globl _e4vm_comment__init
	.globl _e4vm_comment_add_core_words
	.globl _e4vm_mem__init
	.globl _e4vm_mem_add_core_words
	.globl _e4vm_utils__init
	.globl _e4vm_utils_stack_ds_push
	.globl _e4vm_utils_keyboard_read_string
	.globl _e4vm_utils_init
	.globl _e4vm_utils_here_to_wp
	.globl _e4vm_utils_add_op_from_string
	.globl _e4vm_utils_add_core_word
	.globl _e4vm_boolean__init
	.globl _e4vm_boolean_add_core_words
	.globl _e4vm_math__init
	.globl _e4vm_math_add_core_words
	.globl _e4vm_stack__init
	.globl _e4vm_stack_add_core_words
	.globl _e4vm_core_ext__init
	.globl _e4vm_core_ext_interpreter
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
	.globl _Console_WriteLn_COMPACT
	.globl _memcpy
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_e4vm_vm_static:
	.ds 1371
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
;e4vm.c:36: static void e4vm_test_read_mem (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_test_read_mem
; ---------------------------------
_e4vm_test_read_mem:
	call	___sdcc_enter_ix
	ld	hl, #-30
	add	hl, sp
	ld	sp, hl
;e4vm.c:41: Console_WriteStr((CHAR*)"Test mem op @ ", 15);
	ld	hl, #___str_0
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:42: e4vm_utils_init(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_init
	pop	af
;e4vm.c:43: e4vm_core_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_add_core_words
	pop	af
;e4vm.c:44: e4vm_core_ext_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_ext_add_core_words
	pop	af
;e4vm.c:45: e4vm_mem_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_mem_add_core_words
	pop	af
;e4vm.c:46: e4vm_utils_here_to_wp(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_here_to_wp
	pop	af
;e4vm.c:47: __MOVE((CHAR*)"dolist", _str__6, 7);
	ld	hl, #0
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0007
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
;e4vm.c:49: __MOVE((CHAR*)"@", _str__5, 2);
	ld	hl, #10
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0002
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
;e4vm.c:51: __MOVE((CHAR*)"exit", _str__4, 5);
	ld	hl, #20
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
;e4vm.c:53: e4vm_utils_stack_ds_push(v, 30);
	ld	hl, #0x001e
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_stack_ds_push
	pop	af
	pop	af
;e4vm.c:54: (*v)->mem[30] = 5;
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x00c6
	add	hl, de
	ld	(hl), #0x05
	inc	hl
	ld	(hl), #0x00
;e4vm.c:55: e4vm_core_do_list(v);
	push	bc
	push	bc
	call	_e4vm_core_do_list
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_next
	pop	af
;e4vm.c:57: if ((*v)->ds[(*v)->ds_p - 1] == 5) {
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
	sub	a, #0x05
	or	a, b
	jr	NZ,00102$
;e4vm.c:58: Console_WriteStrLn((CHAR*)" - ok", 6);
	ld	hl, #___str_4
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
	jr	00104$
00102$:
;e4vm.c:60: Console_WriteStrLn((CHAR*)" - error", 9);
	ld	hl, #___str_5
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
00104$:
;e4vm.c:62: }
	ld	sp, ix
	pop	ix
	ret
___str_0:
	.ascii "Test mem op @ "
	.db 0x00
___str_1:
	.ascii "dolist"
	.db 0x00
___str_2:
	.ascii "@"
	.db 0x00
___str_3:
	.ascii "exit"
	.db 0x00
___str_4:
	.ascii " - ok"
	.db 0x00
___str_5:
	.ascii " - error"
	.db 0x00
;e4vm.c:64: static void e4vm_test_write_mem (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_test_write_mem
; ---------------------------------
_e4vm_test_write_mem:
	call	___sdcc_enter_ix
	ld	hl, #-40
	add	hl, sp
	ld	sp, hl
;e4vm.c:70: Console_WriteStr((CHAR*)"Test mem op ! ", 15);
	ld	hl, #___str_6
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:71: e4vm_utils_init(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_init
	pop	af
;e4vm.c:72: e4vm_core_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_add_core_words
	pop	af
;e4vm.c:73: e4vm_core_ext_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_ext_add_core_words
	pop	af
;e4vm.c:74: e4vm_mem_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_mem_add_core_words
	pop	af
;e4vm.c:75: __MOVE((CHAR*)"hello", _str__11, 6);
	ld	hl, #0
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0006
	push	hl
	ld	hl, #___str_7
	push	hl
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	de
;e4vm.c:76: e4vm_utils_add_core_word(v, (void*)_str__11, e4vm_do_hello, 0);
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
;e4vm.c:77: e4vm_utils_here_to_wp(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_here_to_wp
	pop	af
;e4vm.c:78: __MOVE((CHAR*)"dolist", _str__10, 7);
	ld	hl, #10
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0007
	push	hl
	ld	hl, #___str_8
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
;e4vm.c:80: __MOVE((CHAR*)"!", _str__9, 2);
	ld	hl, #20
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0002
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
;e4vm.c:82: __MOVE((CHAR*)"exit", _str__8, 5);
	ld	hl, #30
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0005
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
;e4vm.c:84: e4vm_utils_stack_ds_push(v, 2);
	ld	hl, #0x0002
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_stack_ds_push
	pop	af
;e4vm.c:85: e4vm_utils_stack_ds_push(v, 30);
	ld	hl, #0x001e
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_stack_ds_push
	pop	af
	pop	af
;e4vm.c:86: (*v)->mem[30] = 0;
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
;e4vm.c:87: e4vm_core_do_list(v);
	push	bc
	push	bc
	call	_e4vm_core_do_list
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_next
	pop	af
;e4vm.c:89: if ((*v)->mem[30] == 2) {
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
	sub	a, #0x02
	or	a, b
	jr	NZ,00102$
;e4vm.c:90: Console_WriteStrLn((CHAR*)" - ok", 6);
	ld	hl, #___str_11
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
	jr	00104$
00102$:
;e4vm.c:92: Console_WriteStrLn((CHAR*)" - error", 9);
	ld	hl, #___str_12
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
00104$:
;e4vm.c:94: }
	ld	sp, ix
	pop	ix
	ret
___str_6:
	.ascii "Test mem op ! "
	.db 0x00
___str_7:
	.ascii "hello"
	.db 0x00
___str_8:
	.ascii "dolist"
	.db 0x00
___str_9:
	.ascii "!"
	.db 0x00
___str_10:
	.ascii "exit"
	.db 0x00
___str_11:
	.ascii " - ok"
	.db 0x00
___str_12:
	.ascii " - error"
	.db 0x00
;e4vm.c:96: static void e4vm_test_console (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_test_console
; ---------------------------------
_e4vm_test_console:
	call	___sdcc_enter_ix
;e4vm.c:98: Console_WriteStrLn((CHAR*)"Oberon based 4th vm", 20);
	ld	hl, #___str_13
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
;e4vm.c:99: Console_WriteStrLn((CHAR*)"github.com/UA3MQJ/obr_4th_vm", 29);
	ld	hl, #___str_14
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
;e4vm.c:100: Console_WriteLn();
	call	_Console_WriteLn_COMPACT
;e4vm.c:101: e4vm_utils_init(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_init
;e4vm.c:102: e4vm_core_add_core_words(&e4vm_vm);
	ld	hl, #_e4vm_vm
	ex	(sp),hl
	call	_e4vm_core_add_core_words
;e4vm.c:103: e4vm_core_ext_add_core_words(&e4vm_vm);
	ld	hl, #_e4vm_vm
	ex	(sp),hl
	call	_e4vm_core_ext_add_core_words
;e4vm.c:104: e4vm_stack_add_core_words(&e4vm_vm);
	ld	hl, #_e4vm_vm
	ex	(sp),hl
	call	_e4vm_stack_add_core_words
;e4vm.c:105: e4vm_math_add_core_words(&e4vm_vm);
	ld	hl, #_e4vm_vm
	ex	(sp),hl
	call	_e4vm_math_add_core_words
;e4vm.c:106: e4vm_boolean_add_core_words(&e4vm_vm);
	ld	hl, #_e4vm_vm
	ex	(sp),hl
	call	_e4vm_boolean_add_core_words
;e4vm.c:107: e4vm_comment_add_core_words(&e4vm_vm);
	ld	hl, #_e4vm_vm
	ex	(sp),hl
	call	_e4vm_comment_add_core_words
;e4vm.c:108: e4vm_mem_add_core_words(&e4vm_vm);
	ld	hl, #_e4vm_vm
	ex	(sp),hl
	call	_e4vm_mem_add_core_words
;e4vm.c:109: e4vm_rw_add_core_words(&e4vm_vm);
	ld	hl, #_e4vm_vm
	ex	(sp),hl
	call	_e4vm_rw_add_core_words
	pop	af
;e4vm.c:110: while (1) {
00102$:
;e4vm.c:111: Console_WriteStr((CHAR*)">", 2);
	ld	hl, #___str_15
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:112: e4vm_utils_keyboard_read_string(&e4vm_vm);
	ld	hl, #_e4vm_vm
	push	hl
	call	_e4vm_utils_keyboard_read_string
	pop	af
;e4vm.c:113: e4vm_core_ext_interpreter(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_ext_interpreter
	pop	af
	jr	00102$
;e4vm.c:115: }
	pop	ix
	ret
___str_13:
	.ascii "Oberon based 4th vm"
	.db 0x00
___str_14:
	.ascii "github.com/UA3MQJ/obr_4th_vm"
	.db 0x00
___str_15:
	.ascii ">"
	.db 0x00
;e4vm.c:118: int main (int argc, char **argv)
;	---------------------------------
; Function main
; ---------------------------------
_main::
;e4vm.c:123: __IMPORT(e4vm_boolean__init);
	call	_e4vm_boolean__init
;e4vm.c:124: __IMPORT(e4vm_comment__init);
	call	_e4vm_comment__init
;e4vm.c:125: __IMPORT(e4vm_core__init);
	call	_e4vm_core__init
;e4vm.c:126: __IMPORT(e4vm_core_ext__init);
	call	_e4vm_core_ext__init
;e4vm.c:127: __IMPORT(e4vm_math__init);
	call	_e4vm_math__init
;e4vm.c:128: __IMPORT(e4vm_mem__init);
	call	_e4vm_mem__init
;e4vm.c:129: __IMPORT(e4vm_rw__init);
	call	_e4vm_rw__init
;e4vm.c:130: __IMPORT(e4vm_stack__init);
	call	_e4vm_stack__init
;e4vm.c:131: __IMPORT(e4vm_type__init);
	call	_e4vm_type__init
;e4vm.c:132: __IMPORT(e4vm_utils__init);
	call	_e4vm_utils__init
;e4vm.c:135: Basic_Init();
	res	4,1(iy) 
	call 0x1642 
;e4vm.c:136: Console_Clear(7);
	ld	l, #0x07
	call	_Console_Clear_COMPACT
;e4vm.c:137: Console_SetColors(56);
	ld	hl, #_Console_attrib
	ld	(hl), #0x38
;e4vm.c:138: e4vm_vm = (e4vm_type_x4thPtr)((SYSTEM_ADRINT)&e4vm_vm_static);
	ld	hl, #_e4vm_vm_static
	ld	(_e4vm_vm), hl
;e4vm.c:139: e4vm_test_console(&e4vm_vm);
	ld	hl, #_e4vm_vm
	push	hl
	call	_e4vm_test_console
	pop	af
;e4vm.c:140: Basic_PAUSE(0);
	ld	hl, #0x0000
	call	_Basic_PAUSE_EI
;e4vm.c:141: Basic_Quit();
;e4vm.c:142: __FINI;
;e4vm.c:143: }
	jp  _Basic_Quit_IM1
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
