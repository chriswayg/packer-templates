## [Alpine Linux](http://alpinelinux.org) v3.7

* Minimal linux distro x86_64
* Standard install from ISO
* Python 2 and 3 added, for use with Ansible.
* Includes Virtualbox Guest Additions
* [Packer template](https://github.com/chriswayg/packer-templates/alpine3.7)
* good for developing for Alpine based Docker containers e.g. [gliderlabs/docker-alpine](https://github.com/gliderlabs/docker-alpine)

Build is for developing and testing what will be run in a container.

## Use

#### 1. Install the [vagrant-alpine](https://github.com/chriswayg/vagrant-alpine) guest plugin.

```
vagrant plugin install vagrant-alpine
```

#### 2. Create a `Vagrantfile`:

```
vagrant init chriswayg/alpine-3.7-x86_64 --box-version 3.7.0
```

##### or make a copy of the example [Vagrantfile](https://github.com/chriswayg/packer-templates/blob/master/alpine3.7/Vagrantfile) in this repository.

Edit the Vagrantfile to customize for your needs.

#### 3. Start the box:

```
vagrant up
```

## Usage notes

* `bash` is installed by default so `config.ssh.shell="/bin/sh"` is not necessary.
* The Vagrant plugin `vagrant-alpine`, developed to support Alpine specific guests, enables hostname, network settings and other features.

## Build environment

```shell
packer version && vagrant -v && vboxmanage --version

		Packer v1.2.3
		Vagrant 2.0.4
		5.2.10r122088
```
