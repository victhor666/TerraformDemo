variable "disk_size" {
 type    = number
 default = 10
}


variable "image" {
 type    = string
 default = "debian-9"
}


variable "machine_type" {
 type    = string
 default = "f1-micro"
}


variable "name" {
 type = string
}
