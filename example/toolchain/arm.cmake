###############################################################
#
# COMPILER
#
###############################################################

#if ("${ARM_SDK_ROOT}" STREQUAL "")
#    # using arm64 env by default
#    set(ARM_SDK_ROOT $ENV{ARM_SDK_ROOT})
#    set(ARM_SDK_SYSROOT ${ARM_SDK_ROOT}/arm-linux-gnueabihf)
#endif ()
#
#if ("$ENV{ARM_CROSS_GCC_ROOT}" STREQUAL "")
#    debug_message(FATAL_ERROR "ARM_CROSS_GCC_ROOT not set")
#else ()
#    set(ARM_CROSS_GCC_ROOT $ENV{ARM_CROSS_GCC_ROOT})
#endif ()
#
#if ("$ENV{ARM_CROSS_GCC_PREFIX}" STREQUAL "")
#    set(ARM_CROSS_GCC_PREFIX arm-linux-gnueabihf)
#else()
#    set(ARM_CROSS_GCC_PREFIX $ENV{ARM_CROSS_GCC_PREFIX})
#endif ()

set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_VERSION 1)
set(CMAKE_SYSTEM_PROCESSOR arm)

set(GCC_COMPILER_VERSION "4.9")

set(ARM_CROSS_GCC_ROOT /opt/gcc-linaro-arm-linux-gnueabihf-4.9-2014.07_linux/bin)
set(ARM_CROSS_GCC_PREFIX arm-linux-gnueabihf)
set(GCC_TARGET_PREFIX ${ARM_CROSS_GCC_ROOT}/${ARM_CROSS_GCC_PREFIX})
#set(GCC_TARGET_PREFIX arm-linux-gnueabihf)

set(CMAKE_C_COMPILER   ${GCC_TARGET_PREFIX}-gcc)
set(CMAKE_CXX_COMPILER ${GCC_TARGET_PREFIX}-g++)
set(CMAKE_AS           ${GCC_TARGET_PREFIX}-as)
set(CMAKE_LD           ${GCC_TARGET_PREFIX}-ld)
set(CMAKE_GDB          ${GCC_TARGET_PREFIX}-gdb)
set(CMAKE_STRIP        ${GCC_TARGET_PREFIX}-strip)
set(CMAKE_RANLIB       ${GCC_TARGET_PREFIX}-ranlib)
set(CMAKE_OBJCOPY      ${GCC_TARGET_PREFIX}-objcopy)
set(CMAKE_OBJDUMP      ${GCC_TARGET_PREFIX}-objdump)
set(CMAKE_AR           ${GCC_TARGET_PREFIX}-ar CACHE STRING "Archiver")
set(CMAKE_NM           ${GCC_TARGET_PREFIX}-nm)

#set(CMAKE_C_FLAGS   "-O2 -fexpensive-optimizations -frename-registers -fomit-frame-pointer -ftree-vectorize -Wno-error=maybe-uninitialized -finline-functions -finline-limit=64")
#set(CMAKE_CXX_FLAGS "-O2 -fexpensive-optimizations -frename-registers -fomit-frame-pointer -ftree-vectorize -Wno-error=maybe-uninitialized -finline-functions -finline-limit=64")
#set(CMAKE_C_FLAGS   "${CMAKE_C_FLAGS}   -mfpu=neon -mfloat-abi=softfp --sysroot=${ARM_SDK_SYSROOT}")
#set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -mfpu=neon -mfloat-abi=softfp --sysroot=${ARM_SDK_SYSROOT}")
#
#
#set(CMAKE_SHARED_LINKER_FLAGS "-Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed --sysroot=${ARM_SDK_SYSROOT} -L${ARM_SDK_SYSROOT}/libc/usr/lib/arm-linux-gnueabihf")
#set(CMAKE_MODULE_LINKER_FLAGS "-Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed --sysroot=${ARM_SDK_SYSROOT} -L${ARM_SDK_SYSROOT}/libc/usr/lib/arm-linux-gnueabihf")
#set(CMAKE_EXE_LINKER_FLAGS    "-Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed --sysroot=${ARM_SDK_SYSROOT} -L${ARM_SDK_SYSROOT}/libc/usr/lib/arm-linux-gnueabihf")

set(CMAKE_SKIP_RPATH TRUE CACHE BOOL "If set, runtime paths are not added when using shared libraries." )
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM ONLY)

# it will remove default "-rdynamic" added by CMake
set(CMAKE_SHARED_LIBRARY_LINK_C_FLAGS "")
set(CMAKE_SHARED_LIBRARY_LINK_CXX_FLAGS "")
