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
static void e4vm_test1 (e4vm_type_x4thPtr *v);
static void e4vm_test_and (e4vm_type_x4thPtr *v);
static void e4vm_test_branch (e4vm_type_x4thPtr *v);
static void e4vm_test_comma (e4vm_type_x4thPtr *v);
static void e4vm_test_devide (e4vm_type_x4thPtr *v);
static void e4vm_test_dolit (e4vm_type_x4thPtr *v);
static void e4vm_test_drop (e4vm_type_x4thPtr *v);
static void e4vm_test_dup (e4vm_type_x4thPtr *v);
static void e4vm_test_execute1 (e4vm_type_x4thPtr *v);
static void e4vm_test_here (e4vm_type_x4thPtr *v);
static void e4vm_test_immediate (e4vm_type_x4thPtr *v);
static void e4vm_test_inc (e4vm_type_x4thPtr *v);
static void e4vm_test_invert (e4vm_type_x4thPtr *v);
static void e4vm_test_minus (e4vm_type_x4thPtr *v);
static void e4vm_test_mod (e4vm_type_x4thPtr *v);
static void e4vm_test_not (e4vm_type_x4thPtr *v);
static void e4vm_test_nrot (e4vm_type_x4thPtr *v);
static void e4vm_test_or (e4vm_type_x4thPtr *v);
static void e4vm_test_over (e4vm_type_x4thPtr *v);
static void e4vm_test_read_char (e4vm_type_x4thPtr *v);
static void e4vm_test_read_string (e4vm_type_x4thPtr *v);
static void e4vm_test_rot (e4vm_type_x4thPtr *v);
static void e4vm_test_swap (e4vm_type_x4thPtr *v);
static void e4vm_test_true (e4vm_type_x4thPtr *v);
static void e4vm_test_xor (e4vm_type_x4thPtr *v);
static void e4vm_test_zbranch (e4vm_type_x4thPtr *v);


/*============================================================================*/

static void e4vm_do_hello (e4vm_type_x4thPtr *v)
{
  (*v)->mem[30] = 1;
}

static void e4vm_test1 (e4vm_type_x4thPtr *v)
{
  CHAR _str__10[10];
  CHAR _str__9[10];
  CHAR _str__8[10];
  CHAR _str__7[10];
  CHAR _str__6[10];
  CHAR _str__5[10];
  CHAR _str__4[10];
  CHAR _str__3[10];
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

static void e4vm_test_dolit (e4vm_type_x4thPtr *v)
{
  CHAR _str__37[10];
  CHAR _str__36[10];
  CHAR _str__35[10];
  Console_WriteStr((CHAR*)"Test dolit ", 12);
  e4vm_utils_init(v);
  e4vm_core_add_core_words(v);
  e4vm_core_ext_add_core_words(v);
  e4vm_utils_here_to_wp(v);
  __MOVE((CHAR*)"dolist", _str__37, 7);
  e4vm_utils_add_op_from_string(v, (void*)_str__37);
  __MOVE((CHAR*)"dolit", _str__36, 6);
  e4vm_utils_add_op_from_string(v, (void*)_str__36);
  e4vm_utils_add_op(v, 555);
  __MOVE((CHAR*)"exit", _str__35, 5);
  e4vm_utils_add_op_from_string(v, (void*)_str__35);
  e4vm_core_do_list(v);
  e4vm_core_do_next(v);
  if ((*v)->ds[0] == 555) {
    Console_WriteStrLn((CHAR*)" - ok", 6);
  } else {
    Console_WriteStrLn((CHAR*)" - error", 9);
  }
}

static void e4vm_test_drop (e4vm_type_x4thPtr *v)
{
  CHAR _str__41[10];
  CHAR _str__40[10];
  CHAR _str__39[10];
  Console_WriteStr((CHAR*)"Test drop ", 11);
  e4vm_utils_init(v);
  e4vm_core_add_core_words(v);
  e4vm_stack_add_core_words(v);
  e4vm_utils_here_to_wp(v);
  __MOVE((CHAR*)"dolist", _str__41, 7);
  e4vm_utils_add_op_from_string(v, (void*)_str__41);
  __MOVE((CHAR*)"drop", _str__40, 5);
  e4vm_utils_add_op_from_string(v, (void*)_str__40);
  __MOVE((CHAR*)"exit", _str__39, 5);
  e4vm_utils_add_op_from_string(v, (void*)_str__39);
  e4vm_utils_stack_ds_push(v, 1);
  e4vm_utils_stack_ds_push(v, 2);
  e4vm_core_do_list(v);
  e4vm_core_do_next(v);
  if ((*v)->ds[(*v)->ds_p - 1] == 1) {
    Console_WriteStrLn((CHAR*)" - ok", 6);
  } else {
    Console_WriteStrLn((CHAR*)" - error", 9);
  }
}

static void e4vm_test_swap (e4vm_type_x4thPtr *v)
{
  CHAR _str__106[10];
  CHAR _str__105[10];
  CHAR _str__104[10];
  Console_WriteStr((CHAR*)"Test swap ", 11);
  e4vm_utils_init(v);
  e4vm_core_add_core_words(v);
  e4vm_stack_add_core_words(v);
  e4vm_utils_here_to_wp(v);
  __MOVE((CHAR*)"dolist", _str__106, 7);
  e4vm_utils_add_op_from_string(v, (void*)_str__106);
  __MOVE((CHAR*)"swap", _str__105, 5);
  e4vm_utils_add_op_from_string(v, (void*)_str__105);
  __MOVE((CHAR*)"exit", _str__104, 5);
  e4vm_utils_add_op_from_string(v, (void*)_str__104);
  e4vm_utils_stack_ds_push(v, 1);
  e4vm_utils_stack_ds_push(v, 2);
  e4vm_core_do_list(v);
  e4vm_core_do_next(v);
  if ((*v)->ds[0] == 2 && (*v)->ds[1] == 1) {
    Console_WriteStrLn((CHAR*)" - ok", 6);
  } else {
    Console_WriteStrLn((CHAR*)" - error", 9);
  }
}

static void e4vm_test_dup (e4vm_type_x4thPtr *v)
{
  CHAR _str__45[10];
  CHAR _str__44[10];
  CHAR _str__43[10];
  Console_WriteStr((CHAR*)"Test dup ", 10);
  e4vm_utils_init(v);
  e4vm_core_add_core_words(v);
  e4vm_stack_add_core_words(v);
  e4vm_utils_here_to_wp(v);
  __MOVE((CHAR*)"dolist", _str__45, 7);
  e4vm_utils_add_op_from_string(v, (void*)_str__45);
  __MOVE((CHAR*)"dup", _str__44, 4);
  e4vm_utils_add_op_from_string(v, (void*)_str__44);
  __MOVE((CHAR*)"exit", _str__43, 5);
  e4vm_utils_add_op_from_string(v, (void*)_str__43);
  e4vm_utils_stack_ds_push(v, 1);
  e4vm_core_do_list(v);
  e4vm_core_do_next(v);
  if (((*v)->ds[0] == (*v)->ds[1] && (*v)->ds[0] == 1) && (*v)->ds_p == 2) {
    Console_WriteStrLn((CHAR*)" - ok", 6);
  } else {
    Console_WriteStrLn((CHAR*)" - error", 9);
  }
}

static void e4vm_test_over (e4vm_type_x4thPtr *v)
{
  CHAR _str__95[10];
  CHAR _str__94[10];
  CHAR _str__93[10];
  Console_WriteStr((CHAR*)"Test over ", 11);
  e4vm_utils_init(v);
  e4vm_core_add_core_words(v);
  e4vm_stack_add_core_words(v);
  e4vm_utils_here_to_wp(v);
  __MOVE((CHAR*)"dolist", _str__95, 7);
  e4vm_utils_add_op_from_string(v, (void*)_str__95);
  __MOVE((CHAR*)"over", _str__94, 5);
  e4vm_utils_add_op_from_string(v, (void*)_str__94);
  __MOVE((CHAR*)"exit", _str__93, 5);
  e4vm_utils_add_op_from_string(v, (void*)_str__93);
  e4vm_utils_stack_ds_push(v, 1);
  e4vm_utils_stack_ds_push(v, 2);
  e4vm_core_do_list(v);
  e4vm_core_do_next(v);
  if ((((*v)->ds[0] == 1 && (*v)->ds[1] == 2) && (*v)->ds[2] == 1) && (*v)->ds_p == 3) {
    Console_WriteStrLn((CHAR*)" - ok", 6);
  } else {
    Console_WriteStrLn((CHAR*)" - error", 9);
  }
}

static void e4vm_test_rot (e4vm_type_x4thPtr *v)
{
  CHAR _str__102[10];
  CHAR _str__101[10];
  CHAR _str__100[10];
  Console_WriteStr((CHAR*)"Test rot ", 10);
  e4vm_utils_init(v);
  e4vm_core_add_core_words(v);
  e4vm_stack_add_core_words(v);
  e4vm_utils_here_to_wp(v);
  __MOVE((CHAR*)"dolist", _str__102, 7);
  e4vm_utils_add_op_from_string(v, (void*)_str__102);
  __MOVE((CHAR*)"rot", _str__101, 4);
  e4vm_utils_add_op_from_string(v, (void*)_str__101);
  __MOVE((CHAR*)"exit", _str__100, 5);
  e4vm_utils_add_op_from_string(v, (void*)_str__100);
  e4vm_utils_stack_ds_push(v, 1);
  e4vm_utils_stack_ds_push(v, 2);
  e4vm_utils_stack_ds_push(v, 3);
  e4vm_core_do_list(v);
  e4vm_core_do_next(v);
  if (((*v)->ds[0] == 2 && (*v)->ds[1] == 3) && (*v)->ds[2] == 1) {
    Console_WriteStrLn((CHAR*)" - ok", 6);
  } else {
    Console_WriteStrLn((CHAR*)" - error", 9);
  }
}

static void e4vm_test_nrot (e4vm_type_x4thPtr *v)
{
  CHAR _str__87[10];
  CHAR _str__86[10];
  CHAR _str__85[10];
  Console_WriteStr((CHAR*)"Test nrot ", 11);
  e4vm_utils_init(v);
  e4vm_core_add_core_words(v);
  e4vm_stack_add_core_words(v);
  e4vm_utils_here_to_wp(v);
  __MOVE((CHAR*)"dolist", _str__87, 7);
  e4vm_utils_add_op_from_string(v, (void*)_str__87);
  __MOVE((CHAR*)"nrot", _str__86, 5);
  e4vm_utils_add_op_from_string(v, (void*)_str__86);
  __MOVE((CHAR*)"exit", _str__85, 5);
  e4vm_utils_add_op_from_string(v, (void*)_str__85);
  e4vm_utils_stack_ds_push(v, 1);
  e4vm_utils_stack_ds_push(v, 2);
  e4vm_utils_stack_ds_push(v, 3);
  e4vm_core_do_list(v);
  e4vm_core_do_next(v);
  if (((*v)->ds[0] == 3 && (*v)->ds[1] == 1) && (*v)->ds[2] == 2) {
    Console_WriteStrLn((CHAR*)" - ok", 6);
  } else {
    Console_WriteStrLn((CHAR*)" - error", 9);
  }
}

static void e4vm_test_minus (e4vm_type_x4thPtr *v)
{
  CHAR _str__75[10];
  CHAR _str__74[10];
  CHAR _str__73[10];
  CHAR _str__72[10];
  Console_WriteStr((CHAR*)"Test math -/+ ", 15);
  e4vm_utils_init(v);
  e4vm_core_add_core_words(v);
  e4vm_math_add_core_words(v);
  e4vm_utils_here_to_wp(v);
  __MOVE((CHAR*)"dolist", _str__75, 7);
  e4vm_utils_add_op_from_string(v, (void*)_str__75);
  __MOVE((CHAR*)"-", _str__74, 2);
  e4vm_utils_add_op_from_string(v, (void*)_str__74);
  __MOVE((CHAR*)"+", _str__73, 2);
  e4vm_utils_add_op_from_string(v, (void*)_str__73);
  __MOVE((CHAR*)"exit", _str__72, 5);
  e4vm_utils_add_op_from_string(v, (void*)_str__72);
  e4vm_utils_stack_ds_push(v, 1);
  e4vm_utils_stack_ds_push(v, 20);
  e4vm_utils_stack_ds_push(v, 3);
  e4vm_core_do_list(v);
  e4vm_core_do_next(v);
  if ((*v)->ds[0] == 18) {
    Console_WriteStrLn((CHAR*)" - ok", 6);
  } else {
    Console_WriteStrLn((CHAR*)" - error", 9);
  }
}

static void e4vm_test_mod (e4vm_type_x4thPtr *v)
{
  CHAR _str__79[10];
  CHAR _str__78[10];
  CHAR _str__77[10];
  Console_WriteStr((CHAR*)"Test mod ", 10);
  e4vm_utils_init(v);
  e4vm_core_add_core_words(v);
  e4vm_math_add_core_words(v);
  e4vm_utils_here_to_wp(v);
  __MOVE((CHAR*)"dolist", _str__79, 7);
  e4vm_utils_add_op_from_string(v, (void*)_str__79);
  __MOVE((CHAR*)"mod", _str__78, 4);
  e4vm_utils_add_op_from_string(v, (void*)_str__78);
  __MOVE((CHAR*)"exit", _str__77, 5);
  e4vm_utils_add_op_from_string(v, (void*)_str__77);
  e4vm_utils_stack_ds_push(v, 10);
  e4vm_utils_stack_ds_push(v, 3);
  e4vm_core_do_list(v);
  e4vm_core_do_next(v);
  if ((*v)->ds[(*v)->ds_p - 1] == 1) {
    Console_WriteStrLn((CHAR*)" - ok", 6);
  } else {
    Console_WriteStrLn((CHAR*)" - error", 9);
  }
}

static void e4vm_test_devide (e4vm_type_x4thPtr *v)
{
  CHAR _str__33[10];
  CHAR _str__32[10];
  CHAR _str__31[10];
  CHAR _str__30[10];
  Console_WriteStr((CHAR*)"Test math (/, *) ", 18);
  e4vm_utils_init(v);
  e4vm_core_add_core_words(v);
  e4vm_math_add_core_words(v);
  e4vm_utils_here_to_wp(v);
  __MOVE((CHAR*)"dolist", _str__33, 7);
  e4vm_utils_add_op_from_string(v, (void*)_str__33);
  __MOVE((CHAR*)"/", _str__32, 2);
  e4vm_utils_add_op_from_string(v, (void*)_str__32);
  __MOVE((CHAR*)"*", _str__31, 2);
  e4vm_utils_add_op_from_string(v, (void*)_str__31);
  __MOVE((CHAR*)"exit", _str__30, 5);
  e4vm_utils_add_op_from_string(v, (void*)_str__30);
  e4vm_utils_stack_ds_push(v, 3);
  e4vm_utils_stack_ds_push(v, 10);
  e4vm_utils_stack_ds_push(v, 2);
  e4vm_core_do_list(v);
  e4vm_core_do_next(v);
  if ((*v)->ds[0] == 15) {
    Console_WriteStrLn((CHAR*)" - ok", 6);
  } else {
    Console_WriteStrLn((CHAR*)" - error", 9);
  }
}

static void e4vm_test_inc (e4vm_type_x4thPtr *v)
{
  CHAR _str__66[10];
  CHAR _str__65[10];
  CHAR _str__64[10];
  CHAR _str__63[10];
  CHAR _str__62[10];
  Console_WriteStr((CHAR*)"Test math 1+ 1-", 16);
  e4vm_utils_init(v);
  e4vm_core_add_core_words(v);
  e4vm_stack_add_core_words(v);
  e4vm_math_add_core_words(v);
  e4vm_utils_here_to_wp(v);
  __MOVE((CHAR*)"dolist", _str__66, 7);
  e4vm_utils_add_op_from_string(v, (void*)_str__66);
  __MOVE((CHAR*)"1+", _str__65, 3);
  e4vm_utils_add_op_from_string(v, (void*)_str__65);
  __MOVE((CHAR*)"swap", _str__64, 5);
  e4vm_utils_add_op_from_string(v, (void*)_str__64);
  __MOVE((CHAR*)"1-", _str__63, 3);
  e4vm_utils_add_op_from_string(v, (void*)_str__63);
  __MOVE((CHAR*)"exit", _str__62, 5);
  e4vm_utils_add_op_from_string(v, (void*)_str__62);
  e4vm_utils_stack_ds_push(v, 10);
  e4vm_utils_stack_ds_push(v, 20);
  e4vm_core_do_list(v);
  e4vm_core_do_next(v);
  if ((*v)->ds[(*v)->ds_p - 1] == 9 && (*v)->ds[(*v)->ds_p - 2] == 21) {
    Console_WriteStrLn((CHAR*)" - ok", 6);
  } else {
    Console_WriteStrLn((CHAR*)" - error", 9);
  }
}

static void e4vm_test_true (e4vm_type_x4thPtr *v)
{
  CHAR _str__110[10];
  CHAR _str__109[10];
  CHAR _str__108[10];
  Console_WriteStr((CHAR*)"Test true ", 11);
  e4vm_utils_init(v);
  e4vm_core_add_core_words(v);
  e4vm_boolean_add_core_words(v);
  e4vm_utils_here_to_wp(v);
  __MOVE((CHAR*)"dolist", _str__110, 7);
  e4vm_utils_add_op_from_string(v, (void*)_str__110);
  __MOVE((CHAR*)"true", _str__109, 5);
  e4vm_utils_add_op_from_string(v, (void*)_str__109);
  __MOVE((CHAR*)"exit", _str__108, 5);
  e4vm_utils_add_op_from_string(v, (void*)_str__108);
  e4vm_core_do_list(v);
  e4vm_core_do_next(v);
  if ((*v)->ds[(*v)->ds_p - 1] == e4vm_utils_true_const(&e4vm_vm)) {
    Console_WriteStrLn((CHAR*)" - ok", 6);
  } else {
    Console_WriteStrLn((CHAR*)" - error", 9);
  }
}

static void e4vm_test_not (e4vm_type_x4thPtr *v)
{
  SHORTINT start_addr;
  CHAR _str__83[10];
  CHAR _str__82[10];
  CHAR _str__81[10];
  Console_WriteStr((CHAR*)"Test not ", 10);
  e4vm_utils_init(v);
  e4vm_core_add_core_words(v);
  e4vm_boolean_add_core_words(v);
  start_addr = (*v)->hereP;
  __MOVE((CHAR*)"dolist", _str__83, 7);
  e4vm_utils_add_op_from_string(v, (void*)_str__83);
  __MOVE((CHAR*)"not", _str__82, 4);
  e4vm_utils_add_op_from_string(v, (void*)_str__82);
  __MOVE((CHAR*)"exit", _str__81, 5);
  e4vm_utils_add_op_from_string(v, (void*)_str__81);
  e4vm_utils_stack_ds_push(v, e4vm_utils_true_const(&e4vm_vm));
  (*v)->wp = start_addr;
  e4vm_core_do_list(v);
  e4vm_core_do_next(v);
  if ((*v)->ds[0] == e4vm_utils_false_const(&e4vm_vm)) {
    Console_WriteStr((CHAR*)" - ok", 6);
  } else {
    Console_WriteStr((CHAR*)" - error", 9);
  }
  (*v)->wp = start_addr;
  e4vm_core_do_list(v);
  e4vm_core_do_next(v);
  if ((*v)->ds[0] == e4vm_utils_true_const(&e4vm_vm)) {
    Console_WriteStr((CHAR*)" - ok", 6);
  } else {
    Console_WriteStr((CHAR*)" - error", 9);
  }
  (*v)->ds[0] = 2;
  (*v)->wp = start_addr;
  e4vm_core_do_list(v);
  e4vm_core_do_next(v);
  Console_WriteStrLn((CHAR*)" - ok", 6);
}

static void e4vm_test_invert (e4vm_type_x4thPtr *v)
{
  CHAR _str__70[10];
  CHAR _str__69[10];
  CHAR _str__68[10];
  Console_WriteStr((CHAR*)"Test invert ", 13);
  e4vm_utils_init(v);
  e4vm_core_add_core_words(v);
  e4vm_boolean_add_core_words(v);
  e4vm_utils_here_to_wp(v);
  __MOVE((CHAR*)"dolist", _str__70, 7);
  e4vm_utils_add_op_from_string(v, (void*)_str__70);
  __MOVE((CHAR*)"invert", _str__69, 7);
  e4vm_utils_add_op_from_string(v, (void*)_str__69);
  __MOVE((CHAR*)"exit", _str__68, 5);
  e4vm_utils_add_op_from_string(v, (void*)_str__68);
  e4vm_utils_stack_ds_push(v, 15);
  e4vm_core_do_list(v);
  e4vm_core_do_next(v);
  if ((*v)->ds[(*v)->ds_p - 1] == -16) {
    Console_WriteStrLn((CHAR*)" - ok", 6);
  } else {
    Console_WriteStrLn((CHAR*)" - error", 9);
  }
}

static void e4vm_test_or (e4vm_type_x4thPtr *v)
{
  CHAR _str__91[10];
  CHAR _str__90[10];
  CHAR _str__89[10];
  Console_WriteStr((CHAR*)"Test or ", 9);
  e4vm_utils_init(v);
  e4vm_core_add_core_words(v);
  e4vm_boolean_add_core_words(v);
  e4vm_utils_here_to_wp(v);
  __MOVE((CHAR*)"dolist", _str__91, 7);
  e4vm_utils_add_op_from_string(v, (void*)_str__91);
  __MOVE((CHAR*)"or", _str__90, 3);
  e4vm_utils_add_op_from_string(v, (void*)_str__90);
  __MOVE((CHAR*)"exit", _str__89, 5);
  e4vm_utils_add_op_from_string(v, (void*)_str__89);
  e4vm_utils_stack_ds_push(v, 1);
  e4vm_utils_stack_ds_push(v, 2);
  e4vm_core_do_list(v);
  e4vm_core_do_next(v);
  if ((*v)->ds[0] == 3) {
    Console_WriteStrLn((CHAR*)" - ok", 6);
  } else {
    Console_WriteStrLn((CHAR*)" - error", 9);
  }
}

static void e4vm_test_and (e4vm_type_x4thPtr *v)
{
  CHAR _str__14[10];
  CHAR _str__13[10];
  CHAR _str__12[10];
  Console_WriteStr((CHAR*)"Test and ", 10);
  e4vm_utils_init(v);
  e4vm_core_add_core_words(v);
  e4vm_boolean_add_core_words(v);
  e4vm_utils_here_to_wp(v);
  __MOVE((CHAR*)"dolist", _str__14, 7);
  e4vm_utils_add_op_from_string(v, (void*)_str__14);
  __MOVE((CHAR*)"and", _str__13, 4);
  e4vm_utils_add_op_from_string(v, (void*)_str__13);
  __MOVE((CHAR*)"exit", _str__12, 5);
  e4vm_utils_add_op_from_string(v, (void*)_str__12);
  e4vm_utils_stack_ds_push(v, 3);
  e4vm_utils_stack_ds_push(v, 6);
  e4vm_core_do_list(v);
  e4vm_core_do_next(v);
  if ((*v)->ds[0] == 2) {
    Console_WriteStrLn((CHAR*)" - ok", 6);
  } else {
    Console_WriteStrLn((CHAR*)" - error", 9);
  }
}

static void e4vm_test_xor (e4vm_type_x4thPtr *v)
{
  CHAR _str__114[10];
  CHAR _str__113[10];
  CHAR _str__112[10];
  Console_WriteStr((CHAR*)"Test xor ", 10);
  e4vm_utils_init(v);
  e4vm_core_add_core_words(v);
  e4vm_boolean_add_core_words(v);
  e4vm_utils_here_to_wp(v);
  __MOVE((CHAR*)"dolist", _str__114, 7);
  e4vm_utils_add_op_from_string(v, (void*)_str__114);
  __MOVE((CHAR*)"xor", _str__113, 4);
  e4vm_utils_add_op_from_string(v, (void*)_str__113);
  __MOVE((CHAR*)"exit", _str__112, 5);
  e4vm_utils_add_op_from_string(v, (void*)_str__112);
  e4vm_utils_stack_ds_push(v, 6);
  e4vm_utils_stack_ds_push(v, 5);
  e4vm_core_do_list(v);
  e4vm_core_do_next(v);
  if ((*v)->ds[0] == 3) {
    Console_WriteStrLn((CHAR*)" - ok", 6);
  } else {
    Console_WriteStrLn((CHAR*)" - error", 9);
  }
}

static void e4vm_test_here (e4vm_type_x4thPtr *v)
{
  CHAR _str__55[10];
  CHAR _str__54[10];
  CHAR _str__53[10];
  Console_WriteStr((CHAR*)"Test here ", 11);
  e4vm_utils_init(v);
  e4vm_core_add_core_words(v);
  e4vm_core_ext_add_core_words(v);
  e4vm_utils_here_to_wp(v);
  __MOVE((CHAR*)"dolist", _str__55, 7);
  e4vm_utils_add_op_from_string(v, (void*)_str__55);
  __MOVE((CHAR*)"here", _str__54, 5);
  e4vm_utils_add_op_from_string(v, (void*)_str__54);
  __MOVE((CHAR*)"exit", _str__53, 5);
  e4vm_utils_add_op_from_string(v, (void*)_str__53);
  (*v)->hereP = 555;
  e4vm_core_do_list(v);
  e4vm_core_do_next(v);
  if ((*v)->ds[0] == 555) {
    Console_WriteStrLn((CHAR*)" - ok", 6);
  } else {
    Console_WriteStrLn((CHAR*)" - error", 9);
  }
}

static void e4vm_test_comma (e4vm_type_x4thPtr *v)
{
  CHAR _str__28[10];
  CHAR _str__27[10];
  CHAR _str__26[10];
  Console_WriteStr((CHAR*)"Test comma , ", 14);
  e4vm_utils_init(v);
  e4vm_core_add_core_words(v);
  e4vm_core_ext_add_core_words(v);
  e4vm_utils_here_to_wp(v);
  __MOVE((CHAR*)"dolist", _str__28, 7);
  e4vm_utils_add_op_from_string(v, (void*)_str__28);
  __MOVE((CHAR*)",", _str__27, 2);
  e4vm_utils_add_op_from_string(v, (void*)_str__27);
  __MOVE((CHAR*)"exit", _str__26, 5);
  e4vm_utils_add_op_from_string(v, (void*)_str__26);
  (*v)->hereP = 18;
  e4vm_utils_stack_ds_push(v, 777);
  e4vm_core_do_list(v);
  e4vm_core_do_next(v);
  if ((*v)->mem[18] == 777) {
    Console_WriteStrLn((CHAR*)" - ok", 6);
  } else {
    Console_WriteStrLn((CHAR*)" - error", 9);
  }
}

static void e4vm_test_branch (e4vm_type_x4thPtr *v)
{
  SHORTINT jmp_addr, i;
  CHAR _str__24[10];
  CHAR _str__23[10];
  CHAR _str__22[10];
  CHAR _str__21[10];
  CHAR _str__20[10];
  CHAR _str__19[10];
  CHAR _str__18[10];
  CHAR _str__17[10];
  CHAR _str__16[10];
  Console_WriteStr((CHAR*)"Test branch ", 13);
  e4vm_utils_init(v);
  e4vm_core_add_core_words(v);
  e4vm_core_ext_add_core_words(v);
  e4vm_utils_here_to_wp(v);
  __MOVE((CHAR*)"dolist", _str__24, 7);
  e4vm_utils_add_op_from_string(v, (void*)_str__24);
  __MOVE((CHAR*)"nop", _str__23, 4);
  e4vm_utils_add_op_from_string(v, (void*)_str__23);
  __MOVE((CHAR*)"nop", _str__22, 4);
  e4vm_utils_add_op_from_string(v, (void*)_str__22);
  __MOVE((CHAR*)"nop", _str__21, 4);
  e4vm_utils_add_op_from_string(v, (void*)_str__21);
  __MOVE((CHAR*)"branch", _str__20, 7);
  e4vm_utils_add_op_from_string(v, (void*)_str__20);
  e4vm_utils_add_op(v, 77);
  __MOVE((CHAR*)"dolit", _str__19, 6);
  e4vm_utils_add_op_from_string(v, (void*)_str__19);
  e4vm_utils_add_op(v, 1);
  __MOVE((CHAR*)"exit", _str__18, 5);
  e4vm_utils_add_op_from_string(v, (void*)_str__18);
  jmp_addr = (*v)->hereP;
  __MOVE((CHAR*)"dolit", _str__17, 6);
  e4vm_utils_add_op_from_string(v, (void*)_str__17);
  e4vm_utils_add_op(v, 2);
  __MOVE((CHAR*)"exit", _str__16, 5);
  e4vm_utils_add_op_from_string(v, (void*)_str__16);
  i = 0;
  while (i <= 31) {
    if ((*v)->mem[i] == 77) {
      (*v)->mem[i] = jmp_addr;
    }
    i += 1;
  }
  e4vm_core_do_list(v);
  e4vm_core_do_next(v);
  if ((*v)->ds[(*v)->ds_p - 1] == 2) {
    Console_WriteStrLn((CHAR*)" - ok", 6);
  } else {
    Console_WriteStrLn((CHAR*)" - error", 9);
  }
}

static void e4vm_test_zbranch (e4vm_type_x4thPtr *v)
{
  SHORTINT jmp_addr, i, start_addr;
  CHAR _str__124[10];
  CHAR _str__123[10];
  CHAR _str__122[10];
  CHAR _str__121[10];
  CHAR _str__120[10];
  CHAR _str__119[10];
  CHAR _str__118[10];
  CHAR _str__117[10];
  CHAR _str__116[10];
  Console_WriteStr((CHAR*)"Test 0branch ", 14);
  e4vm_utils_init(v);
  e4vm_core_add_core_words(v);
  e4vm_core_ext_add_core_words(v);
  e4vm_utils_here_to_wp(v);
  start_addr = (*v)->hereP;
  __MOVE((CHAR*)"dolist", _str__124, 7);
  e4vm_utils_add_op_from_string(v, (void*)_str__124);
  __MOVE((CHAR*)"nop", _str__123, 4);
  e4vm_utils_add_op_from_string(v, (void*)_str__123);
  __MOVE((CHAR*)"nop", _str__122, 4);
  e4vm_utils_add_op_from_string(v, (void*)_str__122);
  __MOVE((CHAR*)"nop", _str__121, 4);
  e4vm_utils_add_op_from_string(v, (void*)_str__121);
  __MOVE((CHAR*)"0branch", _str__120, 8);
  e4vm_utils_add_op_from_string(v, (void*)_str__120);
  e4vm_utils_add_op(v, 77);
  __MOVE((CHAR*)"dolit", _str__119, 6);
  e4vm_utils_add_op_from_string(v, (void*)_str__119);
  e4vm_utils_add_op(v, 1);
  __MOVE((CHAR*)"exit", _str__118, 5);
  e4vm_utils_add_op_from_string(v, (void*)_str__118);
  jmp_addr = (*v)->hereP;
  __MOVE((CHAR*)"dolit", _str__117, 6);
  e4vm_utils_add_op_from_string(v, (void*)_str__117);
  e4vm_utils_add_op(v, 2);
  __MOVE((CHAR*)"exit", _str__116, 5);
  e4vm_utils_add_op_from_string(v, (void*)_str__116);
  i = 0;
  while (i <= 31) {
    if ((*v)->mem[i] == 77) {
      (*v)->mem[i] = jmp_addr;
    }
    i += 1;
  }
  e4vm_utils_stack_ds_push(v, 0);
  e4vm_core_do_list(v);
  e4vm_core_do_next(v);
  if ((*v)->ds[(*v)->ds_p - 1] == 2) {
    Console_WriteStr((CHAR*)" - ok", 6);
  } else {
    Console_WriteStr((CHAR*)" - error", 9);
  }
  (*v)->wp = start_addr;
  e4vm_utils_stack_ds_push(v, 1);
  e4vm_core_do_list(v);
  e4vm_core_do_next(v);
  if ((*v)->ds[(*v)->ds_p - 1] == 1) {
    Console_WriteStr((CHAR*)" - ok", 6);
  } else {
    Console_WriteStr((CHAR*)" - error", 9);
  }
}

static void e4vm_test_read_char (e4vm_type_x4thPtr *v)
{
  SHORTINT t;
  CHAR ch;
  CHAR c;
  Console_WriteStr((CHAR*)"read_char test ", 16);
  e4vm_utils_init(v);
  ch = e4vm_utils_read_char(v);
  Console_WriteInt(ch);
  Console_WriteCh((CHAR)ch);
  Console_WriteStr((CHAR*)" - ok", 6);
}

static void e4vm_test_read_string (e4vm_type_x4thPtr *v)
{
  e4vm_type_x4thPtr _ptr__98 = NIL;
  Console_WriteStr((CHAR*)"read_string test ", 18);
  e4vm_utils_read_string(v);
  _ptr__98 = *v;
  Console_WriteStrLn((void*)_ptr__98->in_string, 64);
  Console_WriteStr((CHAR*)" - ok", 6);
}

static void e4vm_test_immediate (e4vm_type_x4thPtr *v)
{
  CHAR _str__60[10];
  CHAR _str__59[10];
  CHAR _str__58[10];
  CHAR _str__57[10];
  Console_WriteStr((CHAR*)"Test immediate ", 16);
  e4vm_utils_init(v);
  e4vm_core_add_core_words(v);
  e4vm_core_ext_add_core_words(v);
  __MOVE((CHAR*)"hello", _str__60, 6);
  e4vm_utils_add_core_word(v, (void*)_str__60, e4vm_do_hello, 0);
  e4vm_utils_here_to_wp(v);
  __MOVE((CHAR*)"dolist", _str__59, 7);
  e4vm_utils_add_op_from_string(v, (void*)_str__59);
  __MOVE((CHAR*)"immediate", _str__58, 10);
  e4vm_utils_add_op_from_string(v, (void*)_str__58);
  __MOVE((CHAR*)"exit", _str__57, 5);
  e4vm_utils_add_op_from_string(v, (void*)_str__57);
  (*v)->hereP = 18;
  e4vm_utils_stack_ds_push(v, 777);
  e4vm_core_do_list(v);
  e4vm_core_do_next(v);
  if ((*v)->words[(*v)->words_count - 1].immediate == 1) {
    Console_WriteStrLn((CHAR*)" - ok", 6);
  } else {
    Console_WriteStrLn((CHAR*)" - error", 9);
  }
}

static void e4vm_test_execute1 (e4vm_type_x4thPtr *v)
{
  CHAR _str__51[10];
  CHAR _str__50[10];
  CHAR _str__49[10];
  CHAR _str__48[10];
  CHAR _str__47[10];
  Console_WriteStr((CHAR*)"Test execute from core ", 24);
  e4vm_utils_init(v);
  e4vm_core_add_core_words(v);
  e4vm_core_ext_add_core_words(v);
  __MOVE((CHAR*)"hello", _str__51, 6);
  e4vm_utils_add_core_word(v, (void*)_str__51, e4vm_do_hello, 0);
  e4vm_utils_here_to_wp(v);
  __MOVE((CHAR*)"dolist", _str__50, 7);
  e4vm_utils_add_op_from_string(v, (void*)_str__50);
  __MOVE((CHAR*)"execute", _str__49, 8);
  e4vm_utils_add_op_from_string(v, (void*)_str__49);
  __MOVE((CHAR*)"exit", _str__48, 5);
  e4vm_utils_add_op_from_string(v, (void*)_str__48);
  e4vm_utils_stack_ds_push(v, (__MOVE((CHAR*)"hello", _str__47, 6), 
    e4vm_utils_look_up_word_address(&e4vm_vm, (void*)_str__47)));
  (*v)->mem[30] = 0;
  e4vm_core_do_list(v);
  e4vm_core_do_next(v);
  if ((*v)->mem[30] == 1) {
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
  e4vm_test_immediate(&e4vm_vm);
  e4vm_test_execute1(&e4vm_vm);
  Basic_PAUSE(0);
  Basic_Quit();
  __FINI;
}
