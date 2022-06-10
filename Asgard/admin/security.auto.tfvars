#______________________________________________
#
# Security - Variables
#______________________________________________

security = {
  "default" = {
    enable_lockout                   = "disable"
    lockout_duration                 = 60
    max_failed_attempts              = 5
    max_failed_attempts_window       = 5
    maximum_validity_period          = 24
    password_change_interval         = 48
    password_change_interval_enforce = "enable"
    password_changes_within_interval = 2
    password_expiration_warn_time    = 15
    password_strength_check          = true
    user_passwords_to_store_count    = 5
    web_session_idle_timeout         = 65525
    web_token_timeout                = 600
  }
}
