/* Ofront+ 1.0 -sx3 -21 */
#include "SYSTEM.oh"

typedef
  struct e4vm_type_x4th *e4vm_type_x4thPtr;

typedef
  void (*e4vm_type_ProcedureType)(e4vm_type_x4thPtr*);

typedef
  CHAR e4vm_type_word_string_type[10];

typedef
  struct e4vm_type_core_word {
    e4vm_type_word_string_type word;
    SHORTINT addr;
    e4vm_type_ProcedureType proc;
    BOOLEAN immediate, enabled;
  } e4vm_type_core_word;

typedef
  struct e4vm_type_x4th {
    SHORTINT ip, wp;
    SHORTINT rs[32], ds[32];
    SHORTINT rs_p, ds_p, hereP;
    SHORTINT mem[32];
    SHORTINT cell_bit_size;
    BOOLEAN is_eval_mode;
    e4vm_type_core_word words[32];
    SHORTINT words_count;
    CHAR in_string[64];
    CHAR buffer[64];
    SHORTINT buffer_idx;
    e4vm_type_word_string_type readed_word;
  } e4vm_type_x4th;






/*============================================================================*/


export void *e4vm_type__init (void)
{
  __DEFMOD;
  __REGMOD("e4vm_type", 0);
/* BEGIN */
  __ENDMOD;
}
