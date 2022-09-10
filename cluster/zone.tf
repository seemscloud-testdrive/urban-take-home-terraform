resource "google_dns_managed_zone" "private-zone" {
  name     = var.cluster_managed_zone
  dns_name = var.cluster_managed_zone_dns

  visibility = var.cluster_visibility

  private_visibility_config {
    networks {
      network_url = google_compute_network.network.id
    }
  }
}