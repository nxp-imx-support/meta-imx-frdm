FILESEXTRAPATHS:prepend := "${THISDIR}/${BPN}:"

SRC_URI += " \
        file://0001-net-phy-motorcomm-Add-support-for-YT8521-PHY.patch \
        file://0002-imx-imx93_frdm-Add-basic-board-support.patch \
        file://0003-imx-imx91_frdm-Add-basic-board-support.patch \
        file://0004-imx-imx93-91-frdm-add-board-version-print.patch \
        file://0005-imx-add-i.MX8MP-FRDM-board-support.patch \
        file://0006-imx-FRDM-IMX8MP-Use-green-led-instead-of-blue.patch \
        file://0007-imx-imx91_frdm_imx91s-Add-basic-board-support.patch \
        file://0008-imx-imx91_frdm_imx91s-Add-SPI-NAND-boot-support.patch \
        file://0009-arm-dts-frdm-imx91s-remove-duplicated-reg.patch \
"

SRC_URI += "${@bb.utils.contains_any('MACHINE', "imx8mpfrdm", 'file://uboot-config/0001-imx8mp-set-os08a20-dtb.cfg', '', d)}"
