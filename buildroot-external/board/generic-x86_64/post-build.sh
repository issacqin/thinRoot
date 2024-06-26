#!/bin/sh

# create VERSION file
echo "VERSION=${PRODUCT_VERSION}" >"${TARGET_DIR}/VERSION"
echo "PRODUCT=${PRODUCT}" >>"${TARGET_DIR}/VERSION"
echo "PLATFORM=generic-x86_64" >>"${TARGET_DIR}/VERSION"

# remove /etc/dbus-1/system.d/pulseaudio-system.conf
rm -f "${TARGET_DIR}/etc/dbus-1/system.d/pulseaudio-system.conf"

# remove /etc/init.d/S40xorg as not needed
rm -f "${TARGET_DIR}/etc/init.d/S40xorg"
