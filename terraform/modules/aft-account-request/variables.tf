variable "account-request-table" {
  type        = string
  description = "name of account-request-table"
  default     = "aft-request"
}

variable "account-request-table-hash" {
  type        = string
  description = "name of account-request-table hash key"
  default     = "id"
}

variable "control_tower_parameters" {
  type = object({
    AccountEmail              = "thg110404@gmail.com"
    AccountName               = "sanbox-uat"
    ManagedOrganizationalUnit = "sandbox-testing"
    SSOUserEmail              = "thg110404@gmail.com"
    SSOUserFirstName          = "sandbox"
    SSOUserLastName           = "user"
  })
}

variable "change_management_parameters" {
  type = object({
    change_requested_by = "ganesh"
    change_reason       = "craete a new account"
  })
}

variable "account_tags" {
  type        = map(any)
  description = "map of account-level tags"
}

variable "custom_fields" {
  type        = map(any)
  description = "map of custom fields defined by the customer"
  default     = {}
}

variable "account_customizations_name" {
  type        = string
  default     = null
  description = "The name of the account customizations to apply"
}

