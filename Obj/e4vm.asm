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
	.globl _e4vm_core_ext_get_here_addr
	.globl _e4vm_core_ext_do_lit
	.globl _e4vm_core_ext_comma
	.globl _e4vm_core_ext_branch
	.globl _e4vm_utils__init
	.globl _e4vm_utils_stack_ds_push
	.globl _e4vm_utils_init
	.globl _e4vm_core__init
	.globl _e4vm_core_do_nop
	.globl _e4vm_core_do_next
	.globl _e4vm_core_do_list
	.globl _e4vm_core_do_exit
	.globl _e4vm_type__init
	.globl _Basic_Quit_DI
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
;e4vm.c:26: static void e4vm_do_hello (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_do_hello
; ---------------------------------
_e4vm_do_hello:
	call	___sdcc_enter_ix
;e4vm.c:28: Console_WriteStrLn((CHAR*)"hello!", 7);
	ld	hl, #___str_0
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:29: }
	pop	ix
	jp	_Console_WriteLn_COMPACT
___str_0:
	.ascii "hello!"
	.db 0x00
;e4vm.c:31: static void e4vm_test_dolit (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_test_dolit
; ---------------------------------
_e4vm_test_dolit:
	call	___sdcc_enter_ix
;e4vm.c:33: Console_WriteStr((CHAR*)"dolit test", 11);
	ld	hl, #___str_1
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:34: e4vm_utils_init(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_init
	pop	af
;e4vm.c:35: (*v)->core[0] = e4vm_core_do_nop;
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
;e4vm.c:36: (*v)->core[1] = e4vm_core_do_next;
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
;e4vm.c:37: (*v)->core[2] = e4vm_core_do_list;
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
;e4vm.c:38: (*v)->core[3] = e4vm_core_do_exit;
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
;e4vm.c:39: (*v)->core[4] = e4vm_core_ext_do_lit;
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x00d5
	add	hl, de
	ex	de, hl
	ld	a, #<(_e4vm_core_ext_do_lit)
	ld	(de), a
	inc	de
	ld	a, #>(_e4vm_core_ext_do_lit)
	ld	(de), a
;e4vm.c:40: (*v)->mem[0] = 0;
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
;e4vm.c:41: (*v)->mem[1] = 1;
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
;e4vm.c:42: (*v)->mem[2] = 2;
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
;e4vm.c:43: (*v)->mem[3] = 3;
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
;e4vm.c:44: (*v)->mem[4] = 4;
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
;e4vm.c:45: (*v)->wp = 4;
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
;e4vm.c:46: (*v)->mem[5] = 2;
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
;e4vm.c:47: (*v)->mem[6] = 4;
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
;e4vm.c:48: (*v)->mem[7] = 555;
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x0098
	add	hl, de
	ld	(hl), #0x2b
	inc	hl
	ld	(hl), #0x02
;e4vm.c:49: (*v)->mem[8] = 3;
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x009a
	add	hl, de
	ld	(hl), #0x03
	inc	hl
	ld	(hl), #0x00
;e4vm.c:50: e4vm_core_do_list(v);
	push	bc
	push	bc
	call	_e4vm_core_do_list
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_next
	pop	af
;e4vm.c:52: if ((*v)->ds[0] == 555) {
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
;e4vm.c:53: Console_WriteStrLn((CHAR*)" - ok", 6);
	ld	hl, #___str_2
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
	jr	00104$
00102$:
;e4vm.c:55: Console_WriteStrLn((CHAR*)" - error", 9);
	ld	hl, #___str_3
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
00104$:
;e4vm.c:57: }
	pop	ix
	ret
___str_1:
	.ascii "dolit test"
	.db 0x00
___str_2:
	.ascii " - ok"
	.db 0x00
___str_3:
	.ascii " - error"
	.db 0x00
;e4vm.c:59: static void e4vm_test_here (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_test_here
; ---------------------------------
_e4vm_test_here:
	call	___sdcc_enter_ix
;e4vm.c:61: Console_WriteStr((CHAR*)"here test", 10);
	ld	hl, #___str_4
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:62: e4vm_utils_init(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_init
	pop	af
;e4vm.c:63: (*v)->core[0] = e4vm_core_do_nop;
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
;e4vm.c:64: (*v)->core[1] = e4vm_core_do_next;
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
;e4vm.c:65: (*v)->core[2] = e4vm_core_do_list;
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
;e4vm.c:66: (*v)->core[3] = e4vm_core_do_exit;
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
;e4vm.c:67: (*v)->core[4] = e4vm_core_ext_get_here_addr;
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x00d5
	add	hl, de
	ex	de, hl
	ld	a, #<(_e4vm_core_ext_get_here_addr)
	ld	(de), a
	inc	de
	ld	a, #>(_e4vm_core_ext_get_here_addr)
	ld	(de), a
;e4vm.c:68: (*v)->mem[0] = 0;
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
;e4vm.c:69: (*v)->mem[1] = 1;
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
;e4vm.c:70: (*v)->mem[2] = 2;
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
;e4vm.c:71: (*v)->mem[3] = 3;
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
;e4vm.c:72: (*v)->mem[4] = 4;
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
;e4vm.c:73: (*v)->wp = 4;
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
;e4vm.c:74: (*v)->mem[5] = 2;
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
;e4vm.c:75: (*v)->mem[6] = 4;
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
;e4vm.c:76: (*v)->mem[7] = 3;
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
;e4vm.c:77: (*v)->hereP = 555;
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
;e4vm.c:78: e4vm_core_do_list(v);
	push	bc
	push	bc
	call	_e4vm_core_do_list
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_next
	pop	af
;e4vm.c:80: if ((*v)->ds[0] == 555) {
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
;e4vm.c:81: Console_WriteStrLn((CHAR*)" - ok", 6);
	ld	hl, #___str_5
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
	jr	00104$
00102$:
;e4vm.c:83: Console_WriteStrLn((CHAR*)" - error", 9);
	ld	hl, #___str_6
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
00104$:
;e4vm.c:85: }
	pop	ix
	ret
___str_4:
	.ascii "here test"
	.db 0x00
___str_5:
	.ascii " - ok"
	.db 0x00
___str_6:
	.ascii " - error"
	.db 0x00
;e4vm.c:87: static void e4vm_test_comma (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_test_comma
; ---------------------------------
_e4vm_test_comma:
	call	___sdcc_enter_ix
;e4vm.c:89: Console_WriteStr((CHAR*)"comma test", 11);
	ld	hl, #___str_7
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:90: e4vm_utils_init(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_init
	pop	af
;e4vm.c:91: (*v)->core[0] = e4vm_core_do_nop;
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
;e4vm.c:92: (*v)->core[1] = e4vm_core_do_next;
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
;e4vm.c:93: (*v)->core[2] = e4vm_core_do_list;
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
;e4vm.c:94: (*v)->core[3] = e4vm_core_do_exit;
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
;e4vm.c:95: (*v)->core[4] = e4vm_core_ext_comma;
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
;e4vm.c:96: (*v)->mem[0] = 0;
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
;e4vm.c:97: (*v)->mem[1] = 1;
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
;e4vm.c:98: (*v)->mem[2] = 2;
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
;e4vm.c:99: (*v)->mem[3] = 3;
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
;e4vm.c:100: (*v)->mem[4] = 4;
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
;e4vm.c:101: (*v)->wp = 4;
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
;e4vm.c:102: (*v)->mem[5] = 2;
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
;e4vm.c:103: (*v)->mem[6] = 4;
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
;e4vm.c:104: (*v)->mem[7] = 3;
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
;e4vm.c:105: (*v)->hereP = 18;
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
;e4vm.c:106: e4vm_utils_stack_ds_push(v, 777);
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
;e4vm.c:109: if ((*v)->mem[18] == 777) {
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
;e4vm.c:110: Console_WriteStrLn((CHAR*)" - ok", 6);
	ld	hl, #___str_8
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
	jr	00104$
00102$:
;e4vm.c:112: Console_WriteStrLn((CHAR*)" - error", 9);
	ld	hl, #___str_9
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
00104$:
;e4vm.c:114: }
	pop	ix
	ret
___str_7:
	.ascii "comma test"
	.db 0x00
___str_8:
	.ascii " - ok"
	.db 0x00
___str_9:
	.ascii " - error"
	.db 0x00
;e4vm.c:116: static void e4vm_test_branch (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_test_branch
; ---------------------------------
_e4vm_test_branch:
	call	___sdcc_enter_ix
;e4vm.c:119: Console_WriteStr((CHAR*)"branch test", 12);
	ld	hl, #___str_10
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:120: e4vm_utils_init(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_init
	pop	af
;e4vm.c:121: (*v)->core[0] = e4vm_core_do_nop;
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
;e4vm.c:122: (*v)->core[1] = e4vm_core_do_next;
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
;e4vm.c:123: (*v)->core[2] = e4vm_core_do_list;
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
;e4vm.c:124: (*v)->core[3] = e4vm_core_do_exit;
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
;e4vm.c:125: (*v)->core[4] = e4vm_core_ext_branch;
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x00d5
	add	hl, de
	ex	de, hl
	ld	a, #<(_e4vm_core_ext_branch)
	ld	(de), a
	inc	de
	ld	a, #>(_e4vm_core_ext_branch)
	ld	(de), a
;e4vm.c:126: (*v)->core[5] = e4vm_core_ext_do_lit;
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x00d7
	add	hl, de
	ex	de, hl
	ld	a, #<(_e4vm_core_ext_do_lit)
	ld	(de), a
	inc	de
	ld	a, #>(_e4vm_core_ext_do_lit)
	ld	(de), a
;e4vm.c:127: (*v)->mem[0] = 0;
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
;e4vm.c:128: (*v)->mem[1] = 1;
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
;e4vm.c:129: (*v)->mem[2] = 2;
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
;e4vm.c:130: (*v)->mem[3] = 3;
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
;e4vm.c:131: (*v)->mem[4] = 4;
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
;e4vm.c:132: (*v)->mem[5] = 5;
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x0094
	add	hl, de
	ld	(hl), #0x05
	inc	hl
	ld	(hl), #0x00
;e4vm.c:133: (*v)->wp = 5;
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	inc	de
	inc	de
	ld	h, d
	ld	l, e
	ld	(hl), #0x05
	inc	hl
	ld	(hl), #0x00
;e4vm.c:134: (*v)->mem[6] = 2;
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x0096
	add	hl, de
	ld	(hl), #0x02
	inc	hl
	ld	(hl), #0x00
;e4vm.c:135: (*v)->mem[7] = 4;
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x0098
	add	hl, de
	ld	(hl), #0x04
	inc	hl
	ld	(hl), #0x00
;e4vm.c:136: (*v)->mem[8] = 12;
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x009a
	add	hl, de
	ld	(hl), #0x0c
	inc	hl
	ld	(hl), #0x00
;e4vm.c:137: (*v)->mem[9] = 5;
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x009c
	add	hl, de
	ld	(hl), #0x05
	inc	hl
	ld	(hl), #0x00
;e4vm.c:138: (*v)->mem[10] = 1;
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x009e
	add	hl, de
	ld	(hl), #0x01
	inc	hl
	ld	(hl), #0x00
;e4vm.c:139: (*v)->mem[11] = 3;
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x00a0
	add	hl, de
	ld	(hl), #0x03
	inc	hl
	ld	(hl), #0x00
;e4vm.c:140: (*v)->mem[12] = 5;
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x00a2
	add	hl, de
	ld	(hl), #0x05
	inc	hl
	ld	(hl), #0x00
;e4vm.c:141: (*v)->mem[13] = 2;
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x00a4
	add	hl, de
	ld	(hl), #0x02
	inc	hl
	ld	(hl), #0x00
;e4vm.c:142: (*v)->mem[14] = 3;
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x00a6
	add	hl, de
	ld	(hl), #0x03
	inc	hl
	ld	(hl), #0x00
;e4vm.c:143: e4vm_core_do_list(v);
	push	bc
	push	bc
	call	_e4vm_core_do_list
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_next
	pop	af
;e4vm.c:145: if ((*v)->ds[0] == 2) {
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
	sub	a, #0x02
	or	a, b
	jr	NZ,00102$
;e4vm.c:146: Console_WriteStrLn((CHAR*)" - ok", 6);
	ld	hl, #___str_11
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
	jr	00104$
00102$:
;e4vm.c:148: Console_WriteStrLn((CHAR*)" - error", 9);
	ld	hl, #___str_12
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
00104$:
;e4vm.c:150: }
	pop	ix
	ret
___str_10:
	.ascii "branch test"
	.db 0x00
___str_11:
	.ascii " - ok"
	.db 0x00
___str_12:
	.ascii " - error"
	.db 0x00
;e4vm.c:153: int main (int argc, char **argv)
;	---------------------------------
; Function main
; ---------------------------------
_main::
;e4vm.c:158: __IMPORT(e4vm_core__init);
	call	_e4vm_core__init
;e4vm.c:159: __IMPORT(e4vm_core_ext__init);
	call	_e4vm_core_ext__init
;e4vm.c:160: __IMPORT(e4vm_type__init);
	call	_e4vm_type__init
;e4vm.c:161: __IMPORT(e4vm_utils__init);
	call	_e4vm_utils__init
;e4vm.c:164: Basic_Init();
	di	
	res 4,1(iy) 
	call 0x1642 
;e4vm.c:165: Console_Clear(7);
	ld	l, #0x07
	call	_Console_Clear_COMPACT
;e4vm.c:166: Console_SetColors(56);
	ld	hl, #_Console_attrib
	ld	(hl), #0x38
;e4vm.c:167: e4vm_vm = (e4vm_type_x4thPtr)((SYSTEM_ADRINT)&e4vm_vm_static);
	ld	hl, #_e4vm_vm_static
	ld	(_e4vm_vm), hl
;e4vm.c:168: e4vm_test_dolit(&e4vm_vm);
	ld	hl, #_e4vm_vm
	push	hl
	call	_e4vm_test_dolit
;e4vm.c:169: e4vm_test_here(&e4vm_vm);
	ld	hl, #_e4vm_vm
	ex	(sp),hl
	call	_e4vm_test_here
;e4vm.c:170: e4vm_test_comma(&e4vm_vm);
	ld	hl, #_e4vm_vm
	ex	(sp),hl
	call	_e4vm_test_comma
;e4vm.c:171: e4vm_test_branch(&e4vm_vm);
	ld	hl, #_e4vm_vm
	ex	(sp),hl
	call	_e4vm_test_branch
	pop	af
;e4vm.c:172: Basic_Quit();
;e4vm.c:173: __FINI;
;e4vm.c:174: }
	jp  _Basic_Quit_DI
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
