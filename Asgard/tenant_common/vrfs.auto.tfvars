#______________________________________________
#
# Vrfs - Variables
#______________________________________________

vrfs = {
  "dmz" = {
    bd_enforcement_status = false
    bgp_timers            = "default"
    bgp_timers_per_address_family = [
      {
        address_family = "ipv4"
        policy         = "default"
      },
      {
        address_family = "ipv6"
        policy         = "default"
      }
    ]
    communities = [
    ]
    description = "DMZ VRF"
    eigrp_timers_per_address_family = [
      {
        address_family = "ipv4"
        policy         = "default"
      },
      {
        address_family = "ipv6"
        policy         = "default"
      }
    ]
    endpoint_retention_policy = "default"
    epg_esg_collection_for_vrfs = [
      {
        contracts = [
          {
            contract_type = "consumed"
            name          = "default"
            qos_class     = "unspecified"
            tenant        = "common"
          },
          {
            contract_type = "provided"
            name          = "default"
            qos_class     = "unspecified"
            tenant        = "common"
          }
        ]
        match_type = "AtleastOne"
      }
    ]
    ip_data_plane_learning = "enabled"
    layer3_multicast       = true
    monitoring_policy      = "default"
    ospf_timers            = "default"
    ospf_timers_per_address_family = [
      {
        address_family = "ipv4"
        policy         = "default"
      },
      {
        address_family = "ipv6"
        policy         = "default"
      }
    ]
    policy_control_enforcement_direction  = "ingress"
    policy_control_enforcement_preference = "enforced"
    preferred_group                       = false
    tenant                                = "common"
    vrf_policy                            = "recommended"
  }
  "prod" = {
    bd_enforcement_status = false
    bgp_timers            = "default"
    bgp_timers_per_address_family = [
      {
        address_family = "ipv4"
        policy         = "default"
      },
      {
        address_family = "ipv6"
        policy         = "default"
      }
    ]
    communities = [
    ]
    description = "Production VRF"
    eigrp_timers_per_address_family = [
      {
        address_family = "ipv4"
        policy         = "default"
      },
      {
        address_family = "ipv6"
        policy         = "default"
      }
    ]
    endpoint_retention_policy = "default"
    epg_esg_collection_for_vrfs = [
      {
        contracts = [
        ]
        match_type = "AtleastOne"
      }
    ]
    ip_data_plane_learning = "enabled"
    layer3_multicast       = true
    monitoring_policy      = "default"
    ospf_timers            = "default"
    ospf_timers_per_address_family = [
      {
        address_family = "ipv4"
        policy         = "default"
      },
      {
        address_family = "ipv6"
        policy         = "default"
      }
    ]
    policy_control_enforcement_direction  = "ingress"
    policy_control_enforcement_preference = "enforced"
    preferred_group                       = true
    tenant                                = "common"
    vrf_policy                            = "recommended"
  }
}
