#!/bin/bash

mkdir build
cd build

../configure \
--target=avr \

make all -j$(nproc)
make install
