set -e

echo "setting up sudo for vagrant user"

echo "vagrant ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/vagrant
chmod 440 /etc/sudoers.d/vagrant

echo "Defaults !requiretty" >> /etc/sudoers

exit 0
