FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI += " \
	file://0001-Smart-Kitchen-add-support-for-imx93frdm-board.patch \
	file://0001-Smart-Kitchen-add-support-for-FRDM-IMX8MP.patch \
	file://0002-smart-kitchen-keep-the-execution-path-consistent-wit.patch \
"

do_patch:append() {
	cp ${WORKDIR}/0001-Smart-Kitchen-add-support-for-imx93frdm-board.patch ${WORKDIR}/git/
	cp ${WORKDIR}/0001-Smart-Kitchen-add-support-for-FRDM-IMX8MP.patch ${WORKDIR}/git/
	cp ${WORKDIR}/0002-smart-kitchen-keep-the-execution-path-consistent-wit.patch ${WORKDIR}/git/
	cd ${WORKDIR}/git/ && git apply 0001-Smart-Kitchen-add-support-for-imx93frdm-board.patch
	git apply 0001-Smart-Kitchen-add-support-for-FRDM-IMX8MP.patch
	git apply 0002-smart-kitchen-keep-the-execution-path-consistent-wit.patch
}
