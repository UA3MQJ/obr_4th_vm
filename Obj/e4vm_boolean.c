/* Ofront+ 1.0 -sx3 -21 */
#include "SYSTEM.oh"
#include "Console.oh"
#include "GrFonts.oh"
#include "Platform.oh"
#include "Basic.oh"
#include "e4vm_type.oh"
#include "e4vm_utils.oh"




export void e4vm_boolean_false (e4vm_type_x4thPtr *v);
export void e4vm_boolean_not (e4vm_type_x4thPtr *v);
export void e4vm_boolean_true (e4vm_type_x4thPtr *v);


/*============================================================================*/

void e4vm_boolean_true (e4vm_type_x4thPtr *v)
{
  Console_WriteStrLn((CHAR*)"true", 5);
  (*v)->ds[(*v)->ds_p] = e4vm_utils_true_const(v);
  (*v)->ds_p = (*v)->ds_p + 1;
}

/*----------------------------------------------------------------------------*/
void e4vm_boolean_false (e4vm_type_x4thPtr *v)
{
  Console_WriteStrLn((CHAR*)"false", 6);
  (*v)->ds[(*v)->ds_p] = e4vm_utils_false_const(v);
  (*v)->ds_p = (*v)->ds_p + 1;
}

/*----------------------------------------------------------------------------*/
void e4vm_boolean_not (e4vm_type_x4thPtr *v)
{
  Console_WriteStrLn((CHAR*)"not", 4);
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