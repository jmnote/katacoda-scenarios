## run

`docker run --name web1 nginx`{{execute}}

`docker ps -a`{{execute}}

`^C`{{execute ctrl-seq}}

`docker rm -f web1`{{execute}}


## run -d

`docker run --help | grep detach`{{execute}}

`docker run -d --name web2 nginx`{{execute}}

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

`docker logs web3`{{execute}}

`docker logs web3 -f`{{execute}}

`curl localhost:8081/asdf`{{execute}}


# run --rm

`docker rm -f $(docker ps -aq)`{{execute}}

`docker ps -a`{{execute}}

`docker run --rm nginx cat /etc/nginx/conf.d/default.conf`{{execute}}

`docker ps -a`{{execute}}


# run -v 파일

`echo hello nginx > index.html`{{execute}}

`cat index.html`{{execute}}

`docker run -d --name web1 -p 8081:80 -v `pwd`/index.html:/usr/share/nginx/html/index.html nginx`{{execute}}

`docker ps -a`{{execute}}

`curl localhost:8081`{{execute}}

`docker logs web1`{{execute}}

`ll /var/lib/docker/containers/*/*.log`{{execute}}

`cat /var/lib/docker/containers/*/*.log`{{execute}}
