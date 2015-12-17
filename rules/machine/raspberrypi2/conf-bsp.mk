bsp?=raspberrypi
MACHINE?=${bsp}2
repo_branch?=sandbox/pcoval/${bsp}
repo_branch?=machine/${MACHINE}
branch?=tizen
#image?=rpi-hwup-image
image?=tizen-base-image
distro?=tizen-distro
bsp_dir?=${CURDIR}/sources/meta-${bsp}
conf?=${build_dir}/conf/local.conf

define BBLAYERS
"\
BBLAYERS += \"\
  ${CURDIR}/sources/meta-${bsp} \
  \"\
BBLAYERS_NON_REMOVABLE += \"\
  ${CURDIR}/sources/meta-${bsp} \
  \"\
"
endef
export BBLAYERS

rule/configure/machine: ${done_dir}/rule/configure/machine/${machine}.done

rule/configure/machine/${machine}: ${done_dir}/rule/configure/machine/${machine}/bblayers.done ${done_dir}/rule/configure/machine/${machine}/conf.done

rule/configure/machine/${machine}/bblayers: ${bblayers}
	echo "BBLAYERS += \" ${bsp_dir} \"" >> $<
	echo "BBLAYERS_NON_REMOVABLE += \" ${bsp_dir} \"" >> $<
	cp -v ${CURDIR}/machine/${MACHINE}/${<F} $<
	mkdir -p "$@{D}" ; touch $@

rule/configure/machine/${machine}/conf: ${conf}
	sed -e 's|^MACHINE ??=.*|MACHINE ??= "raspberrypi2"|g' -i $<
