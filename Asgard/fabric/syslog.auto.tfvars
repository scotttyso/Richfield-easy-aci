#______________________________________________
#
# Syslog - Variables
#______________________________________________

syslog = {
  "default" = {
    admin_state = "enabled"
    console_destination = [
      {
        admin_state = "enabled"
        severity    = "critical"
      }
    ]
    format = "aci"
    include_types = [
      {
        audit_logs   = true
        events       = true
        faults       = true
        session_logs = true
      }
    ]
    local_file_destination = [
      {
        admin_state = "enabled"
        severity    = "information"
      }
    ]
    remote_destinations = [
      {
        admin_state         = "enabled"
        forwarding_facility = "local7"
        host                = "10.101.128.24"
        management_epg      = "ooband"
        management_epg_type = "oob"
        port                = 514
        severity            = "information"
        transport           = "udp"
      },
      {
        admin_state         = "enabled"
        forwarding_facility = "local7"
        host                = "10.101.128.25"
        management_epg      = "ooband"
        management_epg_type = "oob"
        port                = 514
        severity            = "information"
        transport           = "udp"
      }
    ]
    show_milliseconds_in_timestamp = true
    show_time_zone_in_timestamp    = true
  }
}
