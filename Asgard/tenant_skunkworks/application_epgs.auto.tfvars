#______________________________________________
#
# Application Epgs - Variables
#______________________________________________

application_epgs = {
  "dev" = {
    application_profile = "k8s"
    bridge_domain       = "10.239.21.0"
    contracts = [
    ]
    description = "Jusbarks Skunkworks21"
    domains = [
      {
        allow_micro_segmentation = false
        delimiter                = "|"
        deploy_immediacy         = "immediate"
        domain                   = "Asgard"
        domain_type              = "vmm"
        number_of_ports          = 0
        port_allocation          = "none"
        port_binding             = "default"
        resolution_immediacy     = "pre-provision"
        security = [
          {
            allow_promiscuous = "reject"
            forged_transmits  = "reject"
            mac_changes       = "reject"
          }
        ]
        switch_provider = "VMware"
        vlan_mode       = "dynamic"
      }
    ]
    epg_type               = "standard"
    flood_in_encapsulation = "disabled"
    has_multicast_source   = false
    intra_epg_isolation    = "unenforced"
    label_match_criteria   = "AtleastOne"
    monitoring_policy      = "default"
    physical_domains = [
    ]
    policy_source_tenant   = "common"
    preferred_group_member = true
    qos_class              = "unspecified"
    tenant                 = "skunkworks"
    useg_epg               = false
  }
  "maas" = {
    application_profile = "k8s"
    bridge_domain       = "10.239.22.0"
    contracts = [
    ]
    description = "Jusbarks Skunkworks22"
    domains = [
      {
        allow_micro_segmentation = false
        delimiter                = "|"
        deploy_immediacy         = "immediate"
        domain                   = "Asgard"
        domain_type              = "vmm"
        number_of_ports          = 0
        port_allocation          = "none"
        port_binding             = "default"
        resolution_immediacy     = "pre-provision"
        security = [
          {
            allow_promiscuous = "reject"
            forged_transmits  = "reject"
            mac_changes       = "reject"
          }
        ]
        switch_provider = "VMware"
        vlan_mode       = "dynamic"
      }
    ]
    epg_type               = "standard"
    flood_in_encapsulation = "disabled"
    has_multicast_source   = false
    intra_epg_isolation    = "unenforced"
    label_match_criteria   = "AtleastOne"
    monitoring_policy      = "default"
    physical_domains = [
    ]
    policy_source_tenant   = "common"
    preferred_group_member = true
    qos_class              = "unspecified"
    tenant                 = "skunkworks"
    useg_epg               = false
  }
  "services" = {
    application_profile = "mgmt"
    bridge_domain       = "10.239.10.0"
    contracts = [
    ]
    description = "Jusbarks Skunkworks10"
    domains = [
      {
        allow_micro_segmentation = false
        delimiter                = "|"
        deploy_immediacy         = "immediate"
        domain                   = "Asgard"
        domain_type              = "vmm"
        number_of_ports          = 0
        port_allocation          = "none"
        port_binding             = "default"
        resolution_immediacy     = "pre-provision"
        security = [
          {
            allow_promiscuous = "reject"
            forged_transmits  = "reject"
            mac_changes       = "reject"
          }
        ]
        switch_provider = "VMware"
        vlan_mode       = "dynamic"
      }
    ]
    epg_type               = "standard"
    flood_in_encapsulation = "disabled"
    has_multicast_source   = false
    intra_epg_isolation    = "unenforced"
    label_match_criteria   = "AtleastOne"
    monitoring_policy      = "default"
    physical_domains = [
    ]
    policy_source_tenant   = "common"
    preferred_group_member = true
    qos_class              = "unspecified"
    tenant                 = "skunkworks"
    useg_epg               = false
  }
}
