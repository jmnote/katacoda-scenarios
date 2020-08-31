<br>


## HelloNode

`cd /root/04_HelloNode`{{execute}}

`ll`{{execute}}

`cat app.js`{{execute}}

`cat Dockerfile`{{execute}}

`docker build -t HelloNode .`{{execute}}

`docker run -d --name HelloNode -p 80:3000 HelloNode`{{execute}}
