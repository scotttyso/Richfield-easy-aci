#______________________________________________
#
# Application Epgs - Variables
#______________________________________________

application_epgs = {
  "inband" = {
    bridge_domain = "inb"
    contracts = [
      {
        contract_type = "consumed"
        name          = "inband_out"
        qos_class     = "unspecified"
        tenant        = "mgmt"
      },
      {
        contract_type = "provided"
        name          = "inband_in"
        qos_class     = "unspecified"
        tenant        = "mgmt"
      }
    ]
    description = "Inband Mgmt EPG"
    domains = [
      {
        domain = "access"
      }
    ]
    epg_type               = "inb"
    flood_in_encapsulation = "disabled"
    has_multicast_source   = false
    intra_epg_isolation    = "unenforced"
    label_match_criteria   = "AtleastOne"
    monitoring_policy      = "default"
    policy_source_tenant   = "common"
    preferred_group_member = false
    qos_class              = "unspecified"
    tenant                 = "mgmt"
    useg_epg               = false
    vlan                   = 100
    vmm_domains = [
    ]
  }
  "ooband" = {
    contracts = [
      {
        contract_type = "provided"
        name          = "ooband_in"
        qos_class     = "unspecified"
        tenant        = "mgmt"
      }
    ]
    description = "Ooband Mgmt EPG"
    domains = [
      {
        domain = "access"
      }
    ]
    epg_type               = "oob"
    flood_in_encapsulation = "disabled"
    has_multicast_source   = false
    intra_epg_isolation    = "unenforced"
    label_match_criteria   = "AtleastOne"
    monitoring_policy      = "default"
    policy_source_tenant   = "common"
    preferred_group_member = false
    qos_class              = "unspecified"
    tenant                 = "mgmt"
    useg_epg               = false
    vmm_domains = [
    ]
  }
}
