#______________________________________________
#
# L3out Logical Node Profiles - Variables
#______________________________________________

l3out_logical_node_profiles = {
  "intersite_asgard-spine101" = {
    color_tag   = "yellow-green"
    description = "Multi-Site Connectivity"
    interface_profiles = [
      {
        description               = "143b-core01-Eth1/23"
        encap_scope               = "local"
        encap_vlan                = 4
        interface_or_policy_group = "eth1/29"
        interface_type            = "sub-interface"
        ipv6_dad                  = "enabled"
        mode                      = "trunk"
        mtu                       = 9150
        name                      = "Eth1-29.4"
        ospf_interface_profile = [
          {
            auth_type             = "none"
            description           = "OSPF Multi-Site Profile"
            ospf_interface_policy = "point-to-point"
            policy_source_tenant  = "common"
            name                  = "intersite"
          }
        ]
        policy_source_tenant      = "common"
        primary_preferred_address = "10.92.4.0/31"
        qos_class                 = "unspecified"
        target_dscp               = "unspecified"
      },
      {
        description               = "143c-core02-Eth1/23"
        encap_scope               = "local"
        encap_vlan                = 4
        interface_or_policy_group = "eth1/30"
        interface_type            = "sub-interface"
        ipv6_dad                  = "enabled"
        mode                      = "trunk"
        mtu                       = 9150
        name                      = "Eth1-30.4"
        ospf_interface_profile = [
          {
            auth_type             = "none"
            description           = "OSPF Multi-Site Profile"
            ospf_interface_policy = "point-to-point"
            policy_source_tenant  = "common"
            name                  = "intersite"
          }
        ]
        policy_source_tenant      = "common"
        primary_preferred_address = "10.92.4.2/31"
        qos_class                 = "unspecified"
        target_dscp               = "unspecified"
      }
    ]
    l3out = "intersite"
    name  = "asgard-spine101"
    nodes = [
      {
        node_id                   = 101
        router_id                 = "10.92.4.101"
        use_router_id_as_loopback = false
      }
    ]
    pod_id      = 1
    target_dscp = "unspecified"
    tenant      = "infra"
  }
  "intersite_asgard-spine102" = {
    color_tag   = "yellow-green"
    description = "Multi-Site Connectivity"
    interface_profiles = [
      {
        description               = "143b-core01-Eth1/24"
        encap_scope               = "local"
        encap_vlan                = 4
        interface_or_policy_group = "eth1/29"
        interface_type            = "sub-interface"
        ipv6_dad                  = "enabled"
        mode                      = "trunk"
        mtu                       = 9150
        name                      = "Eth1-29.4"
        ospf_interface_profile = [
          {
            auth_type             = "none"
            description           = "OSPF Multi-Site Profile"
            ospf_interface_policy = "point-to-point"
            policy_source_tenant  = "common"
            name                  = "intersite"
          }
        ]
        policy_source_tenant      = "common"
        primary_preferred_address = "10.92.4.4/31"
        qos_class                 = "unspecified"
        target_dscp               = "unspecified"
      },
      {
        description               = "143b-core01-Eth1/24"
        encap_scope               = "local"
        encap_vlan                = 4
        interface_or_policy_group = "eth1/30"
        interface_type            = "sub-interface"
        ipv6_dad                  = "enabled"
        mode                      = "trunk"
        mtu                       = 9150
        name                      = "Eth1-30.4"
        ospf_interface_profile = [
          {
            auth_type             = "none"
            description           = "OSPF Multi-Site Profile"
            ospf_interface_policy = "point-to-point"
            policy_source_tenant  = "common"
            name                  = "intersite"
          }
        ]
        policy_source_tenant      = "common"
        primary_preferred_address = "10.92.4.6/31"
        qos_class                 = "unspecified"
        target_dscp               = "unspecified"
      }
    ]
    l3out = "intersite"
    name  = "asgard-spine102"
    nodes = [
      {
        node_id                   = 102
        router_id                 = "10.92.4.102"
        use_router_id_as_loopback = false
      }
    ]
    pod_id      = 1
    target_dscp = "unspecified"
    tenant      = "infra"
  }
}
