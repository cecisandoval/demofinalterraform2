provider "aws" {
    profile = var.profile
    region = var.region-master
    alias = "region-master"
    version = "3.26.0"
    

}

#provider "fakewebservices" {
  #token = var.provider_token
#}

