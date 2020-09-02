<br>

## yaml

`cd /root/05/`{{execute}}

`ll`{{execute}}

`cat replicaset.yaml`{{execute}}

<br>

## apply

`kubectl apply -f replicaset.yaml`{{execute}}

`kubectl get replicaset`{{execute}}

`kubectl get pod`{{execute}}

<br>

## pod 삭제

`kubectl delete pod POD이름`{{execute}}

`kubectl get pod`{{execute}}

<br>

## replica 증설

`sed 's/replicas: 3/replicas: 5/g' replicaset.yaml`{{execute}}

`sed 's/replicas: 3/replicas: 5/g' replicaset.yaml -i`{{execute}}

`kubectl apply -f replicaset.yaml`{{execute}}

`kubectl get replicaset`{{execute}}

`kubectl get pod`{{execute}}

<br>

## replicaset 삭제

`kubectl delete -f replicaset.yaml`{{execute}}
