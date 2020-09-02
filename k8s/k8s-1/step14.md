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

`watch 'kubectl get hpa,deploy,rs,pod; echo; kubectl top pod'`{{execute}}

다른 탭에서...

`while true; do curl localhost:32000; done`{{execute}}

원래 탭 확인

<br>

## delete

`kubectl delete -f .`{{execute}}
