#############################################################################################################
# 环境变量

NDK_ROOT=/opt/android-ndk-r8b
NDK_VER=4.4.3
TOOLCHAINS_ROOT=$(NDK_ROOT)/toolchains/arm-linux-androideabi-$(NDK_VER)/prebuilt/linux-x86
TOOLCHAINS_BIN=$(TOOLCHAINS_ROOT)/bin
TOOLCHAINS_PREFIX=$(TOOLCHAINS_BIN)/arm-linux-androideabi
TOOLCHAINS_INCLUDE=$(TOOLCHAINS_ROOT)/lib/gcc/arm-linux-androideabi/$(NDK_VER)/include-fixed

CPP_ROOT=$(NDK_ROOT)/sources/cxx-stl/gnu-libstdc++/$(NDK_VER)
CPP_INCLUDE=$(CPP_ROOT)/include
CPP_LIB=$(CPP_ROOT)/libs/armeabi
BIT_INCLUDE=$(CPP_LIB)/include

PLATFORM_ROOT=$(NDK_ROOT)/platforms/android-9/arch-arm
PLATFORM_INCLUDE=$(PLATFORM_ROOT)/usr/include
PLATFORM_LIB=$(PLATFORM_ROOT)/usr/lib

android_add_obj_file=$(PLATFORM_LIB)/crtbegin_dynamic.o $(PLATFORM_LIB)/crtend_android.o
android_ld_flags=-Bdynamic -Wl,-dynamic-linker,/system/bin/linker -nostdlib
android_libs=-lgnustl_static\
	-lstdc++\
	-lgcc\
	-lc

#############################################################################################################
# 宏定义

BIN_PATH=$(root)/build/android

#############################################################################################################
# 包含源码头文件

include FILES

#############################################################################################################
# path setup

opt_inc_path=-I$(TOOLCHAINS_INCLUDE) -I$(CPP_INCLUDE) -I$(PLATFORM_INCLUDE) -I$(BIT_INCLUDE)
opt_lib_path=-L$(BIN_PATH) -L$(PLATFORM_LIB) -L$(CPP_LIB)
opt_libs=$(android_libs)

#############################################################################################################
# compile options

opt_dll_opt=$(opt_lib_path) $(opt_libs) $(android_ld_flags) $(android_add_obj_file)
opt_exe_opt=$(opt_lib_path) $(opt_libs) $(android_ld_flags) $(android_add_obj_file)

#############################################################################################################
# export variables

export opt_cxx_opt=$(opt_inc_path) -D XOS_ANDROID -Wno-psabi $G
export opt_cxx=$(TOOLCHAINS_PREFIX)-g++
export opt_ar_opt=rsv
export opt_ar=$(TOOLCHAINS_PREFIX)-ar

#############################################################################################################
# 枚举代码模块

modules=$(all_modules)
module_path=$(foreach str,$(modules),$($(str)_path))

make_dep=make -f DEPENDENCY
make_obj=make

opt_obj=$(foreach str,$(modules),$($(str)_o))
opt_dep=$(foreach str,$(modules),$($(str)_d))
