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
	.globl _e4vm_utils_init
	.globl _e4vm_utils_add_op_from_string
	.globl _e4vm_utils_add_op
	.globl _e4vm_utils_add_core_word
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
;e4vm.c:22: static void e4vm_do_hello (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_do_hello
; ---------------------------------
_e4vm_do_hello:
	call	___sdcc_enter_ix
;e4vm.c:24: (*v)->mem[30] = 1;
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
;e4vm.c:25: }
	pop	ix
	ret
;e4vm.c:27: static void e4vm_test1 (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_test1
; ---------------------------------
_e4vm_test1:
	call	___sdcc_enter_ix
	ld	hl, #-64
	add	hl, sp
	ld	sp, hl
;e4vm.c:37: Console_WriteStr((CHAR*)"e4vm_core test1 ", 17);
	ld	hl, #___str_0
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:38: e4vm_utils_init(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_init
	pop	af
;e4vm.c:39: e4vm_core_add_core_words(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_add_core_words
	pop	af
;e4vm.c:40: __MOVE((CHAR*)"hello", _str__10, 6);
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
;e4vm.c:41: e4vm_utils_add_core_word(v, (void*)_str__10, e4vm_do_hello, 0);
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
;e4vm.c:42: __MOVE((CHAR*)"dolist", _str__9, 7);
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
;e4vm.c:44: __MOVE((CHAR*)"hello", _str__8, 6);
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
;e4vm.c:46: __MOVE((CHAR*)"exit", _str__7, 5);
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
;e4vm.c:48: __MOVE((CHAR*)"dolist", _str__6, 7);
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
;e4vm.c:50: __MOVE((CHAR*)"nop", _str__5, 4);
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
;e4vm.c:52: e4vm_utils_add_op(v, 4);
	ld	hl, #0x0004
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op
	pop	af
	pop	af
;e4vm.c:53: __MOVE((CHAR*)"nop", _str__4, 4);
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
;e4vm.c:55: __MOVE((CHAR*)"exit", _str__3, 5);
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
;e4vm.c:57: (*v)->wp = 8;
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
;e4vm.c:58: e4vm_core_do_list(v);
	push	bc
	push	bc
	call	_e4vm_core_do_list
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_next
	pop	af
;e4vm.c:60: if ((*v)->mem[30] == 1) {
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
;e4vm.c:61: Console_WriteStr((CHAR*)" - ok", 6);
	ld	hl, #___str_5
	call	_Console_WriteStr_C_COMPACT
	jr	00103$
00102$:
;e4vm.c:63: Console_WriteStr((CHAR*)" - error", 9);
	ld	hl, #___str_6
	call	_Console_WriteStr_C_COMPACT
00103$:
;e4vm.c:65: Console_WriteStrLn((CHAR*)" ", 2);
	ld	hl, #___str_7
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
;e4vm.c:66: }
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
;e4vm.c:69: int main (int argc, char **argv)
;	---------------------------------
; Function main
; ---------------------------------
_main::
;e4vm.c:74: __IMPORT(e4vm_core__init);
	call	_e4vm_core__init
;e4vm.c:75: __IMPORT(e4vm_type__init);
	call	_e4vm_type__init
;e4vm.c:76: __IMPORT(e4vm_utils__init);
	call	_e4vm_utils__init
;e4vm.c:79: Basic_Init();
	res	4,1(iy) 
	call 0x1642 
;e4vm.c:80: Console_Clear(7);
	ld	l, #0x07
	call	_Console_Clear_COMPACT
;e4vm.c:81: Console_SetColors(56);
	ld	hl, #_Console_attrib
	ld	(hl), #0x38
;e4vm.c:82: e4vm_vm = (e4vm_type_x4thPtr)((SYSTEM_ADRINT)&e4vm_vm_static);
	ld	hl, #_e4vm_vm_static
	ld	(_e4vm_vm), hl
;e4vm.c:83: e4vm_test1(&e4vm_vm);
	ld	hl, #_e4vm_vm
	push	hl
	call	_e4vm_test1
	pop	af
;e4vm.c:84: Basic_PAUSE(0);
	ld	hl, #0x0000
	call	_Basic_PAUSE_EI
;e4vm.c:85: Basic_Quit();
;e4vm.c:86: __FINI;
;e4vm.c:87: }
	jp  _Basic_Quit_IM1
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
