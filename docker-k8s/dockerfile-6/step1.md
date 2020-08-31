<br>

`docker rmi -f $(docker images -aq)`{{execute}}

<br>

## 로컬 테스트

`git clone https://github.com/creativetimofficial/vuetify-material-dashboard.git`{{execute}}

`cd vuetify-material-dashboard/`{{execute}}

`npm install`{{execute}}

`npm run serve -- --host 0.0.0.0 --port 80`

Terminal 1 + `View HTTP 80`


## Dockerize

`cp ~/05_HelloVuetify/Dockerfile .`{{execute}}

`cat Dockerfile`{{execute}}

`docker build -t HelloVuetify .`{{execute}}

`docker run -d -p 80:80 HelloVuetify`{{execute}}

`docker ps -a`{{execute}}

Terminal 1 + `View HTTP 80`{{execute}}
