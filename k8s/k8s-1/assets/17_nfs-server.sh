mkdir /exports
docker run -d --net=host --privileged --name nfs-server -v /exports:/exports katacoda/contained-nfs-server:centos7 /exports/data-0001 /exports/data-0002
IP=$(hostname -I | cut -d' ' -f1)
sed "s/NFS_SERVER_IP/$IP/g" -i /root/17/17_pv.yaml
