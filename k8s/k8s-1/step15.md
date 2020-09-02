<br>

## yaml 1

`cd /root/15/`{{execute}}

`ll`{{execute}}

`cat 15-1_configmap.yaml`{{execute}}

`cat 15-1_deployment.yaml`{{execute}}

<br>

## apply 1 (error)

`kubectl apply -f 15-1_deployment.yaml`{{execute}}

`kubectl get pod | grep nginx`{{execute}}

`kubectl get pod | grep nginx | head -1 | awk '{print $1}'`{{execute}}

`POD=$(kubectl get pod | grep nginx | head -1 | awk '{print $1}')`{{execute}}

`kubectl describe pod ${POD}`{{execute}}

<br>

## apply 2

`kubectl apply -f 15-1_configmap.yaml`{{execute}}

`kubectl get cm nginx-configmap`{{execute}}

`kubectl describe cm nginx-configmap`{{execute}}

`kubectl get pod | grep nginx`{{execute}}

`kubectl get pod | grep nginx | head -1 | awk '{print $1}'`{{execute}}

`POD=$(kubectl get pod | grep nginx | head -1 | awk '{print $1}')`{{execute}}

`kubectl exec -it ${POD} -- env`{{execute}}

<br>

## yaml 2

`ll`{{execute}}

`cat 15-2_configmap.yaml`{{execute}}

`cat 15-2_pod.yaml`{{execute}}

<br>

## apply 3

`kubectl apply -f .`{{execute}}

`kubectl get configmap`{{execute}}

`kubectl describe configmap`{{execute}}

`kubectl get pod`{{execute}}

`kubectl exec -it nginx -- bash`{{execute}}

`curl localhost`{{execute}}

`ls -alF /usr/share/nginx/html/`{{execute}}

`exit`

<br>

## delete

`kubectl delete -f .`{{execute}}
