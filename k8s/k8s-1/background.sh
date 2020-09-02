#!/bin/bash

###
### 02 kubectl & pod
###
mkdir /root/02_kubectl_pod
cd    /root/02_kubectl_pod

cat <<EOF > web1.yaml
apiVersion: v1
kind: Pod
metadata:
  name: web1
spec:
  containers:
  - name: web1
    image: nginx
    ports:
    - containerPort: 80
      protocol: TCP
EOF

###
### 03 pod liveness
###
mkdir /root/03_pod_liveness
cd    /root/03_pod_liveness

cat <<EOF > HelloGo.go
apiVersion: v1
kind: Pod
metadata:
  labels:
    test: liveness
  name: liveness-exec
spec:
  containers:
  - name: liveness
    image: k8s.gcr.io/busybox
    args:
    - /bin/sh
    - -c
    - touch /tmp/healthy; sleep 30; rm -rf /tmp/healthy; sleep 600
    livenessProbe:
      exec:
        command:
        - cat
        - /tmp/healthy
      initialDelaySeconds: 5
      periodSeconds: 5
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
