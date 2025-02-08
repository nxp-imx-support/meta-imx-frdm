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

EULA=$EULA DISTRO=$DISTRO MACHINE=$MACHINE . ./imx-setup-release.sh $@

echo "# layers for i.MX FRDM" >> conf/bblayers.conf
echo "BBLAYERS += \"\${BSPDIR}/sources/meta-imx-frdm/meta-imx-bsp\"" >> conf/bblayers.conf
echo "BBLAYERS += \"\${BSPDIR}/sources/meta-imx-frdm/meta-imx-sdk\"" >> conf/bblayers.conf
echo "BBLAYERS += \"\${BSPDIR}/sources/meta-imx-frdm/meta-nxp-demo-experience\"" >> conf/bblayers.conf

echo ""
echo "i.MX FRDM setup complete and it can generate Yocto images now."
