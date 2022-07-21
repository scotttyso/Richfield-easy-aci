#______________________________________________
#
# L3outs - Variables
#______________________________________________

l3outs = {
  "intersite" = {
    description = "Multi-Site L3Out"
    enable_bgp  = true
    external_epgs = [
      {
        contracts = [
        ]
        description            = "Multi-Site"
        flood_on_encapsulation = "disabled"
        intra_epg_isolation    = "unenforced"
        l3out                  = "intersite"
        label_match_criteria   = "AtleastOne"
        name                   = "intersightInstP"
        preferred_group_member = false
        qos_class              = "unspecified"
        subnets = [
        ]
        target_dscp = "unspecified"
        tenant      = "infra"
      }
    ]
    l3_domain = "l3out"
    pim       = false
    pimv6     = false
    route_control_enforcement = [
      {
        export = true
        import = false
      }
    ]
    target_dscp = "unspecified"
    tenant      = "infra"
    vrf         = "overlay-1"
  }
}
