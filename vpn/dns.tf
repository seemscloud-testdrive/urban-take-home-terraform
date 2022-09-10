resource "google_dns_record_set" "a" {
  name         = "vpn.${var.internal_dns.dns_name}"
  managed_zone = var.internal_dns.name
  type         = "A"
  ttl          = 300

  rrdatas = [var.static_ip]
}