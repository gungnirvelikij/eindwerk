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
include esp-idf/esp-tls/CMakeFiles/__idf_esp-tls.dir/depend.make

# Include the progress variables for this target.
include esp-idf/esp-tls/CMakeFiles/__idf_esp-tls.dir/progress.make

# Include the compile flags for this target's objects.
include esp-idf/esp-tls/CMakeFiles/__idf_esp-tls.dir/flags.make

esp-idf/esp-tls/CMakeFiles/__idf_esp-tls.dir/esp_tls.c.obj: esp-idf/esp-tls/CMakeFiles/__idf_esp-tls.dir/flags.make
esp-idf/esp-tls/CMakeFiles/__idf_esp-tls.dir/esp_tls.c.obj: /home/gungnir/esp/esp-idf/components/esp-tls/esp_tls.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/HDD/Documents/projecten/eindwerk/eindwerk_code/ESP32_code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object esp-idf/esp-tls/CMakeFiles/__idf_esp-tls.dir/esp_tls.c.obj"
	cd /HDD/Documents/projecten/eindwerk/eindwerk_code/ESP32_code/build/esp-idf/esp-tls && /home/gungnir/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_esp-tls.dir/esp_tls.c.obj   -c /home/gungnir/esp/esp-idf/components/esp-tls/esp_tls.c

esp-idf/esp-tls/CMakeFiles/__idf_esp-tls.dir/esp_tls.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_esp-tls.dir/esp_tls.c.i"
	cd /HDD/Documents/projecten/eindwerk/eindwerk_code/ESP32_code/build/esp-idf/esp-tls && /home/gungnir/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/gungnir/esp/esp-idf/components/esp-tls/esp_tls.c > CMakeFiles/__idf_esp-tls.dir/esp_tls.c.i

esp-idf/esp-tls/CMakeFiles/__idf_esp-tls.dir/esp_tls.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_esp-tls.dir/esp_tls.c.s"
	cd /HDD/Documents/projecten/eindwerk/eindwerk_code/ESP32_code/build/esp-idf/esp-tls && /home/gungnir/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/gungnir/esp/esp-idf/components/esp-tls/esp_tls.c -o CMakeFiles/__idf_esp-tls.dir/esp_tls.c.s

# Object files for target __idf_esp-tls
__idf_esp__tls_OBJECTS = \
"CMakeFiles/__idf_esp-tls.dir/esp_tls.c.obj"

# External object files for target __idf_esp-tls
__idf_esp__tls_EXTERNAL_OBJECTS =

esp-idf/esp-tls/libesp-tls.a: esp-idf/esp-tls/CMakeFiles/__idf_esp-tls.dir/esp_tls.c.obj
esp-idf/esp-tls/libesp-tls.a: esp-idf/esp-tls/CMakeFiles/__idf_esp-tls.dir/build.make
esp-idf/esp-tls/libesp-tls.a: esp-idf/esp-tls/CMakeFiles/__idf_esp-tls.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/HDD/Documents/projecten/eindwerk/eindwerk_code/ESP32_code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libesp-tls.a"
	cd /HDD/Documents/projecten/eindwerk/eindwerk_code/ESP32_code/build/esp-idf/esp-tls && $(CMAKE_COMMAND) -P CMakeFiles/__idf_esp-tls.dir/cmake_clean_target.cmake
	cd /HDD/Documents/projecten/eindwerk/eindwerk_code/ESP32_code/build/esp-idf/esp-tls && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/__idf_esp-tls.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
esp-idf/esp-tls/CMakeFiles/__idf_esp-tls.dir/build: esp-idf/esp-tls/libesp-tls.a

.PHONY : esp-idf/esp-tls/CMakeFiles/__idf_esp-tls.dir/build

esp-idf/esp-tls/CMakeFiles/__idf_esp-tls.dir/clean:
	cd /HDD/Documents/projecten/eindwerk/eindwerk_code/ESP32_code/build/esp-idf/esp-tls && $(CMAKE_COMMAND) -P CMakeFiles/__idf_esp-tls.dir/cmake_clean.cmake
.PHONY : esp-idf/esp-tls/CMakeFiles/__idf_esp-tls.dir/clean

esp-idf/esp-tls/CMakeFiles/__idf_esp-tls.dir/depend:
	cd /HDD/Documents/projecten/eindwerk/eindwerk_code/ESP32_code/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /HDD/Documents/projecten/eindwerk/eindwerk_code/ESP32_code /home/gungnir/esp/esp-idf/components/esp-tls /HDD/Documents/projecten/eindwerk/eindwerk_code/ESP32_code/build /HDD/Documents/projecten/eindwerk/eindwerk_code/ESP32_code/build/esp-idf/esp-tls /HDD/Documents/projecten/eindwerk/eindwerk_code/ESP32_code/build/esp-idf/esp-tls/CMakeFiles/__idf_esp-tls.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : esp-idf/esp-tls/CMakeFiles/__idf_esp-tls.dir/depend
