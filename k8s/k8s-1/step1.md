<br>

## kubectl 명령어

`kubectl version`{{execute}}

`kubectl cluster-info`{{execute}}

`kubectl get nodes`{{execute}}

`kubectl get nodes -owide`{{execute}}

`kubectl get pods`{{execute}}

`kubectl get pods -n default`{{execute}}

`kubectl get namespaces`{{execute}}

`kubectl get pods -A`{{execute}}

<br>

## kubeconfig (optional)

`which launch.sh`{{execute}}

`cat /usr/bin/launch.sh`{{execute}}

`cat ~/.kube/config`{{execute}}

`mv ~/.kube/config .`{{execute}}

`kubectl get nodes`{{execute}}

`kubectl get nodes --kubeconfig config`{{execute}}

`mv config ~/.kube/`{{execute}}

`kubectl get nodes`{{execute}}

<br>

## k8s apiserver (optional)

`kubectl config view`{{execute}}

`cat ~/.kube/config | grep server`{{execute}}

`kubectl config view | grep server`{{execute}}

`ip a`{{execute}}

`kubectl get nodes -owide`{{execute}}

`netstat -tnlp | grep apiserver`{{execute}}
