/* Ofront+ 1.0 -sx3 -21 */
#include "SYSTEM.oh"
#include "Console.oh"
#include "GrFonts.oh"
#include "Platform.oh"
#include "Basic.oh"
#include "e4vm_type.oh"
#include "e4vm_utils.oh"




export void e4vm_math_add_core_words (e4vm_type_x4thPtr *v);
export void e4vm_math_dec (e4vm_type_x4thPtr *v);
export void e4vm_math_devide (e4vm_type_x4thPtr *v);
export void e4vm_math_inc (e4vm_type_x4thPtr *v);
export void e4vm_math_minus (e4vm_type_x4thPtr *v);
export void e4vm_math_mod (e4vm_type_x4thPtr *v);
export void e4vm_math_multiply (e4vm_type_x4thPtr *v);
export void e4vm_math_plus (e4vm_type_x4thPtr *v);


/*============================================================================*/

void e4vm_math_minus (e4vm_type_x4thPtr *v)
{
  (*v)->ds_p = (*v)->ds_p - 1;
  (*v)->ds[(*v)->ds_p - 1] = (*v)->ds[(*v)->ds_p - 1] - (*v)->ds[(*v)->ds_p];
}

/*----------------------------------------------------------------------------*/
void e4vm_math_plus (e4vm_type_x4thPtr *v)
{
  (*v)->ds_p = (*v)->ds_p + 1;
  (*v)->ds[(*v)->ds_p - 1] = (*v)->ds[(*v)->ds_p - 1] + (*v)->ds[(*v)->ds_p];
}

/*----------------------------------------------------------------------------*/
void e4vm_math_multiply (e4vm_type_x4thPtr *v)
{
  (*v)->ds_p = (*v)->ds_p - 1;
  (*v)->ds[(*v)->ds_p - 1] = (*v)->ds[(*v)->ds_p - 1] * (*v)->ds[(*v)->ds_p];
}

/*----------------------------------------------------------------------------*/
void e4vm_math_devide (e4vm_type_x4thPtr *v)
{
  (*v)->ds_p = (*v)->ds_p - 1;
  (*v)->ds[(*v)->ds_p - 1] = __DIVFS((*v)->ds[(*v)->ds_p - 1], (*v)->ds[(*v)->ds_p]);
}

/*----------------------------------------------------------------------------*/
void e4vm_math_mod (e4vm_type_x4thPtr *v)
{
  (*v)->ds_p = (*v)->ds_p - 1;
  (*v)->ds[(*v)->ds_p - 1] = __MODFS((*v)->ds[(*v)->ds_p - 1], (*v)->ds[(*v)->ds_p]);
}

/*----------------------------------------------------------------------------*/
void e4vm_math_inc (e4vm_type_x4thPtr *v)
{
  (*v)->ds[(*v)->ds_p - 1] = (*v)->ds[(*v)->ds_p - 1] + 1;
}

/*----------------------------------------------------------------------------*/
void e4vm_math_dec (e4vm_type_x4thPtr *v)
{
  (*v)->ds[(*v)->ds_p - 1] = (*v)->ds[(*v)->ds_p - 1] - 1;
}

/*----------------------------------------------------------------------------*/
void e4vm_math_add_core_words (e4vm_type_x4thPtr *v)
{
  CHAR _str__8[10];
  CHAR _str__7[10];
  CHAR _str__6[10];
  CHAR _str__5[10];
  CHAR _str__4[10];
  CHAR _str__3[10];
  CHAR _str__2[10];
  __MOVE((CHAR*)"-", _str__8, 2);
  e4vm_utils_add_core_word(v, (void*)_str__8, e4vm_math_minus, 0);
  __MOVE((CHAR*)"+", _str__7, 2);
  e4vm_utils_add_core_word(v, (void*)_str__7, e4vm_math_plus, 0);
  __MOVE((CHAR*)"*", _str__6, 2);
  e4vm_utils_add_core_word(v, (void*)_str__6, e4vm_math_multiply, 0);
  __MOVE((CHAR*)"/", _str__5, 2);
  e4vm_utils_add_core_word(v, (void*)_str__5, e4vm_math_devide, 0);
  __MOVE((CHAR*)"mod", _str__4, 4);
  e4vm_utils_add_core_word(v, (void*)_str__4, e4vm_math_mod, 0);
  __MOVE((CHAR*)"1+", _str__3, 3);
  e4vm_utils_add_core_word(v, (void*)_str__3, e4vm_math_inc, 0);
  __MOVE((CHAR*)"1-", _str__2, 3);
  e4vm_utils_add_core_word(v, (void*)_str__2, e4vm_math_dec, 0);
}

/*----------------------------------------------------------------------------*/

export void *e4vm_math__init (void)
{
  __DEFMOD;
  __IMPORT(Console__init);
  __IMPORT(Platform__init);
  __IMPORT(e4vm_type__init);
  __IMPORT(e4vm_utils__init);
  __REGMOD("e4vm_math", 0);
/* BEGIN */
  __ENDMOD;
}
