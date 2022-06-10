#______________________________________________
#
# Firmware - Variables
#______________________________________________

firmware = {
  "default" = {
    compatibility_check = true
    graceful_upgrade    = true
    maintenance_groups = [
      {
        maintenance_group_policy = "default"
        name                     = "MG_A"
        node_list = [
          "101",
          "201"
        ]
        start_now = false
      },
      {
        maintenance_group_policy = "default"
        name                     = "MG_B"
        node_list = [
          "102",
          "202"
        ]
        start_now = false
      }
    ]
    notify_conditions      = "notifyOnlyOnFailures"
    run_mode               = "pauseOnlyOnFailures"
    simulator              = false
    version_check_override = "untriggered"
    version                = "5.2(4e)"
  }
}
