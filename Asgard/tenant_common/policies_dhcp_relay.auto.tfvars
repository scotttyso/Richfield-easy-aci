#______________________________________________
#
# Policies Dhcp Relay - Variables
#______________________________________________

policies_dhcp_relay = {
  "ad1" = {
    dhcp_relay_providers = [
      {
        address  = "10.101.128.15"
        epg      = "prod"
        epg_type = "external_epg"
        l3out    = "asgard-prod"
        tenant   = "common"
      }
    ]
    mode            = "visible"
    owner           = "tenant"
    tenant          = "common"
    controller_type = "apic"
  }
  "ad2" = {
    dhcp_relay_providers = [
      {
        address  = "10.101.128.16"
        epg      = "prod"
        epg_type = "external_epg"
        l3out    = "asgard-prod"
        tenant   = "common"
      }
    ]
    mode            = "visible"
    owner           = "tenant"
    tenant          = "common"
    controller_type = "apic"
  }
}
