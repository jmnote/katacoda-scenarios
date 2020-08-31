#!/bin/bash

###
### 01
###
mkdir /root/01_HelloJava_v1
cd    /root/01_HelloJava_v1

cat <<EOF > HelloJava.java
public class HelloJava {
	public static void main(String[] args) {
		System.out.println("Hello Java");
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

###
### 02
###
mkdir /root/02_HelloJava_v2
cd    /root/02_HelloJava_v2

cat <<EOF > HelloJava.java
public class HelloJava {
	public static void main(String[] args) {
		System.out.println("Hello Java");
	}
}
EOF

cat <<EOF > Dockerfile
FROM openjdk:8 as build-stage
COPY HelloJava.java /app/
WORKDIR /app
RUN javac HelloDocker.java

FROM openjdk:8-jre
COPY --from=build-stage /app/HelloDocker.class /app/HelloDocker.class
WORKDIR /app
CMD ["java","HelloDocker"]
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

###
### 03
###
mkdir /root/04_HelloDjango
cd    /root/04_HelloDjango
cat <<EOF > Dockerfile
FROM python:3.8.4
WORKDIR /app
COPY . .
RUN pip install -r requirements.txt
EXPOSE 80
CMD ["python", "manage.py", "runserver", "0.0.0.0:80"]
EOF
