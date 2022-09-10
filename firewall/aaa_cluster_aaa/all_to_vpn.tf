resource "google_compute_firewall" "internet_to_vpn" {
  name    = "internet-to-vpn"
  network = var.network.name

  allow {
    protocol = "tcp"
    ports    = [
      "22"
    ]
  }

  source_ranges = [
    "0.0.0.0/0"
  ]

  target_tags = [
    "vpn"
  ]
}