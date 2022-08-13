locals {
  #__________________________________________________________
  #
  # Use the First defined tenant as the default Tenant+
  #__________________________________________________________

  first_tenant = keys(local.tenants)[0]

  #__________________________________________________________
  #
  # Application Profile Variables
  #__________________________________________________________

  application_profiles = {
    for k, v in var.application_profiles : k => {
      annotation        = v.annotation != null ? v.annotation : ""
      controller_type   = v.controller_type != null ? v.controller_type : "apic"
      description       = v.description != null ? v.description : ""
      monitoring_policy = v.monitoring_policy != null ? v.monitoring_policy : "default"
      alias             = v.alias != null ? v.alias : ""
      qos_class         = v.qos_class != null ? v.qos_class : "unspecified"
      schema            = v.schema != null ? v.schema : local.first_tenant
      sites             = v.sites != null ? v.sites : []
      template          = v.template != null ? v.template : local.first_tenant
      tenant            = v.tenant != null ? v.tenant : local.first_tenant
    }
  }


  #__________________________________________________________
  #
  # Application EPGs Variables
  #__________________________________________________________

  application_epgs = {
    for k, v in var.application_epgs : k => {
      alias                  = v.alias != null ? v.alias : ""
      annotation             = v.annotation != null ? v.annotation : ""
      application_profile    = v.application_profile != null ? v.application_profile : "default"
      bd_schema              = v.bd_schema != null ? v.bd_schema : local.first_tenant
      bd_template            = v.bd_template != null ? v.bd_template : local.first_tenant
      bd_tenant              = v.bd_tenant != null ? v.bd_tenant : v.tenant != null ? v.tenant : local.first_tenant
      bridge_domain          = v.bridge_domain != null ? v.bridge_domain : "default"
      contract_exception_tag = v.contract_exception_tag != null ? v.contract_exception_tag : ""
      contracts              = v.contracts != null ? v.contracts : []
      controller_type        = v.controller_type != null ? v.controller_type : "apic"
      custom_qos_policy      = v.custom_qos_policy != null ? v.custom_qos_policy : ""
      data_plane_policer     = v.data_plane_policer != null ? v.data_plane_policer : ""
      description            = v.description != null ? v.description : ""
      domains                = v.domains != null ? v.domains : []
      epg_admin_state        = v.epg_admin_state != null ? v.epg_admin_state : "admin_up"
      epg_contract_masters = v.epg_contract_masters != null ? [
        for s in v.epg_contract_masters : {
          application_profile = s.application_profile != null ? s.application_profile : v.application_profile
          application_epg     = s.application_epg
        }
      ] : []
      epg_to_aaeps = v.epg_to_aaeps != null ? [
        for s in v.epg_to_aaeps : {
          aaep                      = s.aaep
          instrumentation_immediacy = s.instrumentation_immediacy != null ? s.instrumentation_immediacy : "on-demand"
          mode                      = s.mode != null ? s.mode : "trunk"
          vlans                     = s.vlans != null ? s.vlans : []
        }
      ] : []
      epg_type                 = v.epg_type != null ? v.epg_type : "standard"
      fhs_trust_control_policy = v.fhs_trust_control_policy != null ? v.fhs_trust_control_policy : ""
      flood_in_encapsulation   = v.flood_in_encapsulation != null ? v.flood_in_encapsulation : "disabled"
      global_alias             = v.global_alias != null ? v.global_alias : ""
      has_multicast_source     = v.has_multicast_source != null ? v.has_multicast_source : false
      intra_epg_isolation      = v.intra_epg_isolation != null ? v.intra_epg_isolation : "unenforced"
      label_match_criteria     = v.label_match_criteria != null ? v.label_match_criteria : "AtleastOne"
      monitoring_policy        = v.monitoring_policy != null ? v.monitoring_policy : "default"
      policy_source_tenant     = v.policy_source_tenant != null ? v.policy_source_tenant : local.first_tenant
      preferred_group_member   = v.preferred_group_member != null ? v.preferred_group_member : false
      qos_class                = v.qos_class != null ? v.qos_class : "unspecified"
      schema                   = v.schema != null ? v.schema : local.first_tenant
      # static_paths = v.static_paths != null ? compact(flatten([
      #   for s in v.static_paths : [
      #     length(regexall("vpc", s.path_type)
      #       ) > 0 ? "topology/pod-${s.pod}/protpaths-${element(s.nodes, 0)}-${element(s.nodes, 1)}/pathep-[${s.name}]" : length(
      #       regexall("pc", s.path_type)
      #       ) > 0 ? "topology/pod-${s.pod}/paths-${element(s.nodes, 0)}/pathep-[${s.name}]" : length(
      #       regexall("port", s.path_type)
      #     ) > 0 ? "topology/pod-${s.pod}/paths-${element(s.nodes, 0)}/pathep-[eth${s.name}]" : ""
      #   ]
      # ])) : []
      static_paths_for_loop = v.static_paths != null ? v.static_paths : []
      template              = v.template != null ? v.template : local.first_tenant
      tenant                = v.tenant != null ? v.tenant : local.first_tenant
      useg_epg              = v.useg_epg != null ? v.useg_epg : false
      vlan                  = v.vlan != null ? v.vlan : null
      vrf                   = v.vrf != null ? v.vrf : "default"
      vrf_schema            = v.vrf_schema != null ? v.vrf_schema : local.first_tenant
      vrf_template          = v.vrf_template != null ? v.vrf_template : local.first_tenant
      vzGraphCont           = v.vzGraphCont != null ? v.vzGraphCont : ""
    }
  }

  epg_to_domains_loop = flatten([
    for key, value in local.application_epgs : [
      for k, v in value.domains : {
        annotation               = v.annotation != null ? v.annotation : ""
        allow_micro_segmentation = v.allow_micro_segmentation != null ? v.allow_micro_segmentation : false
        application_epg          = key
        controller_type          = value.controller_type
        delimiter                = v.delimiter != null ? v.delimiter : ""
        deploy_immediacy         = v.deploy_immediacy != null ? v.deploy_immediacy : "on-demand"
        domain                   = v.domain
        domain_type              = v.domain_type != null ? v.domain_type : "physical"
        enhanced_lag_policy      = v.enhanced_lag_policy != null ? v.enhanced_lag_policy : ""
        epg_type                 = value.epg_type
        number_of_ports          = v.number_of_ports != null ? v.number_of_ports : 0
        port_allocation          = v.port_allocation != null ? v.port_allocation : "none"
        port_binding             = v.port_binding != null ? v.port_binding : "none"
        resolution_immediacy     = v.resolution_immediacy != null ? v.resolution_immediacy : "on-demand"
        security = v.security != null ? [
          for s in v.security : {
            allow_promiscuous = s.allow_promiscuous != null ? s.allow_promiscuous : "reject"
            forged_transmits  = s.forged_transmits != null ? s.forged_transmits : "reject"
            mac_changes       = s.mac_changes != null ? s.mac_changes : "reject"
          }
          ] : [
          {
            allow_promiscuous = "reject"
            forged_transmits  = "reject"
            mac_changes       = "reject"
          }
        ]
        switch_provider = v.switch_provider != null ? v.switch_provider : "VMware"
        vlan_mode       = v.vlan_mode != null ? v.vlan_mode : "dynamic"
        vlans           = v.vlans != null ? v.vlans : []
      }
    ]
  ])
  epg_to_domains = { for k, v in local.epg_to_domains_loop : "${v.application_epg}_${v.domain}" => v }


  epg_to_aaeps_loop = flatten([
    for key, value in local.application_epgs : [
      for k, v in value.epg_to_aaeps : {
        epg                       = key
        aaep                      = v.aaep
        instrumentation_immediacy = v.instrumentation_immediacy != null ? v.instrumentation_immediacy : "on-demand"
        mode                      = v.mode != null ? v.mode : "trunk"
        vlans                     = v.vlans
      }
    ]
  ])
  epg_to_aaeps = { for k, v in local.epg_to_aaeps_loop : "${v.epg}_${v.aaep}" => v }


  #__________________________________________________________
  #
  # Bridge Domain Variables
  #__________________________________________________________

  bridge_domains = {
    for key, value in var.bridge_domains : key => {
      advanced_troubleshooting = value.advanced_troubleshooting != null ? [
        for k, v in value.advanced_troubleshooting : {
          endpoint_clear                         = v.endpoint_clear != null ? v.endpoint_clear : false
          intersite_bum_traffic_allow            = v.intersite_bum_traffic_allow != null ? v.intersite_bum_traffic_allow : false
          intersite_l2_stretch                   = v.intersite_l2_stretch != null ? v.intersite_l2_stretch : false
          optimize_wan_bandwidth                 = v.optimize_wan_bandwidth != null ? v.optimize_wan_bandwidth : false
          disable_ip_data_plane_learning_for_pbr = v.disable_ip_data_plane_learning_for_pbr != null ? v.disable_ip_data_plane_learning_for_pbr : false
          first_hop_security_policy              = v.first_hop_security_policy != null ? v.first_hop_security_policy : ""
          monitoring_policy                      = v.monitoring_policy != null ? v.monitoring_policy : "default"
          netflow_monitor_policies = v.netflow_monitor_policies != null ? [
            for s in v.netflow_monitor_policies : {
              filter_type    = s.filter_type != null ? s.filter_type : "ipv4"
              netflow_policy = s.netflow_policy
            }
          ] : []
          rogue_coop_exception_list = v.rogue_coop_exception_list != null ? v.rogue_coop_exception_list : []
        }
        ] : [
        {
          endpoint_clear                         = false
          intersite_bum_traffic_allow            = false
          intersite_l2_stretch                   = false
          optimize_wan_bandwidth                 = false
          disable_ip_data_plane_learning_for_pbr = false
          first_hop_security_policy              = ""
          monitoring_policy                      = "default"
          netflow_monitor_policies               = []
          rogue_coop_exception_list              = []
        }
      ]
      controller_type = value.controller_type != null ? value.controller_type : "apic"
      dhcp_relay_labels = value.dhcp_relay_labels != null ? [
        for k, v in value.dhcp_relay_labels : {
          dhcp_option_policy = v.dhcp_option_policy != null ? v.dhcp_option_policy : ""
          scope              = v.scope != null ? v.scope : "infra"
          names              = v.names
        }
      ] : []
      policy_source_tenant = value.policy_source_tenant != null ? value.policy_source_tenant : local.first_tenant
      schema               = value.schema != null ? value.schema : local.first_tenant
      sites                = value.sites != null ? value.sites : []
      template             = value.template != null ? value.template : local.first_tenant
      tenant               = value.tenant != null ? value.tenant : local.first_tenant
      general = value.general != null ? [
        for k, v in value.general : {
          advertise_host_routes         = v.advertise_host_routes != null ? v.advertise_host_routes : false
          alias                         = v.alias != null ? v.alias : ""
          annotation                    = v.annotation != null ? v.annotation : ""
          arp_flooding                  = v.arp_flooding != null ? v.arp_flooding : false
          description                   = v.description != null ? v.description : ""
          endpoint_retention_policy     = v.endpoint_retention_policy != null ? v.endpoint_retention_policy : ""
          global_alias                  = v.global_alias != null ? v.global_alias : ""
          igmp_snooping_policy          = v.igmp_snooping_policy != null ? v.igmp_snooping_policy : ""
          ipv6_l3_unknown_multicast     = v.ipv6_l3_unknown_multicast != null ? v.ipv6_l3_unknown_multicast : "flood"
          l2_unknown_unicast            = v.l2_unknown_unicast != null ? v.l2_unknown_unicast : "proxy"
          l3_unknown_multicast_flooding = v.l3_unknown_multicast_flooding != null ? v.l3_unknown_multicast_flooding : "flood"
          limit_ip_learn_to_subnets     = v.limit_ip_learn_to_subnets != null ? v.limit_ip_learn_to_subnets : true
          mld_snoop_policy              = v.mld_snoop_policy != null ? v.mld_snoop_policy : ""
          multi_destination_flooding    = v.multi_destination_flooding != null ? v.multi_destination_flooding : "bd-flood"
          pim                           = v.pim != null ? v.pim : false
          pimv6                         = v.pimv6 != null ? v.pimv6 : false
          tenant                        = value.tenant != null ? value.tenant : local.first_tenant
          type                          = v.type != null ? v.type : "regular"
          vrf                           = v.vrf != null ? v.vrf : "default"
          vrf_tenant                    = v.vrf_tenant != null ? v.vrf_tenant : value.tenant
        }
        ] : [
        {
          advertise_host_routes         = false
          alias                         = ""
          annotation                    = ""
          arp_flooding                  = false
          description                   = ""
          endpoint_retention_policy     = ""
          global_alias                  = ""
          igmp_snooping_policy          = ""
          ipv6_l3_unknown_multicast     = "flood"
          l2_unknown_unicast            = "flood"
          l3_unknown_multicast_flooding = "flood"
          limit_ip_learn_to_subnets     = true
          mld_snoop_policy              = ""
          multi_destination_flooding    = "bd-flood"
          pim                           = false
          pimv6                         = false
          tenant                        = value.tenant
          type                          = "regular"
          vrf                           = "default"
          vrf_tenant                    = value.tenant
        }
      ]
      l3_configurations = value.l3_configurations != null ? [
        for k, v in value.l3_configurations : {
          associated_l3outs = v.associated_l3outs != null ? [
            for s in v.associated_l3outs : {
              l3out         = s.l3out
              route_profile = s.route_profile != null ? s.route_profile : ""
              tenant        = s.tenant != null ? s.tenant : value.tenant
            }
          ] : []
          ep_move_detection_mode  = v.ep_move_detection_mode != null ? v.ep_move_detection_mode : false
          unicast_routing         = v.unicast_routing != null ? v.unicast_routing : true
          custom_mac_address      = v.custom_mac_address != null ? v.custom_mac_address : ""
          link_local_ipv6_address = v.link_local_ipv6_address != null ? v.link_local_ipv6_address : "::"
          subnets                 = v.subnets != null ? v.subnets : {}
          virtual_mac_address     = v.virtual_mac_address != null ? v.virtual_mac_address : "not-applicable"
        }
        ] : [
        {
          associated_l3outs       = []
          custom_mac_address      = ""
          ep_move_detection_mode  = false
          link_local_ipv6_address = "::"
          subnets                 = {}
          unicast_routing         = true
          virtual_mac_address     = "not-applicable"
        }
      ]
    }
  }

  bd_dhcp_relay_labels_loop = flatten([
    for key, value in local.bridge_domains : [
      for k, v in value.dhcp_relay_labels : {
        annotation         = value.general[0].annotation
        bridge_domain      = key
        controller_type    = value.controller_type
        dhcp_option_policy = v.dhcp_option_policy
        names              = v.names
        scope              = v.scope
        tenant             = value.tenant
      }
    ]
  ])
  bridge_domain_labels = { for k, v in local.bd_dhcp_relay_labels_loop : "${v.bridge_domain}_dhcp_labels" => v }

  dhcp_relay_labels_loop = flatten([
    for k, v in local.bridge_domain_labels : [
      for s in v.names : {
        annotation         = v.annotation
        bridge_domain      = v.bridge_domain
        controller_type    = v.controller_type
        dhcp_option_policy = v.dhcp_option_policy
        name               = s
        scope              = v.scope
        tenant             = v.tenant
      }
    ]
  ])
  bridge_domain_dhcp_relay_labels = { for k, v in local.dhcp_relay_labels_loop : "${v.bridge_domain}_${v.name}" => v }

  bridge_domain_subnets_loop = flatten([
    for key, value in local.bridge_domains : [
      for k, v in value.l3_configurations[0].subnets : {
        bridge_domain                = key
        controller_type              = value.controller_type
        description                  = v.description != null ? v.description : ""
        gateway_ip                   = k
        ip_data_plane_learning       = v.ip_data_plane_learning != null ? v.ip_data_plane_learning : "enabled"
        make_this_ip_address_primary = v.make_this_ip_address_primary != null ? v.make_this_ip_address_primary : false
        schema                       = value.schema
        sites                        = value.sites
        scope = v.scope != null ? [
          for b, a in v.scope : {
            advertise_externally = a.advertise_externally != null ? a.advertise_externally : false
            shared_between_vrfs  = a.shared_between_vrfs != null ? a.shared_between_vrfs : false
          }
          ] : [
          {
            advertise_externally = false
            shared_between_vrfs  = false
          }
        ]
        subnet_control = v.subnet_control != null ? [
          for b, a in v.subnet_control : {
            neighbor_discovery     = a.neighbor_discovery != null ? a.neighbor_discovery : false
            no_default_svi_gateway = a.no_default_svi_gateway != null ? a.no_default_svi_gateway : false
            querier_ip             = a.querier_ip != null ? a.querier_ip : false
          }
          ] : [
          {
            neighbor_discovery     = false
            no_default_svi_gateway = false
            querier_ip             = false
          }
        ]
        treat_as_virtual_ip_address = v.treat_as_virtual_ip_address != null ? v.treat_as_virtual_ip_address : false
      }
    ]
  ])
  bridge_domain_subnets = { for k, v in local.bridge_domain_subnets_loop : "${v.bridge_domain}_${v.gateway_ip}" => v }

  rogue_coop_exception_list_loop = flatten([
    for k, v in local.bridge_domains : [
      for s in v.advanced_troubleshooting[0].rogue_coop_exception_list : {
        bridge_domain = k
        mac_address   = s
        tenant        = v.general[0].tenant
      }
    ] if v.controller_type == "apic"
  ])
  rogue_coop_exception_list = { for k, v in local.rogue_coop_exception_list_loop : "${v.bridge_domain}_${v.mac_address}" => v }


  #__________________________________________________________
  #
  # Tenant Variables
  #__________________________________________________________

  tenants = {
    for k, v in var.tenants : k => {
      alias             = v.alias != null ? v.alias : ""
      annotation        = v.annotation != null ? v.annotation : ""
      annotations       = v.annotations != null ? v.annotations : []
      controller_type   = v.controller_type != null ? v.controller_type : "apic"
      description       = v.description != null ? v.description : ""
      global_alias      = v.global_alias != null ? v.global_alias : ""
      monitoring_policy = v.monitoring_policy != null ? v.monitoring_policy : "default"
    }
  }

  tenants_annotations_loop = flatten([
    for key, value in local.tenants : [
      for k, v in value.annotations : {
        key    = value.key
        value  = v.value
        tenant = value.tenant
      }
    ] if value.controller_type == "apic" && value.annotations != []
  ])
  tenants_annotations = { for k, v in local.tenants_annotations_loop : "${v.tenant}_${v.key}" => v }

  tenants_global_alias = {
    for k, v in local.tenants : k => {
      global_alias = v.global_alias
    } if v.global_alias != ""
  }


}
