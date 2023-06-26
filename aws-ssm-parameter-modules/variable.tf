locals {
  valid_ssm_parameter_name_regex = "^[a-zA-Z0-9]+-[a-zA-Z0-9]+-[a-zA-Z0-9]+-[a-zA-Z0-9]+-[a-zA-Z0-9]+$"
}

variable "ssm_parameter_names" {
  type = list(string)

  validation {
    condition     = length(var.ssm_parameter_names) == 1
    error_message = "Invalid ssm-parameter name(s). ssm-parameter names must follow the format 'companyname-Teamname-env-module-purpose', e.g., 'autoscaleupinfra-Engineering-dev-s3-module'."
  }
}

variable "type" {
  type        = string
  description = "The type of the parameter."
}

variable "value" {
  type        = string
  description = "The value of the parameter."
}

variable "description" {
  type        = string
  description = "The description of the parameter."
}

variable "tier" {
  type        = string
  description = "The tier of the parameter."
}

variable "key_id" {
  type        = string
  description = "The KMS key id or arn for encrypting a SecureString."
}

variable "overwrite" {
  type        = bool
  description = "Overwrite an existing parameter."
}

variable "allowed_pattern" {
  type        = string
  description = "A regular expression used to validate the parameter value."
}

variable "data_type" {
  type        = string
  description = "The data_type of the parameter."
}
