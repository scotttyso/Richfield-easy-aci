#______________________________________________
#
# L3out Logical Node Profiles - Variables
#______________________________________________

l3out_logical_node_profiles = {
  "inband_asgard-leaf201-202" = {
    color_tag   = "yellow-green"
    description = "Asgard Inband LNP"
    interface_profiles = [
      {
        auto_state = "disabled"
        bgp_peers = [
          {
            address_type_controls = [
              {
                af_mcast = false
                af_ucast = true
              }
            ]
            admin_state           = "enabled"
            allowed_self_as_count = 3
            bgp_controls = [
              {
                allow_self_as           = false
                as_override             = false
                disable_peer_as_check   = false
                next_hop_self           = false
                send_community          = true
                send_domain_path        = false
                send_extended_community = true
              }
            ]
            bgp_peer_prefix_policy = "default"
            description            = "143b-core01"
            ebgp_multihop_ttl      = 1
            local_as_number_config = "none"
            peer_address           = "10.92.1.3"
            peer_asn               = 64701
            peer_controls = [
              {
                bidirectional_forwarding_detection = true
                disable_connected_check            = false
              }
            ]
            peer_level           = "interface"
            policy_source_tenant = "common"
            private_as_control = [
              {
                remove_all_private_as            = false
                remove_private_as                = false
                replace_private_as_with_local_as = false
              }
            ]
            weight_for_routes_from_neighbor = 0
          },
          {
            address_type_controls = [
              {
                af_mcast = false
                af_ucast = true
              }
            ]
            admin_state           = "enabled"
            allowed_self_as_count = 3
            bgp_controls = [
              {
                allow_self_as           = false
                as_override             = false
                disable_peer_as_check   = false
                next_hop_self           = false
                send_community          = true
                send_domain_path        = false
                send_extended_community = true
              }
            ]
            bgp_peer_prefix_policy = "default"
            description            = "143c-core02"
            ebgp_multihop_ttl      = 1
            local_as_number_config = "none"
            peer_address           = "10.92.1.4"
            peer_asn               = 64701
            peer_controls = [
              {
                bidirectional_forwarding_detection = true
                disable_connected_check            = false
              }
            ]
            peer_level           = "interface"
            policy_source_tenant = "common"
            private_as_control = [
              {
                remove_all_private_as            = false
                remove_private_as                = false
                replace_private_as_with_local_as = false
              }
            ]
            weight_for_routes_from_neighbor = 0
          }
        ]
        description               = "143-core01-02-vpc27-vl101"
        encap_scope               = "local"
        encap_vlan                = 11
        interface_or_policy_group = "l3out"
        interface_type            = "ext-svi"
        ipv6_dad                  = "enabled"
        mode                      = "trunk"
        mtu                       = "inherit"
        name                      = "Vlan11"
        policy_source_tenant      = "common"
        qos_class                 = "unspecified"
        svi_addresses = [
          {
            primary_preferred_address = "10.92.1.1/29"
            side                      = "A"
          },
          {
            primary_preferred_address = "10.92.1.2/29"
            side                      = "B"
          }
        ]
        target_dscp = "unspecified"
      }
    ]
    l3out = "inband"
    name  = "asgard-leaf201-202"
    nodes = [
      {
        node_id                   = 201
        router_id                 = "10.92.1.201"
        use_router_id_as_loopback = true
      },
      {
        node_id                   = 202
        router_id                 = "10.92.1.202"
        use_router_id_as_loopback = true
      }
    ]
    pod_id      = 1
    target_dscp = "unspecified"
    tenant      = "mgmt"
  }
}
