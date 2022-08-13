terraform {
  cloud {
    organization = "Cisco-Richfield-Lab"
    workspaces {
      name = "Asgard_tenant_example"
    }
  }
  required_version = ">= 1.1.0"
  required_providers {
    aci = {
      source  = "CiscoDevNet/aci"
      version = ">= 2.1.0"
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
