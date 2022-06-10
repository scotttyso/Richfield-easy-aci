#______________________________________________
#
# Filters - Variables
#______________________________________________

filters = {
  "mgmt_in" = {
    description = "Management Inbound Traffic"
    filter_entries = [
      {
        acknowledgement       = false
        arp_flag              = "unspecified"
        description           = "Allow ICMP"
        destination_port_from = "unspecified"
        destination_port_to   = "unspecified"
        established           = false
        ethertype             = "ip"
        finish                = false
        icmpv4_type           = "unspecified"
        icmpv6_type           = "unspecified"
        ip_protocol           = "icmp"
        match_dscp            = "unspecified"
        match_only_fragments  = false
        name                  = "icmp"
        reset                 = false
        source_port_from      = "unspecified"
        source_port_to        = "unspecified"
        stateful              = false
        synchronize           = false
        tenant                = "mgmt"
      },
      {
        acknowledgement       = false
        arp_flag              = "unspecified"
        description           = "Allow SNMP"
        destination_port_from = 161
        destination_port_to   = 161
        established           = false
        ethertype             = "ip"
        finish                = false
        icmpv4_type           = "unspecified"
        icmpv6_type           = "unspecified"
        ip_protocol           = "udp"
        match_dscp            = "unspecified"
        match_only_fragments  = false
        name                  = "snmp"
        reset                 = false
        source_port_from      = "unspecified"
        source_port_to        = "unspecified"
        stateful              = false
        synchronize           = false
        tenant                = "mgmt"
      },
      {
        acknowledgement       = false
        arp_flag              = "unspecified"
        description           = "Allow HTTPS"
        destination_port_from = "https"
        destination_port_to   = "https"
        established           = false
        ethertype             = "ip"
        finish                = false
        icmpv4_type           = "unspecified"
        icmpv6_type           = "unspecified"
        ip_protocol           = "tcp"
        match_dscp            = "unspecified"
        match_only_fragments  = false
        name                  = "https"
        reset                 = false
        source_port_from      = "unspecified"
        source_port_to        = "unspecified"
        stateful              = false
        synchronize           = false
        tenant                = "mgmt"
      },
      {
        acknowledgement       = false
        arp_flag              = "unspecified"
        description           = "Allow SSH"
        destination_port_from = 22
        destination_port_to   = 22
        established           = true
        ethertype             = "ip"
        finish                = false
        icmpv4_type           = "unspecified"
        icmpv6_type           = "unspecified"
        ip_protocol           = "tcp"
        match_dscp            = "unspecified"
        match_only_fragments  = false
        name                  = "ssh"
        reset                 = false
        source_port_from      = "unspecified"
        source_port_to        = "unspecified"
        stateful              = true
        synchronize           = false
        tenant                = "mgmt"
      },
      {
        acknowledgement       = false
        arp_flag              = "unspecified"
        description           = "Nexus Dashboard 2022"
        destination_port_from = 2022
        destination_port_to   = 2022
        established           = true
        ethertype             = "ip"
        finish                = false
        icmpv4_type           = "unspecified"
        icmpv6_type           = "unspecified"
        ip_protocol           = "tcp"
        match_dscp            = "unspecified"
        match_only_fragments  = false
        name                  = "nd_2022"
        reset                 = false
        source_port_from      = "unspecified"
        source_port_to        = "unspecified"
        stateful              = true
        synchronize           = false
        tenant                = "mgmt"
      },
      {
        acknowledgement       = false
        arp_flag              = "unspecified"
        description           = "Nexus Dashboard 5640-5671"
        destination_port_from = 5640
        destination_port_to   = 5671
        established           = false
        ethertype             = "ip"
        finish                = false
        icmpv4_type           = "unspecified"
        icmpv6_type           = "unspecified"
        ip_protocol           = "udp"
        match_dscp            = "unspecified"
        match_only_fragments  = false
        name                  = "nd_5640"
        reset                 = false
        source_port_from      = "unspecified"
        source_port_to        = "unspecified"
        stateful              = false
        synchronize           = false
        tenant                = "mgmt"
      },
      {
        acknowledgement       = false
        arp_flag              = "unspecified"
        description           = "Nexus Dashboard 5965"
        destination_port_from = 5965
        destination_port_to   = 5965
        established           = false
        ethertype             = "ip"
        finish                = false
        icmpv4_type           = "unspecified"
        icmpv6_type           = "unspecified"
        ip_protocol           = "udp"
        match_dscp            = "unspecified"
        match_only_fragments  = false
        name                  = "nd_5965"
        reset                 = false
        source_port_from      = "unspecified"
        source_port_to        = "unspecified"
        stateful              = false
        synchronize           = false
        tenant                = "mgmt"
      },
      {
        acknowledgement       = false
        arp_flag              = "unspecified"
        description           = "Nexus Dashboard 8884"
        destination_port_from = 8884
        destination_port_to   = 8884
        established           = true
        ethertype             = "ip"
        finish                = false
        icmpv4_type           = "unspecified"
        icmpv6_type           = "unspecified"
        ip_protocol           = "tcp"
        match_dscp            = "unspecified"
        match_only_fragments  = false
        name                  = "nd_8884"
        reset                 = false
        source_port_from      = "unspecified"
        source_port_to        = "unspecified"
        stateful              = true
        synchronize           = false
        tenant                = "mgmt"
      },
      {
        acknowledgement       = false
        arp_flag              = "unspecified"
        description           = "Nexus Dashboard 9989"
        destination_port_from = 9989
        destination_port_to   = 9989
        established           = true
        ethertype             = "ip"
        finish                = false
        icmpv4_type           = "unspecified"
        icmpv6_type           = "unspecified"
        ip_protocol           = "tcp"
        match_dscp            = "unspecified"
        match_only_fragments  = false
        name                  = "nd_9989"
        reset                 = false
        source_port_from      = "unspecified"
        source_port_to        = "unspecified"
        stateful              = true
        synchronize           = false
        tenant                = "mgmt"
      },
      {
        acknowledgement       = false
        arp_flag              = "unspecified"
        description           = "ND 30000-30001"
        destination_port_from = 30000
        destination_port_to   = 30001
        established           = true
        ethertype             = "ip"
        finish                = false
        icmpv4_type           = "unspecified"
        icmpv6_type           = "unspecified"
        ip_protocol           = "tcp"
        match_dscp            = "unspecified"
        match_only_fragments  = false
        name                  = "nd_30000"
        reset                 = false
        source_port_from      = "unspecified"
        source_port_to        = "unspecified"
        stateful              = true
        synchronize           = false
        tenant                = "mgmt"
      }
    ]
  }
  "mgmt_out" = {
    description = "Management Outbound Traffic"
    filter_entries = [
      {
        acknowledgement       = false
        arp_flag              = "unspecified"
        description           = "Allow All IP"
        destination_port_from = "unspecified"
        destination_port_to   = "unspecified"
        established           = false
        ethertype             = "ip"
        finish                = false
        icmpv4_type           = "unspecified"
        icmpv6_type           = "unspecified"
        ip_protocol           = "unspecified"
        match_dscp            = "unspecified"
        match_only_fragments  = false
        name                  = "ip"
        reset                 = false
        source_port_from      = "unspecified"
        source_port_to        = "unspecified"
        stateful              = false
        synchronize           = false
        tenant                = "mgmt"
      },
      {
        acknowledgement       = false
        arp_flag              = "unspecified"
        description           = "Allow ICMP"
        destination_port_from = "unspecified"
        destination_port_to   = "unspecified"
        established           = false
        ethertype             = "ip"
        finish                = false
        icmpv4_type           = "unspecified"
        icmpv6_type           = "unspecified"
        ip_protocol           = "icmp"
        match_dscp            = "unspecified"
        match_only_fragments  = false
        name                  = "icmp"
        reset                 = false
        source_port_from      = "unspecified"
        source_port_to        = "unspecified"
        stateful              = false
        synchronize           = false
        tenant                = "mgmt"
      }
    ]
  }
}
