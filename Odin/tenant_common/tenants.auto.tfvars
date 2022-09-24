#______________________________________________
#
# Tenants - Variables
#______________________________________________

tenants = {
  "common" = {
    controller_type   = "ndo"
    description       = "Built-In Common tenant"
    monitoring_policy = "default"
    sites = [
      {
        site = "Asgard"
      },
      {
        site = "Wakanda"
      }
    ]
    users = [
      "admin",
      "tyscott"
    ]
  }
}
