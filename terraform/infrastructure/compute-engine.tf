resource "google_compute_instance" "default" {
  name         = var.name #"test-arif"
  machine_type = "e2-medium"
  zone         = "us-central1-a"

  tags = ["foo", "bar1"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }

  // Local SSD disk
#   scratch_disk {
#     interface = "SCSI"
#   }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }

  metadata = {
    foo = "bar"
  }
 }