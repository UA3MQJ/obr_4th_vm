/* Ofront+ 1.0 -sx3 -21 */
#include "SYSTEM.oh"
#include "Console.oh"
#include "GrFonts.oh"
#include "Platform.oh"
#include "Basic.oh"
#include "e4vm_type.oh"
#include "e4vm_utils.oh"




export void e4vm_mem_add_core_words (e4vm_type_x4thPtr *v);
export void e4vm_mem_constant (e4vm_type_x4thPtr *v);
export void e4vm_mem_read_mem (e4vm_type_x4thPtr *v);
export void e4vm_mem_variable (e4vm_type_x4thPtr *v);
export void e4vm_mem_write_mem (e4vm_type_x4thPtr *v);


/*============================================================================*/

void e4vm_mem_write_mem (e4vm_type_x4thPtr *v)
{
}

/*----------------------------------------------------------------------------*/
void e4vm_mem_read_mem (e4vm_type_x4thPtr *v)
{
}

/*----------------------------------------------------------------------------*/
void e4vm_mem_variable (e4vm_type_x4thPtr *v)
{
}

/*----------------------------------------------------------------------------*/
void e4vm_mem_constant (e4vm_type_x4thPtr *v)
{
}

/*----------------------------------------------------------------------------*/
void e4vm_mem_add_core_words (e4vm_type_x4thPtr *v)
{
  CHAR _str__5[10];
  CHAR _str__4[10];
  CHAR _str__3[10];
  CHAR _str__2[10];
  __MOVE((CHAR*)"!", _str__5, 2);
  e4vm_utils_add_core_word(v, (void*)_str__5, e4vm_mem_write_mem, 0);
  __MOVE((CHAR*)"@", _str__4, 2);
  e4vm_utils_add_core_word(v, (void*)_str__4, e4vm_mem_read_mem, 0);
  __MOVE((CHAR*)"variable", _str__3, 9);
  e4vm_utils_add_core_word(v, (void*)_str__3, e4vm_mem_variable, 0);
  __MOVE((CHAR*)"constant", _str__2, 9);
  e4vm_utils_add_core_word(v, (void*)_str__2, e4vm_mem_constant, 0);
}

/*----------------------------------------------------------------------------*/

export void *e4vm_mem__init (void)
{
  __DEFMOD;
  __IMPORT(Console__init);
  __IMPORT(Platform__init);
  __IMPORT(e4vm_type__init);
  __IMPORT(e4vm_utils__init);
  __REGMOD("e4vm_mem", 0);
/* BEGIN */
  __ENDMOD;
}
