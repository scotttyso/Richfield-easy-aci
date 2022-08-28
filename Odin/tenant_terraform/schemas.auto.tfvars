#______________________________________________
#
# Schemas - Variables
#______________________________________________

schemas = {
  "common" = {
    schema_tenant = "common"
  }
  "terraform" = {
    description   = "Terraform Schema"
    schema_tenant = "terraform"
    templates = [
      {
        name = "terraform"
        sites = [
          "Asgard",
          "Wakanda"
        ]
      }
    ]
  }
}
