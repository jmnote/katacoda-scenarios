<br>

## Host

`ps -ef `{{execute}}

`uname -r`{{execute}}

`uptime`{{execute}}

<br>

## Exited

`docker run -d --name alpine1 alpine`{{execute}}

`docker run -d --name ubuntu1 ubuntu`{{execute}}

`docker ps -a`{{execute}}

<br>

## Up

`docker run -d --name alpine2 alpine sleep 600`{{execute}}

`docker run -d --name ubuntu2 ubuntu sleep 600`{{execute}}

`docker ps -a`{{execute}}

<br>

## exec 1

`docker exec -it alpine1 bash`{{execute}}

`docker exec -it alpine2 bash`{{execute}}

`docker exec -it alpine2 sh`{{execute}}

`cat /etc/os-release`{{execute}}

`ps -ef`{{execute}}

`uname -r`{{execute}}

`uptime`{{execute}}

`ls -alF --color /`{{execute}}

`exit`{{execute}}

<br>

## exec 2

`docker exec -it ubuntu2 sh`{{execute}}

`exit`{{execute}}

`docker exec -it ubuntu2 bash`{{execute}}

`cat /etc/os-release`{{execute}}

`ps -ef`{{execute}}

`uname -r`{{execute}}

`uptime`{{execute}}

`ls -alF --color /`{{execute}}

`exit`{{execute}}

<br>

## inspect

`docker inspect alpine2 | head -20`{{execute}}

`docker inspect alpine2`{{execute}}

<br>

## rm

`docker rm -f $(docker ps -aq)`{{execute}}
