#############################################################################################################
#			 环境变量
##############################################################################
#	TOOLCHAINS PATH
NDK  ?= /cygdrive/d/android-ndk-r8b
NDK_VER := 4.4.3
TOOLCHAINS_ROOT   := $(NDK)/toolchains/arm-linux-androideabi-$(NDK_VER)/prebuilt/windows
TOOLCHAINS_BIN    := $(TOOLCHAINS_ROOT)/bin
TOOLCHAINS_PREFIX := $(TOOLCHAINS_BIN)/arm-linux-androideabi
TOOLCHAINS_INCLUDE:= $(TOOLCHAINS_ROOT)/lib/gcc/arm-linux-androideabi/$(NDK_VER)/include-fixed
##############################################################################
#	STL PATH
STL_ROOT    := $(NDK)/sources/cxx-stl/gnu-libstdc++/$(NDK_VER)
STL_INCLUDE := $(STL_ROOT)/include
STL_LIB     := $(STL_ROOT)/libs/armeabi
#STL_INCLUDE += $(STL_LIB)/include
##############################################################################
#       PLATFORM PATH
PLATFORM ?= arch-arm
PLATFORM_ROOT=$(NDK)/platforms/android-9/$(PLATFORM)
PLATFORM_INCLUDE=$(PLATFORM_ROOT)/usr/include
PLATFORM_LIB=$(PLATFORM_ROOT)/usr/lib
##############################################################################
#       NDK INTERNAL OPTION
NDK_C_IN_OPT := \
  -fpic 	    \
  -ffunction-sections \
  -funwind-tables     \
  -fstack-protector   \
  -D__ARM_ARCH_5__    \
  -D__ARM_ARCH_5T__  \
  -D__ARM_ARCH_5E__  \
  -D__ARM_ARCH_5TE__ \
  -march=armv5te \
  -mtune=xscale \
  -msoft-float 	   \
  -mthumb 	  \
  -Os 		  \
  -fomit-frame-pointer \
  -fno-strict-aliasing \
  -finline-limit=64   \
  -DANDROID  	  \
  -Wa,--noexecstack   \
  -O2 		    \
  -DNDEBUG 	   \
  -g  -c
	#-MF ./obj/local/armeabi/objs/seraph/seraph.o.d.org 
###############################################################################
#
ANDROID_ADDED_OBJ := $(PLATFORM_LIB)/crtbegin_dynamic.o $(PLATFORM_LIB)/crtend_android.o
ANDROID_SO_LD_FLG := -Bdynamic -Wl,-dynamic-linker,/system/bin/linker -nostdlib
android_libs=-lgnustl_static -lstdc++ -lgcc -lc
###############################################################################
#       SET VPATH
vpath %.h $(PLATFORM_INCLUDE) $(STL_INCLUDE) $(PLATFORM_INCLUDE)
###############################################################################
#       COLLECT
NDK_INCLUDE := -I$(TOOLCHAINS_INCLUDE) -I$(STL_INCLUDE) -I$(PLATFORM_INCLUDE)
NDK_LIBS := -L$(STL_LIB) -L$(PLATFORM_LIB) -l$(ANDROID_ADDED_OBJ)
NDK_C := $(TOOLCHAINS_PREFIX)-gcc.exe $(NDK_INCLUDE) $(NDK_C_IN_OPT)
#td_add.o : td_add.c
#	@echo $(NDK_INCLUDE)	
#	$(NDK_C) $^ -o $@ 
#	@echo $(PLATFORM_INCLUDE)
###############################################################################
#       test   
include seraphim.mk
NDK_ROOT := $(dir $(lastword $(MAKEFILE_LIST)))
NDK_ROOT := $(strip $(NDK_ROOT:%build/core/=%))
DUMP_VAR     := $(patsubst DUMP_%,%,$(filter DUMP_%,$(MAKECMDGOALS)))
test :
	@echo $(DUMP_VAR)	
	@echo $(MAKECMDGOALS)
#	@echo $(dir $(lastword $(MAKEFILE_LIST)))
#	@echo $(MAKEFILE_LIST)
#	@echo $(NDK_ROOT)
