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
	.globl _e4vm_boolean__init
	.globl _e4vm_boolean_xor
	.globl _e4vm_math__init
	.globl _e4vm_stack__init
	.globl _e4vm_utils__init
	.globl _e4vm_utils_vm_stat
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
;e4vm.c:28: static void e4vm_stack_ds_push (e4vm_type_x4thPtr *v, SHORTINT x)
;	---------------------------------
; Function e4vm_stack_ds_push
; ---------------------------------
_e4vm_stack_ds_push:
	call	___sdcc_enter_ix
;e4vm.c:30: (*v)->ds[(*v)->ds_p] = x;
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
	ex	de, hl
	ld	a, 6 (ix)
	ld	(de), a
	inc	de
	ld	a, 7 (ix)
	ld	(de), a
;e4vm.c:31: (*v)->ds_p = (*v)->ds_p + 1;
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
;e4vm.c:32: }
	pop	ix
	ret
;e4vm.c:34: static void e4vm_stack_rs_push (e4vm_type_x4thPtr *v, SHORTINT x)
;	---------------------------------
; Function e4vm_stack_rs_push
; ---------------------------------
_e4vm_stack_rs_push:
	call	___sdcc_enter_ix
;e4vm.c:36: (*v)->rs[(*v)->rs_p] = x;
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
	ex	de, hl
	ld	a, 6 (ix)
	ld	(de), a
	inc	de
	ld	a, 7 (ix)
	ld	(de), a
;e4vm.c:37: (*v)->rs_p = (*v)->rs_p + 1;
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
;e4vm.c:38: }
	pop	ix
	ret
;e4vm.c:40: static void e4vm_do_lit (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_do_lit
; ---------------------------------
_e4vm_do_lit:
	call	___sdcc_enter_ix
;e4vm.c:42: (*v)->ip = (*v)->ip + 1;
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	l, c
	ld	h, b
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	dec	hl
	inc	de
	ld	a, d
	ld	(hl), e
	inc	hl
	ld	(hl), a
;e4vm.c:43: e4vm_stack_ds_push(v, (*v)->mem[(*v)->ip]);
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
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	add	hl, hl
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	push	de
	push	bc
	call	_e4vm_stack_ds_push
	pop	af
	pop	af
;e4vm.c:44: }
	pop	ix
	ret
;e4vm.c:46: static void e4vm_do_hello (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_do_hello
; ---------------------------------
_e4vm_do_hello:
	call	___sdcc_enter_ix
;e4vm.c:48: Console_WriteStrLn((CHAR*)"hello!", 7);
	ld	hl, #___str_0
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:49: }
	pop	ix
	jp	_Console_WriteLn_COMPACT
___str_0:
	.ascii "hello!"
	.db 0x00
;e4vm.c:51: static void e4vm_test_xor (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_test_xor
; ---------------------------------
_e4vm_test_xor:
	call	___sdcc_enter_ix
;e4vm.c:53: Console_WriteStr((CHAR*)"xor ", 5);
	ld	hl, #___str_1
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:54: e4vm_utils_init(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_init
	pop	af
;e4vm.c:55: (*v)->core[0] = e4vm_core_do_nop;
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
;e4vm.c:56: (*v)->core[1] = e4vm_core_do_next;
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
;e4vm.c:57: (*v)->core[2] = e4vm_core_do_list;
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
;e4vm.c:58: (*v)->core[3] = e4vm_core_do_exit;
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
;e4vm.c:59: (*v)->core[4] = e4vm_boolean_xor;
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x00d5
	add	hl, de
	ex	de, hl
	ld	a, #<(_e4vm_boolean_xor)
	ld	(de), a
	inc	de
	ld	a, #>(_e4vm_boolean_xor)
	ld	(de), a
;e4vm.c:60: (*v)->mem[0] = 0;
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
;e4vm.c:61: (*v)->mem[1] = 1;
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
;e4vm.c:62: (*v)->mem[2] = 2;
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
;e4vm.c:63: (*v)->mem[3] = 3;
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
;e4vm.c:64: (*v)->mem[4] = 4;
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
;e4vm.c:65: (*v)->wp = 4;
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
;e4vm.c:66: (*v)->mem[5] = 2;
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
;e4vm.c:67: (*v)->mem[6] = 4;
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
;e4vm.c:68: (*v)->mem[7] = 3;
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
;e4vm.c:69: e4vm_stack_ds_push(v, 6);
	push	bc
	ld	hl, #0x0006
	push	hl
	push	bc
	call	_e4vm_stack_ds_push
	pop	af
	ld	hl, #0x0005
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_stack_ds_push
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
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_vm_stat
	pop	af
;e4vm.c:74: if ((*v)->ds[0] == 3) {
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
	sub	a, #0x03
	or	a, b
	jr	NZ,00102$
;e4vm.c:75: Console_WriteStrLn((CHAR*)" - ok", 6);
	ld	hl, #___str_2
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
	jr	00104$
00102$:
;e4vm.c:77: Console_WriteStrLn((CHAR*)" - error", 9);
	ld	hl, #___str_3
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
00104$:
;e4vm.c:79: }
	pop	ix
	ret
___str_1:
	.ascii "xor "
	.db 0x00
___str_2:
	.ascii " - ok"
	.db 0x00
___str_3:
	.ascii " - error"
	.db 0x00
;e4vm.c:82: int main (int argc, char **argv)
;	---------------------------------
; Function main
; ---------------------------------
_main::
;e4vm.c:87: __IMPORT(e4vm_boolean__init);
	call	_e4vm_boolean__init
;e4vm.c:88: __IMPORT(e4vm_core__init);
	call	_e4vm_core__init
;e4vm.c:89: __IMPORT(e4vm_math__init);
	call	_e4vm_math__init
;e4vm.c:90: __IMPORT(e4vm_stack__init);
	call	_e4vm_stack__init
;e4vm.c:91: __IMPORT(e4vm_utils__init);
	call	_e4vm_utils__init
;e4vm.c:94: Basic_Init();
	res	4,1(iy) 
	call 0x1642 
;e4vm.c:95: Console_Clear(7);
	ld	l, #0x07
	call	_Console_Clear_COMPACT
;e4vm.c:96: Console_SetColors(56);
	ld	hl, #_Console_attrib
	ld	(hl), #0x38
;e4vm.c:97: e4vm_vm = (e4vm_type_x4thPtr)((SYSTEM_ADRINT)&e4vm_vm_static);
	ld	hl, #_e4vm_vm_static
	ld	(_e4vm_vm), hl
;e4vm.c:98: e4vm_test_xor(&e4vm_vm);
	ld	hl, #_e4vm_vm
	push	hl
	call	_e4vm_test_xor
	pop	af
;e4vm.c:99: Basic_PAUSE(0);
	ld	hl, #0x0000
	call	_Basic_PAUSE_EI
;e4vm.c:100: Basic_Quit();
;e4vm.c:101: __FINI;
;e4vm.c:102: }
	jp  _Basic_Quit_IM1
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
