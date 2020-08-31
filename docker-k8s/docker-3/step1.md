Docker Hub의 이미지를 내 저장소에 업로드하기

※ Dokcer Hub에 가입되어 있어야 합니다.

※ 개인별 실습은 생략합니다.


`docker pull alpine:3.12.0`{{execute}}

`docker tag alpine:3.12.0 jmnote/myimage:333`{{execute}}

`docker push jmnote/myimage:333`{{execute}}

`docker login`{{execute}}

`docker push jmnote/myimage:333`{{execute}}

https://hub.docker.com/
