# Hello World Travis (CI) Docker Golang (App)

## Introduction

This is a hello world repo for using Travis CI with Docker and Golang

## Contents

- [Setup Travis CI](#setup-travis-ci)
- [Commit](#commit)

## Setup Travis CI

- Install the Travis CI CLI

```bash
gem install travis
```

- Log into [https://travis-ci.com](https://travis-ci.com)
- Import your public github repo
- Setup env vars for travis

```bash
travis login --org
travis env set DOCKER_HUB_USER $DOCKER_HUB_USER
travis env set DOCKER_HUB_PASS $DOCKER_HUB_PASS
```

## Commit

```bash
git add .
git commit -m "something informative about code change"
git push origin master
```

