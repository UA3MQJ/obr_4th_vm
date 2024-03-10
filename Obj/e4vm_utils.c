/* Ofront+ 1.0 -sx3 -21 */
#include "SYSTEM.oh"
#include "Console.oh"
#include "GrFonts.oh"
#include "Platform.oh"
#include "Basic.oh"
#include "e4vm_type.oh"




export void e4vm_utils_add_core_word (e4vm_type_x4thPtr *v, e4vm_type_word_string_type word, e4vm_type_ProcedureType proc, BOOLEAN immediate);
export void e4vm_utils_add_op (e4vm_type_x4thPtr *v, SHORTINT word_adr);
export void e4vm_utils_add_op_from_string (e4vm_type_x4thPtr *v, e4vm_type_word_string_type word);
export void e4vm_utils_error (CHAR *err, SHORTINT err__len);
export SHORTINT e4vm_utils_false_const (e4vm_type_x4thPtr *v);
export void e4vm_utils_here_to_wp (e4vm_type_x4thPtr *v);
export void e4vm_utils_init (e4vm_type_x4thPtr *v);
export BOOLEAN e4vm_utils_is_constant (e4vm_type_word_string_type word);
export BOOLEAN e4vm_utils_is_digit (CHAR char_);
export void e4vm_utils_keyboard_read_string (e4vm_type_x4thPtr *v);
export SHORTINT e4vm_utils_look_up_word_address (e4vm_type_x4thPtr *v, e4vm_type_word_string_type word);
export SHORTINT e4vm_utils_look_up_word_idx_by_address (e4vm_type_x4thPtr *v, SHORTINT word_address);
export CHAR e4vm_utils_read_char (e4vm_type_x4thPtr *v);
export BOOLEAN e4vm_utils_read_word (e4vm_type_x4thPtr *v);
export void e4vm_utils_stack_ds_push (e4vm_type_x4thPtr *v, SHORTINT x);
export void e4vm_utils_stack_rs_push (e4vm_type_x4thPtr *v, SHORTINT x);
export SHORTINT e4vm_utils_str2int (e4vm_type_word_string_type word);
export SHORTINT e4vm_utils_true_const (e4vm_type_x4thPtr *v);
export void e4vm_utils_vm_stat (e4vm_type_x4thPtr *v);


/*============================================================================*/

void e4vm_utils_add_core_word (e4vm_type_x4thPtr *v, e4vm_type_word_string_type word, e4vm_type_ProcedureType proc, BOOLEAN immediate)
{
  __MOVE(word, (*v)->words[(*v)->words_count].word, 10);
  (*v)->words[(*v)->words_count].addr = (*v)->words_count;
  (*v)->words[(*v)->words_count].proc = proc;
  (*v)->words[(*v)->words_count].immediate = immediate;
  (*v)->words[(*v)->words_count].enabled = 1;
  (*v)->mem[(*v)->words_count] = (*v)->words_count;
  (*v)->words_count = (*v)->words_count + 1;
  (*v)->hereP = (*v)->words_count;
}

/*----------------------------------------------------------------------------*/
SHORTINT e4vm_utils_look_up_word_address (e4vm_type_x4thPtr *v, e4vm_type_word_string_type word)
{
  SHORTINT i, _for__13;
  _for__13 = (*v)->words_count - 1;
  i = 0;
  while (i <= _for__13) {
    if (__STRCMPCC((*v)->words[i].word, word, 10, (CHAR*)"e4vm_utils", -907) == 0) {
      return (*v)->words[i].addr;
    }
    i += 1;
  }
  return -1;
}

/*----------------------------------------------------------------------------*/
SHORTINT e4vm_utils_look_up_word_idx_by_address (e4vm_type_x4thPtr *v, SHORTINT word_address)
{
  SHORTINT i, _for__15;
  _for__15 = (*v)->words_count - 1;
  i = 0;
  while (i <= _for__15) {
    if ((*v)->words[i].addr == word_address) {
      return i;
    }
    i += 1;
  }
  return -1;
}

/*----------------------------------------------------------------------------*/
BOOLEAN e4vm_utils_is_digit (CHAR char_)
{
  return char_ >= '0' && char_ <= '9';
}

/*----------------------------------------------------------------------------*/
BOOLEAN e4vm_utils_is_constant (e4vm_type_word_string_type word)
{
  return e4vm_utils_is_digit(word[0]) || ((word[0] == '+' || word[0] == '-') && e4vm_utils_is_digit(word[1]));
}

/*----------------------------------------------------------------------------*/
SHORTINT e4vm_utils_str2int (e4vm_type_word_string_type word)
{
  SHORTINT res, i;
  res = 0;
  i = 0;
  if (word[0] == '+' || word[0] == '-') {
    i = 1;
  }
  while ((SHORTINT)word[i] > 0) {
    res = res * 10;
    res = res + ((SHORTINT)word[i] - 48);
    i = i + 1;
  }
  if (word[0] == '-') {
    res = -res;
  }
  return res;
}

/*----------------------------------------------------------------------------*/
void e4vm_utils_here_to_wp (e4vm_type_x4thPtr *v)
{
  (*v)->wp = (*v)->hereP;
}

/*----------------------------------------------------------------------------*/
void e4vm_utils_add_op (e4vm_type_x4thPtr *v, SHORTINT word_adr)
{
  (*v)->mem[(*v)->hereP] = word_adr;
  (*v)->hereP = (*v)->hereP + 1;
}

/*----------------------------------------------------------------------------*/
void e4vm_utils_add_op_from_string (e4vm_type_x4thPtr *v, e4vm_type_word_string_type word)
{
  e4vm_utils_add_op(v, e4vm_utils_look_up_word_address(v, word));
}

/*----------------------------------------------------------------------------*/
void e4vm_utils_init (e4vm_type_x4thPtr *v)
{
  SHORTINT i;
  (*v)->ip = 0;
  (*v)->wp = 0;
  (*v)->hereP = 0;
  (*v)->rs_p = 0;
  (*v)->ds_p = 0;
  (*v)->words_count = 0;
  (*v)->cell_bit_size = 16;
  (*v)->is_eval_mode = 1;
  (*v)->buffer_idx = 0;
  i = 0;
  while (i <= 31) {
    (*v)->mem[i] = 0;
    i += 1;
  }
  i = 0;
  while (i <= 63) {
    (*v)->buffer[i] = 0x00;
    i += 1;
  }
  i = 0;
  while (i <= 31) {
    (*v)->rs[i] = 0;
    (*v)->ds[i] = 0;
    i += 1;
  }
}

/*----------------------------------------------------------------------------*/
void e4vm_utils_vm_stat (e4vm_type_x4thPtr *v)
{
  SHORTINT i;
  Console_WriteStrLn((CHAR*)" ", 2);
  Console_WriteStr((CHAR*)"ip:", 4);
  Console_WriteInt((*v)->ip);
  Console_WriteStr((CHAR*)" wp:", 5);
  Console_WriteInt((*v)->wp);
  Console_WriteStr((CHAR*)" hereP:", 8);
  Console_WriteInt((*v)->hereP);
  Console_WriteStrLn((CHAR*)" ", 2);
  Console_WriteStrLn((CHAR*)" ", 2);
  Console_WriteStr((CHAR*)"rs_p:", 6);
  Console_WriteInt((*v)->rs_p);
  Console_WriteStrLn((CHAR*)" ", 2);
  Console_WriteStrLn((CHAR*)"rs: [", 6);
  i = 0;
  while (i <= 31) {
    Console_WriteInt((*v)->rs[i]);
    Console_WriteStr((CHAR*)" ", 2);
    i += 1;
  }
  Console_WriteStrLn((CHAR*)"]", 2);
  Console_WriteStr((CHAR*)"ds_p:", 6);
  Console_WriteInt((*v)->ds_p);
  Console_WriteStrLn((CHAR*)" ", 2);
  Console_WriteStrLn((CHAR*)"ds: [", 6);
  i = 0;
  while (i <= 31) {
    Console_WriteInt((*v)->ds[i]);
    Console_WriteStr((CHAR*)" ", 2);
    i += 1;
  }
  Console_WriteStrLn((CHAR*)"]", 2);
  Console_WriteStrLn((CHAR*)"mem: [", 7);
  i = 0;
  while (i <= 31) {
    Console_WriteInt((*v)->mem[i]);
    Console_WriteStr((CHAR*)" ", 2);
    i += 1;
  }
  Console_WriteStrLn((CHAR*)"]", 2);
}

/*----------------------------------------------------------------------------*/
SHORTINT e4vm_utils_true_const (e4vm_type_x4thPtr *v)
{
  return -1;
}

/*----------------------------------------------------------------------------*/
SHORTINT e4vm_utils_false_const (e4vm_type_x4thPtr *v)
{
  return 0;
}

/*----------------------------------------------------------------------------*/
void e4vm_utils_error (CHAR *err, SHORTINT err__len)
{
  Console_WriteStr((CHAR*)"Error: ", 8);
  Console_WriteStr((void*)err, err__len);
  Console_WriteStrLn((CHAR*)"", 1);
}

/*----------------------------------------------------------------------------*/
void e4vm_utils_stack_ds_push (e4vm_type_x4thPtr *v, SHORTINT x)
{
  (*v)->ds[(*v)->ds_p] = x;
  (*v)->ds_p = (*v)->ds_p + 1;
}

/*----------------------------------------------------------------------------*/
void e4vm_utils_stack_rs_push (e4vm_type_x4thPtr *v, SHORTINT x)
{
  (*v)->rs[(*v)->rs_p] = x;
  (*v)->rs_p = (*v)->rs_p + 1;
}

/*----------------------------------------------------------------------------*/
void e4vm_utils_keyboard_read_string (e4vm_type_x4thPtr *v)
{
  CHAR str[64];
  e4vm_type_x4thPtr _ptr__11 = NIL;
  _ptr__11 = *v;
  Console_ReadStr((void*)_ptr__11->buffer, 64, 64);
  (*v)->buffer_idx = 0;
}

/*----------------------------------------------------------------------------*/
CHAR e4vm_utils_read_char (e4vm_type_x4thPtr *v)
{
  CHAR c;
  c = (*v)->buffer[(*v)->buffer_idx];
  if (!((SHORTINT)c == 0)) {
    (*v)->buffer_idx = (*v)->buffer_idx + 1;
  }
  return c;
}

/*----------------------------------------------------------------------------*/
BOOLEAN e4vm_utils_read_word (e4vm_type_x4thPtr *v)
{
  CHAR c;
  BOOLEAN fl;
  SHORTINT i;
  fl = 0;
  i = 0;
  c = e4vm_utils_read_char(v);
  while (c == ' ') {
    c = e4vm_utils_read_char(v);
  }
  while (!(c == ' ' || (SHORTINT)c == 0)) {
    fl = 1;
    (*v)->readed_word[i] = c;
    i = i + 1;
    (*v)->readed_word[i] = 0x00;
    c = e4vm_utils_read_char(v);
  }
  return fl;
}

/*----------------------------------------------------------------------------*/

export void *e4vm_utils__init (void)
{
  __DEFMOD;
  __IMPORT(Console__init);
  __IMPORT(Platform__init);
  __IMPORT(e4vm_type__init);
  __REGMOD("e4vm_utils", 0);
/* BEGIN */
  __ENDMOD;
}
