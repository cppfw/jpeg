# Sets the minimum version of CMake required to build your native library.
# This ensures that a certain set of CMake features is available to
# your build.

cmake_minimum_required(VERSION 3.4.1)

# Specifies a library name, specifies whether the library is STATIC or
# SHARED, and provides relative paths to the source code. You can
# define multiple libraries by adding multiple add_library() commands,
# and CMake builds them for you. When you build your app, Gradle
# automatically packages shared libraries with your APK.

set(name jpeg)

# file(GLOB_RECURSE srcs "../../src/*.c")
set(srcs
        ../../src/jpeg/jcapimin.c
        ../../src/jpeg/jcapistd.c
        ../../src/jpeg/jccoefct.c
        ../../src/jpeg/jccolor.c
        ../../src/jpeg/jcdctmgr.c
        ../../src/jpeg/jchuff.c
        ../../src/jpeg/jcinit.c
        ../../src/jpeg/jcmainct.c
        ../../src/jpeg/jcmarker.c
        ../../src/jpeg/jcmaster.c
        ../../src/jpeg/jcomapi.c
        ../../src/jpeg/jcparam.c
        ../../src/jpeg/jcphuff.c
        ../../src/jpeg/jcprepct.c
        ../../src/jpeg/jcsample.c
        ../../src/jpeg/jctrans.c
        ../../src/jpeg/jdapimin.c
        ../../src/jpeg/jdapistd.c
        ../../src/jpeg/jdatadst.c
        ../../src/jpeg/jdatasrc.c
        ../../src/jpeg/jdcoefct.c
        ../../src/jpeg/jdcolor.c
        ../../src/jpeg/jddctmgr.c
        ../../src/jpeg/jdhuff.c
        ../../src/jpeg/jdinput.c
        ../../src/jpeg/jdmainct.c
        ../../src/jpeg/jdmarker.c
        ../../src/jpeg/jdmaster.c
        ../../src/jpeg/jdmerge.c
        ../../src/jpeg/jdphuff.c
        ../../src/jpeg/jdpostct.c
        ../../src/jpeg/jdsample.c
        ../../src/jpeg/jdtrans.c
        ../../src/jpeg/jerror.c
        ../../src/jpeg/jfdctflt.c
        ../../src/jpeg/jfdctfst.c
        ../../src/jpeg/jfdctint.c
        ../../src/jpeg/jidctflt.c
        ../../src/jpeg/jidctint.c
        ../../src/jpeg/jidctfst.c
        ../../src/jpeg/jidctred.c
        ../../src/jpeg/jquant1.c
        ../../src/jpeg/jquant2.c
        ../../src/jpeg/jutils.c
        ../../src/jpeg/jmemmgr.c
        ../../src/jpeg/jmemansi.c
    )

include (${ANDROID_GRADLE_NATIVE_BUNDLE_PLUGIN_MK})

add_library(
        # Specifies the name of the library.
        ${name}

        # Sets the library as a shared library.
        STATIC

        # Provides a relative path to your source file(s).
        ${srcs}
    )

target_link_libraries(
        ${name}
        android log ${ANDROID_GRADLE_NATIVE_MODULES}
    )
