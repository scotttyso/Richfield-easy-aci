#______________________________________________
#
# Date and Time - Variables
#______________________________________________

date_and_time = {
  "default" = {
    administrative_state = "enabled"
    authentication_keys = [
    ]
    display_format = "local"
    master_mode    = "disabled"
    ntp_servers = [
      {
        description              = "Richfield AD1"
        hostname                 = "10.101.128.15"
        management_epg           = "ooband"
        management_epg_type      = "oob"
        maximum_polling_interval = 6
        minimum_polling_interval = 4
        preferred                = false
      },
      {
        description              = "Richfield AD2"
        hostname                 = "10.101.128.16"
        management_epg           = "ooband"
        management_epg_type      = "oob"
        maximum_polling_interval = 6
        minimum_polling_interval = 4
        preferred                = true
      }
    ]
    offset_state  = "enabled"
    server_state  = "disabled"
    stratum_value = 8
    time_zone     = "America/Detroit"
  }
}
