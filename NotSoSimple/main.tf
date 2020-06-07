provider "google" {
  version = "3.5.0"

  credentials = file("terraform-key.json")

  project = "terraform-hb"
  region  = "europe-west1"
  zone    = "europe-west1-b"
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-victhor-network"
}

resource "google_compute_instance" "vm_instance" {
  name         = "ferrari"
  machine_type = "f1-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = google_compute_network.vpc_network.name
    access_config {
    }
  }
}
resource "google_compute_address" "static_ip" {
  name = "ip-estatica-terraform"
}

terraform {
  backend "gcs" {
    bucket = "terraform-testhb1"
    prefix = "terra1"
    credentials = "terraform-key.json"
   }
}