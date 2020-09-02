<br>

## yaml 1

`cd /root/06/`{{execute}}

`ll`{{execute}}

`cat 06-1_nginx-deployment.yaml`{{execute}}

<br>

## deploy 1

`kubectl apply -f 06-1_nginx-deployment.yaml.yaml`{{execute}}

`kubectl get deploy,rs,pod`{{execute}}

`kubectl get pod | grep nginx | head -1 | awk '{print $1}'`{{execute}}

`POD=$(kubectl get pod | grep nginx | head -1 | awk '{print $1}')`{{execute}}

`kubectl delete pod $POD`{{execute}}

`kubectl get deploy,rs,pod`{{execute}}

<br>

## yaml 2

`cat 06-2_httpd-deployment.yaml`{{execute}}

<br>

## deploy 2

`kubectl apply -f 06-2_httpd-deployment.yaml`{{execute}}

`kubectl get deploy,rs,pod`{{execute}}

`watch -n1 'kubectl get deploy,rs,pod'`{{execute}}

`sed 's/go-httpd:v1/go-httpd:v2/g' 06-2_httpd-deployment.yaml`{{execute}}

`sed 's/go-httpd:v1/go-httpd:v2/g' 06-2_httpd-deployment.yaml | kubectl -f -`{{execute}}

<br>

## delete

`kubectl delete -f .`{{execute}}
