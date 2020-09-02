<br>

## yaml

`cd /root/14/`{{execute}}

`ll`{{execute}}

`cat 14_deployment.yaml`{{execute}}

`cat 14_nodeport.yaml`{{execute}}

`cat 14_hpa.yaml`{{execute}}

<br>

## deploy

`kubectl apply -f .`{{execute}}

`watch -n1 'kubectl get hpa,deploy,rs,pod'`{{execute}}

`while true; do curl httpd-nodeport-service; done`{{execute}}

<br>

## delete

`kubectl delete -f .`{{execute}}
