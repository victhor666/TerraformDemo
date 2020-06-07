provider "google" {
  version = "3.5.0"

  credentials = file("terraform-key.json")

  project = "terraform-hb"
  region  = "europe-west1"
  zone    = "europe-west1-b"
}


module "vm1" {
 source = "./modules/vm"
 name   = "testvm11111"
}


module "vm2" {
 source       = "./modules/vm"
 name         = "testvm2"
 machine_type = "f1-micro"
}


module "vm3" {
 source    = "./modules/vm"
 name      = "testvm3"
 disk_size = 14
 image     = "debian-10"
}
