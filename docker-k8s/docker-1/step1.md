먼저 실습환경을 확인봅시다.
여러가지 명령어들이 나오는데, docker 명령어 외에는 중요하지 않습니다.

## 나는 누구? 여긴 어디?

`whoami`{{execute}}

`hostname`{{execute}}

`pwd`{{execute}}


## OS가 뭔가요?

`cat /etc/os-release`{{execute}}

`uname`{{execute}}

`uname -a`{{execute}}

`uname -r`{{execute}}


## Docker가 뭔가요?

`docker`{{execute}}

`docker -v`{{execute}}

`docker version`{{execute}}

`ps -ef  | grep docker`{{execute}}

`docker info`{{execute}}


## Katacoda가 뭔가요?

`echo hello`{{execute}}

`echo hello > world.txt`{{execute}}

`cat world.txt`{{execute}}

`tty`{{execute}}


Terminal 1 에서

`cat world.txt`{{execute}}

`tty`{{execute}}

`ps -ef | grep pts`{{execute}}

`pstree -ap $(cat /var/run/sshd.pid)`{{execute}}

`echo $$`{{execute}}

`echo "Hello, pts0" > /dev/pts/0`{{execute}}

`echo "Hello, pts1" > /dev/pts/1`{{execute}}


나갔다가 들어오면 초기화됩니다.

`CONTINUE` - `NEXT SCENARIO`


katacoda 세션은 도중에 끊길 수 있습니다.

각 실습을 독립적으로 짧게 구성했으니 간단히 진행했던 부분까지 다시 따라갈 수 있습니다.
