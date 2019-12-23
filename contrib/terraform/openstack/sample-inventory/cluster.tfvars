# your Kubernetes cluster name here
cluster_name = "kube-cluster"

# list of availability zones available in your OpenStack cluster
#az_list = ["nova"]

# SSH key to use for access to nodes
public_key_path = "~/git/hetzner-devops/radut-cloud.pub"

# image to use for bastion, masters, standalone etcd instances, and nodes
image = "Ubuntu-18.04-LTS"

# user on the node (ex. core on Container Linux, ubuntu on Ubuntu, etc.)
ssh_user = "ubuntu"

# 0|1 bastion nodes
number_of_bastions = 0

#flavor_bastion = "<UUID>"

# standalone etcds
number_of_etcd = 0

# masters
number_of_k8s_masters = 0

number_of_k8s_masters_no_etcd = 0

number_of_k8s_masters_no_floating_ip = 1

number_of_k8s_masters_no_floating_ip_no_etcd = 0

flavor_k8s_master = "9a42462d-a457-44a3-8f4b-e51f85f594fc"

# nodes
number_of_k8s_nodes = 0

number_of_k8s_nodes_no_floating_ip = 2

flavor_k8s_node = "5d5f3103-e61f-4c85-a998-532286e29c06"

# GlusterFS
# either 0 or more than one
#number_of_gfs_nodes_no_floating_ip = 0
#gfs_volume_size_in_gb = 150
# Container Linux does not support GlusterFS
#image_gfs = "<image name>"
# May be different from other nodes
#ssh_user_gfs = "ubuntu"
#flavor_gfs_node = "<UUID>"

# networking
network_name = "kube-network"

external_net = "79862bec-79ee-433f-9853-f2378cf22a85"

subnet_cidr = "192.168.18.0/24"

floatingip_pool = ""

bastion_allowed_remote_ips = ["0.0.0.0/0"]

# pwd : cd  ~/git/hetzner-devops/kubernetes/kubespray/contrib/terraform/openstack
# terraform apply -var-file=sample-inventory/cluster.tf
# go to ~/git/hetzner-devops/kubernetes/kubespray
# ansible -i contrib/terraform/openstack/hosts -m ping all
