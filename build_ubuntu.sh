#!/bin/bash

mkdir build
cd build

chmod +x ../configure
chmod +x ../mkinstalldirs
../configure \
--target=avr \

make all -j$(nproc)
make install
