#____________________________________________________________
#
# Virtual Networking - Variables
#____________________________________________________________

virtual_networking = {
  "Asgard" = {
    controllers = [
      {
        datacenter             = "Asgard"
        dvs_version            = "unmanaged"
        hostname               = "asgard-vcenter.rich.ciscolabs.com"
        management_epg         = "ooband"
        management_epg_type    = "oob"
        monitoring_policy      = "default"
        stats_collection       = "enabled"
        switch_scope           = "vm"
        trigger_inventory_sync = "untriggered"
      }
    ]
    credentials = [
      {
        password = 1
        username = "administrator@rich.local"
      }
    ]
    domain = [
      {
        access_mode                     = "read-write"
        delimiter                       = "|"
        enable_tag_collection           = false
        endpoint_retention_time         = 0
        enable_vm_folder_data_retrieval = false
        name                            = "Asgard"
        site_group                      = 1
        switch_mode                     = "default"
        switch_provider                 = "VMware"
        vlan_pool                       = "access"
        uplink_names = [
        ]
      }
    ]
    vswitch_policy = [
      {
        cdp_interface_policy = "cdpEnabled"
        enhanced_lag_policy = [
          {
            domain_name         = "Asgard"
            load_balancing_mode = "src-dst-ip"
            mode                = "active"
            number_of_links     = "2"
          }
        ]
        lldp_interface_policy = "lldpEnabled"
        mtu_policy            = "default"
        port_channel_policy   = "macPin"
      }
    ]
  }
}
