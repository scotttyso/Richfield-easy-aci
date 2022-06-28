#______________________________________________
#
# Vrfs - Variables
#______________________________________________

vrfs = {
  "overlay-1" = {
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
    description = "Built-In infra VRF"
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
    policy_source_tenant                  = "common"
    preferred_group                       = false
    tenant                                = "infra"
    vrf_policy                            = "recommended"
  }
}
