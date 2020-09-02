<br>

## no link

`docker run -d --name mysql1 -e MYSQL_ROOT_PASSWORD=hello -e MYSQL_DATABASE=wordpress mysql`{{execute}}

`docker exec -it mysql1 bash`{{execute}}

`mysql -uroot -phello`{{execute}}

`SHOW DATABASES;`{{execute}}

`docker run -d --name wordpress1 -p 80:80 wordpress`{{execute}}

Terminal + `View HTTP port 80 on Host 1`

`docker exec -it wordpress1 bash`{{execute}}

`cat /etc/hosts`{{execute}}

`exit`{{execute}}

`docker inspect mysql1 | grep IPAddress`{{execute}}

<br>

## link

`docker rm -f $(docker ps -aq)`{{execute}}

`docker run -d --name mysql1 -e MYSQL_ROOT_PASSWORD=hello -e MYSQL_DATABASE=wordpress mysql`{{execute}}

`docker exec -it mysql1 mysql -uroot -phello -e 'SHOW DATABASES'`{{execute}}

`docker run -d --name wordpress1 --link mysql1 -p 80:80 wordpress`{{execute}}

`docker inspect mysql1 | grep IPAddress`{{execute}}

`docker exec -it wordpress1 bash`{{execute}}

`cat /etc/hosts`{{execute}}

`exit`{{execute}}

<br>

## network (optional)

`docker network ls`{{execute}}

`docker network create mynet`{{execute}}

`docker network ls`{{execute}}

`docker run -d --network mynet ubuntu`{{execute}}
