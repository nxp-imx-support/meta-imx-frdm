FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI += "${@bb.utils.contains_any('MACHINE', "imx93frdm-iwxxx-matter ", 'file://0001-MATTER-1869-1-Integrate-trusty-drivers.patch', '', d)}"

SRC_URI += "${@bb.utils.contains_any('MACHINE', "imx91frdm-iwxxx-matter ", 'file://0001-arm64-dts-imx91-11x11-frdm-Set-initial-baud-rate-to-.patch', '', d)}"

SRC_URI += "${@bb.utils.contains_any('MACHINE', "imx91frdmimx91s-iwxxx-matter ", 'file://0001-arm64-dts-imx91-11x11-frdm-imx91s-Set-initial-baud-rate.patch', '', d)}"

SRC_URI:remove = " \
    file://patches/0002-Enable-otbr-and-firewall-configs-for-imx6-7.patch \
    file://patches/0001-Add-imx8mm-evk-iw612-otbr-dtb-support.patch \
    file://patches/0002-Add-i.MX91-device-tree-to-support-IW612-SPI-RCP.patch \
"
