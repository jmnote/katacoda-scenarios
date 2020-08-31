#!/bin/bash

mkdir /root/HelloJava; cd /root/HelloJava

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
