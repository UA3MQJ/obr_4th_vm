/* Ofront+ 1.0 -mx3 -21 */
#include "SYSTEM.oh"
#include "Console.oh"
#include "GrFonts.oh"
#include "Platform.oh"
#include "Basic.oh"
#include "e4vm_type.oh"
#include "e4vm_core.oh"
#include "e4vm_utils.oh"


static e4vm_type_x4th e4vm_vm_static;
static e4vm_type_x4thPtr e4vm_vm;


static void e4vm_do_hello (e4vm_type_x4thPtr *v);
static void e4vm_do_lit (e4vm_type_x4thPtr *v);
static void e4vm_stack_ds_push (SHORTINT x);
static void e4vm_stack_rs_push (SHORTINT x);
static void e4vm_test1 (e4vm_type_x4thPtr *v);
static void e4vm_test2 (e4vm_type_x4thPtr *v);
static void e4vm_test_dolit (e4vm_type_x4thPtr *v);


/*============================================================================*/

static void e4vm_stack_ds_push (SHORTINT x)
{
  e4vm_vm->ds[e4vm_vm->ds_p] = x;
  e4vm_vm->ds_p = e4vm_vm->ds_p + 1;
}

static void e4vm_stack_rs_push (SHORTINT x)
{
  e4vm_vm->rs[e4vm_vm->rs_p] = x;
  e4vm_vm->rs_p = e4vm_vm->rs_p + 1;
}

static void e4vm_do_lit (e4vm_type_x4thPtr *v)
{
  (*v)->ip = (*v)->ip + 1;
  e4vm_stack_ds_push((*v)->mem[(*v)->ip]);
}

static void e4vm_do_hello (e4vm_type_x4thPtr *v)
{
  Console_WriteStrLn((CHAR*)"hello!", 7);
}

static void e4vm_test1 (e4vm_type_x4thPtr *v)
{
  e4vm_utils_init(v);
  (*v)->core[0] = e4vm_core_do_nop;
  (*v)->core[1] = e4vm_core_do_next;
  (*v)->core[2] = e4vm_core_do_list;
  (*v)->core[3] = e4vm_core_do_exit;
  (*v)->core[4] = e4vm_do_hello;
  (*v)->mem[0] = 0;
  (*v)->mem[1] = 1;
  (*v)->mem[2] = 2;
  (*v)->mem[3] = 3;
  (*v)->mem[4] = 4;
  (*v)->wp = 4;
  (*v)->mem[5] = 2;
  (*v)->mem[6] = 0;
  (*v)->mem[7] = 4;
  (*v)->mem[8] = 0;
  (*v)->mem[9] = 3;
  e4vm_core_do_list(v);
  e4vm_core_do_next(v);
}

static void e4vm_test2 (e4vm_type_x4thPtr *v)
{
  e4vm_utils_init(v);
  (*v)->core[0] = e4vm_core_do_nop;
  (*v)->core[1] = e4vm_core_do_next;
  (*v)->core[2] = e4vm_core_do_list;
  (*v)->core[3] = e4vm_core_do_exit;
  (*v)->core[4] = e4vm_do_hello;
  (*v)->mem[0] = 0;
  (*v)->mem[1] = 1;
  (*v)->mem[2] = 2;
  (*v)->mem[3] = 3;
  (*v)->mem[4] = 4;
  (*v)->wp = 7;
  (*v)->mem[5] = 2;
  (*v)->mem[6] = 4;
  (*v)->mem[7] = 3;
  (*v)->mem[8] = 2;
  (*v)->mem[9] = 0;
  (*v)->mem[10] = 0;
  (*v)->mem[11] = 4;
  (*v)->mem[12] = 0;
  (*v)->mem[13] = 0;
  (*v)->mem[14] = 3;
  e4vm_core_do_list(v);
  e4vm_core_do_next(v);
}

static void e4vm_test_dolit (e4vm_type_x4thPtr *v)
{
  Console_WriteStr((CHAR*)"dolit ", 7);
  e4vm_utils_init(v);
  (*v)->core[0] = e4vm_core_do_nop;
  (*v)->core[1] = e4vm_core_do_next;
  (*v)->core[2] = e4vm_core_do_list;
  (*v)->core[3] = e4vm_core_do_exit;
  (*v)->core[4] = e4vm_do_hello;
  (*v)->core[5] = e4vm_do_lit;
  (*v)->mem[0] = 0;
  (*v)->mem[1] = 1;
  (*v)->mem[2] = 2;
  (*v)->mem[3] = 3;
  (*v)->mem[4] = 4;
  (*v)->mem[5] = 5;
  (*v)->wp = 5;
  (*v)->mem[6] = 2;
  (*v)->mem[7] = 5;
  (*v)->mem[8] = 555;
  (*v)->mem[9] = 3;
  e4vm_core_do_list(v);
  e4vm_core_do_next(v);
  if ((*v)->ds[0] == 555) {
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
  __IMPORT(e4vm_core__init);
  __IMPORT(e4vm_utils__init);
  __REGMAIN("e4vm", 0);
/* BEGIN */
  Basic_Init();
  Console_Clear(7);
  Console_SetColors(56);
  e4vm_vm = (e4vm_type_x4thPtr)((SYSTEM_ADRINT)&e4vm_vm_static);
  e4vm_test_dolit(&e4vm_vm);
  Basic_PAUSE(0);
  Basic_Quit();
  __FINI;
}
