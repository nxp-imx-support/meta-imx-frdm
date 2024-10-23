
RDEPENDS:${PN} += "${@bb.utils.contains_any('MACHINE', " imx93frdm-iwxxx-matter ", ' openthread-iwxxx-uart otbr-iwxxx-uart zigbee-rcp-sdk zigbee-rcp-apps ', '', d)}"
