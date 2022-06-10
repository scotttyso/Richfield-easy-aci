#____________________________________________________________
#
# Policies Port Security - Variables
#____________________________________________________________

policies_port_security = {
  "default" = {
    description           = "Default Port Security Policy"
    maximum_endpoints     = 0
    port_security_timeout = 60
  }
}
