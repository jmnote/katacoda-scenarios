<br>

## yaml

`cd /root/10/`{{execute}}

`ll`{{execute}}

`cat 10_deployment_v1.yaml`{{execute}}

`cat 10_deployment_v2.yaml`{{execute}}

`cat 10_service.yaml`{{execute}}

## deploy

`kubectl apply -f 10_deployment_v1.yaml`{{execute}}

`kubectl apply -f 10_service.yaml`{{execute}}

`kubectl get pod`{{execute}}

`kubectl exec -it curlpod -- curl httpd-nodeport-service`{{execute}}

`while sleep 0.5; do kubectl exec -it curlpod -- curl httpd-nodeport-service; done{{execute}}`{{execute}}

다른 탭에서...

`cd /root/10/`{{execute}}

`kubectl apply -f 10_deployment_v2.yaml`{{execute}}

원래 탭 확인

## rollout

다른 탭에서...

`kubectl rollout history deployment httpd-deployment`{{execute}}

`kubectl rollout history deployment httpd-deployment --revision=1`{{execute}} 

`kubectl rollout history deployment httpd-deployment --revision=2`{{execute}} 

`kubectl rollout undo deployment httpd-deployment --to-revision=1`{{execute}}

원래 탭 확인
