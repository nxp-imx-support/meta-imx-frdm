FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI += " \
	file://0001-ebike-vit-Add-support-for-imx93frdm-board.patch \
	file://0001-ebike-vit-Add-support-for-FRDM-IMX8MP-board.patch \
	file://0002-ebike-vit-keep-the-execution-path-consistent-with-GP.patch \
"

do_patch:append() {
	cp ${WORKDIR}/0001-ebike-vit-Add-support-for-imx93frdm-board.patch ${WORKDIR}/git/
	cp ${WORKDIR}/0001-ebike-vit-Add-support-for-FRDM-IMX8MP-board.patch ${WORKDIR}/git/
	cp ${WORKDIR}/0002-ebike-vit-keep-the-execution-path-consistent-with-GP.patch ${WORKDIR}/git/
	cd ${WORKDIR}/git/ && git apply 0001-ebike-vit-Add-support-for-imx93frdm-board.patch
	git apply 0001-ebike-vit-Add-support-for-FRDM-IMX8MP-board.patch
	git apply 0002-ebike-vit-keep-the-execution-path-consistent-with-GP.patch
}
