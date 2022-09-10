output "network" {
  value = google_compute_network.network
}

output "bastion_address" {
  value = google_compute_address.bastion
}

output "statics_ips" {
  value = google_compute_address.statis_ips
}