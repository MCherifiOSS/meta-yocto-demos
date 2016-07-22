#! /usr/bin/make -f
# Author: Philippe Coval <philippe.coval@osg.samsung.com>
# ex: set tabstop=4 noexpandtab:

SHELL=/bin/bash
V=1

bsp_family?=generic
bsp_variant?=
bsp?=${bsp_family}${bsp_variant}

board_vendor?=qemu
board_family?=x86
board_variant?=
board_alias?=${board_vendor}${board_variant}

MACHINE?=${board_vendor}${board_family}${board_variant}

bsp_machines_dir?=${distro_machines_dir}

machine?=${MACHINE}
machine_list+=${machine}
machine_list+=${board_family}-64
machine_list+=${bsp_family}${board_family}
machine_list+=${bsp_family}${board_family}-64
