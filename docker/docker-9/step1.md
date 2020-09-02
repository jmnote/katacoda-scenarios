<br>

## run

`docker run -d --name mysql1 -e MYSQL_ROOT_PASSWORD=hello -e MYSQL_DATABASE=wordpress mysql`{{execute}}

`docker run -d --name wordpress1 -p 80:80 wordpress`{{execute}}

<br>

## top

`docker top wordpress1`{{execute}}

`docker exec -it wordpress1 ps -ef`{{execute}}

`docker top mysql1`{{execute}}

`docker exec -it mysql1 ps -ef`{{execute}}

`docker exec -it mysql1 bash`{{execute}}

<br>

## stats

`docker stats`{{execute}}

Terminal 1에서...

`docker info | egrep 'CPUs|Total Memory'`{{execute}}

<br>

## stats 2

`while :; do docker stats --no-stream --format "table {{.Name}}\t{{.CPUPerc}}\t{{.MemUsage}}"; sleep .5; done`{{execute}}

Terminal 1에서...

`docker run --name stress --rm -it progrium/stress --timeout 20s --cpu 2`{{execute}}

`docker run --cpus=1 --name stress --rm -it progrium/stress --timeout 20s --cpu 2`{{execute}}

`docker run -m 50M --name stress --rm -it progrium/stress --timeout 20s --vm 2 --vm-bytes 24M`{{execute}}

`docker run -m 50M --name stress --rm -it progrium/stress --timeout 20s --vm 2 --vm-bytes 25M`{{execute}}

`sysctl vm.swappiness`{{execute}}

`docker run -m 50M --memory-swappiness 0 --name stress --rm -it progrium/stress --timeout 20s --vm 2 --vm-bytes 25M`{{execute}}
