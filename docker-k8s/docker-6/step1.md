중요한 내용은 아닙니다.


## Host

`ps -ef `{{execute}}

`uname -r`{{execute}}

`uptime`{{execute}}


## Exited

`docker run -d --name alpine1 alpine`{{execute}}

`docker run -d --name ubuntu1 ubuntu`{{execute}}

`docker ps -a`{{execute}}


## Up

`docker run -d --name alpine2 alpine sleep 600`{{execute}}

`docker run -d --name ubuntu2 alpine sleep 600`{{execute}}

`docker ps -a`{{execute}}


## exec 1

`docker exec -it alpine1 bash`{{execute}}

`docker exec -it alpine2 bash`{{execute}}

`docker exec -it alpine2 sh`{{execute}}

`cat /etc/os-release`{{execute}}

`ps -ef`{{execute}}

`uname -r`{{execute}}

`uptime`{{execute}}

`ls -alF --color /`{{execute}}


## exec 2

Terminal 1에서...

`docker exec -it ubuntu2 bash`{{execute}}

`cat /etc/os-release`{{execute}}

`ps -ef`{{execute}}

`uname -r`{{execute}}

`uptime`{{execute}}

`ls -alF --color /`{{execute}}


## inspect

`docker inspect alpine2`{{execute}}

`pstree -ap`
