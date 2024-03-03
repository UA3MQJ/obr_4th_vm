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
export SHORTINT e4vm_utils_look_up_word_address (e4vm_type_x4thPtr *v, e4vm_type_word_string_type word);
export CHAR e4vm_utils_read_char (e4vm_type_x4thPtr *v);
export void e4vm_utils_read_string (e4vm_type_x4thPtr *v);
export void e4vm_utils_stack_ds_push (e4vm_type_x4thPtr *v, SHORTINT x);
export void e4vm_utils_stack_rs_push (e4vm_type_x4thPtr *v, SHORTINT x);
export SHORTINT e4vm_utils_true_const (e4vm_type_x4thPtr *v);
export void e4vm_utils_vm_stat (e4vm_type_x4thPtr *v);


/*============================================================================*/

void e4vm_utils_add_core_word (e4vm_type_x4thPtr *v, e4vm_type_word_string_type word, e4vm_type_ProcedureType proc, BOOLEAN immediate)
{
  __MOVE(word, (*v)->words[(*v)->words_count].word, 8);
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
  SHORTINT i, _for__9;
  _for__9 = (*v)->words_count - 1;
  i = 0;
  while (i <= _for__9) {
    if (__STRCMPCC((*v)->words[i].word, word, 8, (CHAR*)"e4vm_utils", -907) == 0) {
      return (*v)->words[i].addr;
    }
    i += 1;
  }
  return -1;
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
  i = 0;
  while (i <= 31) {
    (*v)->mem[i] = 0;
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
  Console_WriteStr((CHAR*)" words_count:", 14);
  Console_WriteInt((*v)->words_count);
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
CHAR e4vm_utils_read_char (e4vm_type_x4thPtr *v)
{
  do {
  } while (!(!(Basic_PEEK(23556) == 255)));
  return Basic_PEEK(23560);
}

/*----------------------------------------------------------------------------*/
void e4vm_utils_read_string (e4vm_type_x4thPtr *v)
{
  CHAR str[64];
  e4vm_type_x4thPtr _ptr__12 = NIL;
  _ptr__12 = *v;
  Console_ReadStr((void*)_ptr__12->in_string, 64, 64);
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
