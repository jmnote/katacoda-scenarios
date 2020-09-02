<br>

## yaml

`cd /root/14/`{{execute}}

`ll`{{execute}}

`cat 14_deployment.yaml`{{execute}}

`cat 14_service.yaml`{{execute}}

`cat 14_hpa.yaml`{{execute}}

`docker run k8s.gcr.io/hpa-example cat /var/www/html/index.php`{{execute}}

<br>

## deploy

`kubectl apply -f .`{{execute}}

`watch 'kubectl get hpa,deploy,rs,pod; echo; kubectl top pod'`{{execute}}

다른 탭에서...

`kubectl run curlpod --image=radial/busyboxplus:curl --generator=run-pod/v1 --command sleep 36000`

`kubectl exec -it curlpod -- sh`{{execute}}

`while true; do wget -q -O- http://php-apache; done`{{execute}}

원래 탭 확인

<br>

## delete

`kubectl delete -f .`{{execute}}
