<br>

## yaml

`cd /root/08/`{{execute}}

`ll`{{execute}}

`cat 08_httpd-deployment.yaml`{{execute}}

`cat 08_nodeport.yaml`{{execute}}

`cat 08_nodeport2.yaml`{{execute}}

<br>

## service 1

`kubectl apply -f .`{{execute}}

`kubectl get pod`{{execute}}

`kubectl get service`{{execute}}

<br>

## curl 1

`kubectl run ubuntu --image=ubuntu --generator=run-pod/v1 --command -- sleep 180`{{execute}}

`kubectl get pod`{{execute}}

`kubectl exec -it ubuntu -- curl httpd-nodeport-service`{{execute}}

`kubectl get service`{{execute}}

`kubectl get node -owide`{{execute}}

`curl 마스터:포트`{{execute}}

`curl 노드01:포트`{{execute}}

<br>

## service 2

`diff 08_nodeport.yaml 08_nodeport2.yaml`{{execute}}

`kubectl apply -f 08_nodeport2.yaml`{{execute}}

`kubectl get node -owide`{{execute}}

`kubectl get service`{{execute}}

`curl 마스터:32000`{{execute}}

`curl 노드01:32000`{{execute}}

<br>

## delete

`kubectl delete -f .`{{execute}}
