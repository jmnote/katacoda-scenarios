<br>

## before

`kubectl top pod`{{execute}}

`kubectl top node`{{execute}}

<br>

## metrics server (admin)

`cd /root/`{{execute}}

`ll`{{execute}}

`cat 13_metrics-server.yaml`{{execute}}

`cat 13_metrics-server.yaml | grep kind`{{execute}}

`kubectl apply -f 13_metrics-server.yaml`{{execute}}

`kubectl get all -n nginx-ingress`{{execute}

<br>

## after

`kubectl top pod`{{execute}}

`kubectl top node`{{execute}}

<br>

## yaml

`cd /root/13/`{{execute}}

`ll`{{execute}}

`cat 13_deployment.yaml`{{execute}}

<br>

## deploy

`kubectl top pod`{{execute}}

`kubectl top node`{{execute}}

<br>

## delete

`kubectl delete -f .`{{execute}}

