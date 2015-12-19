#! /usr/bin/make -f
# Author: Philippe Coval <philippe.coval@osg.samsung.com>
# ex: set tabstop=4 noexpandtab:

project_name?=meta-yocto-demos
remote?=tizenteam
user?=$(shell echo ${USER})
log_file?=tmp/build.log
version?=0.0.$(shell date -u +%Y%m%d)${user}

branch?=$(shell git rev-parse --abbrev-ref HEAD)
branch?=master

generic?=generic
bsp?=qemu
MACHINE?=${bsp}x86
machine?=${MACHINE}

os?=${generic}
os_profile?=${generic}
distro?=${os}-distro
distro_branch?=${os}
repo_branch?=${branch}
repo_src_file?=default.xml
repo_file?=${tmp_dir}/default.xml

init_name?=${os}-${os_profile}
init_build_env?=${sources_dir}/${distro}/${init_name}-init-build-env
image_type?=core
image?=${init_name}-${image_type}-image

project_dir?=${CURDIR}
build_dir?=${project_dir}/build
bblayers?=${build_dir}/conf/bblayers.conf
image_dir?=${build_dir}/tmp/deploy/images/${machine}
conf?=${build_dir}/conf/local.conf


