<br>

## yaml

`cd /root/05/`{{execute}}

`ll`{{execute}}

`cat 05_replicaset.yaml`{{execute}}

<br>

## apply

`kubectl apply -f 05_replicaset.yaml`{{execute}}

`kubectl get replicaset`{{execute}}

`kubectl get pod`{{execute}}

<br>

## pod 삭제

`kubectl get pod | grep httpd | head -1 | awk '{print $1}'`{{execute}}

`POD=$(kubectl get pod | grep httpd | head -1 | awk '{print $1}')`{{execute}}

`kubectl delete pod $POD`{{execute}}

`kubectl get pod`{{execute}}

<br>

## replica 증설

`sed 's/replicas: 3/replicas: 5/g' 05_replicaset.yaml`{{execute}}

`sed 's/replicas: 3/replicas: 5/g' 05_replicaset.yaml | kubectl apply -f -`{{execute}}

`kubectl get replicaset`{{execute}}

`kubectl get pod`{{execute}}

<br>

## replicaset 삭제

`kubectl delete -f .`{{execute}}
