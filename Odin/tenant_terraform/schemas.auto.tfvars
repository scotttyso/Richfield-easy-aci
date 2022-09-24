#______________________________________________
#
# Schemas - Variables
#______________________________________________

schemas = {
  "common" = {
    template_tenant = "common"
  }
  "terraform" = {
    description     = "Terraform Schema"
    template_tenant = "terraform"
    templates = [
      {
        name = "terraform"
        sites = [
          "Asgard",
          "Wakanda"
        ]
        tenant = "terraform"
      }
    ]
  }
}
