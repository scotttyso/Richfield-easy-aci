#______________________________________________
#
# SNMP Policies - Variables
#______________________________________________

snmp_policies = {
  "default" = {
    admin_state = "enabled"
    contact     = "rich-lab@cisco.com"
    include_types = [
      {
        audit_logs   = true
        events       = true
        faults       = true
        session_logs = true
      }
    ]
    location = "Asgard - Rack143D"
    snmp_client_groups = [
      {
        clients = [
          {
            address = "10.101.128.24"
          },
          {
            address = "10.101.128.25"
          }
        ]
        description         = "Inband Client Group"
        management_epg      = "inband"
        management_epg_type = "inb"
        name                = "inband"
      },
      {
        clients = [
          {
            address = "10.101.128.24"
          },
          {
            address = "10.101.128.25"
          }
        ]
        description         = "Out-of-Band Client Group"
        management_epg      = "ooband"
        management_epg_type = "oob"
        name                = "oob"
      }
    ]
    snmp_communities = [
      {
        community_variable = 1
        description        = "Community String 1"
      },
      {
        community_variable = 2
        description        = "Community String 2"
      }
    ]
    snmp_destinations = [
      {
        host                = "10.101.128.24"
        management_epg      = "ooband"
        management_epg_type = "oob"
        port                = 162
        username            = "cisco_user1"
        v3_security_level   = "priv"
        version             = "v3"
      },
      {
        community_variable  = 1
        host                = "10.101.128.25"
        management_epg      = "ooband"
        management_epg_type = "oob"
        port                = 162
        version             = "v2c"
      }
    ]
    users = [
      {
        authorization_key  = 1
        authorization_type = "hmac-sha1-96"
        privacy_key        = 1
        privacy_type       = "aes-128"
        username           = "cisco_user1"
      }
    ]
  }
}
