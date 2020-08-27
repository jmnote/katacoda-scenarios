Docker 이미지를 다뤄봅시다.

## 모든 이미지 삭제하기

`docker rmi -f $(docker images -aq)`{{execute}}

`docker images`{{execute}}

## 이미지 찾기 search

`docker search centos`{{execute}}

https://hub.docker.com ★

## 이미지 받기 pull #1

`docker images`{{execute}} ★

`docker pull centos`{{execute}} ★

`docker pull debian`{{execute}}

`docker pull ubuntu`{{execute}}

`docker pull alpine`{{execute}}

## 이미지 받기 pull #2

`docker images`{{execute}}

`docker pull centos:latest`{{execute}}

`docker pull centos:8`{{execute}}

`docker pull centos:7`{{execute}}

## alpine 이미지 받기

`docker pull alpine:latest`{{execute}}

`docker pull alpine:3`{{execute}}

`docker pull alpine:3.12`{{execute}}

`docker pull alpine:3.12.0`{{execute}}

`docker pull alpine:3.11`{{execute}}

`docker pull alpine:3.10`{{execute}}

`docker pull alpine:3.9`{{execute}}

## 이미지 삭제하기 rmi

`docker images`{{execute}}

`docker images alpine`{{execute}}

`docker images | grep alpine`{{execute}}

`docker rmi alpine:3.10`{{execute}}

`docker rmi f70734b6a266`{{execute}}

`docker rmi alpine:3.12.0`{{execute}}

`docker rmi a24bb4013296`{{execute}}

`docker rmi a24bb4013296 -f`{{execute}}

## 모든 이미지 삭제하기

`docker images`{{execute}}

`docker images -a`{{execute}}

`docker images -q`{{execute}}

`docker images -aq`{{execute}}

`echo $(docker images -aq)`{{execute}}

`docker rmi -f $(docker images -aq)`{{execute}} ★
