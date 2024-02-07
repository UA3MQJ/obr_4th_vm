/* Ofront+ 1.0 -mx3 -21 */
#include "SYSTEM.oh"
#include "Console.oh"
#include "GrFonts.oh"
#include "Platform.oh"
#include "Basic.oh"
#include "e4vm_type.oh"
#include "e4vm_core.oh"
#include "e4vm_utils.oh"
#include "e4vm_stack.oh"
#include "e4vm_math.oh"
#include "e4vm_boolean.oh"


static e4vm_type_x4th e4vm_vm_static;
static e4vm_type_x4thPtr e4vm_vm;


static void e4vm_do_hello (e4vm_type_x4thPtr *v);
static void e4vm_do_lit (e4vm_type_x4thPtr *v);
static void e4vm_stack_ds_push (e4vm_type_x4thPtr *v, SHORTINT x);
static void e4vm_stack_rs_push (e4vm_type_x4thPtr *v, SHORTINT x);
static void e4vm_test_xor (e4vm_type_x4thPtr *v);


/*============================================================================*/

static void e4vm_stack_ds_push (e4vm_type_x4thPtr *v, SHORTINT x)
{
  (*v)->ds[(*v)->ds_p] = x;
  (*v)->ds_p = (*v)->ds_p + 1;
}

static void e4vm_stack_rs_push (e4vm_type_x4thPtr *v, SHORTINT x)
{
  (*v)->rs[(*v)->rs_p] = x;
  (*v)->rs_p = (*v)->rs_p + 1;
}

static void e4vm_do_lit (e4vm_type_x4thPtr *v)
{
  (*v)->ip = (*v)->ip + 1;
  e4vm_stack_ds_push(v, (*v)->mem[(*v)->ip]);
}

static void e4vm_do_hello (e4vm_type_x4thPtr *v)
{
  Console_WriteStrLn((CHAR*)"hello!", 7);
}

static void e4vm_test_xor (e4vm_type_x4thPtr *v)
{
  Console_WriteStr((CHAR*)"xor ", 5);
  e4vm_utils_init(v);
  (*v)->core[0] = e4vm_core_do_nop;
  (*v)->core[1] = e4vm_core_do_next;
  (*v)->core[2] = e4vm_core_do_list;
  (*v)->core[3] = e4vm_core_do_exit;
  (*v)->core[4] = e4vm_boolean_xor;
  (*v)->mem[0] = 0;
  (*v)->mem[1] = 1;
  (*v)->mem[2] = 2;
  (*v)->mem[3] = 3;
  (*v)->mem[4] = 4;
  (*v)->wp = 4;
  (*v)->mem[5] = 2;
  (*v)->mem[6] = 4;
  (*v)->mem[7] = 3;
  e4vm_stack_ds_push(v, 6);
  e4vm_stack_ds_push(v, 5);
  e4vm_core_do_list(v);
  e4vm_core_do_next(v);
  e4vm_utils_vm_stat(v);
  if ((*v)->ds[0] == 3) {
    Console_WriteStrLn((CHAR*)" - ok", 6);
  } else {
    Console_WriteStrLn((CHAR*)" - error", 9);
  }
}


int main (int argc, char **argv)
{
  __INIT(argc, argv);
  __IMPORT(Console__init);
  __IMPORT(Platform__init);
  __IMPORT(e4vm_boolean__init);
  __IMPORT(e4vm_core__init);
  __IMPORT(e4vm_math__init);
  __IMPORT(e4vm_stack__init);
  __IMPORT(e4vm_utils__init);
  __REGMAIN("e4vm", 0);
/* BEGIN */
  Basic_Init();
  Console_Clear(7);
  Console_SetColors(56);
  e4vm_vm = (e4vm_type_x4thPtr)((SYSTEM_ADRINT)&e4vm_vm_static);
  e4vm_test_xor(&e4vm_vm);
  Basic_PAUSE(0);
  Basic_Quit();
  __FINI;
}
