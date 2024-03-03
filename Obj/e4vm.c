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
static void e4vm_test_here (e4vm_type_x4thPtr *v);
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

static void e4vm_test_dolit (e4vm_type_x4thPtr *v)
{
  CHAR _str__37[8];
  CHAR _str__36[8];
  CHAR _str__35[8];
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
  CHAR _str__41[8];
  CHAR _str__40[8];
  CHAR _str__39[8];
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
  CHAR _str__95[8];
  CHAR _str__94[8];
  CHAR _str__93[8];
  Console_WriteStr((CHAR*)"Test swap ", 11);
  e4vm_utils_init(v);
  e4vm_core_add_core_words(v);
  e4vm_stack_add_core_words(v);
  e4vm_utils_here_to_wp(v);
  __MOVE((CHAR*)"dolist", _str__95, 7);
  e4vm_utils_add_op_from_string(v, (void*)_str__95);
  __MOVE((CHAR*)"swap", _str__94, 5);
  e4vm_utils_add_op_from_string(v, (void*)_str__94);
  __MOVE((CHAR*)"exit", _str__93, 5);
  e4vm_utils_add_op_from_string(v, (void*)_str__93);
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
  CHAR _str__45[8];
  CHAR _str__44[8];
  CHAR _str__43[8];
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
  CHAR _str__84[8];
  CHAR _str__83[8];
  CHAR _str__82[8];
  Console_WriteStr((CHAR*)"Test over ", 11);
  e4vm_utils_init(v);
  e4vm_core_add_core_words(v);
  e4vm_stack_add_core_words(v);
  e4vm_utils_here_to_wp(v);
  __MOVE((CHAR*)"dolist", _str__84, 7);
  e4vm_utils_add_op_from_string(v, (void*)_str__84);
  __MOVE((CHAR*)"over", _str__83, 5);
  e4vm_utils_add_op_from_string(v, (void*)_str__83);
  __MOVE((CHAR*)"exit", _str__82, 5);
  e4vm_utils_add_op_from_string(v, (void*)_str__82);
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
  CHAR _str__91[8];
  CHAR _str__90[8];
  CHAR _str__89[8];
  Console_WriteStr((CHAR*)"Test rot ", 10);
  e4vm_utils_init(v);
  e4vm_core_add_core_words(v);
  e4vm_stack_add_core_words(v);
  e4vm_utils_here_to_wp(v);
  __MOVE((CHAR*)"dolist", _str__91, 7);
  e4vm_utils_add_op_from_string(v, (void*)_str__91);
  __MOVE((CHAR*)"rot", _str__90, 4);
  e4vm_utils_add_op_from_string(v, (void*)_str__90);
  __MOVE((CHAR*)"exit", _str__89, 5);
  e4vm_utils_add_op_from_string(v, (void*)_str__89);
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
  CHAR _str__76[8];
  CHAR _str__75[8];
  CHAR _str__74[8];
  Console_WriteStr((CHAR*)"Test nrot ", 11);
  e4vm_utils_init(v);
  e4vm_core_add_core_words(v);
  e4vm_stack_add_core_words(v);
  e4vm_utils_here_to_wp(v);
  __MOVE((CHAR*)"dolist", _str__76, 7);
  e4vm_utils_add_op_from_string(v, (void*)_str__76);
  __MOVE((CHAR*)"nrot", _str__75, 5);
  e4vm_utils_add_op_from_string(v, (void*)_str__75);
  __MOVE((CHAR*)"exit", _str__74, 5);
  e4vm_utils_add_op_from_string(v, (void*)_str__74);
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
  CHAR _str__64[8];
  CHAR _str__63[8];
  CHAR _str__62[8];
  CHAR _str__61[8];
  Console_WriteStr((CHAR*)"Test math -/+ ", 15);
  e4vm_utils_init(v);
  e4vm_core_add_core_words(v);
  e4vm_math_add_core_words(v);
  e4vm_utils_here_to_wp(v);
  __MOVE((CHAR*)"dolist", _str__64, 7);
  e4vm_utils_add_op_from_string(v, (void*)_str__64);
  __MOVE((CHAR*)"-", _str__63, 2);
  e4vm_utils_add_op_from_string(v, (void*)_str__63);
  __MOVE((CHAR*)"+", _str__62, 2);
  e4vm_utils_add_op_from_string(v, (void*)_str__62);
  __MOVE((CHAR*)"exit", _str__61, 5);
  e4vm_utils_add_op_from_string(v, (void*)_str__61);
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
  CHAR _str__68[8];
  CHAR _str__67[8];
  CHAR _str__66[8];
  Console_WriteStr((CHAR*)"Test mod ", 10);
  e4vm_utils_init(v);
  e4vm_core_add_core_words(v);
  e4vm_math_add_core_words(v);
  e4vm_utils_here_to_wp(v);
  __MOVE((CHAR*)"dolist", _str__68, 7);
  e4vm_utils_add_op_from_string(v, (void*)_str__68);
  __MOVE((CHAR*)"mod", _str__67, 4);
  e4vm_utils_add_op_from_string(v, (void*)_str__67);
  __MOVE((CHAR*)"exit", _str__66, 5);
  e4vm_utils_add_op_from_string(v, (void*)_str__66);
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
  CHAR _str__33[8];
  CHAR _str__32[8];
  CHAR _str__31[8];
  CHAR _str__30[8];
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
  CHAR _str__55[8];
  CHAR _str__54[8];
  CHAR _str__53[8];
  CHAR _str__52[8];
  CHAR _str__51[8];
  Console_WriteStr((CHAR*)"Test math 1+ 1-", 16);
  e4vm_utils_init(v);
  e4vm_core_add_core_words(v);
  e4vm_stack_add_core_words(v);
  e4vm_math_add_core_words(v);
  e4vm_utils_here_to_wp(v);
  __MOVE((CHAR*)"dolist", _str__55, 7);
  e4vm_utils_add_op_from_string(v, (void*)_str__55);
  __MOVE((CHAR*)"1+", _str__54, 3);
  e4vm_utils_add_op_from_string(v, (void*)_str__54);
  __MOVE((CHAR*)"swap", _str__53, 5);
  e4vm_utils_add_op_from_string(v, (void*)_str__53);
  __MOVE((CHAR*)"1-", _str__52, 3);
  e4vm_utils_add_op_from_string(v, (void*)_str__52);
  __MOVE((CHAR*)"exit", _str__51, 5);
  e4vm_utils_add_op_from_string(v, (void*)_str__51);
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
  CHAR _str__99[8];
  CHAR _str__98[8];
  CHAR _str__97[8];
  Console_WriteStr((CHAR*)"Test true ", 11);
  e4vm_utils_init(v);
  e4vm_core_add_core_words(v);
  e4vm_boolean_add_core_words(v);
  e4vm_utils_here_to_wp(v);
  __MOVE((CHAR*)"dolist", _str__99, 7);
  e4vm_utils_add_op_from_string(v, (void*)_str__99);
  __MOVE((CHAR*)"true", _str__98, 5);
  e4vm_utils_add_op_from_string(v, (void*)_str__98);
  __MOVE((CHAR*)"exit", _str__97, 5);
  e4vm_utils_add_op_from_string(v, (void*)_str__97);
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
  CHAR _str__72[8];
  CHAR _str__71[8];
  CHAR _str__70[8];
  Console_WriteStr((CHAR*)"Test not ", 10);
  e4vm_utils_init(v);
  e4vm_core_add_core_words(v);
  e4vm_boolean_add_core_words(v);
  start_addr = (*v)->hereP;
  __MOVE((CHAR*)"dolist", _str__72, 7);
  e4vm_utils_add_op_from_string(v, (void*)_str__72);
  __MOVE((CHAR*)"not", _str__71, 4);
  e4vm_utils_add_op_from_string(v, (void*)_str__71);
  __MOVE((CHAR*)"exit", _str__70, 5);
  e4vm_utils_add_op_from_string(v, (void*)_str__70);
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
  CHAR _str__59[8];
  CHAR _str__58[8];
  CHAR _str__57[8];
  Console_WriteStr((CHAR*)"Test invert ", 13);
  e4vm_utils_init(v);
  e4vm_core_add_core_words(v);
  e4vm_boolean_add_core_words(v);
  e4vm_utils_here_to_wp(v);
  __MOVE((CHAR*)"dolist", _str__59, 7);
  e4vm_utils_add_op_from_string(v, (void*)_str__59);
  __MOVE((CHAR*)"invert", _str__58, 7);
  e4vm_utils_add_op_from_string(v, (void*)_str__58);
  __MOVE((CHAR*)"exit", _str__57, 5);
  e4vm_utils_add_op_from_string(v, (void*)_str__57);
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
  CHAR _str__80[8];
  CHAR _str__79[8];
  CHAR _str__78[8];
  Console_WriteStr((CHAR*)"Test or ", 9);
  e4vm_utils_init(v);
  e4vm_core_add_core_words(v);
  e4vm_boolean_add_core_words(v);
  e4vm_utils_here_to_wp(v);
  __MOVE((CHAR*)"dolist", _str__80, 7);
  e4vm_utils_add_op_from_string(v, (void*)_str__80);
  __MOVE((CHAR*)"or", _str__79, 3);
  e4vm_utils_add_op_from_string(v, (void*)_str__79);
  __MOVE((CHAR*)"exit", _str__78, 5);
  e4vm_utils_add_op_from_string(v, (void*)_str__78);
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
  CHAR _str__14[8];
  CHAR _str__13[8];
  CHAR _str__12[8];
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
  CHAR _str__103[8];
  CHAR _str__102[8];
  CHAR _str__101[8];
  Console_WriteStr((CHAR*)"Test xor ", 10);
  e4vm_utils_init(v);
  e4vm_core_add_core_words(v);
  e4vm_boolean_add_core_words(v);
  e4vm_utils_here_to_wp(v);
  __MOVE((CHAR*)"dolist", _str__103, 7);
  e4vm_utils_add_op_from_string(v, (void*)_str__103);
  __MOVE((CHAR*)"xor", _str__102, 4);
  e4vm_utils_add_op_from_string(v, (void*)_str__102);
  __MOVE((CHAR*)"exit", _str__101, 5);
  e4vm_utils_add_op_from_string(v, (void*)_str__101);
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
  CHAR _str__49[8];
  CHAR _str__48[8];
  CHAR _str__47[8];
  Console_WriteStr((CHAR*)"Test here ", 11);
  e4vm_utils_init(v);
  e4vm_core_add_core_words(v);
  e4vm_core_ext_add_core_words(v);
  e4vm_utils_here_to_wp(v);
  __MOVE((CHAR*)"dolist", _str__49, 7);
  e4vm_utils_add_op_from_string(v, (void*)_str__49);
  __MOVE((CHAR*)"here", _str__48, 5);
  e4vm_utils_add_op_from_string(v, (void*)_str__48);
  __MOVE((CHAR*)"exit", _str__47, 5);
  e4vm_utils_add_op_from_string(v, (void*)_str__47);
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
  CHAR _str__28[8];
  CHAR _str__27[8];
  CHAR _str__26[8];
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
  CHAR _str__24[8];
  CHAR _str__23[8];
  CHAR _str__22[8];
  CHAR _str__21[8];
  CHAR _str__20[8];
  CHAR _str__19[8];
  CHAR _str__18[8];
  CHAR _str__17[8];
  CHAR _str__16[8];
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
  CHAR _str__113[8];
  CHAR _str__112[8];
  CHAR _str__111[8];
  CHAR _str__110[8];
  CHAR _str__109[8];
  CHAR _str__108[8];
  CHAR _str__107[8];
  CHAR _str__106[8];
  CHAR _str__105[8];
  Console_WriteStr((CHAR*)"Test 0branch ", 14);
  e4vm_utils_init(v);
  e4vm_core_add_core_words(v);
  e4vm_core_ext_add_core_words(v);
  e4vm_utils_here_to_wp(v);
  start_addr = (*v)->hereP;
  __MOVE((CHAR*)"dolist", _str__113, 7);
  e4vm_utils_add_op_from_string(v, (void*)_str__113);
  __MOVE((CHAR*)"nop", _str__112, 4);
  e4vm_utils_add_op_from_string(v, (void*)_str__112);
  __MOVE((CHAR*)"nop", _str__111, 4);
  e4vm_utils_add_op_from_string(v, (void*)_str__111);
  __MOVE((CHAR*)"nop", _str__110, 4);
  e4vm_utils_add_op_from_string(v, (void*)_str__110);
  __MOVE((CHAR*)"0branch", _str__109, 8);
  e4vm_utils_add_op_from_string(v, (void*)_str__109);
  e4vm_utils_add_op(v, 77);
  __MOVE((CHAR*)"dolit", _str__108, 6);
  e4vm_utils_add_op_from_string(v, (void*)_str__108);
  e4vm_utils_add_op(v, 1);
  __MOVE((CHAR*)"exit", _str__107, 5);
  e4vm_utils_add_op_from_string(v, (void*)_str__107);
  jmp_addr = (*v)->hereP;
  __MOVE((CHAR*)"dolit", _str__106, 6);
  e4vm_utils_add_op_from_string(v, (void*)_str__106);
  e4vm_utils_add_op(v, 2);
  __MOVE((CHAR*)"exit", _str__105, 5);
  e4vm_utils_add_op_from_string(v, (void*)_str__105);
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
  e4vm_type_x4thPtr _ptr__87 = NIL;
  Console_WriteStr((CHAR*)"read_string test ", 18);
  e4vm_utils_read_string(v);
  _ptr__87 = *v;
  Console_WriteStrLn((void*)_ptr__87->in_string, 64);
  Console_WriteStr((CHAR*)" - ok", 6);
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
  e4vm_test1(&e4vm_vm);
  e4vm_test_dolit(&e4vm_vm);
  e4vm_test_drop(&e4vm_vm);
  e4vm_test_swap(&e4vm_vm);
  e4vm_test_dup(&e4vm_vm);
  e4vm_test_over(&e4vm_vm);
  e4vm_test_rot(&e4vm_vm);
  e4vm_test_nrot(&e4vm_vm);
  e4vm_test_minus(&e4vm_vm);
  e4vm_test_devide(&e4vm_vm);
  e4vm_test_inc(&e4vm_vm);
  e4vm_test_mod(&e4vm_vm);
  e4vm_test_true(&e4vm_vm);
  e4vm_test_not(&e4vm_vm);
  e4vm_test_invert(&e4vm_vm);
  e4vm_test_or(&e4vm_vm);
  e4vm_test_and(&e4vm_vm);
  e4vm_test_xor(&e4vm_vm);
  e4vm_test_here(&e4vm_vm);
  e4vm_test_comma(&e4vm_vm);
  e4vm_test_branch(&e4vm_vm);
  e4vm_test_zbranch(&e4vm_vm);
  Basic_PAUSE(0);
  Basic_Quit();
  __FINI;
}
