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
include CMakeFiles/eindwerk_evse.elf.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/eindwerk_evse.elf.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/eindwerk_evse.elf.dir/flags.make

project_elf_src.c:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/HDD/Documents/projecten/eindwerk/eindwerk_code/ESP32_code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating project_elf_src.c"
	/usr/bin/cmake -E touch /HDD/Documents/projecten/eindwerk/eindwerk_code/ESP32_code/build/project_elf_src.c

CMakeFiles/eindwerk_evse.elf.dir/project_elf_src.c.obj: CMakeFiles/eindwerk_evse.elf.dir/flags.make
CMakeFiles/eindwerk_evse.elf.dir/project_elf_src.c.obj: project_elf_src.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/HDD/Documents/projecten/eindwerk/eindwerk_code/ESP32_code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/eindwerk_evse.elf.dir/project_elf_src.c.obj"
	/home/gungnir/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/eindwerk_evse.elf.dir/project_elf_src.c.obj   -c /HDD/Documents/projecten/eindwerk/eindwerk_code/ESP32_code/build/project_elf_src.c

CMakeFiles/eindwerk_evse.elf.dir/project_elf_src.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/eindwerk_evse.elf.dir/project_elf_src.c.i"
	/home/gungnir/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /HDD/Documents/projecten/eindwerk/eindwerk_code/ESP32_code/build/project_elf_src.c > CMakeFiles/eindwerk_evse.elf.dir/project_elf_src.c.i

CMakeFiles/eindwerk_evse.elf.dir/project_elf_src.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/eindwerk_evse.elf.dir/project_elf_src.c.s"
	/home/gungnir/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /HDD/Documents/projecten/eindwerk/eindwerk_code/ESP32_code/build/project_elf_src.c -o CMakeFiles/eindwerk_evse.elf.dir/project_elf_src.c.s

# Object files for target eindwerk_evse.elf
eindwerk_evse_elf_OBJECTS = \
"CMakeFiles/eindwerk_evse.elf.dir/project_elf_src.c.obj"

# External object files for target eindwerk_evse.elf
eindwerk_evse_elf_EXTERNAL_OBJECTS =

eindwerk_evse.elf: CMakeFiles/eindwerk_evse.elf.dir/project_elf_src.c.obj
eindwerk_evse.elf: CMakeFiles/eindwerk_evse.elf.dir/build.make
eindwerk_evse.elf: esp-idf/esp_ringbuf/libesp_ringbuf.a
eindwerk_evse.elf: esp-idf/driver/libdriver.a
eindwerk_evse.elf: esp-idf/wpa_supplicant/libwpa_supplicant.a
eindwerk_evse.elf: esp-idf/efuse/libefuse.a
eindwerk_evse.elf: esp-idf/bootloader_support/libbootloader_support.a
eindwerk_evse.elf: esp-idf/app_update/libapp_update.a
eindwerk_evse.elf: esp-idf/spi_flash/libspi_flash.a
eindwerk_evse.elf: esp-idf/nvs_flash/libnvs_flash.a
eindwerk_evse.elf: esp-idf/esp_wifi/libesp_wifi.a
eindwerk_evse.elf: esp-idf/esp_eth/libesp_eth.a
eindwerk_evse.elf: esp-idf/lwip/liblwip.a
eindwerk_evse.elf: esp-idf/tcpip_adapter/libtcpip_adapter.a
eindwerk_evse.elf: esp-idf/esp_event/libesp_event.a
eindwerk_evse.elf: esp-idf/pthread/libpthread.a
eindwerk_evse.elf: esp-idf/espcoredump/libespcoredump.a
eindwerk_evse.elf: esp-idf/esp32/libesp32.a
eindwerk_evse.elf: esp-idf/xtensa/libxtensa.a
eindwerk_evse.elf: esp-idf/esp_common/libesp_common.a
eindwerk_evse.elf: esp-idf/esp_rom/libesp_rom.a
eindwerk_evse.elf: esp-idf/soc/libsoc.a
eindwerk_evse.elf: esp-idf/log/liblog.a
eindwerk_evse.elf: esp-idf/heap/libheap.a
eindwerk_evse.elf: esp-idf/freertos/libfreertos.a
eindwerk_evse.elf: esp-idf/vfs/libvfs.a
eindwerk_evse.elf: esp-idf/newlib/libnewlib.a
eindwerk_evse.elf: esp-idf/cxx/libcxx.a
eindwerk_evse.elf: esp-idf/app_trace/libapp_trace.a
eindwerk_evse.elf: esp-idf/asio/libasio.a
eindwerk_evse.elf: esp-idf/cbor/libcbor.a
eindwerk_evse.elf: esp-idf/coap/libcoap.a
eindwerk_evse.elf: esp-idf/console/libconsole.a
eindwerk_evse.elf: esp-idf/nghttp/libnghttp.a
eindwerk_evse.elf: esp-idf/esp-tls/libesp-tls.a
eindwerk_evse.elf: esp-idf/esp_adc_cal/libesp_adc_cal.a
eindwerk_evse.elf: esp-idf/esp_gdbstub/libesp_gdbstub.a
eindwerk_evse.elf: esp-idf/tcp_transport/libtcp_transport.a
eindwerk_evse.elf: esp-idf/esp_http_client/libesp_http_client.a
eindwerk_evse.elf: esp-idf/esp_http_server/libesp_http_server.a
eindwerk_evse.elf: esp-idf/esp_https_ota/libesp_https_ota.a
eindwerk_evse.elf: esp-idf/protobuf-c/libprotobuf-c.a
eindwerk_evse.elf: esp-idf/protocomm/libprotocomm.a
eindwerk_evse.elf: esp-idf/mdns/libmdns.a
eindwerk_evse.elf: esp-idf/esp_local_ctrl/libesp_local_ctrl.a
eindwerk_evse.elf: esp-idf/esp_websocket_client/libesp_websocket_client.a
eindwerk_evse.elf: esp-idf/expat/libexpat.a
eindwerk_evse.elf: esp-idf/wear_levelling/libwear_levelling.a
eindwerk_evse.elf: esp-idf/sdmmc/libsdmmc.a
eindwerk_evse.elf: esp-idf/fatfs/libfatfs.a
eindwerk_evse.elf: esp-idf/freemodbus/libfreemodbus.a
eindwerk_evse.elf: esp-idf/jsmn/libjsmn.a
eindwerk_evse.elf: esp-idf/json/libjson.a
eindwerk_evse.elf: esp-idf/libsodium/liblibsodium.a
eindwerk_evse.elf: esp-idf/mqtt/libmqtt.a
eindwerk_evse.elf: esp-idf/openssl/libopenssl.a
eindwerk_evse.elf: esp-idf/spiffs/libspiffs.a
eindwerk_evse.elf: esp-idf/ulp/libulp.a
eindwerk_evse.elf: esp-idf/unity/libunity.a
eindwerk_evse.elf: esp-idf/wifi_provisioning/libwifi_provisioning.a
eindwerk_evse.elf: esp-idf/main/libmain.a
eindwerk_evse.elf: esp-idf/asio/libasio.a
eindwerk_evse.elf: esp-idf/cbor/libcbor.a
eindwerk_evse.elf: esp-idf/coap/libcoap.a
eindwerk_evse.elf: esp-idf/esp_adc_cal/libesp_adc_cal.a
eindwerk_evse.elf: esp-idf/esp_gdbstub/libesp_gdbstub.a
eindwerk_evse.elf: esp-idf/esp_https_ota/libesp_https_ota.a
eindwerk_evse.elf: esp-idf/esp_http_client/libesp_http_client.a
eindwerk_evse.elf: esp-idf/esp_local_ctrl/libesp_local_ctrl.a
eindwerk_evse.elf: esp-idf/esp_websocket_client/libesp_websocket_client.a
eindwerk_evse.elf: esp-idf/expat/libexpat.a
eindwerk_evse.elf: esp-idf/fatfs/libfatfs.a
eindwerk_evse.elf: esp-idf/wear_levelling/libwear_levelling.a
eindwerk_evse.elf: esp-idf/sdmmc/libsdmmc.a
eindwerk_evse.elf: esp-idf/freemodbus/libfreemodbus.a
eindwerk_evse.elf: esp-idf/jsmn/libjsmn.a
eindwerk_evse.elf: esp-idf/libsodium/liblibsodium.a
eindwerk_evse.elf: esp-idf/mqtt/libmqtt.a
eindwerk_evse.elf: esp-idf/tcp_transport/libtcp_transport.a
eindwerk_evse.elf: esp-idf/esp-tls/libesp-tls.a
eindwerk_evse.elf: esp-idf/openssl/libopenssl.a
eindwerk_evse.elf: esp-idf/spiffs/libspiffs.a
eindwerk_evse.elf: esp-idf/ulp/libulp.a
eindwerk_evse.elf: esp-idf/unity/libunity.a
eindwerk_evse.elf: esp-idf/wifi_provisioning/libwifi_provisioning.a
eindwerk_evse.elf: esp-idf/protocomm/libprotocomm.a
eindwerk_evse.elf: esp-idf/esp_http_server/libesp_http_server.a
eindwerk_evse.elf: esp-idf/nghttp/libnghttp.a
eindwerk_evse.elf: esp-idf/protobuf-c/libprotobuf-c.a
eindwerk_evse.elf: esp-idf/mdns/libmdns.a
eindwerk_evse.elf: esp-idf/console/libconsole.a
eindwerk_evse.elf: esp-idf/json/libjson.a
eindwerk_evse.elf: esp-idf/esp_ringbuf/libesp_ringbuf.a
eindwerk_evse.elf: esp-idf/driver/libdriver.a
eindwerk_evse.elf: esp-idf/wpa_supplicant/libwpa_supplicant.a
eindwerk_evse.elf: esp-idf/efuse/libefuse.a
eindwerk_evse.elf: esp-idf/bootloader_support/libbootloader_support.a
eindwerk_evse.elf: esp-idf/app_update/libapp_update.a
eindwerk_evse.elf: esp-idf/spi_flash/libspi_flash.a
eindwerk_evse.elf: esp-idf/nvs_flash/libnvs_flash.a
eindwerk_evse.elf: esp-idf/esp_wifi/libesp_wifi.a
eindwerk_evse.elf: esp-idf/esp_eth/libesp_eth.a
eindwerk_evse.elf: esp-idf/lwip/liblwip.a
eindwerk_evse.elf: esp-idf/tcpip_adapter/libtcpip_adapter.a
eindwerk_evse.elf: esp-idf/esp_event/libesp_event.a
eindwerk_evse.elf: esp-idf/pthread/libpthread.a
eindwerk_evse.elf: esp-idf/espcoredump/libespcoredump.a
eindwerk_evse.elf: esp-idf/esp32/libesp32.a
eindwerk_evse.elf: esp-idf/xtensa/libxtensa.a
eindwerk_evse.elf: esp-idf/esp_common/libesp_common.a
eindwerk_evse.elf: esp-idf/esp_rom/libesp_rom.a
eindwerk_evse.elf: esp-idf/soc/libsoc.a
eindwerk_evse.elf: esp-idf/log/liblog.a
eindwerk_evse.elf: esp-idf/heap/libheap.a
eindwerk_evse.elf: esp-idf/freertos/libfreertos.a
eindwerk_evse.elf: esp-idf/vfs/libvfs.a
eindwerk_evse.elf: esp-idf/newlib/libnewlib.a
eindwerk_evse.elf: esp-idf/cxx/libcxx.a
eindwerk_evse.elf: esp-idf/app_trace/libapp_trace.a
eindwerk_evse.elf: esp-idf/mbedtls/mbedtls/library/libmbedtls.a
eindwerk_evse.elf: esp-idf/mbedtls/mbedtls/library/libmbedcrypto.a
eindwerk_evse.elf: esp-idf/mbedtls/mbedtls/library/libmbedx509.a
eindwerk_evse.elf: /home/gungnir/esp/esp-idf/components/esp_wifi/lib_esp32/libcoexist.a
eindwerk_evse.elf: /home/gungnir/esp/esp-idf/components/esp_wifi/lib_esp32/libcore.a
eindwerk_evse.elf: /home/gungnir/esp/esp-idf/components/esp_wifi/lib_esp32/libespnow.a
eindwerk_evse.elf: /home/gungnir/esp/esp-idf/components/esp_wifi/lib_esp32/libmesh.a
eindwerk_evse.elf: /home/gungnir/esp/esp-idf/components/esp_wifi/lib_esp32/libnet80211.a
eindwerk_evse.elf: /home/gungnir/esp/esp-idf/components/esp_wifi/lib_esp32/libphy.a
eindwerk_evse.elf: /home/gungnir/esp/esp-idf/components/esp_wifi/lib_esp32/libpp.a
eindwerk_evse.elf: /home/gungnir/esp/esp-idf/components/esp_wifi/lib_esp32/librtc.a
eindwerk_evse.elf: /home/gungnir/esp/esp-idf/components/esp_wifi/lib_esp32/libsmartconfig.a
eindwerk_evse.elf: esp-idf/esp_ringbuf/libesp_ringbuf.a
eindwerk_evse.elf: esp-idf/driver/libdriver.a
eindwerk_evse.elf: esp-idf/wpa_supplicant/libwpa_supplicant.a
eindwerk_evse.elf: esp-idf/efuse/libefuse.a
eindwerk_evse.elf: esp-idf/bootloader_support/libbootloader_support.a
eindwerk_evse.elf: esp-idf/app_update/libapp_update.a
eindwerk_evse.elf: esp-idf/spi_flash/libspi_flash.a
eindwerk_evse.elf: esp-idf/nvs_flash/libnvs_flash.a
eindwerk_evse.elf: esp-idf/esp_wifi/libesp_wifi.a
eindwerk_evse.elf: esp-idf/esp_eth/libesp_eth.a
eindwerk_evse.elf: esp-idf/lwip/liblwip.a
eindwerk_evse.elf: esp-idf/tcpip_adapter/libtcpip_adapter.a
eindwerk_evse.elf: esp-idf/esp_event/libesp_event.a
eindwerk_evse.elf: esp-idf/pthread/libpthread.a
eindwerk_evse.elf: esp-idf/espcoredump/libespcoredump.a
eindwerk_evse.elf: esp-idf/esp32/libesp32.a
eindwerk_evse.elf: esp-idf/xtensa/libxtensa.a
eindwerk_evse.elf: esp-idf/esp_common/libesp_common.a
eindwerk_evse.elf: esp-idf/esp_rom/libesp_rom.a
eindwerk_evse.elf: esp-idf/soc/libsoc.a
eindwerk_evse.elf: esp-idf/log/liblog.a
eindwerk_evse.elf: esp-idf/heap/libheap.a
eindwerk_evse.elf: esp-idf/freertos/libfreertos.a
eindwerk_evse.elf: esp-idf/vfs/libvfs.a
eindwerk_evse.elf: esp-idf/newlib/libnewlib.a
eindwerk_evse.elf: esp-idf/cxx/libcxx.a
eindwerk_evse.elf: esp-idf/app_trace/libapp_trace.a
eindwerk_evse.elf: esp-idf/mbedtls/mbedtls/library/libmbedtls.a
eindwerk_evse.elf: esp-idf/mbedtls/mbedtls/library/libmbedcrypto.a
eindwerk_evse.elf: esp-idf/mbedtls/mbedtls/library/libmbedx509.a
eindwerk_evse.elf: /home/gungnir/esp/esp-idf/components/esp_wifi/lib_esp32/libcoexist.a
eindwerk_evse.elf: /home/gungnir/esp/esp-idf/components/esp_wifi/lib_esp32/libcore.a
eindwerk_evse.elf: /home/gungnir/esp/esp-idf/components/esp_wifi/lib_esp32/libespnow.a
eindwerk_evse.elf: /home/gungnir/esp/esp-idf/components/esp_wifi/lib_esp32/libmesh.a
eindwerk_evse.elf: /home/gungnir/esp/esp-idf/components/esp_wifi/lib_esp32/libnet80211.a
eindwerk_evse.elf: /home/gungnir/esp/esp-idf/components/esp_wifi/lib_esp32/libphy.a
eindwerk_evse.elf: /home/gungnir/esp/esp-idf/components/esp_wifi/lib_esp32/libpp.a
eindwerk_evse.elf: /home/gungnir/esp/esp-idf/components/esp_wifi/lib_esp32/librtc.a
eindwerk_evse.elf: /home/gungnir/esp/esp-idf/components/esp_wifi/lib_esp32/libsmartconfig.a
eindwerk_evse.elf: /home/gungnir/esp/esp-idf/components/xtensa/esp32/libhal.a
eindwerk_evse.elf: esp-idf/newlib/libnewlib.a
eindwerk_evse.elf: esp-idf/esp32/esp32_out.ld
eindwerk_evse.elf: esp-idf/esp32/ld/esp32.project.ld
eindwerk_evse.elf: /home/gungnir/esp/esp-idf/components/esp32/ld/esp32.peripherals.ld
eindwerk_evse.elf: /home/gungnir/esp/esp-idf/components/esp_rom/esp32/ld/esp32.rom.ld
eindwerk_evse.elf: /home/gungnir/esp/esp-idf/components/esp_rom/esp32/ld/esp32.rom.libgcc.ld
eindwerk_evse.elf: /home/gungnir/esp/esp-idf/components/esp_rom/esp32/ld/esp32.rom.syscalls.ld
eindwerk_evse.elf: /home/gungnir/esp/esp-idf/components/esp_rom/esp32/ld/esp32.rom.newlib-data.ld
eindwerk_evse.elf: /home/gungnir/esp/esp-idf/components/esp_rom/esp32/ld/esp32.rom.newlib-funcs.ld
eindwerk_evse.elf: CMakeFiles/eindwerk_evse.elf.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/HDD/Documents/projecten/eindwerk/eindwerk_code/ESP32_code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable eindwerk_evse.elf"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/eindwerk_evse.elf.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/eindwerk_evse.elf.dir/build: eindwerk_evse.elf

.PHONY : CMakeFiles/eindwerk_evse.elf.dir/build

CMakeFiles/eindwerk_evse.elf.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/eindwerk_evse.elf.dir/cmake_clean.cmake
.PHONY : CMakeFiles/eindwerk_evse.elf.dir/clean

CMakeFiles/eindwerk_evse.elf.dir/depend: project_elf_src.c
	cd /HDD/Documents/projecten/eindwerk/eindwerk_code/ESP32_code/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /HDD/Documents/projecten/eindwerk/eindwerk_code/ESP32_code /HDD/Documents/projecten/eindwerk/eindwerk_code/ESP32_code /HDD/Documents/projecten/eindwerk/eindwerk_code/ESP32_code/build /HDD/Documents/projecten/eindwerk/eindwerk_code/ESP32_code/build /HDD/Documents/projecten/eindwerk/eindwerk_code/ESP32_code/build/CMakeFiles/eindwerk_evse.elf.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/eindwerk_evse.elf.dir/depend

