## [Alpine Linux](http://alpinelinux.org) v3.7

* x86_64
* Standard install
* Python 2 and 3 added, for use with Ansible.
* Includes VBoxGuestAdditions
* [Packer template](https://github.com/chriswayg/packer-templates/alpine3.7)

## Use

#### Install the [vagrant-alpine](https://github.com/chriswayg/vagrant-alpine) guest plugin.

```
vagrant plugin install vagrant-alpine
```

#### Create a `Vagrantfile`:

```
vagrant init chriswayg/alpine-3.7-x86_64 --box-version 3.7.0
```

or

Make a copy of the example [Vagrantfile](https://github.com/chriswayg/packer-templates/blob/master/alpine3.7/Vagrantfile) supplied with this repository.

#### Edit the Vagrantfile to customize for your needs.

#### Start the box:

```
vagrant up
```

## Changes

* v3.7.0
   * Initial -- Alpine v3.7.0
   * Added Python
