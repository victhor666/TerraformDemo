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
terraform {
  backend "gcs" {
    bucket = "terraform-testhb1"
    prefix = "terra1"
    credentials = "terraform-key.json"
   }
}
