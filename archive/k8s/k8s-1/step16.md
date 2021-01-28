<br>

## yaml

`cd /root/16/`{{execute}}

`ll`{{execute}}

`cat 16_secret.yaml`{{execute}}

`cat 16_pod.yaml`{{execute}}

<br>

## apply

`kubectl apply -f .`{{execute}}

`kubectl get secret`{{execute}}

`kubectl describe secret`{{execute}}

`kubectl get pod`{{execute}}

`kubectl exec -it secret-env-pod -- bash`{{execute}}

`env`{{execute}}

`exit`

<br>

## delete

`kubectl delete -f .`{{execute}}
