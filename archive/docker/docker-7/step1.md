docker run -v -e

## mysql1

`mkdir /mydata`{{execute}}

`docker run -d --name mysql1 -v /mydata:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=hello mysql`{{execute}}

`docker ps -a`{{execute}}

`docker exec -it mysql1 bash`{{execute}}

`mount | grep /var/lib/mysql`{{execute}}

`env`{{execute}}

`mysql -uroot -phello`{{execute}}

`create database database1;`{{execute}}

`show databases;`{{execute}}

`exit`{{execute}}

`exit`{{execute}}


## mysql2

`docker rm -f mysql1`{{execute}}

`docker ps -a`{{execute}}

`ll /mydata`{{execute}}

`docker run -d --name mysql2 -v /mydata:/var/lib/mysql  -e MYSQL_ROOT_PASSWORD=hello mysql`{{execute}}

`docker ps -a`{{execute}}

`docker exec -it mysql2 bash`{{execute}}

`mysql -uroot -phello`{{execute}}

`show databases;`{{execute}}

`exit`{{execute}}

`exit`{{execute}}


## volume (optional)

`docker volume ls`{{execute}}

`docker volume create myvol`{{execute}}

`docker volume ls`{{execute}}

`docker inspect myvol`{{execute}}

`docker run -d -v myvol:/var/lib/mysql mysql`{{execute}}
