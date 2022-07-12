#______________________________________________
#
# Application Epgs - Variables
#______________________________________________

application_epgs = {
  "10.96.101.0" = {
    application_profile = "nets"
    bridge_domain       = "10.96.101.0"
    contracts = [
    ]
    description = "prod management"
    domains = [
      {
        domain = "access"
      },
      {
        allow_micro_segmentation = false
        delimiter                = "|"
        deploy_immediacy         = "immediate"
        domain                   = "Wakanda"
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
    epg_to_aaeps = [
      {
        aaep  = "trunkAep"
        mode  = "trunk"
        vlans = [101]
      }
    ]
    epg_type               = "standard"
    flood_in_encapsulation = "disabled"
    has_multicast_source   = false
    intra_epg_isolation    = "unenforced"
    label_match_criteria   = "AtleastOne"
    monitoring_policy      = "default"
    policy_source_tenant   = "common"
    preferred_group_member = true
    qos_class              = "unspecified"
    tenant                 = "prod"
    useg_epg               = false
  }
  "10.96.102.0" = {
    application_profile = "nets"
    bridge_domain       = "10.96.102.0"
    contracts = [
    ]
    description = "prod migration"
    domains = [
      {
        domain = "access"
      },
      {
        allow_micro_segmentation = false
        delimiter                = "|"
        deploy_immediacy         = "immediate"
        domain                   = "Wakanda"
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
    epg_to_aaeps = [
      {
        aaep  = "trunkAep"
        mode  = "trunk"
        vlans = [102]
      }
    ]
    epg_type               = "standard"
    flood_in_encapsulation = "disabled"
    has_multicast_source   = false
    intra_epg_isolation    = "unenforced"
    label_match_criteria   = "AtleastOne"
    monitoring_policy      = "default"
    policy_source_tenant   = "common"
    preferred_group_member = true
    qos_class              = "unspecified"
    tenant                 = "prod"
    useg_epg               = false
  }
  "10.96.103.0" = {
    application_profile = "nets"
    bridge_domain       = "10.96.103.0"
    contracts = [
    ]
    description = "prod storage"
    domains = [
      {
        domain = "access"
      },
      {
        allow_micro_segmentation = false
        delimiter                = "|"
        deploy_immediacy         = "immediate"
        domain                   = "Wakanda"
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
    epg_to_aaeps = [
      {
        aaep  = "trunkAep"
        mode  = "trunk"
        vlans = [103]
      }
    ]
    epg_type               = "standard"
    flood_in_encapsulation = "disabled"
    has_multicast_source   = false
    intra_epg_isolation    = "unenforced"
    label_match_criteria   = "AtleastOne"
    monitoring_policy      = "default"
    policy_source_tenant   = "common"
    preferred_group_member = true
    qos_class              = "unspecified"
    tenant                 = "prod"
    useg_epg               = false
  }
  "10.96.111.0" = {
    application_profile = "nets"
    bridge_domain       = "10.96.111.0"
    contracts = [
    ]
    description = "Guest VM1"
    domains = [
      {
        allow_micro_segmentation = false
        delimiter                = "|"
        deploy_immediacy         = "immediate"
        domain                   = "Wakanda"
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
    tenant                 = "prod"
    useg_epg               = false
  }
  "10.96.112.0" = {
    application_profile = "nets"
    bridge_domain       = "10.96.112.0"
    contracts = [
    ]
    description = "Guest VM2"
    domains = [
      {
        allow_micro_segmentation = false
        delimiter                = "|"
        deploy_immediacy         = "immediate"
        domain                   = "Wakanda"
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
    tenant                 = "prod"
    useg_epg               = false
  }
}
