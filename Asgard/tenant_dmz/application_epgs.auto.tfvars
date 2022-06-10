#______________________________________________
#
# Application Epgs - Variables
#______________________________________________

application_epgs = {
  "10.92.201.0" = {
    application_profile = "nets"
    bridge_domain       = "10.92.201.0"
    contracts = [
    ]
    description = "dmz management"
    domains = [
      {
        domain = "access"
      },
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
        vlan_mode = "dynamic"
      }
    ]
    epg_to_aaeps = [
      {
        aaep  = "trunkAep"
        mode  = "trunk"
        vlans = [201]
      }
    ]
    epg_type               = "standard"
    flood_in_encapsulation = "disabled"
    has_multicast_source   = false
    intra_epg_isolation    = "unenforced"
    label_match_criteria   = "AtleastOne"
    monitoring_policy      = "default"
    policy_source_tenant   = "common"
    preferred_group_member = false
    qos_class              = "unspecified"
    tenant                 = "dmz"
    useg_epg               = false
  }
}
