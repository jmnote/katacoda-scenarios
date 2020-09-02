#!/bin/bash

#!/bin/bash

###
### 01
###
mkdir /root/01_MyAlpine
cd    /root/01_MyAlpine

cat <<EOF > Dockerfile
FROM alpine:3.11
EOF


###
### 02
###
mkdir /root/02-1_HelloJava
cd    /root/02-1_HelloJava

cat <<EOF > HelloJava.java
public class HelloJava {
	public static void main(String[] args) {
		System.out.println("Hello Java 1");
	}
}
EOF

cat <<EOF > Dockerfile
FROM openjdk:8
COPY HelloJava.java /app/
WORKDIR /app
RUN javac HelloJava.java
CMD ["java","HelloJava"]
EOF

mkdir /root/02-2_HelloJava2
cd    /root/02-2_HelloJava2

cat <<EOF > HelloJava.java
public class HelloJava {
	public static void main(String[] args) {
		System.out.println("Hello Java 2");
	}
}
EOF

cat <<EOF > Dockerfile
FROM openjdk:8 as build-stage
COPY HelloJava.java /app/
WORKDIR /app
RUN javac HelloJava.java
FROM openjdk:8-jre
COPY --from=build-stage /app/HelloJava.class /app/HelloJava.class
WORKDIR /app
CMD ["java","HelloJava"]
EOF

###
### 03
###
mkdir /root/03_HelloGo
cd    /root/03_HelloGo

cat <<EOF > HelloGo.go
package main
import "fmt"
func main() {
    fmt.Println("Hello Go")
}
EOF

cat <<EOF > Dockerfile
FROM golang:alpine AS build-stage
WORKDIR $GOPATH/src/HelloDocker/
COPY HelloDocker.go .
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -a -installsuffix cgo -ldflags="-w -s" -o /hello/HelloDocker

FROM scratch
COPY --from=build-stage /hello/HelloDocker /hello/HelloDocker
CMD ["/hello/HelloDocker"]
EOF


###
### 04
###
mkdir /root/04_HelloNode
cd    /root/04_HelloNode

cat <<EOF > app.js
const http = require('http');
const server = http.createServer((req, res) => {
  res.statusCode = 200;
  res.setHeader('Content-Type', 'text/plain');
  res.end('Hello Node');
});
server.listen(port, hostname, () => {
  console.log(`Server running at http://0.0.0.0:3000/`);
});
EOF

cat <<EOF > Dockerfile
FROM node:12
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD [ "node", "app.js" ]
EOF


###
### 05
###
mkdir /root/05_HelloDjango
cd    /root/05_HelloDjango
cat <<EOF > Dockerfile
FROM python:3.8.4
WORKDIR /app
COPY . .
RUN pip install -r requirements.txt
EXPOSE 80
CMD ["python", "manage.py", "runserver", "0.0.0.0:80"]
EOF

###
### 07
###
mkdir /root/07_SupervisorNginx
cd    /root/07_SupervisorNginx
cat <<EOF > Dockerfile
FROM nginx
RUN set -x \
&& apt-get update && apt-get install -y \
        vim \
	nano \
	cron \
	procps \
	psmisc \
        net-tools \
        supervisor \
&& rm -rf /var/lib/apt/lists/* \
&& echo '* * * * * date >> /mycron1.txt' > /etc/cron.d/mycron1 \
&& mkdir -p /var/log/supervisor \
&& echo "[program:nginx]\n\
command=/usr/sbin/nginx -g 'daemon off;'\n\
[program:cron]\n\
command=cron -f" > /etc/supervisor/conf.d/supervisord.conf
EXPOSE 22
CMD ["/usr/bin/supervisord","-n"]
EOF
