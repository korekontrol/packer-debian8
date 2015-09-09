# KoreKontrol Packer templates
This repository contains packer files to build a Debian 8.x vagrant box,
with preinstalled development tools (like git, vim). Released by
KoreKontrol (https://www.korekontrol.eu/)

## Prerequisites

* Packer (>= 0.5.0)(http://www.packer.io/downloads.html)
* Vagrant (>= 1.2.4)(http://downloads.vagrantup.com/)
* Vmware or Virtualbox
* Vagrant vmware plugin if you're using vmware (http://www.vagrantup.com/vmware)

## Build vagrant box

```bash
$ packer build debian-7-wheezy-virtualbox.json
```


## Install your new box

```bash
$ vagrant box add debian-78 ./debian-78.box
```

or

The VM image has been imported to vagrant, it's now available on your system.

## Credits

  Many thanks to Tech-Angels Inc.
