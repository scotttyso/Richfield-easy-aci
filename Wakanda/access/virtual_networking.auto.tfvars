#____________________________________________________________
#
# Virtual Networking - Variables
#____________________________________________________________

virtual_networking = {
  "Wakanda" = {
    controllers = [
      {
        datacenter             = "Wakanda"
        dvs_version            = "7.0"
        hostname               = "wakanda-vcenter.rich.ciscolabs.com"
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
        name                            = "Wakanda"
        site_group                      = 2
        switch_mode                     = "default"
        switch_provider                 = "VMware"
        vlan_pool                       = "access"
        uplink_names = [
        ]
      }
    ]
    vswitch_policy = [
      {
        cdp_interface_policy  = "cdpEnabled"
        enhanced_lag_policy   = []
        lldp_interface_policy = "lldpEnabled"
        mtu_policy            = "default"
        port_channel_policy   = "macPin"
      }
    ]
  }
}
