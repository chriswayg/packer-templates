## [Debian](http://debian.org) v9.4 (stretch)

* x86_64
* base install
* has VBoxGuestAdditions
* Packer template

## Use

```
#
# Create initial Vagrantfile
#

vagrant init chriswayg/debian-9.4.0-x86_64

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

	Packer v1.2.3
	Vagrant 2.0.4
	5.2.12r122591
```
