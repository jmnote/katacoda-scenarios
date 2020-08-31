

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

