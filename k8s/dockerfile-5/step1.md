<br>

## 로컬 테스트 1

`python -V`{{execute}}

`python3 -V`{{execute}}

`pip3 install Django`{{execute}}

`django-admin startproject mysite`{{execute}}

`cd mysite/`{{execute}}

`python3 manage.py runserver 0.0.0.0:80`{{execute}}

Terminal 1 + `View HTTP port 80 on Host 1`

<br>

## 로컬 테스트 2

`cat mysite/settings.py | grep ALLOWED_HOSTS`{{execute}}

`sed 's/ALLOWED_HOSTS = \[\]/ALLOWED_HOSTS = \["*"\]/g' -i mysite/settings.py`{{execute}}

`cat mysite/settings.py | grep ALLOWED_HOSTS`{{execute}}

`python3 manage.py runserver 0.0.0.0:80`{{execute}}

<br>

## Dockerize

`pip3 freeze`{{execute}}

`pip3 freeze | grep Django`{{execute}}

`pip3 freeze | grep Django > requirements.txt`{{execute}}

`cp ~/05_HelloDjango/Dockerfile .`{{execute}}

`cat Dockerfile`{{execute}}

`docker build -t HelloDjango .`{{execute}}

`docker run -d -p 80:80 HelloDjango`{{execute}}

`docker ps -a`{{execute}}

Terminal 1 + `View HTTP port 80 on Host 1`
