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
	.globl _e4vm_core_ext__init
	.globl _e4vm_core_ext_comma
	.globl _e4vm_utils__init
	.globl _e4vm_utils_stack_ds_push
	.globl _e4vm_utils_init
	.globl _e4vm_core__init
	.globl _e4vm_core_do_nop
	.globl _e4vm_core_do_next
	.globl _e4vm_core_do_list
	.globl _e4vm_core_do_exit
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
	.ds 269
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
;e4vm.c:23: static void e4vm_do_hello (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_do_hello
; ---------------------------------
_e4vm_do_hello:
	call	___sdcc_enter_ix
;e4vm.c:25: Console_WriteStrLn((CHAR*)"hello!", 7);
	ld	hl, #___str_0
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:26: }
	pop	ix
	jp	_Console_WriteLn_COMPACT
___str_0:
	.ascii "hello!"
	.db 0x00
;e4vm.c:28: static void e4vm_test_comma (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_test_comma
; ---------------------------------
_e4vm_test_comma:
	call	___sdcc_enter_ix
;e4vm.c:30: Console_WriteStr((CHAR*)"comma test", 11);
	ld	hl, #___str_1
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:31: e4vm_utils_init(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_init
	pop	af
;e4vm.c:32: (*v)->core[0] = e4vm_core_do_nop;
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x00cd
	add	hl, de
	ex	de, hl
	ld	a, #<(_e4vm_core_do_nop)
	ld	(de), a
	inc	de
	ld	a, #>(_e4vm_core_do_nop)
	ld	(de), a
;e4vm.c:33: (*v)->core[1] = e4vm_core_do_next;
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x00cf
	add	hl, de
	ex	de, hl
	ld	a, #<(_e4vm_core_do_next)
	ld	(de), a
	inc	de
	ld	a, #>(_e4vm_core_do_next)
	ld	(de), a
;e4vm.c:34: (*v)->core[2] = e4vm_core_do_list;
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x00d1
	add	hl, de
	ex	de, hl
	ld	a, #<(_e4vm_core_do_list)
	ld	(de), a
	inc	de
	ld	a, #>(_e4vm_core_do_list)
	ld	(de), a
;e4vm.c:35: (*v)->core[3] = e4vm_core_do_exit;
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x00d3
	add	hl, de
	ex	de, hl
	ld	a, #<(_e4vm_core_do_exit)
	ld	(de), a
	inc	de
	ld	a, #>(_e4vm_core_do_exit)
	ld	(de), a
;e4vm.c:36: (*v)->core[4] = e4vm_core_ext_comma;
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x00d5
	add	hl, de
	ex	de, hl
	ld	a, #<(_e4vm_core_ext_comma)
	ld	(de), a
	inc	de
	ld	a, #>(_e4vm_core_ext_comma)
	ld	(de), a
;e4vm.c:37: (*v)->mem[0] = 0;
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x008a
	add	hl, de
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;e4vm.c:38: (*v)->mem[1] = 1;
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x008c
	add	hl, de
	ld	(hl), #0x01
	inc	hl
	ld	(hl), #0x00
;e4vm.c:39: (*v)->mem[2] = 2;
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x008e
	add	hl, de
	ld	(hl), #0x02
	inc	hl
	ld	(hl), #0x00
;e4vm.c:40: (*v)->mem[3] = 3;
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x0090
	add	hl, de
	ld	(hl), #0x03
	inc	hl
	ld	(hl), #0x00
;e4vm.c:41: (*v)->mem[4] = 4;
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x0092
	add	hl, de
	ld	(hl), #0x04
	inc	hl
	ld	(hl), #0x00
;e4vm.c:42: (*v)->wp = 4;
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	inc	de
	inc	de
	ld	h, d
	ld	l, e
	ld	(hl), #0x04
	inc	hl
	ld	(hl), #0x00
;e4vm.c:43: (*v)->mem[5] = 2;
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x0094
	add	hl, de
	ld	(hl), #0x02
	inc	hl
	ld	(hl), #0x00
;e4vm.c:44: (*v)->mem[6] = 4;
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x0096
	add	hl, de
	ld	(hl), #0x04
	inc	hl
	ld	(hl), #0x00
;e4vm.c:45: (*v)->mem[7] = 3;
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x0098
	add	hl, de
	ld	(hl), #0x03
	inc	hl
	ld	(hl), #0x00
;e4vm.c:46: (*v)->hereP = 18;
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
;e4vm.c:47: e4vm_utils_stack_ds_push(v, 777);
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
;e4vm.c:50: if ((*v)->mem[18] == 777) {
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
;e4vm.c:51: Console_WriteStrLn((CHAR*)" - ok", 6);
	ld	hl, #___str_2
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
	jr	00104$
00102$:
;e4vm.c:53: Console_WriteStrLn((CHAR*)" - error", 9);
	ld	hl, #___str_3
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
00104$:
;e4vm.c:55: }
	pop	ix
	ret
___str_1:
	.ascii "comma test"
	.db 0x00
___str_2:
	.ascii " - ok"
	.db 0x00
___str_3:
	.ascii " - error"
	.db 0x00
;e4vm.c:58: int main (int argc, char **argv)
;	---------------------------------
; Function main
; ---------------------------------
_main::
;e4vm.c:63: __IMPORT(e4vm_core__init);
	call	_e4vm_core__init
;e4vm.c:64: __IMPORT(e4vm_core_ext__init);
	call	_e4vm_core_ext__init
;e4vm.c:65: __IMPORT(e4vm_utils__init);
	call	_e4vm_utils__init
;e4vm.c:68: Basic_Init();
	res	4,1(iy) 
	call 0x1642 
;e4vm.c:69: Console_Clear(7);
	ld	l, #0x07
	call	_Console_Clear_COMPACT
;e4vm.c:70: Console_SetColors(56);
	ld	hl, #_Console_attrib
	ld	(hl), #0x38
;e4vm.c:71: e4vm_vm = (e4vm_type_x4thPtr)((SYSTEM_ADRINT)&e4vm_vm_static);
	ld	hl, #_e4vm_vm_static
	ld	(_e4vm_vm), hl
;e4vm.c:72: e4vm_test_comma(&e4vm_vm);
	ld	hl, #_e4vm_vm
	push	hl
	call	_e4vm_test_comma
	pop	af
;e4vm.c:73: Basic_PAUSE(0);
	ld	hl, #0x0000
	call	_Basic_PAUSE_EI
;e4vm.c:74: Basic_Quit();
;e4vm.c:75: __FINI;
;e4vm.c:76: }
	jp  _Basic_Quit_IM1
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
