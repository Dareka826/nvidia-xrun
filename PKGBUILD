# PKGBUILD adapted from aur/nvidia-xrun-git
_pkgname=nvidia-xrun
pkgname=$_pkgname"-openrc-amd-git"
pkgver=0.4.4.gf440fe4
pkgrel=2
pkgdesc="nvidia-xrun with openrc support and AMD/Nvidia instead of Intel"
arch=("any")
url="https://github.com/Dareka826/nvidia-xrun"
license=("GPL")
depends=('xorg-server' 'xorg-xinit' 'xorg-xrandr' 'nvidia' 'mesa')
makedepends=("git")
provides=("$_pkgname=$pkgver" "$pkgname=$pkgver")
conflicts=("$_pkgname")
source=("git+https://github.com/Dareka826/$_pkgname.git")
noextract=()
md5sums=("SKIP")

pkgver() {
    cd "$srcdir/$_pkgname"
    git describe --tags | sed "s/-/./g"
}

package() {
    cd "$_pkgname"
    DESTDIR="$pkgdir" ./install.sh
}
