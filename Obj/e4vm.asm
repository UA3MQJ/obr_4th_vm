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
	.globl _e4vm_core_ext_zbranch
	.globl _e4vm_core_ext_get_here_addr
	.globl _e4vm_core_ext_do_lit
	.globl _e4vm_core_ext_comma
	.globl _e4vm_core_ext_branch
	.globl _e4vm_utils__init
	.globl _e4vm_utils_stack_ds_push
	.globl _e4vm_utils_read_string
	.globl _e4vm_utils_read_char
	.globl _e4vm_utils_init
	.globl _e4vm_core__init
	.globl _e4vm_core_do_nop
	.globl _e4vm_core_do_next
	.globl _e4vm_core_do_list
	.globl _e4vm_core_do_exit
	.globl _e4vm_type__init
	.globl _Basic_Quit_IM1
	.globl _Basic_PAUSE_EI
	.globl _Console_Clear_COMPACT
	.globl _Console_WriteStr_C_COMPACT
	.globl _Console_WriteInt_COMPACT
	.globl _Console_WriteLn_COMPACT
	.globl _Console_WriteCh_COMPACT
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_e4vm_vm_static:
	.ds 333
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
;e4vm.c:31: Console_WriteStrLn((CHAR*)"hello!", 7);
	ld	hl, #___str_0
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:32: }
	pop	ix
	jp	_Console_WriteLn_COMPACT
___str_0:
	.ascii "hello!"
	.db 0x00
;e4vm.c:34: static void e4vm_test_dolit (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_test_dolit
; ---------------------------------
_e4vm_test_dolit:
	call	___sdcc_enter_ix
;e4vm.c:36: Console_WriteStr((CHAR*)"dolit test", 11);
	ld	hl, #___str_1
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:37: e4vm_utils_init(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_init
	pop	af
;e4vm.c:38: (*v)->core[0] = e4vm_core_do_nop;
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
;e4vm.c:39: (*v)->core[1] = e4vm_core_do_next;
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
;e4vm.c:40: (*v)->core[2] = e4vm_core_do_list;
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
;e4vm.c:41: (*v)->core[3] = e4vm_core_do_exit;
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
;e4vm.c:42: (*v)->core[4] = e4vm_core_ext_do_lit;
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
;e4vm.c:43: (*v)->mem[0] = 0;
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
;e4vm.c:44: (*v)->mem[1] = 1;
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
;e4vm.c:45: (*v)->mem[2] = 2;
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
;e4vm.c:46: (*v)->mem[3] = 3;
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
;e4vm.c:47: (*v)->mem[4] = 4;
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
;e4vm.c:48: (*v)->wp = 4;
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
;e4vm.c:49: (*v)->mem[5] = 2;
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
;e4vm.c:50: (*v)->mem[6] = 4;
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
;e4vm.c:51: (*v)->mem[7] = 555;
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
;e4vm.c:52: (*v)->mem[8] = 3;
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
;e4vm.c:53: e4vm_core_do_list(v);
	push	bc
	push	bc
	call	_e4vm_core_do_list
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_next
	pop	af
;e4vm.c:55: if ((*v)->ds[0] == 555) {
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
;e4vm.c:56: Console_WriteStrLn((CHAR*)" - ok", 6);
	ld	hl, #___str_2
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
	jr	00104$
00102$:
;e4vm.c:58: Console_WriteStrLn((CHAR*)" - error", 9);
	ld	hl, #___str_3
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
00104$:
;e4vm.c:60: }
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
;e4vm.c:62: static void e4vm_test_here (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_test_here
; ---------------------------------
_e4vm_test_here:
	call	___sdcc_enter_ix
;e4vm.c:64: Console_WriteStr((CHAR*)"here test", 10);
	ld	hl, #___str_4
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:65: e4vm_utils_init(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_init
	pop	af
;e4vm.c:66: (*v)->core[0] = e4vm_core_do_nop;
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
;e4vm.c:67: (*v)->core[1] = e4vm_core_do_next;
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
;e4vm.c:68: (*v)->core[2] = e4vm_core_do_list;
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
;e4vm.c:69: (*v)->core[3] = e4vm_core_do_exit;
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
;e4vm.c:70: (*v)->core[4] = e4vm_core_ext_get_here_addr;
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
;e4vm.c:71: (*v)->mem[0] = 0;
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
;e4vm.c:72: (*v)->mem[1] = 1;
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
;e4vm.c:73: (*v)->mem[2] = 2;
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
;e4vm.c:74: (*v)->mem[3] = 3;
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
;e4vm.c:75: (*v)->mem[4] = 4;
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
;e4vm.c:76: (*v)->wp = 4;
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
;e4vm.c:77: (*v)->mem[5] = 2;
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
;e4vm.c:78: (*v)->mem[6] = 4;
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
;e4vm.c:79: (*v)->mem[7] = 3;
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
;e4vm.c:80: (*v)->hereP = 555;
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
;e4vm.c:81: e4vm_core_do_list(v);
	push	bc
	push	bc
	call	_e4vm_core_do_list
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_next
	pop	af
;e4vm.c:83: if ((*v)->ds[0] == 555) {
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
;e4vm.c:84: Console_WriteStrLn((CHAR*)" - ok", 6);
	ld	hl, #___str_5
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
	jr	00104$
00102$:
;e4vm.c:86: Console_WriteStrLn((CHAR*)" - error", 9);
	ld	hl, #___str_6
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
00104$:
;e4vm.c:88: }
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
;e4vm.c:90: static void e4vm_test_comma (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_test_comma
; ---------------------------------
_e4vm_test_comma:
	call	___sdcc_enter_ix
;e4vm.c:92: Console_WriteStr((CHAR*)"comma test", 11);
	ld	hl, #___str_7
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:93: e4vm_utils_init(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_init
	pop	af
;e4vm.c:94: (*v)->core[0] = e4vm_core_do_nop;
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
;e4vm.c:95: (*v)->core[1] = e4vm_core_do_next;
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
;e4vm.c:96: (*v)->core[2] = e4vm_core_do_list;
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
;e4vm.c:97: (*v)->core[3] = e4vm_core_do_exit;
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
;e4vm.c:98: (*v)->core[4] = e4vm_core_ext_comma;
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
;e4vm.c:99: (*v)->mem[0] = 0;
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
;e4vm.c:100: (*v)->mem[1] = 1;
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
;e4vm.c:101: (*v)->mem[2] = 2;
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
;e4vm.c:102: (*v)->mem[3] = 3;
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
;e4vm.c:103: (*v)->mem[4] = 4;
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
;e4vm.c:104: (*v)->wp = 4;
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
;e4vm.c:105: (*v)->mem[5] = 2;
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
;e4vm.c:106: (*v)->mem[6] = 4;
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
;e4vm.c:107: (*v)->mem[7] = 3;
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
;e4vm.c:108: (*v)->hereP = 18;
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
;e4vm.c:109: e4vm_utils_stack_ds_push(v, 777);
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
;e4vm.c:112: if ((*v)->mem[18] == 777) {
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
;e4vm.c:113: Console_WriteStrLn((CHAR*)" - ok", 6);
	ld	hl, #___str_8
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
	jr	00104$
00102$:
;e4vm.c:115: Console_WriteStrLn((CHAR*)" - error", 9);
	ld	hl, #___str_9
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
00104$:
;e4vm.c:117: }
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
;e4vm.c:119: static void e4vm_test_branch (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_test_branch
; ---------------------------------
_e4vm_test_branch:
	call	___sdcc_enter_ix
;e4vm.c:122: Console_WriteStr((CHAR*)"branch test", 12);
	ld	hl, #___str_10
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:123: e4vm_utils_init(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_init
	pop	af
;e4vm.c:124: (*v)->core[0] = e4vm_core_do_nop;
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
;e4vm.c:125: (*v)->core[1] = e4vm_core_do_next;
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
;e4vm.c:126: (*v)->core[2] = e4vm_core_do_list;
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
;e4vm.c:127: (*v)->core[3] = e4vm_core_do_exit;
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
;e4vm.c:128: (*v)->core[4] = e4vm_core_ext_branch;
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
;e4vm.c:129: (*v)->core[5] = e4vm_core_ext_do_lit;
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
;e4vm.c:130: (*v)->mem[0] = 0;
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
;e4vm.c:131: (*v)->mem[1] = 1;
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
;e4vm.c:132: (*v)->mem[2] = 2;
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
;e4vm.c:133: (*v)->mem[3] = 3;
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
;e4vm.c:134: (*v)->mem[4] = 4;
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
;e4vm.c:135: (*v)->mem[5] = 5;
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
;e4vm.c:136: (*v)->wp = 5;
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
;e4vm.c:137: (*v)->mem[6] = 2;
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
;e4vm.c:138: (*v)->mem[7] = 4;
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
;e4vm.c:139: (*v)->mem[8] = 12;
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
;e4vm.c:140: (*v)->mem[9] = 5;
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
;e4vm.c:141: (*v)->mem[10] = 1;
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
;e4vm.c:142: (*v)->mem[11] = 3;
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
;e4vm.c:143: (*v)->mem[12] = 5;
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
;e4vm.c:144: (*v)->mem[13] = 2;
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
;e4vm.c:145: (*v)->mem[14] = 3;
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
;e4vm.c:146: e4vm_core_do_list(v);
	push	bc
	push	bc
	call	_e4vm_core_do_list
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_next
	pop	af
;e4vm.c:148: if ((*v)->ds[0] == 2) {
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
;e4vm.c:149: Console_WriteStrLn((CHAR*)" - ok", 6);
	ld	hl, #___str_11
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
	jr	00104$
00102$:
;e4vm.c:151: Console_WriteStrLn((CHAR*)" - error", 9);
	ld	hl, #___str_12
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
00104$:
;e4vm.c:153: }
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
;e4vm.c:155: static void e4vm_test_zbranch (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_test_zbranch
; ---------------------------------
_e4vm_test_zbranch:
	call	___sdcc_enter_ix
;e4vm.c:158: Console_WriteStr((CHAR*)"zbranch test", 13);
	ld	hl, #___str_13
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:159: e4vm_utils_init(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_init
	pop	af
;e4vm.c:160: (*v)->core[0] = e4vm_core_do_nop;
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
;e4vm.c:161: (*v)->core[1] = e4vm_core_do_next;
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
;e4vm.c:162: (*v)->core[2] = e4vm_core_do_list;
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
;e4vm.c:163: (*v)->core[3] = e4vm_core_do_exit;
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
;e4vm.c:164: (*v)->core[4] = e4vm_core_ext_zbranch;
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x00d5
	add	hl, de
	ex	de, hl
	ld	a, #<(_e4vm_core_ext_zbranch)
	ld	(de), a
	inc	de
	ld	a, #>(_e4vm_core_ext_zbranch)
	ld	(de), a
;e4vm.c:165: (*v)->core[5] = e4vm_core_ext_do_lit;
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
;e4vm.c:166: (*v)->mem[0] = 0;
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
;e4vm.c:167: (*v)->mem[1] = 1;
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
;e4vm.c:168: (*v)->mem[2] = 2;
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
;e4vm.c:169: (*v)->mem[3] = 3;
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
;e4vm.c:170: (*v)->mem[4] = 4;
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
;e4vm.c:171: (*v)->mem[5] = 5;
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
;e4vm.c:172: (*v)->wp = 5;
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
;e4vm.c:173: (*v)->mem[6] = 2;
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
;e4vm.c:174: (*v)->mem[7] = 4;
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
;e4vm.c:175: (*v)->mem[8] = 12;
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
;e4vm.c:176: (*v)->mem[9] = 5;
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
;e4vm.c:177: (*v)->mem[10] = 1;
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
;e4vm.c:178: (*v)->mem[11] = 3;
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
;e4vm.c:179: (*v)->mem[12] = 5;
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
;e4vm.c:180: (*v)->mem[13] = 2;
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
;e4vm.c:181: (*v)->mem[14] = 3;
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
;e4vm.c:182: e4vm_utils_stack_ds_push(v, 0);
	push	bc
	ld	hl, #0x0000
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
	pop	bc
;e4vm.c:185: if ((*v)->ds[(*v)->ds_p - 1] == 2) {
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
	dec	a
	add	a, a
	ld	l, a
	ld	h, #0x00
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, e
	sub	a, #0x02
	or	a, d
	jr	NZ,00102$
;e4vm.c:186: Console_WriteStr((CHAR*)" - ok", 6);
	push	bc
	ld	hl, #___str_14
	call	_Console_WriteStr_C_COMPACT
	pop	bc
	jr	00103$
00102$:
;e4vm.c:188: Console_WriteStr((CHAR*)" - error", 9);
	push	bc
	ld	hl, #___str_15
	call	_Console_WriteStr_C_COMPACT
	pop	bc
00103$:
;e4vm.c:190: (*v)->wp = 5;
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
;e4vm.c:191: e4vm_utils_stack_ds_push(v, 1);
	push	bc
	ld	hl, #0x0001
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
;e4vm.c:194: if ((*v)->ds[(*v)->ds_p - 1] == 1) {
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
	dec	a
	or	a, b
	jr	NZ,00105$
;e4vm.c:195: Console_WriteStr((CHAR*)" - ok", 6);
	ld	hl, #___str_14
	call	_Console_WriteStr_C_COMPACT
	jr	00106$
00105$:
;e4vm.c:197: Console_WriteStr((CHAR*)" - error", 9);
	ld	hl, #___str_15
	call	_Console_WriteStr_C_COMPACT
00106$:
;e4vm.c:199: Console_WriteStrLn((CHAR*)" ", 2);
	ld	hl, #___str_16
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:200: }
	pop	ix
	jp	_Console_WriteLn_COMPACT
___str_13:
	.ascii "zbranch test"
	.db 0x00
___str_14:
	.ascii " - ok"
	.db 0x00
___str_15:
	.ascii " - error"
	.db 0x00
___str_16:
	.ascii " "
	.db 0x00
;e4vm.c:202: static void e4vm_test_read_char (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_test_read_char
; ---------------------------------
_e4vm_test_read_char:
	call	___sdcc_enter_ix
;e4vm.c:207: Console_WriteStr((CHAR*)"read_char test ", 16);
	ld	hl, #___str_17
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:208: e4vm_utils_init(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_init
	pop	af
;e4vm.c:209: ch = e4vm_utils_read_char(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_read_char
	pop	af
	ld	c, l
;e4vm.c:210: Console_WriteInt(ch);
	ld	l, c
	ld	h, #0x00
	push	bc
	call	_Console_WriteInt_COMPACT
	pop	bc
;e4vm.c:211: Console_WriteCh((CHAR)ch);
	ld	l, c
	call	_Console_WriteCh_COMPACT
;e4vm.c:212: Console_WriteStr((CHAR*)" - ok", 6);
	ld	hl, #___str_18
;e4vm.c:213: }
	pop	ix
	jp	_Console_WriteStr_C_COMPACT
___str_17:
	.ascii "read_char test "
	.db 0x00
___str_18:
	.ascii " - ok"
	.db 0x00
;e4vm.c:215: static void e4vm_test_read_string (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_test_read_string
; ---------------------------------
_e4vm_test_read_string:
	call	___sdcc_enter_ix
;e4vm.c:218: Console_WriteStr((CHAR*)"read_string test ", 18);
	ld	hl, #___str_19
	call	_Console_WriteStr_C_COMPACT
;e4vm.c:219: e4vm_utils_read_string(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_read_string
	pop	af
;e4vm.c:220: _ptr__8 = *v;
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
;e4vm.c:221: Console_WriteStrLn((void*)_ptr__8->in_string, 64);
	ld	hl, #0x010d
	add	hl, bc
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
;e4vm.c:222: Console_WriteStr((CHAR*)" - ok", 6);
	ld	hl, #___str_20
;e4vm.c:223: }
	pop	ix
	jp	_Console_WriteStr_C_COMPACT
___str_19:
	.ascii "read_string test "
	.db 0x00
___str_20:
	.ascii " - ok"
	.db 0x00
;e4vm.c:226: int main (int argc, char **argv)
;	---------------------------------
; Function main
; ---------------------------------
_main::
;e4vm.c:231: __IMPORT(e4vm_core__init);
	call	_e4vm_core__init
;e4vm.c:232: __IMPORT(e4vm_core_ext__init);
	call	_e4vm_core_ext__init
;e4vm.c:233: __IMPORT(e4vm_type__init);
	call	_e4vm_type__init
;e4vm.c:234: __IMPORT(e4vm_utils__init);
	call	_e4vm_utils__init
;e4vm.c:237: Basic_Init();
	res	4,1(iy) 
	call 0x1642 
;e4vm.c:238: Console_Clear(7);
	ld	l, #0x07
	call	_Console_Clear_COMPACT
;e4vm.c:239: Console_SetColors(56);
	ld	hl, #_Console_attrib
	ld	(hl), #0x38
;e4vm.c:240: e4vm_vm = (e4vm_type_x4thPtr)((SYSTEM_ADRINT)&e4vm_vm_static);
	ld	hl, #_e4vm_vm_static
	ld	(_e4vm_vm), hl
;e4vm.c:241: e4vm_test_dolit(&e4vm_vm);
	ld	hl, #_e4vm_vm
	push	hl
	call	_e4vm_test_dolit
;e4vm.c:242: e4vm_test_here(&e4vm_vm);
	ld	hl, #_e4vm_vm
	ex	(sp),hl
	call	_e4vm_test_here
;e4vm.c:243: e4vm_test_comma(&e4vm_vm);
	ld	hl, #_e4vm_vm
	ex	(sp),hl
	call	_e4vm_test_comma
;e4vm.c:244: e4vm_test_branch(&e4vm_vm);
	ld	hl, #_e4vm_vm
	ex	(sp),hl
	call	_e4vm_test_branch
;e4vm.c:245: e4vm_test_zbranch(&e4vm_vm);
	ld	hl, #_e4vm_vm
	ex	(sp),hl
	call	_e4vm_test_zbranch
;e4vm.c:246: e4vm_test_read_string(&e4vm_vm);
	ld	hl, #_e4vm_vm
	ex	(sp),hl
	call	_e4vm_test_read_string
	pop	af
;e4vm.c:247: Basic_PAUSE(0);
	ld	hl, #0x0000
	call	_Basic_PAUSE_EI
;e4vm.c:248: Basic_Quit();
;e4vm.c:249: __FINI;
;e4vm.c:250: }
	jp  _Basic_Quit_IM1
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
