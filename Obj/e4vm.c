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
static void e4vm_test1 (e4vm_type_x4thPtr *v);


/*============================================================================*/

static void e4vm_do_hello (e4vm_type_x4thPtr *v)
{
  (*v)->mem[30] = 1;
}

static void e4vm_test1 (e4vm_type_x4thPtr *v)
{
  CHAR _str__10[8];
  CHAR _str__9[8];
  CHAR _str__8[8];
  CHAR _str__7[8];
  CHAR _str__6[8];
  CHAR _str__5[8];
  CHAR _str__4[8];
  CHAR _str__3[8];
  Console_WriteStr((CHAR*)"e4vm_core test1 ", 17);
  e4vm_utils_init(v);
  e4vm_core_add_core_words(v);
  __MOVE((CHAR*)"hello", _str__10, 6);
  e4vm_utils_add_core_word(v, (void*)_str__10, e4vm_do_hello, 0);
  __MOVE((CHAR*)"dolist", _str__9, 7);
  e4vm_utils_add_op_from_string(v, (void*)_str__9);
  __MOVE((CHAR*)"hello", _str__8, 6);
  e4vm_utils_add_op_from_string(v, (void*)_str__8);
  __MOVE((CHAR*)"exit", _str__7, 5);
  e4vm_utils_add_op_from_string(v, (void*)_str__7);
  __MOVE((CHAR*)"dolist", _str__6, 7);
  e4vm_utils_add_op_from_string(v, (void*)_str__6);
  __MOVE((CHAR*)"nop", _str__5, 4);
  e4vm_utils_add_op_from_string(v, (void*)_str__5);
  e4vm_utils_add_op(v, 4);
  __MOVE((CHAR*)"nop", _str__4, 4);
  e4vm_utils_add_op_from_string(v, (void*)_str__4);
  __MOVE((CHAR*)"exit", _str__3, 5);
  e4vm_utils_add_op_from_string(v, (void*)_str__3);
  (*v)->wp = 8;
  e4vm_core_do_list(v);
  e4vm_core_do_next(v);
  if ((*v)->mem[30] == 1) {
    Console_WriteStr((CHAR*)" - ok", 6);
  } else {
    Console_WriteStr((CHAR*)" - error", 9);
  }
  Console_WriteStrLn((CHAR*)" ", 2);
}


int main (int argc, char **argv)
{
  __INIT(argc, argv);
  __IMPORT(Console__init);
  __IMPORT(Platform__init);
  __IMPORT(e4vm_core__init);
  __IMPORT(e4vm_type__init);
  __IMPORT(e4vm_utils__init);
  __REGMAIN("e4vm", 0);
/* BEGIN */
  Basic_Init();
  Console_Clear(7);
  Console_SetColors(56);
  e4vm_vm = (e4vm_type_x4thPtr)((SYSTEM_ADRINT)&e4vm_vm_static);
  e4vm_test1(&e4vm_vm);
  Basic_PAUSE(0);
  Basic_Quit();
  __FINI;
}
