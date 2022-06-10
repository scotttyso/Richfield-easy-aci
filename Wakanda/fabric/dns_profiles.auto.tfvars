#______________________________________________
#
# Dns Profiles - Variables
#______________________________________________

dns_profiles = {
  "default" = {
    description = "System DNS Profile"
    dns_domains = [
      {
        domain         = "cisco.com"
        default_domain = false
      },
      {
        domain         = "rich.ciscolabs.com"
        default_domain = true
      }
    ]
    dns_providers = [
      {
        dns_provider = "10.101.128.15"
        preferred    = true
      },
      {
        dns_provider = "10.101.128.16"
        preferred    = false
      }
    ]
    management_epg      = "ooband"
    management_epg_type = "oob"
  }
}
