#______________________________________________
#
# Contracts - Variables
#______________________________________________

contracts = {
  "inband_in" = {
    contract_type = "standard"
    description   = "Mgmt Inbound Traffic"
    qos_class     = "unspecified"
    scope         = "global"
    subjects = [
      {
        action                = "permit"
        apply_both_directions = false
        directives = [
          {
            enable_policy_compression = false
            log                       = false
          }
        ]
        filters = [
          "mgmt_in"
        ]
        label_match_criteria = "AtleastOne"
        name                 = "inband_in"
        qos_class            = "unspecified"
        target_dscp          = "unspecified"
      }
    ]
    target_dscp = "unspecified"
  }
  "inband_out" = {
    contract_type = "standard"
    description   = "Mgmt Outbound Traffic"
    qos_class     = "unspecified"
    scope         = "global"
    subjects = [
      {
        action                = "permit"
        apply_both_directions = false
        directives = [
          {
            enable_policy_compression = false
            log                       = false
          }
        ]
        filters = [
          "mgmt_out"
        ]
        label_match_criteria = "AtleastOne"
        name                 = "inband_out"
        qos_class            = "unspecified"
        target_dscp          = "unspecified"
      }
    ]
    target_dscp = "unspecified"
  }
  "ooband_in" = {
    contract_type = "oob"
    description   = "Out-of-Band Inbound Traffic"
    qos_class     = "unspecified"
    scope         = "global"
    subjects = [
      {
        action                = "permit"
        apply_both_directions = false
        directives = [
          {
            enable_policy_compression = false
            log                       = false
          }
        ]
        filters = [
          "mgmt_in"
        ]
        label_match_criteria = "AtleastOne"
        name                 = "ooband_in"
        qos_class            = "unspecified"
        target_dscp          = "unspecified"
      }
    ]
    target_dscp = "unspecified"
  }
  "ooband_out" = {
    contract_type = "oob"
    description   = "Out-of-Band Outbound Traffic"
    qos_class     = "unspecified"
    scope         = "global"
    subjects = [
      {
        action                = "permit"
        apply_both_directions = false
        directives = [
          {
            enable_policy_compression = false
            log                       = false
          }
        ]
        filters = [
          "mgmt_out"
        ]
        label_match_criteria = "AtleastOne"
        name                 = "ooband_out"
        qos_class            = "unspecified"
        target_dscp          = "unspecified"
      }
    ]
    target_dscp = "unspecified"
  }
}
