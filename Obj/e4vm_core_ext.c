/* Ofront+ 1.0 -sx3 -21 */
#include "SYSTEM.oh"
#include "Console.oh"
#include "GrFonts.oh"
#include "Platform.oh"
#include "Basic.oh"
#include "e4vm_type.oh"
#include "e4vm_utils.oh"




export void e4vm_core_ext_do_lit (e4vm_type_x4thPtr *v);
export void e4vm_core_ext_get_here_addr (e4vm_type_x4thPtr *v);
export void e4vm_core_ext_quit (e4vm_type_x4thPtr *v);


/*============================================================================*/

void e4vm_core_ext_quit (e4vm_type_x4thPtr *v)
{
  Basic_Quit();
}

/*----------------------------------------------------------------------------*/
void e4vm_core_ext_do_lit (e4vm_type_x4thPtr *v)
{
  (*v)->ip = (*v)->ip + 1;
  e4vm_utils_stack_ds_push(v, (*v)->mem[(*v)->ip]);
}

/*----------------------------------------------------------------------------*/
void e4vm_core_ext_get_here_addr (e4vm_type_x4thPtr *v)
{
  e4vm_utils_stack_ds_push(v, (*v)->hereP);
}

/*----------------------------------------------------------------------------*/

export void *e4vm_core_ext__init (void)
{
  __DEFMOD;
  __IMPORT(Console__init);
  __IMPORT(Platform__init);
  __IMPORT(e4vm_utils__init);
  __REGMOD("e4vm_core_ext", 0);
/* BEGIN */
  __ENDMOD;
}
