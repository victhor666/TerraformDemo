module "vm1" {
 source = "./modules/vm"
 name   = "testvm1"
}


module "vm2" {
 source       = "./modules/vm"
 name         = "testvm2"
 machine_type = "f1-micro"
}


module "vm3" {
 source    = "./modules/vm"
 name      = "testvm3"
 disk_size = 12
 image     = "debian-10"
}
