# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /HDD/Documents/projecten/eindwerk/eindwerk_code/ESP32_code

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /HDD/Documents/projecten/eindwerk/eindwerk_code/ESP32_code/build

# Include any dependencies generated for this target.
include esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/depend.make

# Include the progress variables for this target.
include esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/progress.make

# Include the compile flags for this target's objects.
include esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/flags.make

esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/sdmmc_cmd.c.obj: esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/flags.make
esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/sdmmc_cmd.c.obj: /home/gungnir/esp/esp-idf/components/sdmmc/sdmmc_cmd.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/HDD/Documents/projecten/eindwerk/eindwerk_code/ESP32_code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/sdmmc_cmd.c.obj"
	cd /HDD/Documents/projecten/eindwerk/eindwerk_code/ESP32_code/build/esp-idf/sdmmc && /home/gungnir/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_sdmmc.dir/sdmmc_cmd.c.obj   -c /home/gungnir/esp/esp-idf/components/sdmmc/sdmmc_cmd.c

esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/sdmmc_cmd.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_sdmmc.dir/sdmmc_cmd.c.i"
	cd /HDD/Documents/projecten/eindwerk/eindwerk_code/ESP32_code/build/esp-idf/sdmmc && /home/gungnir/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/gungnir/esp/esp-idf/components/sdmmc/sdmmc_cmd.c > CMakeFiles/__idf_sdmmc.dir/sdmmc_cmd.c.i

esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/sdmmc_cmd.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_sdmmc.dir/sdmmc_cmd.c.s"
	cd /HDD/Documents/projecten/eindwerk/eindwerk_code/ESP32_code/build/esp-idf/sdmmc && /home/gungnir/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/gungnir/esp/esp-idf/components/sdmmc/sdmmc_cmd.c -o CMakeFiles/__idf_sdmmc.dir/sdmmc_cmd.c.s

esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/sdmmc_common.c.obj: esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/flags.make
esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/sdmmc_common.c.obj: /home/gungnir/esp/esp-idf/components/sdmmc/sdmmc_common.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/HDD/Documents/projecten/eindwerk/eindwerk_code/ESP32_code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/sdmmc_common.c.obj"
	cd /HDD/Documents/projecten/eindwerk/eindwerk_code/ESP32_code/build/esp-idf/sdmmc && /home/gungnir/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_sdmmc.dir/sdmmc_common.c.obj   -c /home/gungnir/esp/esp-idf/components/sdmmc/sdmmc_common.c

esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/sdmmc_common.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_sdmmc.dir/sdmmc_common.c.i"
	cd /HDD/Documents/projecten/eindwerk/eindwerk_code/ESP32_code/build/esp-idf/sdmmc && /home/gungnir/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/gungnir/esp/esp-idf/components/sdmmc/sdmmc_common.c > CMakeFiles/__idf_sdmmc.dir/sdmmc_common.c.i

esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/sdmmc_common.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_sdmmc.dir/sdmmc_common.c.s"
	cd /HDD/Documents/projecten/eindwerk/eindwerk_code/ESP32_code/build/esp-idf/sdmmc && /home/gungnir/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/gungnir/esp/esp-idf/components/sdmmc/sdmmc_common.c -o CMakeFiles/__idf_sdmmc.dir/sdmmc_common.c.s

esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/sdmmc_init.c.obj: esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/flags.make
esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/sdmmc_init.c.obj: /home/gungnir/esp/esp-idf/components/sdmmc/sdmmc_init.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/HDD/Documents/projecten/eindwerk/eindwerk_code/ESP32_code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/sdmmc_init.c.obj"
	cd /HDD/Documents/projecten/eindwerk/eindwerk_code/ESP32_code/build/esp-idf/sdmmc && /home/gungnir/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_sdmmc.dir/sdmmc_init.c.obj   -c /home/gungnir/esp/esp-idf/components/sdmmc/sdmmc_init.c

esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/sdmmc_init.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_sdmmc.dir/sdmmc_init.c.i"
	cd /HDD/Documents/projecten/eindwerk/eindwerk_code/ESP32_code/build/esp-idf/sdmmc && /home/gungnir/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/gungnir/esp/esp-idf/components/sdmmc/sdmmc_init.c > CMakeFiles/__idf_sdmmc.dir/sdmmc_init.c.i

esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/sdmmc_init.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_sdmmc.dir/sdmmc_init.c.s"
	cd /HDD/Documents/projecten/eindwerk/eindwerk_code/ESP32_code/build/esp-idf/sdmmc && /home/gungnir/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/gungnir/esp/esp-idf/components/sdmmc/sdmmc_init.c -o CMakeFiles/__idf_sdmmc.dir/sdmmc_init.c.s

esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/sdmmc_io.c.obj: esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/flags.make
esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/sdmmc_io.c.obj: /home/gungnir/esp/esp-idf/components/sdmmc/sdmmc_io.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/HDD/Documents/projecten/eindwerk/eindwerk_code/ESP32_code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/sdmmc_io.c.obj"
	cd /HDD/Documents/projecten/eindwerk/eindwerk_code/ESP32_code/build/esp-idf/sdmmc && /home/gungnir/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_sdmmc.dir/sdmmc_io.c.obj   -c /home/gungnir/esp/esp-idf/components/sdmmc/sdmmc_io.c

esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/sdmmc_io.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_sdmmc.dir/sdmmc_io.c.i"
	cd /HDD/Documents/projecten/eindwerk/eindwerk_code/ESP32_code/build/esp-idf/sdmmc && /home/gungnir/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/gungnir/esp/esp-idf/components/sdmmc/sdmmc_io.c > CMakeFiles/__idf_sdmmc.dir/sdmmc_io.c.i

esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/sdmmc_io.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_sdmmc.dir/sdmmc_io.c.s"
	cd /HDD/Documents/projecten/eindwerk/eindwerk_code/ESP32_code/build/esp-idf/sdmmc && /home/gungnir/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/gungnir/esp/esp-idf/components/sdmmc/sdmmc_io.c -o CMakeFiles/__idf_sdmmc.dir/sdmmc_io.c.s

esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/sdmmc_mmc.c.obj: esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/flags.make
esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/sdmmc_mmc.c.obj: /home/gungnir/esp/esp-idf/components/sdmmc/sdmmc_mmc.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/HDD/Documents/projecten/eindwerk/eindwerk_code/ESP32_code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/sdmmc_mmc.c.obj"
	cd /HDD/Documents/projecten/eindwerk/eindwerk_code/ESP32_code/build/esp-idf/sdmmc && /home/gungnir/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_sdmmc.dir/sdmmc_mmc.c.obj   -c /home/gungnir/esp/esp-idf/components/sdmmc/sdmmc_mmc.c

esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/sdmmc_mmc.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_sdmmc.dir/sdmmc_mmc.c.i"
	cd /HDD/Documents/projecten/eindwerk/eindwerk_code/ESP32_code/build/esp-idf/sdmmc && /home/gungnir/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/gungnir/esp/esp-idf/components/sdmmc/sdmmc_mmc.c > CMakeFiles/__idf_sdmmc.dir/sdmmc_mmc.c.i

esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/sdmmc_mmc.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_sdmmc.dir/sdmmc_mmc.c.s"
	cd /HDD/Documents/projecten/eindwerk/eindwerk_code/ESP32_code/build/esp-idf/sdmmc && /home/gungnir/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/gungnir/esp/esp-idf/components/sdmmc/sdmmc_mmc.c -o CMakeFiles/__idf_sdmmc.dir/sdmmc_mmc.c.s

esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/sdmmc_sd.c.obj: esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/flags.make
esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/sdmmc_sd.c.obj: /home/gungnir/esp/esp-idf/components/sdmmc/sdmmc_sd.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/HDD/Documents/projecten/eindwerk/eindwerk_code/ESP32_code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/sdmmc_sd.c.obj"
	cd /HDD/Documents/projecten/eindwerk/eindwerk_code/ESP32_code/build/esp-idf/sdmmc && /home/gungnir/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_sdmmc.dir/sdmmc_sd.c.obj   -c /home/gungnir/esp/esp-idf/components/sdmmc/sdmmc_sd.c

esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/sdmmc_sd.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_sdmmc.dir/sdmmc_sd.c.i"
	cd /HDD/Documents/projecten/eindwerk/eindwerk_code/ESP32_code/build/esp-idf/sdmmc && /home/gungnir/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/gungnir/esp/esp-idf/components/sdmmc/sdmmc_sd.c > CMakeFiles/__idf_sdmmc.dir/sdmmc_sd.c.i

esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/sdmmc_sd.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_sdmmc.dir/sdmmc_sd.c.s"
	cd /HDD/Documents/projecten/eindwerk/eindwerk_code/ESP32_code/build/esp-idf/sdmmc && /home/gungnir/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/gungnir/esp/esp-idf/components/sdmmc/sdmmc_sd.c -o CMakeFiles/__idf_sdmmc.dir/sdmmc_sd.c.s

# Object files for target __idf_sdmmc
__idf_sdmmc_OBJECTS = \
"CMakeFiles/__idf_sdmmc.dir/sdmmc_cmd.c.obj" \
"CMakeFiles/__idf_sdmmc.dir/sdmmc_common.c.obj" \
"CMakeFiles/__idf_sdmmc.dir/sdmmc_init.c.obj" \
"CMakeFiles/__idf_sdmmc.dir/sdmmc_io.c.obj" \
"CMakeFiles/__idf_sdmmc.dir/sdmmc_mmc.c.obj" \
"CMakeFiles/__idf_sdmmc.dir/sdmmc_sd.c.obj"

# External object files for target __idf_sdmmc
__idf_sdmmc_EXTERNAL_OBJECTS =

esp-idf/sdmmc/libsdmmc.a: esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/sdmmc_cmd.c.obj
esp-idf/sdmmc/libsdmmc.a: esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/sdmmc_common.c.obj
esp-idf/sdmmc/libsdmmc.a: esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/sdmmc_init.c.obj
esp-idf/sdmmc/libsdmmc.a: esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/sdmmc_io.c.obj
esp-idf/sdmmc/libsdmmc.a: esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/sdmmc_mmc.c.obj
esp-idf/sdmmc/libsdmmc.a: esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/sdmmc_sd.c.obj
esp-idf/sdmmc/libsdmmc.a: esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/build.make
esp-idf/sdmmc/libsdmmc.a: esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/HDD/Documents/projecten/eindwerk/eindwerk_code/ESP32_code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX static library libsdmmc.a"
	cd /HDD/Documents/projecten/eindwerk/eindwerk_code/ESP32_code/build/esp-idf/sdmmc && $(CMAKE_COMMAND) -P CMakeFiles/__idf_sdmmc.dir/cmake_clean_target.cmake
	cd /HDD/Documents/projecten/eindwerk/eindwerk_code/ESP32_code/build/esp-idf/sdmmc && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/__idf_sdmmc.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/build: esp-idf/sdmmc/libsdmmc.a

.PHONY : esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/build

esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/clean:
	cd /HDD/Documents/projecten/eindwerk/eindwerk_code/ESP32_code/build/esp-idf/sdmmc && $(CMAKE_COMMAND) -P CMakeFiles/__idf_sdmmc.dir/cmake_clean.cmake
.PHONY : esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/clean

esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/depend:
	cd /HDD/Documents/projecten/eindwerk/eindwerk_code/ESP32_code/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /HDD/Documents/projecten/eindwerk/eindwerk_code/ESP32_code /home/gungnir/esp/esp-idf/components/sdmmc /HDD/Documents/projecten/eindwerk/eindwerk_code/ESP32_code/build /HDD/Documents/projecten/eindwerk/eindwerk_code/ESP32_code/build/esp-idf/sdmmc /HDD/Documents/projecten/eindwerk/eindwerk_code/ESP32_code/build/esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : esp-idf/sdmmc/CMakeFiles/__idf_sdmmc.dir/depend

