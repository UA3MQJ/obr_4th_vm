/* Ofront+ 1.0 -sx3 -21 */
#include "SYSTEM.oh"
#include "Console.oh"
#include "GrFonts.oh"
#include "Platform.oh"
#include "Basic.oh"
#include "e4vm_type.oh"
#include "e4vm_core.oh"




export void e4vm_utils_init (e4vm_type_x4thPtr *v);
export void e4vm_utils_vm_stat (e4vm_type_x4thPtr *v);


/*============================================================================*/

void e4vm_utils_init (e4vm_type_x4thPtr *v)
{
  SHORTINT i;
  (*v)->ip = 0;
  (*v)->wp = 0;
  (*v)->hereP = 0;
  (*v)->cell_bit_size = 16;
  (*v)->is_eval_mode = 1;
  i = 0;
  while (i <= 31) {
    (*v)->mem[i] = 0;
    i += 1;
  }
  i = 0;
  while (i <= 31) {
    (*v)->core[i] = e4vm_core_do_nop;
    i += 1;
  }
  i = 0;
  while (i <= 31) {
    (*v)->rs[i] = 0;
    (*v)->ds[i] = 0;
    i += 1;
  }
}

/*----------------------------------------------------------------------------*/
void e4vm_utils_vm_stat (e4vm_type_x4thPtr *v)
{
  SHORTINT i;
  Console_WriteStr((CHAR*)"ip:", 4);
  Console_WriteInt((*v)->ip);
  Console_WriteStr((CHAR*)" wp:", 5);
  Console_WriteInt((*v)->wp);
  Console_WriteStrLn((CHAR*)" ", 2);
  Console_WriteStr((CHAR*)"rs_p:", 6);
  Console_WriteInt((*v)->rs_p);
  Console_WriteStrLn((CHAR*)" ", 2);
  Console_WriteStrLn((CHAR*)"rs: [", 6);
  i = 0;
  while (i <= 31) {
    Console_WriteInt((*v)->rs[i]);
    Console_WriteStr((CHAR*)" ", 2);
    i += 1;
  }
  Console_WriteStrLn((CHAR*)"]", 2);
  Console_WriteStr((CHAR*)"ds_p:", 6);
  Console_WriteInt((*v)->ds_p);
  Console_WriteStrLn((CHAR*)" ", 2);
  Console_WriteStrLn((CHAR*)"ds: [", 6);
  i = 0;
  while (i <= 31) {
    Console_WriteInt((*v)->ds[i]);
    Console_WriteStr((CHAR*)" ", 2);
    i += 1;
  }
  Console_WriteStrLn((CHAR*)"]", 2);
}

/*----------------------------------------------------------------------------*/

export void *e4vm_utils__init (void)
{
  __DEFMOD;
  __IMPORT(Console__init);
  __IMPORT(Platform__init);
  __IMPORT(e4vm_core__init);
  __REGMOD("e4vm_utils", 0);
/* BEGIN */
  __ENDMOD;
}
