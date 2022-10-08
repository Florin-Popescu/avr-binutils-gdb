pkgname=avr-binutils-gdb
pkgver=11.1
pkgrel=3
epoch=
pkgdesc="GNU Debugger and binary tools for AVR microcontrollers"
arch=('x86_64')
url=""
license=('GPL')
groups=()
depends=()
makedepends=()
checkdepends=()
optdepends=()
provides=()
conflicts=()
replaces=()
backup=()
options=()
install=
changelog=
source=(https://github.com/Florin-Popescu/avr-binutils-gdb/archive/refs/tags/v${pkgver}-${pkgrel}.tar.gz)
noextract=()
md5sums=('SKIP')
validpgpkeys=()

prepare() {
	cd "${srcdir}/${pkgname}-${pkgver}-${pkgrel}"
	mkdir -p build
}

build() {
	cd "${srcdir}/${pkgname}-${pkgver}-${pkgrel}"
	cd build
	../configure --target=avr
	make all
}

check() {
	cd "${srcdir}/${pkgname}-${pkgver}-${pkgrel}"
	cd build
	make -k check
}

package() {
	cd "${srcdir}/${pkgname}-${pkgver}-${pkgrel}"
	cd build
	make DESTDIR="$pkgdir/" install
}
