<br>

## nfs server (admin)

`kubectl get storageclass -A`{{execute}}

`cd /root/`{{execute}}

`cat 17_nfs-server-manaul.sh`{{execute}}

`bash 17_nfs-server-manaul.sh`{{execute}}

`kubectl get storageclass -A`{{execute}}

<br>

## yaml

`cd /root/17/`{{execute}}

`ll`{{execute}}

`cat 17_pod.yaml`{{execute}}

`cat 17_pvc.yaml`{{execute}}

<br>

## apply

`kubectl apply -f .`{{execute}}

<br>

## delete

`kubectl delete -f .`{{execute}}

