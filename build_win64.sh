INSTALL_DIR=/home/avr-gdb

mkdir build
cd build

CFLAGS="-D__USE_MINGW_ACCESS"
CXXFLAGS="-D__USE_MINGW_ACCESS"
LDFLAGS='-static'

../configure \
--prefix=$INSTALL_DIR \
--target=avr \
--host="x86_64-w64-mingw32"

make all -j $NUMBER_OF_PROCESSORS
make install
