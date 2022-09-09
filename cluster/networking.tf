resource "google_compute_network" "network" {
  name                    = var.network
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "cluster" {
  name          = var.cluster_name
  ip_cidr_range = var.cluster_nodes_cidr
  region        = var.region
  network       = google_compute_network.network.id

  secondary_ip_range {
    range_name    = var.cluster_cluster_cidr_name
    ip_cidr_range = var.cluster_cluster_cidr
  }
  secondary_ip_range {
    range_name    = var.cluster_service_cidr_name
    ip_cidr_range = var.cluster_service_cidr
  }
}

resource "google_compute_subnetwork" "bastion" {
  name          = var.bastion_name
  ip_cidr_range = var.bastion_cidr
  region        = var.region
  network       = google_compute_network.network.id
}