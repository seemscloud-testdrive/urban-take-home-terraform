resource "google_compute_firewall" "vpn_to_jenkins" {
  name    = "vpn-to-jenkins"
  network = var.network.name

  allow {
    protocol = "tcp"
    ports    = [
      "22"
    ]
  }

  source_tags = [
    "vpn"
  ]

  target_tags = [
    "jenkins"
  ]
}