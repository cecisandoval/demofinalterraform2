
variable "profile"{
    type = string
    default = "default"

}

variable  "AWS_DEFAULT_REGION" {
    type = string
    default = "us-east-1"
}

variable "region-master" {
    type = string
    default = "us-east-1"
}

variable "ami-master" {
    type = string
    default = "ami-069a69e8f61c7b5be"
}


variable "ami-msql" {
    type = string
    default = "ami-069a69e8f61c7b5be"
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
    default = ""
}

variable "AWS_SECRET_ACCESS_KEY" {
    type = string
    default = ""
}

#ami-0ee8244746ec5d6d4
#ami-0ee8244746ec5d6d4