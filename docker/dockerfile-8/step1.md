<br>

## build

`cd /root/07_SupervisorNginx`{{execute}}

`cat Dockerfile`{{execute}}

`docker built -t supervisor-nginx .`{{execute}}

`docker images supervisor-nginx`{{execute}}

<br>

## run

`docker run -d --name supernginx supervisor-nginx`{{execute}}

`docker exec -it supernginx bash`{{execute}}

`ps -ef`{{execute}}

`pstree`{{execute}}

`supervisorctl status`{{execute}}
