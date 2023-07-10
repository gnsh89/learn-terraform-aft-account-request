module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "thg110404@gmail.com"
    AccountName               = "sandbox-testing"
    ManagedOrganizationalUnit = "Workload-dev"
    SSOUserEmail              = "thg110404@gmail.com"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "user"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "Ganesh"
    change_reason       = "Test provisioning new acciunt using tf aft"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
