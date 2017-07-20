# laravel-ci docker image

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
