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
apicHostname = "wakanda-apic01.rich.ciscolabs.com"
apicUser = "admin"
apic_version = "6.0(2h)"
controller_type = "apic"
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