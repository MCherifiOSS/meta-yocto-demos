require recipes-core/images/core-image-minimal-dev.bb

IMAGE_FEATURES += " ssh-server-dropbear "

IMAGE_INSTALL += " os-release "
IMAGE_INSTALL += " screen "
IMAGE_INSTALL += " packagegroup-iotivity "

IMAGE_INSTALL += " iotivity-dev "

IMAGE_INSTALL += " iotivity-plugins-staticdev "
IMAGE_INSTALL += " iotivity-resource-dev "
IMAGE_INSTALL += " iotivity-resource-thin-staticdev "
IMAGE_INSTALL += " iotivity-service-dev "
IMAGE_INSTALL += " iotivity-service-staticdev "

IMAGE_INSTALL += " iotivity-example "
IMAGE_INSTALL += " iotivity-node "
IMAGE_INSTALL += " nodejs "
IMAGE_INSTALL += " nodejs-npm "
