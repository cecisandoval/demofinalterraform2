
variable "profile"{
    type = string
    default = "default"

}

variable  "AWS_DEFAULT_REGION" {
    type = string
    default = "us-west-2"
}



variable "region-master" {
    type = string
    #default = "us-east-1"
    default = "us-west-2"
}

variable "ami-master" {
    type = string
    default = "ami-09f20bd8a4826f04c"
}





variable "ami-ubuntu" {
    type = string
    default = "ami-09f20bd8a4826f04c"
    #default = "ami-02a584b50356d32f5"
}


variable "instance-type" {
    type = string
    default = "t2.micro"
}

#variable "provider_token" {
    #type = string
    #default = "ca9kvEIuIYrIFA.atlasv1.l1hwGiUV0EGcqiStY944efrr5kSpuJuoD1yrOrP80Xh7yLzyBtk5yKJitqVAeK2hga4"
#}




variable "AWS_ACCESS_KEY_ID" {
    type = string
    default = ""
}

variable "AWS_SECRET_ACCESS_KEY" {
    type = string
    default = ""
}

