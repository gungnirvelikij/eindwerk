file(REMOVE_RECURSE
  "config/sdkconfig.h"
  "config/sdkconfig.cmake"
  "bootloader/bootloader.elf"
  "bootloader/bootloader.bin"
  "bootloader/bootloader.map"
  "ledc.bin"
  "ledc.map"
  "project_elf_src.c"
  "project_elf_src.c"
  "CMakeFiles/ledc.elf.dir/project_elf_src.c.obj"
  "ledc.elf.pdb"
  "ledc.elf"
)

# Per-language clean rules from dependency scanning.
foreach(lang C)
  include(CMakeFiles/ledc.elf.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
