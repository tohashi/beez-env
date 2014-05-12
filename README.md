### beez-env

## About

A virtual environment for beez and beez-foundation

## Dependencies

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
$ knife cook prepare vagrant@beez-env
```
