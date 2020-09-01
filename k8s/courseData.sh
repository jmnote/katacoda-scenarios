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

cat <<EOF > web1.yaml
apiVersion: v1
kind: Pod
metadata:
  name: web1
spec:
  containers:
  - name: web1
    image: jmnote/supervisor-nginx
    livenessProbe:
      httpGet:
        path: /
        port: 80
      initialDelaySeconds: 10
      timeoutSeconds: 10
EOF

###
### 04
###
mkdir /root/04_sidecar
cd    /root/04_sidecar

cat <<'EOF' > counter.yaml
apiVersion: v1
kind: Pod
metadata:
  name: counter
spec:
  containers:
  - name: count
    image: busybox
    args:
    - /bin/sh
    - -c
    - >
      i=0;
      while true;
      do
        echo "$i: $(date)" >> /var/log/1.log;
        echo "$(date) INFO $i" >> /var/log/2.log;
        i=$((i+1));
        sleep 1;
      done
    volumeMounts:
    - name: varlog
      mountPath: /var/log
  - name: count-log-1
    image: busybox
    args: [/bin/sh, -c, 'tail -n+1 -f /var/log/1.log']
    volumeMounts:
    - name: varlog
      mountPath: /var/log
  - name: count-log-2
    image: busybox
    args: [/bin/sh, -c, 'tail -n+1 -f /var/log/2.log']
    volumeMounts:
    - name: varlog
      mountPath: /var/log
  volumes:
  - name: varlog
    emptyDir: {}
EOF

###
### 05
###
mkdir /root/05_ReplicaSet
cd    /root/05_ReplicaSet
cat <<EOF > replicaset.yaml
apiVersion: apps/v1
kind: ReplicaSet
metadata:
  name: httpd-replicaset
  labels:
    app: httpd-replicaset
spec:
  replicas: 3
  selector:
    matchLabels:
      app: httpd-replicaset
  template:
    metadata:
      labels:
        app: httpd-replicaset
    spec:
      containers:
      - image: ethos93/go-httpd:v1
        imagePullPolicy: Always
        name: httpd-replicaset
        ports:
        - containerPort: 80
          protocol: TCP
EOF


###
### 06
###
mkdir /root/06_Deployment
cd    /root/06_Deployment
cat <<EOF > deploy.yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: httpd-deployment
  labels:
    app: httpd-deployment
spec:
  replicas: 10
  strategy:
    type: RollingUpdate
    rollingUpdate:
      maxSurge: 1
      maxUnavailable: 0
  selector:
    matchLabels:
      app: httpd-deployment
  template:
    metadata:
      labels:
        app: httpd-deployment
    spec:
      containers:
      - image: ethos93/go-httpd:v1
        name: httpd-deployment
        ports:
        - containerPort: 80
          protocol: TCP
EOF

###
### 07
###
mkdir /root/07_Service
cd    /root/07_Service
cat <<EOF > service.yaml
apiVersion: v1
kind: Service
metadata:
  name: httpd-clusterip-service
spec:
  selector:
    app: httpd-replicaset
  ports:
    - protocol: TCP
      port: 80
      targetPort: 80
  type: ClusterIP
EOF

###
### 08
###
mkdir /root/08_NodePort
cd    /root/08_NodePort
cat <<EOF > nodeport.yaml
apiVersion: v1
kind: Service
metadata:
  name: httpd-nodeport-service
spec:
  selector:
    app: httpd-deployment
  ports:
    - protocol: TCP
      port: 80
      targetPort: 80
  type: NodePort
EOF

###
### 09
###
mkdir /root/09_Ingress
cd    /root/09_Ingress


###
### 10
###
mkdir /root/10_Rollout
cd    /root/10_Rollout


###
### 11
###
mkdir /root/11_ConfigMap
cd    /root/11_ConfigMap


###
### 12
###
mkdir /root/12_Volume
cd    /root/12_Volume

