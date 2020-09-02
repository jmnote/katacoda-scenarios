<br>

## yaml 1

`cd /root/06/`{{execute}}

`ll`{{execute}}

`cat 06-1_nginx-deployment.yaml`{{execute}}

<br>

## deploy 1

`kubectl apply -f 06-1_nginx-deployment.yaml.yaml`{{execute}}

`kubectl delete pod deploy,rs,pod`{{execute}}

`kubectl delete pod POD이름`{{execute}}

<br>

## yaml 2

`cat 06-2_httpd-deployment.yaml`{{execute}}

<br>

## deploy 2

`watch -n1 'kubectl get deploy,rs,pod'`{{execute}}

`sed 's/go-httpd:v1/go-httpd:v2/g' deploy.yaml`{{execute}}

`sed 's/go-httpd:v1/go-httpd:v2/g' deploy.yaml | kubectl -f -`{{execute}}
