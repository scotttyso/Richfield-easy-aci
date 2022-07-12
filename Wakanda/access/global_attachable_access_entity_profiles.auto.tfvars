#____________________________________________________________
#
# Global Attachable Access Entity Profiles - Variables
#____________________________________________________________

global_attachable_access_entity_profiles = {
  "accessAep" = {
    description = "Default AEP"
    infra_vlan  = false
    l3_domains = [
      "l3out"
    ]
    physical_domains = [
      "access"
    ]
  }
  "infraAep" = {
    description = "AEP for Infra Trunk"
    infra_vlan  = true
    physical_domains = [
      "access"
    ]
  }
  "trunkAep" = {
    description = "AEP for EPG Assignment"
    infra_vlan  = false
    physical_domains = [
      "access"
    ]
    vmm_domains = [
      "Wakanda"
    ]
  }
}
