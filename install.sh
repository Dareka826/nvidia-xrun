#!/bin/sh

install -Dm 644 nvidia-xrun-pm.service "/etc/systemd/system/nvidia-xrun-pm.service"
install -Dm 664 nvidia-xrun-pm "/etc/init.d/nvidia-xrun-pm"
install -Dm 644 config/nvidia-xrun "/etc/default/nvidia-xrun"
install -Dm 644 nvidia-xorg.conf "/etc/X11/nvidia-xorg.conf"
install -Dm 644 nvidia-xinitrc "/etc/X11/xinit/nvidia-xinitrc"
install -Dm 755 nvidia-xrun "/usr/bin/nvidia-xrun"
install -dm 555 "/etc/X11/xinit/nvidia-xinitrc.d"
install -dm 555 "/etc/X11/nvidia-xorg.conf.d"
