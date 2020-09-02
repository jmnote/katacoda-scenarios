<br>

## yaml

`cd /root/02/`{{execute}}

`ll`{{execute}}

`cat web1.yaml`{{execute}}

<br>

## apply

`kubectl apply -f web1.yaml`{{execute}}

`kubectl get pod`{{execute}}

`kubectl get pod -owide`{{execute}}

`kubectl exec -it web1 bash`{{execute}}

`exit`{{execute}}

`kubectl exec -it web1 -- bash`{{execute}}

`curl localhost`{{execute}}

`exit`{{execute}}

`kubectl delete pod web1`{{execute}}

<br>

## kubectl

`kubectl create -f web1.yaml`{{execute}}

`kubectl delete -f web1.yaml`{{execute}}

`kubectl apply -f web1.yaml`{{execute}}

`kubectl delete -f web1.yaml`{{execute}}

`kubectl apply -f .`{{execute}}

`kubectl delete -f .`{{execute}}
