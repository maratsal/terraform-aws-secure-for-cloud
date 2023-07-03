variable "external_id" {
  description = "Random string generated unique to a customer"
  type        = string
}

variable "trusted_identity" {
  type        = string
  description = "The name of sysdig trusted identity"
}

variable "kms_key_deletion_window" {
  description = "Deletion window for shared KMS key"
  type        = number
  default     = 7
}

variable "name" {
  description = "The name of the installation. Assigned to most child resource(s)"
  type        = string
}

variable "tags" {
  type        = map(string)
  description = "sysdig secure-for-cloud tags. always include 'product' default tag for resource-group proper functioning"
  default = {
    "product" = "sysdig-secure-for-cloud"
  }
}
variable "deploy_global_resources" {
  description = "(Optional) Set this field to 'true' to deploy Agentless Scanning to an AWS Organization (Or specific OUs)"
  type        = bool
  default     = false
}

variable "kms_key_alias" {
  description = "The alias of the KMS key used to encrypt the data plane secrets"
  type        = string
}

variable "primary_key" {
  description = "The primary KMS key deployed in global region"
  type = object({
    id  = string
    arn = string
  })
  default = {
    id  = ""
    arn = ""
  }
}