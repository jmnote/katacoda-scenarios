
## no link

`docker run -d --name mysql1 -e MYSQL_ROOT_PASSWORD=hello -e MYSQL_DATABASE=wordpress mysql`{{execute}}

`docker run -d --name wordpress1 -p 80:80 wordpress`{{execute}}

`docker inspect mysql1 | grep IPAddress`{{execute}}


## link

`docker rm -f wordpress1`{{execute}}

`docker run -d --name wordpress1 --link mysql1 -p 80:80 wordpress`{{execute}}

`docker exec -it wordpress1 bash`{{execute}}

`cat /etc/hosts`{{execute}}


## network (optional)

`docker network ls`{{execute}}

`docker network create mynet`{{execute}}

`docker network ls`{{execute}}

`docker run -d --network mynet ubuntu`{{execute}}
