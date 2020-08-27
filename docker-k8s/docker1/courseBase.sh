#!/bin/bash

docker system prune -f
echo 'PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h\[\033[m\]:\[\033[33;1m\]\w\[\033[m\]\\$ "' >> /root/.bashrc
