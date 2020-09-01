* docker-0
* docker-1 docker version
* docker-2 docker pull
* docker-3 docker tag
* docker-4 docker run
* docker-5 docker run -d
* docker-6 docker exec
* docker-7 docker run -e -v
* docker-8 docker run --link
* docker-9 docker top

* Dockerfile

* k8s-00
* k8s-01 kubectl version
* k8s-02 Pod
* k8s-03 (Pod) Liveness Probe
* k8s-04 (Pod) Sidecar
* k8s-05 ReplicaSet
* k8s-06 Deployment
* k8s-07 Service
* k8s-08 Service 2
* k8s-09 (Service) NodePort
* k8s-10 Ingress
* k8s-11 (Deployment) Rollout
* k8s-12 ConfigMap & Secret
* k8s-13 Volume
* k8s-14 기타



Dockerfile 예제


FROM           
ADD    
COPY   
LABEL
STOPSIGNAL

CMD          명령어
ENTRYPOINT   --entrypoint
EXPOSE       -p
ENV          -e
USER         -u
VOLUME       -v
WORKDIR      -w

----
CMD vs ENTRYPOINT

. CMD ... 명령어 
. ENTRYPOINT ... 스크립트

https://nodejs.org/en/docs/guides/getting-started-guide/


# Dockerfile 작성방법 문서

* https://docs.docker.com/develop/develop-images/dockerfile_best-practices/
* https://docs.docker.com/develop/develop-images/multistage-build/
* https://docs.docker.com/config/containers/multi-service_container/
* https://github.com/wikimedia/mediawiki-docker/pull/77

RUN yum install -y graphviz && \
    yum clean all && \
    rm -rf /var/cache/yum && \
    curl -s https://cdn.azul.com/zulu/bin/zulu8.46.0.19-ca-jre8.0.252-linux_x64.tar.gz | tar xzv

# Real World Examples 

brightics ... MultiStage | yum 

https://github.com/django/djangoproject.com/blob/master/Dockerfile
https://github.com/brightics/studio/blob/master/docker/Dockerfile


----
dockerfile(image) style block <style>h1 {color:red}</style>
docker run = inline style <h1 style='color:blue'>Hello</h1>
----

--build-arg HTTP_PROXY=http://user:pass@proxy.lon.example.com

https://docs.docker.com/engine/reference/builder/#predefined-args

