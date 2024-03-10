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
	.globl _e4vm_utils_str2int
	.globl _e4vm_utils_stack_ds_push
	.globl _e4vm_utils_read_word
	.globl _e4vm_utils_look_up_word_idx_by_address
	.globl _e4vm_utils_look_up_word_address
	.globl _e4vm_utils_is_constant
	.globl _e4vm_utils_add_op_from_string
	.globl _e4vm_utils_add_op
	.globl _e4vm_utils_add_core_word
	.globl _e4vm_type__init
	.globl _Basic_PAUSE_EI
	.globl _Console_WriteStr_C_COMPACT
	.globl _Console_WriteLn_COMPACT
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
	.globl _e4vm_core_ext_interpreter_word
	.globl _e4vm_core_ext_interpreter
	.globl _e4vm_core_ext_eval
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
;e4vm_core_ext.c:33: void e4vm_core_ext_quit (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_core_ext_quit
; ---------------------------------
_e4vm_core_ext_quit::
;e4vm_core_ext.c:35: }
	ret
;e4vm_core_ext.c:38: void e4vm_core_ext_do_lit (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_core_ext_do_lit
; ---------------------------------
_e4vm_core_ext_do_lit::
	call	___sdcc_enter_ix
;e4vm_core_ext.c:40: e4vm_utils_stack_ds_push(v, (*v)->mem[(*v)->ip]);
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
;e4vm_core_ext.c:41: (*v)->ip = (*v)->ip + 1;
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
;e4vm_core_ext.c:42: }
	pop	ix
	ret
;e4vm_core_ext.c:45: void e4vm_core_ext_get_here_addr (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_core_ext_get_here_addr
; ---------------------------------
_e4vm_core_ext_get_here_addr::
	call	___sdcc_enter_ix
;e4vm_core_ext.c:47: e4vm_utils_stack_ds_push(v, (*v)->hereP);
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
;e4vm_core_ext.c:48: }
	pop	ix
	ret
;e4vm_core_ext.c:51: void e4vm_core_ext_comma (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_core_ext_comma
; ---------------------------------
_e4vm_core_ext_comma::
	call	___sdcc_enter_ix
;e4vm_core_ext.c:53: (*v)->ds_p = (*v)->ds_p - 1;
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
;e4vm_core_ext.c:54: e4vm_utils_add_op(v, (*v)->ds[(*v)->ds_p]);
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
;e4vm_core_ext.c:55: }
	pop	ix
	ret
;e4vm_core_ext.c:58: void e4vm_core_ext_branch (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_core_ext_branch
; ---------------------------------
_e4vm_core_ext_branch::
	call	___sdcc_enter_ix
;e4vm_core_ext.c:60: (*v)->ip = (*v)->mem[(*v)->ip];
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
;e4vm_core_ext.c:61: }
	pop	ix
	ret
;e4vm_core_ext.c:64: void e4vm_core_ext_zbranch (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_core_ext_zbranch
; ---------------------------------
_e4vm_core_ext_zbranch::
	call	___sdcc_enter_ix
	push	af
;e4vm_core_ext.c:66: (*v)->ds_p = (*v)->ds_p - 1;
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
;e4vm_core_ext.c:67: if ((*v)->ds[(*v)->ds_p] == 0) {
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
;e4vm_core_ext.c:68: (*v)->ip = (*v)->mem[(*v)->ip];
	ld	a, (bc)
	ld	-2 (ix), a
	inc	bc
	ld	a, (bc)
	ld	-1 (ix), a
	dec	bc
;e4vm_core_ext.c:67: if ((*v)->ds[(*v)->ds_p] == 0) {
	ld	a, d
	or	a, e
	jr	NZ,00102$
;e4vm_core_ext.c:68: (*v)->ip = (*v)->mem[(*v)->ip];
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
;e4vm_core_ext.c:70: (*v)->ip = (*v)->ip;
	ld	a, -2 (ix)
	ld	(bc), a
	inc	bc
	ld	a, -1 (ix)
	ld	(bc), a
00104$:
;e4vm_core_ext.c:72: }
	pop	af
	pop	ix
	ret
;e4vm_core_ext.c:75: void e4vm_core_ext_lbrac (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_core_ext_lbrac
; ---------------------------------
_e4vm_core_ext_lbrac::
;e4vm_core_ext.c:77: (*v)->is_eval_mode = 1;
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
;e4vm_core_ext.c:78: }
	ret
;e4vm_core_ext.c:81: void e4vm_core_ext_rbrac (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_core_ext_rbrac
; ---------------------------------
_e4vm_core_ext_rbrac::
;e4vm_core_ext.c:83: (*v)->is_eval_mode = 0;
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
;e4vm_core_ext.c:84: }
	ret
;e4vm_core_ext.c:87: void e4vm_core_ext_immediate (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_core_ext_immediate
; ---------------------------------
_e4vm_core_ext_immediate::
	call	___sdcc_enter_ix
;e4vm_core_ext.c:89: (*v)->words[(*v)->words_count - 1].immediate = 1;
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
	ld	bc, #0x04cd
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
;e4vm_core_ext.c:90: }
	pop	ix
	ret
;e4vm_core_ext.c:93: void e4vm_core_ext_execute_addr (e4vm_type_x4thPtr *v, SHORTINT word_address)
;	---------------------------------
; Function e4vm_core_ext_execute_addr
; ---------------------------------
_e4vm_core_ext_execute_addr::
	call	___sdcc_enter_ix
	push	af
;e4vm_core_ext.c:96: word_idx = e4vm_utils_look_up_word_idx_by_address(v, word_address);
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
;e4vm_core_ext.c:98: (*v)->ip = 0;
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
;e4vm_core_ext.c:97: if (word_idx == -1) {
	ld	a, -2 (ix)
	and	a, -1 (ix)
	inc	a
	jr	NZ,00102$
;e4vm_core_ext.c:98: (*v)->ip = 0;
	xor	a, a
	ld	(de), a
	inc	de
	ld	(de), a
;e4vm_core_ext.c:99: (*v)->wp = word_address;
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
;e4vm_core_ext.c:100: e4vm_core_do_list(v);
	push	bc
	call	_e4vm_core_do_list
	pop	af
;e4vm_core_ext.c:101: e4vm_core_do_next(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_core_do_next
	pop	af
	jr	00104$
00102$:
;e4vm_core_ext.c:103: (*(*v)->words[word_idx].proc)(v);
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
;e4vm_core_ext.c:105: }
	pop	af
	pop	ix
	ret
;e4vm_core_ext.c:108: void e4vm_core_ext_execute (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_core_ext_execute
; ---------------------------------
_e4vm_core_ext_execute::
	call	___sdcc_enter_ix
;e4vm_core_ext.c:110: (*v)->ds_p = (*v)->ds_p - 1;
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
;e4vm_core_ext.c:111: e4vm_core_ext_execute_addr(v, (*v)->ds[(*v)->ds_p]);
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
;e4vm_core_ext.c:112: }
	pop	ix
	ret
;e4vm_core_ext.c:115: void e4vm_core_ext_interpreter_word (e4vm_type_x4thPtr *v, e4vm_type_word_string_type word)
;	---------------------------------
; Function e4vm_core_ext_interpreter_word
; ---------------------------------
_e4vm_core_ext_interpreter_word::
	call	___sdcc_enter_ix
	ld	hl, #-20
	add	hl, sp
	ld	sp, hl
;e4vm_core_ext.c:119: word_address = e4vm_utils_look_up_word_address(v, word);
	ld	l, 6 (ix)
	ld	h, 7 (ix)
	push	hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_look_up_word_address
	pop	af
	pop	af
	ld	-10 (ix), l
	ld	-9 (ix), h
;e4vm_core_ext.c:120: if ((*v)->is_eval_mode) {
	ld	a, 4 (ix)
	ld	-8 (ix), a
	ld	a, 5 (ix)
	ld	-7 (ix), a
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	a, (hl)
	ld	-6 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-5 (ix), a
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	de, #0x00cc
	add	hl, de
	ld	a, (hl)
	ld	-4 (ix), a
;e4vm_core_ext.c:121: if (!(word_address == -1)) {
	ld	a, -10 (ix)
	and	a, -9 (ix)
	inc	a
	ld	a, #0x01
	jr	Z,00152$
	xor	a, a
00152$:
	ld	-3 (ix), a
;e4vm_core_ext.c:127: Console_WriteStrLn((void*)word, 10);
	ld	c, 6 (ix)
	ld	b, 7 (ix)
	ld	-2 (ix), c
	ld	-1 (ix), b
;e4vm_core_ext.c:120: if ((*v)->is_eval_mode) {
	ld	a, -4 (ix)
	or	a, a
	jr	Z,00117$
;e4vm_core_ext.c:121: if (!(word_address == -1)) {
	ld	a, -3 (ix)
	or	a, a
	jr	NZ,00105$
;e4vm_core_ext.c:122: e4vm_core_ext_execute_addr(v, word_address);
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	push	hl
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	push	hl
	call	_e4vm_core_ext_execute_addr
	pop	af
	pop	af
	jp	00119$
00105$:
;e4vm_core_ext.c:123: } else if (e4vm_utils_is_constant(word)) {
	ld	l, 6 (ix)
	ld	h, 7 (ix)
	push	hl
	call	_e4vm_utils_is_constant
	pop	af
	ld	a, l
	or	a, a
	jr	Z,00102$
;e4vm_core_ext.c:124: e4vm_utils_stack_ds_push(v, e4vm_utils_str2int(word));
	ld	l, 6 (ix)
	ld	h, 7 (ix)
	push	hl
	call	_e4vm_utils_str2int
	ex	(sp),hl
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	push	hl
	call	_e4vm_utils_stack_ds_push
	pop	af
	pop	af
	jp	00119$
00102$:
;e4vm_core_ext.c:126: Console_WriteStr((CHAR*)"ERROR(1): undefined word ", 26);
	ld	hl, #___str_0
	call	_Console_WriteStr_C_COMPACT
;e4vm_core_ext.c:127: Console_WriteStrLn((void*)word, 10);
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
	jp	00119$
00117$:
;e4vm_core_ext.c:130: if (!(word_address == -1)) {
	ld	a, -3 (ix)
	or	a, a
	jr	NZ,00114$
;e4vm_core_ext.c:131: if ((*v)->words[word_address].immediate) {
	ld	a, -6 (ix)
	add	a, #0xcd
	ld	-2 (ix), a
	ld	a, -5 (ix)
	adc	a, #0x00
	ld	-1 (ix), a
	ld	a, -10 (ix)
	ld	-6 (ix), a
	ld	a, -9 (ix)
	ld	-5 (ix), a
	ld	a, #0x04+1
	jr	00154$
00153$:
	sla	-6 (ix)
	rl	-5 (ix)
00154$:
	dec	a
	jr	NZ,00153$
	ld	a, -2 (ix)
	add	a, -6 (ix)
	ld	-4 (ix), a
	ld	a, -1 (ix)
	adc	a, -5 (ix)
	ld	-3 (ix), a
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	de, #0x000e
	add	hl, de
	ld	a, (hl)
	or	a, a
	jr	Z,00108$
;e4vm_core_ext.c:132: e4vm_core_ext_execute_addr(v, word_address);
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	push	hl
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	push	hl
	call	_e4vm_core_ext_execute_addr
	pop	af
	pop	af
	jr	00119$
00108$:
;e4vm_core_ext.c:134: e4vm_utils_add_op(v, word_address);
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	push	hl
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	push	hl
	call	_e4vm_utils_add_op
	pop	af
	pop	af
	jr	00119$
00114$:
;e4vm_core_ext.c:136: } else if (e4vm_utils_is_constant(word)) {
	ld	l, 6 (ix)
	ld	h, 7 (ix)
	push	hl
	call	_e4vm_utils_is_constant
	pop	af
	ld	a, l
	or	a, a
	jr	Z,00111$
;e4vm_core_ext.c:137: __MOVE((CHAR*)"dolit", _str__22, 6);
	ld	hl, #0
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
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	push	hl
	call	_e4vm_utils_add_op_from_string
	pop	af
	pop	af
;e4vm_core_ext.c:139: e4vm_utils_add_op(v, e4vm_utils_str2int(word));
	ld	l, 6 (ix)
	ld	h, 7 (ix)
	push	hl
	call	_e4vm_utils_str2int
	ex	(sp),hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_add_op
	pop	af
	pop	af
	jr	00119$
00111$:
;e4vm_core_ext.c:141: Console_WriteStr((CHAR*)"ERROR(2): undefined word ", 26);
	ld	hl, #___str_2
	call	_Console_WriteStr_C_COMPACT
;e4vm_core_ext.c:142: Console_WriteStrLn((void*)word, 10);
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
00119$:
;e4vm_core_ext.c:145: }
	ld	sp, ix
	pop	ix
	ret
___str_0:
	.ascii "ERROR(1): undefined word "
	.db 0x00
___str_1:
	.ascii "dolit"
	.db 0x00
___str_2:
	.ascii "ERROR(2): undefined word "
	.db 0x00
;e4vm_core_ext.c:148: void e4vm_core_ext_interpreter (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_core_ext_interpreter
; ---------------------------------
_e4vm_core_ext_interpreter::
	call	___sdcc_enter_ix
;e4vm_core_ext.c:151: t = e4vm_utils_read_word(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_read_word
	pop	af
;e4vm_core_ext.c:152: while (t) {
00101$:
	ld	a, l
	or	a, a
	jr	Z,00103$
;e4vm_core_ext.c:153: e4vm_core_ext_interpreter_word(v, (*v)->readed_word);
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x0551
	add	hl, de
	push	hl
	push	bc
	call	_e4vm_core_ext_interpreter_word
	pop	af
	pop	af
;e4vm_core_ext.c:154: t = e4vm_utils_read_word(v);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_e4vm_utils_read_word
	pop	af
	jr	00101$
00103$:
;e4vm_core_ext.c:156: Console_WriteStrLn((CHAR*)" ok", 4);
	ld	hl, #___str_3
	call	_Console_WriteStr_C_COMPACT
	call	_Console_WriteLn_COMPACT
;e4vm_core_ext.c:157: Basic_PAUSE(10);
	ld	hl, #0x000a
;e4vm_core_ext.c:158: }
	pop	ix
	jp	_Basic_PAUSE_EI
___str_3:
	.ascii " ok"
	.db 0x00
;e4vm_core_ext.c:161: void e4vm_core_ext_eval (e4vm_type_x4thPtr *v, CHAR str[64])
;	---------------------------------
; Function e4vm_core_ext_eval
; ---------------------------------
_e4vm_core_ext_eval::
	call	___sdcc_enter_ix
	dec	sp
;e4vm_core_ext.c:165: while (!((SHORTINT)str[i] == 0)) {
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	de, #0x0000
00101$:
	ld	l, 6 (ix)
	ld	h, 7 (ix)
	add	hl, de
	ld	a, (hl)
	ld	-1 (ix), a
;e4vm_core_ext.c:166: (*v)->buffer[i] = str[i];
	ld	l, c
	ld	h, b
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
;e4vm_core_ext.c:165: while (!((SHORTINT)str[i] == 0)) {
	ld	a, -1 (ix)
	or	a, a
	jr	Z,00103$
;e4vm_core_ext.c:166: (*v)->buffer[i] = str[i];
	push	de
	ld	de, #0x050f
	add	hl, de
	pop	de
	add	hl, de
	ld	a, -1 (ix)
	ld	(hl), a
;e4vm_core_ext.c:167: i = i + 1;
	inc	de
;e4vm_core_ext.c:168: (*v)->buffer[i] = 0x00;
	ld	l, c
	ld	h, b
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	push	de
	ld	de, #0x050f
	add	hl, de
	pop	de
	add	hl, de
	ld	(hl), #0x00
	jr	00101$
00103$:
;e4vm_core_ext.c:170: (*v)->buffer_idx = 0;
	ld	de, #0x054f
	add	hl, de
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;e4vm_core_ext.c:171: e4vm_core_ext_interpreter(v);
	push	bc
	call	_e4vm_core_ext_interpreter
	pop	af
;e4vm_core_ext.c:172: }
	inc	sp
	pop	ix
	ret
;e4vm_core_ext.c:175: void e4vm_core_ext_add_core_words (e4vm_type_x4thPtr *v)
;	---------------------------------
; Function e4vm_core_ext_add_core_words
; ---------------------------------
_e4vm_core_ext_add_core_words::
	call	___sdcc_enter_ix
	ld	hl, #-100
	add	hl, sp
	ld	sp, hl
;e4vm_core_ext.c:187: __MOVE((CHAR*)"quit", _str__11, 5);
	ld	hl, #0
	add	hl, sp
	ld	c, l
	ld	b, h
	push	hl
	ld	de, #0x0005
	push	de
	ld	de, #___str_4
	push	de
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	hl
;e4vm_core_ext.c:188: e4vm_utils_add_core_word(v, (void*)_str__11, e4vm_core_ext_quit, 0);
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
;e4vm_core_ext.c:189: __MOVE((CHAR*)"dolit", _str__10, 6);
	ld	hl, #10
	add	hl, sp
	ld	c, l
	ld	b, h
	push	hl
	ld	de, #0x0006
	push	de
	ld	de, #___str_5
	push	de
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	hl
;e4vm_core_ext.c:190: e4vm_utils_add_core_word(v, (void*)_str__10, e4vm_core_ext_do_lit, 0);
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
;e4vm_core_ext.c:191: __MOVE((CHAR*)"here", _str__9, 5);
	ld	hl, #20
	add	hl, sp
	ld	c, l
	ld	b, h
	push	hl
	ld	de, #0x0005
	push	de
	ld	de, #___str_6
	push	de
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	hl
;e4vm_core_ext.c:192: e4vm_utils_add_core_word(v, (void*)_str__9, e4vm_core_ext_get_here_addr, 0);
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
;e4vm_core_ext.c:193: __MOVE((CHAR*)",", _str__8, 2);
	ld	hl, #30
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
;e4vm_core_ext.c:194: e4vm_utils_add_core_word(v, (void*)_str__8, e4vm_core_ext_comma, 0);
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
;e4vm_core_ext.c:195: __MOVE((CHAR*)"branch", _str__7, 7);
	ld	hl, #40
	add	hl, sp
	ld	c, l
	ld	b, h
	push	hl
	ld	de, #0x0007
	push	de
	ld	de, #___str_8
	push	de
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	hl
;e4vm_core_ext.c:196: e4vm_utils_add_core_word(v, (void*)_str__7, e4vm_core_ext_branch, 0);
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
;e4vm_core_ext.c:197: __MOVE((CHAR*)"0branch", _str__6, 8);
	ld	hl, #50
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
;e4vm_core_ext.c:198: e4vm_utils_add_core_word(v, (void*)_str__6, e4vm_core_ext_zbranch, 0);
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
;e4vm_core_ext.c:199: __MOVE((CHAR*)"[", _str__5, 2);
	ld	hl, #60
	add	hl, sp
	ld	c, l
	ld	b, h
	push	hl
	ld	de, #0x0002
	push	de
	ld	de, #___str_10
	push	de
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	hl
;e4vm_core_ext.c:200: e4vm_utils_add_core_word(v, (void*)_str__5, e4vm_core_ext_lbrac, 1);
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
;e4vm_core_ext.c:201: __MOVE((CHAR*)"]", _str__4, 2);
	ld	hl, #70
	add	hl, sp
	ld	c, l
	ld	b, h
	push	hl
	ld	de, #0x0002
	push	de
	ld	de, #___str_11
	push	de
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	hl
;e4vm_core_ext.c:202: e4vm_utils_add_core_word(v, (void*)_str__4, e4vm_core_ext_rbrac, 0);
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
;e4vm_core_ext.c:203: __MOVE((CHAR*)"immediate", _str__3, 10);
	ld	hl, #80
	add	hl, sp
	ld	c, l
	ld	b, h
	push	hl
	ld	de, #0x000a
	push	de
	ld	de, #___str_12
	push	de
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	hl
;e4vm_core_ext.c:204: e4vm_utils_add_core_word(v, (void*)_str__3, e4vm_core_ext_immediate, 1);
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
;e4vm_core_ext.c:205: __MOVE((CHAR*)"execute", _str__2, 8);
	ld	hl, #90
	add	hl, sp
	ld	c, l
	ld	b, h
	push	hl
	ld	de, #0x0008
	push	de
	ld	de, #___str_13
	push	de
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	hl
;e4vm_core_ext.c:206: e4vm_utils_add_core_word(v, (void*)_str__2, e4vm_core_ext_execute, 0);
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
;e4vm_core_ext.c:207: }
	ld	sp,ix
	pop	ix
	ret
___str_4:
	.ascii "quit"
	.db 0x00
___str_5:
	.ascii "dolit"
	.db 0x00
___str_6:
	.ascii "here"
	.db 0x00
___str_7:
	.ascii ","
	.db 0x00
___str_8:
	.ascii "branch"
	.db 0x00
___str_9:
	.ascii "0branch"
	.db 0x00
___str_10:
	.ascii "["
	.db 0x00
___str_11:
	.ascii "]"
	.db 0x00
___str_12:
	.ascii "immediate"
	.db 0x00
___str_13:
	.ascii "execute"
	.db 0x00
;e4vm_core_ext.c:211: export void *e4vm_core_ext__init (void)
;	---------------------------------
; Function e4vm_core_ext__init
; ---------------------------------
_e4vm_core_ext__init::
;e4vm_core_ext.c:213: __DEFMOD;
	LD	HL,#. 
	LD (HL),#0xC9 
;e4vm_core_ext.c:216: __IMPORT(e4vm_core__init);
	call	_e4vm_core__init
;e4vm_core_ext.c:217: __IMPORT(e4vm_type__init);
	call	_e4vm_type__init
;e4vm_core_ext.c:218: __IMPORT(e4vm_utils__init);
;e4vm_core_ext.c:222: }
	jp  _e4vm_utils__init
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
