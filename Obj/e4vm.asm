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
	.globl _e4vm_utils_keyboard_read_string
	.globl _e4vm_utils_init
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
	.globl _e4vm_core_add_core_words
	.globl _e4vm_type__init
	.globl _Basic_Quit_IM1
	.globl _Basic_PAUSE_EI
	.globl _Console_Clear_COMPACT
	.globl _Console_WriteStr_C_COMPACT
	.globl _Console_WriteLn_COMPACT
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
;e4vm.c:29: static void e4vm_do_hello (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_do_hello
; ---------------------------------
_e4vm_do_hello:
	call	___sdcc_enter_ix
;e4vm.c:31: (*v)->mem[30] = 1;
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
;e4vm.c:32: }
	pop	ix
	ret
;e4vm.c:34: static void e4vm_test_console (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_test_console
; ---------------------------------
_e4vm_test_console:
	call	___sdcc_enter_ix
;e4vm.c:36: Console_WriteLn();
	call	_Console_WriteLn_COMPACT
;e4vm.c:37: e4vm_utils_init(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_init
;e4vm.c:38: e4vm_core_add_core_words(&e4vm_vm);
	ld	hl, #_e4vm_vm
	ex	(sp),hl
	call	_e4vm_core_add_core_words
;e4vm.c:39: e4vm_core_ext_add_core_words(&e4vm_vm);
	ld	hl, #_e4vm_vm
	ex	(sp),hl
	call	_e4vm_core_ext_add_core_words
;e4vm.c:40: e4vm_stack_add_core_words(&e4vm_vm);
	ld	hl, #_e4vm_vm
	ex	(sp),hl
	call	_e4vm_stack_add_core_words
;e4vm.c:41: e4vm_math_add_core_words(&e4vm_vm);
	ld	hl, #_e4vm_vm
	ex	(sp),hl
	call	_e4vm_math_add_core_words
;e4vm.c:42: e4vm_boolean_add_core_words(&e4vm_vm);
	ld	hl, #_e4vm_vm
	ex	(sp),hl
	call	_e4vm_boolean_add_core_words
;e4vm.c:43: e4vm_comment_add_core_words(&e4vm_vm);
	ld	hl, #_e4vm_vm
	ex	(sp),hl
	call	_e4vm_comment_add_core_words
;e4vm.c:44: e4vm_mem_add_core_words(&e4vm_vm);
	ld	hl, #_e4vm_vm
	ex	(sp),hl
	call	_e4vm_mem_add_core_words
;e4vm.c:45: e4vm_rw_add_core_words(&e4vm_vm);
	ld	hl, #_e4vm_vm
	ex	(sp),hl
	call	_e4vm_rw_add_core_words
	pop	af
;e4vm.c:46: while (1) {
00102$:
;e4vm.c:47: Console_WriteStr((CHAR*)">", 2);
	ld	hl, #___str_0
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:48: e4vm_utils_keyboard_read_string(&e4vm_vm);
	ld	hl, #_e4vm_vm
	push	hl
	call	_e4vm_utils_keyboard_read_string
	pop	af
;e4vm.c:49: e4vm_core_ext_interpreter(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_ext_interpreter
	pop	af
	jr	00102$
;e4vm.c:51: }
	pop	ix
	ret
___str_0:
	.ascii ">"
	.db 0x00
;e4vm.c:54: int main (int argc, char **argv)
;	---------------------------------
; Function main
; ---------------------------------
_main::
;e4vm.c:59: __IMPORT(e4vm_boolean__init);
	call	_e4vm_boolean__init
;e4vm.c:60: __IMPORT(e4vm_comment__init);
	call	_e4vm_comment__init
;e4vm.c:61: __IMPORT(e4vm_core__init);
	call	_e4vm_core__init
;e4vm.c:62: __IMPORT(e4vm_core_ext__init);
	call	_e4vm_core_ext__init
;e4vm.c:63: __IMPORT(e4vm_math__init);
	call	_e4vm_math__init
;e4vm.c:64: __IMPORT(e4vm_mem__init);
	call	_e4vm_mem__init
;e4vm.c:65: __IMPORT(e4vm_rw__init);
	call	_e4vm_rw__init
;e4vm.c:66: __IMPORT(e4vm_stack__init);
	call	_e4vm_stack__init
;e4vm.c:67: __IMPORT(e4vm_type__init);
	call	_e4vm_type__init
;e4vm.c:68: __IMPORT(e4vm_utils__init);
	call	_e4vm_utils__init
;e4vm.c:71: Basic_Init();
	res	4,1(iy) 
	call 0x1642 
;e4vm.c:72: Console_Clear(7);
	ld	l, #0x07
	call	_Console_Clear_COMPACT
;e4vm.c:73: Console_SetColors(56);
	ld	hl, #_Console_attrib
	ld	(hl), #0x38
;e4vm.c:74: e4vm_vm = (e4vm_type_x4thPtr)((SYSTEM_ADRINT)&e4vm_vm_static);
	ld	hl, #_e4vm_vm_static
	ld	(_e4vm_vm), hl
;e4vm.c:75: e4vm_test_console(&e4vm_vm);
	ld	hl, #_e4vm_vm
	push	hl
	call	_e4vm_test_console
	pop	af
;e4vm.c:76: Basic_PAUSE(0);
	ld	hl, #0x0000
	call	_Basic_PAUSE_EI
;e4vm.c:77: Basic_Quit();
;e4vm.c:78: __FINI;
;e4vm.c:79: }
	jp  _Basic_Quit_IM1
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
