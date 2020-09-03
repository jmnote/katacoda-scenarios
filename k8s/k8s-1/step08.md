<br>

## yaml

`cd /root/08/`{{execute}}

`ll`{{execute}}

`cat 08_httpd-deployment.yaml`{{execute}}

`cat 08_nodeport.yaml`{{execute}}

<br>

## nodeport 1

`kubectl apply -f 08_httpd-deployment.yaml`{{execute}}

`kubectl apply -f 08_nodeport.yaml`{{execute}}

`kubectl get pod`{{execute}}

`kubectl get service`{{execute}}

<br>

## curl 1

`kubectl run curlpod --image=radial/busyboxplus:curl --generator=run-pod/v1 --command sleep 36000`{{execute}}

`kubectl get pod`{{execute}}

`kubectl exec -it curlpod -- curl httpd-nodeport-service`{{execute}}

`kubectl get service`{{execute}}

`kubectl get node -owide`{{execute}}

`ping controlplane`{{execute}}

`ping node01`{{execute}}

`kubectl get service`{{execute}}

`PORT=NodePort번호`{{execute}}

`curl controlplane:$PORT`{{execute}}

`curl node01:$PORT`{{execute}}

<br>

## nodeport 2

`cat 08_nodeport2.yaml`{{execute}}

`diff 08_nodeport.yaml 08_nodeport2.yaml`{{execute}}

`kubectl apply -f 08_nodeport2.yaml`{{execute}}

`kubectl get service`{{execute}}

`kubectl exec -it curlpod -- curl httpd-nodeport-service`{{execute}}

`PORT=32000`{{execute}}

`curl controlplane:$PORT`{{execute}}

`curl node01:$PORT`{{execute}}

<br>

## delete

`kubectl delete -f .`{{execute}}

`kubectl delete pod curlpod`{{execute}}

