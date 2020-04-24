#!/bin/bash
cd ..
export ANDROID_SDK_ROOT=/home/mikeyna/Android/Sdk
export ANDROID_NDK=/home/mikeyna/Android/Sdk/ndk/android-ndk-r18b-linux-x86_64/android-ndk-r18b
mkdir arm64-v8a
  cd arm64-v8a
  cmake .. -DCMAKE_INSTALL_PREFIX=install \
        -DCMAKE_BUILD_TYPE=MinSizeRel \
        -DCMAKE_TOOLCHAIN_FILE=${ANDROID_NDK}/build/cmake/android.toolchain.cmake \
        -DANDROID_ABI="arm64-v8a" \
        -DANDROID_PLATFORM=android-18 \
        -DUSE_OPENMP=OFF \
        -DENABLE_NEON=ON \
        -DENABLE_AVX2=OFF \
        -DDEMO=OFF
  cmake --build . --config MinSizeRel
