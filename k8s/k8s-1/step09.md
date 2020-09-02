<br>

이 페이지는 시연 중심으로 진행합니다.

* 이 ingress controller 설정에는 katacoda 환경 시연에 맞추어 변경한 부분이 있습니다.

* node IP 변경 등 여건에 따라 ingress가 정상 작동하지 않을 수 있습니다.

<br>

## ingress controller (admin)

`cd /root/`{{execute}}

`ll`{{execute}}

`cat 09_ingress-controller.yaml`{{execute}}

`cat 09_ingress-controller.yaml | grep kind`{{execute}}

`kubectl get node -owide`{{execute}}

`cat 09_ingress-controller.yaml | tail -2`{{execute}}

`nano 09_ingress-controller.yaml`{{execute}}

`kubectl apply -f 09_ingress-controller.yaml`{{execute}}

`kubectl get all -n nginx-ingress`{{execute}}

`kubectl get pod -n nginx-ingress -owide`{{execute}}

<br>

## yaml

`cd /root/09/`{{execute}}

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

`curl -H "Host: my.kubernetes.example" 172.17.0.107

<br>

## delete

`kubectl delete -f .`{{execute}}

