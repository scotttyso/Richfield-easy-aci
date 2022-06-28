#______________________________________________
#
# Bridge Domains - Variables
#______________________________________________

bridge_domains = {
  "10.239.10.0" = {
    advanced_troubleshooting = [
      {
        disable_ip_data_plane_learning_for_pbr = false
        endpoint_clear                         = false
        intersite_bum_traffic_allow            = false
        intersite_l2_stretch                   = false
        monitoring_policy                      = "default"
        optimize_wan_bandwidth                 = false
      }
    ]
    general = [
      {
        advertise_host_routes         = false
        arp_flooding                  = false
        description                   = "Jusbarks SkunkWorks10"
        endpoint_retention_policy     = "default"
        igmp_interface_policy         = "default"
        igmp_snooping_policy          = "default"
        ipv6_l3_unknown_multicast     = "flood"
        l2_unknown_unicast            = "proxy"
        l3_unknown_multicast_flooding = "flood"
        limit_ip_learn_to_subnets     = true
        mld_snoop_policy              = "default"
        multi_destionation_flooding   = "bd-flood"
        pim                           = false
        pimv6                         = false
        type                          = "regular"
        vrf                           = "prod"
        vrf_tenant                    = "common"
      }
    ]
    l3_configurations = [
      {
        associated_l3outs = [
          {
            l3out  = "asgard-prod"
            tenant = "common"
          }
        ]
        disable_ip_data_plane_learning_for_pbr = false
        ep_move_detection_mode                 = false
        intersite_bum_traffic_allow            = false
        intersite_l2_stretch                   = false
        nd_policy                              = "default"
        optimize_wan_bandwidth                 = false
        subnets = {
          "10.239.10.1/24" = {
            ip_data_plane_learning       = "enabled"
            make_this_ip_address_primary = false
            treat_as_virtual_ip_address  = false
            description                  = "Jusbarks Skunkworks10"
            "scope" = [
              {
                advertise_externally = true
                shared_between_vrfs  = false
              }
            ]
            "subnet_control" = [
              {
                neighbor_discovery     = true
                no_default_svi_gateway = false
                querier_ip             = false
              }
            ]
          }
        }
        unicast_routing = true
      }
    ]
    policy_source_tenant = "common"
    tenant               = "skunkworks"
    controller_type      = "apic"
  }
  "10.239.21.0" = {
    advanced_troubleshooting = [
      {
        disable_ip_data_plane_learning_for_pbr = false
        endpoint_clear                         = false
        intersite_bum_traffic_allow            = false
        intersite_l2_stretch                   = false
        monitoring_policy                      = "default"
        optimize_wan_bandwidth                 = false
      }
    ]
    general = [
      {
        advertise_host_routes         = false
        arp_flooding                  = false
        description                   = "Jusbarks SkunkWorks21"
        endpoint_retention_policy     = "default"
        igmp_interface_policy         = "default"
        igmp_snooping_policy          = "default"
        ipv6_l3_unknown_multicast     = "flood"
        l2_unknown_unicast            = "proxy"
        l3_unknown_multicast_flooding = "flood"
        limit_ip_learn_to_subnets     = true
        mld_snoop_policy              = "default"
        multi_destionation_flooding   = "bd-flood"
        pim                           = false
        pimv6                         = false
        type                          = "regular"
        vrf                           = "prod"
        vrf_tenant                    = "common"
      }
    ]
    l3_configurations = [
      {
        associated_l3outs = [
          {
            l3out  = "asgard-prod"
            tenant = "common"
          }
        ]
        disable_ip_data_plane_learning_for_pbr = false
        ep_move_detection_mode                 = false
        intersite_bum_traffic_allow            = false
        intersite_l2_stretch                   = false
        nd_policy                              = "default"
        optimize_wan_bandwidth                 = false
        subnets = {
          "10.239.21.1/24" = {
            ip_data_plane_learning       = "enabled"
            make_this_ip_address_primary = false
            treat_as_virtual_ip_address  = false
            description                  = "Jusbarks Skunkworks21"
            "scope" = [
              {
                advertise_externally = true
                shared_between_vrfs  = false
              }
            ]
            "subnet_control" = [
              {
                neighbor_discovery     = true
                no_default_svi_gateway = false
                querier_ip             = false
              }
            ]
          }
        }
        unicast_routing = true
      }
    ]
    policy_source_tenant = "common"
    tenant               = "skunkworks"
    controller_type      = "apic"
  }
  "10.239.22.0" = {
    advanced_troubleshooting = [
      {
        disable_ip_data_plane_learning_for_pbr = false
        endpoint_clear                         = false
        intersite_bum_traffic_allow            = false
        intersite_l2_stretch                   = false
        monitoring_policy                      = "default"
        optimize_wan_bandwidth                 = false
      }
    ]
    general = [
      {
        advertise_host_routes         = false
        arp_flooding                  = false
        description                   = "Jusbarks SkunkWorks22"
        endpoint_retention_policy     = "default"
        igmp_interface_policy         = "default"
        igmp_snooping_policy          = "default"
        ipv6_l3_unknown_multicast     = "flood"
        l2_unknown_unicast            = "proxy"
        l3_unknown_multicast_flooding = "flood"
        limit_ip_learn_to_subnets     = true
        mld_snoop_policy              = "default"
        multi_destionation_flooding   = "bd-flood"
        pim                           = false
        pimv6                         = false
        type                          = "regular"
        vrf                           = "prod"
        vrf_tenant                    = "common"
      }
    ]
    l3_configurations = [
      {
        associated_l3outs = [
          {
            l3out  = "asgard-prod"
            tenant = "common"
          }
        ]
        disable_ip_data_plane_learning_for_pbr = false
        ep_move_detection_mode                 = false
        intersite_bum_traffic_allow            = false
        intersite_l2_stretch                   = false
        nd_policy                              = "default"
        optimize_wan_bandwidth                 = false
        subnets = {
          "10.239.22.1/24" = {
            ip_data_plane_learning       = "enabled"
            make_this_ip_address_primary = false
            treat_as_virtual_ip_address  = false
            description                  = "Jusbarks Skunkworks22"
            "scope" = [
              {
                advertise_externally = true
                shared_between_vrfs  = false
              }
            ]
            "subnet_control" = [
              {
                neighbor_discovery     = true
                no_default_svi_gateway = false
                querier_ip             = false
              }
            ]
          }
        }
        unicast_routing = true
      }
    ]
    policy_source_tenant = "common"
    tenant               = "skunkworks"
    controller_type      = "apic"
  }
}
