resource "google_compute_instance" "jenkins" {
  name           = var.name
  machine_type   = var.machine_type
  zone           = var.zone == null ? random_shuffle.google_compute_zones.result[0] : var.zone
  tags           = var.tags
  desired_status = var.desired_status

  boot_disk {
    initialize_params {
      image = var.boot_image
      size  = var.boot_disk_size
      type  = var.boot_disk_type
    }

    auto_delete = var.boot_disk_auto_delete
  }

  network_interface {
    network    = var.network.id
    subnetwork = google_compute_subnetwork.jenkins.id

    network_ip = var.static_ip
  }

  scheduling {
    preemptible       = var.preemptible
    automatic_restart = var.automatic_restart
  }
}