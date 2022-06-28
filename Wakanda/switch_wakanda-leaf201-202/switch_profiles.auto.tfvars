#______________________________________________
#
# Switch Profiles - Variables
#______________________________________________

switch_profiles = {
  201 = {
    inband_addressing = [
      {
        ipv4_address   = "10.96.0.201/24"
        ipv4_gateway   = "10.96.0.254"
        management_epg = "inband"
      }
    ]
    interfaces = [
      {
        interface = "1/1"
        sub_port  = false
      },
      {
        interface = "1/2"
        sub_port  = false
      },
      {
        interface = "1/3"
        sub_port  = false
      },
      {
        interface = "1/4"
        sub_port  = false
      },
      {
        interface = "1/5"
        sub_port  = false
      },
      {
        interface = "1/6"
        sub_port  = false
      },
      {
        interface = "1/7"
        sub_port  = false
      },
      {
        interface = "1/8"
        sub_port  = false
      },
      {
        interface = "1/9"
        sub_port  = false
      },
      {
        interface = "1/10"
        sub_port  = false
      },
      {
        interface = "1/11"
        sub_port  = false
      },
      {
        interface = "1/12"
        sub_port  = false
      },
      {
        interface = "1/13"
        sub_port  = false
      },
      {
        interface = "1/14"
        sub_port  = false
      },
      {
        interface = "1/15"
        sub_port  = false
      },
      {
        interface = "1/16"
        sub_port  = false
      },
      {
        interface = "1/17"
        sub_port  = false
      },
      {
        interface = "1/18"
        sub_port  = false
      },
      {
        interface = "1/19"
        sub_port  = false
      },
      {
        interface = "1/20"
        sub_port  = false
      },
      {
        interface = "1/21"
        sub_port  = false
      },
      {
        interface = "1/22"
        sub_port  = false
      },
      {
        interface = "1/23"
        sub_port  = false
      },
      {
        interface = "1/24"
        sub_port  = false
      },
      {
        interface = "1/25"
        sub_port  = false
      },
      {
        interface = "1/26"
        sub_port  = false
      },
      {
        interface = "1/27"
        sub_port  = false
      },
      {
        interface = "1/28"
        sub_port  = false
      },
      {
        interface = "1/29"
        sub_port  = false
      },
      {
        interface = "1/30"
        sub_port  = false
      },
      {
        interface = "1/31"
        sub_port  = false
      },
      {
        interface = "1/32"
        sub_port  = false
      },
      {
        interface = "1/33"
        sub_port  = false
      },
      {
        interface = "1/34"
        sub_port  = false
      },
      {
        interface = "1/35"
        sub_port  = false
      },
      {
        interface = "1/36"
        sub_port  = false
      },
      {
        interface = "1/37"
        sub_port  = false
      },
      {
        interface = "1/38"
        sub_port  = false
      },
      {
        interface = "1/39"
        sub_port  = false
      },
      {
        interface = "1/40"
        sub_port  = false
      },
      {
        interface = "1/41"
        sub_port  = false
      },
      {
        interface = "1/42"
        sub_port  = false
      },
      {
        interface = "1/43"
        sub_port  = false
      },
      {
        interface = "1/44"
        sub_port  = false
      },
      {
        interface = "1/45"
        sub_port  = false
      },
      {
        interface = "1/46"
        sub_port  = false
      },
      {
        interface = "1/47"
        sub_port  = false
      },
      {
        interface = "1/48"
        sub_port  = false
      },
      {
        interface             = "1/49"
        interface_description = "142b-core01-Eth1/29"
        policy_group          = "l3out"
        policy_group_type     = "bundle"
        sub_port              = false
      },
      {
        interface             = "1/50"
        interface_description = "142b-core02-Eth1/29"
        policy_group          = "l3out"
        policy_group_type     = "bundle"
        sub_port              = false
      },
      {
        interface             = "1/51"
        interface_description = "tchalla-ucs-a-Eth1/53"
        policy_group          = "vpc051"
        policy_group_type     = "bundle"
        sub_port              = false
      },
      {
        interface             = "1/52"
        interface_description = "tchalla-ucs-b-Eth1/53"
        policy_group          = "vpc052"
        policy_group_type     = "bundle"
        sub_port              = false
      },
      {
        interface = "1/53"
        sub_port  = false
      },
      {
        interface = "1/54"
        sub_port  = false
      }
    ]
    name      = "wakanda-leaf201"
    node_type = "leaf"
    ooband_addressing = [
      {
        ipv4_address   = "192.168.64.87/23"
        ipv4_gateway   = "192.168.64.1"
        management_epg = "ooband"
      }
    ]
    pod_id        = 1
    role          = "unspecified"
    serial_number = "FDO25161HAF"
  }
  202 = {
    inband_addressing = [
      {
        ipv4_address   = "10.96.0.202/24"
        ipv4_gateway   = "10.96.0.254"
        management_epg = "inband"
      }
    ]
    interfaces = [
      {
        interface = "1/1"
        sub_port  = false
      },
      {
        interface = "1/2"
        sub_port  = false
      },
      {
        interface = "1/3"
        sub_port  = false
      },
      {
        interface = "1/4"
        sub_port  = false
      },
      {
        interface = "1/5"
        sub_port  = false
      },
      {
        interface = "1/6"
        sub_port  = false
      },
      {
        interface = "1/7"
        sub_port  = false
      },
      {
        interface = "1/8"
        sub_port  = false
      },
      {
        interface = "1/9"
        sub_port  = false
      },
      {
        interface = "1/10"
        sub_port  = false
      },
      {
        interface = "1/11"
        sub_port  = false
      },
      {
        interface = "1/12"
        sub_port  = false
      },
      {
        interface = "1/13"
        sub_port  = false
      },
      {
        interface = "1/14"
        sub_port  = false
      },
      {
        interface = "1/15"
        sub_port  = false
      },
      {
        interface = "1/16"
        sub_port  = false
      },
      {
        interface = "1/17"
        sub_port  = false
      },
      {
        interface = "1/18"
        sub_port  = false
      },
      {
        interface = "1/19"
        sub_port  = false
      },
      {
        interface = "1/20"
        sub_port  = false
      },
      {
        interface = "1/21"
        sub_port  = false
      },
      {
        interface = "1/22"
        sub_port  = false
      },
      {
        interface = "1/23"
        sub_port  = false
      },
      {
        interface = "1/24"
        sub_port  = false
      },
      {
        interface = "1/25"
        sub_port  = false
      },
      {
        interface = "1/26"
        sub_port  = false
      },
      {
        interface = "1/27"
        sub_port  = false
      },
      {
        interface = "1/28"
        sub_port  = false
      },
      {
        interface = "1/29"
        sub_port  = false
      },
      {
        interface = "1/30"
        sub_port  = false
      },
      {
        interface = "1/31"
        sub_port  = false
      },
      {
        interface = "1/32"
        sub_port  = false
      },
      {
        interface = "1/33"
        sub_port  = false
      },
      {
        interface = "1/34"
        sub_port  = false
      },
      {
        interface = "1/35"
        sub_port  = false
      },
      {
        interface = "1/36"
        sub_port  = false
      },
      {
        interface = "1/37"
        sub_port  = false
      },
      {
        interface = "1/38"
        sub_port  = false
      },
      {
        interface = "1/39"
        sub_port  = false
      },
      {
        interface = "1/40"
        sub_port  = false
      },
      {
        interface = "1/41"
        sub_port  = false
      },
      {
        interface = "1/42"
        sub_port  = false
      },
      {
        interface = "1/43"
        sub_port  = false
      },
      {
        interface = "1/44"
        sub_port  = false
      },
      {
        interface = "1/45"
        sub_port  = false
      },
      {
        interface = "1/46"
        sub_port  = false
      },
      {
        interface = "1/47"
        sub_port  = false
      },
      {
        interface = "1/48"
        sub_port  = false
      },
      {
        interface             = "1/49"
        interface_description = "142b-core01-Eth1/30"
        policy_group          = "l3out"
        policy_group_type     = "bundle"
        sub_port              = false
      },
      {
        interface             = "1/50"
        interface_description = "142b-core02-Eth1/30"
        policy_group          = "l3out"
        policy_group_type     = "bundle"
        sub_port              = false
      },
      {
        interface             = "1/51"
        interface_description = "tchalla-ucs-a-Eth1/54"
        policy_group          = "vpc051"
        policy_group_type     = "bundle"
        sub_port              = false
      },
      {
        interface             = "1/52"
        interface_description = "tchalla-ucs-b-Eth1/54"
        policy_group          = "vpc052"
        policy_group_type     = "bundle"
        sub_port              = false
      },
      {
        interface = "1/53"
        sub_port  = false
      },
      {
        interface = "1/54"
        sub_port  = false
      }
    ]
    name      = "wakanda-leaf202"
    node_type = "leaf"
    ooband_addressing = [
      {
        ipv4_address   = "192.168.64.88/23"
        ipv4_gateway   = "192.168.64.1"
        management_epg = "ooband"
      }
    ]
    pod_id        = 1
    role          = "unspecified"
    serial_number = "FDO25161HD1"
  }
}
