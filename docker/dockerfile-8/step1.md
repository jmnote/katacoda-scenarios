`cd /root/07_SupervisorNginx

<br>

## 기존 이미지 실행

`docker run --name spring springio/gs-spring-boot-docker`{{execute}}

`docker rm -f spring`{{execute}}

`docker run --rm -p 8080:8080 springio/gs-spring-boot-docker`{{execute}}

`curl localhost:8080`{{execute}}

<br>

## 가이드 참고

https://spring.io/guides/gs/spring-boot-docker/

<br>

`git clone https://github.com/spring-guides/gs-spring-boot-docker.git`{{execute}}

`cd gs-spring-boot-docker/`{{execute}}

`tree`{{execute}}

`find . *.java`{{execute}}

...

`diff initial/ complete/ -r`{{execute}}

`cd complete/`{{execute}}

<br>

## 로컬 빌드 후 프로세스로 실행

`./gradlew build`{{execute}}

`java -jar build/libs/gs-spring-boot-docker-0.1.0.jar`{{execute}}

`curl localhost:8080`{{execute}}

<br>

## 이미지 빌드 후 컨테이너로 실행

`./gradlew bootBuildImage --imageName=myspring`{{execute}}

`docker images`{{execute}}

`docker run --rm -p 8080:8080 myspring`{{execute}}

`curl localhost:8080`{{execute}}
