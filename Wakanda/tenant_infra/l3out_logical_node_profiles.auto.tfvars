#______________________________________________
#
# L3out Logical Node Profiles - Variables
#______________________________________________

l3out_logical_node_profiles = {
  "intersite_wakanda-spine101" = {
    color_tag   = "yellow-green"
    description = "Multi-Site Connectivity"
    interface_profiles = [
    ]
    l3out = "intersite"
    name  = "wakanda-spine101"
    nodes = [
      {
        node_id                   = 101
        router_id                 = "10.96.4.101"
        use_router_id_as_loopback = false
      }
    ]
    pod_id      = 1
    target_dscp = "unspecified"
    tenant      = "infra"
  }
  "intersite_wakanda-spine102" = {
    color_tag   = "yellow-green"
    description = "Multi-Site Connectivity"
    interface_profiles = [
    ]
    l3out = "intersite"
    name  = "wakanda-spine102"
    nodes = [
      {
        node_id                   = 102
        router_id                 = "10.96.4.102"
        use_router_id_as_loopback = false
      }
    ]
    pod_id      = 1
    target_dscp = "unspecified"
    tenant      = "infra"
  }
}
