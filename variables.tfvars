#############################################
# Project Details
#
project = "core-337701"
region  = "europe-central2"
prefix  = "a" # must be [a-z]

#############################################
# SSH Keys
#
terraform_user        = "terraform"
terraform_ssh_key_pub = "terraform:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCkuj+CeqrJyLSCMgtCPcFN+4+zRQw4LCziEAuvDEdhyiix4DbZkBcL1fsgHeYKsY52wVga9zYF600m2h3HMNxi7pLlZKexcuJo7bJuB+fRXkSrevscqbW1NWXavRZZZ7DSun1DENDLAtlXlOPKITz9RdOg5Ook4Q3d50VNH2yrNK5Tma9ZAs7gNzKjrIaWMwUC0Rl5+QUQ98aVZUJg/HFqwrpgJkZH5iHP18qc/Q4wpmYO0AjsmiWSYYUYitMEkQF7ArYXqEAQQOOIdTzZBL2x3AHgeyUYeMJxgr4MM/gFqg0e0IG7Ss/tSPKN7N1DP96Eb5pI3uWJ2CptqPcCtmmBnSu3XH2nvBZqRzo0q/jxjRRtTN+E5kpnlL+5/OWx7CsAh+cdtRqj1dEk6TB2aKGWSSzCM+NvR6C9ZWkWrcEjNB2Vz78m1UfGXjdjnM8WUqBM4Z3lX012hJMZ6VEPLexYZgRdfx19AiwxIoDL6XPSGAOcN32fIdx0cqYFX0LAudk="

#############################################
# GKE Clusters
#
aaa_instance_aaa-name                  = "bastion"
aaa_instance_aaa-machine_type          = "e2-highcpu-2"
aaa_instance_aaa-zone                  = null
aaa_instance_aaa-tags                  = ["bastion", "all"]
aaa_instance_aaa-cidr                  = "10.0.10.0/24"
aaa_instance_aaa-address_type          = "EXTERNAL"
aaa_instance_aaa-desired_status        = "RUNNING"
aaa_instance_aaa-boot_image            = "ubuntu-2004-lts"
aaa_instance_aaa-boot_disk_size        = 32
aaa_instance_aaa-boot_disk_type        = "pd-ssd"
aaa_instance_aaa-boot_disk_auto_delete = false
aaa_instance_aaa-preemptible           = false
aaa_instance_aaa-automatic_restart     = false

aaa_cluster_aaa-network           = "network"
aaa_cluster_aaa-preemptible       = true
aaa_cluster_aaa-name              = "seemscloud"
aaa_cluster_aaa-tags              = ["cluster", "all"]
aaa_cluster_aaa-nodes_cidr        = "10.0.20.0/24"
aaa_cluster_aaa-master_cidr       = "172.18.0.0/28"
aaa_cluster_aaa-cluster_cidr_name = "cluster-range"
aaa_cluster_aaa-cluster_cidr      = "10.52.0.0/14"
aaa_cluster_aaa-service_cidr_name = "service-range"
aaa_cluster_aaa-service_cidr      = "10.42.0.0/18"
aaa_cluster_aaa-private_nodes     = true
aaa_cluster_aaa-private_endpoints = true
aaa_cluster_aaa-type              = "e2-standard-2"
aaa_cluster_aaa-min_version       = "1.22.11-gke.400"
aaa_cluster_aaa-init              = 1

#############################################
# GKE Pools
#
aaa_node_pool_aaa-preemptible = true
aaa_node_pool_aaa-name        = "secondary"
aaa_node_pool_aaa-tags        = ["cluster", "secondary-pool", "all"]
aaa_node_pool_aaa-type        = "e2-standard-2"
aaa_node_pool_aaa-init        = 1
aaa_node_pool_aaa-min         = 1
aaa_node_pool_aaa-max         = 1

aaa_node_pool_bbb-preemptible = true
aaa_node_pool_bbb-name        = "primary"
aaa_node_pool_bbb-tags        = ["cluster", "primary-pool", "all"]
aaa_node_pool_bbb-type        = "e2-standard-2"
aaa_node_pool_bbb-init        = 1
aaa_node_pool_bbb-min         = 1
aaa_node_pool_bbb-max         = 1