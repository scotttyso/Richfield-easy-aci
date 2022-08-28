#______________________________________________
#
# Bridge Domains - Variables
#______________________________________________

bridge_domains = {
  "inb" = {
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
    controller_type = "apic"
    general = [
      {
        advertise_host_routes         = false
        arp_flooding                  = false
        description                   = "Asgard Inband"
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
        vrf                           = "inb"
        vrf_tenant                    = "mgmt"
      }
    ]
    l3_configurations = [
      {
        associated_l3outs = [
          {
            l3out = [
              "inband"
            ]
            tenant = "mgmt"
          }
        ]
        ep_move_detection_mode = false
        nd_policy              = "default"
        subnets = {
          "10.92.0.254/24" = {
            ip_data_plane_learning       = "enabled"
            make_this_ip_address_primary = false
            treat_as_virtual_ip_address  = false
            description                  = "Inband"
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
    tenant               = "mgmt"
  }
}
