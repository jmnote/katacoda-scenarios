<br>

## katacoda launch.sh

`which launch.sh`{{execute}}

`cat /usr/bin/launch.sh`{{execute}}

<br>

## kubeconfig

`kubectl get nodes`{{execute}}

`cat ~/.kube/config`{{execute}}

`mv ~/.kube/config .`{{execute}}

`kubectl get nodes`{{execute}}

`kubectl get nodes --kubeconfig config`{{execute}}

`mv config ~/.kube/`{{execute}}

`kubectl get nodes`{{execute}}

<br>

## kubectl 명령어

`kubectl`{{execute}}

`kubectl version`{{execute}}

`kubectl cluster-info`{{execute}}

`kubectl get nodes`{{execute}}

`kubectl get nodes -owide`{{execute}}

`kubectl get pods`{{execute}}

`kubectl get pods -n default`{{execute}}

`kubectl get namespaces`{{execute}}

`kubectl get pods -A`{{execute}}

<br>

## 축약형

`kubectl api-resources`{{execute}}

`kubectl api-resources | egrep 'Pod|ReplicaSet|Deployment|Service|Ingress'`{{execute}}

<br>

## k8s apiserver (admin)

`kubectl config view`{{execute}}

`cat ~/.kube/config | grep server`{{execute}}

`kubectl config view | grep server`{{execute}}

`ip a`{{execute}}

`kubectl get nodes -owide`{{execute}}

`netstat -tnlp | grep apiserver`{{execute}}
