variable "instance_names" {
    type = list
    default = ["mongoDB","redis","mysql","rabbitmq","catalogue","user","cart","shipping","payment","dispatch","web"]
}

variable "ami_id" {
    default = "ami-03265a0778a880afb" 
}

variable "zone_id" {
    default = "z10fffexample"
}

variable "domain_name" {
    default = "example.com"
}