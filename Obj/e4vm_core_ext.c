/* Ofront+ 1.0 -sx3 -21 */
#include "SYSTEM.oh"
#include "Console.oh"
#include "GrFonts.oh"
#include "Platform.oh"
#include "Basic.oh"
#include "e4vm_type.oh"
#include "e4vm_utils.oh"
#include "e4vm_core.oh"




export void e4vm_core_ext_add_core_words (e4vm_type_x4thPtr *v);
export void e4vm_core_ext_branch (e4vm_type_x4thPtr *v);
export void e4vm_core_ext_comma (e4vm_type_x4thPtr *v);
export void e4vm_core_ext_do_lit (e4vm_type_x4thPtr *v);
export void e4vm_core_ext_eval (e4vm_type_x4thPtr *v, CHAR str[64]);
export void e4vm_core_ext_execute (e4vm_type_x4thPtr *v);
export void e4vm_core_ext_execute_addr (e4vm_type_x4thPtr *v, SHORTINT word_address);
export void e4vm_core_ext_get_here_addr (e4vm_type_x4thPtr *v);
export void e4vm_core_ext_immediate (e4vm_type_x4thPtr *v);
export void e4vm_core_ext_interpreter (e4vm_type_x4thPtr *v);
export void e4vm_core_ext_interpreter_word (e4vm_type_x4thPtr *v, e4vm_type_word_string_type word);
export void e4vm_core_ext_lbrac (e4vm_type_x4thPtr *v);
export void e4vm_core_ext_quit (e4vm_type_x4thPtr *v);
export void e4vm_core_ext_rbrac (e4vm_type_x4thPtr *v);
export void e4vm_core_ext_zbranch (e4vm_type_x4thPtr *v);


/*============================================================================*/

void e4vm_core_ext_quit (e4vm_type_x4thPtr *v)
{
}

/*----------------------------------------------------------------------------*/
void e4vm_core_ext_do_lit (e4vm_type_x4thPtr *v)
{
  e4vm_utils_stack_ds_push(v, (*v)->mem[(*v)->ip]);
  (*v)->ip = (*v)->ip + 1;
}

/*----------------------------------------------------------------------------*/
void e4vm_core_ext_get_here_addr (e4vm_type_x4thPtr *v)
{
  e4vm_utils_stack_ds_push(v, (*v)->hereP);
}

/*----------------------------------------------------------------------------*/
void e4vm_core_ext_comma (e4vm_type_x4thPtr *v)
{
  (*v)->ds_p = (*v)->ds_p - 1;
  e4vm_utils_add_op(v, (*v)->ds[(*v)->ds_p]);
}

/*----------------------------------------------------------------------------*/
void e4vm_core_ext_branch (e4vm_type_x4thPtr *v)
{
  (*v)->ip = (*v)->mem[(*v)->ip];
}

/*----------------------------------------------------------------------------*/
void e4vm_core_ext_zbranch (e4vm_type_x4thPtr *v)
{
  (*v)->ds_p = (*v)->ds_p - 1;
  if ((*v)->ds[(*v)->ds_p] == 0) {
    (*v)->ip = (*v)->mem[(*v)->ip];
  } else {
    (*v)->ip = (*v)->ip;
  }
}

/*----------------------------------------------------------------------------*/
void e4vm_core_ext_lbrac (e4vm_type_x4thPtr *v)
{
  (*v)->is_eval_mode = 1;
}

/*----------------------------------------------------------------------------*/
void e4vm_core_ext_rbrac (e4vm_type_x4thPtr *v)
{
  (*v)->is_eval_mode = 0;
}

/*----------------------------------------------------------------------------*/
void e4vm_core_ext_immediate (e4vm_type_x4thPtr *v)
{
  (*v)->words[(*v)->words_count - 1].immediate = 1;
}

/*----------------------------------------------------------------------------*/
void e4vm_core_ext_execute_addr (e4vm_type_x4thPtr *v, SHORTINT word_address)
{
  SHORTINT word_idx;
  word_idx = e4vm_utils_look_up_word_idx_by_address(v, word_address);
  if (word_idx == -1) {
    (*v)->ip = 0;
    (*v)->wp = word_address;
    e4vm_core_do_list(v);
    e4vm_core_do_next(v);
  } else {
    (*(*v)->words[word_idx].proc)(v);
  }
}

/*----------------------------------------------------------------------------*/
void e4vm_core_ext_execute (e4vm_type_x4thPtr *v)
{
  (*v)->ds_p = (*v)->ds_p - 1;
  e4vm_core_ext_execute_addr(v, (*v)->ds[(*v)->ds_p]);
}

/*----------------------------------------------------------------------------*/
void e4vm_core_ext_interpreter_word (e4vm_type_x4thPtr *v, e4vm_type_word_string_type word)
{
  SHORTINT word_address;
  CHAR _str__22[10];
  word_address = e4vm_utils_look_up_word_address(v, word);
  if ((*v)->is_eval_mode) {
    if (!(word_address == -1)) {
      e4vm_core_ext_execute_addr(v, word_address);
    } else if (e4vm_utils_is_constant(word)) {
      e4vm_utils_stack_ds_push(v, e4vm_utils_str2int(word));
    } else {
      Console_WriteStr((CHAR*)"ERROR(1): undefined word ", 26);
      Console_WriteStrLn((void*)word, 10);
    }
  } else {
    if (!(word_address == -1)) {
      if ((*v)->words[word_address].immediate) {
        e4vm_core_ext_execute_addr(v, word_address);
      } else {
        e4vm_utils_add_op(v, word_address);
      }
    } else if (e4vm_utils_is_constant(word)) {
      __MOVE((CHAR*)"dolit", _str__22, 6);
      e4vm_utils_add_op_from_string(v, (void*)_str__22);
      e4vm_utils_add_op(v, e4vm_utils_str2int(word));
    } else {
      Console_WriteStr((CHAR*)"ERROR(2): undefined word ", 26);
      Console_WriteStrLn((void*)word, 10);
    }
  }
}

/*----------------------------------------------------------------------------*/
void e4vm_core_ext_interpreter (e4vm_type_x4thPtr *v)
{
  BOOLEAN t;
  t = e4vm_utils_read_word(v);
  while (t) {
    e4vm_core_ext_interpreter_word(v, (*v)->readed_word);
    t = e4vm_utils_read_word(v);
  }
}

/*----------------------------------------------------------------------------*/
void e4vm_core_ext_eval (e4vm_type_x4thPtr *v, CHAR str[64])
{
  SHORTINT i;
  i = 0;
  while (!((SHORTINT)str[i] == 0)) {
    (*v)->buffer[i] = str[i];
    i = i + 1;
    (*v)->buffer[i] = 0x00;
  }
  (*v)->buffer_idx = 0;
  e4vm_core_ext_interpreter(v);
}

/*----------------------------------------------------------------------------*/
void e4vm_core_ext_add_core_words (e4vm_type_x4thPtr *v)
{
  CHAR _str__11[10];
  CHAR _str__10[10];
  CHAR _str__9[10];
  CHAR _str__8[10];
  CHAR _str__7[10];
  CHAR _str__6[10];
  CHAR _str__5[10];
  CHAR _str__4[10];
  CHAR _str__3[10];
  CHAR _str__2[10];
  __MOVE((CHAR*)"quit", _str__11, 5);
  e4vm_utils_add_core_word(v, (void*)_str__11, e4vm_core_ext_quit, 0);
  __MOVE((CHAR*)"dolit", _str__10, 6);
  e4vm_utils_add_core_word(v, (void*)_str__10, e4vm_core_ext_do_lit, 0);
  __MOVE((CHAR*)"here", _str__9, 5);
  e4vm_utils_add_core_word(v, (void*)_str__9, e4vm_core_ext_get_here_addr, 0);
  __MOVE((CHAR*)",", _str__8, 2);
  e4vm_utils_add_core_word(v, (void*)_str__8, e4vm_core_ext_comma, 0);
  __MOVE((CHAR*)"branch", _str__7, 7);
  e4vm_utils_add_core_word(v, (void*)_str__7, e4vm_core_ext_branch, 0);
  __MOVE((CHAR*)"0branch", _str__6, 8);
  e4vm_utils_add_core_word(v, (void*)_str__6, e4vm_core_ext_zbranch, 0);
  __MOVE((CHAR*)"[", _str__5, 2);
  e4vm_utils_add_core_word(v, (void*)_str__5, e4vm_core_ext_lbrac, 1);
  __MOVE((CHAR*)"]", _str__4, 2);
  e4vm_utils_add_core_word(v, (void*)_str__4, e4vm_core_ext_rbrac, 0);
  __MOVE((CHAR*)"immediate", _str__3, 10);
  e4vm_utils_add_core_word(v, (void*)_str__3, e4vm_core_ext_immediate, 1);
  __MOVE((CHAR*)"execute", _str__2, 8);
  e4vm_utils_add_core_word(v, (void*)_str__2, e4vm_core_ext_execute, 0);
}

/*----------------------------------------------------------------------------*/

export void *e4vm_core_ext__init (void)
{
  __DEFMOD;
  __IMPORT(Console__init);
  __IMPORT(Platform__init);
  __IMPORT(e4vm_core__init);
  __IMPORT(e4vm_type__init);
  __IMPORT(e4vm_utils__init);
  __REGMOD("e4vm_core_ext", 0);
/* BEGIN */
  __ENDMOD;
}
