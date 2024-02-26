/* Ofront+ 1.0 -sx3 -21 */
#include "SYSTEM.oh"
#include "Console.oh"
#include "GrFonts.oh"
#include "Platform.oh"
#include "Basic.oh"
#include "e4vm_type.oh"
#include "e4vm_utils.oh"




export void e4vm_core_ext_branch (e4vm_type_x4thPtr *v);
export void e4vm_core_ext_comma (e4vm_type_x4thPtr *v);
export void e4vm_core_ext_do_lit (e4vm_type_x4thPtr *v);
export void e4vm_core_ext_get_here_addr (e4vm_type_x4thPtr *v);
export void e4vm_core_ext_lbrac (e4vm_type_x4thPtr *v);
export void e4vm_core_ext_quit (e4vm_type_x4thPtr *v);
export void e4vm_core_ext_rbrac (e4vm_type_x4thPtr *v);
export void e4vm_core_ext_zbranch (e4vm_type_x4thPtr *v);


/*============================================================================*/

void e4vm_core_ext_quit (e4vm_type_x4thPtr *v)
{
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
void e4vm_core_ext_comma (e4vm_type_x4thPtr *v)
{
  (*v)->ds_p = (*v)->ds_p - 1;
  e4vm_utils_add_op(v, (*v)->ds[(*v)->ds_p]);
}

/*----------------------------------------------------------------------------*/
void e4vm_core_ext_branch (e4vm_type_x4thPtr *v)
{
  (*v)->ip = (*v)->mem[(*v)->ip + 1] - 1;
}

/*----------------------------------------------------------------------------*/
void e4vm_core_ext_zbranch (e4vm_type_x4thPtr *v)
{
  (*v)->ds_p = (*v)->ds_p - 1;
  if ((*v)->ds[(*v)->ds_p] == 0) {
    (*v)->ip = (*v)->mem[(*v)->ip + 1] - 1;
  }
}

/*----------------------------------------------------------------------------*/
void e4vm_core_ext_lbrac (e4vm_type_x4thPtr *v)
{
  (*v)->is_eval_mode = 1;
}

/*----------------------------------------------------------------------------*/
void e4vm_core_ext_rbrac (e4vm_type_x4thPtr *v)
{
  (*v)->is_eval_mode = 0;
}

/*----------------------------------------------------------------------------*/

export void *e4vm_core_ext__init (void)
{
  __DEFMOD;
  __IMPORT(Console__init);
  __IMPORT(Platform__init);
  __IMPORT(e4vm_type__init);
  __IMPORT(e4vm_utils__init);
  __REGMOD("e4vm_core_ext", 0);
/* BEGIN */
  __ENDMOD;
}
