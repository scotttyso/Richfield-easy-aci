#____________________________________________________________
#
# Policies Spanning Tree Interface - Variables
#____________________________________________________________

policies_spanning_tree_interface = {
  "bpduFG" = {
    description = "BPDU Filter and Guard"
    filter      = "enabled"
    guard       = "enabled"
  }
  "bpduFt" = {
    description = "BPDU Filter"
    filter      = "enabled"
    guard       = "disabled"
  }
  "bpduGd" = {
    description = "BPDU Guard"
    filter      = "disabled"
    guard       = "enabled"
  }
  "default" = {
    description = "Both Disabled"
    filter      = "disabled"
    guard       = "disabled"
  }
}
