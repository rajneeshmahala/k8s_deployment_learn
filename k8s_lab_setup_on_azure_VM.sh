#!/bin/bash
#   Date_Mon_27_sep
#   Auth_RajneeshMahala@gmail.com
#   auto_K8s_lab_setup;)

# Creating resource group
az group create -n CustomKubeCluster -l eastus
# Creating VNet
az network vnet create -g CustomKubeCluster -n KubeVNet --address-prefix 172.0.0.0/16 \
  --subnet-name MySubnet --subnet-prefix 172.0.0.0/24
# Master Node (With a public IP )
az vm create -n kube-master -g CustomKubeCluster --image ubuntults \
  --size Standard_DS2_v2 \
  --data-disk-sizes-gb 10 --generate-ssh-keys \
  --public-ip-address-dns-name kubeadm-master11
# Worker node setup
# Slave node 1 setup
az vm create -n kube-worker-1 \
  -g CustomKubeCluster --image ubuntults \
  --size Standard_DS2_v2 --data-disk-sizes-gb 10 \
  --generate-ssh-keys \
  --public-ip-address-dns-name kubeadm-worker-1 

#S lave node 2 setup
az vm create -n kube-worker-2 \   
  --resource-group CustomKubeCluster \
  --image ubuntults \
  --size Standard_DS2_v2 --data-disk-sizes-gb 10 \
  --generate-ssh-keys \
  --public-ip-address-dns-name kubeadm-worker-2

  echo "waah!! bete mooj kar di"