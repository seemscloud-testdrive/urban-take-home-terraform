#############################################
# Project Details
#
variable "project" { type = string }
variable "region" { type = string }
variable "prefix" { type = string }

#############################################
# SSH Keys
#
variable "terraform_user" { type = string }
variable "terraform_ssh_key_pub" { type = string }

#############################################
# GKE Clusters
#
variable "aaa_cluster_aaa-network" { type = string }
variable "aaa_cluster_aaa-preemptible" { type = string }
variable "aaa_cluster_aaa-name" { type = string }
variable "aaa_cluster_aaa-tags" { type = list(string) }
variable "aaa_cluster_aaa-nodes_cidr" { type = string }
variable "aaa_cluster_aaa-master_cidr" { type = string }
variable "aaa_cluster_aaa-cluster_cidr_name" { type = string }
variable "aaa_cluster_aaa-cluster_cidr" { type = string }
variable "aaa_cluster_aaa-service_cidr_name" { type = string }
variable "aaa_cluster_aaa-service_cidr" { type = string }
variable "aaa_cluster_aaa-private_nodes" { type = bool }
variable "aaa_cluster_aaa-private_endpoints" { type = bool }
variable "aaa_cluster_aaa-type" { type = string }
variable "aaa_cluster_aaa-min_version" { type = string }
variable "aaa_cluster_aaa-init" { type = number }
variable "aaa_cluster_aaa-static_ips_name" { type = string }
variable "aaa_cluster_aaa-static_ips_type" { type = string }
variable "aaa_cluster_aaa-static_ips" { type = number }

#############################################
# VPN / Jenkins
#
variable "aaa_instance_bbb-name" { type = string }
variable "aaa_instance_bbb-machine_type" { type = string }
variable "aaa_instance_bbb-zone" { type = string }
variable "aaa_instance_bbb-tags" { type = list(string) }
variable "aaa_instance_bbb-cidr" { type = string }
variable "aaa_instance_bbb-address_type" { type = string }
variable "aaa_instance_bbb-desired_status" { type = string }
variable "aaa_instance_bbb-boot_image" { type = string }
variable "aaa_instance_bbb-boot_disk_size" { type = number }
variable "aaa_instance_bbb-boot_disk_type" { type = string }
variable "aaa_instance_bbb-boot_disk_auto_delete" { type = bool }
variable "aaa_instance_bbb-preemptible" { type = bool }
variable "aaa_instance_bbb-automatic_restart" { type = bool }

variable "aaa_instance_ccc-name" { type = string }
variable "aaa_instance_ccc-machine_type" { type = string }
variable "aaa_instance_ccc-zone" { type = string }
variable "aaa_instance_ccc-tags" { type = list(string) }
variable "aaa_instance_ccc-static_ip" { type = string }
variable "aaa_instance_ccc-cidr" { type = string }
variable "aaa_instance_ccc-address_type" { type = string }
variable "aaa_instance_ccc-desired_status" { type = string }
variable "aaa_instance_ccc-boot_image" { type = string }
variable "aaa_instance_ccc-boot_disk_size" { type = number }
variable "aaa_instance_ccc-boot_disk_type" { type = string }
variable "aaa_instance_ccc-boot_disk_auto_delete" { type = bool }
variable "aaa_instance_ccc-preemptible" { type = bool }
variable "aaa_instance_ccc-automatic_restart" { type = bool }