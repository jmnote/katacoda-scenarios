<br>

## yaml

`cd /root/02/`{{execute}}

`ll`{{execute}}

`cat 02_web1.yaml`{{execute}}

<br>

## apply

`kubectl apply -f 02_web1.yaml`{{execute}}

`kubectl get pod`{{execute}}

`kubectl get pod -owide`{{execute}}

`kubectl exec -it web1 bash`{{execute}}

`exit`

`kubectl exec -it web1 -- bash`{{execute}}

`curl localhost`{{execute}}

`exit`

`kubectl delete pod web1`{{execute}}

<br>

## kubectl

`kubectl create -f 02_web1.yaml`{{execute}}

`kubectl delete -f 02_web1.yaml`{{execute}}

`kubectl apply -f 02_web1.yaml`{{execute}}

`kubectl delete -f 02_web1.yaml`{{execute}}

`kubectl apply -f .`{{execute}}

`kubectl delete -f .`{{execute}}
