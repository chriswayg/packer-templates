set -x

echo

echo "removing xll packages (server not desktop...)"
apt-get remove -y libx11.* libqt.*

echo "update remaining packages"
apt-get update

echo "purging packages which are no longer needed"
apt-get autoremove -y
