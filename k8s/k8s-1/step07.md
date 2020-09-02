<br>

## yaml

`cd /root/07/`{{execute}}

`ll`{{execute}}

`cat 07_httpd-deployment.yaml`{{execute}}

`cat 07_service.yaml`{{execute}}

<br>

## deploy

`watch -n1 'kubectl get deploy,rs,pod'`{{execute}}

`kubectl apply -f .`{{execute}}

<br>

## curl

`kubectl run ubuntu --image=ubuntu --generator=run-pod/v1 --command -- sleep 180`{{execute}}

`kubectl get pod`{{execute}}

`kubectl exec -it ubuntu -- bash`{{execute}}

`curl httpd-clusterip-service`{{execute}}

`cat /etc/hosts`{{execute}}

`exit`

`kubectl exec -it ubuntu -- curl httpd-clusterip-service`{{execute}}

<br>

## delete

`kubectl delete -f .`{{execute}}
