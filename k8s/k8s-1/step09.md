<br>

## ingress controller (admin)

`cd /root/09/`{{execute}}

`ll`{{execute}}

`cat 09_ingress-controller.sh`{{execute}}

`sh 09_ingress-controller.sh`{{execute}}

`cat 09_ingress-controller.yaml`{{execute}}

`cat 09_ingress-controller.yaml | grep kind`{{execute}}

`kubectl apply -f 09_ingress-controller.yaml`{{execute}}

`kubectl get all -n nginx-ingress`{{execute}}

`kubectl get pod -n nginx-ingress -owide`{{execute}}

<br>

## yaml

`ll`{{execute}}

`cat 09_httpd-deployment.yaml`{{execute}}

`cat 09_service.yaml`{{execute}}

`cat 09_ingress.yaml`{{execute}}

<br>

## deploy

`kubectl apply -f .`{{execute}}

`kubectl get ing,svc,deploy,pod`{{execute}}

`kubectl run curlpod --image=radial/busyboxplus:curl --generator=run-pod/v1 --command sleep 36000`{{execute}}

`kubectl exec -it curlpod -- curl httpd-clusterip-service`{{execute}}

`curl httpd-clusterip-service`{{execute}}

`kubectl get ingress`{{execute}}

`kubectl get node -owide`{{execute}}

`EXTERNAL_IP=$(hostname -I | cut -d' ' -f1)`{{execute}}

`echo $EXTERNAL_IP`{{execute}}

`curl -H "Host: my.kubernetes.example" $EXTERNAL_IP

<br>

## delete

`kubectl delete -f .`{{execute}}

`kubectl delete pod curlpod`{{execute}}
