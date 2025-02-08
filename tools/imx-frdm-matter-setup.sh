#!/bin/sh
#
# i.MX FRDM Yocto Project Build Environment Setup Script
#
# MIT License
# Copyright 2024 NXP

if [ ! -n "$MACHINE" ]; then
    MACHINE=imx93frdm
fi
echo "MACHINE = $MACHINE"

EULA=$EULA DISTRO=$DISTRO MACHINE=$MACHINE . sources/meta-nxp-connectivity/tools/imx-matter-setup.sh $@

echo "# layers for i.MX FRDM & i.MX FRDM MATTER & OpenThread Border Router" >> conf/bblayers.conf
echo "BBLAYERS += \"\${BSPDIR}/sources/meta-imx-frdm/meta-imx-bsp\"" >> conf/bblayers.conf
echo "BBLAYERS += \"\${BSPDIR}/sources/meta-imx-frdm/meta-nxp-connectivity\"" >> conf/bblayers.conf
