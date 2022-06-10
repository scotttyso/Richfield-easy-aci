#____________________________________________________________
#
# Policies L2 Interface - Variables
#____________________________________________________________

policies_l2_interface = {
  "default" = {
    QinQ             = "disabled"
    description      = "Default L2 Interface Policy"
    reflective_relay = "disabled"
    vlan_scope       = "global"
  }
}
