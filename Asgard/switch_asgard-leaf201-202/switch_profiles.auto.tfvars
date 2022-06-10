#______________________________________________
#
# Switch Profiles - Variables
#______________________________________________

switch_profiles = {
  201 = {
    inband_addressing = [
      {
        ipv4_address   = "10.92.0.201/24"
        ipv4_gateway   = "10.92.0.254"
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
        interface             = "1/27"
        interface_description = "143b-core01-Eth1/27"
        policy_group          = "l3out"
        policy_group_type     = "bundle"
        sub_port              = false
      },
      {
        interface             = "1/28"
        interface_description = "143b-core02-Eth1/27"
        policy_group          = "l3out"
        policy_group_type     = "bundle"
        sub_port              = false
      },
      {
        interface             = "1/29"
        interface_description = "asgard-ucs-a-Eth1/97"
        policy_group          = "vpc029"
        policy_group_type     = "bundle"
        sub_port              = false
      },
      {
        interface             = "1/30"
        interface_description = "asgard-ucs-b-Eth1/97"
        policy_group          = "vpc030"
        policy_group_type     = "bundle"
        sub_port              = false
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
      }
    ]
    name      = "asgard-leaf201"
    node_type = "leaf"
    ooband_addressing = [
      {
        ipv4_address   = "192.168.64.9/23"
        ipv4_gateway   = "192.168.64.1"
        management_epg = "ooband"
      }
    ]
    pod_id        = 1
    role          = "leaf"
    serial_number = "FDO232415ML"
  }
  202 = {
    inband_addressing = [
      {
        ipv4_address   = "10.92.0.202/24"
        ipv4_gateway   = "10.92.0.254"
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
        interface             = "1/27"
        interface_description = "143b-core01-Eth1/28"
        policy_group          = "l3out"
        policy_group_type     = "bundle"
        sub_port              = false
      },
      {
        interface             = "1/28"
        interface_description = "143b-core02-Eth1/28"
        policy_group          = "l3out"
        policy_group_type     = "bundle"
        sub_port              = false
      },
      {
        interface             = "1/29"
        interface_description = "asgard-ucs-a-Eth1/98"
        policy_group          = "vpc029"
        policy_group_type     = "bundle"
        sub_port              = false
      },
      {
        interface             = "1/30"
        interface_description = "asgard-ucs-b-Eth1/98"
        policy_group          = "vpc030"
        policy_group_type     = "bundle"
        sub_port              = false
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
      }
    ]
    name      = "asgard-leaf202"
    node_type = "leaf"
    ooband_addressing = [
      {
        ipv4_address   = "192.168.64.10/23"
        ipv4_gateway   = "192.168.64.1"
        management_epg = "ooband"
      }
    ]
    pod_id        = 1
    role          = "leaf"
    serial_number = "FDO23191QGP"
  }
}
