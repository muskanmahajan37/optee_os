srcs-$(CFG_TEE_CORE_EMBED_INTERNAL_TESTS) += pta_invoke_tests.c
srcs-$(CFG_TEE_CORE_EMBED_INTERNAL_TESTS) += core_self_tests.c
srcs-$(CFG_TEE_CORE_EMBED_INTERNAL_TESTS) += interrupt_tests.c
ifeq ($(CFG_WITH_USER_TA),y)
srcs-$(CFG_TEE_CORE_EMBED_INTERNAL_TESTS) += core_fs_htree_tests.c
endif
srcs-$(CFG_WITH_STATS) += stats.c
srcs-$(CFG_TA_GPROF_SUPPORT) += gprof.c
srcs-$(CFG_TEE_BENCHMARK) += benchmark.c
srcs-$(CFG_TA_HELLO_WORLD) += pta_hello_world.c

ifeq ($(CFG_SE_API),y)
srcs-$(CFG_SE_API_SELF_TEST) += se_api_self_tests.c
cppflags-se_api_self_tests.c-y += -Icore/tee/se
endif

srcs-$(CFG_TA_SPI) += pta_spi.c
