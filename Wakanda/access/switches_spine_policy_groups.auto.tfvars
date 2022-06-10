#____________________________________________________________
#
# Switches Spine Policy Groups - Variables
#____________________________________________________________

switches_spine_policy_groups = {
  "default" = {
    bfd_ipv4_policy          = "default"
    bfd_ipv6_policy          = "default"
    cdp_interface_policy     = "cdpEnabled"
    copp_pre-filter          = "default"
    copp_spine_policy        = "default"
    description              = "Default Spine Policy Group"
    lldp_interface_policy    = "lldpEnabled"
    usb_configuration_policy = "default"
  }
}
