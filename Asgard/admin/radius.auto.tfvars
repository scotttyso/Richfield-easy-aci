#______________________________________________
#
# RADIUS - Variables
#______________________________________________

radius = {
  "RADIUS" = {
    authorization_protocol = "pap"
    hosts = [
      {
        host                = "10.101.128.71"
        key                 = 1
        management_epg      = "ooband"
        management_epg_type = "oob"
        order               = 6
      },
      {
        host                = "10.101.128.72"
        key                 = 1
        management_epg      = "ooband"
        management_epg_type = "oob"
        order               = 7
      }
    ]
    port    = 1812
    retries = 2
    server_monitoring = [
      {
        admin_state = "disabled"
        password    = 0
        username    = "admin"
      }
    ]
    timeout = 5
    type    = "radius"
  }
}
