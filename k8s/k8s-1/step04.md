<br>

## yaml

`cd /root/04/`{{execute}}

`ll`{{execute}}

`cat counter.yaml`{{execute}}

`kubectl apply -f counter.yaml`{{execute}}

`kubectl get pod counter`{{execute}}

<br>

## exec

`kubectl exec -it counter -- hostname`{{execute}}

`kubectl exec -it counter -c count -- hostname`{{execute}}

`kubectl exec -it counter -c count -- ps -ef`{{execute}}

`kubectl exec -it counter -c count-log-1 -- hostname`{{execute}}

`kubectl exec -it counter -c count-log-1 -- ps -ef`{{execute}}

`kubectl exec -it counter -c count-log-2 -- hostname`{{execute}}

`kubectl exec -it counter -c count-log-2 -- ps -ef`{{execute}}


<br>

## log

`kubectl logs counter`{{execute}}

`kubectl logs counter -c count`{{execute}}

`kubectl logs counter -c count-log-1`{{execute}}

`kubectl logs counter -c count-log-2`{{execute}}

<br>

## 삭제

`kubectl delete -f counter.yaml`{{execute}}
