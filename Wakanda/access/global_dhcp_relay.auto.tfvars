#____________________________________________________________
#
# Global Dhcp Relay - Variables
#____________________________________________________________

global_dhcp_relay = {
  "ad1" = {
    dhcp_relay_providers = [
      {
        address  = "10.101.128.15"
        epg      = "prod"
        epg_type = "external_epg"
        l3out    = "wakanda-prod"
        tenant   = "common"
      }
    ]
    mode            = "visible"
    tenant          = "common"
    controller_type = "apic"
  }
  "ad2" = {
    dhcp_relay_providers = [
      {
        address  = "10.101.128.16"
        epg      = "prod"
        epg_type = "external_epg"
        l3out    = "wakanda-prod"
        tenant   = "common"
      }
    ]
    mode            = "visible"
    tenant          = "common"
    controller_type = "apic"
  }
}
