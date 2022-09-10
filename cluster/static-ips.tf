resource "google_compute_address" "statis_ips" {
  name         = "${var.cluster_static_ips_name}-${count.index}"
  address_type = var.cluster_static_ips_type

  count = var.cluster_static_ips
}