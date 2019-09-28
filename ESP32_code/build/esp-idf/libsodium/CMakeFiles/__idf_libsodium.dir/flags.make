# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

# compile ASM with /home/gungnir/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc
# compile C with /home/gungnir/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc
ASM_FLAGS =   -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -nostdlib -Wall -Werror=all -Wno-error=unused-function -Wno-error=unused-but-set-variable -Wno-error=unused-variable -Wno-error=deprecated-declarations -Wextra -Wno-unused-parameter -Wno-sign-compare -ggdb -Og -D_GNU_SOURCE -DIDF_VER=\"v4.1-dev-281-g96b96ae24\" -DGCC_NOT_5_2_0 -DESP_PLATFORM

ASM_DEFINES = -DCONFIGURED -DHAVE_WEAK_SYMBOLS -DMBEDTLS_CONFIG_FILE=\"mbedtls/esp_config.h\" -DNATIVE_LITTLE_ENDIAN -D__STDC_CONSTANT_MACROS -D__STDC_LIMIT_MACROS

ASM_INCLUDES = -I/HDD/Documents/projecten/eindwerk/eindwerk_code/ESP32_code/build/config -I/home/gungnir/esp/esp-idf/components/libsodium/libsodium/src/libsodium/include -I/home/gungnir/esp/esp-idf/components/libsodium/port_include -I/home/gungnir/esp/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium -I/home/gungnir/esp/esp-idf/components/libsodium/port_include/sodium -I/home/gungnir/esp/esp-idf/components/libsodium/port -I/home/gungnir/esp/esp-idf/components/newlib/platform_include -I/home/gungnir/esp/esp-idf/components/freertos/include -I/home/gungnir/esp/esp-idf/components/heap/include -I/home/gungnir/esp/esp-idf/components/log/include -I/home/gungnir/esp/esp-idf/components/soc/esp32/include -I/home/gungnir/esp/esp-idf/components/soc/include -I/home/gungnir/esp/esp-idf/components/esp_rom/include -I/home/gungnir/esp/esp-idf/components/esp_common/include -I/home/gungnir/esp/esp-idf/components/xtensa/include -I/home/gungnir/esp/esp-idf/components/xtensa/esp32/include -I/home/gungnir/esp/esp-idf/components/esp32/include -I/home/gungnir/esp/esp-idf/components/driver/include -I/home/gungnir/esp/esp-idf/components/esp_ringbuf/include -I/home/gungnir/esp/esp-idf/components/esp_event/include -I/home/gungnir/esp/esp-idf/components/tcpip_adapter/include -I/home/gungnir/esp/esp-idf/components/lwip/include/apps -I/home/gungnir/esp/esp-idf/components/lwip/include/apps/sntp -I/home/gungnir/esp/esp-idf/components/lwip/lwip/src/include -I/home/gungnir/esp/esp-idf/components/lwip/port/esp32/include -I/home/gungnir/esp/esp-idf/components/lwip/port/esp32/include/arch -I/home/gungnir/esp/esp-idf/components/vfs/include -I/home/gungnir/esp/esp-idf/components/esp_wifi/include -I/home/gungnir/esp/esp-idf/components/esp_wifi/esp32/include -I/home/gungnir/esp/esp-idf/components/esp_eth/include -I/home/gungnir/esp/esp-idf/components/efuse/include -I/home/gungnir/esp/esp-idf/components/efuse/esp32/include -I/home/gungnir/esp/esp-idf/components/app_trace/include -I/home/gungnir/esp/esp-idf/components/mbedtls/port/include -I/home/gungnir/esp/esp-idf/components/mbedtls/mbedtls/include 

C_FLAGS = -mlongcalls -Wno-frame-address   -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -nostdlib -Wall -Werror=all -Wno-error=unused-function -Wno-error=unused-but-set-variable -Wno-error=unused-variable -Wno-error=deprecated-declarations -Wextra -Wno-unused-parameter -Wno-sign-compare -ggdb -Og -std=gnu99 -Wno-old-style-declaration -D_GNU_SOURCE -DIDF_VER=\"v4.1-dev-281-g96b96ae24\" -DGCC_NOT_5_2_0 -DESP_PLATFORM

C_DEFINES = -DCONFIGURED -DHAVE_WEAK_SYMBOLS -DMBEDTLS_CONFIG_FILE=\"mbedtls/esp_config.h\" -DNATIVE_LITTLE_ENDIAN -D__STDC_CONSTANT_MACROS -D__STDC_LIMIT_MACROS

C_INCLUDES = -I/HDD/Documents/projecten/eindwerk/eindwerk_code/ESP32_code/build/config -I/home/gungnir/esp/esp-idf/components/libsodium/libsodium/src/libsodium/include -I/home/gungnir/esp/esp-idf/components/libsodium/port_include -I/home/gungnir/esp/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium -I/home/gungnir/esp/esp-idf/components/libsodium/port_include/sodium -I/home/gungnir/esp/esp-idf/components/libsodium/port -I/home/gungnir/esp/esp-idf/components/newlib/platform_include -I/home/gungnir/esp/esp-idf/components/freertos/include -I/home/gungnir/esp/esp-idf/components/heap/include -I/home/gungnir/esp/esp-idf/components/log/include -I/home/gungnir/esp/esp-idf/components/soc/esp32/include -I/home/gungnir/esp/esp-idf/components/soc/include -I/home/gungnir/esp/esp-idf/components/esp_rom/include -I/home/gungnir/esp/esp-idf/components/esp_common/include -I/home/gungnir/esp/esp-idf/components/xtensa/include -I/home/gungnir/esp/esp-idf/components/xtensa/esp32/include -I/home/gungnir/esp/esp-idf/components/esp32/include -I/home/gungnir/esp/esp-idf/components/driver/include -I/home/gungnir/esp/esp-idf/components/esp_ringbuf/include -I/home/gungnir/esp/esp-idf/components/esp_event/include -I/home/gungnir/esp/esp-idf/components/tcpip_adapter/include -I/home/gungnir/esp/esp-idf/components/lwip/include/apps -I/home/gungnir/esp/esp-idf/components/lwip/include/apps/sntp -I/home/gungnir/esp/esp-idf/components/lwip/lwip/src/include -I/home/gungnir/esp/esp-idf/components/lwip/port/esp32/include -I/home/gungnir/esp/esp-idf/components/lwip/port/esp32/include/arch -I/home/gungnir/esp/esp-idf/components/vfs/include -I/home/gungnir/esp/esp-idf/components/esp_wifi/include -I/home/gungnir/esp/esp-idf/components/esp_wifi/esp32/include -I/home/gungnir/esp/esp-idf/components/esp_eth/include -I/home/gungnir/esp/esp-idf/components/efuse/include -I/home/gungnir/esp/esp-idf/components/efuse/esp32/include -I/home/gungnir/esp/esp-idf/components/app_trace/include -I/home/gungnir/esp/esp-idf/components/mbedtls/port/include -I/home/gungnir/esp/esp-idf/components/mbedtls/mbedtls/include 

# Custom flags: esp-idf/libsodium/CMakeFiles/__idf_libsodium.dir/libsodium/src/libsodium/crypto_pwhash/argon2/argon2-core.c.obj_FLAGS = -Wno-type-limits

# Custom flags: esp-idf/libsodium/CMakeFiles/__idf_libsodium.dir/libsodium/src/libsodium/crypto_pwhash/argon2/argon2-fill-block-ref.c.obj_FLAGS = -Wno-unknown-pragmas

# Custom flags: esp-idf/libsodium/CMakeFiles/__idf_libsodium.dir/libsodium/src/libsodium/crypto_pwhash/argon2/pwhash_argon2i.c.obj_FLAGS = -Wno-type-limits

# Custom flags: esp-idf/libsodium/CMakeFiles/__idf_libsodium.dir/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/pwhash_scryptsalsa208sha256.c.obj_FLAGS = -Wno-type-limits

# Custom flags: esp-idf/libsodium/CMakeFiles/__idf_libsodium.dir/libsodium/src/libsodium/crypto_shorthash/siphash24/ref/shorthash_siphash24_ref.c.obj_FLAGS = -Wno-implicit-fallthrough

# Custom flags: esp-idf/libsodium/CMakeFiles/__idf_libsodium.dir/libsodium/src/libsodium/crypto_shorthash/siphash24/ref/shorthash_siphashx24_ref.c.obj_FLAGS = -Wno-implicit-fallthrough

# Custom flags: esp-idf/libsodium/CMakeFiles/__idf_libsodium.dir/libsodium/src/libsodium/randombytes/randombytes.c.obj_FLAGS = -DRANDOMBYTES_DEFAULT_IMPLEMENTATION

# Custom flags: esp-idf/libsodium/CMakeFiles/__idf_libsodium.dir/libsodium/src/libsodium/sodium/utils.c.obj_FLAGS = -Wno-unused-variable

