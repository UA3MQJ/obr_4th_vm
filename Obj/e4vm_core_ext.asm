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
	.globl _e4vm_core__init
	.globl _e4vm_core_do_next
	.globl _e4vm_core_do_list
	.globl _e4vm_utils__init
	.globl _e4vm_utils_stack_ds_push
	.globl _e4vm_utils_look_up_word_idx_by_address
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
	.globl _e4vm_core_ext_immediate
	.globl _e4vm_core_ext_execute_addr
	.globl _e4vm_core_ext_execute
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
;e4vm_core_ext.c:30: void e4vm_core_ext_quit (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_core_ext_quit
; ---------------------------------
_e4vm_core_ext_quit::
;e4vm_core_ext.c:32: }
	ret
;e4vm_core_ext.c:35: void e4vm_core_ext_do_lit (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_core_ext_do_lit
; ---------------------------------
_e4vm_core_ext_do_lit::
	call	___sdcc_enter_ix
;e4vm_core_ext.c:37: e4vm_utils_stack_ds_push(v, (*v)->mem[(*v)->ip]);
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
;e4vm_core_ext.c:38: (*v)->ip = (*v)->ip + 1;
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
;e4vm_core_ext.c:39: }
	pop	ix
	ret
;e4vm_core_ext.c:42: void e4vm_core_ext_get_here_addr (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_core_ext_get_here_addr
; ---------------------------------
_e4vm_core_ext_get_here_addr::
	call	___sdcc_enter_ix
;e4vm_core_ext.c:44: e4vm_utils_stack_ds_push(v, (*v)->hereP);
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
;e4vm_core_ext.c:45: }
	pop	ix
	ret
;e4vm_core_ext.c:48: void e4vm_core_ext_comma (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_core_ext_comma
; ---------------------------------
_e4vm_core_ext_comma::
	call	___sdcc_enter_ix
;e4vm_core_ext.c:50: (*v)->ds_p = (*v)->ds_p - 1;
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
;e4vm_core_ext.c:51: e4vm_utils_add_op(v, (*v)->ds[(*v)->ds_p]);
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
;e4vm_core_ext.c:52: }
	pop	ix
	ret
;e4vm_core_ext.c:55: void e4vm_core_ext_branch (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_core_ext_branch
; ---------------------------------
_e4vm_core_ext_branch::
	call	___sdcc_enter_ix
;e4vm_core_ext.c:57: (*v)->ip = (*v)->mem[(*v)->ip];
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
;e4vm_core_ext.c:58: }
	pop	ix
	ret
;e4vm_core_ext.c:61: void e4vm_core_ext_zbranch (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_core_ext_zbranch
; ---------------------------------
_e4vm_core_ext_zbranch::
	call	___sdcc_enter_ix
	push	af
;e4vm_core_ext.c:63: (*v)->ds_p = (*v)->ds_p - 1;
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
;e4vm_core_ext.c:64: if ((*v)->ds[(*v)->ds_p] == 0) {
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
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
;e4vm_core_ext.c:65: (*v)->ip = (*v)->mem[(*v)->ip];
	ld	a, (bc)
	ld	-2 (ix), a
	inc	bc
	ld	a, (bc)
	ld	-1 (ix), a
	dec	bc
;e4vm_core_ext.c:64: if ((*v)->ds[(*v)->ds_p] == 0) {
	ld	a, d
	or	a, e
	jr	NZ,00102$
;e4vm_core_ext.c:65: (*v)->ip = (*v)->mem[(*v)->ip];
	ld	hl, #0x008a
	add	hl, bc
	ex	de, hl
	pop	hl
	push	hl
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
	jr	00104$
00102$:
;e4vm_core_ext.c:67: (*v)->ip = (*v)->ip;
	ld	a, -2 (ix)
	ld	(bc), a
	inc	bc
	ld	a, -1 (ix)
	ld	(bc), a
00104$:
;e4vm_core_ext.c:69: }
	pop	af
	pop	ix
	ret
;e4vm_core_ext.c:72: void e4vm_core_ext_lbrac (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_core_ext_lbrac
; ---------------------------------
_e4vm_core_ext_lbrac::
;e4vm_core_ext.c:74: (*v)->is_eval_mode = 1;
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
;e4vm_core_ext.c:75: }
	ret
;e4vm_core_ext.c:78: void e4vm_core_ext_rbrac (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_core_ext_rbrac
; ---------------------------------
_e4vm_core_ext_rbrac::
;e4vm_core_ext.c:80: (*v)->is_eval_mode = 0;
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
;e4vm_core_ext.c:81: }
	ret
;e4vm_core_ext.c:84: void e4vm_core_ext_immediate (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_core_ext_immediate
; ---------------------------------
_e4vm_core_ext_immediate::
	call	___sdcc_enter_ix
;e4vm_core_ext.c:86: (*v)->words[(*v)->words_count - 1].immediate = 1;
	ld	l, 4 (ix)
	ld	h, 5 (ix)
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
	ld	bc, #0x000e
	add	hl, bc
	ld	(hl), #0x01
;e4vm_core_ext.c:87: }
	pop	ix
	ret
;e4vm_core_ext.c:90: void e4vm_core_ext_execute_addr (e4vm_type_x4thPtr *v, SHORTINT word_address)
;	---------------------------------
; Function e4vm_core_ext_execute_addr
; ---------------------------------
_e4vm_core_ext_execute_addr::
	call	___sdcc_enter_ix
	push	af
;e4vm_core_ext.c:93: word_idx = e4vm_utils_look_up_word_idx_by_address(v, word_address);
	ld	l, 6 (ix)
	ld	h, 7 (ix)
	push	hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_look_up_word_idx_by_address
	pop	af
	pop	af
	inc	sp
	inc	sp
	push	hl
;e4vm_core_ext.c:95: (*v)->ip = 0;
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
;e4vm_core_ext.c:94: if (word_idx == -1) {
	ld	a, -2 (ix)
	and	a, -1 (ix)
	inc	a
	jr	NZ,00102$
;e4vm_core_ext.c:95: (*v)->ip = 0;
	xor	a, a
	ld	(de), a
	inc	de
	ld	(de), a
;e4vm_core_ext.c:96: (*v)->wp = word_address;
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	inc	de
	inc	de
	ld	a, 6 (ix)
	ld	(de), a
	inc	de
	ld	a, 7 (ix)
	ld	(de), a
;e4vm_core_ext.c:97: e4vm_core_do_list(v);
	push	bc
	call	_e4vm_core_do_list
	pop	af
;e4vm_core_ext.c:98: e4vm_core_do_next(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_next
	pop	af
	jr	00104$
00102$:
;e4vm_core_ext.c:100: (*(*v)->words[word_idx].proc)(v);
	ld	hl, #0x00cd
	add	hl, de
	ex	de, hl
	pop	hl
	push	hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	ld	de, #0x000c
	add	hl, de
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	push	bc
	call	___sdcc_call_hl
	pop	af
00104$:
;e4vm_core_ext.c:102: }
	pop	af
	pop	ix
	ret
;e4vm_core_ext.c:105: void e4vm_core_ext_execute (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_core_ext_execute
; ---------------------------------
_e4vm_core_ext_execute::
	call	___sdcc_enter_ix
;e4vm_core_ext.c:107: (*v)->ds_p = (*v)->ds_p - 1;
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
;e4vm_core_ext.c:108: e4vm_core_ext_execute_addr(v, (*v)->ds[(*v)->ds_p]);
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
	call	_e4vm_core_ext_execute_addr
	pop	af
	pop	af
;e4vm_core_ext.c:109: }
	pop	ix
	ret
;e4vm_core_ext.c:112: void e4vm_core_ext_add_core_words (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_core_ext_add_core_words
; ---------------------------------
_e4vm_core_ext_add_core_words::
	call	___sdcc_enter_ix
	ld	hl, #-100
	add	hl, sp
	ld	sp, hl
;e4vm_core_ext.c:124: __MOVE((CHAR*)"quit", _str__11, 5);
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
;e4vm_core_ext.c:125: e4vm_utils_add_core_word(v, (void*)_str__11, e4vm_core_ext_quit, 0);
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
;e4vm_core_ext.c:126: __MOVE((CHAR*)"dolit", _str__10, 6);
	ld	hl, #10
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
;e4vm_core_ext.c:127: e4vm_utils_add_core_word(v, (void*)_str__10, e4vm_core_ext_do_lit, 0);
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
;e4vm_core_ext.c:128: __MOVE((CHAR*)"here", _str__9, 5);
	ld	hl, #20
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
;e4vm_core_ext.c:129: e4vm_utils_add_core_word(v, (void*)_str__9, e4vm_core_ext_get_here_addr, 0);
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
;e4vm_core_ext.c:130: __MOVE((CHAR*)",", _str__8, 2);
	ld	hl, #30
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
;e4vm_core_ext.c:131: e4vm_utils_add_core_word(v, (void*)_str__8, e4vm_core_ext_comma, 0);
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
;e4vm_core_ext.c:132: __MOVE((CHAR*)"branch", _str__7, 7);
	ld	hl, #40
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
;e4vm_core_ext.c:133: e4vm_utils_add_core_word(v, (void*)_str__7, e4vm_core_ext_branch, 0);
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
;e4vm_core_ext.c:134: __MOVE((CHAR*)"0branch", _str__6, 8);
	ld	hl, #50
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
;e4vm_core_ext.c:135: e4vm_utils_add_core_word(v, (void*)_str__6, e4vm_core_ext_zbranch, 0);
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
;e4vm_core_ext.c:136: __MOVE((CHAR*)"[", _str__5, 2);
	ld	hl, #60
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
;e4vm_core_ext.c:137: e4vm_utils_add_core_word(v, (void*)_str__5, e4vm_core_ext_lbrac, 1);
	ld	a, #0x01
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
;e4vm_core_ext.c:138: __MOVE((CHAR*)"]", _str__4, 2);
	ld	hl, #70
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
;e4vm_core_ext.c:139: e4vm_utils_add_core_word(v, (void*)_str__4, e4vm_core_ext_rbrac, 0);
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
	pop	af
	pop	af
	pop	af
	inc	sp
;e4vm_core_ext.c:140: __MOVE((CHAR*)"immediate", _str__3, 10);
	ld	hl, #80
	add	hl, sp
	ld	c, l
	ld	b, h
	push	hl
	ld	de, #0x000a
	push	de
	ld	de, #___str_8
	push	de
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	hl
;e4vm_core_ext.c:141: e4vm_utils_add_core_word(v, (void*)_str__3, e4vm_core_ext_immediate, 1);
	ld	a, #0x01
	push	af
	inc	sp
	ld	bc, #_e4vm_core_ext_immediate
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
;e4vm_core_ext.c:142: __MOVE((CHAR*)"execute", _str__2, 8);
	ld	hl, #90
	add	hl, sp
	ld	c, l
	ld	b, h
	push	hl
	ld	de, #0x0008
	push	de
	ld	de, #___str_9
	push	de
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	hl
;e4vm_core_ext.c:143: e4vm_utils_add_core_word(v, (void*)_str__2, e4vm_core_ext_execute, 0);
	xor	a, a
	push	af
	inc	sp
	ld	bc, #_e4vm_core_ext_execute
	push	bc
	push	hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_core_word
;e4vm_core_ext.c:144: }
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
___str_8:
	.ascii "immediate"
	.db 0x00
___str_9:
	.ascii "execute"
	.db 0x00
;e4vm_core_ext.c:148: export void *e4vm_core_ext__init (void)
;	---------------------------------
; Function e4vm_core_ext__init
; ---------------------------------
_e4vm_core_ext__init::
;e4vm_core_ext.c:150: __DEFMOD;
	LD	HL,#. 
	LD (HL),#0xC9 
;e4vm_core_ext.c:153: __IMPORT(e4vm_core__init);
	call	_e4vm_core__init
;e4vm_core_ext.c:154: __IMPORT(e4vm_type__init);
	call	_e4vm_type__init
;e4vm_core_ext.c:155: __IMPORT(e4vm_utils__init);
;e4vm_core_ext.c:159: }
	jp  _e4vm_utils__init
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
