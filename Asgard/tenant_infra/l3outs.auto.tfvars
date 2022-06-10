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
        name                   = "intersight"
        preferred_group_member = false
        qos_class              = "unspecified"
        subnets = [
          {
            aggregate = [
              {
                aggregate_export        = false
                aggregate_shared_routes = false
              }
            ]
            external_epg_classification = [
              {
                external_subnets_for_external_epg = true
                shared_security_import_subnet     = false
              }
            ]
            route_control = [
              {
                export_route_control_subnet = false
                shared_route_control_subnet = false
              }
            ]
            subnets = [
              "0.0.0.0/1",
              "128.0.0.0/1"
            ]
          }
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
