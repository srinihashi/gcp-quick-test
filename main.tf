provider "google" {
  project     = "srini-project-demos"
  region      = "us-central1"
}

resource "google_compute_instance" "gcp-quick-test-instance" {
  name = "srini-instance"
  machine_type = "f1-micro"
  zone = "us-central1-a"

  tags = ["quick-test"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"
  }
}