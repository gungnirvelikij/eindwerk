file(REMOVE_RECURSE
  "bootloader/bootloader.bin"
  "bootloader/bootloader.elf"
  "bootloader/bootloader.map"
  "config/sdkconfig.cmake"
  "config/sdkconfig.h"
  "eindwerk_evse.bin"
  "eindwerk_evse.map"
  "project_elf_src.c"
  "CMakeFiles/app-flash"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/app-flash.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
