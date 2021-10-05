export DESTDIR="$(pwd)/avr-gdb_ubuntu_$1" && make install
dpkg-deb --build --root-owner-group avr-gdb_ubuntu_$1
