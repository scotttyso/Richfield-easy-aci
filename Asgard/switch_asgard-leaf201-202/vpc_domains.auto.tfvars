#______________________________________________
#
# VPC Domains - Variables
#______________________________________________

vpc_domains = {
  "asgard-leaf201-202" = {
    domain_id = 201
    switches = [
      201,
      202
    ]
    vpc_domain_policy = "default"
  }
}
