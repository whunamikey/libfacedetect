#!/bin/bash
cd ..
rm -r build_x86
mkdir build_x86
cd build_x86
cmake ..
make -j4
