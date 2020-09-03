<br>

## yaml

`cd /root/10/`{{execute}}

`ll`{{execute}}

`cat 10_deployment_v1.yaml`{{execute}}

`cat 10_deployment_v2.yaml`{{execute}}

`diff 10_deployment_v1.yaml 10_deployment_v2.yaml`{{execute}}

`cat 10_service.yaml`{{execute}}

<br>

## deploy

`kubectl apply -f 10_deployment_v1.yaml`{{execute}}

`kubectl apply -f 10_service.yaml`{{execute}}

`kubectl get pod`{{execute}}

`kubectl run curlpod --image=radial/busyboxplus:curl --generator=run-pod/v1 --command sleep 36000`{{execute}}

`kubectl exec -it curlpod -- curl httpd-clusterip-service`{{execute}}

`while sleep 0.5; do kubectl exec -it curlpod -- curl httpd-clusterip-service; done{{execute}}`{{execute}}

다른 탭에서...

`cd /root/10/`{{execute}}

`kubectl apply -f 10_deployment_v2.yaml`{{execute}}

원래 탭 확인

<br>

## rollout

다른 탭에서...

`kubectl rollout history deployment httpd-deployment`{{execute}}

`kubectl rollout history deployment httpd-deployment --revision=1`{{execute}} 

`kubectl rollout history deployment httpd-deployment --revision=2`{{execute}} 

`kubectl rollout undo deployment httpd-deployment --to-revision=1`{{execute}}

원래 탭 확인
