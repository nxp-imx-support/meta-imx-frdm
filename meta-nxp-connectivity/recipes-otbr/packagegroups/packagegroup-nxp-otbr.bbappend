
RDEPENDS:${PN} += "${@bb.utils.contains('MACHINE', " imx93frdm-iwxxx-matter ", ' otbr-iwxxx-spi ', '', d)}"
