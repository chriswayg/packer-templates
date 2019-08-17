## [Debian](http://debian.org) v10.0 (buster)

* x86_64
* base install
* has VBoxGuestAdditions
* Packer template

## Use

```
#
# Create initial Vagrantfile
#

vagrant init chriswayg/debian-10.0.0-x86_64

#
# Customize
#

nano Vagrantfile

#
# Start the box
#

vagrant up
```

#### Build environment

```shell
packer version && vagrant -v && vboxmanage --version

	Packer v1.4.3
	Vagrant 2.2.5
	6.0.10r132072
```
