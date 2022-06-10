#______________________________________________
#
# Smart Callhome - Variables
#______________________________________________

smart_callhome = {
  "default" = {
    admin_state            = "enabled"
    contact_information    = "rich-lab@cisco.com"
    customer_contact_email = "rich-lab@cisco.com"
    from_email             = "rich-lab@cisco.com"
    include_types = [
      {
        audit_logs   = true
        events       = true
        faults       = true
        session_logs = true
      }
    ]
    phone_contact  = "+1 408-555-5555"
    reply_to_email = "rich-lab@cisco.com"
    smart_destinations = [
      {
        admin_state   = "enabled"
        email         = "rich-lab@cisco.com"
        format        = "short-txt"
        rfc_compliant = true
      }
    ]
    smtp_server = [
      {
        management_epg      = "ooband"
        management_epg_type = "oob"
        port_number         = 25
        secure_smtp         = false
        smtp_server         = "smtp-ext.cisco.com"
      }
    ]
    street_address = "4125 Highlander Parkway Richfield, OH 44286"
  }
}
