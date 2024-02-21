/* Ofront+ 1.0 -sx3 -21 */
#include "SYSTEM.oh"
#include "Console.oh"
#include "GrFonts.oh"
#include "Platform.oh"
#include "Basic.oh"
#include "e4vm_type.oh"




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
  SHORTINT next_wp, next_ip, word_index;
  while (!((*v)->ip == 0)) {
    next_wp = (*v)->mem[(*v)->ip];
    next_ip = (*v)->ip + 1;
    (*v)->ip = next_ip;
    (*v)->wp = next_wp;
    word_index = (*v)->mem[next_ip];
    (*(*v)->core[word_index])(v);
  }
}

/*----------------------------------------------------------------------------*/
void e4vm_core_do_exit (e4vm_type_x4thPtr *v)
{
  (*v)->rs_p = (*v)->rs_p - 1;
  (*v)->ip = (*v)->rs[(*v)->rs_p];
}

/*----------------------------------------------------------------------------*/

export void *e4vm_core__init (void)
{
  __DEFMOD;
  __IMPORT(Console__init);
  __IMPORT(Platform__init);
  __REGMOD("e4vm_core", 0);
/* BEGIN */
  __ENDMOD;
}
