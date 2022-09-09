resource "google_compute_instance" "bastion" {
  name           = var.bastion_name
  machine_type   = var.bastion_machine_type
  zone           = var.bastion_zone == null ? random_shuffle.google_compute_zones.result[0] : var.bastion_zone
  tags           = var.bastion_tags
  desired_status = var.bastion_desired_status

  boot_disk {
    initialize_params {
      image = var.bastion_boot_image
      size  = var.bastion_boot_disk_size
      type  = var.bastion_boot_disk_type
    }

    auto_delete = var.bastion_boot_disk_auto_delete
  }

  network_interface {
    network    = google_compute_network.network.id
    subnetwork = google_compute_subnetwork.bastion.id

    access_config {
      nat_ip = google_compute_address.bastion.address
    }
  }

  scheduling {
    preemptible       = var.bastion_preemptible
    automatic_restart = var.bastion_automatic_restart
  }

  depends_on = [
    google_compute_address.bastion
  ]
}

resource "google_compute_address" "bastion" {
  name         = var.bastion_name
  address_type = var.bastion_address_type
}