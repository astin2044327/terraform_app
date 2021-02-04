variable "availability_zones" {
type = list
default = ["us-east-1"]
}

variable "cross_zone_load_balancing" {
default = true
}
