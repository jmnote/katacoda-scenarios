<br>

## 모든 이미지 삭제

`docker images`{{execute}}

`docker rmi -f $(docker images -aq)`{{execute}}

`docker images`{{execute}}


## 이미지 찾기

`docker search centos`{{execute}}

https://hub.docker.com ★


## 이미지 받기

`docker pull ubuntu`{{execute}} ★

이미지의 tag는? 레이어 수는?

`docker images`{{execute}}

받은 이미지는 어디에 저장되는가?

`docker info | egrep 'Root|Storage'`{{execute}}

`ps -ef  | grep dockerd`{{execute}}

`ll /var/lib/docker/overlay/`{{execute}}


## 특정버전 받기

`docker images`{{execute}}

`docker pull alpine:latest`{{execute}}

`docker pull alpine:3`{{execute}}

`docker pull alpine:3.12`{{execute}}

`docker pull alpine:3.12.0`{{execute}}

`docker pull alpine:3.11`{{execute}}

`docker pull alpine:3.10`{{execute}}

`docker pull alpine:3.9`{{execute}}


## 이미지 삭제

`docker images`{{execute}}

`docker images alpine`{{execute}}

`docker images | grep alpine`{{execute}}

`docker rmi alpine:3.10`{{execute}}

`docker rmi f70734b6a266`{{execute}}

`docker rmi alpine:3.12.0`{{execute}}

`docker rmi a24bb4013296`{{execute}}

`docker rmi a24bb4013296 -f`{{execute}}


## 모든 이미지 삭제 2

`docker images`{{execute}}

`docker images -a`{{execute}}

`docker images -q`{{execute}}

`docker images -aq`{{execute}}

`echo $(docker images -aq)`{{execute}}

`docker rmi -f $(docker images -aq)`{{execute}}

`ll /var/lib/docker/overlay/`{{execute}}

