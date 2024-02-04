/* Ofront+ 1.0 -sx3 -21 */
#include "SYSTEM.oh"
#include "Console.oh"
#include "GrFonts.oh"
#include "Platform.oh"
#include "Basic.oh"
#include "e4vm_type.oh"




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
  Console_WriteStrLn((CHAR*)"-", 2);
  (*v)->ds_p = (*v)->ds_p - 1;
  (*v)->ds[(*v)->ds_p - 1] = (*v)->ds[(*v)->ds_p - 1] - (*v)->ds[(*v)->ds_p];
}

/*----------------------------------------------------------------------------*/
void e4vm_math_plus (e4vm_type_x4thPtr *v)
{
  Console_WriteStrLn((CHAR*)"+", 2);
  (*v)->ds_p = (*v)->ds_p - 1;
  (*v)->ds[(*v)->ds_p - 1] = (*v)->ds[(*v)->ds_p - 1] + (*v)->ds[(*v)->ds_p];
}

/*----------------------------------------------------------------------------*/
void e4vm_math_multiply (e4vm_type_x4thPtr *v)
{
  Console_WriteStrLn((CHAR*)"*", 2);
  (*v)->ds_p = (*v)->ds_p - 1;
  (*v)->ds[(*v)->ds_p - 1] = (*v)->ds[(*v)->ds_p - 1] * (*v)->ds[(*v)->ds_p];
}

/*----------------------------------------------------------------------------*/
void e4vm_math_devide (e4vm_type_x4thPtr *v)
{
  Console_WriteStrLn((CHAR*)"/", 2);
  (*v)->ds_p = (*v)->ds_p - 1;
  (*v)->ds[(*v)->ds_p - 1] = __DIVFS((*v)->ds[(*v)->ds_p - 1], (*v)->ds[(*v)->ds_p]);
}

/*----------------------------------------------------------------------------*/
void e4vm_math_mod (e4vm_type_x4thPtr *v)
{
  Console_WriteStrLn((CHAR*)"mod", 4);
  (*v)->ds_p = (*v)->ds_p - 1;
  (*v)->ds[(*v)->ds_p - 1] = __MODFS((*v)->ds[(*v)->ds_p - 1], (*v)->ds[(*v)->ds_p]);
}

/*----------------------------------------------------------------------------*/
void e4vm_math_inc (e4vm_type_x4thPtr *v)
{
  Console_WriteStrLn((CHAR*)"1+", 3);
  (*v)->ds[(*v)->ds_p - 1] = (*v)->ds[(*v)->ds_p - 1] + 1;
}

/*----------------------------------------------------------------------------*/
void e4vm_math_dec (e4vm_type_x4thPtr *v)
{
  Console_WriteStrLn((CHAR*)"1-", 3);
  (*v)->ds[(*v)->ds_p - 1] = (*v)->ds[(*v)->ds_p - 1] - 1;
}

/*----------------------------------------------------------------------------*/

export void *e4vm_math__init (void)
{
  __DEFMOD;
  __IMPORT(Console__init);
  __IMPORT(Platform__init);
  __REGMOD("e4vm_math", 0);
/* BEGIN */
  __ENDMOD;
}
