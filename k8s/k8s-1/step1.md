<br>

## kubectl 명령어

`kubectl version`{{execute}}

`kubectl cluster-info`{{execute}}

`kubectl get nodes`{{execute}}

`kubectl get nodes -owide`{{execute}}

`kubectl get pods`{{execute}}

`kubectl get pods -A`{{execute}}

<br>

## kubeconfig (optional)

cat ~/.kube/config
mv ~/.kube/config .
kubectl get nodes
kubectl get nodes --kubeconfig config
mv config ~/.kube/
kubectl get nodes

<br>

## k8s apiserver

cat ~/.kube/config | grep server
kubectl config view | grep server
ip a
kubectl get nodes -owide
netstat -tnlp | grep apiserver
