<br>

## ingress controller (admin)

`cd /root/09/`{{execute}}

`ll`{{execute}}

`cat 09_ingress-controller.yaml`{{execute}}

`cat 09_ingress-controller.yaml | grep kind`{{execute}}

`kubectl apply -f 09_ingress-controller.yaml`{{execute}}

`kubectl get all -n nginx-ingress`{{execute}

<br>

## yaml

`ll`{{execute}}

`cat 09_httpd-deployment.yaml`{{execute}}

`cat 09_service.yaml`{{execute}}

`cat 09_ingress.yaml`{{execute}}

<br>

## deploy

`kubectl apply -f .`{{execute}}

<br>

## delete

`kubectl delete -f 09_httpd-deployment.yaml`{{execute}}

`kubectl delete -f 09_service.yaml`{{execute}}

`kubectl delete -f 09_ingress.yaml`{{execute}}

