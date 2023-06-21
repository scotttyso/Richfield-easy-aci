#____________________________________________________________
#
# Global - Variables
#____________________________________________________________

# Begin Variables
annotation = "orchestrator:terraform"
annotations = [
  {
    key = "orchestrator"
    value = "terraform:easy-aci:v2.0.1"
  }
]
controller_type = "ndo"
management_epgs = [
  {
    name = "inband"
    type = "inb"
  },
  {
    name = "ooband"
    type = "oob"
  }
]
ndoDomain = "RICH"
ndoHostname = "odin-nd01.rich.ciscolabs.com"
ndoUser = "tyscott"
ndo_version = "4.1.1"