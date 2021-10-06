#!/bin/bash

case $(uname -o | cut -d '/' -f2) in
	"Msys")
		export CFLAGS="-D__USE_MINGW_ACCESS"
		export CXXFLAGS="-D__USE_MINGW_ACCESS"
		export LDFLAGS='-static'

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
$SUDO make install
