<br>

## yaml

`cd /root/13/`{{execute}}

`ll`{{execute}}

`cat deploy.yaml`{{execute}}

## deploy

`watch -n1 'kubectl get deploy,rs,pod'`{{execute}}

`kubectl apply -f deploy.yaml`{{execute}}

`kubectl delete pod POD이름`{{execute}}

## deploy

`sed 's/go-httpd:v1/go-httpd:v2/g' deploy.yaml`{{execute}}

`sed 's/go-httpd:v1/go-httpd:v2/g' deploy.yaml -i`{{execute}}

`kubectl apply -f deploy.yaml`{{execute}}
