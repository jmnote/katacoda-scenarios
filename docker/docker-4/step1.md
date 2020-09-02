

## Hello World

`docker run hello-world`{{execute}}

`docker run hello-world`{{execute}}

`docker ps -a`{{execute}}


## run -it

`docker run ubuntu`{{execute}}

`docker run -it ubuntu`{{execute}} ★

`exit`{{execute}}

`docker ps -a`{{execute}}

`docker run --help | egrep 'interactive|tty'`{{execute}}


## -i vs -t

`docker run -i alpine`{{execute}}

`whoami`{{execute}}

`tty`{{execute}}

`exit`{{execute}}

`docker run -t alpine`{{execute}}

`whoami`{{execute}}

`tty`{{execute}}

`exit`{{execute}}

`^C`{{execute ctrl-seq}}

`docker ps`{{execute}}

`docker ps -a`{{execute}}


## COMMAND 실행

`docker run ubuntu echo hello world`{{execute}}

`docker ps -a`{{execute}}

`docker run --name ubuntu1 ubuntu echo hello world`{{execute}}

`docker ps -a`{{execute}}

`docker start -i ubuntu1`{{execute}}

`docker ps -a`{{execute}}

VM과의 차이점?


## 컨테이너 제거

`docker ps -a`{{execute}}

`docker rm 컨테이너ID`{{execute}}

`docker rm -f 컨테이너ID`{{execute}} ★

`docker rm -f 컨테이너이름`{{execute}}



## 모든 컨테이너 제거

`docker ps -a`{{execute}}

`docker ps -aq`{{execute}}

`echo $(docker ps -aq)`{{execute}}

`docker rm -f $(docker ps -aq)`{{execute}} ★

`docker ps -a`{{execute}}
