;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.3 #11378 (MINGW32)
;--------------------------------------------------------
	.module e4vm_core_ext
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _e4vm_core_ext__init
	.globl _e4vm_utils__init
	.globl _e4vm_utils_stack_ds_push
	.globl _e4vm_utils_add_op
	.globl _e4vm_utils_add_core_word
	.globl _e4vm_type__init
	.globl _memcpy
	.globl _e4vm_core_ext_quit
	.globl _e4vm_core_ext_do_lit
	.globl _e4vm_core_ext_get_here_addr
	.globl _e4vm_core_ext_comma
	.globl _e4vm_core_ext_branch
	.globl _e4vm_core_ext_zbranch
	.globl _e4vm_core_ext_lbrac
	.globl _e4vm_core_ext_rbrac
	.globl _e4vm_core_ext_add_core_words
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
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
;e4vm_core_ext.c:26: void e4vm_core_ext_quit (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_core_ext_quit
; ---------------------------------
_e4vm_core_ext_quit::
;e4vm_core_ext.c:28: }
	ret
;e4vm_core_ext.c:31: void e4vm_core_ext_do_lit (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_core_ext_do_lit
; ---------------------------------
_e4vm_core_ext_do_lit::
	call	___sdcc_enter_ix
;e4vm_core_ext.c:33: e4vm_utils_stack_ds_push(v, (*v)->mem[(*v)->ip]);
	ld	c, 4 (ix)
	ld	b, 5 (ix)
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
	push	bc
	push	de
	push	bc
	call	_e4vm_utils_stack_ds_push
	pop	af
	pop	af
;e4vm_core_ext.c:34: (*v)->ip = (*v)->ip + 1;
	pop	hl
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	dec	hl
	inc	bc
	ld	a, b
	ld	(hl), c
	inc	hl
	ld	(hl), a
;e4vm_core_ext.c:35: }
	pop	ix
	ret
;e4vm_core_ext.c:38: void e4vm_core_ext_get_here_addr (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_core_ext_get_here_addr
; ---------------------------------
_e4vm_core_ext_get_here_addr::
	call	___sdcc_enter_ix
;e4vm_core_ext.c:40: e4vm_utils_stack_ds_push(v, (*v)->hereP);
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
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	push	de
	push	bc
	call	_e4vm_utils_stack_ds_push
	pop	af
	pop	af
;e4vm_core_ext.c:41: }
	pop	ix
	ret
;e4vm_core_ext.c:44: void e4vm_core_ext_comma (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_core_ext_comma
; ---------------------------------
_e4vm_core_ext_comma::
	call	___sdcc_enter_ix
;e4vm_core_ext.c:46: (*v)->ds_p = (*v)->ds_p - 1;
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x0086
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	dec	hl
	dec	de
	ld	(hl), e
	inc	hl
	ld	(hl), d
;e4vm_core_ext.c:47: e4vm_utils_add_op(v, (*v)->ds[(*v)->ds_p]);
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
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	push	de
	push	bc
	call	_e4vm_utils_add_op
	pop	af
	pop	af
;e4vm_core_ext.c:48: }
	pop	ix
	ret
;e4vm_core_ext.c:51: void e4vm_core_ext_branch (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_core_ext_branch
; ---------------------------------
_e4vm_core_ext_branch::
	call	___sdcc_enter_ix
;e4vm_core_ext.c:53: (*v)->ip = (*v)->mem[(*v)->ip];
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #0x008a
	add	hl, bc
	ex	de, hl
	ld	l, c
	ld	h, b
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	add	hl, hl
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;e4vm_core_ext.c:54: }
	pop	ix
	ret
;e4vm_core_ext.c:57: void e4vm_core_ext_zbranch (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_core_ext_zbranch
; ---------------------------------
_e4vm_core_ext_zbranch::
	call	___sdcc_enter_ix
	push	af
;e4vm_core_ext.c:59: (*v)->ds_p = (*v)->ds_p - 1;
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x0086
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	dec	hl
	dec	de
	ld	(hl), e
	inc	hl
	ld	(hl), d
;e4vm_core_ext.c:60: if ((*v)->ds[(*v)->ds_p] == 0) {
	ld	l, c
	ld	h, b
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #0x0044
	add	hl, bc
	ex	de, hl
	ld	l, c
	ld	h, b
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
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
;e4vm_core_ext.c:61: (*v)->ip = (*v)->mem[(*v)->ip];
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
;e4vm_core_ext.c:60: if ((*v)->ds[(*v)->ds_p] == 0) {
	ld	a, -1 (ix)
	or	a, -2 (ix)
	jr	NZ,00102$
;e4vm_core_ext.c:61: (*v)->ip = (*v)->mem[(*v)->ip];
	ld	hl, #0x008a
	add	hl, bc
	sla	e
	rl	d
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
	jr	00104$
00102$:
;e4vm_core_ext.c:63: (*v)->ip = (*v)->ip + 1;
	inc	de
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
00104$:
;e4vm_core_ext.c:65: }
	pop	af
	pop	ix
	ret
;e4vm_core_ext.c:68: void e4vm_core_ext_lbrac (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_core_ext_lbrac
; ---------------------------------
_e4vm_core_ext_lbrac::
;e4vm_core_ext.c:70: (*v)->is_eval_mode = 1;
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #0x00cc
	add	hl, bc
	ld	(hl), #0x01
;e4vm_core_ext.c:71: }
	ret
;e4vm_core_ext.c:74: void e4vm_core_ext_rbrac (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_core_ext_rbrac
; ---------------------------------
_e4vm_core_ext_rbrac::
;e4vm_core_ext.c:76: (*v)->is_eval_mode = 0;
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #0x00cc
	add	hl, bc
	ld	(hl), #0x00
;e4vm_core_ext.c:77: }
	ret
;e4vm_core_ext.c:80: void e4vm_core_ext_add_core_words (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_core_ext_add_core_words
; ---------------------------------
_e4vm_core_ext_add_core_words::
	call	___sdcc_enter_ix
	ld	hl, #-64
	add	hl, sp
	ld	sp, hl
;e4vm_core_ext.c:90: __MOVE((CHAR*)"quit", _str__9, 5);
	ld	hl, #0
	add	hl, sp
	ld	c, l
	ld	b, h
	push	hl
	ld	de, #0x0005
	push	de
	ld	de, #___str_0
	push	de
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	hl
;e4vm_core_ext.c:91: e4vm_utils_add_core_word(v, (void*)_str__9, e4vm_core_ext_quit, 0);
	xor	a, a
	push	af
	inc	sp
	ld	bc, #_e4vm_core_ext_quit
	push	bc
	push	hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_core_word
	pop	af
	pop	af
	pop	af
	inc	sp
;e4vm_core_ext.c:92: __MOVE((CHAR*)"dolit", _str__8, 6);
	ld	hl, #8
	add	hl, sp
	ld	c, l
	ld	b, h
	push	hl
	ld	de, #0x0006
	push	de
	ld	de, #___str_1
	push	de
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	hl
;e4vm_core_ext.c:93: e4vm_utils_add_core_word(v, (void*)_str__8, e4vm_core_ext_do_lit, 0);
	xor	a, a
	push	af
	inc	sp
	ld	bc, #_e4vm_core_ext_do_lit
	push	bc
	push	hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_core_word
	pop	af
	pop	af
	pop	af
	inc	sp
;e4vm_core_ext.c:94: __MOVE((CHAR*)"here", _str__7, 5);
	ld	hl, #16
	add	hl, sp
	ld	c, l
	ld	b, h
	push	hl
	ld	de, #0x0005
	push	de
	ld	de, #___str_2
	push	de
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	hl
;e4vm_core_ext.c:95: e4vm_utils_add_core_word(v, (void*)_str__7, e4vm_core_ext_get_here_addr, 0);
	xor	a, a
	push	af
	inc	sp
	ld	bc, #_e4vm_core_ext_get_here_addr
	push	bc
	push	hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_core_word
	pop	af
	pop	af
	pop	af
	inc	sp
;e4vm_core_ext.c:96: __MOVE((CHAR*)",", _str__6, 2);
	ld	hl, #24
	add	hl, sp
	ld	c, l
	ld	b, h
	push	hl
	ld	de, #0x0002
	push	de
	ld	de, #___str_3
	push	de
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	hl
;e4vm_core_ext.c:97: e4vm_utils_add_core_word(v, (void*)_str__6, e4vm_core_ext_comma, 0);
	xor	a, a
	push	af
	inc	sp
	ld	bc, #_e4vm_core_ext_comma
	push	bc
	push	hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_core_word
	pop	af
	pop	af
	pop	af
	inc	sp
;e4vm_core_ext.c:98: __MOVE((CHAR*)"branch", _str__5, 7);
	ld	hl, #32
	add	hl, sp
	ld	c, l
	ld	b, h
	push	hl
	ld	de, #0x0007
	push	de
	ld	de, #___str_4
	push	de
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	hl
;e4vm_core_ext.c:99: e4vm_utils_add_core_word(v, (void*)_str__5, e4vm_core_ext_branch, 0);
	xor	a, a
	push	af
	inc	sp
	ld	bc, #_e4vm_core_ext_branch
	push	bc
	push	hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_core_word
	pop	af
	pop	af
	pop	af
	inc	sp
;e4vm_core_ext.c:100: __MOVE((CHAR*)"0branch", _str__4, 8);
	ld	hl, #40
	add	hl, sp
	ld	c, l
	ld	b, h
	push	hl
	ld	de, #0x0008
	push	de
	ld	de, #___str_5
	push	de
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	hl
;e4vm_core_ext.c:101: e4vm_utils_add_core_word(v, (void*)_str__4, e4vm_core_ext_zbranch, 0);
	xor	a, a
	push	af
	inc	sp
	ld	bc, #_e4vm_core_ext_zbranch
	push	bc
	push	hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_core_word
	pop	af
	pop	af
	pop	af
	inc	sp
;e4vm_core_ext.c:102: __MOVE((CHAR*)"[", _str__3, 2);
	ld	hl, #48
	add	hl, sp
	ld	c, l
	ld	b, h
	push	hl
	ld	de, #0x0002
	push	de
	ld	de, #___str_6
	push	de
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	hl
;e4vm_core_ext.c:103: e4vm_utils_add_core_word(v, (void*)_str__3, e4vm_core_ext_lbrac, 0);
	xor	a, a
	push	af
	inc	sp
	ld	bc, #_e4vm_core_ext_lbrac
	push	bc
	push	hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_core_word
	pop	af
	pop	af
	pop	af
	inc	sp
;e4vm_core_ext.c:104: __MOVE((CHAR*)"]", _str__2, 2);
	ld	hl, #56
	add	hl, sp
	ld	c, l
	ld	b, h
	push	hl
	ld	de, #0x0002
	push	de
	ld	de, #___str_7
	push	de
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	hl
;e4vm_core_ext.c:105: e4vm_utils_add_core_word(v, (void*)_str__2, e4vm_core_ext_rbrac, 0);
	xor	a, a
	push	af
	inc	sp
	ld	bc, #_e4vm_core_ext_rbrac
	push	bc
	push	hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_core_word
;e4vm_core_ext.c:106: }
	ld	sp,ix
	pop	ix
	ret
___str_0:
	.ascii "quit"
	.db 0x00
___str_1:
	.ascii "dolit"
	.db 0x00
___str_2:
	.ascii "here"
	.db 0x00
___str_3:
	.ascii ","
	.db 0x00
___str_4:
	.ascii "branch"
	.db 0x00
___str_5:
	.ascii "0branch"
	.db 0x00
___str_6:
	.ascii "["
	.db 0x00
___str_7:
	.ascii "]"
	.db 0x00
;e4vm_core_ext.c:110: export void *e4vm_core_ext__init (void)
;	---------------------------------
; Function e4vm_core_ext__init
; ---------------------------------
_e4vm_core_ext__init::
;e4vm_core_ext.c:112: __DEFMOD;
	LD	HL,#. 
	LD (HL),#0xC9 
;e4vm_core_ext.c:115: __IMPORT(e4vm_type__init);
	call	_e4vm_type__init
;e4vm_core_ext.c:116: __IMPORT(e4vm_utils__init);
;e4vm_core_ext.c:120: }
	jp  _e4vm_utils__init
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
