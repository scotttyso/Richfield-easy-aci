#______________________________________________
#
# Schemas - Variables
#______________________________________________

schemas = {
  "common" = {
    description   = "common Schema"
    schema_tenant = "common"
    templates = [
      {
        name = "stretched"
        sites = [
          "Asgard",
          "Wakanda"
        ]
        name = "Asgard"
        sites = [
          "Asgard"
        ]
        name = "Wakanda"
        sites = [
          "Wakanda"
        ]
      }
    ]
  }
}
