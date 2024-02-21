/* Ofront+ 1.0 -sx3 -21 */
#include "SYSTEM.oh"
#include "Console.oh"
#include "GrFonts.oh"
#include "Platform.oh"
#include "Basic.oh"
#include "e4vm_type.oh"
#include "e4vm_core.oh"




export void e4vm_utils_error (CHAR *err, SHORTINT err__len);
export SHORTINT e4vm_utils_false_const (e4vm_type_x4thPtr *v);
export void e4vm_utils_init (e4vm_type_x4thPtr *v);
export void e4vm_utils_stack_ds_push (e4vm_type_x4thPtr *v, SHORTINT x);
export void e4vm_utils_stack_rs_push (e4vm_type_x4thPtr *v, SHORTINT x);
export SHORTINT e4vm_utils_true_const (e4vm_type_x4thPtr *v);
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
  Console_WriteStr((CHAR*)" hereP:", 8);
  Console_WriteInt((*v)->hereP);
  Console_WriteStrLn((CHAR*)" ", 2);
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
SHORTINT e4vm_utils_true_const (e4vm_type_x4thPtr *v)
{
  return -1;
}

/*----------------------------------------------------------------------------*/
SHORTINT e4vm_utils_false_const (e4vm_type_x4thPtr *v)
{
  return 0;
}

/*----------------------------------------------------------------------------*/
void e4vm_utils_error (CHAR *err, SHORTINT err__len)
{
  Console_WriteStr((CHAR*)"Error: ", 8);
  Console_WriteStr((void*)err, err__len);
  Console_WriteStrLn((CHAR*)"", 1);
}

/*----------------------------------------------------------------------------*/
void e4vm_utils_stack_ds_push (e4vm_type_x4thPtr *v, SHORTINT x)
{
  (*v)->ds[(*v)->ds_p] = x;
  (*v)->ds_p = (*v)->ds_p + 1;
}

/*----------------------------------------------------------------------------*/
void e4vm_utils_stack_rs_push (e4vm_type_x4thPtr *v, SHORTINT x)
{
  (*v)->rs[(*v)->rs_p] = x;
  (*v)->rs_p = (*v)->rs_p + 1;
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
