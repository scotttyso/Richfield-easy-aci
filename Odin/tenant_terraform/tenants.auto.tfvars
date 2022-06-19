#______________________________________________
#
# Tenants - Variables
#______________________________________________

tenants = {
  "terraform" = {
    description       = "Terraform Test"
    monitoring_policy = "default"
    sites             = "[{'aws_access_key_id': None, 'aws_account_id': None, 'azure_access_type': None, 'azure_active_directory_id': None, 'azure_application_id': None, 'azure_shared_account_id': None, 'azure_subscription_id': None, 'class_type': 'tenants', 'is_aws_account_trusted': None, 'site': 'Asgard', 'site_group': '3', 'tenant': 'terraform', 'users': 'admin,tyscott', 'template_type': 'sites', 'policy_type': 'Sites', 'controller_type': 'ndo'}, {'aws_access_key_id': None, 'aws_account_id': None, 'azure_access_type': None, 'azure_active_directory_id': None, 'azure_application_id': None, 'azure_shared_account_id': None, 'azure_subscription_id': None, 'class_type': 'tenants', 'is_aws_account_trusted': None, 'site': 'Wakanda', 'site_group': '3', 'tenant': 'terraform', 'users': 'admin,tyscott', 'template_type': 'sites', 'policy_type': 'Sites', 'controller_type': 'ndo'}]"
    users             = "['admin', 'tyscott']"
  }
}
