
RDEPENDS:${PN} += "${@bb.utils.contains_any('MACHINE', " imx93frdm-iwxxx-matter imx91frdm-iwxxx-matter ", ' otbr-iwxxx-spi ', '', d)}"
