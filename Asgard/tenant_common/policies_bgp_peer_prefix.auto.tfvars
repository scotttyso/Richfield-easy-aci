#______________________________________________
#
# Policies Bgp Peer Prefix - Variables
#______________________________________________

policies_bgp_peer_prefix = {
  "default" = {
    action                     = "log"
    description                = "Default Prefix Policy"
    maximum_number_of_prefixes = 20000
    restart_time               = 65535
    threshold                  = 75
  }
}
