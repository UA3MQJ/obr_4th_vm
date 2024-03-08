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


static e4vm_type_x4th e4vm_vm_static;
static e4vm_type_x4thPtr e4vm_vm;


static void e4vm_do_hello (e4vm_type_x4thPtr *v);
static void e4vm_test_eval (e4vm_type_x4thPtr *v);
static void e4vm_test_interpreter (e4vm_type_x4thPtr *v);
static void e4vm_test_math_eval (e4vm_type_x4thPtr *v);
static void e4vm_test_math_evals (e4vm_type_x4thPtr *v, SHORTINT true_res);
static void e4vm_test_read_char (e4vm_type_x4thPtr *v);
static void e4vm_test_read_word (e4vm_type_x4thPtr *v);


/*============================================================================*/

static void e4vm_do_hello (e4vm_type_x4thPtr *v)
{
  (*v)->mem[30] = 1;
}

static void e4vm_test_read_char (e4vm_type_x4thPtr *v)
{
  SHORTINT t;
  CHAR ch;
  CHAR c;
  Console_WriteStr((CHAR*)"read_char test ", 16);
  e4vm_utils_init(v);
  (*v)->buffer[0] = 'a';
  (*v)->buffer[1] = 'b';
  if (((e4vm_utils_read_char(v) == 'a' && e4vm_utils_read_char(v) == 'b') && e4vm_utils_read_char(v) == 0x00) && e4vm_utils_read_char(v) == 0x00) {
    Console_WriteStrLn((CHAR*)" - ok", 6);
  } else {
    Console_WriteStrLn((CHAR*)" - error", 9);
  }
}

static void e4vm_test_read_word (e4vm_type_x4thPtr *v)
{
  BOOLEAN t;
  e4vm_type_x4thPtr _ptr__12 = NIL;
  e4vm_type_x4thPtr _ptr__11 = NIL;
  e4vm_type_x4thPtr _ptr__10 = NIL;
  Console_WriteStr((CHAR*)"read_word test ", 16);
  e4vm_utils_init(v);
  __MOVE((CHAR*)"   some  len     string ", (*v)->buffer, 25);
  (*v)->buffer_idx = 0;
  t = e4vm_utils_read_word(v);
  if (t && __STRCMPCC((*v)->readed_word, (CHAR*)"some", 5, (CHAR*)"e4vm", -21536) == 0) {
    Console_WriteStrLn((CHAR*)"2 - ok", 7);
  } else {
    Console_WriteStrLn((CHAR*)"2 - error", 10);
    Console_WriteStr((CHAR*)"\'", 2);
    _ptr__12 = *v;
    Console_WriteStr((void*)_ptr__12->readed_word, 10);
    Console_WriteStrLn((CHAR*)"\'", 2);
  }
  t = e4vm_utils_read_word(v);
  if (t && __STRCMPCC((*v)->readed_word, (CHAR*)"len", 4, (CHAR*)"e4vm", -21753) == 0) {
    Console_WriteStrLn((CHAR*)"3 - ok", 7);
  } else {
    Console_WriteStrLn((CHAR*)"3 - error", 10);
    Console_WriteStr((CHAR*)"\'", 2);
    _ptr__11 = *v;
    Console_WriteStr((void*)_ptr__11->readed_word, 10);
    Console_WriteStrLn((CHAR*)"\'", 2);
  }
  t = e4vm_utils_read_word(v);
  if (t && __STRCMPCC((*v)->readed_word, (CHAR*)"string", 7, (CHAR*)"e4vm", -21969) == 0) {
    Console_WriteStrLn((CHAR*)"4 - ok", 7);
  } else {
    Console_WriteStrLn((CHAR*)"4 - error", 10);
    Console_WriteStr((CHAR*)"\'", 2);
    _ptr__10 = *v;
    Console_WriteStr((void*)_ptr__10->readed_word, 10);
    Console_WriteStrLn((CHAR*)"\'", 2);
  }
  t = e4vm_utils_read_word(v);
  if (!t) {
    Console_WriteStrLn((CHAR*)"5 - ok", 7);
  } else {
    Console_WriteStrLn((CHAR*)"5 - error", 10);
  }
}

static void e4vm_test_interpreter (e4vm_type_x4thPtr *v)
{
  Console_WriteStr((CHAR*)"interpreter test ", 18);
  e4vm_utils_init(v);
  e4vm_core_add_core_words(v);
  e4vm_core_ext_add_core_words(v);
  __MOVE((CHAR*)"1  2 3 ", (*v)->buffer, 8);
  (*v)->buffer_idx = 0;
  e4vm_core_ext_interpreter(v);
  if (((*v)->ds[(*v)->ds_p - 1] == 3 && (*v)->ds[(*v)->ds_p - 2] == 2) && (*v)->ds[(*v)->ds_p - 3] == 1) {
    Console_WriteStrLn((CHAR*)" - ok", 6);
  } else {
    Console_WriteStrLn((CHAR*)" - error", 9);
  }
}

static void e4vm_test_eval (e4vm_type_x4thPtr *v)
{
  CHAR _str__3[64];
  Console_WriteStr((CHAR*)"eval test ", 11);
  e4vm_utils_init(v);
  e4vm_core_add_core_words(v);
  e4vm_core_ext_add_core_words(v);
  __MOVE((CHAR*)"1  2 3 ", (*v)->buffer, 8);
  (*v)->buffer_idx = 0;
  __MOVE((CHAR*)"1  2 3 ", _str__3, 8);
  e4vm_core_ext_eval(v, (void*)_str__3);
  if (((*v)->ds[(*v)->ds_p - 1] == 3 && (*v)->ds[(*v)->ds_p - 2] == 2) && (*v)->ds[(*v)->ds_p - 3] == 1) {
    Console_WriteStrLn((CHAR*)" - ok", 6);
  } else {
    Console_WriteStrLn((CHAR*)" - error", 9);
  }
}

static void e4vm_test_math_evals (e4vm_type_x4thPtr *v, SHORTINT true_res)
{
  e4vm_type_x4thPtr _ptr__7 = NIL;
  (*v)->buffer_idx = 0;
  _ptr__7 = *v;
  Console_WriteStr((void*)_ptr__7->buffer, 64);
  Console_WriteStr((CHAR*)" -> ", 5);
  e4vm_core_ext_interpreter(v);
  if ((*v)->ds[(*v)->ds_p - 1] == true_res) {
    Console_WriteInt((*v)->ds[(*v)->ds_p - 1]);
    Console_WriteStrLn((CHAR*)" - ok", 6);
  } else {
    Console_WriteInt((*v)->ds[(*v)->ds_p - 1]);
    Console_WriteStrLn((CHAR*)" - error", 9);
  }
}

static void e4vm_test_math_eval (e4vm_type_x4thPtr *v)
{
  Console_WriteStrLn((CHAR*)"eval math test ", 16);
  e4vm_utils_init(v);
  e4vm_core_add_core_words(v);
  e4vm_core_ext_add_core_words(v);
  e4vm_math_add_core_words(v);
  __MOVE((CHAR*)"10 2 -", (*v)->buffer, 7);
  e4vm_test_math_evals(v, 8);
  __MOVE((CHAR*)"4 10 -", (*v)->buffer, 7);
  e4vm_test_math_evals(v, -6);
  __MOVE((CHAR*)"4 10 +", (*v)->buffer, 7);
  e4vm_test_math_evals(v, 14);
  __MOVE((CHAR*)"10 2 *", (*v)->buffer, 7);
  e4vm_test_math_evals(v, 20);
  __MOVE((CHAR*)"10 2 /", (*v)->buffer, 7);
  e4vm_test_math_evals(v, 5);
  __MOVE((CHAR*)"10 2 mod", (*v)->buffer, 9);
  e4vm_test_math_evals(v, 0);
  __MOVE((CHAR*)"10 1+", (*v)->buffer, 6);
  e4vm_test_math_evals(v, 11);
  __MOVE((CHAR*)"10 1-", (*v)->buffer, 6);
  e4vm_test_math_evals(v, 9);
}


int main (int argc, char **argv)
{
  __INIT(argc, argv);
  __IMPORT(Console__init);
  __IMPORT(Platform__init);
  __IMPORT(e4vm_boolean__init);
  __IMPORT(e4vm_core__init);
  __IMPORT(e4vm_core_ext__init);
  __IMPORT(e4vm_math__init);
  __IMPORT(e4vm_stack__init);
  __IMPORT(e4vm_type__init);
  __IMPORT(e4vm_utils__init);
  __REGMAIN("e4vm", 0);
/* BEGIN */
  Basic_Init();
  Console_Clear(7);
  Console_SetColors(56);
  e4vm_vm = (e4vm_type_x4thPtr)((SYSTEM_ADRINT)&e4vm_vm_static);
  e4vm_test_eval(&e4vm_vm);
  e4vm_test_math_eval(&e4vm_vm);
  Basic_PAUSE(0);
  Basic_Quit();
  __FINI;
}
