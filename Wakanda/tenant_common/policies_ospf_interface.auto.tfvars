#______________________________________________
#
# Policies Ospf Interface - Variables
#______________________________________________

policies_ospf_interface = {
  "point-to-point" = {
    advertise_subnet    = true
    bfd                 = true
    cost_of_interface   = 0
    dead_interval       = 40
    description         = "Point-to-Point Policy"
    hello_interval      = 10
    mtu_ignore          = true
    network_type        = "p2p"
    passive_interface   = false
    priority            = 1
    retransmit_interval = 5
    transmit_delay      = 1
  }
}
