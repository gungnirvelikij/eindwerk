# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.7

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
CMAKE_SOURCE_DIR = /home/bas/project_eindwerk.ssh/eindwerk

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/bas/project_eindwerk.ssh/eindwerk/build

# Include any dependencies generated for this target.
include CMakeFiles/ledc.elf.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ledc.elf.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ledc.elf.dir/flags.make

project_elf_src.c:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/bas/project_eindwerk.ssh/eindwerk/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating project_elf_src.c"
	/usr/bin/cmake -E touch /home/bas/project_eindwerk.ssh/eindwerk/build/project_elf_src.c

CMakeFiles/ledc.elf.dir/project_elf_src.c.obj: CMakeFiles/ledc.elf.dir/flags.make
CMakeFiles/ledc.elf.dir/project_elf_src.c.obj: project_elf_src.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bas/project_eindwerk.ssh/eindwerk/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/ledc.elf.dir/project_elf_src.c.obj"
	/home/bas/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ledc.elf.dir/project_elf_src.c.obj   -c /home/bas/project_eindwerk.ssh/eindwerk/build/project_elf_src.c

CMakeFiles/ledc.elf.dir/project_elf_src.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ledc.elf.dir/project_elf_src.c.i"
	/home/bas/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/bas/project_eindwerk.ssh/eindwerk/build/project_elf_src.c > CMakeFiles/ledc.elf.dir/project_elf_src.c.i

CMakeFiles/ledc.elf.dir/project_elf_src.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ledc.elf.dir/project_elf_src.c.s"
	/home/bas/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/bas/project_eindwerk.ssh/eindwerk/build/project_elf_src.c -o CMakeFiles/ledc.elf.dir/project_elf_src.c.s

CMakeFiles/ledc.elf.dir/project_elf_src.c.obj.requires:

.PHONY : CMakeFiles/ledc.elf.dir/project_elf_src.c.obj.requires

CMakeFiles/ledc.elf.dir/project_elf_src.c.obj.provides: CMakeFiles/ledc.elf.dir/project_elf_src.c.obj.requires
	$(MAKE) -f CMakeFiles/ledc.elf.dir/build.make CMakeFiles/ledc.elf.dir/project_elf_src.c.obj.provides.build
.PHONY : CMakeFiles/ledc.elf.dir/project_elf_src.c.obj.provides

CMakeFiles/ledc.elf.dir/project_elf_src.c.obj.provides.build: CMakeFiles/ledc.elf.dir/project_elf_src.c.obj


# Object files for target ledc.elf
ledc_elf_OBJECTS = \
"CMakeFiles/ledc.elf.dir/project_elf_src.c.obj"

# External object files for target ledc.elf
ledc_elf_EXTERNAL_OBJECTS =

ledc.elf: CMakeFiles/ledc.elf.dir/project_elf_src.c.obj
ledc.elf: CMakeFiles/ledc.elf.dir/build.make
ledc.elf: esp-idf/esp_ringbuf/libesp_ringbuf.a
ledc.elf: esp-idf/driver/libdriver.a
ledc.elf: esp-idf/wpa_supplicant/libwpa_supplicant.a
ledc.elf: esp-idf/efuse/libefuse.a
ledc.elf: esp-idf/bootloader_support/libbootloader_support.a
ledc.elf: esp-idf/app_update/libapp_update.a
ledc.elf: esp-idf/spi_flash/libspi_flash.a
ledc.elf: esp-idf/nvs_flash/libnvs_flash.a
ledc.elf: esp-idf/esp_wifi/libesp_wifi.a
ledc.elf: esp-idf/esp_eth/libesp_eth.a
ledc.elf: esp-idf/lwip/liblwip.a
ledc.elf: esp-idf/tcpip_adapter/libtcpip_adapter.a
ledc.elf: esp-idf/esp_event/libesp_event.a
ledc.elf: esp-idf/pthread/libpthread.a
ledc.elf: esp-idf/espcoredump/libespcoredump.a
ledc.elf: esp-idf/esp32/libesp32.a
ledc.elf: esp-idf/xtensa/libxtensa.a
ledc.elf: esp-idf/esp_common/libesp_common.a
ledc.elf: esp-idf/esp_rom/libesp_rom.a
ledc.elf: esp-idf/soc/libsoc.a
ledc.elf: esp-idf/log/liblog.a
ledc.elf: esp-idf/heap/libheap.a
ledc.elf: esp-idf/freertos/libfreertos.a
ledc.elf: esp-idf/vfs/libvfs.a
ledc.elf: esp-idf/newlib/libnewlib.a
ledc.elf: esp-idf/cxx/libcxx.a
ledc.elf: esp-idf/app_trace/libapp_trace.a
ledc.elf: esp-idf/asio/libasio.a
ledc.elf: esp-idf/cbor/libcbor.a
ledc.elf: esp-idf/coap/libcoap.a
ledc.elf: esp-idf/console/libconsole.a
ledc.elf: esp-idf/nghttp/libnghttp.a
ledc.elf: esp-idf/esp-tls/libesp-tls.a
ledc.elf: esp-idf/esp_adc_cal/libesp_adc_cal.a
ledc.elf: esp-idf/esp_gdbstub/libesp_gdbstub.a
ledc.elf: esp-idf/tcp_transport/libtcp_transport.a
ledc.elf: esp-idf/esp_http_client/libesp_http_client.a
ledc.elf: esp-idf/esp_http_server/libesp_http_server.a
ledc.elf: esp-idf/esp_https_ota/libesp_https_ota.a
ledc.elf: esp-idf/protobuf-c/libprotobuf-c.a
ledc.elf: esp-idf/protocomm/libprotocomm.a
ledc.elf: esp-idf/mdns/libmdns.a
ledc.elf: esp-idf/esp_local_ctrl/libesp_local_ctrl.a
ledc.elf: esp-idf/esp_websocket_client/libesp_websocket_client.a
ledc.elf: esp-idf/expat/libexpat.a
ledc.elf: esp-idf/wear_levelling/libwear_levelling.a
ledc.elf: esp-idf/sdmmc/libsdmmc.a
ledc.elf: esp-idf/fatfs/libfatfs.a
ledc.elf: esp-idf/freemodbus/libfreemodbus.a
ledc.elf: esp-idf/jsmn/libjsmn.a
ledc.elf: esp-idf/json/libjson.a
ledc.elf: esp-idf/libsodium/liblibsodium.a
ledc.elf: esp-idf/mqtt/libmqtt.a
ledc.elf: esp-idf/openssl/libopenssl.a
ledc.elf: esp-idf/spiffs/libspiffs.a
ledc.elf: esp-idf/ulp/libulp.a
ledc.elf: esp-idf/unity/libunity.a
ledc.elf: esp-idf/wifi_provisioning/libwifi_provisioning.a
ledc.elf: esp-idf/main/libmain.a
ledc.elf: esp-idf/esp_ringbuf/libesp_ringbuf.a
ledc.elf: esp-idf/driver/libdriver.a
ledc.elf: esp-idf/wpa_supplicant/libwpa_supplicant.a
ledc.elf: esp-idf/efuse/libefuse.a
ledc.elf: esp-idf/bootloader_support/libbootloader_support.a
ledc.elf: esp-idf/app_update/libapp_update.a
ledc.elf: esp-idf/spi_flash/libspi_flash.a
ledc.elf: esp-idf/nvs_flash/libnvs_flash.a
ledc.elf: esp-idf/esp_wifi/libesp_wifi.a
ledc.elf: esp-idf/esp_eth/libesp_eth.a
ledc.elf: esp-idf/lwip/liblwip.a
ledc.elf: esp-idf/tcpip_adapter/libtcpip_adapter.a
ledc.elf: esp-idf/esp_event/libesp_event.a
ledc.elf: esp-idf/pthread/libpthread.a
ledc.elf: esp-idf/espcoredump/libespcoredump.a
ledc.elf: esp-idf/esp32/libesp32.a
ledc.elf: esp-idf/xtensa/libxtensa.a
ledc.elf: esp-idf/esp_common/libesp_common.a
ledc.elf: esp-idf/esp_rom/libesp_rom.a
ledc.elf: esp-idf/soc/libsoc.a
ledc.elf: esp-idf/log/liblog.a
ledc.elf: esp-idf/heap/libheap.a
ledc.elf: esp-idf/freertos/libfreertos.a
ledc.elf: esp-idf/vfs/libvfs.a
ledc.elf: esp-idf/newlib/libnewlib.a
ledc.elf: esp-idf/cxx/libcxx.a
ledc.elf: esp-idf/app_trace/libapp_trace.a
ledc.elf: esp-idf/asio/libasio.a
ledc.elf: esp-idf/cbor/libcbor.a
ledc.elf: esp-idf/coap/libcoap.a
ledc.elf: esp-idf/console/libconsole.a
ledc.elf: esp-idf/nghttp/libnghttp.a
ledc.elf: esp-idf/esp-tls/libesp-tls.a
ledc.elf: esp-idf/esp_adc_cal/libesp_adc_cal.a
ledc.elf: esp-idf/esp_gdbstub/libesp_gdbstub.a
ledc.elf: esp-idf/tcp_transport/libtcp_transport.a
ledc.elf: esp-idf/esp_http_client/libesp_http_client.a
ledc.elf: esp-idf/esp_http_server/libesp_http_server.a
ledc.elf: esp-idf/esp_https_ota/libesp_https_ota.a
ledc.elf: esp-idf/esp_http_client/libesp_http_client.a
ledc.elf: esp-idf/protobuf-c/libprotobuf-c.a
ledc.elf: esp-idf/protocomm/libprotocomm.a
ledc.elf: esp-idf/mdns/libmdns.a
ledc.elf: esp-idf/esp_local_ctrl/libesp_local_ctrl.a
ledc.elf: esp-idf/esp_websocket_client/libesp_websocket_client.a
ledc.elf: esp-idf/expat/libexpat.a
ledc.elf: esp-idf/wear_levelling/libwear_levelling.a
ledc.elf: esp-idf/sdmmc/libsdmmc.a
ledc.elf: esp-idf/fatfs/libfatfs.a
ledc.elf: esp-idf/wear_levelling/libwear_levelling.a
ledc.elf: esp-idf/sdmmc/libsdmmc.a
ledc.elf: esp-idf/freemodbus/libfreemodbus.a
ledc.elf: esp-idf/jsmn/libjsmn.a
ledc.elf: esp-idf/json/libjson.a
ledc.elf: esp-idf/libsodium/liblibsodium.a
ledc.elf: esp-idf/mqtt/libmqtt.a
ledc.elf: esp-idf/tcp_transport/libtcp_transport.a
ledc.elf: esp-idf/esp-tls/libesp-tls.a
ledc.elf: esp-idf/openssl/libopenssl.a
ledc.elf: esp-idf/spiffs/libspiffs.a
ledc.elf: esp-idf/ulp/libulp.a
ledc.elf: esp-idf/unity/libunity.a
ledc.elf: esp-idf/wifi_provisioning/libwifi_provisioning.a
ledc.elf: esp-idf/protocomm/libprotocomm.a
ledc.elf: esp-idf/esp_http_server/libesp_http_server.a
ledc.elf: esp-idf/nghttp/libnghttp.a
ledc.elf: esp-idf/protobuf-c/libprotobuf-c.a
ledc.elf: esp-idf/mdns/libmdns.a
ledc.elf: esp-idf/console/libconsole.a
ledc.elf: esp-idf/json/libjson.a
ledc.elf: esp-idf/cxx/libcxx.a
ledc.elf: esp-idf/newlib/libnewlib.a
ledc.elf: esp-idf/freertos/libfreertos.a
ledc.elf: esp-idf/heap/libheap.a
ledc.elf: esp-idf/log/liblog.a
ledc.elf: esp-idf/soc/libsoc.a
ledc.elf: esp-idf/esp_rom/libesp_rom.a
ledc.elf: esp-idf/esp_common/libesp_common.a
ledc.elf: esp-idf/xtensa/libxtensa.a
ledc.elf: esp-idf/esp32/libesp32.a
ledc.elf: esp-idf/esp_ringbuf/libesp_ringbuf.a
ledc.elf: esp-idf/lwip/liblwip.a
ledc.elf: esp-idf/mbedtls/mbedtls/library/libmbedtls.a
ledc.elf: esp-idf/mbedtls/mbedtls/library/libmbedcrypto.a
ledc.elf: esp-idf/mbedtls/mbedtls/library/libmbedx509.a
ledc.elf: esp-idf/bootloader_support/libbootloader_support.a
ledc.elf: esp-idf/spi_flash/libspi_flash.a
ledc.elf: esp-idf/efuse/libefuse.a
ledc.elf: esp-idf/app_update/libapp_update.a
ledc.elf: esp-idf/wpa_supplicant/libwpa_supplicant.a
ledc.elf: esp-idf/nvs_flash/libnvs_flash.a
ledc.elf: /home/bas/esp32/esp-idf/components/esp_wifi/lib_esp32/libcoexist.a
ledc.elf: /home/bas/esp32/esp-idf/components/esp_wifi/lib_esp32/libcore.a
ledc.elf: /home/bas/esp32/esp-idf/components/esp_wifi/lib_esp32/libespnow.a
ledc.elf: /home/bas/esp32/esp-idf/components/esp_wifi/lib_esp32/libmesh.a
ledc.elf: /home/bas/esp32/esp-idf/components/esp_wifi/lib_esp32/libnet80211.a
ledc.elf: /home/bas/esp32/esp-idf/components/esp_wifi/lib_esp32/libphy.a
ledc.elf: /home/bas/esp32/esp-idf/components/esp_wifi/lib_esp32/libpp.a
ledc.elf: /home/bas/esp32/esp-idf/components/esp_wifi/lib_esp32/librtc.a
ledc.elf: /home/bas/esp32/esp-idf/components/esp_wifi/lib_esp32/libsmartconfig.a
ledc.elf: esp-idf/esp_event/libesp_event.a
ledc.elf: esp-idf/tcpip_adapter/libtcpip_adapter.a
ledc.elf: esp-idf/driver/libdriver.a
ledc.elf: esp-idf/vfs/libvfs.a
ledc.elf: esp-idf/esp_wifi/libesp_wifi.a
ledc.elf: esp-idf/esp_eth/libesp_eth.a
ledc.elf: esp-idf/app_trace/libapp_trace.a
ledc.elf: esp-idf/pthread/libpthread.a
ledc.elf: esp-idf/espcoredump/libespcoredump.a
ledc.elf: esp-idf/cxx/libcxx.a
ledc.elf: esp-idf/newlib/libnewlib.a
ledc.elf: esp-idf/freertos/libfreertos.a
ledc.elf: esp-idf/heap/libheap.a
ledc.elf: esp-idf/log/liblog.a
ledc.elf: esp-idf/soc/libsoc.a
ledc.elf: esp-idf/esp_rom/libesp_rom.a
ledc.elf: esp-idf/esp_common/libesp_common.a
ledc.elf: esp-idf/xtensa/libxtensa.a
ledc.elf: esp-idf/esp32/libesp32.a
ledc.elf: esp-idf/esp_ringbuf/libesp_ringbuf.a
ledc.elf: esp-idf/lwip/liblwip.a
ledc.elf: esp-idf/mbedtls/mbedtls/library/libmbedtls.a
ledc.elf: esp-idf/mbedtls/mbedtls/library/libmbedcrypto.a
ledc.elf: esp-idf/mbedtls/mbedtls/library/libmbedx509.a
ledc.elf: esp-idf/bootloader_support/libbootloader_support.a
ledc.elf: esp-idf/spi_flash/libspi_flash.a
ledc.elf: esp-idf/efuse/libefuse.a
ledc.elf: esp-idf/app_update/libapp_update.a
ledc.elf: esp-idf/wpa_supplicant/libwpa_supplicant.a
ledc.elf: esp-idf/nvs_flash/libnvs_flash.a
ledc.elf: /home/bas/esp32/esp-idf/components/esp_wifi/lib_esp32/libcoexist.a
ledc.elf: /home/bas/esp32/esp-idf/components/esp_wifi/lib_esp32/libcore.a
ledc.elf: /home/bas/esp32/esp-idf/components/esp_wifi/lib_esp32/libespnow.a
ledc.elf: /home/bas/esp32/esp-idf/components/esp_wifi/lib_esp32/libmesh.a
ledc.elf: /home/bas/esp32/esp-idf/components/esp_wifi/lib_esp32/libnet80211.a
ledc.elf: /home/bas/esp32/esp-idf/components/esp_wifi/lib_esp32/libphy.a
ledc.elf: /home/bas/esp32/esp-idf/components/esp_wifi/lib_esp32/libpp.a
ledc.elf: /home/bas/esp32/esp-idf/components/esp_wifi/lib_esp32/librtc.a
ledc.elf: /home/bas/esp32/esp-idf/components/esp_wifi/lib_esp32/libsmartconfig.a
ledc.elf: esp-idf/esp_event/libesp_event.a
ledc.elf: esp-idf/tcpip_adapter/libtcpip_adapter.a
ledc.elf: esp-idf/driver/libdriver.a
ledc.elf: esp-idf/vfs/libvfs.a
ledc.elf: esp-idf/esp_wifi/libesp_wifi.a
ledc.elf: esp-idf/esp_eth/libesp_eth.a
ledc.elf: esp-idf/app_trace/libapp_trace.a
ledc.elf: esp-idf/pthread/libpthread.a
ledc.elf: esp-idf/espcoredump/libespcoredump.a
ledc.elf: esp-idf/newlib/libnewlib.a
ledc.elf: /home/bas/esp32/esp-idf/components/xtensa/esp32/libhal.a
ledc.elf: esp-idf/esp32/esp32_out.ld
ledc.elf: esp-idf/esp32/ld/esp32.project.ld
ledc.elf: /home/bas/esp32/esp-idf/components/esp32/ld/esp32.peripherals.ld
ledc.elf: /home/bas/esp32/esp-idf/components/esp_rom/esp32/ld/esp32.rom.ld
ledc.elf: /home/bas/esp32/esp-idf/components/esp_rom/esp32/ld/esp32.rom.libgcc.ld
ledc.elf: /home/bas/esp32/esp-idf/components/esp_rom/esp32/ld/esp32.rom.syscalls.ld
ledc.elf: /home/bas/esp32/esp-idf/components/esp_rom/esp32/ld/esp32.rom.newlib-data.ld
ledc.elf: /home/bas/esp32/esp-idf/components/esp_rom/esp32/ld/esp32.rom.newlib-funcs.ld
ledc.elf: CMakeFiles/ledc.elf.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/bas/project_eindwerk.ssh/eindwerk/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ledc.elf"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ledc.elf.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ledc.elf.dir/build: ledc.elf

.PHONY : CMakeFiles/ledc.elf.dir/build

CMakeFiles/ledc.elf.dir/requires: CMakeFiles/ledc.elf.dir/project_elf_src.c.obj.requires

.PHONY : CMakeFiles/ledc.elf.dir/requires

CMakeFiles/ledc.elf.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ledc.elf.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ledc.elf.dir/clean

CMakeFiles/ledc.elf.dir/depend: project_elf_src.c
	cd /home/bas/project_eindwerk.ssh/eindwerk/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/bas/project_eindwerk.ssh/eindwerk /home/bas/project_eindwerk.ssh/eindwerk /home/bas/project_eindwerk.ssh/eindwerk/build /home/bas/project_eindwerk.ssh/eindwerk/build /home/bas/project_eindwerk.ssh/eindwerk/build/CMakeFiles/ledc.elf.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ledc.elf.dir/depend
