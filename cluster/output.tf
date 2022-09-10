output "network" {
  value = google_compute_network.network
}

output "statics_ips" {
  value = google_compute_address.statis_ips
}

output "managed_dns" {
  value = google_dns_managed_zone.private-zone
}