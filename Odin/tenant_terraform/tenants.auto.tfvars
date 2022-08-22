#______________________________________________
#
# Tenants - Variables
#______________________________________________

tenants = {
  "terraform" = {
    controller_type   = "ndo"
    description       = "Terraform Test"
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
