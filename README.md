i.MX FRDM Software Release Overview
-----------------------------------

This repository contains Yocto recipes to support i.MX FRDM boards, which is based on i.MX Software Release v6.6.36_2.1.0.

The following boards were tested in this release:

        * NXP i.MX 93 FRDM (imx93frdm)


Quick Start Guide
-----------------
Run the commands below to download this release:

```
#Install the repo utility:
$: mkdir ~/bin
$: curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
$: chmod a+x ~/bin/repo
$: PATH=${PATH}:~/bin

#Download i.MX Linux Yocto Release:
$: mkdir ${MY_YOCTO} # this directory will be the top directory of the Yocto source code
$: cd ${MY_YOCTO}
$: repo init -u https://github.com/nxp-imx/imx-manifest -b imx-linux-scarthgap -m imx-6.6.36-2.1.0.xml
$: repo sync

If errors on repo init, remove the .repo directory and try repo init again.

#Integrate meta-imx-frdm recipes into the Yocto code base:
$: cd ./sources
$: git clone https://github.com/nxp-imx-support/meta-imx-frdm.git
$: cd meta-imx-frdm
$: git checkout imx-frdm-1.0
```

Change to the top directory of the Yocto source code and execute the command below to setup environment for build.
```
#For i.MX93 FRDM
$: MACHINE=imx93frdm DISTRO=fsl-imx-xwayland source sources/meta-imx-frdm/tools/imx-frdm-setup.sh -b frdm-imx93
```

Run the command below to generate Yocto images:
```
$: bitbake <image recipe>
```

Some image recipes:

Image Name           | Description
---------------------|---------------------------------------------------
imx-image-core       | core image with basic graphics and no multimedia
imx-image-multimedia | image with multimedia and graphics
imx-image-full       | image with multimedia and machine learning and Qt



Create an SD Card on Linux Host:

The SD card image (with the extension .wic) contains U-Boot, Linux image, device trees and the rootfs.

Run the following command to copy the SD card image to the SD/MMC card. Change sdx below to match the one used by the SD card.
```
$ sudo dd if=<image name>.wic of=/dev/sdx bs=1M && sync
```
or
```
zstdcat <image_name>.wic.zst | sudo dd of=/dev/sdx bs=1M conv=fsync
```

Universal update utility:

The Universal Update Utility (UUU) runs on a Windows or Linux OS host and is used to download images to different devices on an i.MX board.

Download UUU version 1.5.125 or higher from https://github.com/NXPmicro/mfgtools/releases.

Using UUU:
1. Connect a USB cable from a computer to the USB OTG/TYPE C port on the board for download link.
2. Connect a USB cable from the OTG-to-UART port to the computer for console output.
3. Open a Terminal emulator program.
4. Set the boot pin to serial download mode. See "FRDM-IMX93 Board User Manual" for detail info.

To use the UUU for i.MX93 FRDM:

• To burn single-boot image and rootfs to SD Card, run the following command:
```
uuu -b sd_all imx-boot-imx93frdm-sd.bin-flash_singleboot <rootfs.wic.zst>
```
• To burn single-boot image and rootfs to eMMC, run the following command:
```
uuu -b emmc_all imx-boot-imx93frdm-sd.bin-flash_singleboot <rootfs.wic.zst>
```

More information about i.MX Linux BSP release, which can be found at [NXP official website](http://www.nxp.com/imxlinux).


Matter support:
---------------
This repository also contains Yocto recipes to add  matter support for FRDM i.MX93 based on i.MX Matter 2024 Q3.

Here are steps on how to build the Yocto image with integrated OpenThread Border Router.

Run commands below to download i.MX Yocto and i.MX matter 2024 Q3 release:
```
#Install the repo utility:
$: mkdir ~/bin
$: curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
$: chmod a+x ~/bin/repo
$: export PATH=${PATH}:~/bin

#Download i.MX Linux Yocto Release:
$: mkdir ${MY_YOCTO} # this directory will be the top directory of the Yocto source code
$: cd ${MY_YOCTO}
$: repo init -u https://github.com/nxp-imx/imx-manifest -b imx-linux-scarthgap -m imx-6.6.36-2.1.0.xml
$: repo sync

#Download i.MX Matter Release:
$: cd ${MY_YOCTO}/sources/meta-nxp-connectivity
$: git remote update
$: git checkout imx_matter_2024_q3

#Integrate meta-imx-frdm recipes into the Yocto code base:
$: cd ${MY_YOCTO}/sources
$: git clone https://github.com/nxp-imx-support/meta-imx-frdm.git
$: cd meta-imx-frdm
$: git checkout imx-frdm-1.0
```

Run i.MX Linux Yocto Project Setup:
Change the current directory to the top directory of the Yocto source code and execute the command below:

```
#For i.MX93 FRDM:
$: MACHINE=imx93frdm-iwxxx-matter DISTRO=fsl-imx-xwayland source sources/meta-imx-frdm/tools/imx-frdm-matter-setup.sh bld-xwayland-imx93
```

Run the command below to generate Yocto images:
```
$: bitbake imx-image-multimedia
```

More information about i.MX Matter 2024 Q3 can be found at https://github.com/nxp-imx/meta-nxp-connectivity.


Related Documentation:
----------------------

Information about FRDM-IMX93 board can be found at [FRDM-IMX93 website](https://www.nxp.com/design/design-center/development-boards-and-designs/FRDM-IMX93).

• FRDM-IMX93 Quick Start Guide

• FRDM-IMX93 Board User Manual

• i.MX FRDM Software User Guide


More information about i.MX Linux BSP release, which can be found at [NXP official website](http://www.nxp.com/imxlinux).

Here are some documents for reference:

• [i.MX Yocto Project User's Guide](https://www.nxp.com/docs/en/user-guide/IMX_YOCTO_PROJECT_USERS_GUIDE.pdf)

Describes how to build an image for an i.MX board by using a Yocto Project build environment.

• [i.MX Linux User's Guide](https://www.nxp.com/docs/en/user-guide/IMX_LINUX_USERS_GUIDE.pdf)

Describes how to build and install the i.MX Linux OS BSP. It also covers special i.MX features and how to use them.

• [i.MX Linux Reference Manual](https://www.nxp.com/docs/en/reference-manual/IMX_REFERENCE_MANUAL.pdf)

Provides information of i.MX family Linux Board Support Package (BSP).

• [i.MX Porting Guide](https://www.nxp.com/docs/en/user-guide/IMX_PORTING_GUIDE.pdf)

Provides the instructions on porting the BSP to a new board.
