FILESEXTRAPATHS:prepend := "${THISDIR}/${BPN}:"

SRC_URI += " \
        file://0001-net-phy-motorcomm-Add-support-for-YT8521-PHY.patch \
        file://0002-imx-imx93_frdm-Add-basic-board-support.patch \
        file://0003-imx-imx91_frdm-Add-basic-board-support.patch \
        file://0004-imx-imx93-91-frdm-add-board-version-print.patch \
"
