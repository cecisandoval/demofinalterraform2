
variable "profile"{
    type = string
    default = "default"

}


variable "region-master" {
    type = string
    default = "us-east-1"
}

variable "ami-master" {
    type = string
    default = "ami-052efd3df9dad4825"
}


variable "ami-msql" {
    type = string
    default = "ami-052efd3df9dad4825"
}


variable "instance-type" {
    type = string
    default = "t2.micro"
}

variable "provider_token" {
    type = string
    default = "ca9kvEIuIYrIFA.atlasv1.l1hwGiUV0EGcqiStY944efrr5kSpuJuoD1yrOrP80Xh7yLzyBtk5yKJitqVAeK2hga4"
}

variable "AWS_ACCESS_KEY_ID" {
    type = string
    default = "AKIAUEGDBJKUSKYZN7UE"
}

variable "AWS_SECRET_ACCESS_KEY" {
    type = string
    default = "k6sWOaPzhG6Zk5XzEmXeMYMTdI8xek4s36+PvF0S"
}

#ami-0ee8244746ec5d6d4
#ami-0ee8244746ec5d6d4