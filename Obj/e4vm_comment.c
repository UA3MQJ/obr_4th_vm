/* Ofront+ 1.0 -sx3 -21 */
#include "SYSTEM.oh"
#include "Console.oh"
#include "GrFonts.oh"
#include "Platform.oh"
#include "Basic.oh"
#include "e4vm_type.oh"
#include "e4vm_utils.oh"




export void e4vm_comment_add_core_words (e4vm_type_x4thPtr *v);
export void e4vm_comment_comment (e4vm_type_x4thPtr *v);
export void e4vm_comment_comment_line (e4vm_type_x4thPtr *v);


/*============================================================================*/

void e4vm_comment_comment (e4vm_type_x4thPtr *v)
{
  BOOLEAN t, t2;
  t = e4vm_utils_read_word(v);
  t2 = 1;
  while (t && t2) {
    if (__STRCMPCC((*v)->readed_word, (CHAR*)")", 2, (CHAR*)"e4vm_comment", -387) == 0) {
      t2 = 0;
    } else {
      t = e4vm_utils_read_word(v);
    }
  }
}

/*----------------------------------------------------------------------------*/
void e4vm_comment_comment_line (e4vm_type_x4thPtr *v)
{
  BOOLEAN t, t2;
  t = e4vm_utils_read_word(v);
  t2 = 1;
  while (t && t2) {
    if (__STRCMPCC((*v)->readed_word, (CHAR*)"\x0d", 2, (CHAR*)"e4vm_comment", -710) == 0) {
      t2 = 0;
    } else {
      t = e4vm_utils_read_word(v);
    }
  }
}

/*----------------------------------------------------------------------------*/
void e4vm_comment_add_core_words (e4vm_type_x4thPtr *v)
{
  CHAR _str__3[10];
  CHAR _str__2[10];
  __MOVE((CHAR*)"(", _str__3, 2);
  e4vm_utils_add_core_word(v, (void*)_str__3, e4vm_comment_comment, 0);
  __MOVE((CHAR*)"//", _str__2, 3);
  e4vm_utils_add_core_word(v, (void*)_str__2, e4vm_comment_comment_line, 0);
}

/*----------------------------------------------------------------------------*/

export void *e4vm_comment__init (void)
{
  __DEFMOD;
  __IMPORT(Console__init);
  __IMPORT(Platform__init);
  __IMPORT(e4vm_type__init);
  __IMPORT(e4vm_utils__init);
  __REGMOD("e4vm_comment", 0);
/* BEGIN */
  __ENDMOD;
}
