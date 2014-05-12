# beez-env

## About

A virtual environment for [beez](https://github.com/CyberAgent/beez) and [beez-foundation](https://github.com/CyberAgent/beez-foundation).

## Requirements

- Vagrant
- Chef
- knife-solo
- Berkshelf

## Setup

```
$ berks vendor ./cookbooks
$ vagrant up
$ vagrant ssh-config --host beez-env >> /path/to/ssh-config
$ knife solo prepare vagrant@beez-env
$ knife solo cook vagrant@beez-env
```
