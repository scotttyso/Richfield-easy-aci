#______________________________________________
#
# Application Epgs - Variables
#______________________________________________

application_epgs = {
  "10.92.121.0" = {
    application_profile = "nets"
    bridge_domain       = "10.92.121.0"
    description         = "Example 121"
    domains = [
      {
        domain = "access"
      },
      {
        domain      = "Asgard"
        domain_type = "vmm"
      }
    ]
    epg_to_aaeps = [
      {
        aaep  = "trunkAep"
        # mode  = "trunk"
        vlans = [121]
      }
    ]
    policy_source_tenant   = "common"
    preferred_group_member = true
  }
}
