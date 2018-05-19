# Packer Templates

[Packer](https://packer.io) templates, mainly for use building boxes for [Vagrant Cloud](https://app.vagrantup.com/).

### Current boxes

- [Alpine Linux:](http://alpinelinux.org/)
	- [chriswayg/alpine-3.7-x86_64](https://app.vagrantup.com/chriswayg/boxes/alpine-3.7-x86_64)
- Debian:
	- [chriswayg/debian-9.4.0-x86_64](https://app.vagrantup.com/chriswayg/boxes/debian-9.4.0-x86_64)
- Various distributions by maier:
  - [maier - development vagrant boxes](https://app.vagrantup.com/maier)

## Use existing template

Using `alpine3.7` as an example:

- `cd alpine3.7`
- Edit `alpine-3.7-x86_64.json`
- `export VAGRANTCLOUD_USER="chriswayg"` to use the correct account name.
- `export VAGRANTCLOUD_TOKEN="abcdefghijk.atlasv1..."` to be able to access the account.

#### Test build

Note, this is a **local** build and will *intentionally* fail on the *post-processor*. If it didn't, it would push every build up to Vagrant Cloud, probably not what is desired when the template is being developed, updated, and/or tested.

```
../build.sh local
vagrant box add alpine-3.7-local output.box
mkdir test && cd test
vagrant init alpine-3.7-local
vagrant up
```

> Note, to debug the VM boot process change *headless* to *false* in the template. Optionally, `export PACKER_LOG=1` to see output from Packer.

#### Deploy the Vagrant Box to Vagrant Cloud

```
../build.sh vagrantcloud
```

#### Build environment

```shell
packer version && vagrant -v && vboxmanage --version

	Packer v1.2.3
	Vagrant 2.0.4
	5.2.12r122591
```
