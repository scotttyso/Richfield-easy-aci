#____________________________________________________________
#
# Switches Leaf Policy Groups - Variables
#____________________________________________________________

switches_leaf_policy_groups = {
  "default" = {
    bfd_ipv4_policy                  = "default"
    bfd_ipv6_policy                  = "default"
    bfd_multihop_ipv4_policy         = "default"
    bfd_multihop_ipv6_policy         = "default"
    cdp_interface_policy             = "cdpEnabled"
    copp_leaf_policy                 = "default"
    copp_pre-filter                  = "default"
    description                      = "Default Leaf Policy Group"
    dot1x_node_authentication_policy = "default"
    fast_link_failover_policy        = "default"
    fibre_channel_node_policy        = "default"
    fibre_channel_san_policy         = "default"
    forward_scale_profile_policy     = "default"
    lldp_interface_policy            = "lldpEnabled"
    netflow_node_policy              = "default"
    poe_node_policy                  = "default"
    ptp_node_policy                  = "default"
    spanning_tree_interface_policy   = "default"
    synce_node_policy                = "default"
    usb_configuration_policy         = "default"
  }
}
