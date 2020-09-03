<br>

`kubectl get nodes`{{execute}}

<br>

## nfs server

`cd /root/17/`{{execute}}

`sh 17_nfs-server.sh`{{execute}}

<br>

## pv

`cat 17_pv.yaml`{{execute}}

`kubectl apply -f 17_pv.yaml`{{execute}}

`kubectl get pv`{{execute}}

<br>

## pvc

`cat 17_pvc-nginx.yaml`{{execute}}

`kubectl apply -f 17_pvc-nginx.yaml`{{execute}}

`kubectl get pvc`{{execute}}

`kubectl get pv`{{execute}}

<br>

## pod

`cat 17_pod-nginx.yaml`{{execute}}

`kubectl apply -f 17_pod-nginx.yaml`{{execute}}

`kubectl get pod`{{execute}}

`kubectl exec -it nginx -- curl localhost`{{execute}}

`kubectl get pvc`{{execute}}

`ll /exports/data-0001/`{{execute}}

`echo hello pv > /exports/data-0001/index.html`{{execute}}

<br>

## pod 2

`kubectl delete -f 17_pod-nginx.yaml`{{execute}}

`kubectl apply -f 17_pod-nginx.yaml`{{execute}}

`kubectl get pod`{{execute}}

`kubectl exec -it nginx -- curl localhost`{{execute}}

<br>

## delete

`kubectl delete -f .`{{execute}}

