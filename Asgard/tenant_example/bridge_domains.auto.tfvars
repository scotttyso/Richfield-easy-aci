#______________________________________________
#
# Bridge Domains - Variables
#______________________________________________

bridge_domains = {
  "10.92.121.0" = {
    dhcp_relay_labels = [{
      names = ["ad1", "ad2"]
      scope = "infra"
    }]
    general = [{
      description = "prod management"
      vrf         = "prod"
      vrf_tenant  = "common"
    }]
    l3_configurations = [{
      associated_l3outs = [{
        l3out  = "asgard-prod"
        tenant = "common"
      }]
      subnets = {
        "10.92.121.1/24" = {
          description = "management"
          "scope"     = [{ advertise_externally = true }]
        }
      }
    }]
    policy_source_tenant = "common"
  }
}
