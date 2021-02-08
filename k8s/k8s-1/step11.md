<br>

## yaml

`cd /root/11/`{{execute}}

`ll`{{execute}}

`cat 11_job.yaml`{{execute}}

<br>

## apply

`kubectl apply -f .`{{execute}}

`kubectl get job,pod`{{execute}}

`kubectl get pod | grep pi | awk '{print $1}'`{{execute}}

`POD=$(kubectl get pod | grep pi | awk '{print $1}')`{{execute}}

`kubectl logs ${POD}`{{execute}}

`kubectl logs ${POD} | wc`{{execute}}

<br>

## delete

`kubectl delete -f .`{{execute}}
