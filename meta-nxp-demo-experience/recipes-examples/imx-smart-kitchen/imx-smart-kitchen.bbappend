FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI += "file://0001-Smart-Kitchen-add-support-for-imx93frdm-board.patch"

do_patch:append() {
	cp ${WORKDIR}/0001-Smart-Kitchen-add-support-for-imx93frdm-board.patch ${WORKDIR}/git/
	cd ${WORKDIR}/git/ && git apply 0001-Smart-Kitchen-add-support-for-imx93frdm-board.patch
}