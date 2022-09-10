module "aaa_cluster_aaa" {
  source = "./cluster"

  project = var.project
  region  = var.region
  network = local.aaa_cluster_aaa-network

  cluster_name              = local.aaa_cluster_aaa-name
  cluster_tags              = var.aaa_cluster_aaa-tags
  cluster_nodes_cidr        = var.aaa_cluster_aaa-nodes_cidr
  cluster_master_cidr       = var.aaa_cluster_aaa-master_cidr
  cluster_cluster_cidr_name = var.aaa_cluster_aaa-cluster_cidr_name
  cluster_cluster_cidr      = var.aaa_cluster_aaa-cluster_cidr
  cluster_service_cidr_name = var.aaa_cluster_aaa-service_cidr_name
  cluster_service_cidr      = var.aaa_cluster_aaa-service_cidr
  cluster_authorized_cidr   = var.aaa_instance_ccc-cidr
  cluster_private_nodes     = var.aaa_cluster_aaa-private_nodes
  cluster_private_endpoints = var.aaa_cluster_aaa-private_endpoints
  cluster_type              = var.aaa_cluster_aaa-type
  cluster_min_version       = var.aaa_cluster_aaa-min_version
  cluster_init              = var.aaa_cluster_aaa-init
  cluster_static_ips_name   = var.aaa_cluster_aaa-static_ips_name
  cluster_static_ips_type   = var.aaa_cluster_aaa-static_ips_type
  cluster_static_ips        = var.aaa_cluster_aaa-static_ips
}

module "jenkins" {
  source = "./jenkins"

  project = var.project
  region  = var.region
  network = module.aaa_cluster_aaa.network

  name                  = local.aaa_instance_bbb-name
  machine_type          = var.aaa_instance_bbb-machine_type
  zone                  = var.aaa_instance_bbb-zone
  tags                  = var.aaa_instance_bbb-tags
  static_ip             = var.aaa_instance_bbb-static_ip
  cidr                  = var.aaa_instance_bbb-cidr
  address_type          = var.aaa_instance_bbb-address_type
  desired_status        = var.aaa_instance_bbb-desired_status
  boot_image            = var.aaa_instance_bbb-boot_image
  boot_disk_size        = var.aaa_instance_bbb-boot_disk_size
  boot_disk_type        = var.aaa_instance_bbb-boot_disk_type
  boot_disk_auto_delete = var.aaa_instance_bbb-boot_disk_auto_delete
  preemptible           = var.aaa_instance_bbb-preemptible
  automatic_restart     = var.aaa_instance_bbb-automatic_restart
}

module "vpn" {
  source = "./vpn"

  project = var.project
  region  = var.region
  network = module.aaa_cluster_aaa.network

  name                  = local.aaa_instance_ccc-name
  machine_type          = var.aaa_instance_ccc-machine_type
  zone                  = var.aaa_instance_ccc-zone
  tags                  = var.aaa_instance_ccc-tags
  static_ip             = var.aaa_instance_ccc-static_ip
  cidr                  = var.aaa_instance_ccc-cidr
  address_type          = var.aaa_instance_ccc-address_type
  desired_status        = var.aaa_instance_ccc-desired_status
  boot_image            = var.aaa_instance_ccc-boot_image
  boot_disk_size        = var.aaa_instance_ccc-boot_disk_size
  boot_disk_type        = var.aaa_instance_ccc-boot_disk_type
  boot_disk_auto_delete = var.aaa_instance_ccc-boot_disk_auto_delete
  preemptible           = var.aaa_instance_ccc-preemptible
  automatic_restart     = var.aaa_instance_ccc-automatic_restart
}