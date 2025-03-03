require nxp-wlan-sdk_frdm.inc

SRCBRANCH = "lf-6.6.52_2.2.0"
SRCREV = "5ad19e194f49ed9447bee7864eb562618ccaf9b1"

do_install () {
    install -d ${D}${datadir}/nxp_wireless

    install -m 0644 README ${D}${datadir}/nxp_wireless
}
