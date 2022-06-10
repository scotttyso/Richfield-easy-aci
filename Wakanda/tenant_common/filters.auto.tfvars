#______________________________________________
#
# Filters - Variables
#______________________________________________

filters = {
  "any" = {
    description = "Default Filter"
    filter_entries = [
      {
        acknowledgement       = false
        arp_flag              = "unspecified"
        description           = "Allow Any"
        destination_port_from = "unspecified"
        destination_port_to   = "unspecified"
        established           = false
        ethertype             = "unspecified"
        finish                = false
        icmpv4_type           = "unspecified"
        icmpv6_type           = "unspecified"
        ip_protocol           = "unspecified"
        match_dscp            = "unspecified"
        match_only_fragments  = false
        name                  = "any"
        reset                 = false
        source_port_from      = "unspecified"
        source_port_to        = "unspecified"
        stateful              = false
        synchronize           = false
        tenant                = "common"
      }
    ]
  }
}
