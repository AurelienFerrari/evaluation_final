provider "google" {
  credentials = file("credentials.json")
  project     = var.project
  region      = var.region
  zone        = var.zone
}

resource "google_compute_instance" "default" {
  name         = "vm-api-devops"
  machine_type = "e2-micro"
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
    access_config {
    }
  }

  metadata = {
    ssh-keys = "${var.project}:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQD..."
  }
}
