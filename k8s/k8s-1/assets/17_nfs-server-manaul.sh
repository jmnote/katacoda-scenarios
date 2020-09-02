#!/bin/bash

apt-get update -y
apt install nfs-kernel-server --fix-missing -y
systemctl enable nfs-server
systemctl start nfs-server
systemctl status nfs-kernel-server

mkdir -p /srv/nfs/kubedata
mkdir /srv/nfs/kubedata/{pv0,pv1,pv2,pv3,pv4}
chmod -R 777 /srv/nfs

echo "/srv/nfs/kubedata    *(rw,sync,no_subtree_check,insecure)" >> /etc/exports
exportfs -rav
exportfs -v
showmount -e

NFSIP=$(ip addr show ens3  | awk '$1 == "inet" { print $2 }' | cut -d/ -f1)
echo $NFSIP
ssh root@node01 mount -t nfs $NFSIP:/srv/nfs/kubedata  /mnt
ssh root@node01 ls /mnt
