<br>

## no link

`docker run -d --name mysql1 -e MYSQL_ROOT_PASSWORD=hello -e MYSQL_DATABASE=wordpress mysql`{{execute}}

`docker exec -it mysql1 bash`{{execute}}

`mysql -uroot -phello`{{execute}}

`SHOW DATABASES;`{{execute}}

`use wordpress`{{execute}}

`SHOW TABLES;`{{execute}}

`docker run -d --name wordpress1 -p 80:80 wordpress`{{execute}}

`docker inspect mysql1 | grep IPAddress`{{execute}}

Terminal + `View HTTP port 80 on Host 1`

`docker exec -it wordpress1 bash`{{execute}}

`cat /etc/hosts`{{execute}}

`exit`{{execute}}

<br>

## link

`docker rm -f $(docker ps -aq)`{{execute}}

`docker run -d --name mysql1 -e MYSQL_ROOT_PASSWORD=hello -e MYSQL_DATABASE=wordpress mysql`{{execute}}

`docker exec -it mysql1 mysql -uroot -phello -e 'SHOW DATABASES'`{{execute}}

`docker exec -it mysql1 mysql -uroot -phello wordpress -e 'SHOW TABLES'`{{execute}}

`docker run -d --name wordpress1 --link mysql1 -p 80:80 wordpress`{{execute}}

`docker inspect mysql1 | grep IPAddress`{{execute}}

Terminal + `View HTTP port 80 on Host 1`

`docker exec -it wordpress1 bash`{{execute}}

`cat /etc/hosts`{{execute}}

`exit`{{execute}}

<br>

## network (중요도 )

`docker network ls`{{execute}}

`docker network create mynet`{{execute}}

`docker network ls`{{execute}}

`docker run -d --network mynet ubuntu`{{execute}}
