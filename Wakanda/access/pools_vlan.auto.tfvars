#____________________________________________________________
#
# Pools Vlan - Variables
#____________________________________________________________

pools_vlan = {
  "access" = {
    allocation_mode = "dynamic"
    description     = "Access VLAN Pool"
    encap_blocks = {
      "1" = {
        allocation_mode = "static"
        role            = "external"
        vlan_range      = "4,21-23,100-299"
      },
      "2" = {
        allocation_mode = "inherit"
        role            = "external"
        vlan_range      = "1000-1199"
      }
    }
  }
}
