# Deprecition note
Debian 8 is already an old distribution and if possible, Debian 9 should be used. This repository won't be maintained anymore, for new version check [Debian 9 packer repository](https://github.com/korekontrol/packer-debian9)

# KoreKontrol Packer templates
This repository contains packer files to build a Debian 8.x vagrant box,
with preinstalled development tools (like git, vim). Released by
KoreKontrol (https://www.korekontrol.eu/)

## Prerequisites

* Packer (>= 0.5.0)(http://www.packer.io/downloads.html)
* Vagrant (>= 1.2.4)(http://downloads.vagrantup.com/)
* Virtualbox

## Build vagrant box

```bash
$ packer build debian-8-jessie-virtualbox.json
```


## Install your new box

```bash
$ vagrant box add debian-89 ./debian-89.box
```


## Credits
Created by [Marek Obuchowicz](https://github.com/marek-obuchowicz) from [KoreKontrol](https://www.korekontrol.eu/).  

Many thanks to Tech-Angels Inc.
