
RDEPENDS:${PN} += "${@bb.utils.contains_any('MACHINE', " imx93frdm imx93frdm-iwxxx-matter imx91frdm imx91frdm-iwxxx-matter imx8mpfrdm-matter ", ' openthread-iwxxx-spi openthread-iw610-spi ', ' ', d)}"

RDEPENDS:${PN} += "${@bb.utils.contains_any('MACHINE', " imx93frdm imx93frdm-iwxxx-matter imx91frdm imx91frdm-iwxxx-matter imx8mpfrdm-matter ", '', ' openthread ', d)}"
