#____________________________________________________________
#
# Policies Fibre Channel Interface - Variables
#____________________________________________________________

policies_fibre_channel_interface = {
  "FAutoAuto" = {
    auto_max_speed        = "32G"
    description           = "F Port, Speed Auto, Trunk Auto"
    fill_pattern          = "ARBFF"
    port_mode             = "f"
    receive_buffer_credit = 64
    speed                 = "auto"
    trunk_mode            = "auto"
  }
  "FAutoTrunk" = {
    auto_max_speed        = "32G"
    description           = "F Port, Speed Auto, Trunk On"
    fill_pattern          = "ARBFF"
    port_mode             = "f"
    receive_buffer_credit = 64
    speed                 = "auto"
    trunk_mode            = "trunk-on"
  }
  "F32GAuto" = {
    auto_max_speed        = "32G"
    description           = "F Port, Speed 32G, Trunk Auto"
    fill_pattern          = "ARBFF"
    port_mode             = "f"
    receive_buffer_credit = 64
    speed                 = "32G"
    trunk_mode            = "auto"
  }
  "F32GTrunk" = {
    auto_max_speed        = "32G"
    description           = "F Port, Speed 32G, Trunk On"
    fill_pattern          = "ARBFF"
    port_mode             = "f"
    receive_buffer_credit = 64
    speed                 = "32G"
    trunk_mode            = "trunk-on"
  }
  "F16GAuto" = {
    auto_max_speed        = "32G"
    description           = "F Port, Speed 16G, Trunk Auto"
    fill_pattern          = "ARBFF"
    port_mode             = "f"
    receive_buffer_credit = 64
    speed                 = "16G"
    trunk_mode            = "auto"
  }
  "F16GTrunk" = {
    auto_max_speed        = "32G"
    description           = "F Port, Speed 16G, Trunk On"
    fill_pattern          = "ARBFF"
    port_mode             = "f"
    receive_buffer_credit = 64
    speed                 = "16G"
    trunk_mode            = "trunk-on"
  }
  "NPAutoAuto" = {
    auto_max_speed        = "32G"
    description           = "NP Port, Speed Auto, Trunk Auto"
    fill_pattern          = "ARBFF"
    port_mode             = "np"
    receive_buffer_credit = 64
    speed                 = "auto"
    trunk_mode            = "auto"
  }
  "NPAutoTrunk" = {
    auto_max_speed        = "32G"
    description           = "NP Port, Speed Auto, Trunk On"
    fill_pattern          = "ARBFF"
    port_mode             = "np"
    receive_buffer_credit = 64
    speed                 = "auto"
    trunk_mode            = "trunk-on"
  }
  "NP32GAuto" = {
    auto_max_speed        = "32G"
    description           = "NP Port, Speed 32G, Trunk Auto"
    fill_pattern          = "ARBFF"
    port_mode             = "np"
    receive_buffer_credit = 64
    speed                 = "32G"
    trunk_mode            = "auto"
  }
  "NP32GTrunk" = {
    auto_max_speed        = "32G"
    description           = "NP Port, Speed 32G, Trunk On"
    fill_pattern          = "ARBFF"
    port_mode             = "np"
    receive_buffer_credit = 64
    speed                 = "32G"
    trunk_mode            = "trunk-on"
  }
  "NP16GAuto" = {
    auto_max_speed        = "32G"
    description           = "NP Port, Speed 16G, Trunk Auto"
    fill_pattern          = "ARBFF"
    port_mode             = "np"
    receive_buffer_credit = 64
    speed                 = "16G"
    trunk_mode            = "auto"
  }
  "NP16GTrunk" = {
    auto_max_speed        = "32G"
    description           = "NP Port, Speed 16G, Trunk On"
    fill_pattern          = "ARBFF"
    port_mode             = "np"
    receive_buffer_credit = 64
    speed                 = "16G"
    trunk_mode            = "trunk-on"
  }
}
