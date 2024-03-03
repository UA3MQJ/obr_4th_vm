/* Ofront+ 1.0 -sx3 -21 */
#include "SYSTEM.oh"
#include "Console.oh"
#include "GrFonts.oh"
#include "Platform.oh"
#include "Basic.oh"
#include "e4vm_type.oh"
#include "e4vm_utils.oh"




export void e4vm_core_add_core_words (e4vm_type_x4thPtr *v);
export void e4vm_core_do_exit (e4vm_type_x4thPtr *v);
export void e4vm_core_do_list (e4vm_type_x4thPtr *v);
export void e4vm_core_do_next (e4vm_type_x4thPtr *v);
export void e4vm_core_do_nop (e4vm_type_x4thPtr *v);


/*============================================================================*/

void e4vm_core_do_nop (e4vm_type_x4thPtr *v)
{
}

/*----------------------------------------------------------------------------*/
void e4vm_core_do_list (e4vm_type_x4thPtr *v)
{
  SHORTINT next_ip;
  (*v)->rs[(*v)->rs_p] = (*v)->ip;
  (*v)->rs_p = (*v)->rs_p + 1;
  (*v)->ip = (*v)->wp + 1;
}

/*----------------------------------------------------------------------------*/
void e4vm_core_do_next (e4vm_type_x4thPtr *v)
{
  SHORTINT word_index;
  while (!((*v)->ip == 0)) {
    (*v)->wp = (*v)->mem[(*v)->ip];
    (*v)->ip = (*v)->ip + 1;
    word_index = (*v)->mem[(*v)->wp];
    (*(*v)->words[word_index].proc)(v);
  }
}

/*----------------------------------------------------------------------------*/
void e4vm_core_do_exit (e4vm_type_x4thPtr *v)
{
  (*v)->rs_p = (*v)->rs_p - 1;
  (*v)->ip = (*v)->rs[(*v)->rs_p];
}

/*----------------------------------------------------------------------------*/
void e4vm_core_add_core_words (e4vm_type_x4thPtr *v)
{
  CHAR _str__5[10];
  CHAR _str__4[10];
  CHAR _str__3[10];
  CHAR _str__2[10];
  __MOVE((CHAR*)"nop", _str__5, 4);
  e4vm_utils_add_core_word(v, (void*)_str__5, e4vm_core_do_nop, 0);
  __MOVE((CHAR*)"dolist", _str__4, 7);
  e4vm_utils_add_core_word(v, (void*)_str__4, e4vm_core_do_list, 0);
  __MOVE((CHAR*)"next", _str__3, 5);
  e4vm_utils_add_core_word(v, (void*)_str__3, e4vm_core_do_next, 0);
  __MOVE((CHAR*)"exit", _str__2, 5);
  e4vm_utils_add_core_word(v, (void*)_str__2, e4vm_core_do_exit, 0);
}

/*----------------------------------------------------------------------------*/

export void *e4vm_core__init (void)
{
  __DEFMOD;
  __IMPORT(Console__init);
  __IMPORT(Platform__init);
  __IMPORT(e4vm_type__init);
  __IMPORT(e4vm_utils__init);
  __REGMOD("e4vm_core", 0);
/* BEGIN */
  __ENDMOD;
}
