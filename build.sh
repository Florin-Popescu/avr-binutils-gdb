#!/bin/bash

case $(uname -o | cut -d '/' -f2) in
	"Msys")
		SUDO=
		;;
	"Linux")
		NUMBER_OF_PROCESSORS=$(nproc)
		SUDO=sudo
		;;
esac

mkdir build
cd build

../configure \
--target=avr

make all -j$NUMBER_OF_PROCESSORS
