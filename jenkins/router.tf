resource "google_compute_router" "jenkins" {
  name = var.name

  network = var.network.id
}

resource "google_compute_router_nat" "generic" {
  name = var.name

  router = google_compute_router.jenkins.name

  nat_ip_allocate_option = "MANUAL_ONLY"
  nat_ips                = [google_compute_address.jenkins.id]

  source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS"

  subnetwork {
    name                    = google_compute_subnetwork.jenkins.id
    source_ip_ranges_to_nat = [ "ALL_IP_RANGES"]
  }
}

resource "google_compute_address" "jenkins" {
  name         = var.name
  address_type = "EXTERNAL"
}