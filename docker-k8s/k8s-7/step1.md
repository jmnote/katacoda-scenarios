<br>

## 모든 이미지 제거

`docker rmi -f $(docker images -aq)`{{execute}}


## tag

`docker pull alpine:3.11`{{execute}}

`docker images alpine`{{execute}}

`docker tag alpine:3.11 jmnote/myimage:v1`{{execute}}

`docker images | egrep 'alpine|myimage'`{{execute}}


## build

`echo FROM alpine:3.11 > Dockerfile`{{execute}}

`cat Dockerfile`{{execute}}

`docker build -t jmnote/myimage:v2 .`{{execute}}

`docker images | egrep 'alpine|myimage'`{{execute}}
