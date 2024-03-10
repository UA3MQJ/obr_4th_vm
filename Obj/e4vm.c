/* Ofront+ 1.0 -mx3 -21 */
#include "SYSTEM.oh"
#include "Console.oh"
#include "GrFonts.oh"
#include "Platform.oh"
#include "Basic.oh"
#include "e4vm_type.oh"
#include "e4vm_core.oh"
#include "e4vm_core_ext.oh"
#include "e4vm_stack.oh"
#include "e4vm_math.oh"
#include "e4vm_boolean.oh"
#include "e4vm_utils.oh"
#include "e4vm_mem.oh"
#include "e4vm_comment.oh"
#include "e4vm_rw.oh"


static e4vm_type_x4th e4vm_vm_static;
static e4vm_type_x4thPtr e4vm_vm;


static void e4vm_do_hello (e4vm_type_x4thPtr *v);
static void e4vm_test_console (e4vm_type_x4thPtr *v);
static void e4vm_test_read_mem (e4vm_type_x4thPtr *v);
static void e4vm_test_write_mem (e4vm_type_x4thPtr *v);


/*============================================================================*/

static void e4vm_do_hello (e4vm_type_x4thPtr *v)
{
  (*v)->mem[30] = 1;
}

static void e4vm_test_read_mem (e4vm_type_x4thPtr *v)
{
  CHAR _str__6[10];
  CHAR _str__5[10];
  CHAR _str__4[10];
  Console_WriteStr((CHAR*)"Test mem op @ ", 15);
  e4vm_utils_init(v);
  e4vm_core_add_core_words(v);
  e4vm_core_ext_add_core_words(v);
  e4vm_mem_add_core_words(v);
  e4vm_utils_here_to_wp(v);
  __MOVE((CHAR*)"dolist", _str__6, 7);
  e4vm_utils_add_op_from_string(v, (void*)_str__6);
  __MOVE((CHAR*)"@", _str__5, 2);
  e4vm_utils_add_op_from_string(v, (void*)_str__5);
  __MOVE((CHAR*)"exit", _str__4, 5);
  e4vm_utils_add_op_from_string(v, (void*)_str__4);
  e4vm_utils_stack_ds_push(v, 30);
  (*v)->mem[30] = 5;
  e4vm_core_do_list(v);
  e4vm_core_do_next(v);
  if ((*v)->ds[(*v)->ds_p - 1] == 5) {
    Console_WriteStrLn((CHAR*)" - ok", 6);
  } else {
    Console_WriteStrLn((CHAR*)" - error", 9);
  }
}

static void e4vm_test_write_mem (e4vm_type_x4thPtr *v)
{
  CHAR _str__11[10];
  CHAR _str__10[10];
  CHAR _str__9[10];
  CHAR _str__8[10];
  Console_WriteStr((CHAR*)"Test mem op ! ", 15);
  e4vm_utils_init(v);
  e4vm_core_add_core_words(v);
  e4vm_core_ext_add_core_words(v);
  e4vm_mem_add_core_words(v);
  __MOVE((CHAR*)"hello", _str__11, 6);
  e4vm_utils_add_core_word(v, (void*)_str__11, e4vm_do_hello, 0);
  e4vm_utils_here_to_wp(v);
  __MOVE((CHAR*)"dolist", _str__10, 7);
  e4vm_utils_add_op_from_string(v, (void*)_str__10);
  __MOVE((CHAR*)"!", _str__9, 2);
  e4vm_utils_add_op_from_string(v, (void*)_str__9);
  __MOVE((CHAR*)"exit", _str__8, 5);
  e4vm_utils_add_op_from_string(v, (void*)_str__8);
  e4vm_utils_stack_ds_push(v, 2);
  e4vm_utils_stack_ds_push(v, 30);
  (*v)->mem[30] = 0;
  e4vm_core_do_list(v);
  e4vm_core_do_next(v);
  if ((*v)->mem[30] == 2) {
    Console_WriteStrLn((CHAR*)" - ok", 6);
  } else {
    Console_WriteStrLn((CHAR*)" - error", 9);
  }
}

static void e4vm_test_console (e4vm_type_x4thPtr *v)
{
  Console_WriteStrLn((CHAR*)"Oberon based 4th vm", 20);
  Console_WriteStrLn((CHAR*)"github.com/UA3MQJ/obr_4th_vm", 29);
  Console_WriteLn();
  e4vm_utils_init(v);
  e4vm_core_add_core_words(&e4vm_vm);
  e4vm_core_ext_add_core_words(&e4vm_vm);
  e4vm_stack_add_core_words(&e4vm_vm);
  e4vm_math_add_core_words(&e4vm_vm);
  e4vm_boolean_add_core_words(&e4vm_vm);
  e4vm_comment_add_core_words(&e4vm_vm);
  e4vm_mem_add_core_words(&e4vm_vm);
  e4vm_rw_add_core_words(&e4vm_vm);
  while (1) {
    Console_WriteStr((CHAR*)">", 2);
    e4vm_utils_keyboard_read_string(&e4vm_vm);
    e4vm_core_ext_interpreter(v);
  }
}


int main (int argc, char **argv)
{
  __INIT(argc, argv);
  __IMPORT(Console__init);
  __IMPORT(Platform__init);
  __IMPORT(e4vm_boolean__init);
  __IMPORT(e4vm_comment__init);
  __IMPORT(e4vm_core__init);
  __IMPORT(e4vm_core_ext__init);
  __IMPORT(e4vm_math__init);
  __IMPORT(e4vm_mem__init);
  __IMPORT(e4vm_rw__init);
  __IMPORT(e4vm_stack__init);
  __IMPORT(e4vm_type__init);
  __IMPORT(e4vm_utils__init);
  __REGMAIN("e4vm", 0);
/* BEGIN */
  Basic_Init();
  Console_Clear(7);
  Console_SetColors(56);
  e4vm_vm = (e4vm_type_x4thPtr)((SYSTEM_ADRINT)&e4vm_vm_static);
  e4vm_test_console(&e4vm_vm);
  Basic_PAUSE(0);
  Basic_Quit();
  __FINI;
}
