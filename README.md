# laravel-ci docker image

[![Docker Pulls](https://img.shields.io/docker/pulls/dvbhack/laravel-ci.svg)][hub]
[![Docker Stars](https://img.shields.io/docker/stars/dvbhack/laravel-ci.svg)][hub]
[![Docker Layers](https://images.microbadger.com/badges/image/dvbhack/laravel-ci.svg)](https://microbadger.com/images/dvbhack/laravel-ci "Get your own image badge on microbadger.com")
[![Docker Version](https://images.microbadger.com/badges/version/dvbhack/laravel-ci.svg)](https://microbadger.com/images/dvbhack/laravel-ci "Get your own version badge on microbadger.com")

This image contains:

- php 7.1 installed globally
  - curl
  - xdebug
  - mbstring
  - pdo
  - mysqlnd
  - mcrypt
  - dom
  - tidy
  - gd
  - zip
- nodejs 7 & npm installed globally
- composer installed globally
- curl
- git
- supervisor
- mysql-client
- openssh-client

### CI configuration files:

- [demos/gitlab-ci/](https://github.com/krwu/gitlab-ci-laravel/tree/master/demos/gitlab-ci/)

### For chinese users:

You can use "**--build-arg CN_MIRROR=1**" to use Chinese debian jessie mirror, like:

```bash
docker build --build-arg CN_MIRROR=1 -t my:tag .
```

[hub]: https://hub.docker.com/r/dvbhack/laravel-ci/
