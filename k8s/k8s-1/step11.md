<br>

## yaml

`cd /root/11/`{{execute}}

`ll`{{execute}}

`cat 11_job.yaml`{{execute}}

<br>

## apply

`kubectl apply -f .`{{execute}}

`kubectl get job,pod`{{execute}}

`kubectl logs pod/pi-rwp9l`{{execute}}

`kubectl logs pod/pi-rwp9l | wc`{{execute}}

<br>

## delete

`kubectl delete -f .`{{execute}}
