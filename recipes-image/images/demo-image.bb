require recipes-core/images/core-image-minimal.bb

IMAGE_FEATURES += " ssh-server-dropbear "

IMAGE_INSTALL += " os-release "
IMAGE_INSTALL += " screen "

IMAGE_INSTALL += " iotivity "

IMAGE_INSTALL += " iotivity-resource "
IMAGE_INSTALL += " iotivity-service "
IMAGE_INSTALL += " iotivity-tests "
IMAGE_INSTALL += " iotivity-resource-samples "
IMAGE_INSTALL += " iotivity-plugins-samples "
IMAGE_INSTALL += " iotivity-service-samples "

