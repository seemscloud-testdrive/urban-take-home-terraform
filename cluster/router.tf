resource "google_compute_router" "cluster" {
  name = var.cluster_name

  network = google_compute_network.network.id
}

resource "google_compute_router_nat" "generic" {
  name = var.cluster_name

  router = google_compute_router.cluster.name

  nat_ip_allocate_option = "MANUAL_ONLY"
  nat_ips                = [google_compute_address.cluster.id]

  source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS"

  subnetwork {
    name                    = google_compute_subnetwork.cluster.id
    source_ip_ranges_to_nat = ["ALL_IP_RANGES"]
  }
}

resource "google_compute_address" "cluster" {
  name         = var.cluster_name
  address_type = "EXTERNAL"
}