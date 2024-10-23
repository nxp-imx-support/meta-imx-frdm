
RDEPENDS:${PN} += "${@bb.utils.contains_any('MACHINE', " imx93frdm imx93frdm-iwxxx-matter ", ' openthread-iwxxx-spi ', ' ', d)}"

RDEPENDS:${PN} += "${@bb.utils.contains_any('MACHINE', " imx93frdm imx93frdm-iwxxx-matter ", '', ' openthread ', d)}"
