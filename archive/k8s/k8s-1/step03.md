<br>

## yaml

`cd /root/03/`{{execute}}

`ll`{{execute}}

`cat 03_web1.yaml`{{execute}}

<br>

## apply

`kubectl apply -f 03_web1.yaml`{{execute}}

`kubectl get pod web1`{{execute}}

`kubectl describe pod web1`{{execute}}

`kubectl exec -it web1 -- curl localhost`{{execute}}

`kubectl exec -it web1 -- supervisorctl status`{{execute}}

`kubectl exec -it web1 -- supervisorctl stop nginx`{{execute}}

`kubectl get pod web1`{{execute}}

`kubectl describe pod web1`{{execute}}

`kubectl get event | grep web1`{{execute}}

<br>

## delete

`kubectl delete -f .`{{execute}}
