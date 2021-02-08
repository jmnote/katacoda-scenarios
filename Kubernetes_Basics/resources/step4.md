이제 Service에 대한 실습을 해보겠습니다.

역시 이동을 하구요.  
`cd /root/lab`{{execute}}

현재 있는 `Pod`들을 조회해 보겠습니다.  
`kubectl get pods -o wide`{{execute}}

그 중에 한 `Pod`의 IP를 이용해서 볼까요?   
`curl http://[IP-Addr.]`

nginx가 잘 동작하고 있나요?  

위에서 조회한 `Pod`를 한 번 삭제해 볼게요.  
`kubectl delete pods [POD-NAME]`{{copy}}

무슨일이 일어났나요?
우리의 ReplicaSet이 살려는 줬어요.  
그런데, IP가 바뀌어 있을거예요.  
이런식으로는 쓸 수가 없죠.  


`Service`를 만들어서 이 문제를 해결해 볼게요.  

먼저 한 번 볼까요?  
`cat nginx-clusterip-service.yaml`{{execute}}

그리고, 생성  
`kubectl apply -f nginx-clusterip-service.yaml`{{execute}}

생성된걸 볼때는  
`kubectl get services`{{execute}}

생성된 `Service`의 `Cluster IP`가 보이시나요?  
이 아이피로 Pod까지 접근할 수도 있습니다.  

간단한 Pod를 하나 만들어 보겠습니다.  
`kubectl run curlpod --image=radial/busyboxplus:curl --generator=run-pod/v1 --command -- /bin/sh -c "while true; do echo hi; sleep 10; done"`{{execute}}

그리고, 그 Pod에서 `curl`을 실행하는데, 앞서 만든 Service의 Name을 이용합니다.  
`kubectl exec -it curlpod -- curl nginx-clusterip-service`{{execute}}

잘 되네요...  
이제 Service를 만들면 클러스터 내에서는 이름으로도 접근이 가능합니다.  
당연히 Cluster IP로도 가능하구요.  

볼까요?  
`Cluster IP`를 알아내서  
`export CLUSTER_IP=$(kubectl get services/nginx-clusterip-service -o go-template='{{(index .spec.clusterIP)}}')`{{execute}}

확인해보고  
`echo CLUSTER_IP=$CLUSTER_IP`{{execute}}

그 IP로 접근합니다.  
`curl http://$CLUSTER_IP:80`{{execute}}

잘 되죠?  

이번엔 NodePort입니다.  

자세한 설명은 생략할게요.  
한 번 아래 명령어들을 실행하면서 차이를 보세요.  

`cat nginx-nodeport-service.yaml`{{execute}}

`kubectl apply -f nginx-nodeport-service.yaml`{{execute}}

`kubectl get services`{{execute}}

ClusterIP와 NodePort 유형의 Service간 차이가 보이시나요?  

NodePort는 아래와 같은 방법으로 접근 가능합니다.  
`kubectl get nodes -o wide`{{execute}}

`curl http://[NODE_IP]:30007`

> 같은 클러스터 내에 있는 다른 Node의 Port로도 해보세요. 될까요?  
