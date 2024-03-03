/* Ofront+ 1.0 -sx3 -21 */
#include "SYSTEM.oh"
#include "Console.oh"
#include "GrFonts.oh"
#include "Platform.oh"
#include "Basic.oh"
#include "e4vm_type.oh"
#include "e4vm_utils.oh"




export void e4vm_boolean_add_core_words (e4vm_type_x4thPtr *v);
export void e4vm_boolean_and (e4vm_type_x4thPtr *v);
export void e4vm_boolean_eql (e4vm_type_x4thPtr *v);
export void e4vm_boolean_false (e4vm_type_x4thPtr *v);
export void e4vm_boolean_greater (e4vm_type_x4thPtr *v);
export void e4vm_boolean_greater_eql (e4vm_type_x4thPtr *v);
export void e4vm_boolean_invert (e4vm_type_x4thPtr *v);
export void e4vm_boolean_less (e4vm_type_x4thPtr *v);
export void e4vm_boolean_less_eql (e4vm_type_x4thPtr *v);
export void e4vm_boolean_not (e4vm_type_x4thPtr *v);
export void e4vm_boolean_not_eql (e4vm_type_x4thPtr *v);
export void e4vm_boolean_or (e4vm_type_x4thPtr *v);
export void e4vm_boolean_true (e4vm_type_x4thPtr *v);
export void e4vm_boolean_xor (e4vm_type_x4thPtr *v);

#define e4vm_boolean_BitwiseAND(val1, val2)  ((val1 & val2))
#define e4vm_boolean_BitwiseNot(value)  (~(value))
#define e4vm_boolean_BitwiseOR(val1, val2)  ((val1 | val2))
#define e4vm_boolean_BitwiseXOR(val1, val2)  ((val1 ^ val2))

/*============================================================================*/

void e4vm_boolean_true (e4vm_type_x4thPtr *v)
{
  (*v)->ds[(*v)->ds_p] = e4vm_utils_true_const(v);
  (*v)->ds_p = (*v)->ds_p + 1;
}

/*----------------------------------------------------------------------------*/
void e4vm_boolean_false (e4vm_type_x4thPtr *v)
{
  (*v)->ds[(*v)->ds_p] = e4vm_utils_false_const(v);
  (*v)->ds_p = (*v)->ds_p + 1;
}

/*----------------------------------------------------------------------------*/
void e4vm_boolean_not (e4vm_type_x4thPtr *v)
{
  if ((*v)->ds[(*v)->ds_p - 1] == e4vm_utils_true_const(v)) {
    (*v)->ds[(*v)->ds_p - 1] = e4vm_utils_false_const(v);
  } else {
    if ((*v)->ds[(*v)->ds_p - 1] == e4vm_utils_false_const(v)) {
      (*v)->ds[(*v)->ds_p - 1] = e4vm_utils_true_const(v);
    } else {
      Console_WriteStrLn((CHAR*)"not logical", 12);
    }
  }
}

/*----------------------------------------------------------------------------*/
void e4vm_boolean_invert (e4vm_type_x4thPtr *v)
{
  (*v)->ds[(*v)->ds_p - 1] = e4vm_boolean_BitwiseNot((*v)->ds[(*v)->ds_p - 1]);
}

/*----------------------------------------------------------------------------*/
void e4vm_boolean_or (e4vm_type_x4thPtr *v)
{
  (*v)->ds[(*v)->ds_p - 2] = e4vm_boolean_BitwiseOR((*v)->ds[(*v)->ds_p - 2], (*v)->ds[(*v)->ds_p - 1]);
  (*v)->ds_p = (*v)->ds_p - 1;
}

/*----------------------------------------------------------------------------*/
void e4vm_boolean_and (e4vm_type_x4thPtr *v)
{
  (*v)->ds[(*v)->ds_p - 2] = e4vm_boolean_BitwiseAND((*v)->ds[(*v)->ds_p - 2], (*v)->ds[(*v)->ds_p - 1]);
  (*v)->ds_p = (*v)->ds_p - 1;
}

/*----------------------------------------------------------------------------*/
void e4vm_boolean_xor (e4vm_type_x4thPtr *v)
{
  (*v)->ds[(*v)->ds_p - 2] = e4vm_boolean_BitwiseXOR((*v)->ds[(*v)->ds_p - 2], (*v)->ds[(*v)->ds_p - 1]);
  (*v)->ds_p = (*v)->ds_p - 1;
}

/*----------------------------------------------------------------------------*/
void e4vm_boolean_eql (e4vm_type_x4thPtr *v)
{
  if ((*v)->ds[(*v)->ds_p - 2] == (*v)->ds[(*v)->ds_p - 1]) {
    (*v)->ds[(*v)->ds_p - 2] = e4vm_utils_true_const(v);
  } else {
    (*v)->ds[(*v)->ds_p - 2] = e4vm_utils_false_const(v);
  }
  (*v)->ds_p = (*v)->ds_p - 1;
}

/*----------------------------------------------------------------------------*/
void e4vm_boolean_not_eql (e4vm_type_x4thPtr *v)
{
  if (!((*v)->ds[(*v)->ds_p - 2] == (*v)->ds[(*v)->ds_p - 1])) {
    (*v)->ds[(*v)->ds_p - 2] = e4vm_utils_true_const(v);
  } else {
    (*v)->ds[(*v)->ds_p - 2] = e4vm_utils_false_const(v);
  }
  (*v)->ds_p = (*v)->ds_p - 1;
}

/*----------------------------------------------------------------------------*/
void e4vm_boolean_less (e4vm_type_x4thPtr *v)
{
  if ((*v)->ds[(*v)->ds_p - 2] < (*v)->ds[(*v)->ds_p - 1]) {
    (*v)->ds[(*v)->ds_p - 2] = e4vm_utils_true_const(v);
  } else {
    (*v)->ds[(*v)->ds_p - 2] = e4vm_utils_false_const(v);
  }
  (*v)->ds_p = (*v)->ds_p - 1;
}

/*----------------------------------------------------------------------------*/
void e4vm_boolean_greater (e4vm_type_x4thPtr *v)
{
  if ((*v)->ds[(*v)->ds_p - 2] > (*v)->ds[(*v)->ds_p - 1]) {
    (*v)->ds[(*v)->ds_p - 2] = e4vm_utils_true_const(v);
  } else {
    (*v)->ds[(*v)->ds_p - 2] = e4vm_utils_false_const(v);
  }
  (*v)->ds_p = (*v)->ds_p - 1;
}

/*----------------------------------------------------------------------------*/
void e4vm_boolean_less_eql (e4vm_type_x4thPtr *v)
{
  if ((*v)->ds[(*v)->ds_p - 2] <= (*v)->ds[(*v)->ds_p - 1]) {
    (*v)->ds[(*v)->ds_p - 2] = e4vm_utils_true_const(v);
  } else {
    (*v)->ds[(*v)->ds_p - 2] = e4vm_utils_false_const(v);
  }
  (*v)->ds_p = (*v)->ds_p - 1;
}

/*----------------------------------------------------------------------------*/
void e4vm_boolean_greater_eql (e4vm_type_x4thPtr *v)
{
  if ((*v)->ds[(*v)->ds_p - 2] >= (*v)->ds[(*v)->ds_p - 1]) {
    (*v)->ds[(*v)->ds_p - 2] = e4vm_utils_true_const(v);
  } else {
    (*v)->ds[(*v)->ds_p - 2] = e4vm_utils_false_const(v);
  }
  (*v)->ds_p = (*v)->ds_p - 1;
}

/*----------------------------------------------------------------------------*/
void e4vm_boolean_add_core_words (e4vm_type_x4thPtr *v)
{
  CHAR _str__18[8];
  CHAR _str__17[8];
  CHAR _str__16[8];
  CHAR _str__15[8];
  CHAR _str__14[8];
  CHAR _str__13[8];
  CHAR _str__12[8];
  CHAR _str__11[8];
  CHAR _str__10[8];
  CHAR _str__9[8];
  CHAR _str__8[8];
  CHAR _str__7[8];
  CHAR _str__6[8];
  __MOVE((CHAR*)"true", _str__18, 5);
  e4vm_utils_add_core_word(v, (void*)_str__18, e4vm_boolean_true, 0);
  __MOVE((CHAR*)"false", _str__17, 6);
  e4vm_utils_add_core_word(v, (void*)_str__17, e4vm_boolean_false, 0);
  __MOVE((CHAR*)"not", _str__16, 4);
  e4vm_utils_add_core_word(v, (void*)_str__16, e4vm_boolean_not, 0);
  __MOVE((CHAR*)"invert", _str__15, 7);
  e4vm_utils_add_core_word(v, (void*)_str__15, e4vm_boolean_invert, 0);
  __MOVE((CHAR*)"or", _str__14, 3);
  e4vm_utils_add_core_word(v, (void*)_str__14, e4vm_boolean_or, 0);
  __MOVE((CHAR*)"and", _str__13, 4);
  e4vm_utils_add_core_word(v, (void*)_str__13, e4vm_boolean_and, 0);
  __MOVE((CHAR*)"xor", _str__12, 4);
  e4vm_utils_add_core_word(v, (void*)_str__12, e4vm_boolean_xor, 0);
  __MOVE((CHAR*)"<>", _str__11, 3);
  e4vm_utils_add_core_word(v, (void*)_str__11, e4vm_boolean_not_eql, 0);
  __MOVE((CHAR*)"=", _str__10, 2);
  e4vm_utils_add_core_word(v, (void*)_str__10, e4vm_boolean_eql, 0);
  __MOVE((CHAR*)"<", _str__9, 2);
  e4vm_utils_add_core_word(v, (void*)_str__9, e4vm_boolean_less, 0);
  __MOVE((CHAR*)">", _str__8, 2);
  e4vm_utils_add_core_word(v, (void*)_str__8, e4vm_boolean_greater, 0);
  __MOVE((CHAR*)"<=", _str__7, 3);
  e4vm_utils_add_core_word(v, (void*)_str__7, e4vm_boolean_less_eql, 0);
  __MOVE((CHAR*)">=", _str__6, 3);
  e4vm_utils_add_core_word(v, (void*)_str__6, e4vm_boolean_greater_eql, 0);
}

/*----------------------------------------------------------------------------*/

export void *e4vm_boolean__init (void)
{
  __DEFMOD;
  __IMPORT(Console__init);
  __IMPORT(Platform__init);
  __IMPORT(e4vm_type__init);
  __IMPORT(e4vm_utils__init);
  __REGMOD("e4vm_boolean", 0);
/* BEGIN */
  __ENDMOD;
}
