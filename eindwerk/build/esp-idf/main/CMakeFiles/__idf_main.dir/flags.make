# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.7

# compile C with /home/bas/.espressif/tools/xtensa-esp32-elf/esp32-2019r1-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc
C_FLAGS = -mlongcalls -Wno-frame-address   -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -nostdlib -Wall -Werror=all -Wno-error=unused-function -Wno-error=unused-but-set-variable -Wno-error=unused-variable -Wno-error=deprecated-declarations -Wextra -Wno-unused-parameter -Wno-sign-compare -ggdb -Og -std=gnu99 -Wno-old-style-declaration -D_GNU_SOURCE -DIDF_VER=\"v4.1-dev-281-g96b96ae24-dirty\" -DGCC_NOT_5_2_0 -DESP_PLATFORM

C_DEFINES = -DHAVE_CONFIG_H -DMBEDTLS_CONFIG_FILE=\"mbedtls/esp_config.h\" -DUNITY_INCLUDE_CONFIG_H -DWITH_POSIX

C_INCLUDES = -I/home/bas/project_eindwerk.ssh/eindwerk/build/config -I/home/bas/project_eindwerk.ssh/eindwerk/main -I/home/bas/esp32/esp-idf/components/newlib/platform_include -I/home/bas/esp32/esp-idf/components/freertos/include -I/home/bas/esp32/esp-idf/components/heap/include -I/home/bas/esp32/esp-idf/components/log/include -I/home/bas/esp32/esp-idf/components/soc/esp32/include -I/home/bas/esp32/esp-idf/components/soc/include -I/home/bas/esp32/esp-idf/components/esp_rom/include -I/home/bas/esp32/esp-idf/components/esp_common/include -I/home/bas/esp32/esp-idf/components/xtensa/include -I/home/bas/esp32/esp-idf/components/xtensa/esp32/include -I/home/bas/esp32/esp-idf/components/esp32/include -I/home/bas/esp32/esp-idf/components/driver/include -I/home/bas/esp32/esp-idf/components/esp_ringbuf/include -I/home/bas/esp32/esp-idf/components/esp_event/include -I/home/bas/esp32/esp-idf/components/tcpip_adapter/include -I/home/bas/esp32/esp-idf/components/lwip/include/apps -I/home/bas/esp32/esp-idf/components/lwip/include/apps/sntp -I/home/bas/esp32/esp-idf/components/lwip/lwip/src/include -I/home/bas/esp32/esp-idf/components/lwip/port/esp32/include -I/home/bas/esp32/esp-idf/components/lwip/port/esp32/include/arch -I/home/bas/esp32/esp-idf/components/vfs/include -I/home/bas/esp32/esp-idf/components/esp_wifi/include -I/home/bas/esp32/esp-idf/components/esp_wifi/esp32/include -I/home/bas/esp32/esp-idf/components/esp_eth/include -I/home/bas/esp32/esp-idf/components/efuse/include -I/home/bas/esp32/esp-idf/components/efuse/esp32/include -I/home/bas/esp32/esp-idf/components/app_trace/include -I/home/bas/esp32/esp-idf/components/mbedtls/port/include -I/home/bas/esp32/esp-idf/components/mbedtls/mbedtls/include -I/home/bas/esp32/esp-idf/components/wpa_supplicant/include -I/home/bas/esp32/esp-idf/components/wpa_supplicant/port/include -I/home/bas/esp32/esp-idf/components/wpa_supplicant/include/esp_supplicant -I/home/bas/esp32/esp-idf/components/bootloader_support/include -I/home/bas/esp32/esp-idf/components/app_update/include -I/home/bas/esp32/esp-idf/components/spi_flash/include -I/home/bas/esp32/esp-idf/components/nvs_flash/include -I/home/bas/esp32/esp-idf/components/pthread/include -I/home/bas/esp32/esp-idf/components/espcoredump/include -I/home/bas/esp32/esp-idf/components/asio/asio/asio/include -I/home/bas/esp32/esp-idf/components/asio/port/include -I/home/bas/esp32/esp-idf/components/cbor/port/include -I/home/bas/esp32/esp-idf/components/coap/port/include -I/home/bas/esp32/esp-idf/components/coap/port/include/coap -I/home/bas/esp32/esp-idf/components/coap/libcoap/include -I/home/bas/esp32/esp-idf/components/coap/libcoap/include/coap2 -I/home/bas/esp32/esp-idf/components/console -I/home/bas/esp32/esp-idf/components/nghttp/port/include -I/home/bas/esp32/esp-idf/components/nghttp/nghttp2/lib/includes -I/home/bas/esp32/esp-idf/components/esp-tls -I/home/bas/esp32/esp-idf/components/esp_adc_cal/include -I/home/bas/esp32/esp-idf/components/esp_gdbstub/include -I/home/bas/esp32/esp-idf/components/tcp_transport/include -I/home/bas/esp32/esp-idf/components/esp_http_client/include -I/home/bas/esp32/esp-idf/components/esp_http_server/include -I/home/bas/esp32/esp-idf/components/esp_https_ota/include -I/home/bas/esp32/esp-idf/components/protobuf-c/protobuf-c -I/home/bas/esp32/esp-idf/components/protocomm/include/common -I/home/bas/esp32/esp-idf/components/protocomm/include/security -I/home/bas/esp32/esp-idf/components/protocomm/include/transports -I/home/bas/esp32/esp-idf/components/mdns/include -I/home/bas/esp32/esp-idf/components/esp_local_ctrl/include -I/home/bas/esp32/esp-idf/components/esp_websocket_client/include -I/home/bas/esp32/esp-idf/components/expat/expat/expat/lib -I/home/bas/esp32/esp-idf/components/expat/port/include -I/home/bas/esp32/esp-idf/components/wear_levelling/include -I/home/bas/esp32/esp-idf/components/sdmmc/include -I/home/bas/esp32/esp-idf/components/fatfs/diskio -I/home/bas/esp32/esp-idf/components/fatfs/vfs -I/home/bas/esp32/esp-idf/components/fatfs/src -I/home/bas/esp32/esp-idf/components/freemodbus/common/include -I/home/bas/esp32/esp-idf/components/idf_test/include -I/home/bas/esp32/esp-idf/components/jsmn/include -I/home/bas/esp32/esp-idf/components/json/cJSON -I/home/bas/esp32/esp-idf/components/libsodium/libsodium/src/libsodium/include -I/home/bas/esp32/esp-idf/components/libsodium/port_include -I/home/bas/esp32/esp-idf/components/mqtt/esp-mqtt/include -I/home/bas/esp32/esp-idf/components/openssl/include -I/home/bas/esp32/esp-idf/components/spiffs/include -I/home/bas/esp32/esp-idf/components/ulp/include -I/home/bas/esp32/esp-idf/components/unity/include -I/home/bas/esp32/esp-idf/components/unity/unity/src -I/home/bas/esp32/esp-idf/components/wifi_provisioning/include 

