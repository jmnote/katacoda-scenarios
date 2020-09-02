<br>

## liveness

`cd /root/03/`{{execute}}

`ll`{{execute}}

`cat web1.yaml`{{execute}}

`kubectl apply -f web1.yaml`{{execute}}

`kubectl get pod web1 -w`{{execute}}

`kubectl exec -it web1 -- curl localhost`{{execute}}

`kubectl exec -it web1 -- supervisorctl status`{{execute}}

`kubectl exec -it web1 -- supervisorctl stop nginx`{{execute}}

`kubectl describe pod web1`{{execute}}

`kubectl get event | grep web1`{{execute}}


liveness와 readiness의 차이는?

