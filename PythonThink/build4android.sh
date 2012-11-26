BUILDROOT='/d/android-ndk-r8b/toolchains/arm-linux-androideabi-4.6/prebuilt/windows/bin/'
CROSSPREFIX="arm-linux-androideabi-"
TOOLDIR="/cygdrive/d/android-ndk-r8b/toolchains/arm-linux-androideabi-4.6/prebuilt/windows/bin/"
CFLAGS="-MMD \
-MP \
-fpic \
-ffunction-sections \
-funwind-tables \
-fstack-protector \
-D__ARM_ARCH_5__ \
-D__ARM_ARCH_5T__ \
-D__ARM_ARCH_5E__ \
-D__ARM_ARCH_5TE__  \
-Wno-psabi \
-march=armv5te \
-mtune=xscale \
-msoft-float \
-mthumb \
-Os \
-fomit-frame-pointer \
-fno-strict-aliasing \
-finline-limit=64 \
-Ijni \
-DANDROID  \
-Wa,--noexecstack \
-O2 \
-DNDEBUG \
-g \
-c"
#-ID:/android-ndk-r7b/platforms/android-14/arch-arm/usr/include \
CC=${BUILDROOT}${CROSSPREFIX}gcc
AR=${BUILDROOT}${CROSSPREFIX}ar
echo $CC
$CC $CFLAGS add.c -o add.o
$CC $CFLAGS sub.c -o sub.o
$AR crs libatgs0.2.a add.o sub.o

