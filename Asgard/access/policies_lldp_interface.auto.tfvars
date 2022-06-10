#____________________________________________________________
#
# Policies LLDP Interface - Variables
#____________________________________________________________

policies_lldp_interface = {
  "lldpDisabled" = {
    description    = "LLDP Both Disabled"
    receive_state  = "disabled"
    transmit_state = "disabled"
  }
  "lldpEnabled" = {
    description    = "LLDP Both Enabled"
    receive_state  = "enabled"
    transmit_state = "enabled"
  }
  "lldpRx" = {
    description    = "LLDP Rx Enabled"
    receive_state  = "enabled"
    transmit_state = "disabled"
  }
  "lldpTx" = {
    description    = "LLDP Tx Enabled"
    receive_state  = "disabled"
    transmit_state = "enabled"
  }
}
