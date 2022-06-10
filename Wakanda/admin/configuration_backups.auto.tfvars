#______________________________________________
#
# Configuration Backups - Variables
#______________________________________________

configuration_backups = {
  "Every24Hours" = {
    configuration_export = [
      {
        authentication_type   = "usePassword"
        description           = "LNX Backup Servers"
        format                = "json"
        include_secure_fields = true
        management_epg        = "ooband"
        management_epg_type   = "oob"
        max_snapshot_count    = 0
        password              = 1
        protocol              = "sftp"
        remote_hosts = [
          "lnx1.rich.ciscolabs.com",
          "lnx2.rich.ciscolabs.com"
        ]
        remote_path = "/tmp"
        remote_port = 22
        username    = "backup_user"
      }
    ]
    recurring_window = [
      {
        description = "Backup Every 24 Hours"
        schedule = [
          {
            days   = "every-day"
            hour   = 0
            minute = 15
          }
        ]
      }
    ]
  }
}
