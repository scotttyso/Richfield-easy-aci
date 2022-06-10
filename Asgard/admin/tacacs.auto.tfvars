#______________________________________________
#
# TACACS+ - Variables
#______________________________________________

tacacs = {
  "RICH" = {
    audit_logs = "true"
    accounting_include = [
      {
        audit_logs   = true
        events       = false
        faults       = false
        session_logs = true
      }
    ]
    authorization_protocol = "pap"
    hosts = [
      {
        host                = "10.101.128.71"
        key                 = 1
        management_epg      = "ooband"
        management_epg_type = "oob"
        order               = 1
      },
      {
        host                = "10.101.128.72"
        key                 = 1
        management_epg      = "ooband"
        management_epg_type = "oob"
        order               = 2
      }
    ]
    port    = 49
    retries = 2
    server_monitoring = [
      {
        admin_state = "disabled"
        password    = 0
        username    = "admin"
      }
    ]
    timeout = 5
  }
}
