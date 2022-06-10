#____________________________________________________________
#
# Policies Port Channel - Variables
#____________________________________________________________

policies_port_channel = {
  "lacpActive" = {
    description                   = "LACP Active"
    fast_select_hot_standby_ports = true
    graceful_convergence          = true
    load_defer_member_ports       = false
    maximum_number_of_links       = 16
    minimum_number_of_links       = 1
    mode                          = "active"
    suspend_individual_port       = true
    symmetric_hashing             = false
  }
  "lacpPassive" = {
    description                   = "LACP Passive"
    fast_select_hot_standby_ports = true
    graceful_convergence          = true
    load_defer_member_ports       = false
    maximum_number_of_links       = 16
    minimum_number_of_links       = 1
    mode                          = "passive"
    suspend_individual_port       = true
    symmetric_hashing             = false
  }
  "macPin" = {
    description                   = "MAC Pinning"
    fast_select_hot_standby_ports = true
    graceful_convergence          = true
    load_defer_member_ports       = false
    maximum_number_of_links       = 16
    minimum_number_of_links       = 1
    mode                          = "mac-pin"
    suspend_individual_port       = true
    symmetric_hashing             = false
  }
  "macPinNicLoad" = {
    description                   = "MAC Pin NIC Load"
    fast_select_hot_standby_ports = true
    graceful_convergence          = true
    load_defer_member_ports       = false
    maximum_number_of_links       = 16
    minimum_number_of_links       = 1
    mode                          = "mac-pin-nicload"
    suspend_individual_port       = true
    symmetric_hashing             = false
  }
  "static" = {
    description                   = "LLDP Rx Enabled"
    fast_select_hot_standby_ports = true
    graceful_convergence          = true
    load_defer_member_ports       = false
    maximum_number_of_links       = 16
    minimum_number_of_links       = 1
    mode                          = "off"
    suspend_individual_port       = true
    symmetric_hashing             = false
  }
}
