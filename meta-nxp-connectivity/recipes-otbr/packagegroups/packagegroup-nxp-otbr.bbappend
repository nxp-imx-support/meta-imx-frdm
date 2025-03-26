
RDEPENDS:${PN} += "${@bb.utils.contains_any('MACHINE', " imx93frdm-iwxxx-matter imx91frdm-iwxxx-matter imx8mpfrdm-matter ", ' otbr-iwxxx-spi otbr-iw610-spi ', '', d)}"
