/* Ofront+ 1.0 -sx3 -21 */
#include "SYSTEM.oh"
#include "Console.oh"
#include "GrFonts.oh"
#include "Platform.oh"
#include "Basic.oh"
#include "e4vm_type.oh"
#include "e4vm_utils.oh"




export void e4vm_stack_add_core_words (e4vm_type_x4thPtr *v);
export void e4vm_stack_drop (e4vm_type_x4thPtr *v);
export void e4vm_stack_dup (e4vm_type_x4thPtr *v);
export void e4vm_stack_nrot (e4vm_type_x4thPtr *v);
export void e4vm_stack_over (e4vm_type_x4thPtr *v);
export void e4vm_stack_rot (e4vm_type_x4thPtr *v);
export void e4vm_stack_swap (e4vm_type_x4thPtr *v);


/*============================================================================*/

void e4vm_stack_drop (e4vm_type_x4thPtr *v)
{
  (*v)->ds_p = (*v)->ds_p - 1;
}

/*----------------------------------------------------------------------------*/
void e4vm_stack_swap (e4vm_type_x4thPtr *v)
{
  SHORTINT T;
  T = (*v)->ds[(*v)->ds_p - 1];
  (*v)->ds[(*v)->ds_p - 1] = (*v)->ds[(*v)->ds_p - 2];
  (*v)->ds[(*v)->ds_p - 2] = T;
}

/*----------------------------------------------------------------------------*/
void e4vm_stack_dup (e4vm_type_x4thPtr *v)
{
  (*v)->ds_p = (*v)->ds_p + 1;
  (*v)->ds[(*v)->ds_p - 1] = (*v)->ds[(*v)->ds_p - 2];
}

/*----------------------------------------------------------------------------*/
void e4vm_stack_over (e4vm_type_x4thPtr *v)
{
  (*v)->ds_p = (*v)->ds_p + 1;
  (*v)->ds[(*v)->ds_p - 1] = (*v)->ds[(*v)->ds_p - 3];
}

/*----------------------------------------------------------------------------*/
void e4vm_stack_rot (e4vm_type_x4thPtr *v)
{
  SHORTINT T;
  T = (*v)->ds[(*v)->ds_p - 3];
  (*v)->ds[(*v)->ds_p - 3] = (*v)->ds[(*v)->ds_p - 2];
  (*v)->ds[(*v)->ds_p - 2] = (*v)->ds[(*v)->ds_p - 1];
  (*v)->ds[(*v)->ds_p - 1] = T;
}

/*----------------------------------------------------------------------------*/
void e4vm_stack_nrot (e4vm_type_x4thPtr *v)
{
  SHORTINT T;
  T = (*v)->ds[(*v)->ds_p - 1];
  (*v)->ds[(*v)->ds_p - 1] = (*v)->ds[(*v)->ds_p - 2];
  (*v)->ds[(*v)->ds_p - 2] = (*v)->ds[(*v)->ds_p - 3];
  (*v)->ds[(*v)->ds_p - 3] = T;
}

/*----------------------------------------------------------------------------*/
void e4vm_stack_add_core_words (e4vm_type_x4thPtr *v)
{
  CHAR _str__7[8];
  CHAR _str__6[8];
  CHAR _str__5[8];
  CHAR _str__4[8];
  CHAR _str__3[8];
  CHAR _str__2[8];
  __MOVE((CHAR*)"drop", _str__7, 5);
  e4vm_utils_add_core_word(v, (void*)_str__7, e4vm_stack_drop, 0);
  __MOVE((CHAR*)"swap", _str__6, 5);
  e4vm_utils_add_core_word(v, (void*)_str__6, e4vm_stack_swap, 0);
  __MOVE((CHAR*)"dup", _str__5, 4);
  e4vm_utils_add_core_word(v, (void*)_str__5, e4vm_stack_dup, 0);
  __MOVE((CHAR*)"over", _str__4, 5);
  e4vm_utils_add_core_word(v, (void*)_str__4, e4vm_stack_over, 0);
  __MOVE((CHAR*)"rot", _str__3, 4);
  e4vm_utils_add_core_word(v, (void*)_str__3, e4vm_stack_rot, 0);
  __MOVE((CHAR*)"nrot", _str__2, 5);
  e4vm_utils_add_core_word(v, (void*)_str__2, e4vm_stack_nrot, 0);
}

/*----------------------------------------------------------------------------*/

export void *e4vm_stack__init (void)
{
  __DEFMOD;
  __IMPORT(Console__init);
  __IMPORT(Platform__init);
  __IMPORT(e4vm_type__init);
  __IMPORT(e4vm_utils__init);
  __REGMOD("e4vm_stack", 0);
/* BEGIN */
  __ENDMOD;
}
