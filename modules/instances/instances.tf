resource "google_compute_instance" "tf-instance-1" {
  name         = "tf-instance-1"
  machine_type = "e2-micro"
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "tf-instance-1"
      }
    }
  }

  network_interface {
    network = "default"
  }

  allow_stopping_for_update = true

}

resource "google_compute_instance" "tf-instance-2" {
  name         = "tf-instance-2"
  machine_type = "e2-micro"
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "tf-instance-2"
      }
    }
  }

  network_interface {
    network = "default"
  }

  allow_stopping_for_update = true

}
