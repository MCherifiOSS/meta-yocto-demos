#! /usr/bin/make -f
# Author: Philippe Coval <philippe.coval@osg.samsung.com>
# ex: set tabstop=4 noexpandtab:

SHELL=/bin/bash
V=1
root_bsp=raspberrypi
bsp?=${root_bsp}
MACHINE?=raspberrypi2
machines?=${machine} 

os?=tizen
os_profile?=common
distro?=${os}-distro
extra?=
init_name?=${os}-${os_profile}
base_image?=core-image-minimal
image?=tizen-oic-image
images?=${image} ${image}-dev

images?=${image} ${image}-dev \
 ${os}-${os_profile}-${base_image} \
 ${os}-${os_profile}-${base_image}-dev \
 ${os}-${os_profile}-core-image-crosswalk \
 ${os}-${os_profile}-core-image-crosswalk-dev

sources_layers_conf?=$(sort $(wildcard sources/meta-*/conf/layer.conf))

sources_layers_conf+=

