
RDEPENDS:${PN} += "${@bb.utils.contains_any('MACHINE', " imx93frdm imx93frdm-iwxxx-matter imx91frdm imx91frdm-iwxxx-matter ", ' openthread-iwxxx-spi ', ' ', d)}"

RDEPENDS:${PN} += "${@bb.utils.contains_any('MACHINE', " imx93frdm imx93frdm-iwxxx-matter imx91frdm imx91frdm-iwxxx-matter ", '', ' openthread ', d)}"
