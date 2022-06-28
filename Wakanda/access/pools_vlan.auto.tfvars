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
        vlan_range      = "4,21-23,100-299,1101-1110"
      },
      "2" = {
        allocation_mode = "inherit"
        role            = "external"
        vlan_range      = "1000-1100,1111-1199"
      }
    }
  }
}
