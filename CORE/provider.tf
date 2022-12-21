terraform {
  required_version = ">= 1.3.6"
  required_providers {
    aci = {
      source  = "ciscodevnet/aci"
      version = ">= 2.5.2"
    }
    mso = {
      source  = "ciscodevnet/mso"
      version = ">= 0.7.1"
    }
    utils = {
      source  = "netascode/utils"
      version = ">= 0.2.1"
    }
  }
}

provider "aci" {
  cert_name   = var.certName
  password    = var.apicPass
  private_key = var.privateKey
  url         = "https://${var.apicHostname}"
  username    = var.apicUser
  insecure    = true
}

provider "mso" {
  domain   = var.ndoDomain
  insecure = true
  password = var.ndoPass
  platform = "nd"
  url      = "https://${var.ndoHostname}"
  username = var.ndoUser
}