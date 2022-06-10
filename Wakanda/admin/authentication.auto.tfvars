#______________________________________________
#
# Authentication - Variables
#______________________________________________

authentication = {
  "default" = {
    console_authentication = [
      {
        login_domain = ""
        realm        = "local"
      }
    ]
    default_authentication = [
      {
        fallback_domain_avialability = "true"
        login_domain                 = ""
        realm                        = "local"
      }
    ]
    icmp_reachability = [
      {
        retries                           = 1
        timeout                           = 5
        use_icmp_reachable_providers_only = true
      }
    ]
    remote_user_login_policy = "no-login"
  }
}
