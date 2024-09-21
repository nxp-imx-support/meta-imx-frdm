FILESEXTRAPATHS:prepend := "${THISDIR}/${BPN}:"

SRC_URI += " \
        file://0001-gpio-pca953x-fix-pca953x_irq_bus_sync_unlock-race.patch \
        file://0002-arm64-dts-add-i.MX93-11x11-FRDM-basic-support.patch \
        file://0003-arm64-dts-add-imx93-11x11-frdm-mt9m114-dts.patch \
        file://0004-Add-DSI-Panel-for-imx93.patch \
        file://0005-Add-CTP-support-for-waveshare-panel.patch \
        file://0006-arm64-dts-add-imx93-11x11-frdm-tianma-wvga-panel-dts.patch \
        file://0007-arm64-dts-add-imx93-11x11-frdm-aud-hat-dts.patch \
        file://0008-arm64-dts-add-button-support.patch \
        file://0009-arm64-dts-add-imx93-11x11-frdm-ov5640-dts.patch \
        file://0010-arm64-dts-add-imx93-11x11-frdm-ld.dts-for-lpm.patch \
        file://0011-arm64-dts-add-pwm-function-of-the-LED.patch \
        file://0012-arm64-dts-add-imx93-11x11-frdm-8mic.dts.patch \
        file://0013-arm64-dts-add-imx93-11x11-frdm-lpuart.dts.patch \
"
