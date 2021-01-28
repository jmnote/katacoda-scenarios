<br>

## before

`kubectl api-resources | grep metrics`{{execute}}

`kubectl top pod`{{execute}}

`kubectl top node`{{execute}}

<br>

## metrics server (admin)

`cd /root/`{{execute}}

`ll`{{execute}}

`cat 13_metrics-server.yaml`{{execute}}

`cat 13_metrics-server.yaml | grep kind`{{execute}}

`cat 13_metrics-server.yaml | egrep '^kind:|^  name:'`{{execute}}

`kubectl apply -f 13_metrics-server.yaml`{{execute}}

`kubectl get pod -n kube-system | grep metrics`{{execute}}

<br>

## after

`kubectl api-resources | grep metrics`{{execute}}

`kubectl top pod`{{execute}}

`kubectl top node`{{execute}}

`kubectl top pod -A`{{execute}}
