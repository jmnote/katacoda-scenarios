Docker Hub의 이미지를 내 저장소에 업로드하기

※ Dokcer Hub에 가입되어 있어야 합니다.

※ 개인별 실습은 생략합니다.

## 모든 이미지 삭제

`docker rmi -f $(docker images -aq)`{{execute}}


## 이미지 다운로드/업로드

`docker pull alpine:3.12.0`{{execute}}

`docker images`{{execute}}

`docker tag alpine:3.12.0 jmnote/myimage:333`{{execute}}

`docker images`{{execute}}

`docker push jmnote/myimage:333`{{execute}}

`docker login`{{execute}}

`docker push jmnote/myimage:333`{{execute}}

https://hub.docker.com/
