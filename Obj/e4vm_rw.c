/* Ofront+ 1.0 -sx3 -21 */
#include "SYSTEM.oh"
#include "Console.oh"
#include "GrFonts.oh"
#include "Platform.oh"
#include "Basic.oh"
#include "e4vm_type.oh"
#include "e4vm_utils.oh"




export void e4vm_rw_add_core_words (e4vm_type_x4thPtr *v);
export void e4vm_rw_bl (e4vm_type_x4thPtr *v);
export void e4vm_rw_cr (e4vm_type_x4thPtr *v);
export void e4vm_rw_dot (e4vm_type_x4thPtr *v);
export void e4vm_rw_dot_s (e4vm_type_x4thPtr *v);
export void e4vm_rw_key (e4vm_type_x4thPtr *v);
export void e4vm_rw_read_string (e4vm_type_x4thPtr *v);
export void e4vm_rw_read_word (e4vm_type_x4thPtr *v);
export void e4vm_rw_words_list (e4vm_type_x4thPtr *v);


/*============================================================================*/

void e4vm_rw_dot (e4vm_type_x4thPtr *v)
{
  if ((*v)->ds_p > 0) {
    (*v)->ds_p = (*v)->ds_p - 1;
    Console_WriteStr((CHAR*)" ", 2);
    Console_WriteInt((*v)->ds[(*v)->ds_p]);
  } else {
    Console_WriteStr((CHAR*)"ERROR: stack empty", 19);
  }
}

/*----------------------------------------------------------------------------*/
void e4vm_rw_dot_s (e4vm_type_x4thPtr *v)
{
  SHORTINT i, _for__14;
  Console_WriteLn();
  Console_WriteStr((CHAR*)"<", 2);
  Console_WriteInt((*v)->ds_p);
  Console_WriteStr((CHAR*)">", 2);
  _for__14 = (*v)->ds_p - 1;
  i = 0;
  while (i <= _for__14) {
    Console_WriteStr((CHAR*)" ", 2);
    Console_WriteInt((*v)->ds[i]);
    i += 1;
  }
}

/*----------------------------------------------------------------------------*/
void e4vm_rw_cr (e4vm_type_x4thPtr *v)
{
  Console_WriteLn();
}

/*----------------------------------------------------------------------------*/
void e4vm_rw_bl (e4vm_type_x4thPtr *v)
{
  Console_WriteStr((CHAR*)" ", 2);
}

/*----------------------------------------------------------------------------*/
void e4vm_rw_read_word (e4vm_type_x4thPtr *v)
{
}

/*----------------------------------------------------------------------------*/
void e4vm_rw_words_list (e4vm_type_x4thPtr *v)
{
  SHORTINT i, _for__20;
  e4vm_type_x4thPtr _ptr__19 = NIL;
  Console_WriteLn();
  _for__20 = (*v)->words_count - 1;
  i = 0;
  while (i <= _for__20) {
    _ptr__19 = *v;
    Console_WriteStr((void*)_ptr__19->words[i].word, 10);
    Console_WriteStr((CHAR*)" ", 2);
    i += 1;
  }
  Console_WriteLn();
}

/*----------------------------------------------------------------------------*/
void e4vm_rw_read_string (e4vm_type_x4thPtr *v)
{
}

/*----------------------------------------------------------------------------*/
void e4vm_rw_key (e4vm_type_x4thPtr *v)
{
}

/*----------------------------------------------------------------------------*/
void e4vm_rw_add_core_words (e4vm_type_x4thPtr *v)
{
  CHAR _str__9[10];
  CHAR _str__8[10];
  CHAR _str__7[10];
  CHAR _str__6[10];
  CHAR _str__5[10];
  CHAR _str__4[10];
  CHAR _str__3[10];
  CHAR _str__2[10];
  __MOVE((CHAR*)".", _str__9, 2);
  e4vm_utils_add_core_word(v, (void*)_str__9, e4vm_rw_dot, 0);
  __MOVE((CHAR*)".s", _str__8, 3);
  e4vm_utils_add_core_word(v, (void*)_str__8, e4vm_rw_dot_s, 0);
  __MOVE((CHAR*)"cr", _str__7, 3);
  e4vm_utils_add_core_word(v, (void*)_str__7, e4vm_rw_cr, 0);
  __MOVE((CHAR*)"bl", _str__6, 3);
  e4vm_utils_add_core_word(v, (void*)_str__6, e4vm_rw_bl, 0);
  __MOVE((CHAR*)"words", _str__5, 6);
  e4vm_utils_add_core_word(v, (void*)_str__5, e4vm_rw_words_list, 0);
  __MOVE((CHAR*)"word", _str__4, 5);
  e4vm_utils_add_core_word(v, (void*)_str__4, e4vm_rw_read_word, 0);
  __MOVE((CHAR*)"s\"", _str__3, 3);
  e4vm_utils_add_core_word(v, (void*)_str__3, e4vm_rw_read_string, 0);
  __MOVE((CHAR*)"key", _str__2, 4);
  e4vm_utils_add_core_word(v, (void*)_str__2, e4vm_rw_key, 0);
}

/*----------------------------------------------------------------------------*/

export void *e4vm_rw__init (void)
{
  __DEFMOD;
  __IMPORT(Console__init);
  __IMPORT(Platform__init);
  __IMPORT(e4vm_type__init);
  __IMPORT(e4vm_utils__init);
  __REGMOD("e4vm_rw", 0);
/* BEGIN */
  __ENDMOD;
}
