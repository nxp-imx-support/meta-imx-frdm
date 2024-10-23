
USE_ELE = "${@bb.utils.contains_any('MACHINE', 'imx93evk-iwxxx-matter imx93frdm-iwxxx-matter', 1, 0, d)}"

DEPENDS += "${@bb.utils.contains_any('MACHINE', "imx93frdm-iwxxx-matter ", ' zigbee-rcp-sdk ', '', d)}"
RDEPENDS:${PN} += "${@bb.utils.contains_any('MACHINE', "imx93frdm-iwxxx-matter ", ' zigbee-rcp-sdk ', '', d)}"
BUILD_M2ZIGBEE += "${@bb.utils.contains_any('MACHINE', "imx93frdm-iwxxx-matter ",'true', 'false', d)}"
