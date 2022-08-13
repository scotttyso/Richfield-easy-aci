#______________________________________________
#
# Tenants - Variables
#______________________________________________

tenants = {
  "terraform" = {
    description       = "Terraform Test"
    monitoring_policy = "default"
    sites = [
      {
        tenant = "terraform"
        users = [
          "admin",
          "tyscott"
        ]
      },
      {
        tenant = "terraform"
        users = [
          "admin",
          "tyscott"
        ]
      }
    ]
    users = [
      "admin",
      "tyscott"
    ]
  }
}
