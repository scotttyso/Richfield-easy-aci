#______________________________________________
#
# Contracts - Variables
#______________________________________________

contracts = {
  "taboo_contract" = {
    contract_type = "taboo"
    description   = "A Taboo Contract"
    qos_class     = "unspecified"
    scope         = "global"
    subjects = [
      {
        action                = "permit"
        apply_both_directions = true
        directives = [
          {
            enable_policy_compression = false
            log                       = false
          }
        ]
        filters = [
          "any"
        ]
        match_type  = "AtleastOne"
        name        = "taboo_contract"
        qos_class   = "unspecified"
        target_dscp = "unspecified"
      }
    ]
    target_dscp = "unspecified"
  }
  "any" = {
    contract_type = "standard"
    description   = "Any Contract"
    qos_class     = "unspecified"
    scope         = "global"
    subjects = [
      {
        action                = "permit"
        apply_both_directions = true
        directives = [
          {
            enable_policy_compression = false
            log                       = false
          }
        ]
        filters = [
          "any"
        ]
        match_type  = "AtleastOne"
        name        = "any"
        qos_class   = "unspecified"
        target_dscp = "unspecified"
      }
    ]
    target_dscp = "unspecified"
  }
}
