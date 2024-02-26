/* Ofront+ 1.0 -sx3 -21 */
#include "SYSTEM.oh"

typedef
  struct e4vm_type_x4th *e4vm_type_x4thPtr;

typedef
  void (*e4vm_type_ProcedureType)(e4vm_type_x4thPtr*);

typedef
  struct e4vm_type_x4th {
    SHORTINT ip, wp;
    SHORTINT rs[32], ds[32];
    SHORTINT rs_p, ds_p, hereP;
    SHORTINT mem[32];
    SHORTINT cell_bit_size;
    BOOLEAN is_eval_mode;
    e4vm_type_ProcedureType core[32];
    CHAR in_string[64];
  } e4vm_type_x4th;






/*============================================================================*/


export void *e4vm_type__init (void)
{
  __DEFMOD;
  __REGMOD("e4vm_type", 0);
/* BEGIN */
  __ENDMOD;
}
