resource "google_dns_record_set" "jenkins_a_record" {
  name         = "jenkins.${var.internal_dns.dns_name}"
  managed_zone = var.internal_dns.name
  type         = "A"
  ttl          = 300

  rrdatas = [var.static_ip]
}