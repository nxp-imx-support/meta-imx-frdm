# Copyright 2025 NXP
# Released under the MIT license (see COPYING.MIT for the terms)

DESCRIPTION = "A small image with necessary packages based on core-image-minimal."

IMAGE_INSTALL = "packagegroup-core-boot ${CORE_IMAGE_EXTRA_INSTALL}"

IMAGE_LINGUAS = " "

LICENSE = "MIT"

inherit core-image

IMAGE_FEATURES += " \
    ${@bb.utils.contains('DISTRO_FEATURES', 'wayland', 'weston','', d)} \
"

IMAGE_INSTALL += " \
	firmwared firmware-nxp-wifi-nxpiw610-sdio firmware-nxp-wifi-nxpiw612-sdio \
	nxp-wlan-sdk kernel-module-nxp-wlan \
	kernel-modules \
	avahi-daemon avahi-utils \
	openssh \
	u-boot-fw-utils \
	mmc-utils \
	mtd-utils \
	ethtool net-tools iptables iperf3 iproute2 busybox bridge-utils tcpdump \
	i2c-tools \
	wpa-supplicant wireless-regdb-static hostapd \
	bluez5 \
	alsa-utils \
	can-utils \
	memtester \
	spidev-test \
	v4l-utils \
	serialcheck \
	util-linux \
	e2fsprogs-mke2fs \
	e2fsprogs-resize2fs \
	coreutils \
	ncurses readline grep sed gawk \
	evtest \
	perl \
	sqlite3 \
	tftp-hpa \
	lftp \
	ntp \
	bc \
	pv \
	dbus \
	libdrm fbset \
	libmodbus \
	lvgl \
	gstreamer1.0 \
	gstreamer1.0-plugins-base \
	gstreamer1.0-plugins-good \
	gstreamer1.0-plugins-bad-waylandsink \
	udev-extraconf \
	nfs-utils \
	${@bb.utils.contains('DISTRO_FEATURES', 'x11 wayland', 'weston-xwayland xterm', '', d)} \
	tslib tslib-conf tslib-calibrate tslib-uinput tslib-tests \
"
export IMAGE_BASENAME = "imx-image-base"
