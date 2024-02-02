/* Ofront+ 1.0 -sx3 -21 */
#include "SYSTEM.oh"
#include "Console.oh"
#include "GrFonts.oh"
#include "Platform.oh"
#include "Basic.oh"
#include "e4vm_type.oh"




export void e4vm_stack_drop (e4vm_type_x4thPtr *v);
export void e4vm_stack_dup (e4vm_type_x4thPtr *v);
export void e4vm_stack_nrot (e4vm_type_x4thPtr *v);
export void e4vm_stack_over (e4vm_type_x4thPtr *v);
export void e4vm_stack_rot (e4vm_type_x4thPtr *v);
export void e4vm_stack_swap (e4vm_type_x4thPtr *v);


/*============================================================================*/

void e4vm_stack_drop (e4vm_type_x4thPtr *v)
{
  Console_WriteStrLn((CHAR*)"drop", 5);
  (*v)->ds_p = (*v)->ds_p - 1;
}

/*----------------------------------------------------------------------------*/
void e4vm_stack_swap (e4vm_type_x4thPtr *v)
{
  SHORTINT T;
  Console_WriteStrLn((CHAR*)"swap", 5);
  T = (*v)->ds[(*v)->ds_p - 1];
  (*v)->ds[(*v)->ds_p - 1] = (*v)->ds[(*v)->ds_p - 2];
  (*v)->ds[(*v)->ds_p - 2] = T;
}

/*----------------------------------------------------------------------------*/
void e4vm_stack_dup (e4vm_type_x4thPtr *v)
{
  Console_WriteStrLn((CHAR*)"dup", 4);
  (*v)->ds_p = (*v)->ds_p + 1;
  (*v)->ds[(*v)->ds_p - 1] = (*v)->ds[(*v)->ds_p - 2];
}

/*----------------------------------------------------------------------------*/
void e4vm_stack_over (e4vm_type_x4thPtr *v)
{
  Console_WriteStrLn((CHAR*)"over", 5);
  (*v)->ds_p = (*v)->ds_p + 1;
  (*v)->ds[(*v)->ds_p - 1] = (*v)->ds[(*v)->ds_p - 3];
}

/*----------------------------------------------------------------------------*/
void e4vm_stack_rot (e4vm_type_x4thPtr *v)
{
  SHORTINT T;
  Console_WriteStrLn((CHAR*)"rot", 4);
  T = (*v)->ds[(*v)->ds_p - 3];
  (*v)->ds[(*v)->ds_p - 3] = (*v)->ds[(*v)->ds_p - 2];
  (*v)->ds[(*v)->ds_p - 2] = (*v)->ds[(*v)->ds_p - 1];
  (*v)->ds[(*v)->ds_p - 1] = T;
}

/*----------------------------------------------------------------------------*/
void e4vm_stack_nrot (e4vm_type_x4thPtr *v)
{
  SHORTINT T;
  Console_WriteStrLn((CHAR*)"nrot", 5);
  T = (*v)->ds[(*v)->ds_p - 1];
  (*v)->ds[(*v)->ds_p - 1] = (*v)->ds[(*v)->ds_p - 2];
  (*v)->ds[(*v)->ds_p - 2] = (*v)->ds[(*v)->ds_p - 3];
  (*v)->ds[(*v)->ds_p - 3] = T;
}

/*----------------------------------------------------------------------------*/

export void *e4vm_stack__init (void)
{
  __DEFMOD;
  __IMPORT(Console__init);
  __IMPORT(Platform__init);
  __REGMOD("e4vm_stack", 0);
/* BEGIN */
  __ENDMOD;
}
