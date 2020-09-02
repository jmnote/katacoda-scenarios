<br>

* 설정이 어려워, 시연 중심으로 진행합니다.

## nfs server 기동 & pv 생성 (admin)

`cd /root/17/`{{execute}}

`cat 17_contained-nfs-server.sh`{{execute}}

내용 복사하여 node01에서 실행.

다시 master에서...

`cat 17_pv.yaml`{{execute}}

`kubectl get node -owide`{{execute}}

`grep server: 17_pv.yaml`{{execute}}

`nano 17_pv.yaml`{{execute}}

`kubectl apply -f pv.yaml`{{execute}}

`kubectl get pv`{{execute}}

<br>

## apply pvc

`cat 17_pvc.yaml`{{execute}}

`kubectl apply -f 17_pvc.yaml`{{execute}}

`kubectl get pvc`{{execute}}

<br>

## apply pod

`cat 17_pod.yaml`{{execute}}

`kubectl apply -f 17_pod.yaml`{{execute}}

`kubectl get pod`{{execute}}

`kubectl exec -it mysql -- bash`{{execute}}

<br>

## delete

`kubectl delete -f .`{{execute}}

