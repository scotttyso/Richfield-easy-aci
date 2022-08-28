#______________________________________________
#
# Application Profiles - Variables
#______________________________________________

application_profiles = {
  "mgmt" = {
    controller_type = "ndo"
    schema          = "terraform"
    sites = [
      "Asgard",
      "Wakanda"
    ]
    template = "terraform"
  }
  "terraform" = {
    controller_type = "ndo"
    schema          = "terraform"
    sites = [
      "Asgard",
      "Wakanda"
    ]
    template = "terraform"
  }
}
