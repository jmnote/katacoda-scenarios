IP=$(hostname -I | cut -d' ' -f1)
sed "s/EXTERNAL_IP/$IP/g" -i /root/09/09_ingress-controller.yaml
