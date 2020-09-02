## run

`docker run --name web1 nginx`{{execute}}

`^C`{{execute ctrl-seq}}

`docker ps -a`{{execute}}

`docker rm -f web1`{{execute}}


## run -d

`docker run --help | grep detach`{{execute}}

`docker run -d --name web2 nginx`{{execute}}

`docker ps -a`{{execute}}

`docker exec -it web2 bash`{{execute}}

`curl localhost`{{execute}}

`exit`{{execute}}

`netstat -tnlp`{{execute}}

`docker rm -f $(docker ps -aq)`{{execute}}


## run -p

`docker run --help | grep publish`{{execute}}

`docker run -d -p 8081:80 --name web1 nginx`{{execute}}

`docker run -d -p 8082:80 --name web2 nginx`{{execute}}

`docker run -d -P --name web3 nginx`{{execute}}

`docker ps -a`{{execute}}

`netstat -tnlp`{{execute}}

`curl localhost:8081`{{execute}}

`curl localhost:8082`{{execute}}

`curl localhost:포트번호`{{execute}}

`docker logs web1`{{execute}}

`docker logs web1 -f`{{execute}}

터미널 1에서...

`curl localhost:8081/asdf`{{execute}}


## run --rm

`docker rm -f $(docker ps -aq)`{{execute}}

`docker ps -a`{{execute}}

`docker run --rm nginx cat /etc/nginx/conf.d/default.conf`{{execute}}

`docker ps -a`{{execute}}


## run -v

`echo hello nginx`{{execute}}

`echo hello nginx > index.html`{{execute}}

`cat index.html`{{execute}}

`pwd`{{execute}}

`echo $PWD`{{execute}}

`echo ${PWD}`{{execute}}

`docker run -d --name web1 -p 8081:80 -v ${PWD}/index.html:/usr/share/nginx/html/index.html nginx`{{execute}}

`docker ps -a`{{execute}}

`curl localhost:8081`{{execute}}

`docker logs web1`{{execute}}

`docker info | grep Root`{{execute}}

`ll /var/lib/docker/containers/*/*.log`{{execute}}

`cat /var/lib/docker/containers/*/*.log`{{execute}}

컨테이너가 제거되면 로그는?

`docker rm -f $(docker ps -aq)`{{execute}}

`ll /var/lib/docker/containers`{{execute}}
