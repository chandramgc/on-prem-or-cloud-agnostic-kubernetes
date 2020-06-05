#!/bin/bash
groupadd girish
useradd -g girish -G admin -s /bin/bash -d /home/girish girish
mkdir -p /home/girish
cp -r /root/.ssh /home/girish/.ssh
chown -R girish:girish /home/girish
echo "girish ALL=(ALL:ALL) NOPASSWD:ALL" >> /etc/sudoers

# create .kube/config
mkdir -p ~girish/.kube
cp -i /etc/kubernetes/admin.conf ~girish/.kube/config
chown girish:girish ~girish/.kube/config
