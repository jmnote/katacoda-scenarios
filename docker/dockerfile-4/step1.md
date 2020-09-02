<br>


## HelloNode

`cd /root/04_HelloNode`{{execute}}

`ll`{{execute}}

`cat app.js`{{execute}}

`cat Dockerfile`{{execute}}

`docker build -t hello-node .`{{execute}}

`docker run -d --name hello-node1 -p 80:3000 hello-node`{{execute}}
