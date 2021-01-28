<br>

## yaml

`cd /root/12/`{{execute}}

`ll`{{execute}}

`cat 12_cronjob.yaml`{{execute}}

<br>

## apply

`kubectl apply -f 12_cronjob.yaml`{{execute}}

`kubectl get cronjob`{{execute}}

`kubectl get job`{{execute}}

`kubectl get pod`{{execute}}

`POD=$(kubectl get pod | grep hello | tail -1 | awk '{print $1}')`{{execute}}

`kubectl logs ${POD}`{{execute}}

<br>

## deploy

`kubectl delete -f .`{{execute}}
