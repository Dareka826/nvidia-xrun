#!/bin/sh

DESTDIR="${DESTDIR:-}"

install -Dm 644 nvidia-xrun-pm.service "${DESTDIR}/etc/systemd/system/nvidia-xrun-pm.service"
install -Dm 664 nvidia-xrun-pm "${DESTDIR}/etc/init.d/nvidia-xrun-pm"
install -Dm 644 config/nvidia-xrun "${DESTDIR}/etc/default/nvidia-xrun"
install -Dm 644 nvidia-xorg.conf "${DESTDIR}/etc/X11/nvidia-xorg.conf"
install -Dm 644 nvidia-xinitrc "${DESTDIR}/etc/X11/xinit/nvidia-xinitrc"
install -Dm 755 nvidia-xrun "${DESTDIR}/usr/bin/nvidia-xrun"
install -dm 555 "${DESTDIR}/etc/X11/xinit/nvidia-xinitrc.d"
install -dm 555 "${DESTDIR}/etc/X11/nvidia-xorg.conf.d"
