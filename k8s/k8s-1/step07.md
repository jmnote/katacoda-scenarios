<br>

## yaml

`cd /root/07/`{{execute}}

`ll`{{execute}}

`cat 07_httpd-deployment.yaml`{{execute}}

`cat 07_service.yaml`{{execute}}

<br>

## deploy

`kubectl apply -f .`{{execute}}

`kubectl get svc,deploy,rs,pod`{{execute}}

<br>

## curl

`kubectl run curlpod --image=radial/busyboxplus:curl --generator=run-pod/v1 --command sleep 36000`{{execute}}

`kubectl get pod`{{execute}}

`kubectl exec -it curlpod -- bash`{{execute}}

`kubectl exec -it curlpod -- sh`{{execute}}

`curl httpd-clusterip-service`{{execute}}

`cat /etc/hosts`{{execute}}

`exit`

`kubectl exec -it curlpod -- curl httpd-clusterip-service`{{execute}}

`for i in {120..0}; do echo $i; sleep 1; done`{{execute}}

<br>

## delete

`kubectl delete -f .`{{execute}}
