set -ux

# update all packages, especially the kernel.
apk update && apk upgrade

# FIX 'VM iso spawns getty on serial port by default'
# https://bugs.alpinelinux.org/issues/8704
sed -i '/^ttyS0/s/^/#/' /etc/inittab
