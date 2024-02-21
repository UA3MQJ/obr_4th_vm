/* Ofront+ 1.0 -sx3 -21 */
#include "SYSTEM.oh"
#include "Console.oh"
#include "GrFonts.oh"
#include "Platform.oh"
#include "Basic.oh"
#include "e4vm_type.oh"
#include "e4vm_utils.oh"




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

export void *e4vm_boolean__init (void)
{
  __DEFMOD;
  __IMPORT(Console__init);
  __IMPORT(Platform__init);
  __IMPORT(e4vm_utils__init);
  __REGMOD("e4vm_boolean", 0);
/* BEGIN */
  __ENDMOD;
}
