#!/bin/bash
#   Date_Mon_27_sep
#   Auth_RajneeshMahala@gmail.com
#   k8s_vm_lab_dep_setup_all_node_;)

# These steps need to be performed on all nodes
sudo apt update
# Install Docker
sudo apt install docker.io -y
sudo systemctl enable docker
# Get the gpg keys for Kubeadm
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add
sudo apt-add-repository "deb http://apt.kubernetes.io/ kubernetes-xenial main"
# Install Kubeadm
sudo apt install kubeadm -y

echo "waah!! bete mooj kar di"